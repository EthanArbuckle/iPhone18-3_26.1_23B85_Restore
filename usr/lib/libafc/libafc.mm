uint64_t __WaitForTimeoutOrEvent(uint64_t a1, int a2, const timespec *a3)
{
  v36 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 208);
  if (v6)
  {
    connection.ident = 0;
    if (a2 == 1)
    {
      bufferSize.ident = 0;
      if (SSLGetBufferedReadSize(v6, &bufferSize.ident))
      {
        v7 = 1;
      }

      else
      {
        v7 = bufferSize.ident == 0;
      }

      if (!v7)
      {
LABEL_39:
        v21 = 0;
        goto LABEL_40;
      }

      v6 = *(a1 + 208);
    }

    v8 = SSLGetConnection(v6, &connection);
    if (v8)
    {
      v15 = v8;
      v17 = 3892330500;
      v16 = "SSLGetConnection";
      v18 = 1;
      v19 = 354;
      goto LABEL_25;
    }

    ident = connection.ident;
  }

  else
  {
    ident = *(a1 + 56);
  }

  if (ident == -1)
  {
    goto LABEL_39;
  }

  v11 = *(a1 + 1256);
  if (v11 == -1)
  {
    v15 = *__error();
    v16 = "kqueue";
    v17 = 3892330519;
    v18 = 1;
    v19 = 380;
    goto LABEL_25;
  }

  v12 = *(a1 + 1260);
  connection.ident = ident;
  if (a2 == 1)
  {
    v13 = -1;
  }

  else
  {
    v13 = -2;
  }

  connection.filter = v13;
  connection.flags = 37;
  memset(&connection.fflags, 0, 20);
  if (v12 == -1)
  {
    v14 = 1;
  }

  else
  {
    v31 = v12;
    v34 = 0;
    v33 = 0;
    v14 = 2;
    v32 = 393215;
    v35 = 0;
  }

  v20 = kevent(v11, &connection, v14, &bufferSize, v14, a3);
  if (v20 == -1)
  {
    v15 = *__error();
    v16 = "kevent failed for kq %d, fd %d, signalFD %d";
    v17 = 3892330519;
    v18 = 1;
    v19 = 407;
    goto LABEL_25;
  }

  if (!v20)
  {
    v16 = "kevent timeout";
    v17 = 3892330508;
    v18 = 1;
    v15 = 60;
    v19 = 411;
    goto LABEL_25;
  }

  if (v20 < 1)
  {
    goto LABEL_39;
  }

  v22 = v20;
  p_data = &bufferSize.data;
  while (1)
  {
    v24 = *(p_data - 4);
    if (v12 == v24)
    {
      AFCLog(4, "Woke up due to write to signal FD");
      v16 = "kevent connection close wakeup";
      v18 = 0;
      v15 = 0xFFFFFFFFLL;
      v17 = 3892330507;
      v19 = 423;
      goto LABEL_25;
    }

    if (ident == v24)
    {
      break;
    }

    v28 = *(p_data - 4);
    AFCLog(1, "Unknown kevent ident %d");
LABEL_38:
    p_data += 4;
    if (!--v22)
    {
      goto LABEL_39;
    }
  }

  if ((*(p_data - 3) & 0x4000) != 0)
  {
    v15 = *p_data;
    v16 = "kevent EV_ERROR";
    v18 = 0;
    v17 = 3892330507;
    v19 = 430;
    goto LABEL_25;
  }

  if (a2 == 1 && *(p_data - 4) == -1 && *p_data)
  {
    if ((*(p_data - 3) & 0x8000) != 0)
    {
      AFCLog(4, "EV_EOF but %ld bytes available anyway", *p_data);
    }

    goto LABEL_39;
  }

  if ((*(p_data - 3) & 0x8000) == 0)
  {
    if (a2 == 2)
    {
      v25 = *p_data;
      AFCLog(5, "kevent says ready to write %d bytes on conn %p.");
    }

    goto LABEL_38;
  }

  v21 = 3892330507;
  AFCLog(4, "Woke up due to EOF");
  v15 = *(p_data - 1);
  if (!v15)
  {
    goto LABEL_40;
  }

  v16 = "kevent EV_EOF";
  v18 = 0;
  v17 = 3892330507;
  v19 = 452;
LABEL_25:
  v21 = __AFCSetErrorResult_3(v18, v15, v17, v9, v19, v16);
LABEL_40:
  v26 = *MEMORY[0x29EDCA608];
  return v21;
}

uint64_t AFCLogV(int a1, const char *a2, va_list a3)
{
  result = pthread_once(&__gPlatformInit, __AFCPlatformInitialize);
  if (gAFCLogLevel == 6)
  {
    v7 = MEMORY[0x29EDCA610];
    vfprintf(*MEMORY[0x29EDCA610], a2, a3);
    v8 = *v7;

    return fflush(v8);
  }

  else if (gAFCLogLevel >= a1 || (gAFCVerboseLogEnabled & 1) != 0)
  {
    AFCLockLock(__gAFCLogLock);
    asl_vlog(__gAFCASLClient, 0, 3, a2, a3);
    v9 = __gAFCLogLock;

    return AFCLockUnlock(v9);
  }

  return result;
}

uint64_t AFCServeWithRoot(uint64_t a1, const __CFString *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    __AFCConnectionSetRoot(a1, a2);
  }

  memset(v11, 0, sizeof(v11));
  CFRetain(a1);
  do
  {
    ptr = 0;
    v3 = AFCReadPacketHeader(a1, v11, 0x80uLL, &ptr);
    if (v3)
    {
      v5 = v3;
      if (v3 == -402636789)
      {
        AFCLog(5, "Disconnected during packet read");
        v5 = 3892330507;
      }

      else
      {
        v7 = __error();
        AFCLog(1, "packet read error %d, errno %d", v5, *v7);
      }

      goto LABEL_16;
    }

    if (ptr)
    {
      v4 = ptr;
    }

    else
    {
      v4 = v11;
    }

    __AFCSpinMonitorStart(*(v4 + 4));
    v5 = AFCProcessServerPacket(a1, v4);
    __AFCSpinMonitorStart(v5);
    if (ptr)
    {
      v6 = CFGetAllocator(a1);
      CFAllocatorDeallocate(v6, ptr);
    }
  }

  while (*(a1 + 68) != 1);
  AFCLog(1, "fatal error 0x%x", *(a1 + 64));
  if (!v5)
  {
    v5 = *(a1 + 64);
  }

LABEL_16:
  CFRelease(a1);
  v8 = *MEMORY[0x29EDCA608];
  return v5;
}

void AFCFreeServerContext(uint64_t a1)
{
  AFCFlushServerContext(a1);
  dispatch_group_wait(*(a1 + 56), 0xFFFFFFFFFFFFFFFFLL);
  if (gAFCMaxOpenFileCount)
  {
    v2 = 0;
    v3 = (a1 + 104);
    do
    {
      v4 = *v3;
      v3 += 5;
      dispatch_release(v4);
      ++v2;
    }

    while (v2 < gAFCMaxOpenFileCount);
  }

  dispatch_release(*(a1 + 48));
  dispatch_release(*(a1 + 56));
  dispatch_source_cancel(*(a1 + 32));
  dispatch_release(*(a1 + 32));
  dispatch_release(*(a1 + 24));
  v5 = *(a1 + 64);
  if (v5)
  {
    CFRelease(v5);
  }

  free(a1);
}

void AFCFlushServerContext(uint64_t a1)
{
  dispatch_group_wait(*(a1 + 56), 0xFFFFFFFFFFFFFFFFLL);
  if (gAFCMaxOpenFileCount)
  {
    v2 = 0;
    v3 = (a1 + 112);
    do
    {
      v4 = *(v3 - 8);
      if (v4 != -1)
      {
        close(v4);
        *(v3 - 8) = -1;
      }

      if (*v3)
      {
        (*(*v3 + 2))();
        _Block_release(*v3);
        *v3 = 0;
      }

      ++v2;
      v3 += 5;
    }

    while (v2 < gAFCMaxOpenFileCount);
  }

  v5 = *(a1 + 24);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = __AFCFlushServerBuffers_block_invoke;
  block[3] = &__block_descriptor_tmp_17;
  block[4] = a1;
  dispatch_sync(v5, block);
}

void __AFCFlushServerBuffers(uint64_t a1)
{
  dispatch_source_set_timer(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  while (*(a1 + 16))
  {
    v2 = *(a1 + 16);
    *(a1 + 16) = *v2;
    free(v2[2]);
    free(v2);
  }
}

uint64_t AFCLockLock(uint64_t a1)
{
  if (!a1)
  {
    return 3892330503;
  }

  v1 = pthread_mutex_lock((a1 + 16));

  return AFCErrnoToAFCDomainError(v1, 3892330519);
}

uint64_t AFCConnectionSetContext(uint64_t a1, uint64_t a2)
{
  AFCLockLock(*(a1 + 136));
  *(a1 + 120) = a2;
  v4 = *(a1 + 136);

  return AFCLockUnlock(v4);
}

uint64_t AFCErrnoToAFCDomainError(uint64_t result, uint64_t a2)
{
  if ((result & 0x80000000) != 0)
  {
    return a2;
  }

  if (result > 59)
  {
    if (result > 79)
    {
      if ((result - 80) < 2)
      {
        return 3892330506;
      }
    }

    else
    {
      switch(result)
      {
        case '<':
          return 3892330508;
        case '?':
          return 3892330503;
        case 'M':
          return 3892330499;
      }
    }

    return a2;
  }

  switch(result)
  {
    case 0:
      return result;
    case 1:
    case 13:
      return 3892330506;
    case 2:
    case 3:
      return 3892330504;
    case 4:
      return 3892330517;
    case 5:
      return 3892330516;
    case 6:
    case 8:
    case 10:
    case 11:
    case 14:
    case 15:
    case 18:
    case 19:
    case 20:
    case 25:
    case 26:
    case 29:
    case 30:
    case 32:
    case 33:
    case 34:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
      return a2;
    case 7:
    case 12:
    case 23:
    case 24:
    case 27:
    case 31:
      return 3892330499;
    case 9:
      goto LABEL_15;
    case 16:
      return 3892330513;
    case 17:
      return 3892330512;
    case 21:
      return 3892330505;
    case 22:
      return 3892330503;
    case 28:
      return 3892330514;
    case 35:
      return 3892330515;
    case 36:
      return 3892330518;
    case 45:
      return 3892330511;
    default:
      if (result != 57)
      {
        return a2;
      }

LABEL_15:
      result = 3892330507;
      break;
  }

  return result;
}

uint64_t AFCLockUnlock(uint64_t a1)
{
  if (!a1)
  {
    return 3892330503;
  }

  v1 = pthread_mutex_unlock((a1 + 16));

  return AFCErrnoToAFCDomainError(v1, 3892330519);
}

uint64_t AFCConnectionInvalidate(void *a1)
{
  v1 = a1;
  __buf = a1;
  AFCLog(5, "AFCConnectionInvalidate(%p)", a1);
  AFCLockLock(*(v1 + 136));
  if (*(v1 + 16) == 1)
  {
    *(v1 + 16) = 2;
    AFCLockUnlock(*(v1 + 136));
    v2 = *(v1 + 1264);
    if (v2 != -1)
    {
      write(v2, &__buf, 1uLL);
      v1 = __buf;
    }

    __AFCConnectionSignalIOLoop(v1);
    AFCConditionWait(__buf[3], (4 * __buf[13]));
    return AFCLog(5, "AFCConnectionInvalidate done");
  }

  else
  {
    v4 = *(v1 + 136);

    return AFCLockUnlock(v4);
  }
}

void __AFCConnectionPerformOperationCallBack(uint64_t a1)
{
  AFCLog(5, "%s(%p)\n", "__AFCConnectionPerformOperationCallBack", a1);
  AFCLockLock(*(a1 + 136));
  CFRetain(a1);
  if (*(a1 + 16) == 1)
  {
    while (CFArrayGetCount(*(a1 + 160)) < *(a1 + 112))
    {
      AFCLockUnlock(*(a1 + 136));
      v2 = __AFCDequeue(a1, *(a1 + 152));
      if (!v2)
      {
        AFCLockLock(*(a1 + 136));
        break;
      }

      v3 = v2;
      if (__AFCConnectionSendOperation(a1, v2))
      {
        __AFCConnectionNotifyOperationComplete(a1, v3);
        CFRelease(v3);
      }

      else
      {
        __AFCEnqueue(a1, *(a1 + 160), v3);
        v3[6] = 4;
      }

      AFCLockLock(*(a1 + 136));
      if (*(a1 + 16) != 1)
      {
        break;
      }
    }
  }

  v4 = *(a1 + 32);
  if (v4 == 1)
  {
    *(a1 + 32) = 0;
    __AFCConnectionUnscheduleFromRunLoop(a1);
  }

  AFCLockUnlock(*(a1 + 136));
  if (*(a1 + 16) == 2)
  {
    __AFCConnectionInvalidate(a1);
  }

  if (v4)
  {
    AFCConditionSignal(*(a1 + 40));
  }

  CFRelease(a1);
}

void __AFCConnectionSignalIOLoop(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 192);
    if (v2 && *(a1 + 184) && (Current = CFRunLoopGetCurrent(), !CFEqual(v2, Current)))
    {
      CFRunLoopSourceSignal(*(a1 + 184));
      v4 = *(a1 + 192);

      CFRunLoopWakeUp(v4);
    }

    else
    {

      __AFCConnectionPerformOperationCallBack(a1);
    }
  }

  else
  {

    AFCLog(4, "SignalIOLoop on an invalid connection");
  }
}

void __AFCConnectionInvalidate(void *a1)
{
  v1 = a1;
  __buf = a1;
  AFCLog(5, "__AFCConnectionInvalidate(%p)", a1);
  AFCLockLock(v1[17]);
  v2 = *(v1 + 4);
  if (v2 == 1)
  {
    AFCLog(2, "Warning: connection %p state going from valid->invalid", v1);
  }

  else if (!v2)
  {
    v3 = v1[17];

    AFCLockUnlock(v3);
    return;
  }

  *(v1 + 4) = 0;
  CFRetain(v1);
  v4 = v1[6];
  if (v4)
  {
    CFSocketInvalidate(v4);
    CFRelease(v1[6]);
    v1[6] = 0;
  }

  v5 = *(v1 + 14);
  if (v5 != -1 && *(v1 + 60) == 1)
  {
    shutdown(v5, 2);
    close(*(v1 + 14));
    *(v1 + 14) = -1;
  }

  v6 = *(v1 + 316);
  if (v6 != -1)
  {
    write(v6, &__buf, 1uLL);
    v1 = __buf;
  }

  v7 = v1[22];
  if (v7)
  {
    CFRunLoopSourceInvalidate(v7);
    v1 = __buf;
    __buf[22] = 0;
  }

  v8 = v1[23];
  if (v8)
  {
    CFRunLoopSourceInvalidate(v8);
    v1 = __buf;
    __buf[23] = 0;
  }

  v9 = __AFCDequeue(v1, v1[19]);
  if (v9)
  {
    v10 = v9;
    do
    {
      __AFCOperationSetClientError(v10, 3892330507, "/Library/Caches/com.apple.xbs/Sources/AppleFileConduit/connection.c", 970, "Connection invalidated");
      __AFCConnectionNotifyOperationComplete(__buf, v10);
      CFRelease(v10);
      v10 = __AFCDequeue(__buf, __buf[19]);
    }

    while (v10);
  }

  v11 = __AFCDequeue(__buf, __buf[20]);
  if (v11)
  {
    v12 = v11;
    do
    {
      __AFCOperationSetClientError(v12, 3892330507, "/Library/Caches/com.apple.xbs/Sources/AppleFileConduit/connection.c", 982, "Connection invalidated");
      __AFCConnectionNotifyOperationComplete(__buf, v12);
      CFRelease(v12);
      v12 = __AFCDequeue(__buf, __buf[20]);
    }

    while (v12);
  }

  AFCConditionSignal(__buf[3]);
  v13 = __buf;
  v14 = __buf[27];
  if (v14)
  {
    v14();
    v13 = __buf;
  }

  AFCLockUnlock(v13[17]);
  CFRelease(__buf);
}

const void *__AFCDequeue(uint64_t a1, const __CFArray *a2)
{
  AFCLockLock(*(a1 + 136));
  if (CFArrayGetCount(a2) < 1)
  {
    ValueAtIndex = 0;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, 0);
    CFArrayRemoveValueAtIndex(a2, 0);
  }

  AFCLockUnlock(*(a1 + 136));
  return ValueAtIndex;
}

uint64_t AFCConditionSignal(uint64_t a1)
{
  v2 = pthread_mutex_lock((a1 + 16));
  if (!v2)
  {
    *(a1 + 128) = 1;
    v3 = pthread_cond_broadcast((a1 + 80));
    v2 = (pthread_mutex_unlock((a1 + 16)) | v3) != 0;
  }

  return AFCErrnoToAFCDomainError(v2, 3892330519);
}

uint64_t AFCConditionWait(uint64_t a1, double a2)
{
  v4 = pthread_mutex_lock((a1 + 16));
  if (!v4)
  {
    v5 = ((a2 - floor(a2)) * 1000000000.0);
    while (1)
    {
      v6 = *(a1 + 128);
      if (v6)
      {
        break;
      }

      if (a2 == 0.0)
      {
        v7 = pthread_cond_wait((a1 + 80), (a1 + 16));
      }

      else
      {
        v10.tv_sec = 0;
        v10.tv_nsec = 0;
        v10.tv_sec = time(0) + a2;
        v10.tv_nsec = v5;
        v7 = pthread_cond_timedwait((a1 + 80), (a1 + 16), &v10);
      }

      v8 = v7;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    v8 = 0;
    *(a1 + 128) = 0;
LABEL_10:
    LODWORD(v4) = pthread_mutex_unlock((a1 + 16));
    if ((v6 & (v4 != 0)) != 0)
    {
      v4 = v4;
    }

    else
    {
      v4 = v8;
    }
  }

  return AFCErrnoToAFCDomainError(v4, 3892330519);
}

void __AFCConnectionFinalize(uint64_t a1)
{
  v2 = *(a1 + 136);
  AFCLog(5, "%s(%p)", "__AFCConnectionFinalize", a1);
  AFCLockLock(v2);
  v3 = *(a1 + 16);
  if (v3 == 1)
  {
    AFCLog(1, "Finalizing connection %p which is still valid");
  }

  else if (v3 == 2)
  {
    AFCLog(1, "Finalizing connection %p which has requested invalidation");
  }

  Copy = CFSetCreateCopy(0, *(a1 + 168));
  CFSetApplyFunction(Copy, __AFCConnectionInvalidateFileDescriptor, a1);
  CFRelease(Copy);
  v5 = *(a1 + 48);
  if (v5)
  {
    CFSocketInvalidate(v5);
    CFRelease(*(a1 + 48));
    *(a1 + 48) = 0;
  }

  v6 = *(a1 + 208);
  if (v6 && *(a1 + 60) == 1 && *(a1 + 61) == 1)
  {
    SSLClose(v6);
    CFRelease(*(a1 + 208));
  }

  *(a1 + 208) = 0;
  v7 = *(a1 + 144);
  if (v7)
  {
    AFCLockLock(*(a1 + 144));
    *(a1 + 144) = 0;
    AFCLockUnlock(v7);
    AFCLockFree(v7);
  }

  v8 = *(a1 + 1256);
  if (v8 != -1)
  {
    close(v8);
    *(a1 + 1256) = -1;
  }

  v9 = *(a1 + 1260);
  if (v9 != -1)
  {
    close(v9);
    *(a1 + 1260) = -1;
  }

  v10 = *(a1 + 1264);
  if (v10 != -1)
  {
    close(v10);
    *(a1 + 1264) = -1;
  }

  v11 = *(a1 + 160);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a1 + 152);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(a1 + 168);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(a1 + 184);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(a1 + 176);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(a1 + 192);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(a1 + 200);
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(a1 + 72);
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = *(a1 + 40);
  if (v19)
  {
    CFRelease(v19);
  }

  v20 = *(a1 + 24);
  if (v20)
  {
    CFRelease(v20);
  }

  *(a1 + 136) = 0;
  AFCLockUnlock(v2);

  AFCLockFree(v2);
}

uint64_t __AFCConditionFinalize(uint64_t a1)
{
  *(a1 + 128) = 1;
  pthread_mutex_destroy((a1 + 16));

  return pthread_cond_destroy((a1 + 80));
}

char *AFCStringCopy(char *a1, size_t __size, char *__src, size_t a4)
{
  if (!a4)
  {
    return strlcpy(a1, __src, __size);
  }

  if (a4 >= __size)
  {
    v5 = __size;
  }

  else
  {
    v5 = a4;
  }

  return strncpy(a1, __src, v5);
}

uint64_t AFCValidateHeader(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a1 == 0x434641364C504141)
  {
    AFCLog(5, "Swapped packet\n");
    v6 = vrev64q_s8(*(a1 + 1));
    *(a1 + 1) = v6;
    a1[4] = bswap64(a1[4]);
    v5 = v6.u64[1];
  }

  else
  {
    if (*a1 != 0x4141504C36414643)
    {
      v11 = *a1;
      v8 = "Bad packet signature 0x%qx";
      v9 = 116;
      return __AFCSetErrorResult(1, a2, 3892330498, a4, v9, v8);
    }

    v5 = a1[2];
  }

  if (v5 < 0x28 || (v7 = a1[1], v5 > v7))
  {
    v8 = "Header length 0x%qx too small or exceeds packet length";
    v9 = 121;
    return __AFCSetErrorResult(1, a2, 3892330498, a4, v9, v8);
  }

  if (HIDWORD(v7))
  {
    v12 = a1[1];
    v8 = "Implausible packet length 0x%qx";
    v9 = 126;
    return __AFCSetErrorResult(1, a2, 3892330498, a4, v9, v8);
  }

  if (HIDWORD(a1[4]))
  {
    v13 = a1[4];
    v8 = "Implausible packet type 0x%qx";
    v9 = 130;
    return __AFCSetErrorResult(1, a2, 3892330498, a4, v9, v8);
  }

  return 0;
}

uint64_t AFCSwapHeader(void *a1)
{
  if (*a1 != 0x434641364C504141)
  {
    return 0;
  }

  result = 3892330502;
  v3 = __gAFCHeaderSwapInfo;
  if (__gAFCHeaderSwapInfo)
  {
    v4 = &__gAFCHeaderSwapInfo;
    while (v3 != a1[4])
    {
      v5 = v4[9];
      v4 += 9;
      v3 = v5;
      if (!v5)
      {
        return result;
      }
    }

    v6 = 1;
    result = 3892330497;
    do
    {
      v7 = v4[v6];
      if (!v7)
      {
        break;
      }

      if (v7 > a1[2] - 8)
      {
        return result;
      }

      *(a1 + (v7 & 0xFFFFFFFFFFFFFFF8)) = bswap64(*(a1 + (v7 & 0xFFFFFFFFFFFFFFF8)));
      ++v6;
    }

    while (v6 != 9);
    return 0;
  }

  return result;
}

void *AFCHeaderInit(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 0x4141504C36414643;
  result[1] = a4 + a3;
  result[2] = a3;
  result[4] = a2;
  if (a5)
  {
    v5 = *(a5 + 24);
  }

  else
  {
    v5 = -1;
  }

  result[3] = v5;
  return result;
}

void AFCLogPacketInfo(int a1, const char *a2, uint64_t a3)
{
  v18 = *MEMORY[0x29EDCA608];
  v5 = *(a3 + 32);
  if ((v5 - 1) > 0x27)
  {
    v6 = "Unknown";
  }

  else
  {
    v6 = gAFCPacketTypeNames[v5];
  }

  v7 = *(a3 + 8);
  snprintf(__str, 0x200uLL, "%s: PacketType=%d PacketName=%s HeaderLength=%d PacketLength=%d PacketID=%d", a2, v5, v6, *(a3 + 16), v7, *(a3 + 24));
  switch(*(a3 + 32))
  {
    case 1:
      v9 = AFCCopyErrorString(*(a3 + 40));
      if (v9)
      {
        v10 = v9;
        CFStringGetCString(v9, buffer, 128, 0x8000100u);
        AFCLog(a1, "%s Status=0x%x StatusName=%s\n", __str, *(a3 + 40), buffer);
        CFRelease(v10);
      }

      else
      {
        strcpy(buffer, "Unknown");
        v14 = *(a3 + 40);
        AFCLog(a1, "%s Status=0x%x StatusName=%s\n");
      }

      break;
    case 3:
    case 4:
    case 5:
    case 6:
    case 8:
    case 9:
    case 0xALL:
    case 0xCLL:
    case 0xDLL:
    case 0x18:
    case 0x1CLL:
    case 0x1DLL:
    case 0x1ELL:
      AFCLog(a1, "%s Path=%s\n");
      break;
    case 7:
      v11 = *(a3 + 24);
      AFCLog(a1, "PacketID=%d Path=%s\n");
      break;
    case 0xELL:
      v12 = *(a3 + 40);
      AFCLog(a1, "%s FileRef=%d\n");
      break;
    case 0x1FLL:
      v13 = *(a3 + 40);
      v15 = *(a3 + 48);
      AFCLog(a1, "%s RangeStart=%lli RangeLength=%lli Path=%s\n");
      break;
    default:
      AFCLog(a1, "%s\n");
      break;
  }

  v8 = *MEMORY[0x29EDCA608];
}

uint64_t AFCReadPacketHeader(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v8 = CFGetAllocator(a1);
  if (*(a1 + 68) == 1)
  {
    return *(a1 + 64);
  }

  v12 = v8;
  if (!a2 || !a4)
  {
    v34 = "NULL buffer";
    v35 = 3892330503;
    v36 = 498;
LABEL_30:
    v11 = __AFCSetErrorResult(0, v9, v35, v10, v36, v34);
    v21 = 0;
    goto LABEL_31;
  }

  if (a3 <= 0x27)
  {
    v34 = "Static buffer too small";
    v35 = 3892330503;
    v36 = 499;
    goto LABEL_30;
  }

  v13 = AFCReadData(a1, a2, 0x28uLL);
  if (v13 || (v13 = AFCValidateHeader(a2, v14, v15, v16), v13))
  {
    v11 = v13;
LABEL_24:
    *a4 = 0;
    return v11;
  }

  v17 = *(a2 + 16);
  v18 = v17 + 1;
  if (v17 == -1)
  {
    v35 = 3892330498;
    v34 = "Packet Size Rollover";
    v36 = 512;
    goto LABEL_30;
  }

  if (v18 <= a3)
  {
    v25 = 0;
    v22 = *(a2 + 16);
    v21 = a2;
    goto LABEL_15;
  }

  v21 = MEMORY[0x29C289090](v12, v17 + 1, 0x10000400A747E1ELL, 0);
  if (v21)
  {
    AFCLog(5, "Allocated %llu bytes\n", v18);
    v22 = *(a2 + 16);
    if (v21 == a2)
    {
      v25 = 0;
      v17 = *(a2 + 16);
    }

    else
    {
      v23 = *a2;
      v24 = *(a2 + 16);
      *(v21 + 32) = *(a2 + 32);
      *v21 = v23;
      *(v21 + 16) = v24;
      v17 = *(a2 + 16);
      v25 = v21;
    }

LABEL_15:
    *(v21 + v17) = 0;
    v26 = v22 - 40;
    if (v22 != 40 && (AFCLog(5, "Expecting %u bytes\n", v22 - 40), v27 = AFCReadData(a1, (v21 + 40), v26), v27))
    {
      v11 = v27;
    }

    else
    {
      AFCSwapHeader(v21);
      v11 = 0;
      *a4 = v25;
    }

    v28 = *(v21 + 32);
    v29 = *(v21 + 16);
    v30 = *(v21 + 8);
    v31 = *(v21 + 24);
    AFCLogPacketInfo(4, "AFCReadPacketHeader", v21);
    v32 = 0;
    if (!v11)
    {
      return v11;
    }

    goto LABEL_19;
  }

  v11 = __AFCSetErrorResult(0, v19, 3892330499, v20, 518, "CFAllocatorAllocate");
LABEL_31:
  v32 = 1;
  if (!v11)
  {
    return v11;
  }

LABEL_19:
  if (v21 == a2)
  {
    v32 = 1;
  }

  if ((v32 & 1) == 0)
  {
    CFAllocatorDeallocate(v12, v21);
  }

  if (a4)
  {
    goto LABEL_24;
  }

  return v11;
}

uint64_t AFCReadPacketBody(_BYTE *cf, uint64_t a2, char **a3, size_t *a4)
{
  if (cf[68] == 1)
  {
    return *(cf + 16);
  }

  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = v8 - v9;
  if (v8 == v9)
  {
    v11 = 0;
LABEL_7:
    result = 0;
    *a3 = v11;
    *a4 = v10;
    return result;
  }

  v12 = CFGetAllocator(cf);
  v13 = MEMORY[0x29C289090](v12, v10, 0x100004077774924, 0);
  if (v13)
  {
    v11 = v13;
    v16 = AFCReadData(cf, v13, v10);
    if (!v16)
    {
      goto LABEL_7;
    }

    v17 = v16;
    v18 = CFGetAllocator(cf);
    CFAllocatorDeallocate(v18, v11);
    return v17;
  }

  else
  {

    return __AFCSetErrorResult(0, v14, 3892330499, v15, 590, "CFAllocatorAllocate");
  }
}

uint64_t AFCSendHeader(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 68) == 1)
  {
    return *(a1 + 64);
  }

  AFCLogPacketInfo(4, "AFCSendHeader", a2);
  v3 = AFCSendData(a1, a2, *(a2 + 16));
  v5 = *(a2 + 32);
  v6 = *(a2 + 16);
  v7 = *(a2 + 8);
  v8 = *(a2 + 24);
  return v3;
}

CFMutableDataRef __AFCCreateAFCDataWithDictionary(const __CFDictionary *a1)
{
  Mutable = CFDataCreateMutable(0, 0);
  if (Mutable)
  {
    CFDictionaryApplyFunction(a1, __ConvertDictEntry, Mutable);
  }

  return Mutable;
}

