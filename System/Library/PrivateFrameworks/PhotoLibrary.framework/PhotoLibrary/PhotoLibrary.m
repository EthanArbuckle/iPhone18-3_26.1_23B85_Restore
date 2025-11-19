uint64_t iosp_registerIOSurfaceMemPool()
{
  sIOSurfacePoolClass = 0;
  *algn_27CD38268 = "FigIOSurfaceMemPool";
  qword_27CD38270 = iosp_init;
  unk_27CD38278 = 0;
  qword_27CD38280 = iosp_finalize;
  unk_27CD38288 = 0;
  qword_27CD38290 = 0;
  unk_27CD38298 = 0;
  qword_27CD382A0 = iosp_copyDebugDesc;
  result = _CFRuntimeRegisterClass();
  sIOSurfacePoolID = result;
  return result;
}

CFMutableStringRef iosp_copyDebugDesc(uint64_t a1)
{
  context = 0u;
  v9 = 0u;
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigJPEGIOSurfacePool %p> {\n  Subpools:\n\n", a1);
  if (*(a1 + 32) && *(a1 + 56))
  {
    v3 = 0;
    v4 = 0;
    do
    {
      iosp_poolCollectStats(0, *(a1 + 32) + v3, &context);
      ++v4;
      v3 += 80;
    }

    while (*(a1 + 56) > v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    CFDictionaryApplyFunction(v5, iosp_poolCollectStats, &context);
  }

  if (context.i64[1])
  {
    v6 = context.u64[1] * 100.0 / (v9 + context.i64[1]);
  }

  else
  {
    v6 = 0.0;
  }

  CFStringAppendFormat(Mutable, 0, @"  Subpool count:         %d\n  Total size:            %d bytes\n  Total IOSurface count: %d\n  Deep cleanup count:    %d\n  One-shot allocations:  %d\n  Allocations:           %d\n  Total hits:            %d\n  Total misses:          %d\n  Total deletes:         %d\n  Hit ratio:             %.2f%%\n}", context.i64[0], *(a1 + 152), *(a1 + 160), *(a1 + 168), *(a1 + 176), v9 + context.i64[1], context.i64[1], v9, *&v6);
  return Mutable;
}

int64x2_t iosp_poolCollectStats(uint64_t a1, uint64_t a2, int64x2_t *a3)
{
  CFStringAppendFormat(a3[2].i64[0], 0, @"    subpool: %d\n", a3->i64[0]);
  v6 = a3[2].i64[0];
  if (a1)
  {
    v7 = *(a2 + 72);
    if (v7 <= 1111970368)
    {
      switch(v7)
      {
        case 32:
          v8 = "ARGB";
          goto LABEL_20;
        case 875704422:
          v8 = "420f";
          goto LABEL_20;
        case 875704438:
          v8 = "420v";
          goto LABEL_20;
      }
    }

    else if (v7 > 2037741157)
    {
      if (v7 == 2037741158)
      {
        v8 = "yuvf";
        goto LABEL_20;
      }

      if (v7 == 2037741171)
      {
        v8 = "yuvs";
        goto LABEL_20;
      }
    }

    else
    {
      if (v7 == 1111970369)
      {
        v8 = "BGRA";
        goto LABEL_20;
      }

      if (v7 == 1999843442)
      {
        v8 = "w30r";
LABEL_20:
        CFStringAppendFormat(v6, 0, @"    image:   %d x %d, (%d x %d padded), %s\n", *(a2 + 56), *(a2 + 60), *(a2 + 64), *(a2 + 68), v8);
        goto LABEL_21;
      }
    }

    v8 = "unknown";
    goto LABEL_20;
  }

  CFStringAppendFormat(v6, 0, @"    size:    %d\n", *(a2 + 16));
LABEL_21:
  CFStringAppendFormat(a3[2].i64[0], 0, @"    count:   %d\n    hits:    %d\n    misses:  %d\n    deletes: %d\n\n", *(a2 + 24), *(a2 + 32), *(a2 + 40), *(a2 + 48));
  v9.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v9.i64[1] = *(a2 + 32);
  v10 = a3[1];
  *a3 = vaddq_s64(*a3, v9);
  result = vaddq_s64(v10, *(a2 + 40));
  a3[1] = result;
  return result;
}

uint64_t iosp_finalize(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    dispatch_source_cancel(v2);
    if (*(a1 + 180))
    {
      dispatch_resume(*(a1 + 72));
      *(a1 + 180) = 0;
    }

    dispatch_semaphore_wait(*(a1 + 80), 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(*(a1 + 72));
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    if (*(a1 + 56))
    {
      v5 = 0;
      v6 = 0;
      do
      {
        iosp_poolDestroySubPool(0, (*(a1 + 32) + v5));
        ++v6;
        v5 += 80;
      }

      while (*(a1 + 56) > v6);
      v4 = *(a1 + 32);
    }

    free(v4);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    CFDictionaryApplyFunction(v7, iosp_poolDestroySubPool, 0);
    CFRelease(*(a1 + 40));
  }

  v8 = *(a1 + 184);
  if (v8)
  {
    CFRelease(v8);
  }

  free(*(a1 + 48));
  result = *(a1 + 64);
  if (result)
  {

    return MEMORY[0x282112BA8]();
  }

  return result;
}

void iosp_poolDestroySubPool(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (*a2)
  {
    do
    {
      v5 = *(v4 + 32);
      CFRelease(*v4);
      free(v4);
      v4 = v5;
    }

    while (v5);
  }

  if (a1)
  {

    free(a2);
  }
}

double iosp_init(_OWORD *a1)
{
  result = 0.0;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t FigJPEGIOSurfaceMemoryPoolCreate(uint64_t a1, const __CFDictionary *a2, uint64_t *a3)
{
  fig_note_initialize_category_with_default_work();
  MEMORY[0x21CEE1770](&FigJPEGIOSurfacePoolGetTypeID_registerOnce, iosp_registerIOSurfaceMemPool);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 4294954510;
  }

  v6 = Instance;
  *(Instance + 104) = xmmword_21AD11570;
  *(Instance + 120) = xmmword_21AD11580;
  *(Instance + 136) = vdupq_n_s64(0xCuLL);
  *(Instance + 88) = 1000000000;
  *(Instance + 184) = 0;
  iosp_poolSetOptions(Instance, a2);
  if (*(v6 + 48))
  {
    v7 = *(v6 + 56);
    goto LABEL_6;
  }

  v8 = malloc_type_malloc(0x58uLL, 0x1000040931E79F6uLL);
  *(v6 + 48) = v8;
  if (v8)
  {
    v8[2] = xmmword_21AD11890;
    v8[3] = unk_21AD118A0;
    v8[4] = xmmword_21AD118B0;
    *v8 = kMemSubPoolDefaultBuffSizes;
    v8[1] = unk_21AD11880;
    *(v8 + 10) = 10485760;
    v7 = 11;
    *(v6 + 56) = 11;
LABEL_6:
    v9 = malloc_type_calloc(v7, 0x50uLL, 0x10A004002207240uLL);
    *(v6 + 32) = v9;
    if (v9)
    {
      v10 = FigSimpleMutexCreate();
      *(v6 + 64) = v10;
      if (v10)
      {
        *(v6 + 16) = 0;
        *(v6 + 24) = v6 + 16;
        v11 = *(v6 + 56);
        if (v11)
        {
          v12 = *(v6 + 32);
          v13 = *(v6 + 48);
          do
          {
            *v12 = 0;
            v12[1] = v12;
            v14 = *v13++;
            v12[2] = v14;
            v12 += 10;
            --v11;
          }

          while (v11);
        }

        v15 = dispatch_semaphore_create(0);
        *(v6 + 80) = v15;
        if (v15)
        {
          global_queue = dispatch_get_global_queue(0, 0);
          v17 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, global_queue);
          *(v6 + 72) = v17;
          if (v17)
          {
            dispatch_set_context(v17, v6);
            dispatch_source_set_event_handler_f(*(v6 + 72), iosp_poolDeepCleanup);
            v18 = *(v6 + 72);
            v19 = dispatch_time(0, *(v6 + 88));
            dispatch_source_set_timer(v18, v19, *(v6 + 88), *(v6 + 88) / 0xAuLL);
            dispatch_source_set_cancel_handler_f(*(v6 + 72), iosp_poolCleanupTimerCanceled);
            v20 = FigNanosecondsToHostTime();
            result = 0;
            *(v6 + 88) = v20;
            *(v6 + 180) = 1;
            *a3 = v6;
            return result;
          }
        }
      }
    }
  }

  CFRelease(v6);
  return 4294954510;
}

void *iosp_poolSetOptions(void *result, const __CFDictionary *a2)
{
  v18 = 0;
  if (a2)
  {
    v3 = result;
    if (iosp_getIntValue(a2, @"HighWaterBytes", &v18))
    {
      v4 = v18;
      if (!v18)
      {
        v4 = 0x7FFFFFFF;
      }

      v3[13] = v4;
    }

    if (iosp_getIntValue(a2, @"LowWaterBytes", &v18))
    {
      v5 = v18;
      if (!v18)
      {
        v5 = 0x7FFFFFFF;
      }

      v3[14] = v5;
    }

    if (iosp_getIntValue(a2, @"MinBytes", &v18))
    {
      LODWORD(v6) = v18;
      if (!v18)
      {
        LODWORD(v6) = 0x7FFFFFFF;
      }

      v6 = v6;
    }

    else
    {
      v6 = v3[14];
    }

    v3[15] = v6;
    if (iosp_getIntValue(a2, @"HighWaterBufferCount", &v18))
    {
      v7 = v18;
      if (!v18)
      {
        v7 = 0x7FFFFFFF;
      }

      v3[16] = v7;
    }

    if (iosp_getIntValue(a2, @"LowWaterBufferCount", &v18))
    {
      v8 = v18;
      if (!v18)
      {
        v8 = 0x7FFFFFFF;
      }

      v3[17] = v8;
    }

    if (iosp_getIntValue(a2, @"MinCount", &v18))
    {
      LODWORD(v9) = v18;
      if (!v18)
      {
        LODWORD(v9) = 0x7FFFFFFF;
      }

      v9 = v9;
    }

    else
    {
      v9 = v3[17];
    }

    v3[18] = v9;
    if (iosp_getIntValue(a2, @"IdleTimeout", &v18))
    {
      if (v18)
      {
        v10 = 1000000 * v18;
      }

      else
      {
        v10 = -1;
      }

      v3[11] = v10;
    }

    Value = CFDictionaryGetValue(a2, @"SizeTable");
    if (Value)
    {
      v12 = Value;
      TypeID = CFDataGetTypeID();
      if (TypeID == CFGetTypeID(v12))
      {
        Length = CFDataGetLength(v12);
        v15 = malloc_type_malloc(Length, 0x974E1D5CuLL);
        v3[6] = v15;
        if (v15)
        {
          v16 = v15;
          BytePtr = CFDataGetBytePtr(v12);
          memcpy(v16, BytePtr, Length);
          v3[7] = Length >> 2;
        }
      }
    }

    result = CFDictionaryGetValue(a2, *MEMORY[0x277CD29C0]);
    if (result)
    {
      result = CFRetain(result);
      v3[23] = result;
    }
  }

  return result;
}

uint64_t iosp_poolDeepCleanup(uint64_t a1)
{
  v2 = FigSimpleMutexLock();
  if ((MEMORY[0x21CEE16F0](v2) - *(a1 + 96)) > *(a1 + 88))
  {
    if (dword_27CD38250 >= 2)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    iosp_poolCleanup(a1, *(a1 + 120), *(a1 + 144));
    ++*(a1 + 168);
    if (!*(a1 + 180))
    {
      dispatch_suspend(*(a1 + 72));
      *(a1 + 180) = 1;
    }
  }

  return FigSimpleMutexUnlock();
}

void iosp_poolCleanup(void *a1, unint64_t a2, unint64_t a3)
{
  v19 = a3;
  v3 = a2;
  if (a1[19] <= a2)
  {
    v5 = a1[20];
    if (v5 <= a3)
    {
      return;
    }
  }

  else
  {
    if (a1[14] < a2)
    {
      v3 = a1[14];
    }

    v5 = a1[20];
  }

  if (v5 > a3)
  {
    v6 = a3;
    if (a1[17] < a3)
    {
      v6 = a1[17];
    }

    v19 = v6;
  }

  v7 = a1[2];
  if (v7)
  {
    v8 = a1 + 3;
    do
    {
      v9 = *(v7 + 48);
      if (!IOSurfaceIsInUse(*v7))
      {
        v10 = *(v7 + 48);
        v11 = *(v7 + 56);
        v12 = (v10 + 56);
        if (!v10)
        {
          v12 = v8;
        }

        *v12 = v11;
        *v11 = v10;
        v13 = *(v7 + 32);
        v14 = (v13 ? v13 + 40 : *(v7 + 24) + 8);
        v15 = *(v7 + 40);
        *v14 = v15;
        *v15 = v13;
        if (dword_27CD38250 >= 2)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CFRelease(*v7);
        v17 = a1[20];
        a1[19] -= *(v7 + 8);
        a1[20] = v17 - 1;
        v18 = *(v7 + 24);
        --*(v18 + 24);
        ++*(v18 + 48);
        free(v7);
        if (a1[19] <= v3 && a1[20] <= v19)
        {
          break;
        }
      }

      v7 = v9;
    }

    while (v9);
  }
}

uint64_t iosp_getIntValue(const __CFDictionary *a1, const void *a2, void *a3)
{
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v5 = result;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v5))
    {
      CFNumberGetValue(v5, kCFNumberIntType, a3);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t FigJPEGIOSurfaceMemoryPoolCreateIOSurface(uint64_t a1, unint64_t a2, IOSurfaceRef *a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 4294954516;
  }

  v6 = *(a1 + 48);
  if (*v6 >= a2)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(a1 + 56) - 1;
    if (v6[v7] < a2)
    {
      goto LABEL_4;
    }

    if (v7 >= 2)
    {
      v13 = 0;
      do
      {
        if (v6[(v13 + v7) >> 1] >= a2)
        {
          v7 = (v13 + v7) >> 1;
        }

        else
        {
          v13 = (v13 + v7) >> 1;
        }
      }

      while (v7 - v13 > 1);
      if ((v7 & 0x8000000000000000) != 0)
      {
LABEL_4:
        result = iosp_createMemIOSurface(a2, a3);
        if (!result)
        {
          IOSurfaceIncrementUseCount(*a3);
          FigAtomicIncrement32();
          return 0;
        }

        return result;
      }
    }
  }

  v9 = (v3 + 80 * v7);
  v10 = FigSimpleMutexLock();
  *(a1 + 96) = MEMORY[0x21CEE16F0](v10);
  if (*(a1 + 180))
  {
    dispatch_resume(*(a1 + 72));
    *(a1 + 180) = 0;
  }

  iosp_poolCleanup(a1, *(a1 + 104), *(a1 + 128));
  v11 = *v9;
  if (*v9)
  {
    while (IOSurfaceIsInUse(*v11))
    {
      v11 = *(v11 + 32);
      if (!v11)
      {
        goto LABEL_12;
      }
    }

    iosp_poolUpdateBuffPosition(a1, v9, v11);
    FigSimpleMutexUnlock();
    result = 0;
    *a3 = *v11;
  }

  else
  {
LABEL_12:
    FigSimpleMutexUnlock();
    result = iosp_createMemIOSurface(v9[2], a3);
    if (!result)
    {
      IOSurfaceIncrementUseCount(*a3);
      result = malloc_type_malloc(0x40uLL, 0x10A0040CA53F77BuLL);
      if (result)
      {
        v12 = v9[2];
        *result = *a3;
        *(result + 8) = v12;
        *(result + 16) = 0;
        *(result + 24) = v9;
        iosp_poolInsertNewBuff(a1, v9, result);
        return 0;
      }
    }
  }

  return result;
}

