void sub_100000B88(int a1, int a2, uint64_t a3, intptr_t notificationID)
{
  if (a3 == -536870112)
  {
    byte_100018019 = 0;
    (*(*qword_100018700 + 64))(qword_100018700, 0, a3, notificationID);
    if (byte_10001801C == 1 && byte_10001801B == 1)
    {
      sub_10000282C("Woke up: resuming pending tasks.\n");
      IOMobileFramebufferSetParameter();
      if (!(*(*qword_100018700 + 24))(qword_100018700))
      {
        byte_10001801B = 0;
      }

      IOMobileFramebufferSetParameter();
    }
  }

  else
  {
    if (a3 == -536870272)
    {
      if (byte_10001801A)
      {
        v5 = &unk_10000B13F;
      }

      else
      {
        v5 = "not ";
      }

      sub_10000282C("going to sleep, %sbusy", v5);
      (*(*qword_100018700 + 64))(qword_100018700, 1);
      pthread_mutex_lock(&stru_100018020);
      if (byte_10001801A == 1)
      {
        byte_100018019 = 1;
        pthread_cond_wait(&stru_100018060, &stru_100018020);
      }

      pthread_mutex_unlock(&stru_100018020);
      sub_10000282C("allowing sleep");
    }

    else if (a3 != -536870288)
    {
      return;
    }

    v6 = dword_10001870C;

    IOAllowPowerChange(v6, notificationID);
  }
}

uint64_t start(int a1, uint64_t a2)
{
  puts("checking in");
  if ((chdir(off_100018008) & 0x80000000) == 0)
  {
LABEL_2:
    fflush(__stdoutp);
    if (a1 < 2)
    {
      mainPort[0] = -1431655766;
      if (!IOMainPort(0, mainPort))
      {
        v4 = IORegistryEntryFromPath(mainPort[0], "IODeviceTree:/chosen");
        if (v4)
        {
          v5 = v4;
          CFProperty = IORegistryEntryCreateCFProperty(v4, @"osenvironment", kCFAllocatorDefault, 0);
          Length = CFDataGetLength(CFProperty);
          if (CFProperty && (v8 = Length, Length <= 64))
          {
            v9.tv_sec = 0xAAAAAAAAAAAAAAAALL;
            v9.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
            v22.st_atimespec = v9;
            v22.st_mtimespec = v9;
            *&v22.st_dev = v9;
            *&v22.st_uid = v9;
            v28.location = 0;
            v28.length = Length;
            CFDataGetBytes(CFProperty, v28, &v22);
            v10 = strncmp("darwinos-ramdisk", &v22, v8);
            CFRelease(CFProperty);
            IOObjectRelease(v5);
            if (!v10)
            {
              *&v22.st_dev = sub_100001108;
              v22.st_ino = 0;
              sigaction(31, &v22, 0);
              while (1)
              {
                usleep(0xF4240u);
              }
            }
          }

          else
          {
            if (CFProperty)
            {
              CFRelease(CFProperty);
            }

            IOObjectRelease(v5);
          }
        }
      }

      *&v22.st_dev = sub_10000110C;
      v22.st_ino = 0;
      sigaction(15, &v22, 0);
      sigaction(3, &v22, 0);
      sigaction(2, &v22, 0);
      xpc_activity_register("com.apple.iomfb_bics_daemon", XPC_ACTIVITY_CHECK_IN, &stru_100014588);
      dispatch_main();
    }

    if (a1 != 2)
    {
      v21 = "only one command allowed";
      goto LABEL_35;
    }

    v19 = *(a2 + 8);
    if (!strcmp(v19, "init"))
    {
      v20 = 0;
    }

    else
    {
      if (strcmp(v19, "epoch"))
      {
        v21 = "Known commands: init, epoch";
LABEL_35:
        puts(v21);
        exit(1);
      }

      sub_100001190(0);
      v20 = 2;
    }

    sub_100001190(v20);
    exit(0);
  }

  v11 = off_100018000[0];
  v12 = *off_100018000[0];
  if (v12 == 47)
  {
    if (chdir("/"))
    {
      goto LABEL_12;
    }

    v14 = *++v11;
    v12 = v14;
  }

  if (!v12)
  {
    goto LABEL_2;
  }

  while (1)
  {
    v15.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v15.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    v26 = v15;
    v27 = v15;
    v24 = v15;
    v25 = v15;
    *v22.st_qspare = v15;
    *mainPort = v15;
    *&v22.st_size = v15;
    *&v22.st_blksize = v15;
    v22.st_ctimespec = v15;
    v22.st_birthtimespec = v15;
    v22.st_atimespec = v15;
    v22.st_mtimespec = v15;
    *&v22.st_dev = v15;
    *&v22.st_uid = v15;
    v16 = strchr(v11, 47);
    v17 = v16 ? v16 - v11 : strlen(v11);
    if (v17 - 80 < 0xFFFFFFFFFFFFFFAFLL)
    {
      break;
    }

    __strncpy_chk();
    *(mainPort + v17) = 0;
    if (stat(mainPort, &v22))
    {
      if (*__error() != 2 || mkdir(mainPort, 0x1F8u))
      {
        break;
      }
    }

    if (chdir(mainPort))
    {
      break;
    }

    v11 = &v11[v17 - 1];
    do
    {
      v18 = *++v11;
    }

    while (v18 == 47);
    if (!*v11)
    {
      goto LABEL_2;
    }
  }

LABEL_12:
  printf("failed to connect to working directory");
  return 1;
}

void sub_10000110C()
{
  v0 = atomic_fetch_or(&dword_100018010, 1uLL);
  if (v0)
  {
    v1 = 3;
  }

  else
  {
    v1 = v0 >> 1;
  }

  if ((v1 - 2) >= 2)
  {
    if (!v1)
    {
      sub_1000017A8(qword_100018258);
    }

    exit(0);
  }
}

void sub_100001164(id a1, OS_xpc_object *a2)
{
  state = xpc_activity_get_state(a2);

  sub_100001190(state);
}

void sub_100001190(uint64_t a1)
{
  if (a1 == 2)
  {
    if (!qword_100018258)
    {
      return;
    }

    if ((sub_100001324(2) & 1) == 0)
    {
      puts("woke");
      fflush(__stdoutp);
      sub_100001844(qword_100018258);
    }

    v1 = atomic_fetch_and(&dword_100018010, 1uLL);
    if (dword_100018010 >= 2)
    {
      printf("%s(%d), op failed\n", "set_state", 0);
    }

    if (v1)
    {
      exit(0);
    }

    goto LABEL_16;
  }

  if (a1)
  {
    printf("state = %lld, d=%d\n");
LABEL_16:
    puts("sleeping");
    v2 = __stdoutp;

    fflush(v2);
    return;
  }

  if (qword_100018258)
  {
    return;
  }

  puts("starting");
  fflush(__stdoutp);
  qword_100018258 = sub_1000014A8();
  if (qword_100018258)
  {
    atomic_fetch_and(&dword_100018010, 1uLL);
    if (dword_100018010 >= 2)
    {
      printf("%s(%d), op failed\n");
    }

    goto LABEL_16;
  }

  puts("failed to start properly");

  xpc_activity_unregister("com.apple.iomfb_bics_daemon");
}

uint64_t sub_100001324(int a1)
{
  if (a1)
  {
    v1 = atomic_fetch_or(&dword_100018010, (2 * a1));
    if (v1 >= 2)
    {
      puts("State transition error");
      exit(1);
    }
  }

  else
  {
    LOBYTE(v1) = atomic_fetch_and(&dword_100018010, 1uLL);
  }

  if (a1 != dword_100018010 >> 1)
  {
    printf("%s(%d), op failed\n", "set_state", a1);
  }

  return v1 & 1;
}