uint64_t AFCSendStatusExtended(uint64_t a1, uint64_t a2, int a3, const __CFDictionary *a4)
{
  v4 = a4;
  AFCLog(5, "Writing status packet %d info %p\n", a3, a4);
  if (a3 && (a3 + 402636777) <= 0xFFFFFFEA)
  {
    AFCLog(5, "Oh no!");
  }

  if (*(a1 + 68) == 1)
  {
    return *(a1 + 64);
  }

  if (!v4)
  {
    goto LABEL_8;
  }

  if ((*(a1 + 128) & 1) == 0)
  {
    v4 = 0;
LABEL_8:
    v8 = 48;
    goto LABEL_10;
  }

  v4 = __AFCCreateAFCDataWithDictionary(v4);
  v8 = CFDataGetLength(v4) + 48;
LABEL_10:
  v15[0] = 0x4141504C36414643;
  v15[1] = v8;
  v15[2] = 48;
  v15[4] = 1;
  if (a2)
  {
    v9 = *(a2 + 24);
  }

  else
  {
    v9 = -1;
  }

  v15[3] = v9;
  v15[5] = a3 & 0x1FFF;
  v10 = AFCSendHeader(a1, v15);
  if (v10)
  {
    v13 = v10;
    if (!v4)
    {
      return v13;
    }
  }

  else
  {
    if (!v4)
    {
      return 0;
    }

    BytePtr = CFDataGetBytePtr(v4);
    Length = CFDataGetLength(v4);
    v13 = AFCSendData(a1, BytePtr, Length);
  }

  CFRelease(v4);
  return v13;
}

uint64_t AFCSendStatus(uint64_t a1, uint64_t a2, int a3)
{
  ErrorInfo = AFCCopyAndClearLastErrorInfo();
  v7 = AFCSendStatusExtended(a1, a2, a3, ErrorInfo);
  if (ErrorInfo)
  {
    CFRelease(ErrorInfo);
  }

  return v7;
}

uint64_t AFCDiscardData(uint64_t a1, size_t a2)
{
  v2 = a2;
  v16 = *MEMORY[0x29EDCA608];
  AFCLog(5, "Discard data length %u\n", a2);
  if (*(a1 + 68) == 1)
  {
    v4 = *(a1 + 64);
    goto LABEL_21;
  }

  if (!v2)
  {
    v4 = 0;
    goto LABEL_21;
  }

  if (v2 <= 0x40)
  {
    v4 = AFCReadData(a1, v15, v2);
    if (!v4)
    {
      goto LABEL_21;
    }

LABEL_19:
    v12 = __error();
    AFCLog(2, "Error %d discarding data\n", *v12);
    AFCConnectionSetFatalError(a1, v4);
    goto LABEL_21;
  }

  v5 = MEMORY[0x29C289090](0, *(a1 + 96), 0x100004077774924, 0);
  if (!v5)
  {
    v4 = 3892330499;
    __AFCSetErrorResult(0, v6, 3892330499, v7, 989, "CFAllocatorAllocate");
    goto LABEL_21;
  }

  v8 = v5;
  do
  {
    if (v2 >= *(a1 + 96))
    {
      v9 = *(a1 + 96);
    }

    else
    {
      v9 = v2;
    }

    v10 = AFCReadData(a1, v8, v9);
    v2 -= v9;
    if (v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = v2 == 0;
    }
  }

  while (!v11);
  v4 = v10;
  CFAllocatorDeallocate(0, v8);
  if (v4)
  {
    goto LABEL_19;
  }

LABEL_21:
  v13 = *MEMORY[0x29EDCA608];
  return v4;
}

void *AFCIteratorCreate(const __CFAllocator *a1, const void *a2)
{
  pthread_once(&AFCIteratorGetTypeID_typeIDInit, __AFCIteratorRegisterClass);
  Instance = _CFRuntimeCreateInstance();
  v5 = Instance;
  if (a2 && Instance)
  {
    *(Instance + 16) = 0u;
    v6 = (Instance + 16);
    *(Instance + 48) = 0;
    *(Instance + 32) = 0u;
    v7 = CFGetTypeID(a2);
    if (v7 == CFDictionaryGetTypeID())
    {
      Count = CFDictionaryGetCount(a2);
      if (Count)
      {
        v9 = Count;
        v10 = MEMORY[0x29C289090](0, 8 * Count, 0x80040B8603338, 0);
        if (!v10)
        {
          goto LABEL_15;
        }

        v11 = v10;
        CFDictionaryGetKeysAndValues(a2, v10, 0);
        v5[3] = CFArrayCreate(a1, v11, v9, MEMORY[0x29EDB9000]);
        CFAllocatorDeallocate(0, v11);
        v12 = v5[3];
      }

      else
      {
        v12 = CFArrayCreate(a1, 0, 0, 0);
        v5[3] = v12;
      }

      if (v12)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v13 = CFGetTypeID(a2);
      if (v13 == CFArrayGetTypeID())
      {
        v6 = v5 + 3;
LABEL_11:
        *v6 = a2;
        CFRetain(a2);
        Mutable = CFDataCreateMutable(a1, 0);
        v5[5] = Mutable;
        if (Mutable)
        {
          v15 = CFDataCreateMutable(a1, 0);
          v5[6] = v15;
          if (v15)
          {
            return v5;
          }
        }
      }
    }

LABEL_15:
    AFCIteratorCreate_cold_1(v5);
    goto LABEL_16;
  }

  if (Instance)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (a2)
  {
    CFRelease(a2);
  }

  return 0;
}

const void *AFCIteratorNext(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= CFArrayGetCount(*(a1 + 24)))
  {
    return 0;
  }

  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  *(a1 + 32) = v4 + 1;

  return CFArrayGetValueAtIndex(v3, v4);
}

uint64_t AFCIteratorGetObject(uint64_t a1)
{
  result = *(a1 + 16);
  if (!result)
  {
    return *(a1 + 24);
  }

  return result;
}

const UInt8 *AFCIteratorGetKeyBuffer(uint64_t a1, CFIndex a2)
{
  if (CFDataGetLength(*(a1 + 40)) < a2)
  {
    CFDataSetLength(*(a1 + 40), a2);
  }

  v4 = *(a1 + 40);

  return CFDataGetBytePtr(v4);
}

const UInt8 *AFCIteratorGetValueBuffer(uint64_t a1, CFIndex a2)
{
  if (CFDataGetLength(*(a1 + 48)) < a2)
  {
    CFDataSetLength(*(a1 + 48), a2);
  }

  v4 = *(a1 + 48);

  return CFDataGetBytePtr(v4);
}

uint64_t __AFCIteratorRegisterClass()
{
  result = _CFRuntimeRegisterClass();
  __gAFCIteratorTypeID = result;
  return result;
}

void __AFCIteratorFinalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
  }

  a1[4] = 0;
}

__CFString *__AFCIteratorCopyDescription(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<AFCIterator %p [%p]> {\n", a1, v2);
  CFStringAppendFormat(Mutable, 0, @"  Dictionary: %@\n", a1[2]);
  CFStringAppendFormat(Mutable, 0, @"  Array: %@\n", a1[3]);
  CFStringAppendFormat(Mutable, 0, @"  Index: %ld\n", a1[4]);
  CFStringAppendFormat(Mutable, 0, @"}");
  return Mutable;
}

CFStringRef AFCCopyErrorString(uint64_t a1)
{
  if (a1)
  {
    v1 = &off_29EE95F28;
    while (1)
    {
      v2 = *v1;
      if (!*v1)
      {
        break;
      }

      v3 = *(v1 - 2);
      v1 += 2;
      if (v3 == a1)
      {
        goto LABEL_7;
      }
    }

    v5 = CFStringCreateWithFormat(0, 0, @"Error 0x%x", a1);
    CFRelease(@"Error 0x%x");
    return v5;
  }

  else
  {
    v2 = @"Success";
LABEL_7:

    return CFStringCreateCopy(0, v2);
  }
}

CFDictionaryRef __AFCCreateErrorObject(const __CFAllocator *a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x29EDCA608];
  *keys = xmmword_29EE960A0;
  v16 = *off_29EE960B0;
  valuePtr = a2;
  values = @"AFCErrorDomain";
  cf = CFNumberCreate(a1, kCFNumberLongType, &valuePtr);
  v13 = AFCCopyErrorString(a2);
  v14 = a3;
  if (a3)
  {
    v6 = 4;
  }

  else
  {
    v6 = 3;
  }

  v7 = CFDictionaryCreate(a1, keys, &values, v6, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  CFRelease(cf);
  CFRelease(v13);
  v8 = *MEMORY[0x29EDCA608];
  return v7;
}

CFStringRef AFCCopyPacketTypeString(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = @"Status";
LABEL_6:
    MainBundle = CFBundleGetMainBundle();

    return CFBundleCopyLocalizedString(MainBundle, v1, v1, @"AFCError");
  }

  else
  {
    v3 = &off_29EE960E0;
    while (1)
    {
      v1 = *v3;
      if (!*v3)
      {
        break;
      }

      v4 = *(v3 - 1);
      v3 += 3;
      if (v4 == a1)
      {
        goto LABEL_6;
      }
    }

    v7 = CFBundleGetMainBundle();
    v8 = CFBundleCopyLocalizedString(v7, @"Packet Type %qu", @"Packet Type %qu", @"AFCError");
    v9 = CFStringCreateWithFormat(0, 0, v8, a1);
    CFRelease(v8);
    return v9;
  }
}

uint64_t __AFCOperationRegisterClass()
{
  result = _CFRuntimeRegisterClass();
  __gAFCOperationTypeID = result;
  return result;
}

uint64_t AFCOperationCreate(uint64_t a1, void *a2, const void *a3, uint64_t a4, const void *a5, uint64_t a6)
{
  pthread_once(&AFCOperationGetTypeID_typeIDInit, __AFCOperationRegisterClass);
  Instance = _CFRuntimeCreateInstance();
  v13 = Instance;
  if (Instance)
  {
    if (a2)
    {
      v14 = a2[2];
      *(Instance + 256) = 0;
      *(Instance + 224) = 0u;
      *(Instance + 240) = 0u;
      *(Instance + 192) = 0u;
      *(Instance + 208) = 0u;
      *(Instance + 160) = 0u;
      *(Instance + 176) = 0u;
      *(Instance + 128) = 0u;
      *(Instance + 144) = 0u;
      *(Instance + 96) = 0u;
      *(Instance + 112) = 0u;
      *(Instance + 64) = 0u;
      *(Instance + 80) = 0u;
      *(Instance + 32) = 0u;
      *(Instance + 48) = 0u;
      *(Instance + 16) = 0u;
      if (v14 > 0x80)
      {
        v15 = MEMORY[0x29C289090](a1, a2[2], 0x10000400A747E1ELL, 0);
        *(v13 + 88) = v15;
        v16 = a1;
        v17 = v14;
        if (!v15)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v15 = (Instance + 112);
        *(v13 + 88) = v13 + 112;
        v16 = *MEMORY[0x29EDB8EE8];
        v17 = 128;
      }

      *(v13 + 96) = v16;
      *(v13 + 104) = v17;
      memcpy(v15, a2, v14);
      *(v13 + 48) = a2[4];
      if (a3)
      {
        CFRetain(a3);
      }

      *(v13 + 64) = a3;
      *(v13 + 72) = a4;
      if (a5)
      {
        CFRetain(a5);
      }

      *(v13 + 80) = a5;
      v18 = AFCConditionCreate();
      *(v13 + 256) = v18;
      if (v18)
      {
        *(v13 + 16) = a6;
        *(v13 + 24) = 1;
        v19 = AFCLockCreate();
        *(v13 + 248) = v19;
        if (v19)
        {
          goto LABEL_12;
        }
      }
    }

LABEL_14:
    AFCOperationCreate_cold_1(v13);
    return 0;
  }

LABEL_12:
  AFCLog(5, "%s(%p)\n", "AFCOperationCreate", v13);
  return v13;
}

uint64_t AFCOperationGetResultStatus(uint64_t a1)
{
  AFCLockLock(*(a1 + 248));
  if (*(a1 + 24) == 5)
  {
    v2 = *(a1 + 40);
  }

  else
  {
    v2 = 3892330518;
  }

  AFCLockUnlock(*(a1 + 248));
  return v2;
}

uint64_t __AFCOperationGetDataLength(uint64_t a1)
{
  AFCLockLock(*(a1 + 248));
  v2 = *(*(a1 + 88) + 8) - *(*(a1 + 88) + 16);
  AFCLockUnlock(*(a1 + 248));
  return v2;
}

uint64_t __AFCOperationSetClientErrorWithInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = CFGetAllocator(a1);
  v7 = __AFCCreateErrorObject(v6, a2, a3);
  if (!v7)
  {
    v7 = CFRetain(*MEMORY[0x29EDB8F80]);
  }

  AFCLockLock(*(a1 + 248));
  *(a1 + 24) = 5;
  *(a1 + 40) = a2;
  *(a1 + 240) = v7;
  v8 = *(a1 + 248);

  return AFCLockUnlock(v8);
}

uint64_t __AFCOperationSetClientError(uint64_t a1, uint64_t a2, const char *a3, int a4, const void *a5)
{
  v8 = 0;
  v6 = AFCErrorInfoCreateWithArgs(&v8, 0xFFFFFFFFLL, a2, a3, a4, a5);
  return __AFCOperationSetClientErrorWithInfo(a1, v6, v8);
}

CFDictionaryRef AFCOperationCreatePacketHeaderDictionary(void *a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = a1[11];
  v3 = CFGetAllocator(a1);
  *keys = xmmword_29EE96498;
  v11 = *&off_29EE964A8;
  v12 = xmmword_29EE964B8;
  AFCLockLock(a1[31]);
  v9[0] = CFNumberCreate(v3, kCFNumberSInt64Type, v2);
  v9[1] = CFNumberCreate(v3, kCFNumberSInt64Type, (v2 + 8));
  v9[2] = CFNumberCreate(v3, kCFNumberSInt64Type, (v2 + 16));
  v9[3] = CFNumberCreate(v3, kCFNumberSInt64Type, (v2 + 24));
  v9[4] = CFNumberCreate(v3, kCFNumberSInt64Type, (v2 + 32));
  v9[5] = CFDataCreate(v3, v2, *(v2 + 16));
  AFCLockUnlock(a1[31]);
  v4 = CFGetAllocator(a1);
  v5 = CFDictionaryCreate(v4, keys, v9, 6, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  for (i = 0; i != 6; ++i)
  {
    CFRelease(v9[i]);
  }

  v7 = *MEMORY[0x29EDCA608];
  return v5;
}

CFDataRef AFCOperationCopyPacketData(void *a1)
{
  AFCLockLock(a1[31]);
  v2 = CFGetAllocator(a1);
  v3 = a1[9];
  AFCLockLock(a1[31]);
  v4 = *(a1[11] + 8) - *(a1[11] + 16);
  AFCLockUnlock(a1[31]);
  v5 = CFDataCreate(v2, v3, v4);
  AFCLockUnlock(a1[31]);
  return v5;
}

uint64_t __AFCFileDescriptorRegisterClass()
{
  result = _CFRuntimeRegisterClass();
  __gAFCFileDescriptorTypeID = result;
  return result;
}

uint64_t AFCFileDescriptorCreate(uint64_t a1, const void *a2, uint64_t a3)
{
  pthread_once(&AFCFileDescriptorGetTypeID_typeIDInit, __AFCFileDescriptorRegisterClass);
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    CFRetain(a2);
    *(Instance + 16) = a2;
    *(Instance + 24) = a3;
    *(Instance + 32) = 1;
    __AFCConnectionAddFileDescriptor(a2, Instance);
    *(Instance + 36) = 0u;
    *(Instance + 516) = 0u;
    *(Instance + 532) = 0u;
    *(Instance + 484) = 0u;
    *(Instance + 500) = 0u;
    *(Instance + 452) = 0u;
    *(Instance + 468) = 0u;
    *(Instance + 420) = 0u;
    *(Instance + 436) = 0u;
    *(Instance + 388) = 0u;
    *(Instance + 404) = 0u;
    *(Instance + 356) = 0u;
    *(Instance + 372) = 0u;
    *(Instance + 324) = 0u;
    *(Instance + 340) = 0u;
    *(Instance + 292) = 0u;
    *(Instance + 308) = 0u;
    *(Instance + 260) = 0u;
    *(Instance + 276) = 0u;
    *(Instance + 228) = 0u;
    *(Instance + 244) = 0u;
    *(Instance + 196) = 0u;
    *(Instance + 212) = 0u;
    *(Instance + 164) = 0u;
    *(Instance + 180) = 0u;
    *(Instance + 132) = 0u;
    *(Instance + 148) = 0u;
    *(Instance + 100) = 0u;
    *(Instance + 116) = 0u;
    *(Instance + 68) = 0u;
    *(Instance + 84) = 0u;
    *(Instance + 52) = 0u;
  }

  return Instance;
}

uint64_t AFCFileDescriptorSetRemoteName(uint64_t a1, char *__src)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  AFCStringCopy((a1 + 36), 0x200uLL, __src, 0);
  return 0;
}