uint64_t iosp_createMemIOSurface(int a1, IOSurfaceRef *a2)
{
  if (dword_27CD38250 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    return 4294954510;
  }

  v6 = Mutable;
  iosp_setIntValue(Mutable, *MEMORY[0x277CD2970], 1024);
  iosp_setIntValue(v6, *MEMORY[0x277CD2A70], 1246774599);
  iosp_setIntValue(v6, *MEMORY[0x277CD2948], a1);
  v7 = IOSurfaceCreate(v6);
  if (v7)
  {
    v8 = 0;
    *a2 = v7;
  }

  else
  {
    v8 = 4294954510;
  }

  CFRelease(v6);
  return v8;
}

CFTypeRef iosp_poolUpdateBuffPosition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 32);
  v6 = *(a3 + 32);
  v7 = *(a3 + 40);
  v8 = (a2 + 8);
  if (v6)
  {
    v8 = (v6 + 40);
  }

  *v8 = v7;
  *v7 = v6;
  *v5 = 0;
  v9 = *(a2 + 8);
  *(a3 + 40) = v9;
  *v9 = a3;
  *(a2 + 8) = v5;
  v10 = (a3 + 48);
  v11 = *(a3 + 48);
  v12 = *(a3 + 56);
  v13 = (a1 + 24);
  if (v11)
  {
    v13 = (v11 + 56);
  }

  *v13 = v12;
  *v12 = v11;
  *v10 = 0;
  v14 = *(a1 + 24);
  *(a3 + 56) = v14;
  *v14 = a3;
  *(a1 + 24) = v10;
  IOSurfaceIncrementUseCount(*a3);
  result = CFRetain(*a3);
  ++*(a2 + 32);
  return result;
}

uint64_t iosp_poolInsertNewBuff(uint64_t a1, void *a2, uint64_t a3)
{
  FigSimpleMutexLock();
  CFRetain(*a3);
  *(a3 + 32) = 0;
  v6 = a2[1];
  *(a3 + 40) = v6;
  *v6 = a3;
  a2[1] = a3 + 32;
  *(a3 + 48) = 0;
  v7 = *(a1 + 24);
  *(a3 + 56) = v7;
  *v7 = a3;
  *(a1 + 24) = a3 + 48;
  v8 = vdupq_n_s64(1uLL);
  v8.i64[0] = *(a3 + 8);
  *(a1 + 152) = vaddq_s64(*(a1 + 152), v8);
  ++a2[3];
  ++a2[5];

  return FigSimpleMutexUnlock();
}

void iosp_setIntValue(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
  if (v5)
  {
    v6 = v5;
    CFDictionarySetValue(a1, a2, v5);
    CFRelease(v6);
  }
}

uint64_t FigJPEGIOSurfaceImagePoolCreate(const __CFAllocator *a1, const __CFDictionary *a2, uint64_t *a3)
{
  fig_note_initialize_category_with_default_work();
  MEMORY[0x21CEE1770](&FigJPEGIOSurfacePoolGetTypeID_registerOnce, iosp_registerIOSurfaceMemPool);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 4294954510;
  }

  v7 = Instance;
  *(Instance + 104) = xmmword_21AD11590;
  *(Instance + 120) = xmmword_21AD115A0;
  *(Instance + 136) = vdupq_n_s64(0xC0uLL);
  *(Instance + 88) = 1000000000;
  *(Instance + 184) = 0;
  iosp_poolSetOptions(Instance, a2);
  v8 = *(v7 + 48);
  if (v8)
  {
    if (!*(v7 + 56))
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v9 = malloc_type_malloc(0x60uLL, 0x1000040565EDBD2uLL);
  *(v7 + 48) = v9;
  if (v9)
  {
    v9[2] = xmmword_21AD118E8;
    v9[3] = unk_21AD118F8;
    v9[4] = xmmword_21AD11908;
    v9[5] = unk_21AD11918;
    *v9 = kImgSubPoolDefaultDimensions;
    v9[1] = unk_21AD118D8;
    *(v7 + 56) = 12;
    v8 = *(v7 + 48);
LABEL_7:
    v10 = 0;
    do
    {
      *(v8 + 8 * v10) = (*(v8 + 8 * v10) + 3) & 0xFFFFFFFFFFFFFFFCLL;
      ++v10;
    }

    while (*(v7 + 56) > v10);
LABEL_9:
    Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], 0);
    *(v7 + 40) = Mutable;
    if (Mutable)
    {
      v12 = FigSimpleMutexCreate();
      *(v7 + 64) = v12;
      if (v12)
      {
        *(v7 + 16) = 0;
        *(v7 + 24) = v7 + 16;
        v13 = dispatch_semaphore_create(0);
        *(v7 + 80) = v13;
        if (v13)
        {
          global_queue = dispatch_get_global_queue(0, 0);
          v15 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, global_queue);
          *(v7 + 72) = v15;
          if (v15)
          {
            dispatch_set_context(v15, v7);
            dispatch_source_set_event_handler_f(*(v7 + 72), iosp_poolDeepCleanup);
            v16 = *(v7 + 72);
            v17 = dispatch_time(0, *(v7 + 88));
            dispatch_source_set_timer(v16, v17, *(v7 + 88), *(v7 + 88) / 0xAuLL);
            dispatch_source_set_cancel_handler_f(*(v7 + 72), iosp_poolCleanupTimerCanceled);
            v18 = FigNanosecondsToHostTime();
            result = 0;
            *(v7 + 88) = v18;
            *(v7 + 180) = 1;
            *a3 = v7;
            return result;
          }
        }
      }
    }
  }

  CFRelease(v7);
  return 4294954510;
}