uint64_t sub_1000013C4(_DWORD *a1)
{
  if (*a1 == 1)
  {
    return 14;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000013D8(uint64_t result, int a2)
{
  if (result)
  {
    if (*result == 1 && (v2 = *(result + 8) + *(result + 4) * *(result + 6), v2 != -14))
    {
      v3 = (v2 + 17) & 0xFFFFFFFC;
      if (a2)
      {
        v4 = 4;
      }

      else
      {
        v4 = 0;
      }

      return v3 + v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

_DWORD *sub_100001424(_DWORD *result)
{
  if (result)
  {
    if (*result == 1)
    {
      return (result[2] + 14);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

int *sub_100001488(int *result, int a2, int *a3)
{
  for (i = *a3; a2; --a2)
  {
    v4 = *result++;
    i = v4 ^ __ROR4__(i, 15);
  }

  *a3 = i;
  return result;
}

uint64_t sub_1000014A8()
{
  if ((byte_100018018 & 1) == 0 && !IOMobileFramebufferGetMainDisplay())
  {
    qword_100018700 = 0;
    ServiceObject = IOMobileFramebufferGetServiceObject();
    v1 = sub_1000024A0(ServiceObject, "IOMFBBICSType");
    if (v1 == 2)
    {
      sub_10000282C("BICS backlight support");
      operator new();
    }

    if (v1 == 1)
    {
      sub_10000282C("BICS pixel support");
      operator new();
    }

    sub_10000282C("BICS no support");
    qword_100018700 = 0;
    sub_100001750();
  }

  return 0;
}

uint64_t sub_100001750()
{
  if (qword_100018098)
  {
    CFRelease(qword_100018098);
  }

  qword_100018098 = 0;
  result = qword_100018700;
  if (qword_100018700)
  {
    nullsub_2();
    operator delete();
  }

  qword_100018700 = 0;
  return result;
}

uint64_t sub_1000017A8(char *a1)
{
  if (a1 == &byte_100018018)
  {
    IOMobileFramebufferSetParameter();
    v1 = sub_100002264(qword_100018700);
    IOMobileFramebufferSetParameter();
  }

  else
  {
    syslog(5, "totally bogus daemon pointer.");
    return 3758097084;
  }

  return v1;
}

uint64_t sub_100001844(char *a1)
{
  if (a1 == &byte_100018018)
  {
    pthread_mutex_lock(&stru_100018020);
    if (byte_100018019)
    {
      pthread_mutex_unlock(&stru_100018020);
      return 0;
    }

    else
    {
      byte_10001801A = 1;
      pthread_mutex_unlock(&stru_100018020);
      IOMobileFramebufferSetParameter();
      v1 = (*(*qword_100018700 + 24))(qword_100018700);
      if (v1 == -536870165)
      {
        byte_10001801B = 1;
      }

      IOMobileFramebufferSetParameter();
      pthread_mutex_lock(&stru_100018020);
      byte_10001801A = 0;
      if (byte_100018019 == 1)
      {
        byte_100018019 = 0;
        pthread_cond_signal(&stru_100018060);
      }

      pthread_mutex_unlock(&stru_100018020);
      sub_10000282C("done");
      v2 = sem_open("iomfb_bics_daemon.started", 0);
      if (v2 == -1)
      {
        sub_10000282C("Couldn't open semaphore to notify");
      }

      else
      {
        v3 = v2;
        sem_post(v2);
        sem_close(v3);
      }
    }
  }

  else
  {
    v1 = 3758097084;
    syslog(5, "totally bogus daemon pointer.");
  }

  return v1;
}

uint64_t sub_1000019D4()
{
  byte_100018708 = 1;
  byte_100018709 = 1;
  result = sub_1000014A8();
  if (result)
  {
    v5 = -1431655766;
    *&v1 = 0xAAAAAAAAAAAAAAAALL;
    *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v4[4] = v1;
    v4[5] = v1;
    v4[2] = v1;
    v4[3] = v1;
    v4[0] = v1;
    v4[1] = v1;
    IOMobileFramebufferSetParameter();
    (*(*qword_100018700 + 40))(qword_100018700, v4);
    IOMobileFramebufferSetParameter();
    v2 = fopen("/var/hardware/done", "w");
    if (!v2)
    {
      sub_100001BE0("Couldn't open 'done' file");
      exit(-1);
    }

    v3 = v2;
    fprintf(v2, "%s\n", v4);
    return fclose(v3);
  }

  return result;
}

uint64_t sub_100001B18(uint64_t result)
{
  *result = off_1000145B8;
  *(result + 16) = 0;
  *(result + 25) = 0;
  return result;
}

uint64_t sub_100001B50(uint64_t a1, const __CFString *a2)
{
  v3 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/defaults");
  if (v3)
  {
    v4 = v3;
    CFProperty = IORegistryEntryCreateCFProperty(v3, a2, kCFAllocatorDefault, 0);
    IOObjectRelease(v4);
    if (CFProperty)
    {
      CFRelease(CFProperty);
      v6 = 1;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    sub_100001BE0("unable to find /defaults node\n");
  }

  return v6 & 1;
}

void sub_100001BE0(char *a1, ...)
{
  va_start(va, a1);
  vsyslog(4, a1, va);
  if (byte_10001870A == 1)
  {
    vprintf(a1, va);
    fputc(10, __stdoutp);
  }
}

uint64_t sub_100001C50(uint64_t a1)
{
  result = sub_100001B50(a1, @"ean-storage-present");
  *(a1 + 25) = result;
  return result;
}

uint64_t sub_100001C80(uint64_t a1)
{
  result = sub_100001B50(a1, @"display-storage-present");
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_100001CB0(uint64_t a1)
{
  sub_100001D08();
  v2 = *(*a1 + 80);

  return v2(a1);
}

void sub_100001D08()
{
  v0 = __chkstk_darwin();
  v1 = time(0);
  bzero(&v67[3], 0x5ECuLL);
  v67[0] = 1;
  *&v67[1] = v1;
  *&v67[5] = v1;
  v57 = 0xAAAAAAAAAAAAAAAALL;
  v58 = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = -1;
  *(&v2 + 1) = -1;
  v59 = v2;
  v60 = v2;
  v54 = 0;
  v55 = 0xAAAAAAAAAAAAAAAALL;
  v53 = 0;
  v52 = 0;
  v63 = 0;
  v64 = 0;
  v3 = *(v0 + 16);
  ServiceObject = IOMobileFramebufferGetServiceObject();
  v5 = sub_1000024A0(ServiceObject, "ean-mode-caching");
  v6 = sub_1000024A0(ServiceObject, "ean-mode-update-thesh");
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = 172800;
  }

  if (v5 && *(v0 + 25) == 1)
  {
    memcpy(v66, &unk_10000D550, sizeof(v66));
    memcpy(__dst, &unk_10000D750, sizeof(__dst));
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v61 = v8;
    *v62 = v8;
    *&v62[12] = v8;
    v56 = -1;
    if (!sub_10000254C(0x50525354u, &v54, &v53 + 1))
    {
      if (HIDWORD(v53) > 0x3FF)
      {
        v9 = v54;
        if (v54)
        {
          v10 = (v54 + 5);
          if (*(v54 + 5))
          {
            sub_100001488(v54 + 5, 2, &v53);
            if (*(v9 + 7) == v53)
            {
              v11 = *v10;
              if (v1 != *v10)
              {
                if ((v1 - *v10) / (*(v9 + 3) + 1) < v7)
                {
LABEL_46:
                  free(v9);
                  return;
                }

                *&v67[3] = *(v9 + 3) + 1;
                *&v67[5] = v11;
              }
            }
          }
        }
      }

      else
      {
        sub_100001BE0("modeInfoUpdate: size mismatch\n");
        sub_1000026B8(0x50525354u);
      }
    }

    v12 = 0;
    v13 = v66;
    while (1)
    {
      HIDWORD(v63) = v12;
      v14 = *(v0 + 16);
      if (IOMobileFramebufferGetBlock())
      {
        break;
      }

      ++v12;
      v13 += 64;
      if (v12 == 8)
      {
        *&v67[129] |= 4uLL;
        break;
      }
    }

    v15 = 0;
    v16 = &v67[154];
    do
    {
      v17 = &v67[16 * v15 + 157];
      v18 = &v66[64 * dword_100010570[v15]];
      v19 = v18[1];
      v51[0] = *v18;
      v51[1] = v19;
      v20 = v18[3];
      v51[2] = v18[2];
      v51[3] = v20;
      v67[16 * v15 + 153] = v51[0];
      v21 = v16;
      for (i = 664; i != 676; i += 4)
      {
        *v21 = *(&v51[-41] + i - 4);
        v21[12] = *(&v51[-38] + i - 4);
        ++v21;
      }

      v23 = v18[2];
      *v17 = v18[1];
      *(v17 + 1) = v23;
      v17[8] = *(v18 + 12);
      ++v15;
      v16 += 16;
    }

    while (v15 != 6);
    v24 = 0;
    v25 = __dst;
    do
    {
      HIDWORD(v63) = v24;
      v26 = *(v0 + 16);
      Block = IOMobileFramebufferGetBlock();
      if (*(v25 + 2) == 8)
      {
        v9 = v54;
        goto LABEL_45;
      }

      v28 = Block;
      v25 += 41;
      if (Block)
      {
        v29 = 1;
      }

      else
      {
        v29 = v24 == 17;
      }

      ++v24;
    }

    while (!v29);
    v49 = &v67[129];
    v50 = v0;
    v30 = 0;
    v31 = &dword_100010588;
    do
    {
      v32 = &v67[v30];
      v33 = *v31++;
      v34 = &__dst[41 * v33];
      v35 = *(v34 + 2);
      v36 = *(v34 + 11);
      v37 = *(v34 + 6);
      v38 = *(v34 + 14);
      v67[v30 + 249] = *v34;
      v32[251] = sub_10000240C(v35);
      v32[260] = v36;
      *(v32 + 261) = v37;
      v32[263] = v38;
      v39 = *(v34 + 28);
      *(v32 + 63) = *(v34 + 12);
      *(v32 + 64) = v39;
      v30 += 16;
    }

    while (v30 != 128);
    v40 = v49;
    if (!v28)
    {
      *v49 |= 8uLL;
    }

    v41 = v50;
    v42 = *(v50 + 16);
    if (!IOMobileFramebufferGetBlock())
    {
      *v40 |= 1uLL;
    }

    v43 = *v62;
    *(v40 + 1) = v61;
    *(v40 + 3) = v43;
    v40[5] = *&v62[16];
    v44 = *(v41 + 16);
    if (!IOMobileFramebufferGetBlock())
    {
      *v40 |= 2uLL;
    }

    v67[141] = v57;
    LOWORD(v67[143]) = v58;
    v45 = v60;
    *(v40 + 4) = v59;
    *(v40 + 5) = v45;
    v46 = *(v41 + 16);
    if (!IOMobileFramebufferGetBlock())
    {
      *v40 |= 0x10uLL;
    }

    v67[377] = v55;
    LOBYTE(v67[378]) = BYTE4(v55);
    v67[379] = v56;
    sub_100001488(v40, 252, &v67[381]);
    v9 = v54;
    if (v54 && v67[381] == v54[381])
    {
      goto LABEL_46;
    }

    sub_100001488(&v67[5], 2, &v52);
    *&v67[7] = v52;
    v47 = malloc_type_malloc(0x1000uLL, 0x100004052888210uLL);
    if (v47)
    {
      v48 = v47;
      bzero(v47, 0x1000uLL);
      memcpy(v48, v67, 0x5F8uLL);
      sub_10000274C(0x50525354u, v48, 0x400u);
      free(v48);
    }

LABEL_45:
    if (!v9)
    {
      return;
    }

    goto LABEL_46;
  }
}

uint64_t sub_100002264(uint64_t a1)
{
  sub_100002328(a1, 1);
  (*(*a1 + 72))(a1, 1);
  v2 = (*(*a1 + 16))(a1);
  (*(*a1 + 72))(a1, 0);
  sub_100002328(a1, 0);
  sub_100001D08();
  return v2;
}

uint64_t sub_100002328(uint64_t a1, int a2)
{
  v4 = *(a1 + 16);
  ServiceObject = IOMobileFramebufferGetServiceObject();
  if (!sub_1000024A0(ServiceObject, "LTHSaveDispPerfBoostEnable"))
  {
    return 0;
  }

  v6 = *(a1 + 16);
  v7 = IOMobileFramebufferSetParameter();
  sub_10000282C("request_disp_perf_boost( %d) -> %d\n", a2, v7);
  return v7;
}

double sub_1000023A8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

float sub_1000023C4(_DWORD *a1, _DWORD *a2)
{
  v2 = a2 + 13;
  *a1 = *a2;
  v3 = a1 + 13;
  v4 = 3;
  do
  {
    *(v3 - 12) = *(v2 - 12);
    v5 = *v2++;
    *v3++ = v5;
    --v4;
  }

  while (v4);
  for (i = 4; i != 13; ++i)
  {
    result = *&a2[i];
    *&a1[i] = result;
  }

  return result;
}

uint64_t sub_10000240C(uint64_t result)
{
  if ((result - 1) >= 9)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

float sub_10000241C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = sub_10000240C(*(a2 + 8));
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 28) = *(a2 + 28);
  result = *(a2 + 36);
  *(a1 + 36) = result;
  return result;
}

const __CFString *sub_1000024A0(io_registry_entry_t a1, const char *a2)
{
  result = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  if (result)
  {
    v4 = result;
    CFProperty = IORegistryEntryCreateCFProperty(a1, result, kCFAllocatorDefault, 0);
    CFRelease(v4);
    if (CFProperty)
    {
      valuePtr = -1431655766;
      if (!CFNumberGetValue(CFProperty, kCFNumberSInt32Type, &valuePtr))
      {
        valuePtr = 0;
      }

      CFRelease(CFProperty);
      return valuePtr;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000254C(unsigned int a1, void **a2, _DWORD *a3)
{
  connection = -1431655766;
  v6 = sub_100008914(&connection);
  if (v6)
  {
    return v6;
  }

  *a2 = 0;
  output = 0xAAAAAAAAAAAAAAAALL;
  input = a1;
  outputCnt = 1;
  v6 = IOConnectCallMethod(connection, 3u, &input, 1u, 0, 0, &output, &outputCnt, 0, 0);
  if (!v6)
  {
    v8 = output;
    *a3 = output >> 2;
    v9 = malloc_type_malloc(v8, 0x100004052888210uLL);
    *a2 = v9;
    if (v9)
    {
      v14[0] = a1;
      v14[1] = v9;
      v14[2] = output;
      v6 = IOConnectCallMethod(connection, 4u, v14, 3u, 0, 0, 0, 0, 0, 0);
      IOServiceClose(connection);
      if (!v6)
      {
        return v6;
      }

      goto LABEL_4;
    }

    v6 = 3758097085;
  }

  IOServiceClose(connection);
LABEL_4:
  if (*a2)
  {
    free(*a2);
  }

  *a2 = 0;
  sub_100001BE0("EAN read failed: 0x%X", v6);
  return v6;
}

uint64_t sub_1000026B8(unsigned int a1)
{
  v5 = -1431655766;
  v2 = sub_100008914(&v5);
  if (!v2)
  {
    input = a1;
    v2 = IOConnectCallMethod(v5, 5u, &input, 1u, 0, 0, 0, 0, 0, 0);
    IOServiceClose(v5);
    if (v2)
    {
      sub_100001BE0("EAN erase failed: 0x%X", v2);
    }
  }

  return v2;
}

uint64_t sub_10000274C(unsigned int a1, uint64_t a2, unsigned int a3)
{
  output = 0;
  connection = -1431655766;
  outputCnt = 1;
  v6 = sub_100008914(&connection);
  if (!v6)
  {
    input[0] = a1;
    input[1] = a2;
    input[2] = 4 * a3;
    v6 = IOConnectCallMethod(connection, 2u, input, 3u, 0, 0, &output, &outputCnt, 0, 0);
    IOServiceClose(connection);
    if (v6)
    {
      sub_100001BE0("EAN update failed: 0x%X", v6);
    }
  }

  return v6;
}

void sub_10000282C(char *a1, ...)
{
  va_start(va, a1);
  vsyslog(5, a1, va);
  if (byte_10001870A == 1)
  {
    vprintf(a1, va);
    fputc(10, __stdoutp);
  }
}

uint64_t sub_10000289C(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v1 = 0;
  }

  else if (*(a1 + 152))
  {
    v1 = "migrate_history";
  }

  else
  {
    v1 = *(a1 + 16 * (*(a1 + 128) != 0) + 32);
  }

  return sub_100005B70(a1, 14, 1, 1, *(a1 + 16 * (*(a1 + 128) != 0) + 40), v1, "history");
}

uint64_t sub_100002944(uint64_t a1)
{
  v3 = 120;
  while (1)
  {
    v4 = *(a1 + 16);
    v5 = IOMobileFramebufferSetParameter();
    v6 = sub_10000544C(v5);
    sub_10000282C("%s: Update_BIC => %s", "update_bic", v6);
    if (v5 == -536870184 || v5 == -536870187)
    {
      usleep(0xF4240u);
    }

    else
    {
      v1 = v5;
    }

    if (v5 != -536870184 && v5 != -536870187)
    {
      break;
    }

    if (!--v3)
    {
      return 3758097084;
    }
  }

  return v1;
}

uint64_t sub_100002A10(uint64_t a1)
{
  sub_10000282C("%s", "save_bic");
  *(a1 + 25);
  v2 = sub_100005B70(a1, 13, 1, 1, *(a1 + 72), *(a1 + 64), "BIC");
  if (*(a1 + 25))
  {
    v3 = &unk_10000B13F;
  }

  else
  {
    v3 = "not ";
  }

  sub_10000282C("ean %spresent, membuf %sallocated\n", v3, "not ");
  return v2;
}

uint64_t sub_100002AFC(uint64_t a1)
{
  while (1)
  {
    v2 = *(a1 + 16);
    Block = IOMobileFramebufferGetBlock();
    if (Block != -536870187 && Block != -536870184)
    {
      break;
    }

    usleep(0xF4240u);
  }

  v5 = Block;
  if (Block)
  {
    sub_10000282C(">> BICAB read failed");
  }

  else
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    if (v6)
    {
      v7 = v6;
      xpc_dictionary_set_double(v6, "boost", NAN);
      analytics_send_event();
      xpc_release(v7);
      v5 = 0;
      sub_10000282C("BICAB saved");
    }

    else
    {
      return 3758097084;
    }
  }

  return v5;
}

uint64_t sub_100002BF4(uint64_t a1)
{
  while (1)
  {
    v2 = *(a1 + 16);
    Block = IOMobileFramebufferGetBlock();
    if (Block != -536870187 && Block != -536870184)
    {
      break;
    }

    usleep(0xF4240u);
  }

  v5 = Block;
  if (Block)
  {
    sub_10000282C(">> UA Boost read failed", 0xAAAAAAAAAAAAAAAALL);
  }

  else
  {
    v5 = 0;
    sub_10000282C("UA Boost factor not valid", 0xAAAAAAAAAAAAAAAALL);
  }

  return v5;
}

uint64_t sub_100002D10(uint64_t a1)
{
  if (*(a1 + 25))
  {
    return 0;
  }

  sub_10000282C("%s", "save_ibic");
  v2 = sub_10000567C();
  if (v2)
  {
    v1 = v2;
    v3 = 0;
    goto LABEL_14;
  }

  MEMORY[0xFFFFFFFFFFFFFFFC] = ~sub_1000087B0(0xFFFFFFFFLL, 0, -4);
  v4 = CFDataCreateWithBytesNoCopy(0, 0, 0, kCFAllocatorNull);
  v3 = v4;
  if (!v4)
  {
    sub_100001BE0("Unable to create dictionary");
LABEL_13:
    v1 = 0;
    goto LABEL_14;
  }

  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24 = v5;
  v25 = v5;
  v22 = v5;
  v23 = v5;
  v20 = v5;
  v21 = v5;
  v18 = v5;
  v19 = v5;
  v16 = v5;
  v17 = v5;
  v14 = v5;
  v15 = v5;
  v12 = v5;
  v13 = v5;
  *__s = v5;
  v11 = v5;
  if ((sub_100005970(v4, __s, 0x100uLL) & 1) == 0)
  {
    sub_100001BE0("Unable to find firmware device");
    v1 = 3758097098;
    goto LABEL_14;
  }

  sub_10000282C("Firmware partition: %s", __s);
  v6 = strlen(__s);
  v7 = CFURLCreateFromFileSystemRepresentation(0, __s, v6, 0);
  if (!v7)
  {
    sub_100001BE0("Unable to generate path URL");
    goto LABEL_13;
  }

  v8 = v7;
  v1 = AMRestorePartitionFWCommitData(v7, @"ibic", v3, 1);
  CFRelease(v8);
  if (v1)
  {
    sub_100001BE0("Failed to create iBIC in firmware partition");
  }

  else
  {
    sub_10000282C("iBIC created in firmware partition");
  }

LABEL_14:
  if (v3)
  {
    CFRelease(v3);
  }

  return v1;
}

uint64_t sub_100002F34(uint64_t a1)
{
  v18 = 0;
  sub_10000282C("%s", "save_recovery_lth");
  sub_100006530(a1);
  v2 = *(a1 + 156);
  if (*(a1 + 156) && (v3 = *(a1 + 158), *(a1 + 158)) && *(a1 + 160))
  {
    v17 = -1431655766;
    if (*(a1 + 25))
    {
      v4 = -4096;
    }

    else
    {
      v4 = 0;
    }

    if (*(a1 + 25))
    {
      v5 = 4096;
    }

    else
    {
      v5 = 0;
    }

    if (*(a1 + 25))
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    LODWORD(v15) = v5;
    v7 = sub_100005E3C(a1, 14, v2, v3, &v18, &v17, "recovery LTH");
    if (v7)
    {
      v8 = v7;
      sub_10000282C("Could not fetch bis data %s %d");
    }

    else
    {
      v9 = v17;
      if (v17 <= *(a1 + 160))
      {
        if (*(a1 + 25) == 1)
        {
          v10 = v18;
          *v18 = -2147483646;
          v10[1] = v9;
          v8 = sub_10000274C(0x644C5448u, v10, ((v5 + 4 * (v9 + v6) - 1) & v4) >> 2);
          v11 = *v10 & 0x7FFFFFFF;
          v16 = *(a1 + 160);
          sub_10000282C("dLTH saved to ean - ret: %d, buf_size %d, recovery.nwords %d, version %d");
        }

        else
        {
          *&v12 = 0xAAAAAAAAAAAAAAAALL;
          *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v33 = v12;
          v34 = v12;
          v31 = v12;
          v32 = v12;
          v29 = v12;
          v30 = v12;
          v27 = v12;
          v28 = v12;
          v25 = v12;
          v26 = v12;
          v23 = v12;
          v24 = v12;
          v21 = v12;
          v22 = v12;
          *v19 = v12;
          v20 = v12;
          if (sub_100006270(v7, v19, 0x100uLL))
          {
            v13 = sub_100006674(v18, 4 * v9, v19);
            if (v13)
            {
              v8 = 3758097098;
              strerror(v13);
              sub_10000282C("Unable to write %s - %s");
            }

            else if (sub_100006494())
            {
              v8 = 3758097098;
              sub_10000282C("Unable to commit BIS.", v15);
            }

            else
            {
              v8 = 0;
            }
          }

          else
          {
            v8 = 3758097098;
            sub_10000282C("Unable to find BIS device", v15);
          }
        }
      }

      else
      {
        v8 = 3758097098;
        sub_10000282C("Read %X words, expected %X");
      }
    }
  }

  else
  {
    sub_10000282C("Params missing in %s", "save_recovery_lth");
    v8 = 3758097084;
  }

  if (v18)
  {
    free(v18);
  }

  return v8;
}

uint64_t sub_1000031A4(uint64_t a1)
{
  v36 = -1431655766;
  if ((MGGetBoolAnswer() & 1) == 0)
  {
    memset(__b, 170, sizeof(__b));
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v38[0] = v3;
    v38[1] = v3;
    v39[0] = v3;
    v39[1] = v3;
    while (1)
    {
      v4 = *(a1 + 16);
      Block = IOMobileFramebufferGetBlock();
      if (Block != -536870187 && Block != -536870184)
      {
        break;
      }

      usleep(0xF4240u);
    }

    v7 = Block;
    if (Block)
    {
      sub_10000282C(">> burn in metric read failed.");
      return v7;
    }

    v7 = 3758097098;
    LOWORD(v31) = 16897;
    v8 = time(0);
    *(&v31 + 2) = v8;
    *(&v31 + 10) = __b[1];
    HIWORD(v31) = __b[2];
    v32 = *(&__b[2] + 2);
    v33 = HIWORD(__b[3]);
    v34 = __b[4];
    v35 = __b[5];
    v9 = sub_1000087B0(0xFFFFFFFFLL, &v31, 28);
    v10 = ~v9;
    v36 = ~v9;
    v11 = sub_100006C94(v9, "min", 0, WORD5(v31));
    v12 = sub_100006C94(v11, "min", 1u, WORD6(v31));
    v13 = sub_100006C94(v12, "min", 2u, HIWORD(v31));
    v14 = sub_100006C94(v13, "median", 0, v32);
    v15 = sub_100006C94(v14, "median", 1u, HIWORD(v32));
    v16 = sub_100006C94(v15, "median", 2u, v33);
    v17 = sub_100006C94(v16, "max", 0, v34);
    v18 = sub_100006C94(v17, "max", 1u, HIWORD(v34));
    sub_100006C94(v18, "max", 2u, v35);
    if (*(a1 + 132) != 1)
    {
      sub_10000282C("Unable to connect to BIM storage");
      return v7;
    }

    sub_10000282C("IOMFB: BIMUpdaterStartUpdate ");
    v19 = *(a1 + 136);
    if (!BIMUpdaterStartUpdate())
    {
      v2 = 3758097098;
      sub_10000282C("Unable to begin BIM update");
LABEL_38:
      sub_10000282C("IOMFB: BIMUpdaterEndUpdate ");
      v29 = *(a1 + 136);
      if (BIMUpdaterEndUpdate())
      {
        return v2;
      }

      sub_10000282C("Unable to end BIM update");
      return v7;
    }

    v20 = sub_100006AE0(a1, 0, v38);
    v21 = v39;
    v22 = sub_100006AE0(a1, 1uLL, v39);
    sub_10000282C("Writing BIM with timestamp %llu : %d %d : %08x", v8, v20 == 0, v22 == 0, v10);
    if (v22 | v20)
    {
      if (v20)
      {
        v23 = sub_100006C0C(a1, 0, &v31);
        v2 = v23;
        if (v22)
        {
          if (!v23)
          {
            v2 = sub_100006C0C(a1, 1uLL, &v31);
            goto LABEL_34;
          }

LABEL_37:
          sub_10000282C("Unable to write BIM to storage");
          goto LABEL_38;
        }

LABEL_26:
        v25 = HIWORD(v34) - v21[12];
        if (v25 <= v35 - v21[13])
        {
          v25 = v35 - v21[13];
        }

        if (v34 - v21[11] <= v25)
        {
          v26 = v25;
        }

        else
        {
          v26 = v34 - v21[11];
        }

        if (v26 >= 0x1F5)
        {
          sub_10000282C("Max BIM delta above threshold or below 0");
          v27 = xpc_dictionary_create(0, 0, 0);
          if (!v27)
          {
            v2 = 3758097084;
            goto LABEL_37;
          }

          v28 = v27;
          xpc_dictionary_set_int64(v27, "max_bim_delta", v26);
          analytics_send_event();
          xpc_release(v28);
        }

LABEL_34:
        if (!v2)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }

      v21 = v38;
      v24 = 1;
    }

    else
    {
      v24 = *(v38 + 2) > *(v39 + 2);
      if (*(v38 + 2) > *(v39 + 2))
      {
        v21 = v38;
      }
    }

    v2 = sub_100006C0C(a1, v24, &v31);
    goto LABEL_26;
  }

  return 0;
}

uint64_t sub_10000359C(uint64_t a1)
{
  memset(__b, 170, sizeof(__b));
  while (1)
  {
    v2 = *(a1 + 16);
    Block = IOMobileFramebufferGetBlock();
    if (Block != -536870187 && Block != -536870184)
    {
      break;
    }

    usleep(0x3D090u);
  }

  v5 = Block;
  if (Block)
  {
    sub_10000282C(">> tiled BIM read failed.");
  }

  else if (__b[0] == 2)
  {
    if (__b[1])
    {
      v6 = 0;
      while (1)
      {
        LOBYTE(Block) = sub_100006D38(Block, 0, __b, v6);
        if ((Block & 1) == 0)
        {
          return 3758097084;
        }

        if (++v6 >= __b[1])
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:
      sub_10000282C("TBIM saved");
      return 0;
    }
  }

  else
  {
    v5 = 3758097084;
    sub_10000282C(">> unexpected tbim version (wanted 2, got %d)");
  }

  return v5;
}

double sub_1000036B8(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 25) = 0;
  *a1 = off_100014620;
  *(a1 + 64) = *off_1000146A0;
  *(a1 + 80) = *off_1000146B0;
  *(a1 + 96) = *off_1000146C0;
  *(a1 + 112) = *off_1000146D0;
  result = COERCE_DOUBLE("history");
  *(a1 + 32) = *off_100014680;
  *(a1 + 48) = *off_100014690;
  *(a1 + 128) = 0;
  *(a1 + 132) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  return result;
}

uint64_t sub_100003710(uint64_t a1)
{
  *a1 = off_100014620;
  if (*(a1 + 136))
  {
    BIMUpdaterCancel();
    dispatch_semaphore_wait(*(a1 + 144), 0xFFFFFFFFFFFFFFFFLL);
    CFRelease(*(a1 + 136));
  }

  return a1;
}

BOOL sub_10000378C(uint64_t a1)
{
  v2 = *(a1 + 16);
  ServiceObject = IOMobileFramebufferGetServiceObject();
  result = sub_1000037C4(ServiceObject, "TBICSSupported");
  *(a1 + 153) = result;
  return result;
}

BOOL sub_1000037C4(io_registry_entry_t a1, const char *a2)
{
  v3 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  CFProperty = IORegistryEntryCreateCFProperty(a1, v3, kCFAllocatorDefault, 0);
  CFRelease(v4);
  if (!CFProperty)
  {
    return 0;
  }

  v6 = CFBooleanGetValue(CFProperty) != 0;
  CFRelease(CFProperty);
  return v6;
}

uint64_t sub_100003858(uint64_t a1, uint64_t a2, char a3)
{
  *(a1 + 16) = a2;
  ServiceObject = IOMobileFramebufferGetServiceObject();
  *(a1 + 128) = sub_1000024A0(ServiceObject, "bics_mode");
  bzero((a1 + 156), 8uLL);
  *(a1 + 132) = 0;
  if (a3 & 1) != 0 || (*(a1 + 144) = dispatch_semaphore_create(0), *(a1 + 136) = BIMUpdaterCreate(), v6 = BIMUpdaterActivate(), (v6))
  {
    v7 = sub_100001B50(v6, @"ean-storage-present");
    *(a1 + 25) = v7;
    *(a1 + 24) = sub_100001B50(v7, @"display-storage-present");
    v8 = *(a1 + 16);
    v9 = IOMobileFramebufferGetServiceObject();
    *(a1 + 153) = sub_1000037C4(v9, "TBICSSupported");
    return 1;
  }

  else
  {
    result = 0;
    *(a1 + 136) = 0;
  }

  return result;
}

intptr_t sub_1000039C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 132) = 0;
  return dispatch_semaphore_signal(*(v1 + 144));
}

uint64_t sub_1000039D0(uint64_t a1)
{
  if (*(a1 + 25) == 1 && *(a1 + 26) == 1)
  {
    sub_100002944(a1);
    *(a1 + 26) = 0;
  }

  return 0;
}

uint64_t sub_100003A1C(uint64_t a1, const std::__fs::filesystem::path *a2, const char *a3)
{
  sub_100003B0C(a1, a2, a3);
  sub_100003DC4(a1);
  if (byte_100018709 == 1)
  {
    sub_1000040AC(a1);
  }

  if (sub_100004108(a1))
  {
    sub_10000282C("Failed to load LTH");
    return 0;
  }

  if (*(a1 + 153) == 1 && sub_10000429C(a1))
  {
    sub_10000282C("Failed to upload TBICS LTH");
    return 0;
  }

  if (*(a1 + 26) == 1)
  {
    sub_1000044A4(a1);
    sub_10000289C(a1);
    if (*(a1 + 153) == 1)
    {
      sub_100004540(a1);
    }
  }

  else
  {
    sub_1000046B8(a1);
    if (*(a1 + 153) == 1 && sub_1000047C8(a1))
    {
      sub_10000282C("Failed to upload TBICS Gain Map");
    }
  }

  sub_1000044A4(a1);
  return 1;
}

uint64_t sub_100003B0C(uint64_t a1, const std::__fs::filesystem::path *a2, const char *a3)
{
  v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  v53 = v6;
  v54 = v6;
  v51 = v6;
  v52 = v6;
  v49 = v6;
  v50 = v6;
  v47 = v6;
  v48 = v6;
  v45 = v6;
  v46 = v6;
  v43 = v6;
  v44 = v6;
  v41 = v6;
  v42 = v6;
  *__str = v6;
  v40 = v6;
  v37 = v6;
  v38 = v6;
  v35 = v6;
  v36 = v6;
  v33 = v6;
  v34 = v6;
  v31 = v6;
  v32 = v6;
  v29 = v6;
  v30 = v6;
  v27 = v6;
  v28 = v6;
  v25 = v6;
  v26 = v6;
  *to = v6;
  v24 = v6;
  *&v22.st_blksize = v6;
  *v22.st_qspare = v6;
  v22.st_birthtimespec = v6;
  *&v22.st_size = v6;
  v22.st_mtimespec = v6;
  v22.st_ctimespec = v6;
  *&v22.st_uid = v6;
  v22.st_atimespec = v6;
  *v21.st_qspare = v6;
  *&v22.st_dev = v6;
  *&v21.st_size = v6;
  *&v21.st_blksize = v6;
  v21.st_ctimespec = v6;
  v21.st_birthtimespec = v6;
  v21.st_atimespec = v6;
  v21.st_mtimespec = v6;
  *&v21.st_dev = v6;
  *&v21.st_uid = v6;
  if (stat(a2, &v22) < 0 || stat(a3, &v21) < 0)
  {
    return 0;
  }

  sub_10000282C("Daemon migrating from %s to %s", a2, a3);
  v7 = 0;
  v19 = a1 + 32;
  v20 = 1;
  do
  {
    if (v7 != 2)
    {
      v8 = 0;
      v9 = 1;
      v10 = v19 + 16 * v7;
      do
      {
        v11 = v9;
        snprintf(__str, 0x100uLL, "%s/%s", a2, *(v10 + 8 * v8));
        snprintf(to, 0x100uLL, "%s/%s", a3, *(v10 + 8 * v8));
        if ((stat(__str, &v22) & 0x80000000) == 0)
        {
          if (stat(to, &v21))
          {
            sub_10000282C("Daemon copying from %s to %s", __str, to);
            if (copyfile(__str, to, 0, 0xAu) < 0)
            {
              sub_10000282C("Daemon copying from %s to %s failed", __str, to);
              v20 = 0;
            }
          }
        }

        v9 = 0;
        v8 = 1;
      }

      while ((v11 & 1) != 0);
    }

    ++v7;
  }

  while (v7 != 6);
  if (v20)
  {
    for (i = 0; i != 6; ++i)
    {
      v13 = 0;
      v14 = 1;
      do
      {
        v15 = v14;
        snprintf(__str, 0x100uLL, "%s/%s", a2, *(v19 + 16 * i + 8 * v13));
        if ((stat(__str, &v22) & 0x80000000) == 0)
        {
          sub_10000282C("Daemon unlinking %s", __str);
          unlink(__str);
        }

        v14 = 0;
        v13 = 1;
      }

      while ((v15 & 1) != 0);
    }

    remove(a2, v16);
    v17 = 0;
    sub_10000282C("Daemon migrating completed");
  }

  else
  {
    v17 = 0xFFFFFFFFLL;
    sub_10000282C("Daemon migrating failed");
  }

  return v17;
}

void sub_100003DC4(uint64_t a1)
{
  if (byte_100018708)
  {
    return;
  }

  v15 = unk_1000105F8;
  size = xmmword_100010608;
  v17 = unk_100010618;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  v2.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v2.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  v19[11] = v2;
  v20 = v2;
  v19[9] = v2;
  v19[10] = v2;
  v19[7] = v2;
  v19[8] = v2;
  v19[5] = v2;
  v19[6] = v2;
  v19[3] = v2;
  v19[4] = v2;
  v19[1] = v2;
  v19[2] = v2;
  v19[0] = v2;
  *&v13.st_dev = v2;
  *&v13.st_uid = v2;
  v13.st_atimespec = v2;
  v13.st_mtimespec = v2;
  v13.st_ctimespec = v2;
  v13.st_birthtimespec = v2;
  *&v13.st_size = v2;
  *&v13.st_blksize = v2;
  *v13.st_qspare = v2;
  memset(v14, 170, sizeof(v14));
  v12 = -1431655766;
  if (stat("force_panel_reset", &v13) || (v13.st_mode & 0x80000000) == 0)
  {
    v3 = *(a1 + 16);
    if (IOMobileFramebufferGetBlock())
    {
      return;
    }

    v4 = open(*(a1 + 64), 0);
    if (v4 < 0)
    {
      return;
    }

    v5 = v4;
    if (read(v4, &v12, 4uLL) == 4)
    {
      v6 = v12;
      if (v12 == 1112097568)
      {
        if (read(v5, v14, 4uLL) != 4)
        {
          goto LABEL_29;
        }

        v6 = v14[0];
      }

      else
      {
        v14[0] = v12;
      }

      v8 = v6 - 1;
      if (v8 >= 4)
      {
        sub_10000282C("unknown BIC header version; panelID verification skipped");
      }

      else
      {
        v9 = *&aD[8 * v8];
        if (v9 == read(v5, &v14[1], v9))
        {
          if (size != HIDWORD(v20.tv_nsec))
          {
            v7 = 0;
            goto LABEL_13;
          }

          v10 = malloc_type_malloc(size, 0x100004077774924uLL);
          if (v10)
          {
            v7 = v10;
            v11 = size;
            if (read(v5, v10, size) != v11 || !memcmp(v7, v19 + 4, HIDWORD(v20.tv_nsec)))
            {
              close(v5);
LABEL_19:
              free(v7);
              return;
            }

            goto LABEL_13;
          }
        }
      }
    }

LABEL_29:
    close(v5);
    return;
  }

  if (unlink("force_panel_reset"))
  {
    sub_100001BE0("Could not delete %s; skipping reset\n", "force_panel_reset");
    return;
  }

  v7 = 0;
  v5 = 0;
LABEL_13:
  sub_10000282C("new panel detected; invalidate stored LTH & BIC");
  if (*(a1 + 24) == 1)
  {
    sub_100004A14();
  }

  else
  {
    unlink(*(a1 + 16 * (*(a1 + 128) != 0) + 32));
  }

  unlink(*(a1 + 64));
  sub_100004C14(a1);
  if (*(a1 + 25) == 1)
  {
    sub_1000026B8(0x64424943u);
  }

  *(a1 + 26) = 1;
  close(v5);
  if (v7)
  {
    goto LABEL_19;
  }
}

uint64_t sub_1000040AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = IOMobileFramebufferSetParameter();
  v3 = sub_10000544C(v2);
  sub_10000282C("%s: Update_BIC => %s", "enable_headless_migration", v3);
  return v2;
}

uint64_t sub_100004108(uint64_t a1)
{
  if ((*(a1 + 26) & 1) == 0)
  {
    if (*(a1 + 24) == 1)
    {
      if (!sub_100005254(a1, 0x4C544820u))
      {
        return 0;
      }
    }

    else if (!sub_100005140(a1, *(a1 + 16 * (*(a1 + 128) != 0) + 32), 1, 1, 14, 1, "history"))
    {
      return 0;
    }

    if (sub_100006778(a1))
    {
      goto LABEL_7;
    }

    return 0;
  }

LABEL_7:
  v8 = &_mh_execute_header;
  v9 = 1;
  bzero(v6, 0xFBCuLL);
  sub_10000282C("%s: upload empty history", "upload_history");
  v7 = 0;
  v2 = *(a1 + 16);
  v3 = IOMobileFramebufferSetBlock();
  v4 = sub_10000544C(v3);
  sub_10000282C("%s: set block[0] => %s", "upload_history", v4);
  if (v3 != -536870201 && v3 != -536870174 && v3)
  {
    sub_100001BE0("uploading empty history failed.");
  }

  return v3;
}

uint64_t sub_10000429C(uint64_t a1)
{
  v2 = *(a1 + 96);
  v16 = -1431655766;
  v14 = 0;
  v15 = 0;
  v3 = open(v2, 0);
  v4 = v3;
  if (v3 < 0)
  {
    *&v13.st_dev = 0xAAAAAAAAAAAAAAAALL;
    v7 = sub_10000536C(0x544C5448u, &v14);
    v8 = v14;
    if (v7 || !v14)
    {
      sub_10000282C("%s: Could not read dstore", "upload_tbics_history");
      if ((sub_100006070(1, &v15, &v16) & 1) == 0)
      {
        return 3758097085;
      }

      st_dev = 0;
      goto LABEL_15;
    }

    data = xpc_dictionary_get_data(v14, "content", &v13);
    st_dev = v13.st_dev;
    if (!v13.st_dev)
    {
LABEL_15:
      close(v4);
LABEL_16:
      v6 = sub_1000060F0(*(a1 + 16), 129, v15, st_dev, "TBICS LTH", 0);
      goto LABEL_18;
    }
  }

  else
  {
    v5.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v5.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v13.st_blksize = v5;
    *v13.st_qspare = v5;
    v13.st_birthtimespec = v5;
    *&v13.st_size = v5;
    v13.st_mtimespec = v5;
    v13.st_ctimespec = v5;
    *&v13.st_uid = v5;
    v13.st_atimespec = v5;
    *&v13.st_dev = v5;
    if (fstat(v3, &v13))
    {
      v6 = 3758097084;
      sub_10000282C("%s: Could not stat %s", "upload_tbics_history", v2);
      close(v4);
      return v6;
    }

    v8 = 0;
    data = 0;
    st_dev = LODWORD(v13.st_size);
    if (!LODWORD(v13.st_size))
    {
      goto LABEL_15;
    }
  }

  if (sub_100006070(st_dev, &v15, &v16))
  {
    if (data)
    {
      memcpy(v15, data, st_dev);
      xpc_release(v8);
      goto LABEL_15;
    }

    v12 = read(v4, v15, st_dev);
    close(v4);
    if (v12 >= st_dev)
    {
      goto LABEL_16;
    }

    v6 = 3758097084;
  }

  else
  {
    close(v4);
    v6 = 3758097085;
  }

LABEL_18:
  if (v15)
  {
    free(v15);
  }

  return v6;
}

uint64_t sub_1000044A4(uint64_t a1)
{
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8 = v2;
  v3 = 79;
  do
  {
    usleep(0x3D090u);
    v4 = *(a1 + 16);
    result = IOMobileFramebufferGetBlock();
    if (result)
    {
      v6 = 0;
    }

    else
    {
      v6 = v8 == 1;
    }

    if (!v6 || BYTE8(v8) != 1)
    {
      break;
    }
  }

  while ((HIDWORD(v8) & 0xFFFFFFFD) != 0 && v3-- != 0);
  return result;
}

uint64_t sub_100004540(uint64_t a1)
{
  v1 = 3758097084;
  v11 = -1431655766;
  __ptr = 0;
  v2 = "not ";
  if (*(a1 + 25) != 1)
  {
    v4 = 3758097084;
    goto LABEL_19;
  }

  if (sub_100006070(7856, &__ptr, &v11))
  {
    v4 = sub_1000060F0(*(a1 + 16), 129, __ptr, 7856, "TBICS LTH", 1);
    if (!v4)
    {
      v5 = *(a1 + 96);
      v6 = *(a1 + 104);
      v9[1] = v6;
      v9[2] = v5;
      v7 = fopen(v6, "w");
      v9[0] = v7;
      if (v7)
      {
        if (fwrite(__ptr, 1uLL, 0x1EB0uLL, v7))
        {
          if (sub_100005D00(v9))
          {
            sub_100004B14(0x544C5448u, __ptr, 0x7ACu);
            v1 = 0;
          }

          goto LABEL_12;
        }
      }

      else
      {
        sub_100001BE0("Could not open temp file %s", v6);
      }

      sub_100005DD0(v9);
LABEL_12:
      if (v9[0])
      {
        fclose(v9[0]);
      }

      v4 = v1;
    }
  }

  else
  {
    v4 = 3758097085;
  }

  if (__ptr)
  {
    free(__ptr);
  }

  if (!v4)
  {
    v2 = &unk_10000B13F;
  }

LABEL_19:
  sub_10000282C("TBICS LTH %ssaved", v2);
  return v4;
}

void sub_1000046A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, FILE *a10)
{
  if (a10)
  {
    fclose(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000046B8(uint64_t a1)
{
  if ((*(a1 + 26) & 1) == 0)
  {
    if (*(a1 + 25) != 1)
    {
      goto LABEL_15;
    }

    v10 = 0xAAAAAAAAAAAAAAAALL;
    *&v2 = 0xAAAAAAAAAAAAAAAALL;
    *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v9[1] = v2;
    v9[2] = v2;
    v9[0] = v2;
    v3 = *(a1 + 16);
    v4 = !IOMobileFramebufferGetBlock() && LODWORD(v9[0]) == 1;
    if (v4 && BYTE8(v9[0]) == 1 && (BYTE9(v9[0]) & 1) == 0)
    {
LABEL_15:
      if (sub_100005140(a1, *(a1 + 64), 1, 1, 13, 0, "BIC"))
      {
        v11 = 0;
        bzero(v9, 0xFBCuLL);
        sub_1000044A4(a1);
        v5 = *(a1 + 16);
        v6 = IOMobileFramebufferSetBlock();
        v7 = sub_10000544C(v6);
        sub_10000282C("%s: upload empty bic => %s", "upload_bic", v7);
      }
    }
  }

  return 0;
}

uint64_t sub_1000047C8(uint64_t a1)
{
  v2 = *(a1 + 112);
  v16 = -1431655766;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  v3 = open(v2, 0);
  if ((v3 & 0x80000000) == 0)
  {
    v4 = v3;
    v5.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v5.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v12.st_blksize = v5;
    *v12.st_qspare = v5;
    v6 = 3758097084;
    v12.st_birthtimespec = v5;
    *&v12.st_size = v5;
    v12.st_mtimespec = v5;
    v12.st_ctimespec = v5;
    *&v12.st_uid = v5;
    v12.st_atimespec = v5;
    *&v12.st_dev = v5;
    if (fstat(v3, &v12))
    {
      sub_10000282C("%s: Could not stat %s", "upload_tbics_gain_map", v2);
      close(v4);
      return v6;
    }

    st_size = v12.st_size;
    if (LODWORD(v12.st_size))
    {
      if (!sub_100006070(v12.st_size, &v15, &v16))
      {
        v6 = 3758097085;
        sub_10000282C("%s: get_big_block_buf failed, no memory ");
        goto LABEL_22;
      }

      v8 = v15;
    }

    else
    {
      v8 = 0;
    }

    if (st_size <= read(v4, v8, st_size))
    {
      v6 = 0;
    }

    else
    {
      sub_10000282C("%s: file read failed");
    }

LABEL_22:
    close(v4);
    v10 = 0;
    v9 = v15;
    if (v6)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  sub_10000282C("upload_tbics_gain_map: reading from filesystem failed. Trying EAN");
  if (sub_10000254C(0x54424943u, &v14, &v13))
  {
    v6 = 3758097084;
    sub_10000282C("Failed to read 'TBIC' EAN");
  }

  else
  {
    v6 = 0;
  }

  v9 = v14;
  v15 = v14;
  st_size = (4 * v13);
  v10 = v14;
  if (v6)
  {
    goto LABEL_12;
  }

LABEL_11:
  v6 = sub_1000060F0(*(a1 + 16), 130, v9, st_size, "TBICS BIC", 0);
  v9 = v15;
LABEL_12:
  if (v9)
  {
    free(v9);
  }

  if (v10)
  {
    free(v10);
  }

  return v6;
}

uint64_t sub_100004998(xpc_connection_t *a1)
{
  v2 = dispatch_queue_create("com.apple.disp.store.client", 0);
  mach_service = xpc_connection_create_mach_service("display_storage_service", v2, 0);
  *a1 = mach_service;
  if (mach_service)
  {
    xpc_connection_set_event_handler(mach_service, &stru_100014740);
    xpc_connection_resume(*a1);
    return 0;
  }

  else
  {
    sub_10000282C("Couldn't find Display Storage driver");
    return 5;
  }
}

uint64_t sub_100004A14()
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  v0 = sub_100004998(&v4);
  if (!v0)
  {
    v1 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v1, "command", "erase");
    v2 = v4;
    sub_100004AAC(v4, v1);
    xpc_release(v1);
    xpc_connection_cancel(v2);
    xpc_release(v2);
  }

  return v0;
}

intptr_t sub_100004AAC(_xpc_connection_s *a1, void *a2)
{
  xpc_connection_send_message(a1, a2);
  if (qword_1000186F8 != -1)
  {
    sub_100009F5C();
  }

  xpc_connection_send_barrier(a1, &stru_1000149C8);
  v3 = qword_1000186F0;

  return dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
}

uint64_t sub_100004B14(unsigned int a1, const void *a2, unsigned int a3)
{
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v6 = sub_100004998(&v10);
  if (!v6)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v7, "command", "write");
    xpc_dictionary_set_uint64(v7, "key", a1);
    xpc_dictionary_set_data(v7, "content", a2, 4 * a3);
    v8 = v10;
    sub_100004AAC(v10, v7);
    xpc_release(v7);
    xpc_connection_cancel(v8);
    xpc_release(v8);
  }

  return v6;
}

void sub_100004C14(uint64_t a1)
{
  if (*(a1 + 25) == 1)
  {

    sub_1000026B8(0x644C5448u);
  }

  else
  {
    *&v2 = 0xAAAAAAAAAAAAAAAALL;
    *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v24 = v2;
    v25 = v2;
    v22 = v2;
    v23 = v2;
    v20 = v2;
    v21 = v2;
    v18 = v2;
    v19 = v2;
    v16 = v2;
    v17 = v2;
    v14 = v2;
    v15 = v2;
    v12 = v2;
    v13 = v2;
    *v10 = v2;
    v11 = v2;
    sub_100006530(a1);
    if (*(a1 + 156))
    {
      v4 = *(a1 + 160);
      if (sub_100006270(v3, v10, 0x100uLL))
      {
        v5 = open(v10, 1);
        if (v5 < 0)
        {
          sub_10000282C("Unable to open DR LTH");
        }

        else
        {
          v6 = v5;
          if (fcntl(v5, 48, 1) < 0)
          {
            sub_10000282C("Failed to set F_NOCACHE");
          }

          else
          {
            v7 = 4 * v4;
            v8 = malloc_type_malloc(v7, 0x100004077774924uLL);
            if (v8)
            {
              v9 = v8;
              bzero(v8, v7);
              write(v6, v9, v7);
              free(v9);
            }
          }

          close(v6);
        }
      }

      else
      {

        sub_10000282C("Unable to find BIS device");
      }
    }
  }
}

uint64_t sub_100004DDC()
{
  v3 = 128;
  if (sysctlbyname("hw.target", byte_100018260, &v3, 0, 0))
  {
    return 0xFFFFFFFFLL;
  }

  v1 = 0;
  v2 = v3;
  while (strncmp(byte_100018260, off_100014760[v1], v2 + 1))
  {
    if (++v1 == 20)
    {
      return 4;
    }
  }

  return 5;
}

uint64_t sub_100004E80()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v27 = 0;
  v28 = v8;
  v29 = v9;
  bzero(v24, 0xFBCuLL);
  if (*(v7 + 152))
  {
    v10 = 0x40000000;
  }

  else
  {
    v10 = 0;
  }

  sub_10000282C("%s (%s)", "upload_reader", v2);
  if (v4 < 1024 || (v4 & 3) != 0)
  {
    sub_10000282C("%s: bad file size (%d) for %s", "upload_reader", v4, v2);
    v18 = 3758097084;
LABEL_22:
    sub_100001BE0("uploading %s failed.", v2);
  }

  else
  {
    v23 = v2;
    v11 = 0;
    v12 = v4 >> 2;
    v13 = ((v4 >> 2) + 999) / 0x3E8;
    v25 = v4 >> 2;
    LODWORD(v14) = 1000;
    v21 = v12;
    v22 = v10;
    v20 = (v12 + 999) / 0x3E8;
    while (2)
    {
      if (v11 == v13)
      {
        sub_10000282C("%s: Upload of %s successful", "upload_reader", v23);
      }

      else
      {
        v27 = v11 | v10;
        if (v13 == v11 + 1)
        {
          v14 = v12 - v11 * v14;
        }

        else
        {
          v14 = v14;
        }

        (**v6)(v6, &v26, v14);
        v15 = 15;
        while (1)
        {
          v16 = *(v7 + 16);
          v17 = IOMobileFramebufferSetBlock();
          v18 = v17;
          if (v11 || v17 != -536870187)
          {
            break;
          }

          usleep(0xF4240u);
          if (!--v15)
          {
            v18 = 3758097109;
LABEL_21:
            sub_10000282C("%s: bad return stat %X", "upload_reader", v18);
            v2 = v23;
            goto LABEL_22;
          }
        }

        if (v11 || v17 != -536870174)
        {
          ++v11;
          v12 = v21;
          v10 = v22;
          v13 = v20;
          if (!v17)
          {
            continue;
          }

          goto LABEL_21;
        }
      }

      return 0;
    }
  }

  return v18;
}

uint64_t sub_100005140(int a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = 3758097084;
  v9 = open(a2, 0);
  if ((v9 & 0x80000000) == 0)
  {
    v10 = v9;
    v11.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v11.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v13.st_blksize = v11;
    *v13.st_qspare = v11;
    v13.st_birthtimespec = v11;
    *&v13.st_size = v11;
    v13.st_mtimespec = v11;
    v13.st_ctimespec = v11;
    *&v13.st_uid = v11;
    v13.st_atimespec = v11;
    *&v13.st_dev = v11;
    if (fstat(v9, &v13))
    {
      sub_10000282C("%s: Could not stat %s", "upload_file", a7);
    }

    else
    {
      v14 = &off_1000149F8;
      v16 = -1431655766;
      v15 = v10;
      v8 = sub_100004E80();
    }

    close(v10);
  }

  return v8;
}

uint64_t sub_100005254(uint64_t a1, unsigned int a2)
{
  length = 0xAAAAAAAAAAAAAAAALL;
  xdict = 0xAAAAAAAAAAAAAAAALL;
  if (sub_10000536C(a2, &xdict) || (v2 = xdict) == 0)
  {
    sub_10000282C("%s: Could not read dstore", "upload_dstore");
    return 3758097084;
  }

  else
  {
    xpc_dictionary_get_data(xdict, "content", &length);
    length >>= 2;
    v3 = sub_100004E80();
    xpc_release(v2);
  }

  return v3;
}

uint64_t sub_10000536C(unsigned int a1, xpc_object_t *a2)
{
  connection = 0xAAAAAAAAAAAAAAAALL;
  result = sub_100004998(&connection);
  if (!result)
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v5, "command", "read");
    xpc_dictionary_set_uint64(v5, "key", a1);
    v6 = connection;
    *a2 = xpc_connection_send_message_with_reply_sync(connection, v5);
    xpc_release(v5);
    xpc_connection_cancel(v6);
    xpc_release(v6);
    if (xpc_get_type(*a2) == &_xpc_type_dictionary)
    {
      return 0;
    }

    else
    {
      xpc_release(*a2);
      *a2 = 0;
      return 5;
    }
  }

  return result;
}

char *sub_10000544C(int a1)
{
  v1 = &off_1000148A0;
  v2 = 9;
  while (*(v1 - 2) != a1)
  {
    v1 += 2;
    if (!--v2)
    {
      v3 = byte_1000182E0;
      snprintf(byte_1000182E0, 0xCuLL, "%X", a1);
      return v3;
    }
  }

  return *v1;
}

unint64_t sub_1000054C0(uint64_t a1, _DWORD *a2, unint64_t a3, uint64_t a4, const void *a5)
{
  v9 = sub_100004DDC();
  v10 = sub_100004DDC();
  *a2 = v10;
  if (v10 == 4)
  {
    v11 = 92;
  }

  else
  {
    v11 = 84;
  }

  v12 = (v11 + *(a4 + 96));
  a2[1] = v12;
  if (v12 <= a3)
  {
    v13 = a2 + 14;
    v14 = (a4 + 13);
    v15 = 3;
    do
    {
      *(v13 - 6) = *(v14 - 9);
      *(v13 - 3) = *(v14 - 6);
      *v13 = *(v14 - 3);
      v13[3] = *v14;
      v13[6] = v14[3];
      v13[9] = v14[6];
      v13[12] = v14[9];
      ++v13;
      ++v14;
      --v15;
    }

    while (v15);
    v16 = a4 + 26;
    v17 = a2 + 15;
    v18 = a2 + 11;
    v19 = 3;
    do
    {
      *v17 = *v16;
      v17[3] = *(v16 + 2);
      v20 = *(v16 + 14);
      v16 += 4;
      *v18++ = v20;
      ++v17;
      --v19;
    }

    while (v19);
    for (i = 0; i != 3; ++i)
    {
      a2[i + 14] = *(a4 + 52 + i * 4);
    }

    v22 = a2 + 17;
    if (v9 == 4)
    {
      for (j = 0; j != 3; ++j)
      {
        v22[j] = *(a4 + 64 + j * 4);
      }

      for (k = 0; k != 3; ++k)
      {
        a2[k + 20] = *(a4 + 76 + k * 4);
      }

      v25 = *(a4 + 96);
      v26 = a2 + 23;
    }

    else
    {
      for (m = 0; m != 3; ++m)
      {
        v22[m] = *(a4 + 76 + m * 4);
      }

      a2[20] = *(a4 + 128);
      v25 = *(a4 + 96);
      v26 = a2 + 21;
    }

    memcpy(v26, a5, v25);
  }

  else
  {
    sub_100001BE0("Not enough space allocated for the ibic header");
    return 0;
  }

  return v12;
}

uint64_t sub_10000567C()
{
  v0 = __chkstk_darwin();
  v25 = v1;
  v26 = v2;
  v24 = v3;
  v4 = v0;
  v29 = v5;
  v30 = v6;
  v31 = 0;
  if (*(v0 + 152))
  {
    v7 = 0x40000000;
  }

  else
  {
    v7 = 0;
  }

  memset(__b, 170, sizeof(__b));
  v8 = 0;
  v9 = 0;
  while (1)
  {
    v28 = v8 | v7;
    v10 = *(v4 + 16);
    Block = IOMobileFramebufferGetBlock();
    v12 = Block;
    if (Block == -536870187)
    {
      goto LABEL_8;
    }

    if (!Block)
    {
      break;
    }

    if (Block != -536870184)
    {
      v13 = sub_10000544C(Block);
      sub_10000282C("%s: GetBlock[0] returned %s", "fetch_machine", v13);
      goto LABEL_14;
    }

LABEL_8:
    if (++v9 > 0x77)
    {
      sub_100001BE0("%s: max retries reached; bailing.");
      return v12;
    }

    sub_10000282C("%s: IOMFB busy, will retry", "fetch_machine");
LABEL_11:
    usleep(0xF4240u);
    v8 = v28;
  }

  v31 = __b[1];
  sub_10000282C("%s: xfer id=%d, pending=%d, nwords=%d", "fetch_machine", __b[1], LOBYTE(__b[0]), __b[2]);
  if (LOBYTE(__b[0]) == 1)
  {
    goto LABEL_11;
  }

  v14 = __b[2];
  if ((__b[2] - 1) >= 0x3E8)
  {
    v15 = 1000;
  }

  else
  {
    v15 = __b[2];
  }

  v16 = (v25)(v26, __b, 0, v15, __b[2]);
  if (!v16)
  {
    v31 = __b[1];
    if ((v14 + 999) < 0x7D0)
    {
LABEL_29:
      sub_10000282C("%s: save of %s successful", "fetch_machine", v24);
      return 0;
    }

    v18 = (v14 + 999) / 0x3E8u - 1;
    v19 = 1;
    v20 = -1000;
    LODWORD(v21) = v15;
    while (1)
    {
      v28 = v19 | v7;
      v22 = *(v4 + 16);
      v23 = IOMobileFramebufferGetBlock();
      if (v23)
      {
        break;
      }

      if (--v18)
      {
        v21 = v21;
      }

      else
      {
        v21 = (v20 + __b[2]);
      }

      v16 = v25(v26, __b, v15, v21);
      if (v16)
      {
        goto LABEL_19;
      }

      v15 = (v21 + v15);
      v20 -= 1000;
      ++v19;
      if (!v18)
      {
        goto LABEL_29;
      }
    }

    v12 = v23;
LABEL_14:
    sub_100001BE0("failed to save %s -- IOMFB in a bad state");
    return v12;
  }

LABEL_19:
  v12 = v16;
  sub_100001BE0("%s: %s save failure [%X]");
  return v12;
}

uint64_t sub_100005970(uint64_t a1, char *a2, size_t a3)
{
  iterator = 0;
  if (IORegistryCreateIterator(kIOMainPortDefault, "IOService", 1u, &iterator))
  {
    sub_10000282C("Failed to allocate iterator");
    return 0;
  }

  v6 = IOIteratorNext(iterator);
  if (!v6)
  {
LABEL_12:
    v5 = 0;
    goto LABEL_13;
  }

  v7 = v6;
  while (1)
  {
    if (!IOObjectConformsTo(v7, "IOMedia") || kCFBooleanTrue != IORegistryEntrySearchCFProperty(v7, "IOService", @"EmbeddedDeviceTypeFirmware", kCFAllocatorDefault, 3u))
    {
      goto LABEL_11;
    }

    properties = 0xAAAAAAAAAAAAAAAALL;
    if (!IORegistryEntryCreateCFProperties(v7, &properties, kCFAllocatorDefault, 0))
    {
      break;
    }

    sub_10000282C("Unable to obtain properties of IOMedia object");
LABEL_11:
    IOObjectRelease(v7);
    v7 = IOIteratorNext(iterator);
    if (!v7)
    {
      goto LABEL_12;
    }
  }

  Value = CFDictionaryGetValue(properties, @"BSD Name");
  if (!Value)
  {
    CFRelease(properties);
    goto LABEL_11;
  }

  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v19 = v10;
  v20 = v10;
  v17 = v10;
  v18 = v10;
  v15 = v10;
  v16 = v10;
  *buffer = v10;
  v14 = v10;
  CFStringGetCString(Value, buffer, 128, 0x8000100u);
  snprintf(a2, a3, "%s%s", "/dev/", buffer);
  CFRelease(properties);
  IOObjectRelease(v7);
  v5 = 1;
LABEL_13:
  IOObjectRelease(iterator);
  return v5;
}

uint64_t sub_100005B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (a6)
  {
    operator new();
  }

  v8 = sub_10000567C();
  if (v8)
  {
    sub_100001BE0("%s save failure", a7);
  }

  return v8;
}

BOOL sub_100005D00(uint64_t a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = ferror(*a1);
  fclose(v1);
  *a1 = 0;
  if (!*(a1 + 8))
  {
    return 1;
  }

  v4.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v4.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v8.st_blksize = v4;
  *v8.st_qspare = v4;
  v8.st_birthtimespec = v4;
  *&v8.st_size = v4;
  v8.st_mtimespec = v4;
  v8.st_ctimespec = v4;
  *&v8.st_uid = v4;
  v8.st_atimespec = v4;
  *&v8.st_dev = v4;
  if (v3)
  {
LABEL_4:
    unlink(*(a1 + 8));
    return 0;
  }

  sync();
  if (stat(*(a1 + 16), &v8))
  {
    if (*__error() != 2)
    {
      goto LABEL_4;
    }
  }

  else if (unlink(*(a1 + 16)))
  {
    goto LABEL_4;
  }

  rename(*(a1 + 8), *(a1 + 16), v6);
  return v7 == 0;
}

BOOL sub_100005DD0(uint64_t a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = ferror(*a1);
  fclose(v1);
  *a1 = 0;
  v4 = *(a1 + 8);
  if (!v4)
  {
    v4 = *(a1 + 16);
  }

  return (unlink(v4) | v3) == 0;
}

uint64_t sub_100005E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, _DWORD *a6, const char *a7)
{
  *a5 = 0;
  v10 = sub_10000567C();
  if (v10)
  {
    sub_100001BE0("%s fetch failure", a7);
    if (*a5)
    {
      free(*a5);
      *a5 = 0;
    }
  }

  else
  {
    *a6 = 0;
  }

  return v10;
}