const void *AFCFileDescriptorCreateCloseOperation(uint64_t a1, uint64_t a2)
{
  v9 = 0u;
  memset(v8, 0, sizeof(v8));
  v4 = (a1 + 32);
  AFCLog(5, "AFCFileDescriptorCreateCloseOperation(%p) [valid %d]", a1, *(a1 + 32));
  if (AFCCompareAndSwap32(1, 0, v4) && (AFCHeaderInit(v8, 20, 48, 0, 0), (*(&v9 + 1) = *(a1 + 24)) != 0))
  {
    v5 = CFGetAllocator(a1);
    v6 = AFCOperationCreate(v5, v8, 0, 0, 0, a2);
    if (v6)
    {
      *(a1 + 24) = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  AFCLog(5, "Close op for desc %p = %p", a1, v6);
  return v6;
}

uint64_t AFCFileDescriptorInvalidate(uint64_t a1)
{
  result = AFCCompareAndSwap32(1, 0, (a1 + 32));
  if (result)
  {
    result = AFCLog(5, "AFCFileDescriptorInvalidate(%p)", a1);
    *(a1 + 24) = 0;
  }

  return result;
}

uint64_t AFCOperationCreateGetDeviceInfo(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  AFCHeaderInit(v5, 11, 40, 0, 0);
  return AFCOperationCreate(a1, v5, 0, 0, 0, a2);
}

uint64_t AFCOperationCreateGetConnectionInfo(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  AFCHeaderInit(v5, 22, 40, 0, 0);
  return AFCOperationCreate(a1, v5, 0, 0, 0, a2);
}

uint64_t AFCOperationCreateSetConnectionOptions(uint64_t a1, const __CFDictionary *a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v5 = __AFCCreateAFCDataWithDictionary(a2);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  Length = CFDataGetLength(v5);
  AFCHeaderInit(v10, 23, 40, Length, 0);
  v8 = AFCOperationCreate(a1, v10, v6, 0, 0, a3);
  CFRelease(v6);
  return v8;
}

void __AFCOperationFinalize(uint64_t a1)
{
  AFCLog(5, "%s(%p)\n", "__AFCOperationFinalize", a1);
  v2 = *(a1 + 64);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 64) = 0;
  v3 = *(a1 + 72);
  if (v3)
  {
    CFAllocatorDeallocate(*(a1 + 80), v3);
    *(a1 + 72) = 0;
  }

  v4 = *(a1 + 88);
  if (v4)
  {
    CFAllocatorDeallocate(*(a1 + 96), v4);
    *(a1 + 88) = 0;
  }

  v5 = *(a1 + 240);
  if (v5)
  {
    CFRelease(v5);
  }

  *(a1 + 240) = 0;
  v6 = *(a1 + 256);
  if (v6)
  {
    CFRelease(v6);
  }

  *(a1 + 256) = 0;
  v7 = *(a1 + 248);
  if (v7)
  {
    CFRelease(v7);
  }

  *(a1 + 248) = 0;
}

__CFString *__AFCOperationCopyDescription(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  v3 = *(a1 + 24);
  if (v3 <= 5)
  {
    v4 = __OperationStates[v3];
  }

  else
  {
    v4 = @"Invalid";
  }

  v5 = AFCCopyErrorString(*(a1 + 40));
  v6 = AFCCopyPacketTypeString(*(a1 + 48));
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<AFCOperation %p [%p]> { Packet '%@' (%qu), State '%@' (%d), Status '%@' (0x%x)", a1, v2, v6, *(a1 + 48), v4, *(a1 + 24), v5, *(a1 + 40));
  if (*(a1 + 240))
  {
    CFStringAppendFormat(Mutable, 0, @" ResultObject '%@'", *(a1 + 240));
  }

  CFStringAppendFormat(Mutable, 0, @"}");
  CFRelease(v5);
  CFRelease(v6);
  return Mutable;
}

void __AFCFileDescriptorFinalize(void *a1)
{
  AFCLog(5, "__AFCFileDescriptorFinalize(%p)", a1);
  AFCFileDescriptorInvalidate(a1);
  v2 = a1[2];
  if (v2)
  {
    __AFCConnectionRemoveFileDescriptor(v2, a1);
    v3 = a1[2];
    if (v3)
    {

      CFRelease(v3);
    }
  }
}

__CFString *__AFCFileDescriptorCopyDescription(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<AFCFileDescriptor %p [%p]> { Connection %p, FileRef %d }", a1, v2, a1[2], a1[3]);
  return Mutable;
}

void OUTLINED_FUNCTION_0()
{

  JUMPOUT(0x29C289090);
}

uint64_t OUTLINED_FUNCTION_4(uint64_t a1)
{

  return CFStringGetCString(v1, (a1 + 40), v2 + 1, 0x8000100u);
}

CFIndex OUTLINED_FUNCTION_7(int a1, CFStringRef theString)
{

  return CFStringGetLength(theString);
}

uint64_t OUTLINED_FUNCTION_8(uint64_t a1, char *a2, CFIndex a3)
{

  return CFStringGetCString(v3, a2, a3, 0x8000100u);
}

CFIndex OUTLINED_FUNCTION_9(int a1, CFStringRef theString)
{

  return CFStringGetLength(theString);
}

uint64_t OUTLINED_FUNCTION_10(uint64_t a1)
{

  return CFStringGetCString(v2, (v3 + a1 + 1), v4 + v1 - (v3 + a1 + 1), 0x8000100u);
}

void OUTLINED_FUNCTION_12()
{

  JUMPOUT(0x29C289090);
}

void OUTLINED_FUNCTION_14()
{

  CFAllocatorDeallocate(0, v0);
}

uint64_t OUTLINED_FUNCTION_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return AFCOperationCreate(a1, &a9, 0, v11, v10, v9);
}

uint64_t OUTLINED_FUNCTION_17(uint64_t a1, uint64_t a2, CFIndex a3)
{

  return CFStringGetCString(v4, v3, a3, 0x8000100u);
}

void OUTLINED_FUNCTION_18()
{

  CFAllocatorDeallocate(0, v0);
}

uint64_t AFCConnectionOpen(CFSocketNativeHandle a1, uint64_t a2, uint64_t *a3)
{
  v4 = AFCConnectionCreate(0, a1, 1, 0, a2);
  *a3 = v4;
  if (v4)
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

uint64_t AFCConnectionClose(void *a1)
{
  AFCConnectionInvalidate(a1);
  CFRelease(a1);
  return 0;
}

uint64_t AFCRenamePath(const void *a1, const char *a2, const char *a3, uint64_t a4)
{
  if (!a1 || !a2 || !a3)
  {
    v14 = __AFCSetErrorResult_1(a1, a2, 3892330503, a4, 270, "NULL argument");
    return v14 & 0x1FFF;
  }

  v7 = CFGetAllocator(a1);
  v8 = CFStringCreateWithCString(v7, a2, 0x8000100u);
  v9 = CFGetAllocator(a1);
  v10 = CFStringCreateWithCString(v9, a3, 0x8000100u);
  v11 = v10;
  if (v8 && v10)
  {
    v12 = CFGetAllocator(a1);
    RenamePath = AFCOperationCreateRenamePath(v12, v8, v11, 0);
    if (RenamePath)
    {
      AFCRenamePath_cold_1(a1, RenamePath, &v16);
      v14 = v16;
    }

    else
    {
      v14 = 16387;
    }

    goto LABEL_8;
  }

  v14 = 16387;
  if (v8)
  {
LABEL_8:
    CFRelease(v8);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v14 & 0x1FFF;
}

uint64_t AFCLinkPath(const void *a1, uint64_t a2, const char *a3, const char *a4)
{
  if (!a1 || !a3 || !a4)
  {
    v15 = __AFCSetErrorResult_1(a1, a2, 3892330503, a4, 299, "NULL argument");
    return v15 & 0x1FFF;
  }

  v8 = CFGetAllocator(a1);
  v9 = CFStringCreateWithCString(v8, a3, 0x8000100u);
  v10 = CFGetAllocator(a1);
  v11 = CFStringCreateWithCString(v10, a4, 0x8000100u);
  v12 = v11;
  if (v9 && v11)
  {
    v13 = CFGetAllocator(a1);
    LinkPath = AFCOperationCreateLinkPath(v13, a2, v9, v12, 0);
    if (LinkPath)
    {
      AFCRenamePath_cold_1(a1, LinkPath, &v17);
      v15 = v17;
    }

    else
    {
      v15 = 16387;
    }

    goto LABEL_8;
  }

  v15 = 16387;
  if (v9)
  {
LABEL_8:
    CFRelease(v9);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v15 & 0x1FFF;
}

uint64_t AFCDirectoryRead(uint64_t a1, uint64_t a2, char **a3, uint64_t a4)
{
  if (!a1 || !a2 || !a3)
  {
    return __AFCSetErrorResult_1(a1, a2, 3892330503, a4, 675, "NULL argument") & 0x1FFF;
  }

  result = AFCIteratorNext(a2);
  if (result)
  {
    v7 = result;
    v8 = CFGetTypeID(result);
    if (v8 == CFStringGetTypeID())
    {
      v9 = 9 * CFStringGetLength(v7);
      ValueBuffer = AFCIteratorGetValueBuffer(a2, v9 + 1);
      *a3 = ValueBuffer;
      if (CFStringGetCString(v7, ValueBuffer, v9 + 1, 0x8000100u))
      {
        return 0;
      }

      else
      {
        return 23;
      }
    }

    else
    {
      return 7;
    }
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t AFCDirectoryClose(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  if (!a1 || !cf)
  {
    return __AFCSetErrorResult_1(a1, cf, 3892330503, a4, 705, "NULL argument") & 0x1FFF;
  }

  CFRelease(cf);
  return 0;
}

uint64_t AFCKeyValueRead(uint64_t TypeID, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (TypeID && a2 && a3)
  {
    v6 = TypeID;
    v7 = AFCIteratorNext(TypeID);
    if (!v7)
    {
      *a2 = 0;
LABEL_14:
      *a3 = 0;
      return v7 & 0x1FFF;
    }

    v8 = v7;
    v9 = CFGetTypeID(v7);
    TypeID = CFStringGetTypeID();
    if (v9 == TypeID)
    {
      Object = AFCIteratorGetObject(v6);
      v11 = CFGetTypeID(Object);
      TypeID = CFDictionaryGetTypeID();
      if (v11 == TypeID)
      {
        v12 = AFCIteratorGetObject(v6);
        Value = CFDictionaryGetValue(v12, v8);
        v14 = CFGetTypeID(Value);
        TypeID = CFStringGetTypeID();
        if (v14 == TypeID)
        {
          v15 = 9 * CFStringGetLength(v8);
          TypeID = AFCIteratorGetKeyBuffer(v6, v15 + 1);
          *a2 = TypeID;
          if (TypeID)
          {
            TypeID = CFStringGetCString(v8, TypeID, v15 + 1, 0x8000100u);
            if (TypeID)
            {
              v16 = 9 * CFStringGetLength(Value);
              TypeID = AFCIteratorGetValueBuffer(v6, v16 + 1);
              *a3 = TypeID;
              if (TypeID)
              {
                TypeID = CFStringGetCString(Value, TypeID, v16 + 1, 0x8000100u);
                if (TypeID)
                {
                  LOWORD(v7) = 0;
                  return v7 & 0x1FFF;
                }

                v18 = "CString encoding of value failed";
                v19 = 3892330503;
                v20 = 781;
              }

              else
              {
                v19 = 3892330499;
                v18 = "NULL value buffer";
                v20 = 780;
              }
            }

            else
            {
              v18 = "CString encoding of key failed";
              v19 = 3892330503;
              v20 = 776;
            }
          }

          else
          {
            v19 = 3892330499;
            v18 = "NULL key buffer";
            v20 = 775;
          }
        }

        else
        {
          v18 = "value is not a string";
          v19 = 3892330503;
          v20 = 771;
        }
      }

      else
      {
        v18 = "iterator object is not a dictionary";
        v19 = 3892330503;
        v20 = 768;
      }
    }

    else
    {
      v18 = "key is not a string";
      v19 = 3892330503;
      v20 = 766;
    }
  }

  else
  {
    v18 = "NULL argument";
    v19 = 3892330503;
    v20 = 755;
  }

  LODWORD(v7) = __AFCSetErrorResult_1(TypeID, a2, v19, a4, v20, v18);
  if (v7)
  {
    if (a2)
    {
      *a2 = 0;
    }

    if (a3)
    {
      goto LABEL_14;
    }
  }

  return v7 & 0x1FFF;
}

uint64_t AFCKeyValueClose(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return __AFCSetErrorResult_1(0, a2, 3892330503, a4, 799, "NULL argument") & 0x1FFF;
  }

  CFRelease(a1);
  return 0;
}

CFStringRef OUTLINED_FUNCTION_2_0(const __CFAllocator *a1)
{

  return CFStringCreateWithCString(a1, v1, 0x8000100u);
}

void OUTLINED_FUNCTION_6_0()
{

  CFRelease(v0);
}

uint64_t __AFCConnectionSendOperation(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 88);
  DataLength = __AFCOperationGetDataLength(a2);
  BytePtr = *(a2 + 64);
  if (BytePtr)
  {
    BytePtr = CFDataGetBytePtr(BytePtr);
    v9 = BytePtr;
    if (!DataLength)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    if (!DataLength)
    {
      goto LABEL_6;
    }
  }

  if (!v9)
  {
    return __AFCSetErrorResult_2(BytePtr, v5, 3892330503, v6, 1231, "Invalid data buffer in operation (%p, %d)");
  }

LABEL_6:
  AFCLockLock(*(a1 + 136));
  v10 = *(a1 + 80);
  *(a1 + 80) = v10 + 1;
  *(v4 + 24) = v10;
  AFCLockUnlock(*(a1 + 136));
  v11 = AFCSendPacket(a1, v4, v9, DataLength);
  if (v11)
  {
    ErrorInfo = AFCCopyAndClearLastErrorInfo();
    __AFCOperationSetClientErrorWithInfo(a2, v11, ErrorInfo);
    if (ErrorInfo)
    {
      CFRelease(ErrorInfo);
    }
  }

  return v11;
}

uint64_t __AFCConnectionNotifyOperationComplete(void *a1, uint64_t a2)
{
  AFCLog(5, "%s(%p, %p) [%lu]\n", "__AFCConnectionNotifyOperationComplete", a1, a2, *(a2 + 32) & 1);
  *(a2 + 24) = 5;
  v4 = a1[27];
  if (v4 && (*(a2 + 32) & 1) == 0)
  {
    v4(a1, 1, a2);
  }

  __AFCConnectionSignalIOLoop(a1);
  v5 = *(a2 + 256);

  return AFCConditionSignal(v5);
}

uint64_t __AFCEnqueue(uint64_t a1, __CFArray *a2, const void *a3)
{
  AFCLockLock(*(a1 + 136));
  CFArrayAppendValue(a2, a3);
  CFArrayGetCount(a2);
  v6 = *(a1 + 136);

  return AFCLockUnlock(v6);
}

void __AFCConnectionUnscheduleFromRunLoop(uint64_t a1)
{
  AFCLog(5, "__AFCConnectionUnscheduleFromRunLoop(%p)", a1);
  if (CFArrayGetCount(*(a1 + 160)) > 0 || CFArrayGetCount(*(a1 + 152)) >= 1)
  {
    AFCLog(1, "WARNING: unscheduling from run loop with outstanding requests!");
  }

  v2 = *(a1 + 192);
  if (v2)
  {
    v3 = *(a1 + 176);
    if (v3)
    {
      CFRunLoopRemoveSource(v2, v3, *(a1 + 200));
      CFRelease(*(a1 + 176));
      *(a1 + 176) = 0;
      v2 = *(a1 + 192);
    }

    v4 = *(a1 + 184);
    if (v4)
    {
      CFRunLoopRemoveSource(v2, v4, *(a1 + 200));
      CFRelease(*(a1 + 184));
      *(a1 + 184) = 0;
      v2 = *(a1 + 192);
    }

    CFRelease(v2);
    *(a1 + 192) = 0;
    CFRelease(*(a1 + 200));
    *(a1 + 200) = 0;
  }
}

uint64_t __AFCConnectionProcessData(uint64_t a1)
{
  AFCLockLock(*(a1 + 136));
  CFRetain(a1);
  v2 = *(a1 + 32);
  if (v2 == 1)
  {
    *(a1 + 32) = 0;
    __AFCConnectionUnscheduleFromRunLoop(a1);
  }

  v3 = 3892330507;
  AFCLockUnlock(*(a1 + 136));
  if (AFCSocketIsDisconnected(*(a1 + 56)))
  {
    AFCLog(5, "Socket closed for connection %p.");
  }

  else
  {
    v4 = __AFCDequeue(a1, *(a1 + 160));
    if (v4)
    {
      v5 = v4;
      v6 = __AFCConnectionReceiveOperation(a1, v4);
      if (v6 != -402636789)
      {
        v8 = v6;
        __AFCConnectionNotifyOperationComplete(a1, v5);
        CFRelease(v5);
        v3 = v8;
        if (!v2)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      AFCLog(5, "Socket closed when reading on connection %p.", a1);
      __AFCConnectionNotifyOperationComplete(a1, v5);
      CFRelease(v5);
    }

    else
    {
      AFCLog(1, "Data received on connection %p when no reply expected.");
    }
  }

  *(a1 + 16) = 2;
  __AFCConnectionInvalidate(a1);
  if (v2)
  {
LABEL_10:
    AFCConditionSignal(*(a1 + 40));
  }

LABEL_11:
  CFRelease(a1);
  return v3;
}

uint64_t __AFCConnectionReceiveOperation(void *a1, uint64_t a2)
{
  v10 = 0;
  CFRetain(a1);
  v4 = AFCReadPacketHeader(a1, *(a2 + 88), *(a2 + 104), &v10);
  if (v4 == -402636789)
  {
    AFCLog(5, "Socket closed when reading.\n");
    AFCConnectionInvalidate(a1);
    v5 = 3892330507;
  }

  else
  {
    v5 = v4;
    v6 = v10;
    if (v10)
    {
      v7 = *(a2 + 88);
      if (v7)
      {
        CFAllocatorDeallocate(*(a2 + 96), v7);
        v6 = v10;
      }

      *(a2 + 88) = v6;
      *(a2 + 96) = CFGetAllocator(a1);
    }

    if (!v5)
    {
      v5 = __AFCConnectionDispatchReply(a1, a2);
    }

    if (v5)
    {
      ErrorInfo = AFCCopyAndClearLastErrorInfo();
      __AFCOperationSetClientErrorWithInfo(a2, v5, ErrorInfo);
      if (ErrorInfo)
      {
        CFRelease(ErrorInfo);
      }
    }
  }

  CFRelease(a1);
  return v5;
}

uint64_t __AFCConnectionAddFileDescriptor(uint64_t a1, const void *a2)
{
  AFCLockLock(*(a1 + 136));
  CFSetAddValue(*(a1 + 168), a2);
  v4 = *(a1 + 136);

  return AFCLockUnlock(v4);
}

uint64_t __AFCConnectionRemoveFileDescriptor(uint64_t a1, const void *a2)
{
  AFCLockLock(*(a1 + 136));
  CFSetRemoveValue(*(a1 + 168), a2);
  v4 = *(a1 + 136);

  return AFCLockUnlock(v4);
}

size_t __AFCConnectionSetRoot(uint64_t a1, CFStringRef string)
{
  *(a1 + 224) = 0;
  v3 = a1 + 224;
  CFStringGetFileSystemRepresentation(string, (a1 + 224), 1023);
  result = strlen(v3);
  *(v3 + 1024) = result;
  if (result)
  {
    if (*(result + v3 - 1) != 47)
    {
      *(a1 + 1248) = result + 1;
      *(v3 + result) = 47;
      *(v3 + *(a1 + 1248)) = 0;
    }
  }

  return result;
}

uint64_t AFCConnectionCreate(const __CFAllocator *a1, CFSocketNativeHandle a2, int a3, uint64_t a4, uint64_t a5)
{
  pthread_once(&AFCConnectionGetTypeID_typeIDInit, __AFCConnectionRegisterClass);
  Instance = _CFRuntimeCreateInstance();
  v11 = Instance;
  if (Instance)
  {
    bzero((Instance + 16), 0x4E8uLL);
    context.version = 0;
    memset(&context.retain, 0, 24);
    context.info = v11;
    v12 = CFSocketCreateWithNative(a1, a2, 1uLL, __AFCConnectionSocketCallBack, &context);
    *(v11 + 48) = v12;
    if (!v12)
    {
      goto LABEL_13;
    }

    CFSocketSetSocketFlags(v12, 1uLL);
    AFCSetSocketOptions(v11, a2);
    Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x29EDB9000]);
    *(v11 + 152) = Mutable;
    if (!Mutable)
    {
      goto LABEL_13;
    }

    v14 = CFArrayCreateMutable(a1, 0, MEMORY[0x29EDB9000]);
    *(v11 + 160) = v14;
    if (!v14)
    {
      goto LABEL_13;
    }

    v15 = CFSetCreateMutable(a1, 0, 0);
    *(v11 + 168) = v15;
    if (!v15)
    {
      goto LABEL_13;
    }

    *(v11 + 56) = a2;
    *(v11 + 60) = a3 != 0;
    *(v11 + 216) = a4;
    *(v11 + 64) = 0;
    *(v11 + 68) = 0;
    *(v11 + 80) = 0;
    *(v11 + 88) = 0x100000;
    *(v11 + 96) = 0x100000;
    *(v11 + 120) = a5;
    v16 = AFCLockCreate();
    *(v11 + 136) = v16;
    if (!v16)
    {
      goto LABEL_13;
    }

    v17 = AFCLockCreate();
    *(v11 + 144) = v17;
    if (!v17)
    {
      goto LABEL_13;
    }

    *(v11 + 104) = 60;
    *(v11 + 112) = 1;
    *(v11 + 1256) = kqueue();
    *(v11 + 16) = 1;
    v18 = AFCConditionCreate();
    *(v11 + 40) = v18;
    if (!v18 || (v19 = AFCConditionCreate(), (*(v11 + 24) = v19) == 0))
    {
LABEL_13:
      AFCConnectionCreate_cold_1(v11, (v11 + 48));
      return 0;
    }

    AFCCreateSignalFileDescriptors((v11 + 1260), (v11 + 1264));
  }

  AFCLog(5, "%s(%p)\n", "AFCConnectionCreate", v11);
  return v11;
}

uint64_t __AFCConnectionSocketCallBack(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 == 1)
  {
    return __AFCConnectionProcessData(a5);
  }

  return result;
}

uint64_t AFCConnectionSetCallBack(uint64_t a1, uint64_t a2)
{
  AFCLockLock(*(a1 + 136));
  *(a1 + 216) = a2;
  v4 = *(a1 + 136);

  return AFCLockUnlock(v4);
}

uint64_t __AFCConnectionRegisterClass()
{
  result = _CFRuntimeRegisterClass();
  __gAFCConnectionTypeID = result;
  return result;
}

uint64_t AFCConnectionScheduleWithRunLoop(uint64_t a1, void *a2, const __CFString *a3)
{
  AFCLockLock(*(a1 + 136));
  if (*(a1 + 16) == 1)
  {
    if (*(a1 + 192))
    {
      v6 = 3892330503;
      AFCLog(2, "Trying to add to run loop when already on run loop");
    }

    else
    {
      *(a1 + 192) = CFRetain(a2);
      *(a1 + 200) = CFStringCreateCopy(0, a3);
      if (!*(a1 + 176))
      {
        v7 = CFGetAllocator(a1);
        RunLoopSource = CFSocketCreateRunLoopSource(v7, *(a1 + 48), 200);
        *(a1 + 176) = RunLoopSource;
        CFRunLoopAddSource(a2, RunLoopSource, a3);
        CFSocketEnableCallBacks(*(a1 + 48), 1uLL);
      }

      if (!*(a1 + 184))
      {
        v12.version = 0;
        memset(&v12.retain, 0, 56);
        v12.info = a1;
        v12.perform = __AFCConnectionPerformOperationCallBack;
        v9 = CFGetAllocator(a1);
        v10 = CFRunLoopSourceCreate(v9, 100, &v12);
        *(a1 + 184) = v10;
        CFRunLoopAddSource(a2, v10, a3);
      }

      AFCLockUnlock(*(a1 + 136));
      return 0;
    }
  }

  else
  {
    AFCLockUnlock(*(a1 + 136));
    return 3892330507;
  }

  return v6;
}

uint64_t AFCConnectionUnscheduleFromRunLoop(uint64_t a1, const void *a2)
{
  Current = CFRunLoopGetCurrent();
  AFCLog(5, "%s(%p, %p) [%p]", "AFCConnectionUnscheduleFromRunLoop", a1, a2, Current);
  AFCConnectionInvalidate(a1);
  AFCLockLock(*(a1 + 136));
  if (*(a1 + 192))
  {
    if (*(a1 + 16))
    {
      *(a1 + 32) = 1;
      AFCLockUnlock(*(a1 + 136));
      __AFCConnectionSignalIOLoop(a1);
      AFCConditionWait(*(a1 + 40), (4 * *(a1 + 104)));
      return AFCLog(5, "%s(%p, %p) finished", "AFCConnectionUnscheduleFromRunLoop", a1, a2);
    }

    AFCLog(5, "Connection %p already invalid, just unscheduling", a1);
    __AFCConnectionUnscheduleFromRunLoop(a1);
  }

  else
  {
    AFCLog(5, "Connection %p already unscheduled", a1);
  }

  v6 = *(a1 + 136);

  return AFCLockUnlock(v6);
}

uint64_t __AFCConnectionDispatchReply(uint64_t a1, uint64_t a2)
{
  AFCLockLock(*(a2 + 248));
  v4 = *(a2 + 88);
  if (v4)
  {
    v5 = *(a2 + 48);
    v6 = *(v4 + 32);
    AFCLockUnlock(*(a2 + 248));
    v7 = __AFCProcessStatusPacket;
    for (i = &qword_2A1EE3880; ; i += 3)
    {
      v9 = *(i - 1);
      v10 = !v9 || v9 == v5;
      if (v10 && *i == v6)
      {
        break;
      }

      v7 = i[4];
      if (!v7)
      {
        result = 3892330502;
        *(a2 + 24) = 5;
        return result;
      }
    }

    *(a2 + 24) = 5;

    return v7(a1, a2);
  }

  else
  {
    AFCLockUnlock(*(a2 + 248));
    return 3892330519;
  }
}

uint64_t AFCConnectionSubmitOperation(uint64_t a1, _DWORD *a2)
{
  AFCLog(5, "AFCConnectionSubmitOperation(%p, %p)", a1, a2);
  if (*(a1 + 16) != 1)
  {
    return 3892330507;
  }

  CFRetain(a2);
  a2[6] = 2;
  __AFCEnqueue(a1, *(a1 + 152), a2);
  __AFCConnectionSignalIOLoop(a1);
  return 0;
}

uint64_t AFCConnectionProcessOperation(uint64_t a1, uint64_t *a2, double a3)
{
  v3 = a3;
  AFCLog(5, "AFCConnectionProcessOperation(%p, %p, %g)", a1, a2, a3);
  AFCLockLock(*(a1 + 136));
  if (*(a1 + 16) == 1)
  {
    CFRetain(a1);
    v6 = *(a1 + 192);
    if (!v6)
    {
      AFCConnectionProcessOperation_cold_1((a1 + 136), a1, a2, &v15);
      v11 = v15;
      goto LABEL_19;
    }

    Current = CFRunLoopGetCurrent();
    v8 = CFEqual(v6, Current);
    AFCLockUnlock(*(a1 + 136));
    v9 = AFCConnectionSubmitOperation(a1, a2);
    if (!v9)
    {
      v10 = a2[32];
      if (v8)
      {
        if (AFCConditionIsSignaled(v10))
        {
LABEL_6:
          v11 = 0;
LABEL_19:
          CFRelease(a1);
          AFCLog(5, "ProcessOperation(%p) = %x", a2, v11);
          return v11;
        }

        v11 = 3892330507;
        while (1)
        {
          v12 = CFAbsoluteTimeGetCurrent();
          v13 = CFRunLoopRunInMode(@"AFCRunLoopMode", v3, 1u);
          if (v13 != kCFRunLoopRunHandledSource)
          {
            break;
          }

          if (v3 != 0.0)
          {
            v3 = v3 + v12 - CFAbsoluteTimeGetCurrent();
            if (v3 <= 0.0)
            {
              goto LABEL_18;
            }
          }

          if (AFCConditionIsSignaled(a2[32]))
          {
            goto LABEL_6;
          }
        }

        if ((v13 - 1) < 2)
        {
          goto LABEL_19;
        }

        if (v13 != kCFRunLoopRunTimedOut)
        {
          v11 = 3892330497;
          goto LABEL_19;
        }

LABEL_18:
        AFCLog(1, "Operation %p timed out!", a2);
        v11 = 3892330508;
        goto LABEL_19;
      }

      v9 = AFCConditionWait(v10, v3);
      if (v9 == -402636788)
      {
        goto LABEL_18;
      }
    }

    v11 = v9;
    goto LABEL_19;
  }

  AFCLockUnlock(*(a1 + 136));
  return 3892330507;
}

uint64_t AFCConnectionProcessOperations(uint64_t a1, CFTimeInterval a2)
{
  if (*(a1 + 16) == 1)
  {
    return __AFCConnectionProcessOperations(a1, a2);
  }

  else
  {
    return 3892330507;
  }
}

uint64_t AFCConnectionGetStatus(uint64_t a1)
{
  if (!a1)
  {
    return 3892330503;
  }

  if (*(a1 + 68) == 1)
  {
    return *(a1 + 64);
  }

  return 0;
}

uint64_t AFCConnectionCopyLastErrorInfo(uint64_t a1)
{
  AFCLockLock(*(a1 + 136));
  v2 = *(a1 + 72);
  if (v2)
  {
    CFRetain(*(a1 + 72));
  }

  AFCLockUnlock(*(a1 + 136));
  return v2;
}

uint64_t AFCConnectionSetSecureContext(uint64_t a1, uint64_t a2)
{
  AFCLockLock(*(a1 + 136));
  *(a1 + 208) = a2;
  v4 = *(a1 + 136);

  return AFCLockUnlock(v4);
}

uint64_t AFCConnectionSetIOTimeout(uint64_t a1, uint64_t a2)
{
  AFCLockLock(*(a1 + 136));
  *(a1 + 104) = a2;
  v4 = *(a1 + 136);

  return AFCLockUnlock(v4);
}

uint64_t AFCConnectionSetFatalError(uint64_t a1, uint64_t a2)
{
  AFCLog(1, "Fatal connection error 0x%x", a2);
  AFCLockLock(*(a1 + 136));
  *(a1 + 64) = a2;
  *(a1 + 68) = 1;
  AFCLockUnlock(*(a1 + 136));
  return a2;
}

uint64_t __AFCConnectionGetRequestPath(uint64_t a1, char *__src, char *a3, size_t __size)
{
  v4 = __size;
  if (!*(a1 + 224))
  {
    goto LABEL_4;
  }

  v8 = *(a1 + 1248);
  if (v8 < __size)
  {
    memcpy(a3, (a1 + 224), v8);
    v9 = *(a1 + 1248);
    a3 += v9;
    v4 -= v9;
LABEL_4:
    AFCStringCopy(a3, v4, __src, 0);
    return 1;
  }

  return 0;
}

__CFString *__AFCConnectionCopyDescription(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  AFCLockLock(*(a1 + 136));
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<AFCConnection %p [%p]> {\n", a1, v2);
  CFStringAppendFormat(Mutable, 0, @"  FileDescriptor = %d\n", *(a1 + 56));
  CFStringAppendFormat(Mutable, 0, @"  LastError = %d\n", *(a1 + 64));
  CFStringAppendFormat(Mutable, 0, @"  FatalError = %d\n", *(a1 + 64));
  CFStringAppendFormat(Mutable, 0, @"  MaxOperations = %d\n", *(a1 + 112));
  CFStringAppendFormat(Mutable, 0, @"}");
  AFCLockUnlock(*(a1 + 136));
  return Mutable;
}

uint64_t __AFCProcessFileRefOpen(const void *a1, void *cf)
{
  v4 = cf[11];
  v5 = CFGetAllocator(cf);
  cf[30] = AFCFileDescriptorCreate(v5, a1, *(v4 + 40));
  result = AFCDiscardBodyData(a1, v4);
  if (!result)
  {
    if (cf[30])
    {
      return 0;
    }

    else
    {
      return 3892330499;
    }
  }

  return result;
}

uint64_t __AFCProcessFileRefTell(uint64_t a1, void *cf)
{
  v4 = cf[11];
  valuePtr = *(v4 + 40);
  v5 = CFGetAllocator(cf);
  cf[30] = CFNumberCreate(v5, kCFNumberSInt64Type, &valuePtr);
  result = AFCDiscardBodyData(a1, v4);
  if (!result)
  {
    if (cf[30])
    {
      return 0;
    }

    else
    {
      return 3892330499;
    }
  }

  return result;
}

BOOL AFCCompareAndSwap32(int a1, unsigned int a2, atomic_uint *a3)
{
  v3 = a1;
  atomic_compare_exchange_strong_explicit(a3, &v3, a2, memory_order_relaxed, memory_order_relaxed);
  return v3 == a1;
}

uint64_t __AFCLockRegisterClass()
{
  result = _CFRuntimeRegisterClass();
  __gAFCLockTypeID = result;
  return result;
}

const void *AFCLockCreate()
{
  v6 = *MEMORY[0x29EDCA608];
  v5.__sig = 0;
  *v5.__opaque = 0;
  if (pthread_mutexattr_init(&v5) || (pthread_mutexattr_settype(&v5, 2), pthread_once(&AFCLockGetTypeID_typeIDInit, __AFCLockRegisterClass), (Instance = _CFRuntimeCreateInstance()) == 0))
  {
    pthread_mutexattr_destroy(&v5);
LABEL_7:
    v1 = 0;
    goto LABEL_4;
  }

  v1 = Instance;
  v2 = pthread_mutex_init((Instance + 16), &v5);
  pthread_mutexattr_destroy(&v5);
  if (v2)
  {
    CFRelease(v1);
    goto LABEL_7;
  }

LABEL_4:
  v3 = *MEMORY[0x29EDCA608];
  return v1;
}

uint64_t AFCReadData(uint64_t a1, char *a2, size_t a3)
{
  if (*(a1 + 68) == 1)
  {
    return *(a1 + 64);
  }

  if (!a3)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  v28[0] = AFCConnectionGetIOTimeout(a1);
  v28[1] = 0;
  while (1)
  {
    SocketBlockSize = AFCConnectionGetSocketBlockSize(a1);
    if (SocketBlockSize >= a3 - v7)
    {
      v10 = a3 - v7;
    }

    else
    {
      v10 = SocketBlockSize;
    }

    if (v28[0])
    {
      v11 = v28;
    }

    else
    {
      v11 = 0;
    }

    if (!*(a1 + 208))
    {
      while (1)
      {
        v16 = __WaitForTimeoutOrEvent(a1, 1, v11);
        if (v16)
        {
          return v16;
        }

        v17 = recv(*(a1 + 56), a2, v10, 0);
        if ((v17 & 0x8000000000000000) == 0)
        {
          break;
        }

        v19 = *__error();
        if (v19 != 35 && v19 != 4)
        {
          LODWORD(v17) = 1;
          v21 = 3892330500;
          v22 = 617;
          v23 = "recv";
LABEL_38:
          v4 = __AFCSetErrorResult_3(v17, v19, v21, v18, v22, v23);
          goto LABEL_31;
        }
      }

      if (v17)
      {
        v4 = 0;
        v8 = v17;
        goto LABEL_31;
      }

      v21 = 3892330507;
      v19 = 0xFFFFFFFFLL;
      v22 = 619;
      v23 = "recv connection closed";
      goto LABEL_38;
    }

    AFCLog(5, "%s on ctx %p for %u bytes.", "__SecureRecvWithTimeout", *(a1 + 208), v10);
    if (v10)
    {
      connection = 0;
      v12 = SSLGetConnection(*(a1 + 208), &connection);
      if (v12)
      {
        v24 = v12;
        v25 = 505;
        v26 = "SSLGetConnection";
LABEL_42:
        v14 = __AFCSetErrorResult_3(1, v24, 3892330500, v13, v25, v26);
      }

      else
      {
        AFCLog(5, "%s on ctx %p with fd %d.", "__SecureRecvWithTimeout", *(a1 + 208), connection);
        while (1)
        {
          v14 = __WaitForTimeoutOrEvent(a1, 1, v11);
          if (v14)
          {
            break;
          }

          connection = 0;
          v15 = SSLRead(*(a1 + 208), a2, v10, &connection);
          if (v15 != -9803)
          {
            v24 = v15;
            if (v15 >> 1 == 2147478745)
            {
              v8 = 0;
              v4 = 0;
              connection = 0;
              goto LABEL_30;
            }

            if (!v15)
            {
              v4 = 0;
              v8 = connection;
              goto LABEL_30;
            }

            v25 = 538;
            v26 = "SSLRead";
            goto LABEL_42;
          }

          AFCLog(4, "Reading %lu bytes gets SSL error %d, amount_sent %lu\n", v10, -9803, connection);
          if (connection)
          {
            v4 = 0;
            v8 = connection;
            goto LABEL_30;
          }
        }
      }

      v4 = v14;
    }

    else
    {
      v8 = 0;
      v4 = 0;
    }

LABEL_30:
    AFCLog(5, "%s returned %d.", "__SecureRecvWithTimeout", v4);
LABEL_31:
    if (v4 || !v8)
    {
      break;
    }

    v7 += v8;
    a2 += v8;
    if (v7 >= a3)
    {
      goto LABEL_45;
    }
  }

  if (v4)
  {
    return v4;
  }

LABEL_45:
  if (v7)
  {
    if (v7 < v10)
    {
      v4 = __AFCSetErrorResult_3(1, 0xFFFFFFFFLL, 3892330500, v18, 808, "Read underrun (%d < %d)");
      AFCConnectionSetFatalError(a1, v4);
      return v4;
    }

    return 0;
  }

  return __AFCSetErrorResult_3(0, 0xFFFFFFFFLL, 3892330507, v18, 804, "Read length 0");
}

uint64_t AFCSendData(uint64_t a1, char *a2, unint64_t a3)
{
  if (*(a1 + 68) == 1)
  {
    return *(a1 + 64);
  }

  if (!a3)
  {
    return 0;
  }

  v6 = a2;
  if (!a2)
  {
    return 3892330503;
  }

  v7 = 0;
  v30[0] = AFCConnectionGetIOTimeout(a1);
  v30[1] = 0;
  while (1)
  {
    SocketBlockSize = AFCConnectionGetSocketBlockSize(a1);
    if (SocketBlockSize >= a3 - v7)
    {
      v9 = a3 - v7;
    }

    else
    {
      v9 = SocketBlockSize;
    }

    if (v30[0])
    {
      v10 = v30;
    }

    else
    {
      v10 = 0;
    }

    v11 = *(a1 + 208);
    if (!v11)
    {
      while (1)
      {
        v20 = __WaitForTimeoutOrEvent(a1, 2, v10);
        if (v20)
        {
          return v20;
        }

        v21 = send(*(a1 + 56), v6, v9, 0);
        if ((v21 & 0x8000000000000000) == 0)
        {
          v16 = v21;
          v4 = 0;
          goto LABEL_31;
        }

        v17 = *__error();
        if (v17 != 35 && v17 != 4)
        {
          v4 = __AFCSetErrorResult_3(1, v17, 3892330501, v18, 753, "send");
          goto LABEL_45;
        }
      }
    }

    processed = 0;
    AFCLog(5, "%s on ctx %p for %u bytes.", "__SecureSendWithTimeout", v11, v9);
    if (v9)
    {
      connection = 0;
      v12 = SSLGetConnection(*(a1 + 208), &connection);
      if (v12)
      {
        v22 = v12;
        v24 = 650;
        v25 = "SSLGetConnection";
LABEL_41:
        v14 = __AFCSetErrorResult_3(1, v22, 3892330501, v13, v24, v25);
      }

      else
      {
        AFCLog(5, "%s on ctx %p with fd %d.", "__SecureSendWithTimeout", *(a1 + 208), connection);
        while (1)
        {
          v14 = __WaitForTimeoutOrEvent(a1, 2, v10);
          if (v14)
          {
            break;
          }

          v15 = SSLWrite(*(a1 + 208), v6, v9, &processed);
          if (v15 != -9803)
          {
            v22 = v15;
            if (!v15)
            {
              v4 = 0;
              v16 = processed;
              goto LABEL_30;
            }

            v24 = 676;
            v25 = "SSLWrite";
            goto LABEL_41;
          }

          AFCLog(4, "Writing %lu bytes gets SSL error %d, amount_sent %lu\n", v9, -9803, processed);
          v16 = processed;
          if (processed)
          {
            v4 = 0;
            goto LABEL_30;
          }
        }
      }

      v4 = v14;
      v16 = 0;
    }

    else
    {
      v16 = 0;
      v4 = 3892330503;
    }

LABEL_30:
    AFCLog(5, "%s returned %d.", "__SecureSendWithTimeout", v4);
LABEL_31:
    if (!v16 || v4 != 0)
    {
      break;
    }

    v4 = 0;
    v7 += v16;
    v6 += v16;
    if (v7 >= a3)
    {
      return v4;
    }
  }

LABEL_45:
  if (v4)
  {
    return v4;
  }

  if (v7)
  {
    v27 = __error();
    v4 = __AFCSetErrorResult_3(1, *v27, 3892330501, v28, 864, "Write underrun (%d < %d)");
    AFCConnectionSetFatalError(a1, v4);
    return v4;
  }

  return __AFCSetErrorResult_3(1, 0xFFFFFFFFLL, 3892330507, v26, 862, "Write length 0");
}

uint64_t AFCSetSocketOptions(const void *a1, int a2)
{
  v14 = 1;
  v13[0] = AFCConnectionGetIOTimeout(a1);
  v13[1] = 0;
  if (setsockopt(a2, 6, 1, &v14, 4u) < 0)
  {
    v4 = __error();
    v5 = strerror(*v4);
    AFCLog(5, "Setting TCP_NODELAY on connection %p failed: %s", a1, v5);
  }

  if (fcntl(a2, 4, 4) < 0)
  {
    v6 = __error();
    v7 = strerror(*v6);
    AFCLog(5, "Setting O_NONBLOCK on connection %p failed: %s\n", a1, v7);
  }

  if (setsockopt(a2, 0xFFFF, 4101, v13, 0x10u) < 0)
  {
    v8 = __error();
    v9 = strerror(*v8);
    AFCLog(4, "Setting SO_SNDTIMEO on connection %p failed: %s", a1, v9);
  }

  result = setsockopt(a2, 0xFFFF, 4102, v13, 0x10u);
  if ((result & 0x80000000) != 0)
  {
    v11 = __error();
    v12 = strerror(*v11);
    return AFCLog(4, "Setting SO_RCVTIMEO on connection %p failed: %s", a1, v12);
  }

  return result;
}

BOOL AFCSocketIsDisconnected(int a1)
{
  if (a1 == -1)
  {
    return 1;
  }

  v11 = v1;
  v12 = v2;
  v4 = kqueue();
  if (v4 < 0)
  {
    return 0;
  }

  v5 = v4;
  changelist.ident = a1;
  *&changelist.filter = 2490367;
  memset(&changelist.fflags, 0, 20);
  if (kevent(v4, &changelist, 1, 0, 0, 0))
  {
    close(v5);
    return 0;
  }

  v9.tv_sec = 0;
  v9.tv_nsec = 0;
  v7 = kevent(v5, 0, 0, &changelist, 1, &v9);
  close(v5);
  if (v7 < 0)
  {
    return 0;
  }

  return v7 == 1 && (changelist.flags & 0x8000u) != 0;
}

uint64_t AFCCreateSignalFileDescriptors(int *a1, int *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  *a1 = -1;
  *a2 = -1;
  v7 = 1;
  result = socketpair(1, 1, 0, &v8);
  if (!result)
  {
    if (setsockopt(v8, 0xFFFF, 4130, &v7, 4u) == -1 || (result = setsockopt(v9, 0xFFFF, 4130, &v7, 4u), result == -1))
    {
      close(v8);
      result = close(v9);
    }

    else
    {
      v5 = v9;
      *a1 = v8;
      *a2 = v5;
    }
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AFCGetFilesystemInfo(const char *a1, void *a2, void *a3, void *a4, void *a5)
{
  v16 = *MEMORY[0x29EDCA608];
  memset(&v15, 0, 512);
  if (statfs(a1, &v15))
  {
    v10 = __error();
    result = __AFCSetErrorResult_3(0, *v10, 3892330497, v11, 1029, "statfs");
  }

  else
  {
    f_bsize = v15.f_bsize;
    AFCLog(5, "Filesystem info for '%s': total %llu, free %llu, block size %lu, iosize %lu", a1, v15.f_blocks * v15.f_bsize, v15.f_bavail * v15.f_bsize, v15.f_bsize, v15.f_iosize);
    if (a4)
    {
      *a4 = f_bsize;
    }

    if (a2)
    {
      *a2 = v15.f_blocks * f_bsize;
    }

    if (a3)
    {
      *a3 = v15.f_bavail * f_bsize;
    }

    result = 0;
    if (a5)
    {
      *a5 = v15.f_iosize;
    }
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

CFNumberRef __AFCPlatformInitialize()
{
  __gAFCLogLock = AFCLockCreate();
  v0 = getprogname();
  __gAFCASLClient = asl_open(v0, "com.apple.afc", 2u);
  pthread_key_create(&__gAFCErrorInfoKey, MEMORY[0x29EDB8C90]);
  __AFCLogPreferencesChanged(0);
  v1 = MEMORY[0x29EDCA578];
  notify_register_dispatch("com.apple.ManagedConfiguration.profileListChanged", &gAFCProfileNotificationToken, MEMORY[0x29EDCA578], &__block_literal_global);
  notify_register_dispatch("com.apple.afc.preferencesChanged", &gAFCLogLevelNotificationToken, v1, &__block_literal_global_53);
  result = CFNumberCreate(0, kCFNumberDoubleType, &AFCafcVersionNumber);
  __gAFCVersion = result;
  return result;
}

uint64_t __AFCConditionRegisterClass()
{
  result = _CFRuntimeRegisterClass();
  __gAFCConditionTypeID = result;
  return result;
}

uint64_t AFCConditionCreate()
{
  pthread_once(&AFCConditionGetTypeID_typeIDInit, __AFCConditionRegisterClass);
  Instance = _CFRuntimeCreateInstance();
  v1 = Instance;
  if (Instance)
  {
    if (!pthread_mutex_init((Instance + 16), 0))
    {
      if (!pthread_cond_init((v1 + 80), 0))
      {
        *(v1 + 128) = 0;
        return v1;
      }

      pthread_mutex_destroy((v1 + 16));
    }

    CFRelease(v1);
    return 0;
  }

  return v1;
}

uint64_t __AFCConnectionProcessOperations(uint64_t a1, CFTimeInterval a2)
{
  if (*(a1 + 192))
  {
    return 3892330513;
  }

  Current = CFRunLoopGetCurrent();
  AFCConnectionScheduleWithRunLoop(a1, Current, @"AFCRunLoopMode");
  do
  {
    if (!AFCConnectionIsValid(a1))
    {
      v2 = 0;
      goto LABEL_12;
    }

    v6 = CFRunLoopRunInMode(@"AFCRunLoopMode", a2, 0);
  }

  while (v6 == kCFRunLoopRunHandledSource);
  v7 = -402636788;
  if (v6 != kCFRunLoopRunTimedOut)
  {
    v7 = -402636799;
  }

  if ((v6 - 1) >= 2)
  {
    v2 = v7;
  }

  else
  {
    v2 = 3892330507;
  }

LABEL_12:
  v8 = CFRunLoopGetCurrent();
  AFCConnectionUnscheduleFromRunLoop(a1, v8);
  return v2;
}

const __CFDictionary *__AFCCopyErrorInfoDescription(CFDictionaryRef theDict)
{
  Mutable = theDict;
  if (theDict)
  {
    Count = CFDictionaryGetCount(theDict);
    if (Count && (v3 = Count, (v4 = MEMORY[0x29C289090](0, 16 * Count, 0x80040B8603338, 0)) != 0))
    {
      v5 = v4;
      CFDictionaryGetKeysAndValues(Mutable, v4, &v4[v3]);
      Mutable = CFStringCreateMutable(0, 0);
      if (Mutable && v3 >= 1)
      {
        v6 = v5;
        v7 = v3;
        do
        {
          v8 = *v6;
          CFStringAppendFormat(Mutable, 0, @"%@=%@ ", *v6, v6[v3]);
          ++v6;
          --v7;
        }

        while (v7);
      }

      CFAllocatorDeallocate(0, v5);
    }

    else
    {
      return 0;
    }
  }

  return Mutable;
}

void *AFCCopyAndClearLastErrorInfo()
{
  pthread_once(&__gPlatformInit, __AFCPlatformInitialize);
  v0 = pthread_getspecific(__gAFCErrorInfoKey);
  pthread_setspecific(__gAFCErrorInfoKey, 0);
  return v0;
}

__CFString *__AFCLockCopyDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<AFCLock %p [%p]> {", a1, v2);
  CFStringAppendFormat(Mutable, 0, @"}");
  return Mutable;
}

uint64_t __AFCLogPreferencesChanged(int a1)
{
  keyExistsAndHasValidFormat = 0;
  if (a1)
  {
    AFCLog(1, "Checking for changed log settings");
  }

  CFPreferencesSynchronize(@"com.apple.afc", *MEMORY[0x29EDB8FB0], *MEMORY[0x29EDB8F90]);
  result = CFPreferencesGetAppBooleanValue(@"VerboseLogging", @"com.apple.afc", &keyExistsAndHasValidFormat);
  v3 = result;
  if (a1)
  {
    result = AFCLog(1, "valid %d value %d", keyExistsAndHasValidFormat, result);
  }

  v4 = &unk_2983CCB3F;
  if (keyExistsAndHasValidFormat)
  {
    gAFCVerboseLogEnabled = v3 != 0;
    result = CFPreferencesAppValueIsForced(@"VerboseLogging", @"com.apple.afc");
    if (result)
    {
      v4 = " by profile";
    }
  }

  if (a1)
  {
    if (gAFCVerboseLogEnabled)
    {
      v5 = "enabled";
    }

    else
    {
      v5 = "disabled";
    }

    return AFCLog(1, "Verbose logging %s%s", v5, v4);
  }

  return result;
}

__CFString *__AFCConditionCopyDescription(unsigned __int8 *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<AFCCondition %p [%p]> { Signaled %d", a1, v2, a1[128]);
  CFStringAppendFormat(Mutable, 0, @"}");
  return Mutable;
}

CFStringRef OUTLINED_FUNCTION_0_2(CFStringRef format)
{

  return CFStringCreateWithFormatAndArguments(0, 0, format, v1);
}

CFNumberRef OUTLINED_FUNCTION_1_1(uint64_t a1, uint64_t a2, const void *a3)
{

  return CFNumberCreate(0, kCFNumberIntType, a3);
}

void OUTLINED_FUNCTION_2_1(uint64_t a1, const void *a2)
{

  CFDictionarySetValue(v2, a2, v3);
}

CFStringRef OUTLINED_FUNCTION_3_1(uint64_t a1, uint64_t a2, uint64_t a3, const __CFAllocator *a4)
{

  return CFStringCreateWithCStringNoCopy(0, v4, 0x8000100u, a4);
}

CFURLRef OUTLINED_FUNCTION_4_1(CFIndex bufLen)
{

  return CFURLCreateFromFileSystemRepresentation(0, v1, bufLen, 0);
}

void OUTLINED_FUNCTION_5_1(uint64_t a1, const void *a2)
{

  CFDictionarySetValue(v2, a2, v3);
}

uint64_t AFCDeviceAppendDeviceInfo(uint64_t a1, CFMutableDataRef theData)
{
  v14 = *MEMORY[0x29EDCA608];
  CFDataAppendBytes(theData, "Model", 6);
  pthread_once(&GetModelName_modelInitialized, InitModelName);
  v4 = strlen(gModelName);
  CFDataAppendBytes(theData, gModelName, v4 + 1);
  v11 = 0;
  v12 = 0;
  v10 = 0;
  if (!AFCGetFilesystemInfo((a1 + 224), &v10, &v11, &v12, 0))
  {
    CFDataAppendBytes(theData, "FSTotalBytes", 13);
    snprintf(__str, 0x40uLL, "%llu", v10);
    v5 = strlen(__str);
    CFDataAppendBytes(theData, __str, v5 + 1);
    CFDataAppendBytes(theData, "FSFreeBytes", 12);
    snprintf(__str, 0x40uLL, "%llu", v11);
    v6 = strlen(__str);
    CFDataAppendBytes(theData, __str, v6 + 1);
    CFDataAppendBytes(theData, "FSBlockSize", 12);
    snprintf(__str, 0x40uLL, "%lu", v12);
    v7 = strlen(__str);
    CFDataAppendBytes(theData, __str, v7 + 1);
  }

  v8 = *MEMORY[0x29EDCA608];
  return 0;
}

char *InitModelName()
{
  v3 = 127;
  result = sysctlbyname("hw.machine", gModelName, &v3, 0, 0);
  if ((result & 0x80000000) != 0)
  {
    v2 = __error();
    AFCLog(1, "Getting model name failed: %d\n", *v2);
    result = AFCStringCopy(gModelName, 0x80uLL, "unknown", 0);
    v1 = 7u;
  }

  else
  {
    v1 = v3;
  }

  gModelName[v1] = 0;
  return result;
}

CFTypeRef AFCServerContextSetRootPath(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 64);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 64) = cf;

  return CFRetain(cf);
}

char *AFCCreateServerContext()
{
  pthread_once(&gAFCServerOnce, __AFCServerInit);
  v0 = 40 * gAFCMaxOpenFileCount + 80;
  v1 = malloc_type_malloc(v0, 0x10E004011F7165CuLL);
  v2 = v1;
  if (v1)
  {
    bzero(v1, v0);
    if (gAFCMaxOpenFileCount)
    {
      v3 = 0;
      v4 = (v2 + 104);
      do
      {
        *(v4 - 6) = -1;
        v5 = dispatch_queue_create("com.apple.afc.fileio", 0);
        *v4 = v5;
        v4 += 5;
        global_queue = dispatch_get_global_queue(gAFCIOPriority, 0);
        dispatch_set_target_queue(v5, global_queue);
        ++v3;
      }

      while (v3 < gAFCMaxOpenFileCount);
    }

    *(v2 + 7) = dispatch_group_create();
    *(v2 + 6) = dispatch_semaphore_create(gAFCMaxIORequests);
    v7 = dispatch_queue_create("com.apple.afc.buffercache", 0);
    *(v2 + 3) = v7;
    v8 = dispatch_source_create(MEMORY[0x29EDCA5D0], 0, 0, v7);
    *(v2 + 4) = v8;
    handler[0] = MEMORY[0x29EDCA5F8];
    handler[1] = 0x40000000;
    handler[2] = __AFCCreateServerContext_block_invoke;
    handler[3] = &__block_descriptor_tmp_0;
    handler[4] = v2;
    dispatch_source_set_event_handler(v8, handler);
    dispatch_resume(*(v2 + 4));
  }

  return v2;
}

uint64_t __AFCServerInit()
{
  v5 = 0;
  v4 = 8;
  if (sysctlbyname("kern.maxvnodes", &v5, &v4, 0, 0))
  {
    v0 = __error();
    AFCLog(1, "sysctl kern.maxvnodes failed: %d\n", *v0);
  }

  if (getdtablesize() >= 32)
  {
    v1 = getdtablesize() - 16;
  }

  else
  {
    v1 = 16;
  }

  v2 = v5 >> 4;
  if (v5 >> 4 >= v1)
  {
    v2 = v1;
  }

  if (v5)
  {
    v1 = v2;
  }

  gAFCMaxOpenFileCount = v1;
  return AFCLog(5, "Max open files: %u\n", v1);
}

void __AFCCreateServerContext_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 40))
  {
    __AFCFlushServerBuffers(v1);
  }
}

uint64_t AFCInitServerConnection(uint64_t a1)
{
  Context = AFCConnectionGetContext(a1);
  v3 = gAFCFSBlocksizeDefault;
  if (!gAFCFSBlocksizeDefault)
  {
    v7 = 0x100000;
    v4 = AFCGetFilesystemInfo((a1 + 224), 0, 0, 0, &v7);
    v3 = v7;
    if (v4)
    {
      v3 = 0x100000;
    }
  }

  *(a1 + 88) = v3;
  v5 = gAFCFSBlocksizeMax;
  if (v3 > gAFCFSBlocksizeMax)
  {
    *(a1 + 88) = gAFCFSBlocksizeMax;
    LODWORD(v3) = v5;
  }

  result = AFCLog(5, "Setting server FS blocksize to %u\n", v3);
  *(Context + 8) = *(a1 + 88);
  return result;
}

uint64_t AFCProcessServerPacket(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v368 = *MEMORY[0x29EDCA608];
  AFCLog(5, "Header packet type %d", *(a2 + 32));
  AFCLog(5, "Header len %llu", *(v2 + 16));
  AFCLog(5, "Server received packet type 0x%X\n", *(v2 + 32));
  switch(*(v2 + 32))
  {
    case 1:
      AFCLog(5, "Processing status packet\n");
      v77 = AFCDiscardBodyData(a1, v2);
      AFCSendStatus(a1, v2, v77);
      st_dev = 0;
      goto LABEL_443;
    case 3:
      if (__AFCConnectionGetRequestPath(a1, (v2 + 40), &block, 0x400uLL))
      {
        AFCLog(5, "Read directory '%s'\n", &block);
        v89 = AFCDiscardBodyData(a1, v2);
        if (v89)
        {
          st_dev = v89;
          v95 = 0;
          goto LABEL_358;
        }

        v90 = opendir(&block);
        if (v90)
        {
          v91 = v90;
          v92 = readdir(v90);
          if (v92)
          {
            LODWORD(v93) = 0;
            do
            {
              AFCLog(5, "dir entry '%s' (%d)\n", (v92 + 21), *(v92 + 18));
              v93 = v93 + *(v92 + 18) + 1;
              v92 = readdir(v91);
            }

            while (v92);
            rewinddir(v91);
            v95 = malloc_type_malloc(v93, 0x1BD90B9CuLL);
            if (v95)
            {
              v96 = readdir(v91);
              if (v96)
              {
                v97 = v96;
                v98 = 0;
                v99 = v95;
                do
                {
                  AFCLog(5, "dir entry '%s' (%d)\n", v97->d_name, v97->d_namlen);
                  if (v98 + v97->d_namlen > v93)
                  {
                    break;
                  }

                  strlcpy(v99, v97->d_name, (v93 - v98));
                  v100 = v97->d_namlen + 1;
                  v98 += v100;
                  v99 += v100;
                  v97 = readdir(v91);
                }

                while (v97);
                st_dev = 0;
                v92 = v98;
                goto LABEL_356;
              }

              st_dev = 0;
            }

            else
            {
              st_dev = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, 3892330499, v94, 1001, "malloc");
            }

            v92 = 0;
          }

          else
          {
            rewinddir(v91);
            st_dev = 0;
            v95 = 0;
          }

LABEL_356:
          closedir(v91);
          goto LABEL_357;
        }

        AFCProcessServerPacket_cold_14(&v367);
        v95 = 0;
        v92 = 0;
        st_dev = v367.st_dev;
      }

      else
      {
        st_dev = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, 3892330498, v88, 980, "AFCConnectionGetRequestPath");
        v95 = 0;
        v92 = 0;
      }

LABEL_357:
      if (!st_dev)
      {
        AFCSendDataPacket(a1, v2, v95, v92);
LABEL_360:
        if (v95)
        {
          free(v95);
        }

        goto LABEL_443;
      }

LABEL_358:
      AFCSendStatus(a1, v2, st_dev);
      goto LABEL_360;
    case 5:
    case 6:
    case 0xCLL:
      AFCProcessObsoletePacket(a1, v2);
      st_dev = 3892330511;
      goto LABEL_443;
    case 7:
      *&v367.st_dev = 0;
      if (!__AFCConnectionGetRequestPath(a1, (v2 + 48), &block, 0x400uLL))
      {
        v265 = 3892330498;
        v266 = "AFCConnectionGetRequestPath";
        v267 = 1;
        v264 = 0xFFFFFFFFLL;
        v268 = 1295;
        goto LABEL_326;
      }

      v79 = AFCDiscardBodyData(a1, v2);
      if (v79)
      {
        goto LABEL_327;
      }

      v79 = AFCCheckForSpecialFile(&block, (v2 + 48));
      if (v79)
      {
        goto LABEL_327;
      }

      AFCLog(5, "Processing truncate '%s' %lld\n", &block, *(v2 + 40));
      if (*(a1 + 1268) == 1)
      {
        v79 = __AFCCoordinateFileActivity(&block, 8, &v367);
        if (v79)
        {
          goto LABEL_327;
        }
      }

      if ((truncate(&block, *(v2 + 40)) & 0x80000000) == 0)
      {
        LODWORD(st_dev) = 0;
        goto LABEL_328;
      }

      v264 = *__error();
      v265 = 3892330497;
      v266 = "truncate";
      v267 = 0;
      v268 = 1312;
      goto LABEL_326;
    case 8:
      *&v367.st_dev = 0;
      if (__AFCConnectionGetRequestPath(a1, (v2 + 40), &block, 0x400uLL))
      {
        AFCLog(5, "Processing remove path '%s'\n", &block);
        v79 = AFCDiscardBodyData(a1, v2);
        if (!v79 && (*(a1 + 1268) != 1 || (v79 = __AFCCoordinateFileActivity(&block, 1, &v367)) == 0))
        {
          v79 = RemovePath(&block);
        }
      }

      else
      {
        v265 = 3892330498;
        v266 = "AFCConnectionGetRequestPath";
        v267 = 1;
        v264 = 0xFFFFFFFFLL;
        v268 = 1363;
LABEL_326:
        v79 = __AFCSetErrorResult_4(v267, v264, v265, v78, v268, v266);
      }

LABEL_327:
      LODWORD(st_dev) = v79;
LABEL_328:
      v269 = *&v367.st_dev;
      if (*&v367.st_dev)
      {
        (*(*&v367.st_dev + 16))(*&v367.st_dev);
        _Block_release(v269);
      }

LABEL_330:
      v270 = AFCSendStatus(a1, v2, st_dev);
      if (st_dev)
      {
        st_dev = st_dev;
      }

      else
      {
        st_dev = v270;
      }

      goto LABEL_443;
    case 9:
      memset(&valuePtr, 0, sizeof(valuePtr));
      *__str = 0;
      if (!__AFCConnectionGetRequestPath(a1, (v2 + 40), &v367, 0x400uLL))
      {
        v102 = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, 3892330498, v101, 1561, "AFCConnectionGetRequestPath");
        goto LABEL_487;
      }

      AFCLog(5, "Processing make directory '%s'\n", &v367);
      v102 = AFCDiscardBodyData(a1, v2);
      if (v102)
      {
LABEL_487:
        v114 = v102;
        goto LABEL_421;
      }

      v103 = strlen((a1 + 224));
      v104 = *(&v367.st_dev + v103) == 47;
      if (*(a1 + 1268) == 1)
      {
        v105 = __AFCCoordinateFileActivity(&v367, 8, __str);
        if (v105)
        {
          goto LABEL_394;
        }
      }

      v106 = v103 + v104;
      v107 = -1;
      while (1)
      {
        if (*(&v367.st_dev + v106))
        {
          if (*(&v367.st_dev + v106) != 47)
          {
            goto LABEL_146;
          }

          v108 = 0;
        }

        else
        {
          v108 = 1;
        }

        *(&v367.st_dev + v106) = 0;
        AFCLog(5, "Make intermediate dir '%s'\n", &v367);
        if (mkdir(&v367, 0x1EDu) < 0)
        {
          break;
        }

        if ((*(a1 + 1269) & 1) == 0)
        {
          v109 = open(&v367, 1048832);
          if (v109 < 0)
          {
            v294 = *__error();
            v295 = __error();
            strerror(*v295);
            v105 = __AFCSetErrorResult_4(1, v294, 3892330519, v296, 1607, "Failed to open %s : %s");
LABEL_394:
            v114 = v105;
            goto LABEL_421;
          }

          v107 = v109;
          if (fcntl(v109, 64, 4))
          {
            v110 = *__error();
            v111 = *__error();
            v112 = __error();
            strerror(*v112);
            v114 = __AFCSetErrorResult_4(1, v110, 3892330519, v113, 1612, "Failed to setclass(%d) on directory %s: (%d) %s");
            if (*__error() != 45)
            {
              goto LABEL_420;
            }

            memset(&block, 0, 512);
            if (fstatfs(v107, &block) < 0)
            {
              v313 = *__error();
              v314 = __error();
              strerror(*v314);
              v114 = __AFCSetErrorResult_4(1, v313, 3892330519, v315, 1621, "Failed fstatfs on directory %s: %s");
              goto LABEL_420;
            }

            if ((block.f_flags & 0x80) != 0)
            {
              AFCLog(3, "The path %s supports content protection, so this is an error", &v367);
              goto LABEL_420;
            }

            AFCLog(3, "The path %s doesn't allow content protection, so this is not an error", &v367);
          }
        }

LABEL_144:
        if (v108)
        {
          v114 = 0;
          goto LABEL_319;
        }

        *(&v367.st_dev + v106) = 47;
LABEL_146:
        ++v106;
      }

      if (*__error() != 21 && *__error() != 17)
      {
        v309 = *__error();
        v310 = 3892330497;
        v311 = "mkdir %p";
        v312 = 1598;
        goto LABEL_417;
      }

      if (stat(&v367, &valuePtr))
      {
        v309 = *__error();
        v310 = 3892330497;
        v311 = "stat %p";
        v312 = 1592;
        goto LABEL_417;
      }

      if ((valuePtr.st_mode & 0xF000) == 0x4000)
      {
        goto LABEL_144;
      }

      v310 = 3892330512;
      v311 = &v367;
      v309 = 0xFFFFFFFFLL;
      v312 = 1596;
LABEL_417:
      v114 = __AFCSetErrorResult_4(1, v309, v310, v115, v312, v311);
LABEL_319:
      if (v107 < 0)
      {
        goto LABEL_421;
      }

LABEL_420:
      close(v107);
LABEL_421:
      v316 = *__str;
      if (*__str)
      {
        (*(*__str + 16))(*__str);
        _Block_release(v316);
      }

      v317 = AFCSendStatus(a1, v2, v114);
      if (v114)
      {
        st_dev = v114;
      }

      else
      {
        st_dev = v317;
      }

LABEL_443:
      v321 = *MEMORY[0x29EDCA608];
      return st_dev;
    case 0xALL:
      memset(&valuePtr, 0, sizeof(valuePtr));
      if (__AFCConnectionGetRequestPath(a1, (v2 + 40), &block, 0x400uLL))
      {
        AFCLog(5, "AFCProcessGetFileInfo(%s)\n", &block);
        if (__AFCPathDepthCheck((v2 + 40)))
        {
          v7 = AFCDiscardBodyData(a1, v2);
          if (v7)
          {
            goto LABEL_467;
          }

          AFCLog(5, "lstat(%s)", &block);
          Mutable = CFDataCreateMutable(0, 0);
          if (Mutable)
          {
            if (!lstat(&block, &valuePtr))
            {
              CFDataAppendBytes(Mutable, "st_size", 8);
              snprintf(__str, 0x80uLL, "%lld", valuePtr.st_size);
              v191 = strlen(__str);
              CFDataAppendBytes(Mutable, __str, v191 + 1);
              CFDataAppendBytes(Mutable, "st_blocks", 10);
              snprintf(__str, 0x80uLL, "%lld", valuePtr.st_blocks);
              v192 = strlen(__str);
              CFDataAppendBytes(Mutable, __str, v192 + 1);
              CFDataAppendBytes(Mutable, "st_nlink", 9);
              snprintf(__str, 0x80uLL, "%d", valuePtr.st_nlink);
              v193 = strlen(__str);
              CFDataAppendBytes(Mutable, __str, v193 + 1);
              CFDataAppendBytes(Mutable, "st_ifmt", 8);
              v194 = (valuePtr.st_mode + 24576) >> 12;
              v195 = "S_IFREG";
              if (v194 > 7)
              {
                v196 = "S_IFCHR";
                if (v194 == 10)
                {
                  v195 = "S_IFDIR";
                }

                if (v194 == 12)
                {
                  v195 = "S_IFBLK";
                }

                v197 = v194 == 8;
              }

              else
              {
                if (!((valuePtr.st_mode + 24576) >> 12))
                {
                  CFDataAppendBytes(Mutable, "S_IFLNK", 8);
                  v297 = readlink(&block, &v367, 0x400uLL);
                  if (v297 < 0)
                  {
                    goto LABEL_317;
                  }

                  *(&v367.st_dev + v297) = 0;
                  CFDataAppendBytes(Mutable, "LinkTarget", 11);
                  v298 = strlen(&v367);
                  v260 = &v367;
                  v258 = v298 + 1;
                  v259 = Mutable;
LABEL_316:
                  CFDataAppendBytes(v259, v260, v258);
LABEL_317:
                  CFDataAppendBytes(Mutable, "st_mtime", 9);
                  snprintf(__str, 0x80uLL, "%llu", valuePtr.st_mtimespec.tv_nsec + 1000000000 * valuePtr.st_mtimespec.tv_sec);
                  v261 = strlen(__str);
                  CFDataAppendBytes(Mutable, __str, v261 + 1);
                  CFDataAppendBytes(Mutable, "st_birthtime", 13);
                  snprintf(__str, 0x80uLL, "%llu", valuePtr.st_birthtimespec.tv_nsec + 1000000000 * valuePtr.st_birthtimespec.tv_sec);
                  v262 = strlen(__str);
                  CFDataAppendBytes(Mutable, __str, v262 + 1);
                  goto LABEL_406;
                }

                v196 = "S_IFSOCK";
                if (v194 == 7)
                {
                  v195 = "S_IFIFO";
                }

                v197 = v194 == 2;
              }

              if (v197)
              {
                v257 = v196;
              }

              else
              {
                v257 = v195;
              }

              v258 = strlen(v257) + 1;
              v259 = Mutable;
              v260 = v257;
              goto LABEL_316;
            }

            AFCProcessServerPacket_cold_15(&v367);
            st_dev = v367.st_dev;
          }

          else
          {
            st_dev = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, 3892330499, v190, 1070, "CFDataCreateMutable");
          }

LABEL_404:
          if (!st_dev)
          {
LABEL_406:
            AFCLog(5, "Sending data buffer\n");
            BytePtr = CFDataGetBytePtr(Mutable);
            Length = CFDataGetLength(Mutable);
            AFCSendDataPacket(a1, v2, BytePtr, Length);
            st_dev = 0;
            goto LABEL_407;
          }

LABEL_405:
          AFCSendStatus(a1, v2, st_dev);
LABEL_407:
          if (!Mutable)
          {
            goto LABEL_443;
          }

          v215 = Mutable;
LABEL_409:
          CFRelease(v215);
          goto LABEL_443;
        }

        v346 = "Request path is outside document root";
        v347 = 0;
        v345 = 3892330503;
        v348 = 1062;
      }

      else
      {
        v345 = 3892330498;
        v346 = "AFCConnectionGetRequestPath";
        v347 = 1;
        v348 = 1054;
      }

      st_dev = __AFCSetErrorResult_4(v347, 0xFFFFFFFFLL, v345, v189, v348, v346);
      Mutable = 0;
      goto LABEL_404;
    case 0xBLL:
      AFCLog(5, "Processing device info packet\n");
      v134 = AFCDiscardBodyData(a1, v2);
      if (v134)
      {
        st_dev = v134;
        v136 = 0;
      }

      else
      {
        v136 = CFDataCreateMutable(0, 0);
        if (v136)
        {
          v137 = fopen("/Library/Preferences/SystemConfiguration/com.apple.afc.DeviceInfo.plist", "r");
          if (v137)
          {
            v138 = v137;
            AFCLog(5, "Found info plist file.\n");
            v139 = feof(v138);
            AFCLog(5, "feof %d\n", v139);
            if (feof(v138))
            {
              goto LABEL_411;
            }

            v140 = "got line: '%s'\n";
            v141 = MEMORY[0x29EDCA600];
            theData = v136;
            while (1)
            {
              v142 = fgets(&block, 128, v138);
              if (!v142)
              {
                AFCLog(5, "no more lines\n");
LABEL_411:
                AFCLog(5, "Sending data buffer\n");
                v307 = CFDataGetBytePtr(v136);
                v308 = CFDataGetLength(v136);
                AFCSendDataPacket(a1, v2, v307, v308);
                st_dev = 0;
LABEL_412:
                if (v136)
                {
                  CFRelease(v136);
                }

                if (v138)
                {
                  fclose(v138);
                }

                goto LABEL_443;
              }

              v143 = v142;
              AFCLog(5, v140, v142);
              v144 = *v143;
              if (!*v143)
              {
                goto LABEL_180;
              }

              if (v144 != 35)
              {
                break;
              }

              AFCLog(5, "Comment line\n");
LABEL_205:
              if (feof(v138))
              {
                goto LABEL_411;
              }
            }

            do
            {
              if ((v144 & 0x80) != 0)
              {
                if (!__maskrune(v144, 0x4000uLL))
                {
                  break;
                }
              }

              else if ((*(v141 + 4 * v144 + 60) & 0x4000) == 0)
              {
                break;
              }

              v145 = *++v143;
              LOBYTE(v144) = v145;
            }

            while (v145);
LABEL_180:
            for (i = v143; ; ++i)
            {
              if (!*i)
              {
                goto LABEL_205;
              }

              if (*i == 61)
              {
                break;
              }
            }

            v147 = i;
            while (1)
            {
              *v147-- = 0;
              if (v147 <= &block)
              {
                break;
              }

              v148 = *v147;
              if ((v148 & 0x80000000) != 0)
              {
                if (!__maskrune(v148, 0x4000uLL))
                {
                  break;
                }
              }

              else if ((*(v141 + 4 * v148 + 60) & 0x4000) == 0)
              {
                break;
              }
            }

            v149 = v140;
            v150 = v2;
            v151 = a1;
            AFCLog(5, "Key: '%s'\n", v143);
            while (1)
            {
              v152 = i;
              v154 = *++i;
              v153 = v154;
              if (!v154)
              {
                break;
              }

              if ((v153 & 0x80000000) != 0)
              {
                if (!__maskrune(v153, 0x4000uLL))
                {
                  break;
                }
              }

              else if ((*(v141 + 4 * v153 + 60) & 0x4000) == 0)
              {
                break;
              }
            }

            v155 = 0;
            v156 = v152;
            v157 = 2;
            do
            {
              v158 = v157;
              v159 = v156;
              v160 = v152[++v155];
              ++v157;
              ++v156;
            }

            while (v160);
            a1 = v151;
            v2 = v150;
            v140 = v149;
            if (v155 >= 3)
            {
              do
              {
                v161 = *v159;
                if ((v161 & 0x80000000) != 0)
                {
                  if (!__maskrune(v161, 0x4000uLL))
                  {
                    break;
                  }
                }

                else if ((*(v141 + 4 * v161 + 60) & 0x4000) == 0)
                {
                  break;
                }

                *v159-- = 0;
                --v158;
              }

              while (v158 > 3);
            }

            AFCLog(5, "Value: '%s'\n", i);
            v162 = strlen(v143);
            v136 = theData;
            CFDataAppendBytes(theData, v143, v162 + 1);
            v163 = strlen(i);
            CFDataAppendBytes(theData, i, v163 + 1);
            goto LABEL_205;
          }

          AFCLog(5, "No file found\n");
          appended = AFCDeviceAppendDeviceInfo(a1, v136);
        }

        else
        {
          appended = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, 3892330499, v135, 1162, "CFDataCreateMutable");
        }

        st_dev = appended;
        if (!appended)
        {
          v138 = 0;
          goto LABEL_411;
        }
      }

      AFCSendStatus(a1, v2, st_dev);
      v138 = 0;
      goto LABEL_412;
    case 0xDLL:
      Context = AFCConnectionGetContext(a1);
      v361 = 0;
      memset(&valuePtr, 0, sizeof(valuePtr));
      if (__AFCConnectionGetRequestPath(a1, (v2 + 48), &block, 0x400uLL))
      {
        AFCLog(5, "Processing FileRefOpen packet\n");
        if (Context)
        {
          v57 = AFCDiscardBodyData(a1, v2);
          if (v57)
          {
            st_dev = v57;
            v61 = 0;
            goto LABEL_439;
          }

          if (gAFCMaxOpenFileCount)
          {
            v59 = 0;
            v60 = Context + 80;
            while (*v60 != -1)
            {
              ++v59;
              v60 += 40;
              if (gAFCMaxOpenFileCount == v59)
              {
                goto LABEL_67;
              }
            }

            if ((v59 & 0x8000000000000000) == 0)
            {
              v273 = *(v2 + 40);
              AFCLog(5, "AFCProcessFileRefOpen(%s) mode %d\n", &block, v273);
              if ((v273 - 1) >= 7)
              {
                v284 = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, 3892330503, v274, 2027, "Invalid file mode %d");
                v61 = 0;
                if (v284)
                {
                  st_dev = v284;
                  goto LABEL_439;
                }

                v275 = a1;
              }

              else
              {
                v275 = a1;
                v61 = dword_2983CB660[v273 - 1];
              }

              if (!gAllowSpecialFiles)
              {
                v61 |= 0x100u;
              }

              v285 = AFCCheckForSpecialFile(&block, (v2 + 48));
              if (v285)
              {
                st_dev = v285;
                v61 = 0;
                goto LABEL_457;
              }

              if (v275[1268] == 1 && (!v61 ? (v286 = 1) : (v286 = 8), v287 = __AFCCoordinateFileActivity(&block, v286, &v361), v287))
              {
                st_dev = v287;
                v61 = 0;
              }

              else
              {
                if (v275[1269] == 1)
                {
                  v288 = open(&block, v61, 420);
                }

                else
                {
                  v288 = open_dprotected_np(&block, v61, 4, 0, 420);
                }

                v61 = v288;
                if (v288 == -1)
                {
                  AFCProcessServerPacket_cold_8(&v367);
                  st_dev = v367.st_dev;
                  v61 = -1;
                  goto LABEL_457;
                }

                if (v288 < 0)
                {
                  st_dev = 3892330503;
                  AFCProcessServerPacket_cold_13();
                }

                else
                {
                  if (gAllowSpecialFiles)
                  {
LABEL_381:
                    if (fstat(v61, &valuePtr) != -1)
                    {
                      a1 = v275;
                      if (valuePtr.st_nlink != 1)
                      {
                        v299 = "Failed open operation as there are additional hard links (%d) to the file being opened.";
                        v300 = 2067;
LABEL_437:
                        st_dev = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, 1, v290, v300, v299);
                        goto LABEL_438;
                      }

                      if (fcntl(v61, 50, &v367) != -1)
                      {
                        if (__AFCHasPrefix(&v367, v275 + 224))
                        {
                          AFCLog(5, "Setting file descriptor index %d to %d\n", v59, v61);
                          *v60 = v61;
                          *(v60 + 8) = 0;
                          if (fcntl(v61, 76, 1) < 0)
                          {
                            v291 = __error();
                            AFCLog(5, "F_SINGLE_WRITER failed (%d)!\n", *v291);
                          }

                          if (fcntl(v61, 48, 1) < 0)
                          {
                            v292 = __error();
                            AFCLog(5, "F_NOCACHE failed (%d)!\n", *v292);
                          }

                          if (v273 == 7 && fcntl(v61, 68, 1) < 0)
                          {
                            v293 = __error();
                            AFCLog(5, "F_SETSTATICCONTENT failed (%d)!\n", *v293);
                          }

                          *(v60 + 16) = 0;
                          goto LABEL_444;
                        }

                        v299 = "Path obtained by fcntl (%s) doesn't have the correct prefix: %s.";
                        v300 = 2078;
                        goto LABEL_437;
                      }

                      AFCProcessServerPacket_cold_9(__str);
                      st_dev = *__str;
LABEL_438:
                      if (!st_dev)
                      {
LABEL_444:
                        v363 = 0u;
                        v364 = 0u;
                        *__str = 0u;
                        v322 = Context + 40 * v59;
                        AFCLog(5, "Success, returning ref %d = fd %d\n", v59, *(v322 + 80));
                        AFCHeaderInit(__str, 14, 48, 0, v2);
                        *(&v364 + 1) = v59 + 1;
                        *(v322 + 112) = v361;
                        v240 = AFCSendHeader(a1, __str);
                        goto LABEL_287;
                      }

LABEL_439:
                      AFCLog(5, "sending status %d\n", st_dev);
                      AFCSendStatus(a1, v2, st_dev);
                      v320 = v361;
                      if (v361)
                      {
                        v361[2](v361);
                        _Block_release(v320);
                      }

                      if (v61 != -1)
                      {
                        close(v61);
                      }

                      goto LABEL_443;
                    }

                    AFCProcessServerPacket_cold_10(&v367);
                    st_dev = v367.st_dev;
LABEL_457:
                    a1 = v275;
                    goto LABEL_438;
                  }

                  memset(&v367, 0, sizeof(v367));
                  if (fstat(v288, &v367))
                  {
                    AFCProcessServerPacket_cold_11();
                    st_dev = 23;
                  }

                  else
                  {
                    v289 = v367.st_mode & 0xF000;
                    if (v289 == 0x4000 || v289 == 0x8000)
                    {
                      goto LABEL_381;
                    }

                    AFCProcessServerPacket_cold_12();
                    st_dev = 3892330506;
                  }
                }
              }

              a1 = v275;
              goto LABEL_439;
            }
          }

          else
          {
LABEL_67:
            v59 = -1;
          }

          st_dev = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, 3892330499, v58, 2000, "No file slots");
          v61 = 0;
          goto LABEL_438;
        }

        v336 = 3892330499;
        v337 = "No server context";
        v338 = 1994;
      }

      else
      {
        v336 = 3892330498;
        v337 = "AFCConnectionGetRequestPath";
        v338 = 1990;
      }

      st_dev = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, v336, v56, v338, v337);
      v61 = 0;
      v59 = 0;
      goto LABEL_438;
    case 0xFLL:
      v333 = *MEMORY[0x29EDCA608];
      v324 = a1;
      v325 = v2;
      v326 = 0;
      goto LABEL_452;
    case 0x10:
      v198 = *MEMORY[0x29EDCA608];
      v40 = a1;
      v41 = v2;
      v42 = 0;
      goto LABEL_238;
    case 0x11:
      *&v367.st_dev = 0;
      v367.st_ino = &v367;
      *&v367.st_uid = 0x2000000000;
      v367.st_rdev = 0;
      v62 = AFCConnectionGetContext(a1);
      if (v62)
      {
        v64 = v62;
        v65 = AFCDiscardBodyData(a1, v2);
        *(v367.st_ino + 24) = v65;
        if (v65)
        {
          goto LABEL_464;
        }

        v66 = (*(v2 + 40) - 1);
        AFCLog(5, "Processing FileRefSeek ref %d offset %qd whence %d\n", *(v2 + 40) - 1, *(v2 + 56), *(v2 + 48));
        if (gAFCMaxOpenFileCount > v66)
        {
          v68 = v64 + 40 * v66;
          v71 = *(v68 + 80);
          v70 = v68 + 80;
          v69 = v71;
          if (v71 != -1)
          {
            v72 = __AFCAllowedToOperateOnFile(v69, (a1 + 224), v67, v63);
            st_ino = v367.st_ino;
            *(v367.st_ino + 24) = v72;
            if (v72)
            {
              st_dev = 1;
              goto LABEL_526;
            }

            *(st_ino + 24) = 0;
            v75 = *(v2 + 48);
            if (v75 < 3)
            {
LABEL_77:
              v76 = *(v70 + 24);
              *&block.f_bsize = MEMORY[0x29EDCA5F8];
              block.f_blocks = 0x40000000;
              block.f_bfree = __AFCProcessFileRefSeekPacket_block_invoke;
              block.f_bavail = &unk_29EE96648;
              block.f_ffree = v64;
              block.f_fsid = v2;
              block.f_owner = v66;
              block.f_type = v75;
              block.f_files = &v367;
              dispatch_sync(v76, &block);
              goto LABEL_213;
            }

            v65 = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, 3892330503, v73, 2498, "Invalid whence argument");
            *(v367.st_ino + 24) = v65;
            if (!v65)
            {
              LODWORD(v75) = 0;
              goto LABEL_77;
            }

LABEL_464:
            st_dev = v65;
LABEL_526:
            AFCSendStatus(a1, v2, st_dev);
LABEL_217:
            *(v367.st_ino + 24) = st_dev;
LABEL_337:
            p_valuePtr = &v367;
LABEL_338:
            _Block_object_dispose(p_valuePtr, 8);
            goto LABEL_443;
          }
        }

        v340 = "Invalid file ref";
        v339 = 3892330503;
        v341 = 2480;
      }

      else
      {
        v339 = 3892330499;
        v340 = "No server context";
        v341 = 2471;
      }

      LODWORD(st_dev) = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, v339, v63, v341, v340);
      *(v367.st_ino + 24) = st_dev;