uint64_t FigJPEGIOSurfaceImagePoolCreateIOSurface(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8, unint64_t a9, IOSurfaceRef *a10)
{
  v18 = iosp_bytesPerPixel(a2);
  if (!*(a1 + 40))
  {
    return 4294954516;
  }

  v19 = v18;
  v20 = 1;
  if ((a2 & 0xFFFFFFEF) == 0x34323066)
  {
    v20 = 2;
  }

  if (a6)
  {
    v21 = a6;
  }

  else
  {
    v21 = v20;
  }

  if (a7)
  {
    v20 = a7;
  }

  if (a2 & 0xFFFFFFEF) == 0x34323066 && ((v20 | v21))
  {
    v51 = gVTPixelTransferSessionTrace;

    return MEMORY[0x282112B88]("%s signalled err=%d at <>:%d", v51, 4294954516, "<<<< FigJPEGIOSurfacePool ", 1063, v10);
  }

  if (a9)
  {
    v22 = a9;
  }

  else
  {
    v22 = 16;
  }

  v23 = *(a1 + 48);
  v24 = *(a1 + 56);
  v25 = v23[v24 - 1];
  v26 = (a3 + v21 - 1) & -v21;
  v27 = (a4 + v20 - 1) & -v20;
  if (v26 > v25 || v27 > v25)
  {
    goto LABEL_65;
  }

  LODWORD(v29) = (a3 + v21 - 1) & -v21;
  LODWORD(v21) = v27;
  if (!(a8 | a5))
  {
    if (*v23 >= v26)
    {
      v30 = 0;
    }

    else
    {
      v30 = v24 - 1;
      if ((v24 - 1) >= 2)
      {
        v31 = 0;
        do
        {
          if (v23[(v31 + v30) >> 1] >= v26)
          {
            v30 = (v31 + v30) >> 1;
          }

          else
          {
            v31 = (v31 + v30) >> 1;
          }
        }

        while (v30 - v31 > 1);
        if ((v30 & 0x8000000000000000) != 0)
        {
          goto LABEL_65;
        }
      }
    }

    v29 = v23[v30];
    if (*v23 >= v27)
    {
      v32 = 0;
    }

    else
    {
      v32 = v24 - 1;
      if (v32 >= 2)
      {
        v33 = 0;
        do
        {
          if (v23[(v33 + v32) >> 1] >= v27)
          {
            v32 = (v33 + v32) >> 1;
          }

          else
          {
            v33 = (v33 + v32) >> 1;
          }
        }

        while (v32 - v33 > 1);
        if ((v32 & 0x8000000000000000) != 0)
        {
          goto LABEL_65;
        }
      }
    }

    v21 = v23[v32];
  }

  v34 = a4;
  if (a5)
  {
    v35 = a3;
  }

  else
  {
    v34 = v21;
    v35 = v29;
  }

  *bytes = v35;
  *&bytes[4] = v34;
  *&bytes[8] = v29;
  *&bytes[12] = v21;
  v54 = a2;
  v36 = CFGetAllocator(a1);
  v37 = CFDataCreate(v36, bytes, 20);
  if (!v37)
  {
    goto LABEL_65;
  }

  v38 = v37;
  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(*(a1 + 40), v38);
  if (!Value)
  {
    v40 = malloc_type_calloc(1uLL, 0x50uLL, 0x10A004002207240uLL);
    Value = v40;
    if (v40)
    {
      *v40 = 0;
      *(v40 + 1) = v40;
      *(v40 + 56) = *bytes;
      *(v40 + 18) = v54;
      CFDictionarySetValue(*(a1 + 40), v38, v40);
    }
  }

  FigSimpleMutexUnlock();
  CFRelease(v38);
  if (!Value)
  {
LABEL_65:
    v49 = v19 * v26;
    if (!a8)
    {
      if (v49 % v22)
      {
        v50 = v22 - v49 % v22;
      }

      else
      {
        LODWORD(v50) = 0;
      }

      LODWORD(v49) = v50 + v49;
    }

    result = iosp_createImgIOSurface(a2, a3, a4, v49, v27, *(a1 + 184), a10);
    if (!result)
    {
      IOSurfaceIncrementUseCount(*a10);
      FigAtomicIncrement32();
      return 0;
    }

    return result;
  }

  v41 = FigSimpleMutexLock();
  *(a1 + 96) = MEMORY[0x21CEE16F0](v41);
  if (*(a1 + 180))
  {
    dispatch_resume(*(a1 + 72));
    *(a1 + 180) = 0;
  }

  iosp_poolCleanup(a1, *(a1 + 104), *(a1 + 128));
  for (i = *Value; i; i = *(i + 32))
  {
    if (!IOSurfaceIsInUse(*i))
    {
      v43 = *(i + 16);
      if (a8)
      {
        if (v43 == v19 * *(*(i + 24) + 64))
        {
          goto LABEL_74;
        }
      }

      else if (!(v43 % v22))
      {
LABEL_74:
        iosp_poolUpdateBuffPosition(a1, Value, i);
        FigSimpleMutexUnlock();
        result = 0;
        *a10 = *i;
        return result;
      }
    }
  }

  FigSimpleMutexUnlock();
  v44 = v19 * *(Value + 16);
  if (!a8)
  {
    if (v44 % v22)
    {
      v45 = v22 - v44 % v22;
    }

    else
    {
      v45 = 0;
    }

    v44 += v45;
  }

  result = iosp_createImgIOSurface(a2, *(Value + 14), *(Value + 15), v44, *(Value + 17), *(a1 + 184), a10);
  if (!result)
  {
    IOSurfaceIncrementUseCount(*a10);
    result = malloc_type_malloc(0x40uLL, 0x10A0040CA53F77BuLL);
    if (result)
    {
      v47 = result;
      v48 = *a10;
      *v47 = *a10;
      v47[3] = Value;
      v47[1] = IOSurfaceGetAllocSize(v48);
      v47[2] = v44;
      iosp_poolInsertNewBuff(a1, Value, v47);
      return 0;
    }
  }

  return result;
}

uint64_t iosp_bytesPerPixel(int a1)
{
  result = 4;
  if (a1 > 1278555700)
  {
    if (a1 > 2037741157)
    {
      if (a1 != 2037741171 && a1 != 2037741158)
      {
        return 1;
      }
    }

    else if (a1 != 1278555701)
    {
      v3 = 1999843442;
      goto LABEL_10;
    }

    return 2;
  }

  if (a1 > 875704437)
  {
    if (a1 == 875704438)
    {
      return 1;
    }

    v3 = 1111970369;
LABEL_10:
    if (a1 == v3)
    {
      return result;
    }

    return 1;
  }

  if (a1 != 32)
  {
    return 1;
  }

  return result;
}

uint64_t iosp_createImgIOSurface(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, const void *a6, IOSurfaceRef *a7)
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v12 = a2;
  if (dword_27CD38250 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v12 = a2;
    v9 = a5;
    v8 = a6;
    v7 = a7;
  }

  v19 = 4294954516;
  if (a1 > 1278555700)
  {
    if (a1 > 2037741157)
    {
      if (a1 != 2037741158 && a1 != 2037741171)
      {
        return v19;
      }

      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v22 = Mutable;
        CFDictionarySetValue(Mutable, *MEMORY[0x277CD2A48], @"PurpleGfxMem");
        iosp_setIntValue(v22, *MEMORY[0x277CD2970], 1024);
        iosp_setIntValue(v22, *MEMORY[0x277CD2B88], v12);
        iosp_setIntValue(v22, *MEMORY[0x277CD2A28], a3);
        iosp_setIntValue(v22, *MEMORY[0x277CD2A70], a1);
        iosp_setIntValue(v22, *MEMORY[0x277CD2968], a4);
        v25 = *MEMORY[0x277CD2948];
        v26 = v22;
        v27 = v9 * a4;
LABEL_20:
        iosp_setIntValue(v26, v25, v27);
        v29 = IOSurfaceCreate(v22);
        if (v29)
        {
          *v7 = v29;
          CFRelease(v22);
LABEL_22:
          if (*v7)
          {
            IOSurfaceSetValue(*v7, *MEMORY[0x277CD29C0], v8);
          }

          return 0;
        }

        goto LABEL_35;
      }

      return 4294954510;
    }

    if (a1 == 1278555701)
    {
LABEL_14:
      v21 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v21)
      {
        v22 = v21;
        iosp_setIntValue(v21, *MEMORY[0x277CD2970], 1024);
        iosp_setIntValue(v22, *MEMORY[0x277CD2B88], v12);
        iosp_setIntValue(v22, *MEMORY[0x277CD2A28], a3);
        iosp_setIntValue(v22, *MEMORY[0x277CD2A70], a1);
        iosp_setIntValue(v22, *MEMORY[0x277CD2968], a4);
        v23 = *MEMORY[0x277CD2960];
        v24 = iosp_bytesPerPixel(a1);
        iosp_setIntValue(v22, v23, v24);
        iosp_setIntValue(v22, *MEMORY[0x277CD2948], v9 * a4);
        iosp_setIntValue(v22, *MEMORY[0x277CD2A60], 0);
        iosp_setIntValue(v22, *MEMORY[0x277CD29F0], 1);
        v25 = *MEMORY[0x277CD29E8];
        v26 = v22;
        v27 = 1;
        goto LABEL_20;
      }

      return 4294954510;
    }

    v20 = 1999843442;