uint64_t sub_100005EE4(uint64_t a1)
{
  v1 = 3758097084;
  v11 = -1431655766;
  __ptr = 0;
  if (*(a1 + 25) != 1)
  {
    v4 = 715827882;
    goto LABEL_8;
  }

  if (!sub_100006070(3968, &__ptr, &v11))
  {
    v1 = 3758097085;
    goto LABEL_7;
  }

  v3 = sub_1000060F0(*(a1 + 16), 130, __ptr, 3968, "TBIC", 1);
  if (!v3)
  {
    v6 = *(a1 + 112);
    v7 = *(a1 + 120);
    v9[1] = v7;
    v9[2] = v6;
    v8 = fopen(v7, "w");
    v9[0] = v8;
    if (v8)
    {
      if (fwrite(__ptr, 1uLL, 0xF80uLL, v8))
      {
        if (sub_100005D00(v9))
        {
          sub_10000282C("TBICS Gain Map saved to file system");
          v1 = 0;
          goto LABEL_21;
        }

        sub_10000282C("TBICS Gain Map was not saved to File system. Error in fs.close()");
LABEL_20:
        v1 = 3758097084;
LABEL_21:
        if (v9[0])
        {
          fclose(v9[0]);
        }

        goto LABEL_7;
      }
    }

    else
    {
      sub_100001BE0("Could not open temp file %s", v7);
    }

    sub_100005DD0(v9);
    sub_10000282C("TBICS Gain Map was not saved to File system. Error in fs.write()");
    goto LABEL_20;
  }

  v1 = v3;
LABEL_7:
  v4 = 992;
LABEL_8:
  if (sub_10000274C(0x54424943u, __ptr, v4))
  {
    sub_10000282C("TBICS Gain Map not saved to EAN");
    v1 = 3758097084;
  }

  if (__ptr)
  {
    free(__ptr);
  }

  return v1;
}