LABEL_214:
      v171 = AFCSendStatus(a1, v2, st_dev);
      if (st_dev)
      {
        st_dev = st_dev;
      }

      else
      {
        st_dev = v171;
      }

      goto LABEL_217;
    case 0x12:
      *&valuePtr.st_dev = 0;
      valuePtr.st_ino = &valuePtr;
      *&valuePtr.st_uid = 0x2000000000;
      valuePtr.st_rdev = -402636799;
      v216 = AFCConnectionGetContext(a1);
      *__str = 0;
      *&__str[8] = __str;
      v363 = 0x2000000000uLL;
      AFCLog(5, "Processing FileRefTell packet\n");
      if (v216)
      {
        v218 = AFCDiscardBodyData(a1, v2);
        *(valuePtr.st_ino + 24) = v218;
        if (v218)
        {
          st_dev = v218;
          goto LABEL_261;
        }

        v220 = (*(v2 + 40) - 1);
        if (gAFCMaxOpenFileCount > v220)
        {
          v221 = v216 + 40 * v220;
          v224 = *(v221 + 80);
          v223 = v221 + 80;
          v222 = v224;
          if (v224 != -1)
          {
            v225 = __AFCAllowedToOperateOnFile(v222, (a1 + 224), v219, v217);
            *(valuePtr.st_ino + 24) = v225;
            if (v225)
            {
              st_dev = 1;
              goto LABEL_261;
            }

            v226 = *(v223 + 24);
            *&block.f_bsize = MEMORY[0x29EDCA5F8];
            block.f_blocks = 0x40000000;
            block.f_bfree = __AFCProcessFileRefTellPacket_block_invoke;
            block.f_bavail = &unk_29EE96670;
            block.f_owner = v220;
            block.f_files = __str;
            block.f_ffree = &valuePtr;
            block.f_fsid = v216;
            dispatch_sync(v226, &block);
            st_dev = *(valuePtr.st_ino + 24);
            if (st_dev)
            {
LABEL_261:
              AFCSendStatus(a1, v2, st_dev);
              *(valuePtr.st_ino + 24) = st_dev;
              goto LABEL_515;
            }

LABEL_514:
            memset(&v367, 0, 48);
            AFCHeaderInit(&v367, 19, 48, 0, v2);
            v367.st_atimespec.tv_nsec = *(*&__str[8] + 24);
            v352 = AFCSendHeader(a1, &v367);
            *(valuePtr.st_ino + 24) = v352;
            st_dev = v352;
LABEL_515:
            _Block_object_dispose(__str, 8);
            p_valuePtr = &valuePtr;
            goto LABEL_338;
          }
        }

        v350 = "Invalid file ref";
        v349 = 3892330503;
        v351 = 2540;
      }

      else
      {
        v349 = 3892330499;
        v350 = "No server context";
        v351 = 2533;
      }

      st_dev = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, v349, v217, v351, v350);
      *(valuePtr.st_ino + 24) = st_dev;
      if (st_dev)
      {
        goto LABEL_261;
      }

      goto LABEL_514;
    case 0x14:
      *&v367.st_dev = 0;
      v367.st_ino = &v367;
      *&v367.st_uid = 0x2000000000;
      v367.st_rdev = 0;
      v164 = AFCConnectionGetContext(a1);
      if (v164)
      {
        v166 = v164;
        v167 = AFCDiscardBodyData(a1, v2);
        *(v367.st_ino + 24) = v167;
        if (v167)
        {
          goto LABEL_212;
        }

        v168 = *(v2 + 40);
        v169 = (v168 - 1);
        AFCLog(5, "Processing FileRefClose ref %d\n", v168 - 1);
        if (gAFCMaxOpenFileCount > v169 && *(v166 + 80 + 40 * v169) != -1)
        {
          v170 = *(v166 + 80 + 40 * v169 + 24);
          *&block.f_bsize = MEMORY[0x29EDCA5F8];
          block.f_blocks = 0x40000000;
          block.f_bfree = __AFCProcessFileRefClosePacket_block_invoke;
          block.f_bavail = &unk_29EE96698;
          block.f_fsid.val[0] = v169;
          block.f_files = &v367;
          block.f_ffree = v166;
          dispatch_sync(v170, &block);
          v167 = *(v367.st_ino + 24);
          goto LABEL_212;
        }

        v343 = "Invalid file ref";
        v342 = 3892330503;
        v344 = 2590;
      }

      else
      {
        v342 = 3892330499;
        v343 = "No server context";
        v344 = 2581;
      }

      v167 = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, v342, v165, v344, v343);
      *(v367.st_ino + 24) = v167;