LABEL_13:
    if (a1 != v20)
    {
      return v19;
    }

    goto LABEL_14;
  }

  if (a1 > 875704437)
  {
    if (a1 == 875704438)
    {
      goto LABEL_26;
    }

    v20 = 1111970369;
    goto LABEL_13;
  }

  if (a1 == 32)
  {
    goto LABEL_14;
  }

  if (a1 != 875704422)
  {
    return v19;
  }

LABEL_26:
  v31 = *MEMORY[0x277CBECE8];
  v32 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v32)
  {
    return 4294954510;
  }

  v22 = v32;
  CFDictionarySetValue(v32, *MEMORY[0x277CD2A48], @"PurpleGfxMem");
  iosp_setIntValue(v22, *MEMORY[0x277CD2970], 1024);
  iosp_setIntValue(v22, *MEMORY[0x277CD2B88], v12);
  v33 = a3;
  iosp_setIntValue(v22, *MEMORY[0x277CD2A28], a3);
  iosp_setIntValue(v22, *MEMORY[0x277CD2A70], a1);
  v34 = CFArrayCreateMutable(v31, 2, MEMORY[0x277CBF128]);
  if (!v34)
  {
LABEL_35:
    CFRelease(v22);
    return 4294954510;
  }

  v35 = v34;
  v36 = CFDictionaryCreateMutable(v31, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v36)
  {
    v37 = v36;
    v51 = v7;
    v52 = v8;
    v49 = *MEMORY[0x277CD2B50];
    iosp_setIntValue(v36, *MEMORY[0x277CD2B50], v12);
    v50 = *MEMORY[0x277CD2B18];
    v38 = v33;
    iosp_setIntValue(v37, *MEMORY[0x277CD2B18], v33);
    v48 = *MEMORY[0x277CD2A98];
    iosp_setIntValue(v37, *MEMORY[0x277CD2A98], 1);
    v47 = *MEMORY[0x277CD2B38];
    iosp_setIntValue(v37, *MEMORY[0x277CD2B38], 0);
    v39 = *MEMORY[0x277CD2AA0];
    iosp_setIntValue(v37, *MEMORY[0x277CD2AA0], a4);
    v40 = v9 * a4;
    v46 = v9;
    v41 = *MEMORY[0x277CD2B40];
    iosp_setIntValue(v37, *MEMORY[0x277CD2B40], v40);
    CFArrayAppendValue(v35, v37);
    CFRelease(v37);
    v42 = CFDictionaryCreateMutable(v31, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v42)
    {
      v43 = v42;
      iosp_setIntValue(v42, v49, (v12 + 1) >> 1);
      iosp_setIntValue(v43, v50, (v38 + 1) >> 1);
      iosp_setIntValue(v43, v48, 2);
      iosp_setIntValue(v43, v47, v40);
      iosp_setIntValue(v43, v39, a4);
      v44 = ((v46 + 1) >> 1) * a4;
      iosp_setIntValue(v43, v41, v44);
      CFArrayAppendValue(v35, v43);
      CFDictionarySetValue(v22, *MEMORY[0x277CD2B30], v35);
      iosp_setIntValue(v22, *MEMORY[0x277CD2948], v44 + v40);
      v45 = IOSurfaceCreate(v22);
      if (v45)
      {
        v19 = 0;
        v7 = v51;
        v8 = v52;
        *v51 = v45;
      }

      else
      {
        v19 = 4294954510;
        v7 = v51;
        v8 = v52;
      }

      CFRelease(v22);
    }

    else
    {
      v19 = 4294954510;
      v43 = v22;
      v7 = v51;
      v8 = v52;
    }
  }

  else
  {
    v19 = 4294954510;
    v43 = v22;
  }

  CFRelease(v43);
  CFRelease(v35);
  if (!v19)
  {
    goto LABEL_22;
  }

  return v19;
}

uint64_t FigJPEGIOSurfacePoolFlush(void *a1)
{
  FigSimpleMutexLock();
  iosp_poolCleanup(a1, 0, 0);

  return FigSimpleMutexUnlock();
}

void sub_21ACD5C34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

CGFloat operator||(double a1, double a2, double a3, double a4, float a5, double a6, double a7)
{
  v8.size.width = a3 * a5;
  v8.size.height = a4 * a5;
  v8.origin.x = a6 - v8.size.width * 0.5;
  v8.origin.y = a7 - v8.size.height * 0.5;
  v9 = CGRectIntegral(v8);
  return v9.size.width;
}

__CFString *StringFromExpandableViewState(unsigned int a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return off_2782A19C8[a1];
  }
}

uint64_t MetaStateFromState(int a1)
{
  if ((a1 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return dword_21AD11928[a1 - 1];
  }
}

uint64_t PLTransformForImageOrientationAndSize@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  if (result <= 3)
  {
    switch(result)
    {
      case 1:
        *a2 = 0xBFF0000000000000;
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0xBFF0000000000000;
        goto LABEL_13;
      case 2:
        *(a2 + 8) = xmmword_21AD115C0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        goto LABEL_19;
      case 3:
        *(a2 + 8) = xmmword_21AD115B0;
LABEL_16:
        *(a2 + 32) = a3;
        return result;
    }

LABEL_14:
    v9 = MEMORY[0x277CBF2C0];
    v10 = *(MEMORY[0x277CBF2C0] + 16);
    *a2 = *MEMORY[0x277CBF2C0];
    *(a2 + 16) = v10;
    *(a2 + 32) = *(v9 + 32);
    return result;
  }

  if (result > 5)
  {
    if (result == 6)
    {
      __asm { FMOV            V0.2D, #1.0 }

      *(a2 + 8) = _Q0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 24) = 0;
      return result;
    }

    if (result == 7)
    {
      __asm { FMOV            V2.2D, #-1.0 }

      *(a2 + 8) = _Q2;
LABEL_13:
      *(a2 + 32) = a3;
      *(a2 + 40) = a4;
      return result;
    }

    goto LABEL_14;
  }

  if (result == 4)
  {
    *a2 = 0xBFF0000000000000;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0x3FF0000000000000;
    goto LABEL_16;
  }

  *a2 = 0x3FF0000000000000;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xBFF0000000000000;
LABEL_19:
  *(a2 + 40) = a4;
  return result;
}

uint64_t NewUIImageFromCachedImage(void *a1)
{
  v2 = [a1 imageOrientation];
  v3 = [a1 CGImage];
  if (v3)
  {
    v4 = v3;
    v5 = objc_alloc(MEMORY[0x277D755B8]);

    return [v5 initWithCGImage:v4 imageOrientation:v2];
  }

  else
  {
    result = [a1 ioSurface];
    if (result)
    {
      v7 = PLCreateCGImageFromIOSurface();
      v8 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:v7 imageOrientation:v2];
      CGImageRelease(v7);
      return v8;
    }
  }

  return result;
}

uint64_t _PLIncrementSharedCountForAssets(void *a1)
{
  v2 = [objc_msgSend(a1 "firstObject")];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = ___PLIncrementSharedCountForAssets_block_invoke;
  v4[3] = &unk_2782A2020;
  v4[4] = a1;
  return [v2 performChanges:v4 completionHandler:0];
}

uint64_t _PLIncrementSharedCountForAsset(void *a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  result = [a1 pl_PHAssetFromPhotoLibrary:{PLNavigationControllerInterfacePhotoLibrary(objc_msgSend(objc_msgSend(objc_msgSend(a1, "photoLibrary"), "pathManager"), "libraryURL"))}];
  if (result)
  {
    v5[0] = result;
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
    v3 = [objc_msgSend(v2 "firstObject")];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = ___PLIncrementSharedCountForAssets_block_invoke;
    v4[3] = &unk_2782A2020;
    v4[4] = v2;
    return [v3 performChanges:v4 completionHandler:0];
  }

  return result;
}

uint64_t PLNavigationControllerInterfacePhotoLibrary(uint64_t a1)
{
  if ([MEMORY[0x277CD9948] isMultiLibraryModeEnabled])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __PLNavigationControllerInterfacePhotoLibrary_block_invoke;
    block[3] = &unk_2782A2020;
    block[4] = a1;
    if (PLNavigationControllerInterfacePhotoLibrary_onceToken != -1)
    {
      dispatch_once(&PLNavigationControllerInterfacePhotoLibrary_onceToken, block);
    }

    if (([PLNavigationControllerInterfacePhotoLibrary_sPhotoLibraryURL isEqual:a1] & 1) == 0)
    {
      v4 = [MEMORY[0x277CCA890] currentHandler];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PHPhotoLibrary *PLNavigationControllerInterfacePhotoLibrary(NSURL *)"];
      [v4 handleFailureInFunction:v5 file:@"PLNavigationControllerInterface.m" lineNumber:175 description:{@"Requested URL %@ does not match previous URL %@", a1, PLNavigationControllerInterfacePhotoLibrary_sPhotoLibraryURL}];
    }

    return PLNavigationControllerInterfacePhotoLibrary_sPhotoLibrary;
  }

  else
  {
    v3 = MEMORY[0x277CD9948];

    return [v3 sharedPhotoLibrary];
  }
}

void __PLNavigationControllerInterfacePhotoLibrary_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  PLNavigationControllerInterfacePhotoLibrary_sPhotoLibraryURL = *(a1 + 32);
  PLNavigationControllerInterfacePhotoLibrary_sPhotoLibrary = [objc_alloc(MEMORY[0x277CD9948]) initWithPhotoLibraryURL:*(a1 + 32)];
  v2 = 0;
  if (([PLNavigationControllerInterfacePhotoLibrary_sPhotoLibrary openAndWaitWithUpgrade:0 error:&v2] & 1) == 0)
  {
    Log = PLPhotoPickerGetLog();
    if (os_log_type_enabled(Log, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v4 = v2;
      _os_log_error_impl(&dword_21ACCD000, Log, OS_LOG_TYPE_ERROR, "PLNavigationControllerInterface unable to open system photo library: %@", buf, 0xCu);
    }
  }
}