void sub_100006058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, FILE *a10)
{
  if (a10)
  {
    fclose(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100006070(int a1, uint64_t *a2, _DWORD *a3)
{
  result = 0;
  if (a1 && a2 && a3)
  {
    v7 = (a1 + 0x3FFF) & 0xFFFFC000;
    *a3 = v7;
    result = malloc_type_aligned_alloc(0x4000uLL, v7, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      bzero(result, *a3);
      return 1;
    }

    else
    {
      *a3 = 0;
    }
  }

  return result;
}

uint64_t sub_1000060F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, int a6)
{
  if (a6)
  {
    v8 = "get";
  }

  else
  {
    v8 = "set";
  }

  for (i = 119; ; --i)
  {
    v10 = a6 ? IOMobileFramebufferGetBufBlock() : IOMobileFramebufferSetBlock();
    v11 = v10;
    if (v10 != -536870187 && v10 != -536870184)
    {
      break;
    }

    if (!i)
    {
      sub_100001BE0("%s %s max retries reached -> bailing");
      return v11;
    }

    sub_10000282C("%s %s failed, will retry", v8, a5);
    usleep(0xF4240u);
  }

  if (v10)
  {
    sub_10000544C(v10);
    sub_100001BE0("%s %s failed: %s");
  }

  return v11;
}

uint64_t sub_100006270(uint64_t a1, char *a2, size_t a3)
{
  iterator = 0;
  if (IORegistryCreateIterator(kIOMainPortDefault, "IOService", 1u, &iterator))
  {
    sub_10000282C("Failed to allocate iterator");
    return 0;
  }

  v6 = IOIteratorNext(iterator);
  if (!v6)
  {
LABEL_13:
    v5 = 0;
    goto LABEL_14;
  }

  v7 = v6;
  __size = a3;
  while (1)
  {
    if (!IOObjectConformsTo(v7, "IOMedia") || kCFBooleanTrue != IORegistryEntrySearchCFProperty(v7, "IOService", @"EmbeddedDeviceTypeBIS", kCFAllocatorDefault, 3u))
    {
      goto LABEL_12;
    }

    properties = 0xAAAAAAAAAAAAAAAALL;
    if (!IORegistryEntryCreateCFProperties(v7, &properties, kCFAllocatorDefault, 0))
    {
      break;
    }

    sub_10000282C("Unable to obtain properties of IOMedia object");
LABEL_12:
    IOObjectRelease(v7);
    v7 = IOIteratorNext(iterator);
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  Value = CFDictionaryGetValue(properties, @"BSD Name");
  v9 = CFDictionaryGetValue(properties, @"Whole");
  if (!Value || v9 != kCFBooleanTrue)
  {
    CFRelease(properties);
    goto LABEL_12;
  }

  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21 = v11;
  v22 = v11;
  v19 = v11;
  v20 = v11;
  v17 = v11;
  v18 = v11;
  *buffer = v11;
  v16 = v11;
  CFStringGetCString(Value, buffer, 128, 0x8000100u);
  snprintf(a2, __size, "%s%s", "/dev/", buffer);
  CFRelease(properties);
  IOObjectRelease(v7);
  v5 = 1;
LABEL_14:
  IOObjectRelease(iterator);
  return v5;
}

uint64_t sub_100006494()
{
  v0 = IOServiceMatching("AppleANS2NVMeController");
  if (!v0)
  {
    sub_10000282C("Can't create AppleANS2NVMeController dictionary");
    return 16;
  }

  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v0);
  if (!MatchingService)
  {
    sub_10000282C("Can't find AppleANS2NVMeController service");
    return 16;
  }

  v2 = MatchingService;
  if (IORegistryEntrySetCFProperty(MatchingService, @"bis-write-done", kCFBooleanTrue))
  {
    sub_10000282C("Failed to commit BIS");
  }

  IOObjectRelease(v2);
  return 0;
}

void sub_100006530(uint64_t a1)
{
  v2 = 5;
  while (!*(a1 + 156))
  {
    v3 = *(a1 + 16);
    Block = IOMobileFramebufferGetBlock();
    if (Block != -536870187 && Block != -536870184)
    {
      if (Block)
      {
        sub_10000282C(">> reading BICS params failed.");
      }

      else
      {
        sub_10000282C("unexpected struct version for BICS parameters");
      }

      return;
    }

    usleep(0xF4240u);
    if (!--v2)
    {
      return;
    }
  }
}

uint64_t sub_100006674(const void *a1, size_t a2, char *a3)
{
  v3 = 22;
  if (a1 && a3)
  {
    v7 = open(a3, 1);
    if ((v7 & 0x80000000) == 0)
    {
      v8 = v7;
      if (fcntl(v7, 48, 1) < 0)
      {
        sub_10000282C("Failed to set F_NOCACHE", v12);
      }

      else
      {
        v9 = write(v8, a1, a2);
        v10 = v9;
        if ((v9 & 0x8000000000000000) == 0 && v9 == a2)
        {
          v3 = 0;
LABEL_14:
          close(v8);
          return v3;
        }

        sub_10000282C("Failed to Write");
        if (v10 < 0)
        {
          sub_10000282C("Write Failed");
        }

        else
        {
          sub_10000282C("Wrong Buf_size %zd - %zd");
        }
      }

      v3 = *__error();
      goto LABEL_14;
    }

    sub_10000282C("Failed to open %s", a3);
    return *__error();
  }

  return v3;
}

uint64_t sub_100006778(uint64_t a1)
{
  sub_100006530(a1);
  sub_10000282C("%s", "load_recovery_lth");
  if (!*(a1 + 156) || !*(a1 + 158) || !*(a1 + 160))
  {
    v5 = 3758097084;
    sub_10000282C("Params missing in %s");
    return v5;
  }

  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21[14] = v3;
  v21[15] = v3;
  v21[12] = v3;
  v21[13] = v3;
  v21[10] = v3;
  v21[11] = v3;
  v21[8] = v3;
  v21[9] = v3;
  v21[6] = v3;
  v21[7] = v3;
  v21[4] = v3;
  v21[5] = v3;
  v21[2] = v3;
  v21[3] = v3;
  v21[0] = v3;
  v21[1] = v3;
  if (*(a1 + 25) != 1)
  {
    if ((sub_100006270(v2, v21, 0x100uLL) & 1) == 0)
    {
      sub_10000282C("Unable to find BIS device");
      return 3758097098;
    }

    sub_10000282C("LTH recovery path = %s", v21);
    v7 = sub_100006A88(v21);
    if (v7 < 0)
    {
      v15 = strerror(-536870212);
      sub_10000282C("Unable to read BIS LTH - %s", v15);
      return 3758097098;
    }

    v8 = v7;
    v9 = (4 * *(a1 + 160));
    v10 = *(a1 + 156);
    v11 = *(a1 + 158);
    v5 = sub_100004E80();
    if (v5)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v20 = 0xAAAAAAAAAAAAAAAALL;
  v19 = -1431655766;
  v4 = sub_10000254C(0x644C5448u, &v20, &v19);
  if (v4)
  {
    v5 = v4;
    sub_10000282C("Failed to read dLTH from ean: ret- %d");
    return v5;
  }

  v12 = v20;
  v13 = *v20;
  if ((*v20 & 0x80000000) != 0)
  {
    v14 = v13 & 0x7FFFFFFF;
    v13 = v20[1];
  }

  else
  {
    v14 = 1;
  }

  sub_10000282C("dLTH version: %u\n", v14);
  v16 = *(a1 + 160);
  if (v13 > v16 || v19 <= v13)
  {
    v5 = 3758097084;
    sub_10000282C("Buffer size mismatch in %s: buf %d, recovery.nwords %d", "load_recovery_lth", v13, v16);
    free(v12);
    return v5;
  }

  sub_10000282C("dLTH size: %u\n", v13);
  v17 = *(a1 + 156);
  v18 = *(a1 + 158);
  v5 = sub_100004E80();
  free(v12);
  v8 = -1;
  if (!v5)
  {
LABEL_12:
    sub_10000282C("Disaster recovery history uploaded");
  }

LABEL_13:
  if ((v8 & 0x80000000) == 0)
  {
    close(v8);
  }

  return v5;
}

uint64_t sub_100006A88(const char *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = open(a1, 0);
  if ((v2 & 0x80000000) != 0)
  {
    sub_10000282C("Failed to open %s", a1);
  }

  return v2;
}

uint64_t sub_100006AE0(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  result = 3758097090;
  if (a2 <= 1 && a3)
  {
    v6 = *(a1 + 136);
    v7 = BIMUpdaterRead();
    if (v7)
    {
      sub_10000282C("IOConnectCallMethod() @%u failed for READ with 0x%08x.", 2285, v7);
      return 3758097098;
    }

    sub_10000282C("IOMFB: BIM read version:%u header:%u timestamp:%llu crc:%u", *a3, a3[1], *(a3 + 2), *(a3 + 7));
    if (*a3 == 1)
    {
      if (a3[1] == 66)
      {
        if (*(a3 + 7) == ~sub_1000087B0(0xFFFFFFFFLL, a3, 28))
        {
          return 0;
        }

        v8 = *(a3 + 7);
        sub_10000282C("BIM region: %llu failed Checksum: %08x expected - %08x calculated");
      }

      else
      {
        v10 = a3[1];
        sub_10000282C("BIM region: %llu header malformed %02x expected - %02x read");
      }
    }

    else
    {
      v9 = *a3;
      sub_10000282C("BIM region: %llu version incorrect %02x expected - %02x read");
    }

    return 3758097084;
  }

  return result;
}

uint64_t sub_100006C0C(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v3 = 3758097090;
  if (a2 <= 1 && a3)
  {
    v5 = *(a1 + 136);
    v8 = *a3;
    v9 = a3[1];
    v6 = BIMUpdaterWrite();
    if (v6)
    {
      sub_10000282C("IOConnectCallMethod() @%u failed for WRITE with 0x%08x.", 2332, v6);
      return 3758097098;
    }

    else
    {
      sub_10000282C("BIM region %llu: write successful", a2);
      return 0;
    }
  }

  return v3;
}

BOOL sub_100006C94(uint64_t a1, const char *a2, unsigned int a3, unsigned int a4)
{
  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = v7;
  if (v7)
  {
    xpc_dictionary_set_uint64(v7, "channel", a3);
    xpc_dictionary_set_string(v8, "value_type", a2);
    xpc_dictionary_set_uint64(v8, "value", a4);
    analytics_send_event();
    xpc_release(v8);
  }

  return v8 != 0;
}

BOOL sub_100006D38(uint64_t a1, int a2, uint64_t a3, unsigned int a4)
{
  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = v7;
  if (v7)
  {
    xpc_dictionary_set_uint64(v7, "tile", a4 + 1000 * a2);
    v9 = (a3 + 6 * a4);
    xpc_dictionary_set_uint64(v8, "red_min", v9[4]);
    xpc_dictionary_set_uint64(v8, "red_median", v9[5]);
    xpc_dictionary_set_uint64(v8, "red_max", v9[6]);
    xpc_dictionary_set_uint64(v8, "green_min", v9[604]);
    xpc_dictionary_set_uint64(v8, "green_median", v9[605]);
    xpc_dictionary_set_uint64(v8, "green_max", v9[606]);
    xpc_dictionary_set_uint64(v8, "blue_min", v9[1204]);
    xpc_dictionary_set_uint64(v8, "blue_median", v9[1205]);
    xpc_dictionary_set_uint64(v8, "blue_max", v9[1206]);
    analytics_send_event();
    xpc_release(v8);
  }

  return v8 != 0;
}

uint64_t sub_100006E74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (IOMobileFramebufferSetParameter())
  {
    return 3758097084;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100006EB8(_BYTE *a1)
{
  info = 0;
  (*(*a1 + 72))(a1, 1);
  v2 = byte_1000180A1;
  v3 = byte_1000180A0[0];
  if (byte_1000180A1 >= byte_1000180A0[0])
  {
    v9 = 0;
  }

  else
  {
    v4 = &byte_1000180A0[48 * byte_1000180A1 + 32];
    while (a1[27] != 1)
    {
      mach_timebase_info(&info);
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = mach_absolute_time();
      v8 = &a1[v6 >> 1];
      if (v6)
      {
        v5 = *(*v8 + v5);
      }

      v9 = v5(v8);
      v10 = (mach_absolute_time() - v7) * info.numer / info.denom / 0xF4240;
      sub_10000282C("Task %s took %llu millisec\n", v4, v10);
      *(v4 - 3) = v10;
      byte_1000180A1 = ++v2;
      v3 = byte_1000180A0[0];
      v4 += 48;
      if (v2 >= byte_1000180A0[0])
      {
        LODWORD(v2) = v2;
        goto LABEL_10;
      }
    }

    sub_10000282C("Interrupted by sleep at %s task!!\n", v4);
    LODWORD(v2) = byte_1000180A1;
    v3 = byte_1000180A0[0];
    v9 = 3758097131;
  }

LABEL_10:
  if (v2 == v3)
  {
    sub_10000282C("Tasks completed!!\n");
    byte_1000180A1 = 0;
  }

  (*(*a1 + 72))(a1, 0);
  return v9;
}

uint64_t sub_10000708C(uint64_t a1)
{
  result = sub_10000289C(a1);
  if (*(a1 + 153) == 1)
  {

    return sub_100004540(a1);
  }

  return result;
}

uint64_t sub_1000070DC(_BYTE *a1)
{
  if (a1[8] == 1)
  {
    v2 = *(*a1 + 88);

    return v2();
  }

  else
  {
    v4 = sub_10000289C(a1);
    v5 = sub_100002944(a1);
    if (!v4)
    {
      v4 = v5;
    }

    v6 = sub_100002A10(a1);
    if (!v4)
    {
      v4 = v6;
    }

    v7 = sub_100002AFC(a1);
    if (!v4)
    {
      v4 = v7;
    }

    if (a1[153] == 1)
    {
      sub_100004540(a1);
      sub_100005EE4(a1);
    }

    v8 = sub_100002BF4(a1);
    if (!v4)
    {
      v4 = v8;
    }

    v9 = sub_100002D10(a1);
    if (!v4)
    {
      v4 = v9;
    }

    v10 = sub_100002F34(a1);
    if (!v4)
    {
      v4 = v10;
    }

    v11 = sub_1000031A4(a1);
    if (!v4)
    {
      v4 = v11;
    }

    LODWORD(result) = sub_10000359C(a1);
    if (v4)
    {
      return v4;
    }

    else
    {
      return result;
    }
  }
}

uint64_t sub_1000071F0(uint64_t a1, uint64_t a2)
{
  v4.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v4.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v8.st_blksize = v4;
  *v8.st_qspare = v4;
  v8.st_birthtimespec = v4;
  *&v8.st_size = v4;
  v8.st_mtimespec = v4;
  v8.st_ctimespec = v4;
  *&v8.st_uid = v4;
  v8.st_atimespec = v4;
  *&v8.st_dev = v4;
  if ((*(a1 + 24) & 1) == 0 && stat("migrate_history", &v8))
  {
    *(a1 + 152) = 1;
    result = sub_10000289C(a1);
    *(a1 + 152) = 0;
    if (result)
    {
      return snprintf(a2, 0x64uLL, "save migrate history [%X]");
    }

    *(a2 + 16) = 108;
    v7 = "export successful";
    goto LABEL_15;
  }

  sub_1000044A4(a1);
  *(a1 + 152) = 1;
  if (*(a1 + 24) == 1)
  {
    v6 = sub_100005254(a1, 0x4C544820u);
  }

  else
  {
    v6 = sub_100005140(a1, "migrate_history", 1, 1, 14, 1, "migrate history");
  }

  *(a1 + 152) = 0;
  if (v6)
  {
    return snprintf(a2, 0x64uLL, "import history failed [%X]");
  }

  if ((*(a1 + 24) & 1) == 0)
  {
    unlink("migrate_history");
  }

  if (sub_10000289C(a1))
  {
    return snprintf(a2, 0x64uLL, "save local history failed [%X]");
  }

  if (sub_100002944(a1))
  {
    return snprintf(a2, 0x64uLL, "regenerate BIC failed [%X]");
  }

  result = sub_100002A10(a1);
  if (!result)
  {
    *(a2 + 16) = 108;
    v7 = "import successful";
LABEL_15:
    *a2 = *v7;
    return result;
  }

  return snprintf(a2, 0x64uLL, "save BIC failed [%X]");
}

uint64_t sub_1000073A0(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 25) = 0;
  *a1 = off_100014810;
  *(a1 + 32) = *off_100014868;
  *(a1 + 48) = *off_100014878;
  *(a1 + 64) = *off_100014888;
  bzero((a1 + 80), 0xD6uLL);
  return a1;
}

uint64_t sub_10000740C(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
  *(a1 + 25) = sub_100001B50(a1, @"ean-storage-present");
  return 1;
}

BOOL sub_100007444(uint64_t a1)
{
  v2 = *(a1 + 16);
  Block = IOMobileFramebufferGetBlock();
  if (Block)
  {
    sub_10000282C("No LACS support");
  }

  else
  {
    if (sub_1000074F0(a1))
    {
      sub_10000282C("Failed to upload LAH");
    }

    v5 = sub_100007748(a1);
    if (v5)
    {
      if (v5 == -536870911)
      {
        sub_1000079AC(a1);
        sub_100007A08(a1, 0);
      }

      else
      {
        sub_10000282C("Failed to upload LAC");
      }
    }
  }

  return Block == 0;
}

uint64_t sub_1000074F0(uint64_t a1)
{
  if (*(a1 + 293))
  {
    return 0;
  }

  v19 = "recovery history";
  v20 = "file history";
  v17 = 0;
  __ptr = 0;
  v3 = sub_1000013B4(22400);
  if (!sub_100006070(v3, &__ptr, &v17))
  {
    return 3758097085;
  }

  v15 = 0xAAAAAAAAAAAAAAAALL;
  sub_1000089B4(&v15, *(a1 + 32));
  if (v15)
  {
    v4 = sub_100007A90(a1, &v15, __ptr, v17, &v18, "file history");
    if (v4 == -536870911)
    {
      memset(__to, 0, sizeof(__to));
      v14 = time(0);
      v7 = localtime(&v14);
      strftime(__to, 0x50uLL, "history_%R_%F", v7);
      if (v15)
      {
        fclose(v15);
      }

      v15 = 0;
      rename(*(a1 + 32), __to, v8);
      sub_10000282C("corrupted history moved aside %s\n", __to);
    }

    else if (!v4)
    {
      v5 = &v20;
      v6 = "file history";
      goto LABEL_16;
    }
  }

  v9 = sub_100007CC8(a1, __ptr, v17, "recovery history");
  v1 = v9;
  if (v9)
  {
    if (v9 == -536870911)
    {
      sub_1000026B8(0x724C4153u);
      v1 = 3758096385;
    }

    goto LABEL_19;
  }

  v5 = &v19;
  v6 = "recovery history";
LABEL_16:
  v10 = sub_1000060F0(*(a1 + 16), 58, __ptr, v17, v6, 0);
  v1 = v10;
  v11 = *v5;
  if (v10)
  {
    v12 = sub_10000544C(v10);
    sub_100001BE0("upload %s failed: %s", v11, v12);
  }

  else
  {
    sub_10000282C("uploaded %s", *v5);
    v1 = 0;
  }

LABEL_19:
  if (__ptr)
  {
    free(__ptr);
  }

  if (v15)
  {
    fclose(v15);
  }

  return v1;
}

void sub_100007720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, FILE *a12)
{
  if (a12)
  {
    fclose(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100007748(uint64_t a1)
{
  v13[0] = "file LAC";
  v13[1] = "iLAC";
  v13[2] = "test LAC";
  v2 = *(a1 + 80);
  v11 = 0;
  __ptr = 0;
  v3 = sub_1000013B4(5600);
  if (!sub_100006070(v3, &__ptr, &v11))
  {
    return 3758097085;
  }

  if ((*(a1 + 80) & 2) != 0 && (v9 = 0xAAAAAAAAAAAAAAAALL, sub_1000089B4(&v9, *(a1 + 64)), v9))
  {
    v4 = sub_100007A90(a1, &v9, __ptr, v11, &v12, "test LAC");
    if (v9)
    {
      fclose(v9);
    }

    if (!v4)
    {
      v5 = 2;
      goto LABEL_26;
    }
  }

  else if (v2)
  {
    v5 = 3;
    goto LABEL_24;
  }

  v7 = sub_100007ED8(a1, __ptr, v11, "iLAC");
  v6 = v7;
  if (v7)
  {
    if (v7 == -536870911)
    {
      sub_1000026B8(0x694C4143u);
    }

    v9 = 0xAAAAAAAAAAAAAAAALL;
    sub_1000089B4(&v9, *(a1 + 48));
    if (!v9)
    {
      goto LABEL_28;
    }

    v6 = sub_100007A90(a1, &v9, __ptr, v11, &v12, "file LAC");
    if (v6 == -536870911)
    {
      if (v9)
      {
        fclose(v9);
      }

      v9 = 0;
      unlink(*(a1 + 48));
    }

    if (v9)
    {
      fclose(v9);
    }

    if (v6)
    {
      goto LABEL_28;
    }

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

LABEL_24:
  if ((*(a1 + 80) & 1) == 0)
  {
LABEL_26:
    v6 = sub_1000060F0(*(a1 + 16), 59, __ptr, v11, "LAC", 0);
    if (!v6)
    {
      sub_10000282C("uploaded %s", v13[v5]);
      v6 = 0;
      *(a1 + 80) |= 1u;
    }

    goto LABEL_28;
  }

  v6 = 0;
LABEL_28:
  if (__ptr)
  {
    free(__ptr);
  }

  return v6;
}

void sub_100007988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, FILE *a10)
{
  if (a10)
  {
    fclose(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000079AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = IOMobileFramebufferSetParameter();
  v3 = sub_10000544C(v2);
  sub_10000282C("%s: %s", "update_lac", v3);
  return v2;
}

uint64_t sub_100007A90(uint64_t a1, FILE **a2, char *__ptr, unsigned int a4, _DWORD *a5, const char *a6)
{
  if (!*a2 || (v12 = *(a1 + 89), fread(__ptr, 1uLL, 4uLL, *a2) != 4))
  {
    v19 = 3758097084;
    sub_100001BE0("failed to read %s version");
    return v19;
  }

  v13 = sub_1000013C4(__ptr);
  if (!v13)
  {
    v21 = *__ptr;
    sub_100001BE0("%s header version unknown %d");
    return 3758096385;
  }

  if (!*a2 || (v14 = v13, fread(__ptr + 4, 1uLL, (v13 - 4), *a2) != v13 - 4))
  {
    v19 = 3758097084;
    sub_100001BE0("failed to read %s header");
    return v19;
  }

  v15 = sub_1000013D8(__ptr, 1);
  v16 = v15;
  if (v15 - 1 >= a4)
  {
    v19 = 3758097084;
    sub_100001BE0("bad %s size 0x%x buf 0x%x");
    return v19;
  }

  if (!*a2 || fread(&__ptr[v14], 1uLL, (v15 - v14), *a2) != v15 - v14)
  {
    v19 = 3758097084;
    sub_100001BE0("failed to read %s content");
    return v19;
  }

  if (v12 && !sub_100001448(&__ptr[v14], *(__ptr + 2), (a1 + 93), v12))
  {
    sub_100001BE0("%s panel mismatch", a6);
    *(a1 + 26) = 1;
    return 3758096385;
  }

  v17 = (v16 - 4) >> 2;
  v18 = *&__ptr[4 * v17];
  v22 = 0;
  sub_100001488(__ptr, v17, &v22);
  if ((*(a1 + 80) & 2) == 0 && v22 != v18)
  {
    sub_100001BE0("%s CRC not valid 0x%x 0x%x");
    return 3758096385;
  }

  v19 = 0;
  *a5 = v16;
  return v19;
}

FILE *sub_100007C98(FILE **a1)
{
  result = *a1;
  if (result)
  {
    result = fclose(result);
  }

  *a1 = 0;
  return result;
}

uint64_t sub_100007CC8(uint64_t a1, _DWORD *a2, unsigned int a3, const char *a4)
{
  v5 = *(a1 + 89);
  v26 = 0;
  v25 = 0;
  if (*(a1 + 25) == 1 && !sub_10000254C(0x724C4153u, &v26, &v25))
  {
    v11 = v26;
    v24 = 0;
    if (*v26 <= *(a1 + 85))
    {
      if (sub_1000013C4(v26))
      {
        v12 = sub_1000013D8(v11, 1);
        v13 = v12;
        if (v12 - 1 >= a3 || 4 * v25 < v12)
        {
          sub_100001BE0("%s has bad size hdr 0x%x ean 0x%x buf 0x%x");
        }

        else if (v5 && (v14 = sub_1000013C4(v11), !sub_100001448(v11 + v14, v11[2], (a1 + 93), v5)))
        {
          sub_100001BE0("%s panel mismatch");
        }

        else
        {
          v15 = (v13 >> 2) - 1;
          v16 = v11[v15];
          if (v13 >> 2 != 1)
          {
            v17 = (v13 >> 2) - 1;
            v18 = a2;
            v19 = v11;
            v20 = v11;
            do
            {
              v21 = *v20++;
              *v18++ = v21;
              sub_100001488(v19, 1, &v24);
              v19 = v20;
              --v17;
            }

            while (v17);
          }

          if ((*(a1 + 80) & 2) != 0 || v16 == v24)
          {
            v9 = 0;
            a2[v15] = v16;
LABEL_20:
            free(v11);
            return v9;
          }

          sub_100001BE0("%s CRC not valid 0x%x 0x%x");
        }

LABEL_19:
        v9 = 3758096385;
        goto LABEL_20;
      }

      v22 = *v11;
      v23 = *(a1 + 85);
    }

    sub_100001BE0("%s header version unknown %d support %d");
    goto LABEL_19;
  }

  sub_100001BE0("could not read %s from EAN\n", a4);
  return 3758097084;
}

FILE **sub_100007EA4(FILE **a1)
{
  v2 = *a1;
  if (v2)
  {
    fclose(v2);
  }

  *a1 = 0;
  return a1;
}

uint64_t sub_100007ED8(uint64_t a1, _DWORD *a2, unsigned int a3, const char *a4)
{
  v5 = *(a1 + 89);
  v26 = 0;
  v25 = 0;
  if (*(a1 + 25) == 1 && !sub_10000254C(0x694C4143u, &v26, &v25))
  {
    v11 = v26;
    v24 = 0;
    if (*v26 <= *(a1 + 81))
    {
      if (sub_1000013C4(v26))
      {
        v12 = sub_1000013D8(v11, 1);
        v13 = v12;
        if (v12 - 1 >= a3 || 4 * v25 < v12)
        {
          sub_100001BE0("%s has bad size hdr 0x%x ean 0x%x buf 0x%x");
        }

        else if (v5 && (v14 = sub_1000013C4(v11), !sub_100001448(v11 + v14, v11[2], (a1 + 93), v5)))
        {
          sub_100001BE0("%s panel mismatch");
        }

        else
        {
          v15 = (v13 >> 2) - 1;
          v16 = v11[v15];
          if (v13 >> 2 != 1)
          {
            v17 = (v13 >> 2) - 1;
            v18 = a2;
            v19 = v11;
            v20 = v11;
            do
            {
              v21 = *v20++;
              *v18++ = v21;
              sub_100001488(v19, 1, &v24);
              v19 = v20;
              --v17;
            }

            while (v17);
          }

          if ((*(a1 + 80) & 2) != 0 || v16 == v24)
          {
            v9 = 0;
            a2[v15] = v16;
LABEL_20:
            free(v11);
            return v9;
          }

          sub_100001BE0("%s CRC not valid 0x%x 0x%x");
        }

LABEL_19:
        v9 = 3758096385;
        goto LABEL_20;
      }

      v22 = *v11;
      v23 = *(a1 + 81);
    }

    sub_100001BE0("%s header version unknown %d support %d");
    goto LABEL_19;
  }

  sub_100001BE0("could not read %s from EAN\n", a4);
  return 3758097084;
}

uint64_t sub_1000080C0(int a1, const void *a2, unsigned int a3, FILE *a4, FILE *a5, const char *a6, int a7)
{
  memset(__stream, 170, sizeof(__stream));
  sub_100008DAC(__stream, a4, a5, a7);
  if (__stream[0] && fwrite(a2, 1uLL, a3, __stream[0]) && sub_100005D00(__stream))
  {
    sub_10000282C("saved %s to file", a6);
    v10 = 0;
  }

  else
  {
    sub_100005DD0(__stream);
    sub_100001BE0("%s save failure", a6);
    v10 = 3758097084;
  }

  if (__stream[0])
  {
    fclose(__stream[0]);
  }

  return v10;
}

void sub_100008188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, FILE *a10)
{
  if (a10)
  {
    fclose(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000081A0(uint64_t a1, int a2, const void *a3, unsigned int a4, unsigned int a5, const char *a6)
{
  v9 = (a2 + 4095) & 0xFFFFF000;
  if (v9 <= a4)
  {
    v12 = 0;
  }

  else
  {
    v11 = malloc_type_malloc((a2 + 4095) & 0xFFFFF000, 0x100004052888210uLL);
    if (!v11)
    {
      v13 = 3758097084;
      sub_100001BE0("could not allocate memory to save %s to EAN", a6);
      return v13;
    }

    v12 = v11;
    bzero(v11, v9);
    memcpy(v12, a3, a4);
    a3 = v12;
  }

  if (sub_10000274C(a5, a3, v9 >> 2))
  {
    v13 = 3758097084;
    sub_100001BE0("save %s to EAN failed", a6);
    if (!v12)
    {
      return v13;
    }

    goto LABEL_9;
  }

  sub_10000282C("saved %s to EAN", a6);
  v13 = 0;
  if (v12)
  {
LABEL_9:
    free(v12);
  }

  return v13;
}

uint64_t sub_1000082AC(uint64_t a1, int a2, uint64_t a3, int a4, FILE *a5, char *a6, int a7, const char *a8, unsigned int a9)
{
  v17 = &unk_10000B13F;
  if (a2)
  {
    v17 = " with backup";
  }

  sub_10000282C("%s %s%s", "save_lac_data", a6, v17);
  v25 = 0;
  v26 = 0;
  if (!sub_100006070(a4, &v25, &v26 + 1))
  {
    return 3758097085;
  }

  v18 = v25;
  v19 = sub_1000060F0(*(a1 + 16), a3, v25, HIDWORD(v26), a8, 1);
  if (!v19)
  {
    v20 = sub_1000013D8(v18, 0);
    v21 = sub_100001488(v25, v20 >> 2, &v26);
    v22 = v25;
    *(v25 + v20) = v26;
    v23 = sub_1000080C0(v21, v22, v20 + 4, a5, a6, a8, a7);
    v19 = v23;
    if (a2)
    {
      if (*(a1 + 25))
      {
        v19 = sub_1000081A0(v23, v20 + 4, v25, HIDWORD(v26), a9, a8);
      }

      else
      {
        sub_100001BE0("could not access EAN");
      }
    }
  }

  if (v25)
  {
    free(v25);
  }

  return v19;
}

uint64_t sub_100008418(uint64_t a1, int a2, uint64_t a3, int a4, FILE *a5, char *a6, int a7, const char *a8, unsigned int a9)
{
  v17 = &unk_10000B13F;
  if (a2)
  {
    v17 = " with backup";
  }

  sub_10000282C("%s %s%s", "save_lah_data", a6, v17);
  v25 = 0;
  v26 = 0;
  if (!sub_100006070(a4, &v25, &v26 + 1))
  {
    return 3758097085;
  }

  v18 = v25;
  v19 = sub_1000060F0(*(a1 + 16), a3, v25, HIDWORD(v26), a8, 1);
  if (!v19)
  {
    v20 = sub_1000013D8(v18, 0);
    v21 = sub_100001488(v25, v20 >> 2, &v26);
    v22 = v25;
    *(v25 + v20) = v26;
    v23 = sub_1000080C0(v21, v22, v20 + 4, a5, a6, a8, a7);
    v19 = v23;
    if (a2)
    {
      if (*(a1 + 25))
      {
        v19 = sub_1000081A0(v23, v20 + 4, v25, HIDWORD(v26), a9, a8);
      }

      else
      {
        sub_100001BE0("could not access EAN");
      }
    }
  }

  if (v25)
  {
    free(v25);
  }

  return v19;
}

uint64_t sub_1000085F8(uint64_t a1)
{
  v2 = sub_100008584(a1, 1);
  v3 = sub_1000079AC(a1);
  if (!v2)
  {
    v2 = v3;
  }

  LODWORD(result) = sub_100007A08(a1, 1);
  if (v2)
  {
    return v2;
  }

  else
  {
    return result;
  }
}

void sub_100008694(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) == 1 && *a2 == 1 && !*(a2 + 8))
  {
    v3 = *(a1 + 16);
    v4 = IOMobileFramebufferSetParameter();
    if (v4)
    {
      v5 = sub_10000544C(v4);
      sub_100001BE0("Couldn't reset history: %s", v5);
      return;
    }

    v2 = "Cleared history in driver";
  }

  else
  {
    v2 = "Unsupported operation";
  }

  sub_10000282C(v2);
}

uint64_t sub_10000872C(uint64_t result, int a2)
{
  for (i = 0; i != 256; ++i)
  {
    v3 = 8;
    v4 = i;
    do
    {
      v4 = ((v4 << 31) >> 31) & a2 ^ (v4 >> 1);
      --v3;
    }

    while (v3);
    *(result + 4 * i) = v4;
  }

  return result;
}

void sub_100008760()
{
  for (i = 0; i != 256; ++i)
  {
    v1 = 8;
    v2 = i;
    do
    {
      v2 = ((v2 << 31) >> 31) & 0xEDB88320 ^ (v2 >> 1);
      --v1;
    }

    while (v1);
    dword_1000182EC[i] = v2;
  }

  byte_1000186EC = 1;
}

uint64_t sub_1000087B0(uint64_t result, char *a2, uint64_t a3)
{
  if ((byte_1000186EC & 1) == 0)
  {
    for (i = 0; i != 256; ++i)
    {
      v4 = 8;
      v5 = i;
      do
      {
        v5 = ((v5 << 31) >> 31) & 0xEDB88320 ^ (v5 >> 1);
        --v4;
      }

      while (v4);
      dword_1000182EC[i] = v5;
    }

    byte_1000186EC = 1;
  }

  for (; a3; --a3)
  {
    v6 = *a2++;
    result = dword_1000182EC[(v6 ^ result)] ^ (result >> 8);
  }

  return result;
}

BOOL sub_100008828(int *a1, int *a2, unsigned int a3)
{
  v3 = a3 >> 2;
  if (a3 >= 4)
  {
    v5 = 0;
    v6 = a3 >> 2;
    v7 = a2;
    v8 = a1;
    while (1)
    {
      v10 = *v8++;
      v9 = v10;
      v11 = *v7++;
      if (v9 != v11)
      {
        break;
      }

      ++v5;
      if (!--v6)
      {
        v4 = a3 >> 2;
        return v4 != v3;
      }
    }

    v12 = v5 >= 4;
    v13 = v5 - 4;
    if (v12)
    {
      v4 = v13;
    }

    else
    {
      v4 = 0;
    }

    v14 = &a1[v4];
    v15 = &a2[v4];
    sub_10000282C("a[%d/%d] = %08X %08X %08X %08X %08X %08X %08X %08X", v4, a3 >> 2, *v14, v14[1], v14[2], v14[3], v14[4], v14[5], v14[6], v14[7]);
    sub_10000282C("b[%d/%d] = %08X %08X %08X %08X %08X %08X %08X %08X", v4, v3, *v15, v15[1], v15[2], v15[3], v15[4], v15[5], v15[6], v15[7]);
  }

  else
  {
    v4 = 0;
  }

  return v4 != v3;
}

uint64_t sub_100008914(io_connect_t *a1)
{
  v2 = IOServiceMatching("AppleNVMeEAN");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v2);
  if (MatchingService)
  {
    v4 = MatchingService;
    v5 = IOServiceOpen(MatchingService, mach_task_self_, 0, a1);
    IOObjectRelease(v4);
    if (v5)
    {
      sub_10000282C("IOServiceOpen on AppleNVMeEAN failed, ans = 0x%x \n", v5);
    }
  }

  else
  {
    sub_10000282C("Couldn't find AppleNVMeEAN object");
    return 5;
  }

  return v5;
}

FILE **sub_1000089B4(FILE **a1, char *__filename)
{
  v4 = fopen(__filename, "r");
  *a1 = v4;
  if (!v4)
  {
    sub_100001BE0("Could not open file %s", __filename);
  }

  return a1;
}

BOOL sub_100008A0C(const char *a1)
{
  v1 = sem_open(a1, 0);
  v2 = v1;
  if (v1 != -1)
  {
    sem_close(v1);
  }

  return v2 != -1;
}

void sub_100008A4C(const char *a1)
{
  v2 = sem_open(a1, 512, 256, 0);
  if (v2 == -1)
  {
    v3 = __error();
    sub_100001BE0("could not create semaphore %s (%d)", a1, *v3);
  }

  else
  {

    sem_close(v2);
  }
}

void sub_100008AC4(void *__src, size_t __n, const char *a3)
{
  v4 = __n;
  v6 = 0;
  memset(__dst, 0, sizeof(__dst));
  memcpy(__dst, __src, __n);
  *(__dst + v4) = 0;
  sub_10000282C("%s %s len %d\n", a3, __dst, v4);
}

void *sub_100008BDC(uint64_t a1, void *__dst, unsigned int a3)
{
  if (*(a1 + 16) >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = *(a1 + 16);
  }

  result = memcpy(__dst, *(a1 + 8), 4 * v4);
  *(a1 + 16) -= v4;
  *(a1 + 8) += 4 * v4;
  return result;
}

uint64_t sub_100008C34(uint64_t a1, unsigned int *a2, int a3, unsigned int a4)
{
  if (a3)
  {
    v7 = *(a1 + 16) - 4 * a4;
    *(a1 + 16) = v7;
    if (v7 >= 0)
    {
      v8 = 4 * a4;
      memcpy(*(a1 + 32), a2 + 7, v8);
      v9 = 0;
      v10 = *(a1 + 32) + v8;
LABEL_4:
      *(a1 + 32) = v10;
      return v9;
    }

    v9 = 3758097085;
    goto LABEL_16;
  }

  if (sub_100004DDC() == 4)
  {
    v11 = 92;
  }

  else
  {
    v11 = 84;
  }

  v12 = v11 + a2[31] + 4;
  *(a1 + 24) = v12;
  v13 = a2 + 20;
  v14 = 3;
  do
  {
    v15 = v12 + *(v13 - 3);
    *(a1 + 24) = v15;
    v16 = *v13++;
    v12 = v15 + v16;
    *(a1 + 24) = v12;
    --v14;
  }

  while (v14);
  v9 = 3758097085;
  v17 = malloc_type_malloc(v12, 0x100004077774924uLL);
  *(a1 + 8) = v17;
  if (v17)
  {
    v18 = a2 + 7;
    v19 = sub_1000054C0(v17, v17, *(a1 + 24), (a2 + 7), a2 + 41);
    if (!v19)
    {
      sub_100001BE0("Failed to populate ibic header");
      return v9;
    }

    v20 = *(a1 + 24) - v19;
    *(a1 + 16) = v20;
    if (v20 >= 0)
    {
      v21 = (*(a1 + 8) + v19);
      *(a1 + 32) = v21;
      v22 = a2 + a2[31] + 164;
      v23 = &v18[a4] - v22;
      v24 = v20 - v23;
      *(a1 + 16) = v24;
      if (v24 >= 0)
      {
        memcpy(v21, v22, &v18[a4] - v22);
        v9 = 0;
        v10 = *(a1 + 32) + v23;
        goto LABEL_4;
      }
    }

LABEL_16:
    sub_100001BE0("Out of memory");
  }

  return v9;
}

FILE **sub_100008DAC(FILE **a1, FILE *a2, FILE *a3, int a4)
{
  a1[1] = a2;
  a1[2] = a3;
  if (a4)
  {
    v5 = open_dprotected_np(a2, 1537, a4, 0, 420);
    if (v5 < 0)
    {
      *a1 = 0;
LABEL_8:
      sub_100001BE0("Could not open temp file %s", a1[1]);
      return a1;
    }

    v6 = fdopen(v5, "w");
  }

  else
  {
    v6 = fopen(a2, "w");
  }

  *a1 = v6;
  if (!v6)
  {
    goto LABEL_8;
  }

  return a1;
}

uint64_t sub_100008E48(uint64_t a1, uint64_t a2, int a3, size_t __nitems, int a5)
{
  v6 = __nitems;
  v10 = *(a1 + 32);
  if (v10 && (!*v10 || !fwrite((a2 + 28), 4uLL, __nitems, *v10)))
  {
    sub_10000282C("%s: write failure", *(a1 + 24));
    return 3758097084;
  }

  if (*a1)
  {
    if (a3)
    {
      v11 = **a1;
      if (!v11)
      {
        return 0;
      }
    }

    else
    {
      v13 = *(a1 + 16);
      if (v13)
      {
        v14 = (4 * (a5 + 1) + v13 - 1) & -v13;
      }

      else
      {
        v14 = 4 * (a5 + 1);
      }

      **a1 = malloc_type_malloc(v14, 0x100004052888210uLL);
      v15 = *a1;
      **(a1 + 8) = v14 >> 2;
      v11 = *v15;
      if (!*v15)
      {
        return 0;
      }

      *v11 = a5;
    }

    memcpy(&v11[a3 + 1], (a2 + 28), 4 * v6);
  }

  return 0;
}

uint64_t sub_100008F60(unsigned int *a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  if (!a3 && !**(a1 + 3))
  {
    a1[2] = a5;
    v10 = a1[1];
    v11 = v10 ? (v10 + 4 * (*a1 + a5) - 1) & -v10 : 4 * (*a1 + a5);
    **(a1 + 3) = malloc_type_malloc(v11, 0x100004052888210uLL);
    if (!*(a1 + 3))
    {
      sub_10000282C("%s: failed to allocate buffer.", *(a1 + 2));
    }
  }

  v12 = 3758097084;
  v13 = *(a1 + 3);
  if (!v13)
  {
    return 3758097085;
  }

  if (a4 + a3 <= a5 && a1[2] == a5)
  {
    memcpy((*v13 + 4 * a3 + 4 * *a1), (a2 + 28), 4 * a4);
    return 0;
  }

  else
  {
    sub_10000282C("%s: inconsistent data from server.", *(a1 + 2));
  }

  return v12;
}

void sub_100009084(pthread_t *a1)
{
  if (pthread_create(a1, 0, sub_1000090D8, 0))
  {

    sub_100001BE0("Could not launch power listener thread");
  }
}

uint64_t sub_1000090D8()
{
  notifier = 0;
  notify = 0;
  v0 = IORegisterForSystemPower(0, &notify, sub_100000B88, &notifier);
  dword_10001870C = v0;
  if (notify)
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (!v1)
  {
    Current = CFRunLoopGetCurrent();
    RunLoopSource = IONotificationPortGetRunLoopSource(notify);
    CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
    CFRunLoopRun();
  }

  sub_100001BE0("power listener thread returning. :(");
  return 0;
}

uint64_t AMRestorePartitionFWCopyTagData(const __CFURL *a1)
{
  if (a1)
  {
    v1 = sub_100009640(a1, 0);
    if (v1)
    {
      v2 = v1;
      v3 = malloc(0x8000uLL);
      if (v3)
      {
        if (read(v2, v3, 0x8000uLL))
        {
          Img4DecodeParseLengthFromBuffer();
          AMSupportLogInternal();
        }

        AMSupportLogInternal();
      }

      else
      {
        sub_10000A118();
      }

      if (v2 >= 1)
      {
        close(v2);
      }
    }

    else
    {
      AMSupportLogInternal();
    }
  }

  else
  {
    sub_10000A12C();
  }

  AMSupportSafeFree();
  AMSupportSafeFree();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return 99;
}

uint64_t sub_100009640(const __CFURL *a1, int a2)
{
  bzero(buffer, 0x400uLL);
  if (!CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    AMSupportLogInternal();
    AMSupportLogInternal();
    return 0xFFFFFFFFLL;
  }

  v4 = open(buffer, a2);
  v5 = v4;
  if (v4 <= 0)
  {
    sub_10000A16C();
    return v5;
  }

  if (fcntl(v4, 48, 1))
  {
    sub_10000A140();
    return 0xFFFFFFFFLL;
  }

  return v5;
}

uint64_t AMRestorePartitionFWCommitData(const __CFURL *a1, CFStringRef theString, CFDataRef theData, int a4)
{
  v11 = 0;
  v12 = 0;
  *bytes = 0;
  if (!a1)
  {
    sub_10000A588();
    goto LABEL_19;
  }

  if (!theString)
  {
    sub_10000A574();
    goto LABEL_19;
  }

  if (!theData)
  {
    sub_10000A560();
    goto LABEL_19;
  }

  if (!a4)
  {
    CFDataGetLength(theData);
    goto LABEL_16;
  }

  v16 = 0;
  memset(length, 0, sizeof(length));
  if (CFStringGetLength(theString) != 4)
  {
    goto LABEL_29;
  }

  v14 = 0;
  *buffer = 0;
  if (!CFStringGetCString(theString, buffer, 5, 0x8000100u))
  {
    sub_10000A214();
LABEL_30:
    v7 = 0;
LABEL_31:
    v8 = 0;
    goto LABEL_12;
  }

  if (AMAuthInstallApImg4CreatePayload())
  {
    goto LABEL_29;
  }

  if (!v16)
  {
    sub_10000A1E8();
    goto LABEL_30;
  }

  CFDataGetBytePtr(v16);
  CFDataGetLength(v16);
  if (Img4EncodeStitchManifest() != 100)
  {
LABEL_29:
    AMSupportLogInternal();
    goto LABEL_30;
  }

  v6 = CFDataCreate(0, *&length[1], length[0]);
  if (!v6)
  {
    sub_10000A1BC();
    v7 = 0;
    goto LABEL_31;
  }

  v7 = CFRetain(v6);
  v8 = 1;
LABEL_12:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeFree();
  if ((v8 & 1) == 0)
  {
    goto LABEL_18;
  }

  if (!v7)
  {
    sub_10000A534();
    goto LABEL_19;
  }

  CFDataGetLength(v7);
LABEL_16:
  if ((AMRestorePartitionFWCopyTagData(a1) | 8) != 8)
  {
LABEL_18:
    AMSupportLogInternal();
    goto LABEL_19;
  }

  sub_10000A508();
LABEL_19:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return 99;
}

uint64_t sub_100009E2C(const __CFData *a1, int a2)
{
  if (a1)
  {
    if (a2 > 0)
    {
      BytePtr = CFDataGetBytePtr(a1);
      if (!BytePtr)
      {
        sub_10000A59C();
        return 0;
      }

      v5 = BytePtr;
      Length = CFDataGetLength(a1);
      v7 = Length;
      if (Length < 1)
      {
        v8 = 0;
LABEL_10:
        if (v8 == v7)
        {
          return 1;
        }
      }

      else
      {
        v8 = 0;
        v9 = Length;
        while (1)
        {
          v10 = write(a2, v5, v9);
          if (v10 <= 0)
          {
            break;
          }

          v5 += v10;
          v9 -= v10;
          v8 += v10;
          if (v8 >= v7)
          {
            goto LABEL_10;
          }
        }

        v12 = __error();
        strerror(*v12);
      }
    }

    AMSupportLogInternal();
  }

  else
  {
    sub_10000A5B0();
  }

  return 0;
}

uint64_t sub_10000A16C()
{
  v0 = __error();
  strerror(*v0);
  return AMSupportLogInternal();
}

uint64_t sub_10000A28C()
{
  v0 = __error();
  strerror(*v0);
  return AMSupportLogInternal();
}

uint64_t sub_10000A2D0()
{
  v0 = __error();
  strerror(*v0);
  return AMSupportLogInternal();
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}