LABEL_212:
      AFCLog(5, "FileRefClose returns %d (deferred %d)\n", v167, 0);
LABEL_213:
      LODWORD(st_dev) = *(v367.st_ino + 24);
      goto LABEL_214;
    case 0x15:
      v172 = AFCConnectionGetContext(a1);
      *&v367.st_dev = 0;
      v367.st_ino = &v367;
      *&v367.st_uid = 0x2000000000;
      v367.st_rdev = 0;
      if (v172)
      {
        v174 = v172;
        v175 = AFCDiscardBodyData(a1, v2);
        if (v175)
        {
LABEL_226:
          v188 = v175;
          goto LABEL_334;
        }

        v176 = (*(v2 + 40) - 1);
        AFCLog(5, "Processing FileRefSetFileSize (ref %d, size %d)\n", *(v2 + 40) - 1, *(v2 + 48));
        if (gAFCMaxOpenFileCount <= v176 || (v178 = v174 + 40 * v176, v181 = *(v178 + 80), v180 = v178 + 80, v179 = v181, v181 == -1))
        {
          v185 = "Invalid file ref";
          v186 = 1;
          v183 = 0xFFFFFFFFLL;
          v184 = 3892330503;
          v187 = 2978;
          goto LABEL_225;
        }

        if (__AFCAllowedToOperateOnFile(v179, (a1 + 224), v177, v173))
        {
          v188 = 1;
        }

        else
        {
          v182 = *(v180 + 24);
          *&block.f_bsize = MEMORY[0x29EDCA5F8];
          block.f_blocks = 0x40000000;
          block.f_bfree = __AFCProcessFileRefSetFileSizePacket_block_invoke;
          block.f_bavail = &unk_29EE966C0;
          block.f_files = &v367;
          block.f_ffree = v174;
          block.f_owner = v176;
          block.f_fsid = v2;
          dispatch_sync(v182, &block);
          if (*(v367.st_ino + 24))
          {
            v183 = *__error();
            v184 = 3892330501;
            v185 = "ftruncate";
            v186 = 0;
            v187 = 2991;
LABEL_225:
            v175 = __AFCSetErrorResult_4(v186, v183, v184, v173, v187, v185);
            goto LABEL_226;
          }

          v188 = 0;
        }

LABEL_334:
        AFCLog(5, "FileRefSetFileSize returns %d\n", v188);
        v271 = AFCSendStatus(a1, v2, v188);
        if (v188)
        {
          st_dev = v188;
        }

        else
        {
          st_dev = v271;
        }

        goto LABEL_337;
      }

      v184 = 3892330499;
      v185 = "No server context";
      v186 = 1;
      v183 = 0xFFFFFFFFLL;
      v187 = 2969;
      goto LABEL_225;
    case 0x16:
      *&block.f_bsize = kAFCConnectionOptionExtendedStatusKey[0];
      block.f_blocks = kAFCConnectionServerVersionKey;
      v367.st_ino = 0;
      *&v367.st_dev = 0;
      valuePtr.st_dev = *(a1 + 128) & 1;
      v204 = CFStringCreateWithCString(0, "@(#)PROGRAM:afc  PROJECT:afc-279\n", 0x8000100u);
      v205 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      v206 = v205;
      if (v204 && v205)
      {
        *&v367.st_dev = v205;
        v367.st_ino = v204;
        v207 = CFDictionaryCreate(0, &block, &v367, 2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        v208 = v207;
        if (v207 && (v209 = __AFCCreateAFCDataWithDictionary(v207)) != 0)
        {
          v210 = v209;
          v211 = CFDataGetBytePtr(v209);
          v212 = CFDataGetLength(v210);
          st_dev = AFCSendDataPacket(a1, v2, v211, v212);
        }

        else
        {
          st_dev = AFCSendStatus(a1, v2, 0);
          v210 = 0;
        }
      }

      else
      {
        st_dev = AFCSendStatus(a1, v2, 0);
        v210 = 0;
        v208 = 0;
        v213 = 0;
        v214 = 0;
        if (!v204)
        {
LABEL_249:
          if (v206)
          {
            CFRelease(v206);
          }

          if (v214)
          {
            CFRelease(v214);
          }

          if (!v213)
          {
            goto LABEL_443;
          }

          v215 = v213;
          goto LABEL_409;
        }
      }

      CFRelease(v204);
      v213 = v210;
      v214 = v208;
      goto LABEL_249;
    case 0x17:
      *&block.f_bsize = 0;
      *&v367.st_dev = 0;
      *&valuePtr.st_dev = 0;
      v227 = AFCReadPacketBody(a1, v2, &v367, &valuePtr);
      if (v227 || (v227 = __AFCCreateDictionaryOrArrayFromData(0, *&v367.st_dev, *&valuePtr.st_dev, 1, &block)) != 0)
      {
        v238 = v227;
        v231 = 0;
      }

      else if (*&block.f_bsize && (Count = CFDictionaryGetCount(*&block.f_bsize), Count >= 1))
      {
        v229 = Count;
        v231 = MEMORY[0x29C289090](0, 16 * Count, 0x80040B8603338, 0);
        if (v231)
        {
          CFDictionaryGetKeysAndValues(*&block.f_bsize, v231, &v231[v229]);
          for (j = 0; j != v229; ++j)
          {
            v233 = v231[j];
            v234 = *(&v231[v229] + j);
            if (CFStringCompare(v233, kAFCConnectionOptionServerDebugLevelKey, 0))
            {
              if (CFStringCompare(v233, kAFCConnectionOptionExtendedStatusKey[0], 0))
              {
                if (CFStringCompare(v233, kAFCConnectionOptionTrailingJunkKey[0], 0) == kCFCompareEqualTo)
                {
                  *(a1 + 128) = *(a1 + 128) & 0xFFFF7FFF | ((CFStringGetIntValue(v234) != 0) << 15);
                }
              }

              else
              {
                IntValue = CFStringGetIntValue(v234);
                v237 = *(a1 + 128) & 0xFFFFFFFE;
                if (IntValue)
                {
                  ++v237;
                }

                *(a1 + 128) = v237;
              }
            }

            else
            {
              v235 = CFStringGetIntValue(v234);
              AFCSetLogLevel(v235);
            }
          }

          v238 = 0;
        }

        else
        {
          v238 = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, 3892330499, v230, 3024, "malloc");
        }
      }

      else
      {
        v231 = 0;
        v238 = 0;
      }

      if (*&v367.st_dev)
      {
        v239 = CFGetAllocator(a1);
        CFAllocatorDeallocate(v239, *&v367.st_dev);
      }

      if (v231)
      {
        CFAllocatorDeallocate(0, v231);
      }

      if (*&block.f_bsize)
      {
        CFRelease(*&block.f_bsize);
      }

      v26 = a1;
      v27 = v2;
      v28 = v238;
      goto LABEL_286;
    case 0x18:
      *&valuePtr.st_dev = 0;
      v116 = MEMORY[0x29C289090](0, 1024, 3692196648, 0);
      if (!v116)
      {
        AFCProcessServerPacket_cold_7();
        st_dev = v367.st_dev;
        goto LABEL_443;
      }

      v117 = v116;
      v118 = v2 + 40;
      v119 = strlen((v2 + 40));
      if (!__AFCConnectionGetRequestPath(a1, (v2 + 40), &block, 0x400uLL))
      {
        v131 = 3892330498;
        v129 = "AFCConnectionGetRequestPath";
        v130 = 1;
        v132 = 1470;
        goto LABEL_164;
      }

      if (!__AFCConnectionGetRequestPath(a1, (v118 + v119 + 1), v117, 0x400uLL))
      {
        v131 = 3892330498;
        v129 = "AFCConnectionGetRequestPath";
        v130 = 1;
        v132 = 1474;
        goto LABEL_164;
      }

      AFCLog(5, "Processing rename path '%s'->'%s'\n", &block, v117);
      v121 = AFCDiscardBodyData(a1, v2);
      if (v121)
      {
        goto LABEL_165;
      }

      if (__AFCPathContainsDots(&block))
      {
        v129 = "Request path cannot contain dots : %s";
        v130 = 1;
        v131 = 3892330503;
        v132 = 1492;
        goto LABEL_164;
      }

      if (__AFCPathContainsDots(v117))
      {
        v129 = "Dest path cannot contain dots : %s";
        v130 = 1;
        v131 = 3892330503;
        v132 = 1496;
        goto LABEL_164;
      }

      if ((__AFCPathDepthCheck((v2 + 40)) & 1) == 0)
      {
        v129 = "Request path is outside document root";
        v130 = 0;
        v131 = 3892330503;
        v132 = 1501;
        goto LABEL_164;
      }

      if ((__AFCPathDepthCheck((v118 + v119 + 1)) & 1) == 0)
      {
        v129 = "Request path is outside document root";
        v130 = 0;
        v131 = 3892330503;
        v132 = 1506;
        goto LABEL_164;
      }

      *&v367.st_dev = &block;
      v367.st_ino = 0;
      v122 = fts_open(&v367, 20, 0);
      if (!v122)
      {
        goto LABEL_163;
      }

      v123 = v122;
      while (1)
      {
        v124 = fts_read(v123);
        if (!v124)
        {
          break;
        }

        fts_info = v124->fts_info;
        v126 = fts_info > 0xD;
        v127 = (1 << fts_info) & 0x3080;
        if (!v126 && v127 != 0)
        {
          fts_close(v123);
LABEL_163:
          v129 = "%s contains symlinks and cannot be renamed to %s";
          v130 = 0;
          v131 = 3892330503;
          v132 = 1511;
LABEL_164:
          v121 = __AFCSetErrorResult_4(v130, 0xFFFFFFFFLL, v131, v120, v132, v129);
LABEL_165:
          LODWORD(v133) = v121;
          goto LABEL_430;
        }
      }

      fts_close(v123);
      if (*(a1 + 1268) == 1)
      {
        v121 = __AFCCoordinateFileActivity(&block, 2, &valuePtr);
        if (v121)
        {
          goto LABEL_165;
        }
      }

      rename(&block, v117, v276);
      if (v277)
      {
        AFCProcessServerPacket_cold_6(&v367);
        LODWORD(v133) = v367.st_dev;
        goto LABEL_430;
      }

      if (*(a1 + 1268) != 1)
      {
        goto LABEL_429;
      }

      v278 = *MEMORY[0x29EDB8ED8];
      v279 = strlen(&block);
      v280 = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x29EDB8ED8], &block, v279, 0);
      v281 = strlen(v117);
      v282 = CFURLCreateFromFileSystemRepresentation(v278, v117, v281, 0);
      v133 = v282;
      if (v280)
      {
        v283 = v282 == 0;
      }

      else
      {
        v283 = 1;
      }

      if (v283)
      {
        if (!v280)
        {
LABEL_427:
          if (v133)
          {
            CFRelease(v133);
LABEL_429:
            LODWORD(v133) = 0;
          }

LABEL_430:
          v318 = *&valuePtr.st_dev;
          if (*&valuePtr.st_dev)
          {
            (*(*&valuePtr.st_dev + 16))(*&valuePtr.st_dev);
            _Block_release(v318);
          }

          v319 = AFCSendStatus(a1, v2, v133);
          if (v133)
          {
            st_dev = v133;
          }

          else
          {
            st_dev = v319;
          }

          CFAllocatorDeallocate(0, v117);
          goto LABEL_443;
        }
      }

      else
      {
        _CFFileDidMove2();
      }

      CFRelease(v280);
      goto LABEL_427;
    case 0x19:
      v327 = *MEMORY[0x29EDCA608];
      v328 = a1;
      v329 = v2;
      v330 = _AFCSetFSBlockSize;
      v331 = 512;
      goto LABEL_448;
    case 0x1ALL:
      v332 = *MEMORY[0x29EDCA608];
      v328 = a1;
      v329 = v2;
      v330 = _AFCSetSocketBlockSize;
      v331 = 1;