void PLNotifyImagePickerOfImageAvailability(void *a1, void *a2, void *a3, void *a4, int a5)
{
  InfoForImage = __CreateInfoForImage(a1, a2, a3, a4, a5);
  if (a3)
  {
    _PLIncrementSharedCountForAsset(a3);
  }

  [a1 _imagePickerDidCompleteWithInfo:InfoForImage];
}

id __CreateInfoForImage(void *a1, void *a2, void *a3, void *a4, int a5)
{
  v10 = [a1 _imagePickerSavingOptions];
  v11 = [a1 sourceType];
  v12 = [objc_msgSend(a1 _valueForProperty:{*MEMORY[0x277D77480]), "BOOLValue"}];
  v13 = [a1 showsCameraControls];

  return __CreateInfoForImageWithProperties(v11, v13, v10, v12, a2, a3, a4, a5);
}

id __CreateInfoForImageWithProperties(uint64_t a1, int a2, char a3, int a4, void *a5, void *a6, void *a7, int a8)
{
  v14 = a1 & 0xFFFFFFFFFFFFFFFDLL;
  v15 = (a1 & 0xFFFFFFFFFFFFFFFDLL) == 0;
  v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (a6)
  {
    v17 = [objc_msgSend(a6 pl_PHAssetFromPhotoLibrary:{PLNavigationControllerInterfacePhotoLibrary(objc_msgSend(objc_msgSend(objc_msgSend(a6, "photoLibrary"), "pathManager"), "libraryURL"))), "localIdentifier"}];
    if (v17)
    {
      [v16 setObject:v17 forKey:*MEMORY[0x277D77478]];
    }
  }

  if (a1 == 1)
  {
    a8 &= a2 & a4;
  }

  v53 = *MEMORY[0x277D76A60];
  v18 = [a7 objectForKey:?];
  v19 = MEMORY[0x277CE1DB0];
  v54 = v18;
  if (v18)
  {
    v19 = MEMORY[0x277CE1DD0];
  }

  v20 = [*v19 identifier];
  [v16 setObject:v20 forKey:*MEMORY[0x277D76A70]];
  v21 = (a3 & 4) == 0;
  v71 = 0;
  v72 = &v71;
  v73 = 0x2020000000;
  v74 = 0;
  v67 = 0;
  v68 = &v67;
  v69 = 0x2020000000;
  v70 = 0;
  v66 = 0;
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v58 = ____CreateInfoForImageWithProperties_block_invoke;
  v59 = &unk_2782A1A80;
  v63 = (a3 & 2) != 0;
  v64 = v15;
  v60 = v16;
  v61 = &v71;
  v65 = (a3 & 4) >> 2;
  v62 = &v67;
  if (a7 && a8)
  {
    v22 = [a7 objectForKey:*MEMORY[0x277D3B2A0]];
    if (v22)
    {
      v23 = v14;
      v24 = a5;
      v25 = NewUIImageFromCachedImage(v22);
      if (v25)
      {
        v26 = [a7 objectForKey:*MEMORY[0x277D3B2B0]];
        if (v26)
        {
          v27 = [objc_alloc(MEMORY[0x277D755B8]) initWithData:v26];
          if (v27)
          {
            [v16 setObject:v27 forKey:*MEMORY[0x277D77460]];
          }
        }

        if ((a3 & 4) == 0)
        {
          if ((a3 & 2) == 0)
          {
            v28 = 0;
            v29 = a6;
            goto LABEL_54;
          }

          v29 = a6;
          goto LABEL_51;
        }

        v36 = [a7 objectForKey:*MEMORY[0x277D3B2C0]];
        if (v36)
        {
          [a5 _imageOrientation];
          ImageDataFromJPEGDataAndOrientation = CreateImageDataFromJPEGDataAndOrientation();
          v38 = ImageDataFromJPEGDataAndOrientation;
          if (ImageDataFromJPEGDataAndOrientation)
          {
            v39 = ImageDataFromJPEGDataAndOrientation;
          }

          else
          {
            v39 = v36;
          }

          [v16 setObject:v39 forKey:*MEMORY[0x277D77470]];

          *(v68 + 24) = 1;
          v29 = a6;
          if ((a3 & 2) != 0)
          {
LABEL_51:
            if (!v23)
            {
              v28 = 0;
              a6 = 0;
              if (v29)
              {
LABEL_64:
                v41 = [MEMORY[0x277D3AC00] sharedAssetsSaver];
                v42 = [v29 objectID];
                v43 = [v41 requestSynchronousImageForAssetOID:v42 withFormat:objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277D3B228] allowPlaceholder:"defaultFormatChooser") wantURLOnly:"fullScreenFormatForCurrentDevice") networkAccessAllowed:"formatID") trackCPLDownload:1 outImageDataInfo:v23 == 0 outCPLDownloadContext:0, 0, &v66, 0];
                (v58)(v57, v43, v66, 0);
                a6 = v29;
              }

LABEL_65:
              v44 = [a7 objectForKey:*MEMORY[0x277D3B298]];
              v45 = [v16 objectForKey:*MEMORY[0x277D77470]];
              if (v44)
              {
                if (!(v45 | v28))
                {
                  goto LABEL_71;
                }

                if (v45)
                {
                  PLImageSizeFromImageData();
                }

                else
                {
                  [v28 size];
                }

                [objc_msgSend(v24 "image")];
                [v44 CGRectValue];
                PLScaledCropRect();
                v44 = [MEMORY[0x277CCAE60] valueWithCGRect:?];
                if (v44)
                {
LABEL_71:
                  [v16 setObject:v44 forKey:*MEMORY[0x277D76A48]];
                }
              }

              [v16 setObject:v25 forKey:*MEMORY[0x277D76A50]];
              goto LABEL_73;
            }

LABEL_52:
            v28 = [v24 _newOriginalImageForPickerFromCachedData];
            if (v28)
            {
              [v16 setObject:v28 forKey:*MEMORY[0x277D76A80]];
              *(v72 + 24) = 1;
            }

LABEL_54:
            if (!v29)
            {
              a6 = 0;
              goto LABEL_65;
            }

            if (!v23 || (a3 & 4) != 0 && *(v68 + 24) != 1)
            {
              goto LABEL_64;
            }

            if ((a3 & 2) == 0)
            {
              a6 = v29;
              goto LABEL_65;
            }

            a6 = v29;
            if ((v72[3] & 1) == 0)
            {
              goto LABEL_64;
            }

            goto LABEL_65;
          }
        }

        else
        {
          v29 = [objc_msgSend(a5 "photo")];
          if ((a3 & 2) != 0)
          {
            goto LABEL_51;
          }
        }

        v28 = 0;
        if (!v23 || (v68[3] & 1) != 0)
        {
          goto LABEL_54;
        }

        goto LABEL_52;
      }
    }

    else
    {
      v25 = 0;
    }

LABEL_73:

    goto LABEL_74;
  }

  if (a5)
  {
    v30 = 0;
    if (v14 && (a3 & 2) != 0)
    {
      v31 = [a5 _newOriginalImageForPickerFromCachedData];
      if (!v31)
      {
        v30 = 0;
LABEL_24:
        if ((a3 & 4) != 0)
        {
          if ([a7 objectForKey:*MEMORY[0x277D3B2C0]])
          {
            [a5 _imageOrientation];
            v32 = CreateImageDataFromJPEGDataAndOrientation();
            [v16 setObject:v32 forKey:*MEMORY[0x277D77470]];

            *(v68 + 24) = 1;
            v21 = v32 != 0;
          }

          else
          {
            a6 = [objc_msgSend(a5 "photo")];
            v21 = 0;
          }
        }

LABEL_38:
        if (a6)
        {
          v40 = (a3 & 2) != 0 ? v30 : 1;
          if (!v14 || !v40 || !v21)
          {
            goto LABEL_28;
          }
        }

        goto LABEL_74;
      }

      [v16 setObject:v31 forKey:*MEMORY[0x277D76A80]];

      v30 = 1;
      *(v72 + 24) = 1;
    }

    if (!v14)
    {
      goto LABEL_38;
    }

    goto LABEL_24;
  }

  if (a6)
  {
LABEL_28:
    v33 = [MEMORY[0x277D3AC00] sharedAssetsSaver];
    v34 = [a6 objectID];
    v35 = [v33 requestSynchronousImageForAssetOID:v34 withFormat:objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277D3B228] allowPlaceholder:"defaultFormatChooser") wantURLOnly:"fullScreenFormatForCurrentDevice") networkAccessAllowed:"formatID") trackCPLDownload:1 outImageDataInfo:v14 == 0 outCPLDownloadContext:0, 0, &v66, 0];
    (v58)(v57, v35, v66, 0);
  }

LABEL_74:
  v46 = [a6 fileExtension];
  if ([v66 UTI])
  {
    v47 = [MEMORY[0x277D3ACE0] preferredFileExtensionForType:{objc_msgSend(v66, "UTI")}];
    if ([v47 compare:v46 options:1])
    {
      v46 = v47;
    }
  }

  if (a6)
  {
    v48 = [objc_msgSend(MEMORY[0x277D3AD38] "systemPhotoLibrary")];
    if (v48)
    {
      [v16 setObject:v48 forKey:*MEMORY[0x277D76A90]];
    }
  }

  v49 = [a7 objectForKey:*MEMORY[0x277D3B2B8]];
  if (v49)
  {
    [v16 setObject:v49 forKey:*MEMORY[0x277D76A68]];
  }

  v50 = *MEMORY[0x277D77468];
  v51 = [a7 objectForKey:*MEMORY[0x277D77468]];
  if (v51)
  {
    [v16 setObject:v51 forKey:v50];
  }

  if (v54)
  {
    [v16 setObject:v54 forKey:v53];
  }

  _AddDebugInfo(v16, a3, a6);
  _Block_object_dispose(&v67, 8);
  _Block_object_dispose(&v71, 8);
  return v16;
}

void sub_21ACE559C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t CreateImageDataFromJPEGDataAndOrientation()
{
  v0 = PLExifOrientationFromImageOrientation();
  v1 = objc_alloc(MEMORY[0x277CBEAC0]);
  v2 = [MEMORY[0x277CCABB0] numberWithInt:v0];
  v3 = [v1 initWithObjectsAndKeys:{v2, *MEMORY[0x277CD3410], 0}];
  EXIFJPEGData = CGImageCreateEXIFJPEGData();

  return EXIFJPEGData;
}

uint64_t _AddDebugInfo(uint64_t result, char a2, void *a3)
{
  if ((a2 & 8) != 0)
  {
    v3 = result;
    v4 = 0;
    [objc_msgSend(objc_msgSend(objc_msgSend(a3 "photoLibrary")];
    return [v3 setObject:v4 forKeyedSubscript:@"_UIImagePickerDebugSidecarFileURLs"];
  }

  return result;
}

void PLNotifyImagePickerOfVideoAvailability(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  InfoForVideo = __CreateInfoForVideo(a1, a2, a3, a4);
  if (a3)
  {
    _PLIncrementSharedCountForAsset(a3);
  }

  [a1 _imagePickerDidCompleteWithInfo:InfoForVideo];
}

void *__CreateInfoForVideo(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = [a1 _imagePickerSavingOptions];
  if (a3)
  {
    v8 = [objc_msgSend(a3 "photoLibrary")];
  }

  else
  {
    v8 = 0;
  }

  v9 = objc_alloc(MEMORY[0x277CBEB38]);
  v10 = [*MEMORY[0x277CE1E00] identifier];
  v11 = [v9 initWithObjectsAndKeys:{v10, *MEMORY[0x277D76A70], 0}];
  if (a3)
  {
    v12 = [objc_msgSend(a3 pl_PHAssetFromPhotoLibrary:{PLNavigationControllerInterfacePhotoLibrary(objc_msgSend(objc_msgSend(objc_msgSend(a3, "photoLibrary"), "pathManager"), "libraryURL"))), "localIdentifier"}];
    if (v12)
    {
      [v11 setObject:v12 forKey:@"_UIImagePickerControllerPHAssetLocalIdentifier"];
    }
  }

  if (a2)
  {
    [v11 setObject:a2 forKey:*MEMORY[0x277D76A78]];
  }

  if (v8)
  {
    [v11 setObject:v8 forKey:*MEMORY[0x277D76A90]];
  }

  if (a4)
  {
    [v11 addEntriesFromDictionary:a4];
  }

  _AddDebugInfo(v11, v7, a3);
  return v11;
}

uint64_t PLNotifyImagePickerOfMultipleMediaAvailability(void *a1, void *a2, void *a3, int a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a2, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = [a2 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(a2);
        }

        v13 = [*(*(&v20 + 1) + 8 * i) pl_managedAsset];
        if ([v13 isVideo])
        {
          v14 = [v13 pathForVideoFile];
          if (v14)
          {
            v15 = [MEMORY[0x277CBEBC0] fileURLWithPath:v14 isDirectory:0];
          }

          else
          {
            v15 = 0;
          }

          InfoForVideo = __CreateInfoForVideo(a1, v15, v13, 0);
        }

        else
        {
          InfoForVideo = __CreateInfoForImage(a1, 0, v13, a3, a4);
        }

        v17 = InfoForVideo;
        if (v8)
        {
          [v8 addObject:InfoForVideo];
        }
      }

      v10 = [a2 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v10);
  }

  v18 = [objc_msgSend(a2 "firstObject")];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = ___PLIncrementSharedCountForAssets_block_invoke;
  v24[3] = &unk_2782A2020;
  v24[4] = a2;
  [v18 performChanges:v24 completionHandler:0];
  return [a1 _imagePickerDidCompleteWithInfoArray:v8];
}

void PLNotifyImagePickerOfMediaAvailability(void *a1, void *a2, void *a3, void *a4, int a5)
{
  if ([a3 isVideo])
  {
    v10 = [a3 pathForVideoFile];
    if (v10)
    {
      v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10 isDirectory:0];
    }

    else
    {
      v11 = 0;
    }

    PLNotifyImagePickerOfVideoAvailability(a1, v11, a3, 0);
  }

  else
  {

    PLNotifyImagePickerOfImageAvailability(a1, a2, a3, a4, a5);
  }
}

id PLPhotoPickerDictionaryFromVideo(uint64_t a1, void *a2, uint64_t a3)
{
  Log = PLPhotoPickerGetLog();
  v7 = os_signpost_id_generate(Log);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(Log))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21ACCD000, Log, OS_SIGNPOST_INTERVAL_BEGIN, v7, "CreateVideoDictionary", &unk_21AD14BC1, buf, 2u);
  }

  InfoForVideo = __CreateInfoForVideo(0, a1, a2, a3);
  if (a2)
  {
    _PLIncrementSharedCountForAsset(a2);
  }

  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(Log))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&dword_21ACCD000, Log, OS_SIGNPOST_INTERVAL_END, v7, "CreateVideoDictionary", &unk_21AD14BC1, v10, 2u);
  }

  return InfoForVideo;
}

id PLPhotoPickerDictionaryFromImage(void *a1, void *a2, void *a3, void *a4, int a5)
{
  Log = PLPhotoPickerGetLog();
  v10 = os_signpost_id_generate(Log);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(Log))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21ACCD000, Log, OS_SIGNPOST_INTERVAL_BEGIN, v10, "CreateImageDictionary", &unk_21AD14BC1, buf, 2u);
  }

  v11 = [a1 objectForKey:@"_UIImagePickerSavingOptions"];
  if (!v11)
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"NSDictionary *PLPhotoPickerDictionaryFromImage(NSDictionary * description:{PLPhotoTileViewController *, PLManagedAsset *, NSDictionary *, BOOL)"), @"PLNavigationControllerInterface.m", 566, @"PLPhotoPickerDictionaryFromImage - UIImagePickerSavingOptions may not be nil"}];
  }

  v12 = [v11 integerValue];
  v13 = [a1 objectForKey:@"_UIImagePickerControllerSourceType"];
  if (!v13)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"NSDictionary *PLPhotoPickerDictionaryFromImage(NSDictionary * description:{PLPhotoTileViewController *, PLManagedAsset *, NSDictionary *, BOOL)"), @"PLNavigationControllerInterface.m", 570, @"PLPhotoPickerDictionaryFromImage - UIImagePickerControllerSourceType may not be nil"}];
  }

  v14 = [v13 integerValue];
  v15 = [a1 objectForKey:*MEMORY[0x277D77480]];
  if (!v15)
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"NSDictionary *PLPhotoPickerDictionaryFromImage(NSDictionary * description:{PLPhotoTileViewController *, PLManagedAsset *, NSDictionary *, BOOL)"), @"PLNavigationControllerInterface.m", 574, @"PLPhotoPickerDictionaryFromImage - _UIImagePickerControllerReviewCapturedItem may not be nil"}];
  }

  v16 = [v15 integerValue];
  v17 = [a1 objectForKey:*MEMORY[0x277D77488]];
  if (!v17)
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"NSDictionary *PLPhotoPickerDictionaryFromImage(NSDictionary * description:{PLPhotoTileViewController *, PLManagedAsset *, NSDictionary *, BOOL)"), @"PLNavigationControllerInterface.m", 578, @"PLPhotoPickerDictionaryFromImage - _UIImagePickerControllerShowCameraControls may not be nil"}];
  }

  InfoForImageWithProperties = __CreateInfoForImageWithProperties(v14, [v17 integerValue] != 0, v12, v16 != 0, a2, a3, a4, a5);
  if (a3)
  {
    _PLIncrementSharedCountForAsset(a3);
  }

  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(Log))
  {
    *v25 = 0;
    _os_signpost_emit_with_name_impl(&dword_21ACCD000, Log, OS_SIGNPOST_INTERVAL_END, v10, "CreateImageDictionary", &unk_21AD14BC1, v25, 2u);
  }

  return InfoForImageWithProperties;
}

id PLPhotoPickerDictionaryFromMedia(void *a1, void *a2, void *a3, void *a4, int a5, void *a6)
{
  Log = PLPhotoPickerGetLog();
  v13 = os_signpost_id_generate(Log);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(Log))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21ACCD000, Log, OS_SIGNPOST_INTERVAL_BEGIN, v13, "CreateMediaDictionary", &unk_21AD14BC1, buf, 2u);
  }

  if ([a3 isVideo])
  {
    v14 = [a3 pathForVideoFile];
    if (v14)
    {
      v14 = [MEMORY[0x277CBEBC0] fileURLWithPath:v14 isDirectory:0];
    }

    v15 = PLPhotoPickerDictionaryFromVideo(v14, a3, 0);
  }

  else
  {
    v15 = PLPhotoPickerDictionaryFromImage(a1, a2, a3, a4, a5);
  }

  v16 = v15;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(Log))
  {
    *v18 = 0;
    _os_signpost_emit_with_name_impl(&dword_21ACCD000, Log, OS_SIGNPOST_INTERVAL_END, v13, "CreateMediaDictionary", &unk_21AD14BC1, v18, 2u);
  }

  if ([a6 count])
  {
    v16 = [v16 mutableCopy];
    [v16 addEntriesFromDictionary:a6];
  }

  return v16;
}

void *PLPhotoPickerDictionariesFromMultipleMediaItems(void *a1, void *a2, void *a3, int a4, void *a5)
{
  v30 = *MEMORY[0x277D85DE8];
  Log = PLPhotoPickerGetLog();
  v11 = os_signpost_id_generate(Log);
  v20 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(Log))
  {
    LODWORD(buf) = 134349056;
    *(&buf + 4) = [a2 count];
    _os_signpost_emit_with_name_impl(&dword_21ACCD000, Log, OS_SIGNPOST_INTERVAL_BEGIN, v11, "CreateMultipleMediaDictionary", "%{public}ld", &buf, 0xCu);
  }

  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a2, "count", v11)}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = [a2 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      v16 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(a2);
        }

        [v12 addObject:{PLPhotoPickerDictionaryFromMedia(a1, 0, objc_msgSend(*(*(&v21 + 1) + 8 * v16++), "pl_managedAsset"), a3, a4, a5)}];
      }

      while (v14 != v16);
      v14 = [a2 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  v17 = [objc_msgSend(a2 "firstObject")];
  *&buf = MEMORY[0x277D85DD0];
  *(&buf + 1) = 3221225472;
  v27 = ___PLIncrementSharedCountForAssets_block_invoke;
  v28 = &unk_2782A2020;
  v29 = a2;
  [v17 performChanges:&buf completionHandler:0];
  if (v20 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(Log))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_21ACCD000, Log, OS_SIGNPOST_INTERVAL_END, spid, "CreateMultipleMediaDictionary", &unk_21AD14BC1, &buf, 2u);
  }

  return v12;
}