LABEL_448:

      return AFCProcessSetBlockSize(v328, v329, v330, v331);
    case 0x1BLL:
      v43 = AFCConnectionGetContext(a1);
      *&v367.st_dev = 0;
      v367.st_ino = &v367;
      *&v367.st_uid = 0x2000000000;
      v367.st_rdev = 0;
      AFCLog(5, "Processing FileRefLock packet\n");
      if (!v43)
      {
        v255 = 3892330499;
        v254 = "No server context";
        v256 = 2645;
        goto LABEL_304;
      }

      v45 = AFCDiscardBodyData(a1, v2);
      if (v45)
      {
        goto LABEL_466;
      }

      v47 = (*(v2 + 40) - 1);
      if (gAFCMaxOpenFileCount <= v47 || (v48 = v43 + 40 * v47, v51 = *(v48 + 80), v50 = v48 + 80, v49 = v51, v51 == -1))
      {
        v254 = "Invalid file ref";
        v255 = 3892330503;
        v256 = 2652;
        goto LABEL_304;
      }

      if (__AFCAllowedToOperateOnFile(v49, (a1 + 224), v46, v44))
      {
        goto LABEL_470;
      }

      v52 = *(v2 + 48);
      if (v52 >= 0x10)
      {
        v254 = "Invalid lock type";
        v255 = 3892330503;
        v256 = 2663;
        goto LABEL_304;
      }

      v53 = *(v50 + 24);
      *&block.f_bsize = MEMORY[0x29EDCA5F8];
      block.f_blocks = 0x40000000;
      block.f_bfree = __AFCProcessFileRefLockPacket_block_invoke;
      block.f_bavail = &unk_29EE966E8;
      if (v52 >= 8)
      {
        v54 = v52 | 8;
      }

      else
      {
        v54 = v52 & 7;
      }

      block.f_files = &v367;
      block.f_ffree = v43;
      block.f_fsid.val[0] = v47;
      block.f_fsid.val[1] = v54;
      dispatch_sync(v53, &block);
      if (*(v367.st_ino + 24))
      {
        AFCProcessServerPacket_cold_5(&valuePtr);
        goto LABEL_535;
      }

      goto LABEL_294;
    case 0x1CLL:
      LODWORD(st_dev) = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, 3892330511, v4, 1668, "Unsupported API.");
      goto LABEL_330;
    case 0x1DLL:
      *&v367.st_dev = 0;
      *&valuePtr.st_dev = 0;
      if (__AFCConnectionGetRequestPath(a1, (v2 + 40), &block, 0x400uLL))
      {
        v81 = AFCDiscardBodyData(a1, v2);
        if (!v81)
        {
          v81 = AFCCheckForSpecialFile(&block, (v2 + 40));
          if (!v81)
          {
            if (*(a1 + 1268) != 1 || (v81 = __AFCCoordinateFileActivity(&block, 1, &valuePtr), !v81))
            {
              v81 = __AFCGetFileHash(&block, &v367, 0, 0);
            }
          }
        }
      }

      else
      {
        v81 = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, 3892330498, v80, 1895, "AFCConnectionGetRequestPath");
      }

      st_dev = v81;
      v82 = *&valuePtr.st_dev;
      if (*&valuePtr.st_dev)
      {
        (*(*&valuePtr.st_dev + 16))(*&valuePtr.st_dev);
        _Block_release(v82);
      }

      if (st_dev)
      {
        goto LABEL_95;
      }

      goto LABEL_105;
    case 0x1ELL:
      if (__AFCConnectionGetRequestPath(a1, (v2 + 48), &block, 0x400uLL))
      {
        AFCLog(5, "AFCProcessSetModTimePacket('%s', %lld)", &block, *(v2 + 40));
        v23 = AFCDiscardBodyData(a1, v2);
        if (v23)
        {
          st_dev = v23;
          v202 = a1;
          v203 = v2;
          v201 = st_dev;
LABEL_242:
          AFCSendStatus(v202, v203, v201);
          goto LABEL_443;
        }

        v24 = AFCCheckForSpecialFile(&block, (v2 + 48));
        if (!v24)
        {
          v25 = *(v2 + 40);
          *&v367.st_uid = (v25 / 0x3B9ACA00);
          *&v367.st_dev = *&v367.st_uid;
          v367.st_rdev = v25 % 0x3B9ACA00 / 0x3E8;
          LODWORD(v367.st_ino) = v367.st_rdev;
          if (!utimes(&block, &v367))
          {
            v26 = a1;
            v27 = v2;
            v28 = 0;
LABEL_286:
            v240 = AFCSendStatus(v26, v27, v28);
            goto LABEL_287;
          }

          AFCProcessServerPacket_cold_4(&valuePtr);
          st_dev = valuePtr.st_dev;
LABEL_523:
          v240 = AFCSendStatus(a1, v2, st_dev);
          if (st_dev)
          {
            goto LABEL_443;
          }

LABEL_287:
          st_dev = v240;
          goto LABEL_443;
        }
      }

      else
      {
        v24 = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, 3892330498, v22, 2747, "AFCConnectionGetRequestPath");
      }

      st_dev = v24;
      goto LABEL_523;
    case 0x1FLL:
      *&v367.st_dev = 0;
      *&valuePtr.st_dev = 0;
      if (__AFCConnectionGetRequestPath(a1, (v2 + 56), &block, 0x400uLL))
      {
        v84 = AFCDiscardBodyData(a1, v2);
        if (!v84)
        {
          v84 = AFCCheckForSpecialFile(&block, (v2 + 56));
          if (!v84)
          {
            if (*(a1 + 1268) != 1 || (v84 = __AFCCoordinateFileActivity(&block, 1, &valuePtr), !v84))
            {
              v84 = __AFCGetFileHash(&block, &v367, *(v2 + 40), *(v2 + 48));
            }
          }
        }
      }

      else
      {
        v84 = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, 3892330498, v83, 1936, "AFCConnectionGetRequestPath");
      }

      st_dev = v84;
      v85 = *&valuePtr.st_dev;
      if (*&valuePtr.st_dev)
      {
        (*(*&valuePtr.st_dev + 16))(*&valuePtr.st_dev);
        _Block_release(v85);
      }

      if (st_dev)
      {
LABEL_95:
        AFCSendStatus(a1, v2, st_dev);
        Mutable = *&v367.st_dev;
      }

      else
      {
LABEL_105:
        Mutable = *&v367.st_dev;
        v86 = CFDataGetBytePtr(*&v367.st_dev);
        v87 = CFDataGetLength(Mutable);
        st_dev = AFCSendDataPacket(a1, v2, v86, v87);
      }

      goto LABEL_407;
    case 0x20:
      v241 = AFCConnectionGetContext(a1);
      *&v367.st_dev = 0;
      v367.st_ino = &v367;
      *&v367.st_uid = 0x2000000000;
      v367.st_rdev = 0;
      AFCLog(5, "Processing FileRefSetImmutableHint packet");
      if (v241)
      {
        v45 = AFCDiscardBodyData(a1, v2);
        if (v45)
        {
LABEL_466:
          st_dev = v45;
          v334 = v2;
          v335 = a1;
          goto LABEL_471;
        }

        v243 = (*(v2 + 40) - 1);
        if (gAFCMaxOpenFileCount > v243)
        {
          v244 = v241 + 40 * v243;
          v247 = *(v244 + 80);
          v246 = v244 + 80;
          v245 = v247;
          if (v247 != -1)
          {
            if (!__AFCAllowedToOperateOnFile(v245, (a1 + 224), v242, v44))
            {
              v248 = *v246;
              v249 = *(v2 + 48) != 0;
              v250 = *(v246 + 24);
              *&block.f_bsize = MEMORY[0x29EDCA5F8];
              block.f_blocks = 0x40000000;
              block.f_bfree = __AFCProcessFileRefSetImmutableHintPacket_block_invoke;
              block.f_bavail = &unk_29EE96710;
              block.f_files = &v367;
              block.f_ffree = __PAIR64__(v249, v248);
              dispatch_sync(v250, &block);
              if (!*(v367.st_ino + 24))
              {
LABEL_294:
                v251 = AFCSendStatus(a1, v2, 0);
                goto LABEL_295;
              }

              AFCProcessServerPacket_cold_3(&valuePtr);
LABEL_535:
              st_dev = valuePtr.st_dev;
LABEL_305:
              v251 = AFCSendStatus(a1, v2, st_dev);
              if (st_dev)
              {
                goto LABEL_337;
              }

LABEL_295:
              st_dev = v251;
              goto LABEL_337;
            }

LABEL_470:
            v334 = v2;
            v335 = a1;
            st_dev = 1;
LABEL_471:
            AFCSendStatus(v335, v334, st_dev);
            goto LABEL_337;
          }
        }

        v254 = "Invalid file ref";
        v255 = 3892330503;
        v256 = 2711;
      }

      else
      {
        v255 = 3892330499;
        v254 = "No server context";
        v256 = 2704;
      }

LABEL_304:
      st_dev = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, v255, v44, v256, v254);
      goto LABEL_305;
    case 0x21:
      memset(&v367, 0, sizeof(v367));
      v360 = a1;
      if (!__AFCConnectionGetRequestPath(a1, (v2 + 48), &block, 0x400uLL))
      {
        st_dev = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, 3892330498, v6, 2785, "AFCConnectionGetRequestPath");
        Mutable = 0;
        goto LABEL_403;
      }

      AFCLog(5, "Processing remove path '%s'\n", &block);
      v7 = AFCDiscardBodyData(a1, v2);
      if (v7)
      {
LABEL_467:
        st_dev = v7;
        Mutable = 0;
        goto LABEL_405;
      }

      if (lstat(&block, &v367))
      {
        AFCProcessServerPacket_cold_2(&valuePtr);
        Mutable = 0;
        st_dev = valuePtr.st_dev;
        goto LABEL_403;
      }

      st_dev = 0;
      v9 = *(v2 + 40);
      v10 = v367.st_mode & 0xF000;
      v11 = v10 != 0x8000 && v9 == 1;
      if (v11)
      {
        st_size = v367.st_size;
      }

      else
      {
        st_size = 0;
      }

      if (v11)
      {
        st_blksize = v367.st_blksize;
      }

      else
      {
        st_blksize = 0;
      }

      if (v10 == 40960 || v10 == 0x8000)
      {
        goto LABEL_401;
      }

      if (v10 != 0x4000)
      {
        st_dev = __AFCSetErrorResult_4(0, 0xFFFFFFFFLL, 3892330506, v8, 2848, "Special files not allowed");
        goto LABEL_401;
      }

      valuePtr.st_ino = 0;
      *&valuePtr.st_dev = &block;
      Mutable = fts_open(&valuePtr, 84, 0);
      if (!Mutable)
      {
        v356 = *__error();
        v353 = 3892330497;
        v354 = "Could not start directory walk";
        v355 = 0;
        v357 = 2815;
        goto LABEL_544;
      }

      while (1)
      {
        v15 = fts_read(Mutable);
        if (!v15)
        {
          st_dev = 0;
LABEL_400:
          fts_close(Mutable);
LABEL_401:
          v301 = CFDataCreateMutable(0, 0);
          Mutable = v301;
          if (v301)
          {
            CFDataAppendBytes(v301, "st_size", 8);
            snprintf(&valuePtr, 0x80uLL, "%lld", st_size);
            v303 = strlen(&valuePtr);
            CFDataAppendBytes(Mutable, &valuePtr, v303 + 1);
            CFDataAppendBytes(Mutable, "st_blocks", 10);
            snprintf(&valuePtr, 0x80uLL, "%lld", st_blksize);
            v304 = strlen(&valuePtr);
            CFDataAppendBytes(Mutable, &valuePtr, v304 + 1);
LABEL_403:
            a1 = v360;
            goto LABEL_404;
          }

          v353 = 3892330499;
          v354 = "CFDataCreateMutable";
          v355 = 1;
          v356 = 0xFFFFFFFFLL;
          v357 = 2853;
LABEL_544:
          st_dev = __AFCSetErrorResult_4(v355, v356, v353, v302, v357, v354);
          goto LABEL_403;
        }

        v17 = v15;
        v18 = v15->fts_info;
        if (v18 > 0xA)
        {
LABEL_26:
          fts_statp = v15->fts_statp;
          if (v9 == 1 || (fts_statp->st_mode & 0xF000) == 0x8000)
          {
            AFCLog(5, "Summing file %s = %lld bytes\n", v15->fts_path, fts_statp->st_size);
            v21 = v17->fts_statp;
            st_size += v21->st_size;
            st_blksize += v21->st_blocks;
          }
        }

        else
        {
          v19 = 1 << v18;
          if ((v19 & 0x490) != 0)
          {
            st_dev = __AFCSetErrorResult_4(0, v15->fts_errno, 3892330497, v16, 2829, "Error during file traversal");
            if (st_dev)
            {
              goto LABEL_400;
            }
          }

          else if ((v19 & 0x22) == 0)
          {
            goto LABEL_26;
          }
        }
      }

    case 0x22:
      *&valuePtr.st_dev = 0;
      if (__AFCConnectionGetRequestPath(a1, (v2 + 40), &block, 0x400uLL))
      {
        AFCLog(5, "Processing remove path '%s'\n", &block);
        v30 = AFCDiscardBodyData(a1, v2);
        if (!v30 && (*(a1 + 1268) != 1 || (v30 = __AFCCoordinateFileActivity(&block, 1, &valuePtr)) == 0))
        {
          v367.st_ino = 0;
          *&v367.st_dev = &block;
          v31 = fts_open(&v367, 84, 0);
          if (v31)
          {
            v32 = v31;
            while (1)
            {
              v33 = fts_read(v32);
              if (!v33)
              {
                v38 = 0;
LABEL_297:
                fts_close(v32);
                goto LABEL_298;
              }

              v35 = v33->fts_info;
              if (v35 > 0xA)
              {
                break;
              }

              v36 = 1 << v35;
              if ((v36 & 0x490) != 0)
              {
                v37 = __AFCSetErrorResult_4(0, v33->fts_errno, 3892330497, v34, 1432, "Error during file traversal");
LABEL_46:
                v38 = v37;
                if (v37)
                {
                  goto LABEL_297;
                }
              }

              else if ((v36 & 0x22) == 0)
              {
                break;
              }
            }

            v37 = RemovePath(v33->fts_path);
            goto LABEL_46;
          }

          AFCProcessServerPacket_cold_1(__str);
          v38 = *__str;
LABEL_298:
          v252 = *&valuePtr.st_dev;
          if (*&valuePtr.st_dev)
          {
            (*(*&valuePtr.st_dev + 16))(*&valuePtr.st_dev);
            _Block_release(v252);
          }

          v253 = AFCSendStatus(a1, v2, v38);
          if (v38)
          {
            st_dev = v38;
          }

          else
          {
            st_dev = v253;
          }

          goto LABEL_443;
        }
      }

      else
      {
        v30 = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, 3892330498, v29, 1400, "AFCConnectionGetRequestPath");
      }

      v38 = v30;
      goto LABEL_298;
    case 0x27:
      v323 = *MEMORY[0x29EDCA608];
      v324 = a1;
      v325 = v2;
      v326 = 1;
LABEL_452:

      return AFCProcessFileRefReadPacket(v324, v325, v326);
    case 0x28:
      v39 = *MEMORY[0x29EDCA608];
      v40 = a1;
      v41 = v2;
      v42 = 1;
LABEL_238:

      return AFCProcessFileRefWritePacket(v40, v41, v42);
    default:
      AFCLog(5, "Processing unknown packet %d\n", *(v2 + 32));
      AFCDiscardBodyData(a1, v2);
      st_dev = 3892330502;
      v358 = *(v2 + 32);
      v201 = __AFCSetErrorResult_4(0, 0xFFFFFFFFLL, 3892330502, v200, 1265, "Unknown packet type %d");
      v202 = a1;
      v203 = v2;
      goto LABEL_242;
  }
}

uint64_t AFCProcessObsoletePacket(uint64_t a1, uint64_t a2)
{
  AFCDiscardBodyData(a1, a2);
  v7 = *(a2 + 32);
  v5 = __AFCSetErrorResult_4(0, 0xFFFFFFFFLL, 3892330511, v4, 1279, "Obsolete packet type %d");

  return AFCSendStatus(a1, a2, v5);
}

uint64_t AFCProcessFileRefWritePacket(uint64_t a1, void *a2, int a3)
{
  v43 = 0;
  v44[0] = &v43;
  v44[1] = 0x2000000000;
  v45 = 0;
  Context = AFCConnectionGetContext(a1);
  v39 = 0;
  v40 = &v39;
  v41 = 0x2000000000;
  v42 = 0;
  AFCLog(5, "Processing FileRefWrite packet\n");
  if (Context)
  {
    v9 = a2[5];
    v10 = a2[1];
    v11 = a2[2];
    if (a3)
    {
      v40[3] = a2[6];
    }

    v35 = a2;
    v12 = (v9 - 1);
    if (gAFCMaxOpenFileCount <= v12 || (v13 = Context + 40 * v12, v16 = *(v13 + 80), v15 = v13 + 80, v14 = v16, v16 == -1))
    {
      AFCProcessFileRefWritePacket_cold_2(v44);
    }

    else
    {
      v17 = __AFCAllowedToOperateOnFile(v14, (a1 + 224), v7, v8);
      *(v44[0] + 24) = v17;
      if (!v17)
      {
        v18 = v10 - v11;
        *(v15 + 16) = 0;
        if (v18 >= 1)
        {
          while (1)
          {
            v19 = v18 >= *(Context + 8) ? *(Context + 8) : v18;
            v20 = AFCGetBuffer(Context, v19);
            if (!v20)
            {
              break;
            }

            v21 = v20;
            v22 = AFCReadData(a1, *(v20 + 16), v19);
            *(v44[0] + 24) = v22;
            if (v22)
            {
              goto LABEL_21;
            }

            v23 = *(Context + 48);
            v24 = *(a1 + 104);
            if (v24)
            {
              v25 = dispatch_time(0, 1000000000 * v24 * gAFCMaxIORequests);
            }

            else
            {
              v25 = -1;
            }

            v18 -= v19;
            if (dispatch_semaphore_wait(v23, v25))
            {
              AFCProcessFileRefWritePacket_cold_1();
              goto LABEL_21;
            }

            v27 = *(v15 + 16);
            if (v27)
            {
              v30 = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, v27, v26, 2384, "Previous IO error");
              *(v44[0] + 24) = v30;
              AFCDiscardData(a1, v18);
              dispatch_semaphore_signal(*(Context + 48));
LABEL_21:
              dispatch_group_wait(*(Context + 56), 0xFFFFFFFFFFFFFFFFLL);
              AFCReleaseBuffer(Context, v21);
              goto LABEL_22;
            }

            v28 = *(Context + 56);
            v29 = *(v15 + 24);
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 0x40000000;
            block[2] = __AFCProcessFileRefWritePacket_block_invoke;
            block[3] = &unk_29EE96620;
            block[6] = v21;
            block[7] = v19;
            v38 = a3;
            block[8] = Context;
            v37 = v12;
            block[4] = &v39;
            block[5] = &v43;
            dispatch_group_async(v28, v29, block);
            if (v18 <= 0)
            {
              goto LABEL_19;
            }
          }

          AFCProcessFileRefWritePacket_cold_3();
        }
      }
    }

LABEL_19:
    dispatch_group_wait(*(Context + 56), 0xFFFFFFFFFFFFFFFFLL);
LABEL_22:
    a2 = v35;
  }

  else
  {
    AFCProcessFileRefWritePacket_cold_4(v44);
  }

  v31 = *(v44[0] + 24);
  v32 = AFCSendStatus(a1, a2, v31);
  if (v31)
  {
    v33 = v31;
  }

  else
  {
    v33 = v32;
  }

  *(v44[0] + 24) = v33;
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);
  return v33;
}

char *__AFCPathDepthCheck(const char *a1)
{
  result = strndup(a1, 0x400uLL);
  __stringp = result;
  if (result)
  {
    v2 = result;
    v3 = 0;
    while (1)
    {
      v4 = strsep(&__stringp, "/");
      if (!v4)
      {
LABEL_13:
        free(v2);
        return (v3 >= 0);
      }

      if (!*v4)
      {
        goto LABEL_10;
      }

      if (*v4 != 46)
      {
        goto LABEL_9;
      }

      if (v4[1])
      {
        if (v4[1] != 46 || v4[2])
        {
LABEL_9:
          ++v3;
          goto LABEL_10;
        }

        if (--v3 < 0)
        {
          goto LABEL_13;
        }
      }

      else
      {
LABEL_10:
        if (v3 < 0)
        {
          goto LABEL_13;
        }
      }
    }
  }

  return result;
}

uint64_t AFCCheckForSpecialFile(const char *a1, const char *a2)
{
  v33 = *MEMORY[0x29EDCA608];
  memset(&v29, 0, sizeof(v29));
  if (a2 && (__AFCPathDepthCheck(a2) & 1) == 0)
  {
    v4 = 3892330503;
    v7 = "Request path is outside document root";
    v8 = 3892330503;
    v9 = 228;
    goto LABEL_13;
  }

  v4 = 0;
  if (a1 && (gAllowSpecialFiles & 1) == 0)
  {
    bzero(&__s, 0x400uLL);
    if (*a1 == 47)
    {
      v5 = strlen(a1);
      if (v5 >= 1)
      {
        v6 = 0;
        do
        {
          if (a1[v6] == 47 && a1[v6 + 1] != 47)
          {
            break;
          }

          ++v6;
        }

        while ((v5 & 0x7FFFFFFF) != v6);
      }
    }

    __strcpy_chk();
    while (1)
    {
      v10 = strlen(&__s);
      if (v10 >= 2)
      {
        v11 = v10 & 0x7FFFFFFF;
        do
        {
          if (*(&v30 + v11) != 47)
          {
            break;
          }

          *(&v30 + v11) = 0;
        }

        while (v11-- > 2);
      }

      if (__s ^ 0x7261762F | BYTE4(__s) && __s ^ 0x6374652F | BYTE4(__s) && __s ^ 0x706D742F | BYTE4(__s))
      {
        if (gInternalBuild != 1)
        {
          goto LABEL_68;
        }

        if ((__s != 0x762F2F31746E6D2FLL || *(&__s + 3) != 0x7261762F2F3174) && (__s != 0x652F2F31746E6D2FLL || *(&__s + 3) != 0x6374652F2F3174))
        {
          v15 = __s == 0x742F2F31746E6D2FLL && *(&__s + 3) == 0x706D742F2F3174;
          if (!v15 && __s ^ 0x626F6D2F7261762FLL | *(&__s + 1) ^ 0x7262694C2F656C69 | *v32 ^ 0x73676F4C2F797261 | v32[8])
          {
            v16 = __s == 0x7269772F7261762FLL && *(&__s + 1) == 0x694C2F7373656C65;
            v17 = v16 && *v32 == 0x6F4C2F7972617262;
            if (!v17 || *&v32[3] != 0x73676F4C2F7972)
            {
              v19 = __s == 0x626F6D2F7261762FLL && *(&__s + 1) == 0x6964654D2F656C69;
              v20 = v19 && *v32 == 0x726F746361462F61;
              if (!v20 || *&v32[6] != 0x73676F4C79726FLL)
              {
LABEL_68:
                if (lstat(&__s, &v29))
                {
                  if (*__error() != 2)
                  {
                    v26 = *__error();
                    v27 = __error();
                    strerror(*v27);
                    __AFCSetErrorResult_4(1, v26, 3892330519, v28, 302, "failed to retrieve file information for %s (%s)");
                    v4 = 23;
                    break;
                  }
                }

                else
                {
                  v22 = v29.st_mode & 0xF000;
                  if (v22 != 0x4000 && v22 != 0x8000)
                  {
                    v4 = 3892330506;
                    v7 = "%s is special file";
                    v8 = 3892330506;
                    v9 = 295;
LABEL_13:
                    __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, v8, v3, v9, v7);
                    break;
                  }
                }
              }
            }
          }
        }
      }

      v23 = strrchr(&__s, 47);
      if (v23)
      {
        *v23 = 0;
        if (__s)
        {
          continue;
        }
      }

      v4 = 0;
      break;
    }
  }

  v24 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t __AFCCoordinateFileActivity(const char *a1, uint64_t a2, void *a3)
{
  v30 = *MEMORY[0x29EDCA608];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3002000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v6 = strlen(a1);
  v7 = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x29EDB8ED8], a1, v6, 0);
  if (v7)
  {
    v9 = v7;
    v10 = dispatch_semaphore_create(0);
    dispatch_retain(v10);
    if (a2 == 1)
    {
      _CFFileCoordinateReadingItemAtURL2();
    }

    else
    {
      _CFFileCoordinateWritingItemAtURL2();
    }

    v11 = dispatch_time(0, 25000000000);
    if (dispatch_semaphore_wait(v10, v11))
    {
      AFCLog(1, "Timeout waiting for File Coordination to release %s", a1);
      v12 = 0;
    }

    else
    {
      v13 = v26[3];
      if (v13)
      {
        memset(buffer, 0, sizeof(buffer));
        v14 = CFErrorCopyDescription(v13);
        if (v14)
        {
          v15 = v14;
          CFStringGetCString(v14, buffer, 256, 0x8000100u);
          CFRelease(v15);
        }

        AFCLog(1, "File Coordination error for path %s: %s", a1, buffer);
        CFRelease(v26[3]);
      }

      v12 = v20[5];
    }

    *a3 = v12;
    if (v10)
    {
      dispatch_release(v10);
    }

    CFRelease(v9);
    v16 = 0;
  }

  else
  {
    v16 = __AFCSetErrorResult_4(0, 0xFFFFFFFFLL, 3892330499, v8, 402, "Could not create request URL");
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);
  v17 = *MEMORY[0x29EDCA608];
  return v16;
}

uint64_t RemovePath(const char *a1)
{
  memset(&v9, 0, sizeof(v9));
  if (lstat(a1, &v9))
  {
    RemovePath_cold_1(&v10);
    return v10;
  }

  v3 = v9.st_mode & 0xF000;
  if (v3 != 0x4000)
  {
    if ((gAllowSpecialFiles & 1) == 0 && (v3 | 0x2000) != 0xA000)
    {
      v5 = "Special files not allowed";
      v6 = 3892330506;
      v4 = 0xFFFFFFFFLL;
      v7 = 1348;
      return __AFCSetErrorResult_4(0, v4, v6, v2, v7, v5);
    }

    if (unlink(a1) < 0)
    {
      v4 = *__error();
      v5 = "unlink";
      v6 = 3892330497;
      v7 = 1345;
      return __AFCSetErrorResult_4(0, v4, v6, v2, v7, v5);
    }

    return 0;
  }

  if ((rmdir(a1) & 0x80000000) == 0)
  {
    return 0;
  }

  v4 = *__error();
  v5 = "rmdir";
  v6 = 3892330497;
  v7 = 1340;
  return __AFCSetErrorResult_4(0, v4, v6, v2, v7, v5);
}

BOOL __AFCHasPrefix(const char *a1, char *__s)
{
  result = 0;
  if (a1 && __s)
  {
    v5 = strlen(__s);
    return strlen(a1) >= v5 && strncmp(__s, a1, v5) == 0;
  }

  return result;
}

BOOL __AFCAllowedToOperateOnFile(int a1, char *a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x29EDCA608];
  if (a1 < 0 || !a2)
  {
    v7 = "Invalid arg(s).";
    v8 = 0;
    v9 = 0xFFFFFFFFLL;
    v10 = 7;
    v11 = 2176;
LABEL_13:
    v6 = __AFCSetErrorResult_4(v8, v9, v10, a4, v11, v7);
    goto LABEL_14;
  }

  memset(&v18, 0, sizeof(v18));
  if (fcntl(a1, 50, v19) == -1)
  {
    v12 = *__error();
    v13 = __error();
    v7 = strerror(*v13);
    v8 = 1;
    v9 = v12;
    v10 = 23;
    v11 = 2181;
    goto LABEL_13;
  }

  if (!__AFCHasPrefix(v19, a2))
  {
    v7 = "Requested path (%s) does not start with AFC root (%s)";
    v8 = 1;
    v9 = 0xFFFFFFFFLL;
    v10 = 1;
    v11 = 2186;
    goto LABEL_13;
  }

  if (fstat(a1, &v18) == -1)
  {
    v14 = *__error();
    v15 = __error();
    v7 = strerror(*v15);
    v8 = 0;
    v9 = v14;
    v10 = 23;
    v11 = 2191;
    goto LABEL_13;
  }

  if (v18.st_nlink != 1)
  {
    v7 = "Can't operate on this file via AFC as there are additional hard links: %d";
    v8 = 0;
    v9 = 0xFFFFFFFFLL;
    v10 = 1;
    v11 = 2196;
    goto LABEL_13;
  }

  v6 = 0;
LABEL_14:
  result = v6 != 0;
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __AFCProcessFileRefReadPacket_block_invoke(uint64_t a1)
{
  result = AFCGetBuffer(*(a1 + 88), *(*(*(a1 + 40) + 8) + 24));
  *(*(*(a1 + 32) + 8) + 24) = result;
  v3 = *(*(*(a1 + 32) + 8) + 24);
  if (v3)
  {
    *(*(*(a1 + 56) + 8) + 24) = *(v3 + 16);
    *(*(*(a1 + 64) + 8) + 24) = 0;
    for (i = *(*(*(a1 + 40) + 8) + 24); *(*(*(a1 + 64) + 8) + 24) < i; i = *(*(*(a1 + 40) + 8) + 24))
    {
      v5 = *(a1 + 96);
      v6 = *(*(*(a1 + 56) + 8) + 24);
      if (*(a1 + 104) == 1)
      {
        result = pread(v5, v6, i, *(*(*(a1 + 80) + 8) + 24));
        *(*(*(a1 + 72) + 8) + 24) = result;
        v7 = *(*(*(a1 + 72) + 8) + 24);
        if (v7 < 1)
        {
          return result;
        }

        *(*(*(a1 + 64) + 8) + 24) += v7;
        *(*(*(a1 + 56) + 8) + 24) += *(*(*(a1 + 72) + 8) + 24);
        *(*(*(a1 + 40) + 8) + 24) -= *(*(*(a1 + 72) + 8) + 24);
        v8 = *(*(a1 + 80) + 8);
        v9 = *(v8 + 24) + *(*(*(a1 + 72) + 8) + 24);
      }

      else
      {
        result = read(v5, v6, i);
        *(*(*(a1 + 72) + 8) + 24) = result;
        v10 = *(*(*(a1 + 72) + 8) + 24);
        if (v10 < 1)
        {
          return result;
        }

        v11 = *(a1 + 88) + 40 * *(a1 + 100);
        *(v11 + 88) += v10;
        *(*(*(a1 + 64) + 8) + 24) += *(*(*(a1 + 72) + 8) + 24);
        *(*(*(a1 + 56) + 8) + 24) += *(*(*(a1 + 72) + 8) + 24);
        v8 = *(*(a1 + 40) + 8);
        v9 = *(v8 + 24) - *(*(*(a1 + 72) + 8) + 24);
      }

      *(v8 + 24) = v9;
    }
  }

  else
  {
    v12 = __error();
    result = __AFCSetErrorResult_4(1, *v12, 3892330499, v13, 2269, "AFCGetBuffer failed");
    *(*(*(a1 + 48) + 8) + 24) = result;
  }

  return result;
}

uint64_t AFCGetBuffer(uint64_t a1, unint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v3 = 0;
  if (a2 <= 0x400000)
  {
    v4 = *(a1 + 24);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = __AFCGetBuffer_block_invoke;
    block[3] = &unk_29EE965D8;
    block[4] = &v7;
    block[5] = a1;
    block[6] = a2;
    dispatch_sync(v4, block);
    v3 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  return v3;
}

void AFCReleaseBuffer(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = __AFCReleaseBuffer_block_invoke;
  v4[3] = &__block_descriptor_tmp_124;
  v4[4] = a2;
  v4[5] = a1;
  dispatch_sync(v3, v4);
}

void __AFCGetBuffer_block_invoke(void *a1)
{
  v2 = *(a1[5] + 16);
  if (v2)
  {
    v3 = a1 + 4;
    *(*(a1[4] + 8) + 24) = v2;
    *(a1[5] + 16) = **(a1[5] + 16);
    v4 = *(*(a1[4] + 8) + 24);
    v5 = a1 + 6;
    if (*(v4 + 24) >= a1[6])
    {
      goto LABEL_6;
    }

    free(*(v4 + 16));
    v6 = 3801252997;
  }

  else
  {
    v3 = a1 + 4;
    *(*(a1[4] + 8) + 24) = malloc_type_malloc(0x20uLL, 0x10A0040D083E0E9uLL);
    v7 = *(*(a1[4] + 8) + 24);
    *v7 = 0u;
    v7[1] = 0u;
    v5 = a1 + 6;
    v6 = 2358966840;
  }

  *(*(*(*v3 + 8) + 24) + 16) = malloc_type_valloc(*v5, v6);
  *(*(*(*v3 + 8) + 24) + 24) = malloc_size(*(*(*(*v3 + 8) + 24) + 16));
LABEL_6:
  v8 = a1[5];
  *(*(*(a1[4] + 8) + 24) + 8) = 1;
  v9 = *(v8 + 40);
  if (!v9)
  {
    dispatch_source_set_timer(*(v8 + 32), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    v8 = a1[5];
    v9 = *(v8 + 40);
  }

  *(v8 + 40) = v9 + 1;
}

void __AFCReleaseBuffer_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  *(v2 + 8) = 0;
  *v2 = *(v3 + 16);
  *(*(a1 + 40) + 16) = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v4 + 40) - 1;
  *(v4 + 40) = v5;
  if (!v5)
  {
    v6 = *(v4 + 32);
    v7 = dispatch_time(0, 10000000000);

    dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  }
}