uint64_t __ShouldZoomToFill(uint64_t a1, double a2, double a3)
{
  v6 = ([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) == 1;
  if (![a1 _clientIsWallpaper])
  {
    if (!*(a1 + 1160))
    {
      v8 = *(a1 + 1361) >= 0;
      return v8 & 1;
    }

    if (vabdd_f64(1.0, a2 / a3) >= dbl_21AD115D0[v6])
    {
      v8 = 0;
      return v8 & 1;
    }

    goto LABEL_7;
  }

  v7 = [objc_msgSend(MEMORY[0x277D75418] "currentDevice")];
  v8 = v7 & 0xFB;
  if ((v7 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    if ((PLIsTallScreen() & 1) == 0)
    {
      v8 = *(a1 + 1152);
      return v8 & 1;
    }

LABEL_7:
    v8 = 1;
  }

  return v8 & 1;
}

void sub_21ACE9DDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PLMRMediaRemoteSetNowPlayingApplicationOverrideEnabled(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getMRMediaRemoteSetNowPlayingApplicationOverrideEnabledSymbolLoc_ptr;
  v9 = getMRMediaRemoteSetNowPlayingApplicationOverrideEnabledSymbolLoc_ptr;
  if (!getMRMediaRemoteSetNowPlayingApplicationOverrideEnabledSymbolLoc_ptr)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __getMRMediaRemoteSetNowPlayingApplicationOverrideEnabledSymbolLoc_block_invoke;
    v5[3] = &unk_2782A1E88;
    v5[4] = &v6;
    __getMRMediaRemoteSetNowPlayingApplicationOverrideEnabledSymbolLoc_block_invoke(v5);
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    return v2(a1);
  }

  v4 = [MEMORY[0x277CCA890] currentHandler];
  result = [v4 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void PLMRMediaRemoteSetNowPlayingApplicationOverrideEnabled(Boolean)") description:{@"PLPhotosApplication.m", 68, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_21ACEE48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMRMediaRemoteSetNowPlayingApplicationOverrideEnabledSymbolLoc_block_invoke(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!MediaRemoteLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __MediaRemoteLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_2782A1C08;
    v8 = 0;
    MediaRemoteLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = MediaRemoteLibraryCore_frameworkLibrary;
  if (!MediaRemoteLibraryCore_frameworkLibrary)
  {
    a1 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MediaRemoteLibrary(void)"];
    v3 = [a1 handleFailureInFunction:v5 file:@"PLPhotosApplication.m" lineNumber:67 description:{@"%s", v6[0]}];
    __break(1u);
    goto LABEL_7;
  }

  v3 = v6[0];
  if (v6[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "MRMediaRemoteSetNowPlayingApplicationOverrideEnabled");
  *(*(a1[4] + 8) + 24) = result;
  getMRMediaRemoteSetNowPlayingApplicationOverrideEnabledSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __MediaRemoteLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MediaRemoteLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t photosPreferenceChanged(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:a2 selector:sel_photosPreferencesChanged object:0];

    return [a2 photosPreferencesChanged];
  }

  return result;
}

uint64_t myUncaughtExceptionHandler(void *a1)
{
  v2 = [a1 userInfo];
  result = [v2 objectForKey:*MEMORY[0x277CCA7E8]];
  if (result)
  {
    result = [objc_msgSend(MEMORY[0x277D3AD38] "systemPhotoLibrary")];
  }

  v4 = originalUncaughtExceptionHandler;
  if (originalUncaughtExceptionHandler)
  {

    return v4(a1);
  }

  return result;
}

uint64_t pl_appPhotoLibrary()
{
  v0 = objc_opt_class();
  if (!v0 || (v1 = v0, (objc_opt_respondsToSelector() & 1) == 0) || (result = [v1 px_deprecated_appPhotoLibrary]) == 0 && ((objc_opt_respondsToSelector() & 1) == 0 || (result = objc_msgSend(v1, "px_systemPhotoLibrary")) == 0))
  {
    v3 = MEMORY[0x277CD9948];

    return [v3 sharedPhotoLibrary];
  }

  return result;
}

void sub_21ACF1C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMCProfileConnectionClass_block_invoke(uint64_t a1)
{
  ManagedConfigurationLibrary();
  result = objc_getClass("MCProfileConnection");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getMCProfileConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getMCProfileConnectionClass(void)_block_invoke") description:{@"PLPublishingAgent.m", 40, @"Unable to find class %s", "MCProfileConnection"}];
    __break(1u);
  }

  return result;
}

void *__getMCFeatureCellularHDUploadsAllowedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ManagedConfigurationLibrary();
  result = dlsym(v2, "MCFeatureCellularHDUploadsAllowed");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMCFeatureCellularHDUploadsAllowedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *ManagedConfigurationLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!ManagedConfigurationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __ManagedConfigurationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2782A1CA0;
    v6 = 0;
    ManagedConfigurationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = ManagedConfigurationLibraryCore_frameworkLibrary;
  if (!ManagedConfigurationLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ManagedConfigurationLibrary(void)"];
    v1 = [v0 handleFailureInFunction:v3 file:@"PLPublishingAgent.m" lineNumber:39 description:{@"%s", v4[0]}];
    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __ManagedConfigurationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ManagedConfigurationLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_21ACF2DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

IOSurfaceRef createDecodeSurfaceFromPool(uint64_t a1, int a2, unsigned int a3, unsigned int a4)
{
  v8 = 0;
  v4 = FigJPEGIOSurfaceImagePoolCreateIOSurface(a1, a2, a3, a4, 1, 16, 16, 1, 0, &v8);
  if (v4 && gPLTiledLayerTrace)
  {
    v5 = v4;
    v6 = MEMORY[0x277D85DF8];
    fprintf(*MEMORY[0x277D85DF8], "Error in %s: ", "createDecodeSurfaceFromPool");
    fprintf(*v6, "FigJPEGIOSurfaceImagePoolCreateIOSurface: error: %d", v5);
    fputc(10, *v6);
  }

  return v8;
}

void *AccelerateLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AccelerateLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AccelerateLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2782A1F10;
    v6 = 0;
    AccelerateLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AccelerateLibraryCore_frameworkLibrary;
  if (!AccelerateLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AccelerateLibrary(void)"];
    v1 = [v0 handleFailureInFunction:v3 file:@"PLTiledLayer.m" lineNumber:77 description:{@"%s", v4[0]}];
    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __AccelerateLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AccelerateLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t getMTLTextureDescriptorClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__3047;
  v0 = getMTLTextureDescriptorClass_softClass;
  v7 = __Block_byref_object_dispose__3048;
  v8 = getMTLTextureDescriptorClass_softClass;
  if (!getMTLTextureDescriptorClass_softClass)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __getMTLTextureDescriptorClass_block_invoke;
    v2[3] = &unk_2782A1E88;
    v2[4] = &v3;
    __getMTLTextureDescriptorClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_21ACF78C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMTLTextureDescriptorClass_block_invoke(uint64_t a1)
{
  MetalLibrary();
  result = objc_getClass("MTLTextureDescriptor");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getMTLTextureDescriptorClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getMTLTextureDescriptorClass(void)_block_invoke") description:{@"PLTiledLayer.m", 71, @"Unable to find class %s", "MTLTextureDescriptor"}];
    __break(1u);
  }

  return result;
}

void *MetalLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MetalLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MetalLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2782A1EA8;
    v6 = 0;
    MetalLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = MetalLibraryCore_frameworkLibrary;
  if (!MetalLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MetalLibrary(void)"];
    v1 = [v0 handleFailureInFunction:v3 file:@"PLTiledLayer.m" lineNumber:70 description:{@"%s", v4[0]}];
    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __MetalLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MetalLibraryCore_frameworkLibrary = result;
  return result;
}

BOOL getShowTilePreferences()
{
  v0 = CFPreferencesCopyAppValue(@"ajtiledlayer_show_tiles", @"com.apple.coremedia");
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFStringGetTypeID())
    {
      v3 = CFStringGetIntValue(v1) == 0;
    }

    else
    {
      v5 = CFGetTypeID(v1);
      if (v5 != CFNumberGetTypeID())
      {
        v7 = CFGetTypeID(v1);
        v4 = v7 == CFBooleanGetTypeID() && v1 == *MEMORY[0x277CBED28];
        goto LABEL_10;
      }

      valuePtr = 0;
      CFNumberGetValue(v1, kCFNumberIntType, &valuePtr);
      v3 = valuePtr == 0;
    }

    v4 = !v3;
LABEL_10:
    CFRelease(v1);
    return v4;
  }

  return 0;
}