intptr_t __AFCProcessFileRefWritePacket_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 < 1)
  {
LABEL_11:
    v9 = __error();
    v11 = __AFCSetErrorResult_4(0, *v9, 0xFFFFFFFFLL, v10, 2422, "file write failure");
    v8 = *(a1 + 64);
    *(v8 + 80 + 40 * *(a1 + 72) + 16) = v11;
    *(*(*(a1 + 40) + 8) + 24) = *(v8 + 80 + 40 * *(a1 + 72) + 16);
  }

  else
  {
    v3 = *(*(a1 + 48) + 16);
    do
    {
      v4 = *(*(a1 + 64) + 40 * *(a1 + 72) + 80);
      if (*(a1 + 76) == 1)
      {
        v5 = pwrite(v4, v3, v2, *(*(*(a1 + 32) + 8) + 24));
        if (v5 < 1)
        {
          goto LABEL_11;
        }

        v6 = (*(*(a1 + 32) + 8) + 24);
      }

      else
      {
        v5 = write(v4, v3, v2);
        if (v5 < 1)
        {
          goto LABEL_11;
        }

        v6 = (*(a1 + 64) + 40 * *(a1 + 72) + 88);
      }

      *v6 += v5;
      v3 += v5;
      v7 = v2 <= v5;
      v2 -= v5;
    }

    while (!v7);
    v8 = *(a1 + 64);
  }

  AFCReleaseBuffer(v8, *(a1 + 48));
  v12 = *(*(a1 + 64) + 48);

  return dispatch_semaphore_signal(v12);
}

uint64_t __AFCProcessFileRefSeekPacket_block_invoke(uint64_t a1)
{
  v2 = lseek(*(*(a1 + 40) + 40 * *(a1 + 56) + 80), *(*(a1 + 48) + 56), *(a1 + 60));
  if (v2 < 0)
  {
    v5 = __error();
    result = __AFCSetErrorResult_4(0, *v5, 3892330497, v6, 2509, "lseek");
  }

  else
  {
    v3 = v2;
    result = 0;
    *(*(a1 + 40) + 40 * *(a1 + 56) + 88) = v3;
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __AFCProcessFileRefTellPacket_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = lseek(*(*(a1 + 48) + 40 * *(a1 + 56) + 80), 0, 1);
  if (*(*(*(a1 + 32) + 8) + 24) == -1)
  {
    v3 = __error();
    result = __AFCSetErrorResult_4(0, *v3, 3892330497, v4, 2548, "lseek");
  }

  else
  {
    result = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __AFCProcessFileRefClosePacket_block_invoke(uint64_t a1)
{
  if (close(*(*(a1 + 40) + 40 * *(a1 + 48) + 80)))
  {
    v2 = __error();
    v4 = __AFCSetErrorResult_4(0, *v2, 3892330497, v3, 2597, "close");
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = v4;
  *(v5 + 80 + 40 * *(a1 + 48)) = -1;
  v6 = *(v5 + 80 + 40 * *(a1 + 48) + 32);
  if (v6)
  {
    (*(v6 + 16))(v6);
    _Block_release(*(*(a1 + 40) + 40 * *(a1 + 48) + 112));
    v5 = *(a1 + 40);
    *(v5 + 40 * *(a1 + 48) + 112) = 0;
  }

  if (!gAFCMaxOpenFileCount)
  {
    goto LABEL_11;
  }

  v7 = 0;
  v8 = 1;
  do
  {
    if (*(v5 + 80 + 40 * v7) != -1)
    {
      break;
    }

    v7 = v8;
  }

  while (gAFCMaxOpenFileCount > v8++);
  if (gAFCMaxOpenFileCount == v7)
  {
LABEL_11:

    AFCFlushServerContext(v5);
  }
}

uint64_t __AFCProcessFileRefSetFileSizePacket_block_invoke(uint64_t a1)
{
  result = ftruncate(*(*(a1 + 40) + 40 * *(a1 + 56) + 80), *(*(a1 + 48) + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __AFCPathContainsDots(const char *a1)
{
  v1 = strndup(a1, 0x400uLL);
  __stringp = v1;
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = strsep(&__stringp, "/");
  if (v3)
  {
    while (*v3 != 46 || v3[1] != 46 || v3[2])
    {
      v3 = strsep(&__stringp, "/");
      if (!v3)
      {
        goto LABEL_7;
      }
    }

    v4 = 1;
  }

  else
  {
LABEL_7:
    v4 = 0;
  }

  free(v2);
  return v4;
}

uint64_t _AFCSetFSBlockSize(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a1 + 88) == a3 && *(a1 + 96) == a3)
  {
    return 0;
  }

  AFCLog(5, "Setting block size to %llu", a3);
  if (a3 > 0x400000)
  {
    return 3892330503;
  }

  *(a1 + 88) = a3;
  *(a1 + 96) = a3;
  AFCFlushServerContext(a2);
  result = 0;
  *(a2 + 8) = a3;
  return result;
}

uint64_t __AFCProcessFileRefLockPacket_block_invoke(uint64_t a1)
{
  result = flock(*(*(a1 + 40) + 40 * *(a1 + 48) + 80), *(a1 + 52));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __AFCGetFileHash(const char *a1, CFDataRef *a2, off_t a3, off_t a4)
{
  v31 = *MEMORY[0x29EDCA608];
  memset(&v28, 0, sizeof(v28));
  if (stat(a1, &v28))
  {
    __AFCGetFileHash_cold_1(&c);
    h0 = c.h0;
    goto LABEL_26;
  }

  valuePtr = v28.st_mtimespec.tv_nsec / 1000000000.0 + v28.st_mtimespec.tv_sec;
  v9 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  if (a4 | a3)
  {
    st_size = a4;
  }

  else
  {
    st_size = v28.st_size;
  }

  if (a3 < 0)
  {
    v23 = "Invalid starting offset %ld.";
    v24 = 3892330503;
    v25 = 1762;
  }

  else if (st_size <= 0)
  {
    v23 = "Invalid length %ld.";
    v24 = 3892330503;
    v25 = 1763;
  }

  else if (st_size + a3 > v28.st_size)
  {
    v23 = "File %s ain't that long!";
    v24 = 3892330503;
    v25 = 1764;
  }

  else
  {
    memset(&c, 0, sizeof(c));
    CC_SHA1_Init(&c);
    v11 = open(a1, 0);
    if (v11 < 0)
    {
      __AFCGetFileHash_cold_4(&v29);
      goto LABEL_35;
    }

    v12 = v11;
    if (st_size >= 0x80000)
    {
      v13 = 0x80000;
    }

    else
    {
      v13 = st_size;
    }

    v14 = MEMORY[0x29C289090](0, v13, 2237703902, 0);
    if (v14)
    {
      v15 = v14;
      if (lseek(v12, a3, 0) == a3)
      {
        v16 = 0;
        while (1)
        {
          v17 = st_size - v16 >= v13 ? v13 : st_size - v16;
          v18 = read(v12, v15, v17);
          if (v18 < 1)
          {
            break;
          }

          CC_SHA1_Update(&c, v15, v18);
          v16 += v18;
          if (v16 >= st_size)
          {
            CFAllocatorDeallocate(0, v15);
            goto LABEL_22;
          }
        }

        CFAllocatorDeallocate(0, v15);
        if (v18 < 0)
        {
          __AFCGetFileHash_cold_3(&v29);
          goto LABEL_35;
        }

LABEL_22:
        CC_SHA1_Final(md, &c);
        v19 = CFDataCreate(0, md, 20);
        if (v19)
        {
          h0 = 0;
          *a2 = v19;
          goto LABEL_24;
        }

        v24 = 3892330499;
        v23 = "CFDataCreate";
        v25 = 1852;
        goto LABEL_37;
      }

      __AFCGetFileHash_cold_2(&v29);
LABEL_35:
      h0 = v29;
      goto LABEL_24;
    }

    v24 = 3892330499;
    v23 = "CFAllocatorAlocate";
    v25 = 1830;
  }

LABEL_37:
  h0 = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, v24, v8, v25, v23);
LABEL_24:
  if (v9)
  {
    CFRelease(v9);
  }

LABEL_26:
  v21 = *MEMORY[0x29EDCA608];
  return h0;
}

uint64_t __AFCProcessFileRefSetImmutableHintPacket_block_invoke(uint64_t a1)
{
  result = fcntl(*(a1 + 40), 68, *(a1 + 44));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t AFCSendPacket(uint64_t a1, uint64_t a2, void *a3, size_t a4)
{
  v8 = 3892330503;
  v9 = *(a2 + 16);
  AFCLockLock(*(a1 + 144));
  if (*(a1 + 16) == 1)
  {
    if (a3 || !a4)
    {
      if (v9 + a4 <= 0x2000 && (v10 = malloc_type_malloc(0x2000uLL, 0x100004077774924uLL)) != 0)
      {
        v11 = v10;
        __memcpy_chk();
        memcpy(&v11[v9], a3, a4);
        AFCLogPacketInfo(4, "AFCSendHeader", a2);
        v8 = AFCSendData(a1, v11, v9 + a4);
        v12 = *(a2 + 32);
        v13 = *(a2 + 16);
        v14 = *(a2 + 8);
        v15 = *(a2 + 24);
        free(v11);
      }

      else
      {
        v16 = AFCSendHeader(a1, a2);
        if (!v16)
        {
          v16 = AFCSendData(a1, a3, a4);
        }

        v8 = v16;
      }
    }
  }

  else
  {
    v8 = 3892330507;
  }

  AFCLockUnlock(*(a1 + 144));
  return v8;
}

BOOL __ConvertDictEntry(_BOOL8 result, __CFString *a2, __CFData *a3)
{
  if (result)
  {
    if (a2)
    {
      result = __AppendValue(result, a3);
      if (result)
      {

        return __AppendValue(a2, a3);
      }
    }
  }

  return result;
}

uint64_t AFCSendDataPacket(uint64_t a1, uint64_t a2, char *a3, unint64_t a4)
{
  AFCLog(5, "Writing data packet with data length %u\n", a4);
  if (*(a1 + 68) == 1)
  {
    return *(a1 + 64);
  }

  v10[0] = 0x4141504C36414643;
  v10[1] = a4 + 40;
  v10[2] = 40;
  v10[4] = 2;
  if (a2)
  {
    v9 = *(a2 + 24);
  }

  else
  {
    v9 = -1;
  }

  v10[3] = v9;
  result = AFCSendHeader(a1, v10);
  if (!result)
  {
    return AFCSendData(a1, a3, a4);
  }

  return result;
}

BOOL __AppendValue(__CFString *a1, __CFData *a2)
{
  v3 = a1;
  v4 = CFGetTypeID(a1);
  if (v4 != CFStringGetTypeID())
  {
    if (v4 == CFNumberGetTypeID())
    {
      if (CFNumberIsFloatType(v3))
      {
        valuePtr = 0;
        if (!CFNumberGetValue(v3, kCFNumberDoubleType, &valuePtr))
        {
          return 0;
        }

        v5 = CFStringCreateWithFormat(0, 0, @"%g", valuePtr);
      }

      else
      {
        valuePtr = 0;
        if (!CFNumberGetValue(v3, kCFNumberSInt64Type, &valuePtr))
        {
          return 0;
        }

        v5 = CFStringCreateWithFormat(0, 0, @"%qi", valuePtr);
      }
    }

    else
    {
      if (v4 == CFBooleanGetTypeID())
      {
        if (*MEMORY[0x29EDB8F00] == v3)
        {
          v3 = @"1";
        }

        else
        {
          v3 = @"0";
        }

        goto LABEL_16;
      }

      v5 = CFCopyDescription(v3);
    }

    v3 = v5;
    if (v5)
    {
      goto LABEL_16;
    }

    return 0;
  }

  CFRetain(v3);
  if (!v3)
  {
    return 0;
  }

LABEL_16:
  v6 = 9 * CFStringGetLength(v3);
  v7 = MEMORY[0x29C289090](0, v6 + 1, 0x100004077774924, 0);
  if (v7)
  {
    v8 = v7;
    usedBufLen = 0;
    Length = CFStringGetLength(v3);
    v17.location = 0;
    v17.length = Length;
    Bytes = CFStringGetBytes(v3, v17, 0x8000100u, 0, 0, v8, v6, &usedBufLen);
    v11 = Length == Bytes;
    if (Length == Bytes)
    {
      v12 = usedBufLen++;
      v13 = usedBufLen;
      v8[v12] = 0;
      CFDataAppendBytes(a2, v8, v13);
    }

    CFAllocatorDeallocate(0, v8);
  }

  else
  {
    v11 = 0;
  }

  CFRelease(v3);
  return v11;
}

void AFCIteratorCreate_cold_1(void *cf)
{
  v2 = cf[3];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = cf[2];
  if (v3)
  {
    CFRelease(v3);
  }

  CFRelease(cf);
}

uint64_t AFCFileDescriptorCreateReadOperation(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    return 0;
  }

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  AFCHeaderInit(v2, v3, v4, v5, v6);
  v17 = *(a1 + 24);
  v7 = CFGetAllocator(a1);
  return OUTLINED_FUNCTION_15(v7, v8, v9, v10, v11, v12, v13, v14, v16);
}

uint64_t AFCFileDescriptorCreateReadAtPositionOperation(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    return 0;
  }

  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_5();
  AFCHeaderInit(v2, v3, v4, v5, v6);
  v17 = *(a1 + 24);
  v7 = CFGetAllocator(a1);
  return OUTLINED_FUNCTION_15(v7, v8, v9, v10, v11, v12, v13, v14, v16);
}

uint64_t AFCFileDescriptorCreateWriteOperation(uint64_t a1, CFDataRef theData, uint64_t a3)
{
  if (!*(a1 + 32))
  {
    return 0;
  }

  if (theData)
  {
    CFDataGetLength(theData);
  }

  OUTLINED_FUNCTION_2();
  AFCHeaderInit(v5, 16, 48, v6, 0);
  v13 = *(a1 + 24);
  CFGetAllocator(a1);
  OUTLINED_FUNCTION_5();
  return AFCOperationCreate(v7, v8, v9, v10, v11, a3);
}

uint64_t AFCFileDescriptorCreateWriteAtPositionOperation(uint64_t a1, CFDataRef theData, uint64_t a3, uint64_t a4)
{
  if (!*(a1 + 32))
  {
    return 0;
  }

  if (theData)
  {
    CFDataGetLength(theData);
  }

  OUTLINED_FUNCTION_1();
  AFCHeaderInit(v6, 40, 56, v7, 0);
  v14 = *(a1 + 24);
  CFGetAllocator(a1);
  OUTLINED_FUNCTION_5();
  return AFCOperationCreate(v8, v9, v10, v11, v12, a4);
}

uint64_t AFCFileDescriptorCreateSetPositionOperation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a1 + 32))
  {
    return 0;
  }

  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_5();
  AFCHeaderInit(v6, v7, v8, v9, v10);
  v17 = *(a1 + 24);
  CFGetAllocator(a1);
  OUTLINED_FUNCTION_3();
  return AFCOperationCreate(v11, v12, v13, v14, v15, a4);
}

uint64_t AFCFileDescriptorCreateGetPositionOperation(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 32))
  {
    return 0;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  AFCHeaderInit(v4, v5, v6, v7, v8);
  v15 = *(a1 + 24);
  CFGetAllocator(a1);
  OUTLINED_FUNCTION_3();
  return AFCOperationCreate(v9, v10, v11, v12, v13, a2);
}

uint64_t AFCFileDescriptorCreateSetSizeOperation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 32))
  {
    return 0;
  }

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  AFCHeaderInit(v5, v6, v7, v8, v9);
  v16 = *(a1 + 24);
  CFGetAllocator(a1);
  OUTLINED_FUNCTION_3();
  return AFCOperationCreate(v10, v11, v12, v13, v14, a3);
}

uint64_t AFCFileDescriptorCreateLockOperation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 32))
  {
    return 0;
  }

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  AFCHeaderInit(v5, v6, v7, v8, v9);
  v16 = *(a1 + 24);
  CFGetAllocator(a1);
  OUTLINED_FUNCTION_3();
  return AFCOperationCreate(v10, v11, v12, v13, v14, a3);
}

uint64_t AFCFileDescriptorCreateUnlockOperation(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 32))
  {
    return 0;
  }

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  AFCHeaderInit(v4, v5, v6, v7, v8);
  v15 = *(a1 + 24);
  CFGetAllocator(a1);
  OUTLINED_FUNCTION_3();
  return AFCOperationCreate(v9, v10, v11, v12, v13, a2);
}

uint64_t AFCFileDescriptorCreateSetImmutableHintOperation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 32))
  {
    return 0;
  }

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  AFCHeaderInit(v5, v6, v7, v8, v9);
  v16 = *(a1 + 24);
  CFGetAllocator(a1);
  OUTLINED_FUNCTION_3();
  return AFCOperationCreate(v10, v11, v12, v13, v14, a3);
}

uint64_t AFCOperationCreateGetFileInfo(int a1, const __CFString *a2)
{
  OUTLINED_FUNCTION_7(a1, a2);
  OUTLINED_FUNCTION_0();
  if (!v4)
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_4(v4);
  if (v5)
  {
    strlen((v2 + 40));
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_5();
    AFCHeaderInit(v9, v10, v11, v12, v13);
    OUTLINED_FUNCTION_3();
    v19 = AFCOperationCreate(v14, v15, v16, v17, v18, v3);
  }

  else
  {
    __AFCSetErrorResult_0(v5, v6, v7, v8, 1035);
    v19 = 0;
  }

  OUTLINED_FUNCTION_14();
  return v19;
}

uint64_t AFCOperationCreateRemovePath(int a1, const __CFString *a2)
{
  OUTLINED_FUNCTION_7(a1, a2);
  OUTLINED_FUNCTION_0();
  if (!v4)
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_4(v4);
  if (v5)
  {
    strlen((v2 + 40));
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_5();
    AFCHeaderInit(v9, v10, v11, v12, v13);
    OUTLINED_FUNCTION_3();
    v19 = AFCOperationCreate(v14, v15, v16, v17, v18, v3);
  }

  else
  {
    __AFCSetErrorResult_0(v5, v6, v7, v8, 1065);
    v19 = 0;
  }

  OUTLINED_FUNCTION_14();
  return v19;
}

uint64_t AFCOperationCreateRenamePath(int a1, CFStringRef theString, const __CFString *a3, uint64_t a4)
{
  Length = CFStringGetLength(theString);
  v8 = 9 * (CFStringGetLength(a3) + Length);
  v9 = MEMORY[0x29C289090](0, v8 + 44, 0x10000400A747E1ELL, 0);
  if (!v9)
  {
    return 0;
  }

  v11 = (v9 + 40);
  v12 = OUTLINED_FUNCTION_17(v9, v10, v8 + 4);
  if (!v12)
  {
    v29 = 1098;
LABEL_10:
    __AFCSetErrorResult_0(v12, v13, v14, v15, v29);
    v27 = 0;
    goto LABEL_5;
  }

  v16 = strlen(v11);
  v12 = OUTLINED_FUNCTION_10(v16);
  if (!v12)
  {
    v29 = 1100;
    goto LABEL_10;
  }

  strlen(v11);
  strlen(theString);
  OUTLINED_FUNCTION_5();
  AFCHeaderInit(v17, v18, v19, v20, v21);
  OUTLINED_FUNCTION_3();
  v27 = AFCOperationCreate(v22, v23, v24, v25, v26, a4);
LABEL_5:
  OUTLINED_FUNCTION_14();
  return v27;
}