void at_free(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

void *__getMTLCreateSystemDefaultDeviceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MetalLibrary();
  result = dlsym(v2, "MTLCreateSystemDefaultDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMTLCreateSystemDefaultDeviceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMPSImageConversionClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!MetalPerformanceShadersLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __MetalPerformanceShadersLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_2782A1EE0;
    v8 = 0;
    MetalPerformanceShadersLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MetalPerformanceShadersLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MetalPerformanceShadersLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PLTiledLayer.m" lineNumber:74 description:{@"%s", v6[0]}];
    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("MPSImageConversion");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    [v5 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getMPSImageConversionClass(void)_block_invoke") description:{@"PLTiledLayer.m", 75, @"Unable to find class %s", "MPSImageConversion"}];
LABEL_10:
    __break(1u);
  }

  getMPSImageConversionClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t PL_ColorSyncProfileCreate(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getColorSyncProfileCreateSymbolLoc_ptr;
  v9 = getColorSyncProfileCreateSymbolLoc_ptr;
  if (!getColorSyncProfileCreateSymbolLoc_ptr)
  {
    v3 = ColorSyncLibrary();
    v7[3] = dlsym(v3, "ColorSyncProfileCreate");
    getColorSyncProfileCreateSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    return v2(a1, 0);
  }

  v5 = [MEMORY[0x277CCA890] currentHandler];
  result = [v5 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"ColorSyncProfileRef PL_ColorSyncProfileCreate(CFDataRef description:{CFErrorRef *)"), @"PLTiledLayer.m", 83, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_21ACF9D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkColorSyncProfile()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkColorSyncProfileSymbolLoc_ptr;
  v7 = getkColorSyncProfileSymbolLoc_ptr;
  if (!getkColorSyncProfileSymbolLoc_ptr)
  {
    v1 = ColorSyncLibrary();
    v5[3] = dlsym(v1, "kColorSyncProfile");
    getkColorSyncProfileSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x277CCA890] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"NSString *getkColorSyncProfile(void)") description:{@"PLTiledLayer.m", 91, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_21ACF9E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkColorSyncRenderingIntent()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkColorSyncRenderingIntentSymbolLoc_ptr;
  v7 = getkColorSyncRenderingIntentSymbolLoc_ptr;
  if (!getkColorSyncRenderingIntentSymbolLoc_ptr)
  {
    v1 = ColorSyncLibrary();
    v5[3] = dlsym(v1, "kColorSyncRenderingIntent");
    getkColorSyncRenderingIntentSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x277CCA890] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"NSString *getkColorSyncRenderingIntent(void)") description:{@"PLTiledLayer.m", 89, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_21ACF9F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkColorSyncRenderingIntentPerceptual()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkColorSyncRenderingIntentPerceptualSymbolLoc_ptr;
  v7 = getkColorSyncRenderingIntentPerceptualSymbolLoc_ptr;
  if (!getkColorSyncRenderingIntentPerceptualSymbolLoc_ptr)
  {
    v1 = ColorSyncLibrary();
    v5[3] = dlsym(v1, "kColorSyncRenderingIntentPerceptual");
    getkColorSyncRenderingIntentPerceptualSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x277CCA890] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"NSString *getkColorSyncRenderingIntentPerceptual(void)") description:{@"PLTiledLayer.m", 90, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_21ACFA0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkColorSyncTransformTag()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkColorSyncTransformTagSymbolLoc_ptr;
  v7 = getkColorSyncTransformTagSymbolLoc_ptr;
  if (!getkColorSyncTransformTagSymbolLoc_ptr)
  {
    v1 = ColorSyncLibrary();
    v5[3] = dlsym(v1, "kColorSyncTransformTag");
    getkColorSyncTransformTagSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x277CCA890] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"NSString *getkColorSyncTransformTag(void)") description:{@"PLTiledLayer.m", 85, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_21ACFA218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkColorSyncTransformDeviceToPCSSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ColorSyncLibrary();
  result = dlsym(v2, "kColorSyncTransformDeviceToPCS");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkColorSyncTransformDeviceToPCSSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *ColorSyncLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!ColorSyncLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __ColorSyncLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2782A1EF8;
    v6 = 0;
    ColorSyncLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = ColorSyncLibraryCore_frameworkLibrary;
  if (!ColorSyncLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ColorSyncLibrary(void)"];
    v1 = [v0 handleFailureInFunction:v3 file:@"PLTiledLayer.m" lineNumber:81 description:{@"%s", v4[0]}];
    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *__getkColorSyncTransformPCSToDeviceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ColorSyncLibrary();
  result = dlsym(v2, "kColorSyncTransformPCSToDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkColorSyncTransformPCSToDeviceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getColorSyncTransformCreateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ColorSyncLibrary();
  result = dlsym(v2, "ColorSyncTransformCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getColorSyncTransformCreateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkColorSyncTransformFullConversionDataSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ColorSyncLibrary();
  result = dlsym(v2, "kColorSyncTransformFullConversionData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkColorSyncTransformFullConversionDataSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getColorSyncTransformCopyPropertySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ColorSyncLibrary();
  result = dlsym(v2, "ColorSyncTransformCopyProperty");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getColorSyncTransformCopyPropertySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ColorSyncLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ColorSyncLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getkColorSyncTransformTagSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ColorSyncLibrary();
  result = dlsym(v2, "kColorSyncTransformTag");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkColorSyncTransformTagSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkColorSyncRenderingIntentPerceptualSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ColorSyncLibrary();
  result = dlsym(v2, "kColorSyncRenderingIntentPerceptual");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkColorSyncRenderingIntentPerceptualSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkColorSyncRenderingIntentSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ColorSyncLibrary();
  result = dlsym(v2, "kColorSyncRenderingIntent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkColorSyncRenderingIntentSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkColorSyncProfileSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ColorSyncLibrary();
  result = dlsym(v2, "kColorSyncProfile");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkColorSyncProfileSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getColorSyncProfileCreateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ColorSyncLibrary();
  result = dlsym(v2, "ColorSyncProfileCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getColorSyncProfileCreateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MetalPerformanceShadersLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MetalPerformanceShadersLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t AVAssetExportPresetForRemakerMode(int a1)
{
  result = 0;
  if (a1 > 3)
  {
    if (a1 <= 5)
    {
      if (a1 == 4)
      {
        v3 = MEMORY[0x277CE5C98];
      }

      else
      {
        v3 = MEMORY[0x277CE5CA0];
      }
    }

    else
    {
      switch(a1)
      {
        case 6:
          v3 = MEMORY[0x277CE5BC8];
          break;
        case 7:
          v3 = MEMORY[0x277CE5C58];
          break;
        case 8:
          v3 = MEMORY[0x277CE5C40];
          break;
        default:
          return result;
      }
    }

    return *v3;
  }

  if (a1 > 1)
  {
    if (a1 != 2)
    {
      v3 = MEMORY[0x277CE5C48];
      return *v3;
    }

LABEL_15:
    v3 = MEMORY[0x277CE5C50];
    return *v3;
  }

  if (!a1)
  {
    goto LABEL_15;
  }

  if (a1 != 1)
  {
    return result;
  }

  v3 = MEMORY[0x277CE5C78];
  return *v3;
}

void sub_21ACFF714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PLVideoRemakerModeForAVAssetExportPreset(const void *a1)
{
  pl_dispatch_once();
  LODWORD(value) = 0;
  if (CFDictionaryGetValueIfPresent(PLVideoRemakerModeForAVAssetExportPreset___map, a1, &value))
  {
    return value;
  }

  else
  {
    return 7;
  }
}

void __PLVideoRemakerModeForAVAssetExportPreset_block_invoke()
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], 0);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CE5C78], 1);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CE5C50], 2);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CE5C48], 3);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CE5C98], 4);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CE5CA0], 5);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CE5BC8], 6);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CE5C58], 7);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CE5C40], 8);
  PLVideoRemakerModeForAVAssetExportPreset___map = Mutable;
}

void sub_21AD00980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21AD049D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21AD069F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _SetBundlePropertiesOnPropertiesDictionary(void *a1)
{
  v2 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  if ([v2 length])
  {
    [a1 setObject:v2 forKey:*MEMORY[0x277D3B288]];
  }

  v3 = [objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  result = [v3 length];
  if (result)
  {
    v5 = *MEMORY[0x277D3B280];

    return [a1 setObject:v3 forKey:v5];
  }

  return result;
}

uint64_t PLSaveImageToCameraRoll(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = pl_appPhotoLibrary();

  return [v8 legacySaveImageToCameraRoll:a1 completionTarget:a2 completionSelector:a3 contextInfo:a4];
}

uint64_t PLSaveImageDataToCameraRoll(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = pl_appPhotoLibrary();

  return [v8 legacySaveImageDataToCameraRoll:a1 completionTarget:a2 completionSelector:a3 contextInfo:a4];
}

uint64_t PLSaveImageToCameraRollWithTypeAndExtension(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = pl_appPhotoLibrary();

  return [v10 legacySaveScreenshotToCameraRoll:a1 completionTarget:a4 completionSelector:a5 contextInfo:a6];
}

uint64_t PLSaveVideoToCameraRoll(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = pl_appPhotoLibrary();

  return [v8 legacySaveVideoToCameraRoll:a1 completionTarget:a2 completionSelector:a3 contextInfo:a4];
}

void PLCleanupForStoreDemoMode()
{
  v0 = objc_alloc_init(MEMORY[0x277D3B230]);
  Log = PLStoreDemoModeGetLog();
  if (os_log_type_enabled(Log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ACCD000, Log, OS_LOG_TYPE_DEFAULT, "Requesting cleanupForStoreDemoMode", buf, 2u);
  }

  v2 = [v0 demoClient];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __PLCleanupForStoreDemoMode_block_invoke;
  v4[3] = &unk_2782A22C8;
  v4[4] = v0;
  [v2 cleanupForStoreDemoModeWithCompletion:v4];
  v3 = PLStoreDemoModeGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_21ACCD000, v3, OS_LOG_TYPE_DEBUG, "Sent cleanupForStoreDemoMode", buf, 2u);
  }
}

id __PLCleanupForStoreDemoMode_block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  Log = PLStoreDemoModeGetLog();
  v7 = Log;
  if (a2)
  {
    if (os_log_type_enabled(Log, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      v8 = "Completed cleanupForStoreDemoMode successfully";
      v9 = v7;
      v10 = OS_LOG_TYPE_DEFAULT;
      v11 = 2;
LABEL_6:
      _os_log_impl(&dword_21ACCD000, v9, v10, v8, &v13, v11);
    }
  }

  else if (os_log_type_enabled(Log, OS_LOG_TYPE_ERROR))
  {
    v13 = 138543362;
    v14 = a3;
    v8 = "Failed to perform cleanupForStoreDemoMode: %{public}@";
    v9 = v7;
    v10 = OS_LOG_TYPE_ERROR;
    v11 = 12;
    goto LABEL_6;
  }

  return *(a1 + 32);
}

CGFloat PLIntegralRect(CGFloat a1, CGFloat a2, double a3, double a4)
{
  v8 = *(MEMORY[0x277CBF3A0] + 8);
  rect = *MEMORY[0x277CBF3A0];
  v9 = round(a3);
  v10 = round(a4);
  MidX = CGRectGetMidX(*&a1);
  v15.origin.x = rect;
  v15.origin.y = v8;
  v15.size.width = v9;
  v15.size.height = v10;
  v12 = round(MidX + CGRectGetWidth(v15) * -0.5);
  v16.origin.x = a1;
  v16.origin.y = a2;
  v16.size.width = a3;
  v16.size.height = a4;
  CGRectGetMidY(v16);
  v17.origin.x = v12;
  v17.origin.y = v8;
  v17.size.width = v9;
  v17.size.height = v10;
  CGRectGetHeight(v17);
  return v12;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}