uint64_t AFCOperationCreateSetModTime(int a1, const __CFString *a2, uint64_t a3, uint64_t a4)
{
  v6 = 9 * OUTLINED_FUNCTION_9(a1, a2);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  if (!v7)
  {
    return 0;
  }

  v8 = OUTLINED_FUNCTION_13(v7);
  v10 = OUTLINED_FUNCTION_8(v8, v9, v6 + 2);
  if (v10)
  {
    strlen((v4 + 48));
    OUTLINED_FUNCTION_5();
    AFCHeaderInit(v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_3();
    v24 = AFCOperationCreate(v19, v20, v21, v22, v23, a4);
  }

  else
  {
    __AFCSetErrorResult_0(v10, v11, v12, v13, 1132);
    v24 = 0;
  }

  OUTLINED_FUNCTION_18();
  return v24;
}

uint64_t AFCOperationCreateLinkPath(int a1, uint64_t a2, CFStringRef theString, const __CFString *a4, uint64_t a5)
{
  Length = CFStringGetLength(theString);
  v10 = 9 * (CFStringGetLength(a4) + Length);
  OUTLINED_FUNCTION_6();
  v11 = MEMORY[0x29C289090](0, v10 + 52);
  if (!v11)
  {
    return 0;
  }

  *(v11 + 40) = a2;
  v13 = (v11 + 48);
  v14 = OUTLINED_FUNCTION_17(v11, v12, v10 + 12);
  if (!v14)
  {
    v31 = 1165;
LABEL_10:
    __AFCSetErrorResult_0(v14, v15, v16, v17, v31);
    v29 = 0;
    goto LABEL_5;
  }

  v18 = strlen(v13);
  v14 = OUTLINED_FUNCTION_10(v18);
  if (!v14)
  {
    v31 = 1168;
    goto LABEL_10;
  }

  strlen(v13);
  strlen(theString);
  OUTLINED_FUNCTION_5();
  AFCHeaderInit(v19, v20, v21, v22, v23);
  OUTLINED_FUNCTION_3();
  v29 = AFCOperationCreate(v24, v25, v26, v27, v28, a5);
LABEL_5:
  OUTLINED_FUNCTION_14();
  return v29;
}

uint64_t AFCOperationCreateReadDirectory(int a1, const __CFString *a2)
{
  OUTLINED_FUNCTION_7(a1, a2);
  OUTLINED_FUNCTION_0();
  if (!v4)
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_4(v4);
  if (v5)
  {
    strlen((v2 + 40));
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_5();
    AFCHeaderInit(v9, v10, v11, v12, v13);
    OUTLINED_FUNCTION_3();
    v19 = AFCOperationCreate(v14, v15, v16, v17, v18, v3);
  }

  else
  {
    __AFCSetErrorResult_0(v5, v6, v7, v8, 1200);
    v19 = 0;
  }

  OUTLINED_FUNCTION_14();
  return v19;
}

uint64_t AFCOperationCreateMakeDirectory(int a1, const __CFString *a2)
{
  OUTLINED_FUNCTION_7(a1, a2);
  OUTLINED_FUNCTION_0();
  if (!v4)
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_4(v4);
  if (v5)
  {
    strlen((v2 + 40));
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_5();
    AFCHeaderInit(v9, v10, v11, v12, v13);
    OUTLINED_FUNCTION_3();
    v19 = AFCOperationCreate(v14, v15, v16, v17, v18, v3);
  }

  else
  {
    __AFCSetErrorResult_0(v5, v6, v7, v8, 1232);
    v19 = 0;
  }

  OUTLINED_FUNCTION_14();
  return v19;
}

uint64_t AFCOperationCreateOpenFile(int a1, const __CFString *a2, uint64_t a3, uint64_t a4)
{
  v6 = 9 * OUTLINED_FUNCTION_9(a1, a2);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  if (!v7)
  {
    return 0;
  }

  v8 = OUTLINED_FUNCTION_13(v7);
  v10 = OUTLINED_FUNCTION_8(v8, v9, v6 + 1);
  if (v10)
  {
    strlen((v4 + 48));
    OUTLINED_FUNCTION_5();
    AFCHeaderInit(v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_3();
    v24 = AFCOperationCreate(v19, v20, v21, v22, v23, a4);
  }

  else
  {
    __AFCSetErrorResult_0(v10, v11, v12, v13, 1265);
    v24 = 0;
  }

  OUTLINED_FUNCTION_18();
  return v24;
}

uint64_t AFCOperationCreateGetFileHash(int a1, const __CFString *a2)
{
  OUTLINED_FUNCTION_7(a1, a2);
  OUTLINED_FUNCTION_0();
  if (!v4)
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_4(v4);
  if (v5)
  {
    strlen((v2 + 40));
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_5();
    AFCHeaderInit(v9, v10, v11, v12, v13);
    OUTLINED_FUNCTION_3();
    v19 = AFCOperationCreate(v14, v15, v16, v17, v18, v3);
  }

  else
  {
    __AFCSetErrorResult_0(v5, v6, v7, v8, 1296);
    v19 = 0;
  }

  OUTLINED_FUNCTION_14();
  return v19;
}

uint64_t AFCOperationCreateGetFileHashWithRange(int a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = 9 * OUTLINED_FUNCTION_9(a1, a2);
  OUTLINED_FUNCTION_12();
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;
  v11 = OUTLINED_FUNCTION_8(v9, (v9 + 56), v8 + 1);
  if (v11)
  {
    strlen((v10 + 56));
    OUTLINED_FUNCTION_5();
    AFCHeaderInit(v15, v16, v17, v18, v19);
    OUTLINED_FUNCTION_3();
    v25 = AFCOperationCreate(v20, v21, v22, v23, v24, a5);
  }

  else
  {
    __AFCSetErrorResult_0(v11, v12, v13, v14, 1329);
    v25 = 0;
  }

  OUTLINED_FUNCTION_18();
  return v25;
}

uint64_t AFCOperationCreateGetSizeOfPathContents(int a1, const __CFString *a2, uint64_t a3, uint64_t a4)
{
  v6 = 9 * OUTLINED_FUNCTION_9(a1, a2);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  if (!v7)
  {
    return 0;
  }

  v8 = OUTLINED_FUNCTION_13(v7);
  v10 = OUTLINED_FUNCTION_8(v8, v9, v6 + 1);
  if (v10)
  {
    strlen((v4 + 48));
    OUTLINED_FUNCTION_5();
    AFCHeaderInit(v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_3();
    v24 = AFCOperationCreate(v19, v20, v21, v22, v23, a4);
  }

  else
  {
    __AFCSetErrorResult_0(v10, v11, v12, v13, 1362);
    v24 = 0;
  }

  OUTLINED_FUNCTION_18();
  return v24;
}

uint64_t AFCOperationCreateRemovePathAndContents(int a1, const __CFString *a2)
{
  OUTLINED_FUNCTION_7(a1, a2);
  OUTLINED_FUNCTION_0();
  if (!v4)
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_4(v4);
  if (v5)
  {
    strlen((v2 + 40));
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_5();
    AFCHeaderInit(v9, v10, v11, v12, v13);
    OUTLINED_FUNCTION_3();
    v19 = AFCOperationCreate(v14, v15, v16, v17, v18, v3);
  }

  else
  {
    __AFCSetErrorResult_0(v5, v6, v7, v8, 1393);
    v19 = 0;
  }

  OUTLINED_FUNCTION_14();
  return v19;
}

void AFCOperationCreate_cold_1(const void *a1)
{
  AFCLog(5, "AFCOperationCreate %p failed", a1);

  CFRelease(a1);
}

uint64_t __AFCConnectionSetBlockSize(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v23 = *MEMORY[0x29EDCA608];
  v21 = 0u;
  memset(v20, 0, sizeof(v20));
  memset(v22, 0, sizeof(v22));
  ptr = 0;
  v8 = AFCLockLock(a1[17]);
  if (v8 || (AFCHeaderInit(v20, a2, 48, 0, 0), *(&v21 + 1) = a3, v8 = AFCSendHeader(a1, v20), v8))
  {
    v14 = v8;
LABEL_17:
    if (v14)
    {
      AFCConnectionSetFatalError(a1, v14);
    }

    goto LABEL_19;
  }

  v9 = AFCReadPacketHeader(a1, v22, 0x80uLL, &ptr);
  v10 = ptr;
  if (v9)
  {
    v14 = v9;
    v15 = 0;
  }

  else
  {
    if (ptr)
    {
      v11 = ptr;
    }

    else
    {
      v11 = v22;
    }

    if (*(v11 + 4) == 1)
    {
      v12 = v22;
      if (ptr)
      {
        v12 = ptr;
      }

      v13 = *(v12 + 10);
      if (v13)
      {
        v14 = v13 | 0xE8004000;
      }

      else
      {
        v14 = 0;
        *a4 = a3;
      }

      v15 = 1;
    }

    else
    {
      v15 = 0;
      v14 = 0;
    }
  }

  if (v10)
  {
    v16 = CFGetAllocator(a1);
    CFAllocatorDeallocate(v16, ptr);
  }

  if ((v15 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_19:
  AFCLockUnlock(a1[17]);
  v17 = *MEMORY[0x29EDCA608];
  return v14;
}

uint64_t AFCDeviceInfoOpen(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = 16407;
  if (a1 && a2)
  {
    v7 = CFGetAllocator(a1);
    DeviceInfo = AFCOperationCreateGetDeviceInfo(v7, 0);
    if (DeviceInfo)
    {
      v9 = DeviceInfo;
      AFCConnectionGetIOTimeout(a1);
      v10 = OUTLINED_FUNCTION_4_0();
      ResultStatus = AFCConnectionProcessOperation(v10, v9, v11);
      if (ResultStatus || (ResultStatus = AFCOperationGetResultStatus(v9)) != 0)
      {
        v4 = ResultStatus;
      }

      else
      {
        ResultObject = AFCOperationGetResultObject(v9);
        if (ResultObject)
        {
          v14 = ResultObject;
          v15 = CFGetTypeID(ResultObject);
          if (v15 == CFDictionaryGetTypeID())
          {
            v16 = CFGetAllocator(a1);
            v4 = 0;
            *a2 = AFCIteratorCreate(v16, v14);
          }
        }
      }

      CFRelease(v9);
    }

    else
    {
      v4 = 16387;
    }
  }

  else
  {
    v4 = __AFCSetErrorResult_1(a1, a2, 3892330503, a4, 171, "NULL argument");
  }

  return v4 & 0x1FFF;
}

uint64_t AFCFileInfoOpen()
{
  OUTLINED_FUNCTION_0_0();
  if (v1 && v2 && (v5 = v3) != 0)
  {
    v6 = v1;
    v7 = CFGetAllocator(v1);
    v8 = OUTLINED_FUNCTION_2_0(v7);
    if (v8)
    {
      v9 = v8;
      v10 = CFGetAllocator(v6);
      FileInfo = AFCOperationCreateGetFileInfo(v10, v9);
      CFRelease(v9);
      if (FileInfo)
      {
        AFCConnectionGetIOTimeout(v6);
        v12 = OUTLINED_FUNCTION_4_0();
        ResultStatus = AFCConnectionProcessOperation(v12, FileInfo, v13);
        if (ResultStatus || (ResultStatus = AFCOperationGetResultStatus(FileInfo)) != 0)
        {
          LOWORD(v0) = ResultStatus;
        }

        else
        {
          ResultObject = AFCOperationGetResultObject(FileInfo);
          if (ResultObject && (v16 = ResultObject, v17 = CFGetTypeID(ResultObject), v17 == CFDictionaryGetTypeID()))
          {
            v18 = CFGetAllocator(v6);
            v19 = AFCIteratorCreate(v18, v16);
            if (v19)
            {
              *v5 = v19;
              LOWORD(v0) = 0;
            }
          }

          else
          {
            LOWORD(v0) = v0 + 20;
          }
        }

        CFRelease(FileInfo);
      }
    }
  }

  else
  {
    LOWORD(v0) = __AFCSetErrorResult_1(v1, v2, (v0 + 4), v4, 203, "NULL argument");
  }

  return v0 & 0x1FFF;
}

uint64_t AFCRemovePath()
{
  OUTLINED_FUNCTION_0_0();
  if (v1 && (v4 = v2) != 0)
  {
    v5 = v1;
    v6 = CFGetAllocator(v1);
    v7 = CFStringCreateWithCString(v6, v4, 0x8000100u);
    if (v7)
    {
      v8 = v7;
      v9 = CFGetAllocator(v5);
      v10 = AFCOperationCreateRemovePath(v9, v8);
      CFRelease(v8);
      if (v10)
      {
        IOTimeout = AFCConnectionGetIOTimeout(v5);
        v12 = AFCConnectionProcessOperation(v5, v10, IOTimeout);
        if (!v12)
        {
          LOWORD(v12) = AFCOperationGetResultStatus(v10);
        }

        LOWORD(v0) = v12;
        CFRelease(v10);
      }
    }
  }

  else
  {
    LOWORD(v0) = __AFCSetErrorResult_1(v1, v2, (v0 + 4), v3, 243, "NULL argument");
  }

  return v0 & 0x1FFF;
}

uint64_t AFCFileRefOpen()
{
  OUTLINED_FUNCTION_0_0();
  if (v1 && (v5 = v2) != 0 && (v6 = v4) != 0)
  {
    v7 = v3;
    v8 = v1;
    v9 = CFGetAllocator(v1);
    v10 = OUTLINED_FUNCTION_2_0(v9);
    if (v10)
    {
      v11 = v10;
      v12 = CFGetAllocator(v8);
      OpenFile = AFCOperationCreateOpenFile(v12, v11, v7, 0);
      CFRelease(v11);
      if (OpenFile)
      {
        IOTimeout = AFCConnectionGetIOTimeout(v8);
        ResultStatus = AFCConnectionProcessOperation(v8, OpenFile, IOTimeout);
        if (ResultStatus || (ResultStatus = AFCOperationGetResultStatus(OpenFile)) != 0)
        {
          LOWORD(v0) = ResultStatus;
        }

        else
        {
          ResultObject = AFCOperationGetResultObject(OpenFile);
          AFCFileDescriptorSetRemoteName(ResultObject, v5);
          LOWORD(v0) = v0 + 20;
          if (ResultObject)
          {
            v17 = CFGetTypeID(ResultObject);
            if (v17 == AFCFileDescriptorGetTypeID())
            {
              CFRetain(ResultObject);
              *v6 = ResultObject;
              LOWORD(v0) = 0;
            }
          }
        }

        CFRelease(OpenFile);
      }
    }
  }

  else
  {
    LOWORD(v0) = __AFCSetErrorResult_1(v1, v2, (v0 + 4), v4, 373, "NULL argument");
  }

  return v0 & 0x1FFF;
}

uint64_t AFCFileRefRead()
{
  OUTLINED_FUNCTION_0_0();
  if (v1 && (v5 = v2) != 0 && v3 && (v6 = v4) != 0)
  {
    v7 = v1;
    v8 = *v4;
    AFCFileDescriptorGetRemoteName(v2);
    v9 = *MEMORY[0x29EDB8EE8];
    v10 = *v6;
    Operation = AFCFileDescriptorCreateReadOperation(v5);
    if (Operation)
    {
      v12 = Operation;
      IOTimeout = AFCConnectionGetIOTimeout(v7);
      ResultStatus = AFCConnectionProcessOperation(v7, v12, IOTimeout);
      if (ResultStatus || (ResultStatus = AFCOperationGetResultStatus(v12)) != 0)
      {
        LOWORD(v0) = ResultStatus;
      }

      else
      {
        ResultObject = AFCOperationGetResultObject(v12);
        v16 = CFGetTypeID(ResultObject);
        if (v16 == CFDataGetTypeID())
        {
          *v6 = CFDataGetLength(ResultObject);
          AFCFileDescriptorGetRemoteName(v5);
          v17 = *v6;
          LOWORD(v0) = 0;
        }

        else
        {
          LOWORD(v0) = v0 + 20;
        }
      }

      CFRelease(v12);
    }
  }

  else
  {
    LOWORD(v0) = __AFCSetErrorResult_1(v1, v2, (v0 + 4), v4, 412, "NULL argument");
  }

  return v0 & 0x1FFF;
}

uint64_t AFCFileRefWrite()
{
  OUTLINED_FUNCTION_0_0();
  if (v1 && (v5 = v2) != 0 && (v6 = v3) != 0)
  {
    v7 = v4;
    v8 = v1;
    AFCFileDescriptorGetRemoteName(v2);
    v9 = CFDataCreateWithBytesNoCopy(0, v6, v7, *MEMORY[0x29EDB8EE8]);
    if (v9)
    {
      v10 = v9;
      v11 = AFCFileDescriptorCreateWriteOperation(v5, v9, 0);
      if (v11)
      {
        v12 = v11;
        IOTimeout = AFCConnectionGetIOTimeout(v8);
        v14 = AFCConnectionProcessOperation(v8, v12, IOTimeout);
        if (v14)
        {
          LOWORD(v0) = v14;
        }

        else
        {
          LOWORD(v0) = AFCOperationGetResultStatus(v12);
          AFCFileDescriptorGetRemoteName(v5);
        }

        CFRelease(v12);
      }

      CFRelease(v10);
    }
  }

  else
  {
    LOWORD(v0) = __AFCSetErrorResult_1(v1, v2, (v0 + 4), v4, 446, "NULL argument");
  }

  return v0 & 0x1FFF;
}

uint64_t AFCFileRefClose()
{
  OUTLINED_FUNCTION_0_0();
  if (v1 && (v4 = v2) != 0)
  {
    v5 = v1;
    CloseOperation = AFCFileDescriptorCreateCloseOperation(v2, 0);
    if (CloseOperation)
    {
      v7 = CloseOperation;
      AFCConnectionGetIOTimeout(v5);
      v8 = OUTLINED_FUNCTION_4_0();
      v10 = AFCConnectionProcessOperation(v8, v7, v9);
      if (v10)
      {
        LOWORD(v0) = v10;
      }

      else
      {
        LOWORD(v0) = AFCOperationGetResultStatus(v7);
        AFCFileDescriptorInvalidate(v4);
        CFRelease(v4);
      }

      CFRelease(v7);
    }
  }

  else
  {
    LOWORD(v0) = __AFCSetErrorResult_1(v1, v2, (v0 + 4), v3, 475, "NULL argument");
  }

  return v0 & 0x1FFF;
}

uint64_t AFCFileRefSeek()
{
  OUTLINED_FUNCTION_0_0();
  if (v2 && v3)
  {
    v5 = OUTLINED_FUNCTION_5_0(v2, v3);
    if (AFCFileDescriptorCreateSetPositionOperation(v5, v7, v6, 0))
    {
      v8 = OUTLINED_FUNCTION_3_0();
      AFCConnectionGetIOTimeout(v8);
      v9 = OUTLINED_FUNCTION_1_0();
      if (!AFCConnectionProcessOperation(v9, v1, v10))
      {
        AFCOperationGetResultStatus(v1);
      }

      OUTLINED_FUNCTION_6_0();
    }
  }

  else
  {
    LOWORD(v0) = __AFCSetErrorResult_1(v2, v3, (v0 + 4), v4, 502, "NULL argument");
  }

  return v0 & 0x1FFF;
}

uint64_t AFCFileRefTell(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = 16407;
  if (a1 && a2 && a3)
  {
    PositionOperation = AFCFileDescriptorCreateGetPositionOperation(a2, 0);
    if (PositionOperation)
    {
      v8 = PositionOperation;
      AFCConnectionGetIOTimeout(a1);
      v9 = OUTLINED_FUNCTION_4_0();
      ResultStatus = AFCConnectionProcessOperation(v9, v8, v10);
      if (ResultStatus || (ResultStatus = AFCOperationGetResultStatus(v8)) != 0)
      {
        v4 = ResultStatus;
      }

      else
      {
        ResultObject = AFCOperationGetResultObject(v8);
        if (ResultObject)
        {
          v13 = ResultObject;
          v14 = CFGetTypeID(ResultObject);
          if (v14 == CFNumberGetTypeID())
          {
            if (CFNumberGetValue(v13, kCFNumberSInt64Type, a3))
            {
              v4 = 0;
            }

            else
            {
              v4 = 16407;
            }
          }
        }
      }

      CFRelease(v8);
    }

    else
    {
      v4 = 16387;
    }
  }

  else
  {
    v4 = __AFCSetErrorResult_1(a1, a2, 3892330503, a4, 526, "NULL argument");
  }

  return v4 & 0x1FFF;
}

uint64_t AFCFileRefLock()
{
  OUTLINED_FUNCTION_0_0();
  if (v2 && v3)
  {
    v5 = OUTLINED_FUNCTION_5_0(v2, v3);
    if (AFCFileDescriptorCreateLockOperation(v5, v6, 0))
    {
      v7 = OUTLINED_FUNCTION_3_0();
      AFCConnectionGetIOTimeout(v7);
      v8 = OUTLINED_FUNCTION_1_0();
      if (!AFCConnectionProcessOperation(v8, v1, v9))
      {
        AFCOperationGetResultStatus(v1);
      }

      OUTLINED_FUNCTION_6_0();
    }
  }

  else
  {
    LOWORD(v0) = __AFCSetErrorResult_1(v2, v3, (v0 + 4), v4, 556, "NULL argument");
  }

  return v0 & 0x1FFF;
}

uint64_t AFCFileRefSetFileSize()
{
  OUTLINED_FUNCTION_0_0();
  if (v2 && v3)
  {
    v5 = OUTLINED_FUNCTION_5_0(v2, v3);
    if (AFCFileDescriptorCreateSetSizeOperation(v5, v6, 0))
    {
      v7 = OUTLINED_FUNCTION_3_0();
      AFCConnectionGetIOTimeout(v7);
      v8 = OUTLINED_FUNCTION_1_0();
      if (!AFCConnectionProcessOperation(v8, v1, v9))
      {
        AFCOperationGetResultStatus(v1);
      }

      OUTLINED_FUNCTION_6_0();
    }
  }

  else
  {
    LOWORD(v0) = __AFCSetErrorResult_1(v2, v3, (v0 + 4), v4, 580, "NULL argument");
  }

  return v0 & 0x1FFF;
}

uint64_t AFCFileRefUnlock()
{
  OUTLINED_FUNCTION_0_0();
  if (v2 && v3)
  {
    v5 = OUTLINED_FUNCTION_5_0(v2, v3);
    if (AFCFileDescriptorCreateUnlockOperation(v5, 0))
    {
      v6 = OUTLINED_FUNCTION_3_0();
      AFCConnectionGetIOTimeout(v6);
      v7 = OUTLINED_FUNCTION_1_0();
      if (!AFCConnectionProcessOperation(v7, v1, v8))
      {
        AFCOperationGetResultStatus(v1);
      }

      OUTLINED_FUNCTION_6_0();
    }
  }

  else
  {
    LOWORD(v0) = __AFCSetErrorResult_1(v2, v3, (v0 + 4), v4, 604, "NULL argument");
  }

  return v0 & 0x1FFF;
}

uint64_t AFCDirectoryOpen()
{
  OUTLINED_FUNCTION_0_0();
  if (v1 && v2 && (v5 = v3) != 0)
  {
    v6 = v1;
    v7 = CFGetAllocator(v1);
    v8 = OUTLINED_FUNCTION_2_0(v7);
    if (v8)
    {
      v9 = v8;
      v10 = CFGetAllocator(v6);
      Directory = AFCOperationCreateReadDirectory(v10, v9);
      if (Directory)
      {
        v12 = Directory;
        IOTimeout = AFCConnectionGetIOTimeout(v6);
        ResultStatus = AFCConnectionProcessOperation(v6, v12, IOTimeout);
        if (ResultStatus || (ResultStatus = AFCOperationGetResultStatus(v12)) != 0)
        {
          LOWORD(v0) = ResultStatus;
        }

        else
        {
          ResultObject = AFCOperationGetResultObject(v12);
          LOWORD(v0) = v0 + 20;
          if (ResultObject)
          {
            v16 = ResultObject;
            v17 = CFGetTypeID(ResultObject);
            if (v17 == CFArrayGetTypeID())
            {
              v18 = CFGetAllocator(v6);
              LOWORD(v0) = 0;
              *v5 = AFCIteratorCreate(v18, v16);
            }
          }
        }

        CFRelease(v9);
        v19 = v12;
      }

      else
      {
        v19 = v9;
      }

      CFRelease(v19);
    }
  }

  else
  {
    LOWORD(v0) = __AFCSetErrorResult_1(v1, v2, (v0 + 4), v4, 635, "NULL argument");
  }

  return v0 & 0x1FFF;
}

uint64_t AFCDirectoryCreate()
{
  OUTLINED_FUNCTION_0_0();
  if (v1 && (v4 = v2) != 0)
  {
    v5 = v1;
    v6 = CFGetAllocator(v1);
    if (OUTLINED_FUNCTION_2_0(v6))
    {
      v7 = OUTLINED_FUNCTION_3_0();
      v8 = CFGetAllocator(v7);
      Directory = AFCOperationCreateMakeDirectory(v8, v4);
      if (Directory)
      {
        v10 = Directory;
        AFCConnectionGetIOTimeout(v5);
        v11 = OUTLINED_FUNCTION_1_0();
        v13 = AFCConnectionProcessOperation(v11, v10, v12);
        if (!v13)
        {
          LOWORD(v13) = AFCOperationGetResultStatus(v10);
        }

        LOWORD(v0) = v13;
        CFRelease(v10);
      }

      CFRelease(v4);
    }
  }

  else
  {
    LOWORD(v0) = __AFCSetErrorResult_1(v1, v2, (v0 + 4), v3, 720, "NULL argument");
  }

  return v0 & 0x1FFF;
}

void AFCRenamePath_cold_1(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  AFCConnectionGetIOTimeout(a1);
  v5 = OUTLINED_FUNCTION_1_0();
  ResultStatus = AFCConnectionProcessOperation(v5, a2, v6);
  if (!ResultStatus)
  {
    ResultStatus = AFCOperationGetResultStatus(a2);
  }

  *a3 = ResultStatus;

  CFRelease(a2);
}

uint64_t __AFCCreateDictionaryOrArrayFromData(const __CFAllocator *a1, void *a2, uint64_t a3, int a4, CFDictionaryRef *a5)
{
  v5 = 3892330503;
  if (!a2 || !a5)
  {
    return v5;
  }

  v11 = MEMORY[0x29EDB9000];
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  v13 = CFArrayCreateMutable(0, 0, v11);
  v16 = v13;
  if (!Mutable || !v13)
  {
    v29 = 3892330499;
    v28 = "CFArrayCreateMutable";
    v30 = 45;
    goto LABEL_29;
  }

  if (a3 < 1)
  {
LABEL_16:
    if (a4)
    {
      Count = CFArrayGetCount(Mutable);
      v13 = CFArrayGetCount(v16);
      if (Count != v13)
      {
        v28 = "Key without value";
        v29 = 3892330503;
        v30 = 71;
        goto LABEL_29;
      }

      if (Count)
      {
        v25 = CFArrayGetCount(Mutable);
        v13 = MEMORY[0x29C289090](0, 16 * v25, 0x80040B8603338, 0);
        if (!v13)
        {
          v29 = 3892330499;
          v28 = "CFAllocatorAllocate failed for %d keys";
          v30 = 78;
          goto LABEL_29;
        }

        v26 = v13;
        v31.location = 0;
        v31.length = Count;
        CFArrayGetValues(Mutable, v31, v13);
        v32.length = CFArrayGetCount(v16);
        v32.location = 0;
        CFArrayGetValues(v16, v32, &v26[Count]);
        *a5 = CFDictionaryCreate(0, v26, &v26[Count], Count, MEMORY[0x29EDB8F28], MEMORY[0x29EDB9020]);
        CFAllocatorDeallocate(0, v26);
        v5 = 0;
      }

      else
      {
        v5 = 0;
        *a5 = CFDictionaryCreate(0, 0, 0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      }
    }

    else
    {
      v5 = 0;
      *a5 = CFArrayCreateCopy(0, v16);
    }

LABEL_23:
    CFRelease(Mutable);
    goto LABEL_24;
  }

  v17 = 0;
  v18 = 0;
  v19 = a2;
  while (1)
  {
    v13 = memchr(v19, 0, a3 - v17);
    if (!v13)
    {
      v28 = "Last string is unterminated";
      v29 = 3892330503;
      v30 = 52;
      goto LABEL_29;
    }

    v20 = v13;
    v13 = CFStringCreateWithBytes(a1, v19, v13 - v19, 0x8000100u, 0);
    if (!v13)
    {
      break;
    }

    v21 = v13;
    if ((v18 & 1) != 0 || a4 == 0)
    {
      v23 = v16;
    }

    else
    {
      v23 = Mutable;
    }

    CFArrayAppendValue(v23, v21);
    CFRelease(v21);
    v19 = v20 + 1;
    ++v18;
    v17 = v20 + 1 - a2;
    if (v17 >= a3)
    {
      goto LABEL_16;
    }
  }

  v28 = "Could not create string object";
  v29 = 3892330503;
  v30 = 55;
LABEL_29:
  v5 = __AFCSetErrorResult_2(v13, v14, v29, v15, v30, v28);
  if (Mutable)
  {
    goto LABEL_23;
  }

LABEL_24:
  if (v16)
  {
    CFRelease(v16);
  }

  return v5;
}

uint64_t __AFCProcessStatusPacket(uint64_t a1, uint64_t a2)
{
  v4 = 3892330499;
  v5 = *(a2 + 88);
  DataLength = __AFCOperationGetDataLength(a2);
  cf = 0;
  v7 = CFGetAllocator(a2);
  if (DataLength < 1)
  {
    v9 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_0_1();
    v8 = MEMORY[0x29C289090](v7, DataLength);
    if (!v8)
    {
      goto LABEL_21;
    }

    v9 = v8;
    v10 = AFCReadData(a1, v8, DataLength);
    if (v10)
    {
      v4 = v10;
      goto LABEL_20;
    }

    v11 = CFGetAllocator(a2);
    if (__AFCCreateDictionaryOrArrayFromData(v11, v9, DataLength, 1, &cf))
    {
      cf = 0;
    }
  }

  v12 = *(v5 + 40);
  v13 = v12 | 0xE8004000;
  if (!v12)
  {
    v13 = 0;
  }

  *(a2 + 40) = v13;
  if (!v12)
  {
    v4 = 0;
    *(a2 + 240) = CFRetain(*MEMORY[0x29EDB8F80]);
    if (!v9)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v14 = CFGetAllocator(a2);
  v15 = __AFCCreateErrorObject(v14, *(a2 + 40), cf);
  *(a2 + 240) = v15;
  if (v15)
  {
    v4 = 0;
  }

  else
  {
    v4 = 3892330499;
  }

  AFCLockLock(*(a1 + 136));
  *(a1 + 64) = *(a2 + 40);
  v16 = *(a1 + 72);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(a2 + 240);
  *(a1 + 72) = v17;
  if (v17)
  {
    CFRetain(v17);
  }

  AFCLockUnlock(*(a1 + 136));
  if (v9)
  {
LABEL_20:
    CFAllocatorDeallocate(v7, v9);
  }

LABEL_21:
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t __AFCProcessDataPacket(uint64_t a1, uint64_t a2)
{
  v4 = 3892330499;
  DataLength = __AFCOperationGetDataLength(a2);
  v6 = CFGetAllocator(a2);
  v7 = v6;
  if (DataLength < 1)
  {
    v12 = CFDataCreate(v6, 0, 0);
    *(a2 + 240) = v12;
    if (v12)
    {
      return 0;
    }

    else
    {
      return 3892330499;
    }
  }

  else
  {
    v8 = *(a2 + 72);
    if (!v8)
    {
      OUTLINED_FUNCTION_0_1();
      v9 = MEMORY[0x29C289090](v7, DataLength);
      *(a2 + 72) = v9;
      if (!v9)
      {
        return v4;
      }

      *(a2 + 80) = v7;
      CFRetain(v7);
      v8 = *(a2 + 72);
    }

    v10 = AFCReadData(a1, v8, DataLength);
    if (v10)
    {
      return v10;
    }

    else
    {
      v11 = CFDataCreateWithBytesNoCopy(v7, *(a2 + 72), DataLength, *(a2 + 80));
      *(a2 + 240) = v11;
      if (v11)
      {
        *(a2 + 72) = 0;
        CFRelease(*(a2 + 80));
        v4 = 0;
        *(a2 + 80) = 0;
      }
    }
  }

  return v4;
}

uint64_t __AFCProcessArrayOrDictReply(uint64_t a1, uint64_t a2, int a3)
{
  v6 = 3892330499;
  DataLength = __AFCOperationGetDataLength(a2);
  v8 = CFGetAllocator(a2);
  v9 = *(a2 + 72);
  if (!v9)
  {
    OUTLINED_FUNCTION_0_1();
    v10 = MEMORY[0x29C289090](v8, DataLength);
    *(a2 + 72) = v10;
    if (!v10)
    {
      return v6;
    }

    *(a2 + 80) = v8;
    CFRetain(v8);
    v9 = *(a2 + 72);
  }

  v11 = AFCReadData(a1, v9, DataLength);
  if (v11)
  {
    return v11;
  }

  v12 = __AFCCreateDictionaryOrArrayFromData(v8, *(a2 + 72), DataLength, a3, (a2 + 240));
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(a2 + 240) == 0;
  }

  if (v13)
  {
    return 3892330499;
  }

  else
  {
    return v12;
  }
}

void AFCConnectionCreate_cold_1(void *cf, CFTypeRef *a2)
{
  v4 = cf[17];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = cf[19];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = cf[20];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = cf[21];
  if (v7)
  {
    CFRelease(v7);
  }

  if (*a2)
  {
    CFRelease(*a2);
  }

  CFRelease(cf);
}

uint64_t AFCConnectionProcessOperation_cold_1(uint64_t *a1, void *a2, uint64_t a3, _DWORD *a4)
{
  AFCLockUnlock(*a1);
  AFCLockLock(a2[18]);
  v7 = __AFCConnectionSendOperation(a2, a3);
  if (!v7)
  {
    *(a3 + 24) = 4;
    v7 = __AFCConnectionReceiveOperation(a2, a3);
  }

  *a4 = v7;
  AFCLockUnlock(a2[18]);
  if (v7 == -402636789)
  {
    AFCLog(5, "Socket closed when reading.\n");
    __AFCConnectionInvalidate(a2);
  }

  else if (!v7)
  {
    goto LABEL_10;
  }

  if (!*(a3 + 40))
  {
    ErrorInfo = AFCCopyAndClearLastErrorInfo();
    __AFCOperationSetClientErrorWithInfo(a3, v7, ErrorInfo);
    if (ErrorInfo)
    {
      CFRelease(ErrorInfo);
    }
  }

LABEL_10:

  return __AFCConnectionNotifyOperationComplete(a2, a3);
}

uint64_t AFCErrorInfoCreateWithArgs(__CFDictionary **a1, uint64_t a2, uint64_t a3, const char *a4, int a5, const void *a6)
{
  v8 = a2;
  v38 = *MEMORY[0x29EDCA608];
  v35 = a5;
  v36 = a2;
  v34 = AFCErrnoToAFCDomainError(a2, a3);
  Mutable = CFDictionaryCreateMutable(0, 7, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v12 = Mutable;
  if (Mutable)
  {
    v13 = OUTLINED_FUNCTION_1_1(Mutable, v11, &v34);
    if (v13)
    {
      v16 = v13;
      OUTLINED_FUNCTION_5_1(v13, @"AFCCode");
      CFRelease(v16);
    }

    if (v8 != -1)
    {
      strerror_r(v8, __strerrbuf, 0x80uLL);
      v17 = CFStringCreateWithCString(0, __strerrbuf, 0x8000100u);
      if (v17)
      {
        v19 = v17;
        CFDictionarySetValue(v12, @"NSDebugDescription", v17);
        CFRelease(v19);
      }

      v13 = OUTLINED_FUNCTION_1_1(v17, v18, &v36);
      if (v13)
      {
        v20 = v13;
        CFDictionarySetValue(v12, @"NSUnderlyingError", v13);
        CFRelease(v20);
      }
    }

    v21 = OUTLINED_FUNCTION_3_1(v13, v14, v15, *MEMORY[0x29EDB8EE8]);
    if (v21)
    {
      v22 = OUTLINED_FUNCTION_0_2(v21);
      if (v22)
      {
        v23 = v22;
        OUTLINED_FUNCTION_2_1(v22, @"NSDescription");
        CFRelease(v23);
      }

      CFRelease(a6);
    }

    if (a4)
    {
      v24 = strlen(a4);
      v25 = OUTLINED_FUNCTION_4_1(v24);
      if (v25)
      {
        v26 = v25;
        PathComponent = CFURLCopyLastPathComponent(v25);
        if (PathComponent)
        {
          v29 = PathComponent;
          OUTLINED_FUNCTION_2_1(PathComponent, @"AFCFileName");
          CFRelease(v29);
        }

        v30 = OUTLINED_FUNCTION_1_1(PathComponent, v28, &v35);
        if (v30)
        {
          v31 = v30;
          OUTLINED_FUNCTION_2_1(v30, @"AFCFileLine");
          CFRelease(v31);
        }

        CFRelease(v26);
      }
    }

    if (__gAFCVersion)
    {
      CFDictionarySetValue(v12, @"AFCVersion", __gAFCVersion);
    }
  }

  *a1 = v12;
  result = v34;
  v33 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AFCSetErrorInfoWithArgs(int a1, uint64_t a2, uint64_t a3, const char *a4, int a5, const void *a6)
{
  v22 = 0;
  pthread_once(&__gPlatformInit, __AFCPlatformInitialize);
  v12 = AFCErrorInfoCreateWithArgs(&v22, a2, a3, a4, a5, a6);
  v13 = v22;
  AFCLog(5, "created error info %p", v22);
  if (v13)
  {
    if (a1 >= 1)
    {
      v14 = __AFCCopyErrorInfoDescription(v13);
      if (v14)
      {
        v15 = v14;
        Length = CFStringGetLength(v14);
        MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
        v18 = MEMORY[0x29C289090](0, MaximumSizeForEncoding, 0x100004077774924, 0);
        if (v18)
        {
          v19 = v18;
          if (CFStringGetCString(v15, v18, MaximumSizeForEncoding, 0x8000100u))
          {
            AFCLog(a1, "%s", v19);
          }

          CFAllocatorDeallocate(0, v19);
        }

        CFRelease(v15);
      }
    }

    v20 = pthread_getspecific(__gAFCErrorInfoKey);
    if (v20)
    {
      CFRelease(v20);
    }

    if (pthread_setspecific(__gAFCErrorInfoKey, v13))
    {
      AFCLog(5, "Error setting thread error info");
      CFRelease(v13);
    }
  }

  return v12;
}

uint64_t AFCProcessFileRefReadPacket(uint64_t a1, void *a2, int a3)
{
  v64 = 0;
  v65 = &v64;
  v66 = 0x2000000000;
  v67 = 0;
  Context = AFCConnectionGetContext(a1);
  v60 = 0;
  v61 = &v60;
  v62 = 0x2000000000;
  v63 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2000000000;
  v59 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2000000000;
  v55 = 0;
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x2000000000;
  v51[3] = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2000000000;
  v50 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2000000000;
  v46 = 0;
  AFCLog(5, "Processing FileRefRead packet\n");
  if (!Context)
  {
    v33 = OUTLINED_FUNCTION_1_2();
    v38 = 2223;
    goto LABEL_23;
  }

  v7 = a2[5];
  v8 = a2[6];
  v9 = v61;
  v61[3] = v8;
  if (v8 >= 0x400000)
  {
    v8 = 0x400000;
  }

  v53[3] = v8;
  if (a3)
  {
    v44[3] = a2[7];
  }

  v10 = v7 - 1;
  AFCLog(5, "AFCFileRefRead(%d, %d, %d)\n", v7 - 1, v9[3], a3);
  v11 = OUTLINED_FUNCTION_4_2();
  v13 = AFCDiscardBodyData(v11, v12);
  *(v65 + 6) = v13;
  if (!v13)
  {
    if (gAFCMaxOpenFileCount <= v10 || (v16 = Context + 40 * v10, v19 = *(v16 + 80), v18 = v16 + 80, v17 = v19, v19 == -1))
    {
      v33 = OUTLINED_FUNCTION_3_2();
      v38 = 2255;
      goto LABEL_23;
    }

    v20 = __AFCAllowedToOperateOnFile(v17, (a1 + 224), v14, v15);
    *(v65 + 6) = v20;
    if (!v20)
    {
      v21 = *(v18 + 24);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 0x40000000;
      block[2] = __AFCProcessFileRefReadPacket_block_invoke;
      block[3] = &unk_29EE965B0;
      block[4] = &v47;
      block[5] = &v52;
      block[6] = &v64;
      block[7] = v51;
      v42 = a3;
      block[8] = &v56;
      block[9] = &v60;
      block[10] = &v43;
      block[11] = Context;
      v40 = v17;
      v41 = v10;
      dispatch_sync(v21, block);
      v13 = *(v65 + 6);
      if (v13)
      {
        goto LABEL_14;
      }

      if ((v61[3] & 0x8000000000000000) == 0)
      {
        v22 = *(v48[3] + 16);
        v23 = v57[3];
        v24 = OUTLINED_FUNCTION_4_2();
        v13 = AFCSendDataPacket(v24, v25, v26, v27);
LABEL_13:
        *(v65 + 6) = v13;
        goto LABEL_14;
      }

      v34 = *__error();
      v37 = "read";
      v35 = 3892330500;
      v33 = 1;
      v38 = 2301;
LABEL_23:
      v13 = __AFCSetErrorResult_4(v33, v34, v35, v36, v38, v37);
      goto LABEL_13;
    }

    v13 = 1;
  }

LABEL_14:
  AFCLog(5, "Sending result %d\n", v13);
  v28 = v48[3];
  if (v28)
  {
    AFCReleaseBuffer(Context, v28);
  }

  v29 = *(v65 + 6);
  if (v29)
  {
    v30 = OUTLINED_FUNCTION_4_2();
    AFCSendStatus(v30, v31, v29);
    *(v65 + 6) = v29;
  }

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(v51, 8);
  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v64, 8);
  return v29;
}