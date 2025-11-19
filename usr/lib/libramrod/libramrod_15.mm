uint64_t getAttestationToPDAK(void *a1, void *a2)
{
  if (qword_1C6C98 != -1)
  {
    sub_CAC3C();
  }

  if (__osLogPearlLibTrace)
  {
    v4 = __osLogPearlLibTrace;
  }

  else
  {
    v4 = &_os_log_default;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__size[0]) = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "getAttestationToPDAK\n", __size, 2u);
  }

  __size[0] = 16388;
  if (a1 && a2)
  {
    v5 = sub_C48EC();
    if (v5)
    {
      sub_D3D44(v5, v5, buf);
    }

    else
    {
      v6 = calloc(1uLL, __size[0]);
      if (v6)
      {
        v7 = v6;
        v8 = sub_C4988(dword_1C6C90, 85, 0, 0, 0, v6, __size);
        if (v8)
        {
          sub_D3E44(v8, v8, buf);
        }

        else if (__size[0] <= 3)
        {
          sub_D4144(buf);
        }

        else
        {
          v9 = *v7;
          if ((v9 - 16385) <= 0xFFFFBFFF)
          {
            sub_D4044(buf);
          }

          else
          {
            v10 = calloc(1uLL, v9);
            if (v10)
            {
              v11 = v10;
              memcpy(v10, v7 + 1, *v7);
              v12 = 0;
              *a1 = v11;
              *a2 = *v7;
LABEL_17:
              free(v7);
              goto LABEL_18;
            }

            sub_D3F44(buf);
          }
        }

        v12 = *buf;
        goto LABEL_17;
      }

      sub_D4244(buf);
    }
  }

  else
  {
    sub_D4344(buf);
  }

  v12 = *buf;
LABEL_18:
  if (dword_1C6C90)
  {
    IOServiceClose(dword_1C6C90);
    dword_1C6C90 = 0;
  }

  if (v12)
  {
    if (qword_1C6C98 != -1)
    {
      sub_CADC0();
    }

    if (__osLogPearlLibTrace)
    {
      v13 = __osLogPearlLibTrace;
    }

    else
    {
      v13 = &_os_log_default;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v20 = v12;
      v14 = v13;
      v15 = OS_LOG_TYPE_ERROR;
LABEL_35:
      _os_log_impl(&dword_0, v14, v15, "getAttestationToPDAK -> %d\n", buf, 8u);
    }
  }

  else
  {
    if (qword_1C6C98 != -1)
    {
      sub_CADC0();
    }

    if (__osLogPearlLibTrace)
    {
      v16 = __osLogPearlLibTrace;
    }

    else
    {
      v16 = &_os_log_default;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v20 = 0;
      v14 = v16;
      v15 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_35;
    }
  }

  return v12;
}

uint64_t getDummy0PSDData(void *a1, void *a2)
{
  if (qword_1C6C98 != -1)
  {
    sub_CAC3C();
  }

  if (__osLogPearlLibTrace)
  {
    v4 = __osLogPearlLibTrace;
  }

  else
  {
    v4 = &_os_log_default;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "getDummy0PSDData\n", buf, 2u);
  }

  if (!a1)
  {
    sub_D4864(buf);
LABEL_24:
    v11 = *buf;
    goto LABEL_27;
  }

  if (!a2)
  {
    sub_D4764(buf);
    goto LABEL_24;
  }

  *a2 = 0;
  v5 = calloc(1uLL, 0x96011uLL);
  if (!v5)
  {
    sub_D4664(buf);
    goto LABEL_24;
  }

  v6 = v5;
  *v5 = 3;
  *(v5 + 4) = 0x773C051C4FLL;
  v5[12] = 2;
  *(v5 + 13) = 0;
  *(v5 + 307215) = 1;
  v14 = 614501;
  v7 = calloc(1uLL, 0x96065uLL);
  if (v7)
  {
    v8 = v7;
    v9 = encryptFDRDataInternal(v6, 0x96011uLL, v7, &v14, 0);
    if (!v9)
    {
      *a1 = v8;
      *a2 = v14;
      free(v6);
      if (qword_1C6C98 != -1)
      {
        sub_CADC0();
      }

      if (__osLogPearlLibTrace)
      {
        v10 = __osLogPearlLibTrace;
      }

      else
      {
        v10 = &_os_log_default;
      }

      v11 = 0;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v16 = 0;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "getDummy0PSDData -> %d\n", buf, 8u);
        return 0;
      }

      return v11;
    }

    v11 = v9;
    sub_D4444(v9, v6, v8);
  }

  else
  {
    sub_D455C(v6);
    v11 = 260;
  }

LABEL_27:
  if (qword_1C6C98 != -1)
  {
    sub_CADC0();
  }

  if (__osLogPearlLibTrace)
  {
    v13 = __osLogPearlLibTrace;
  }

  else
  {
    v13 = &_os_log_default;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v16 = v11;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "getDummy0PSDData -> %d\n", buf, 8u);
  }

  return v11;
}

uint64_t generateAndVerifyAriesHostAuthorization()
{
  if (qword_1C6C98 != -1)
  {
    sub_CAC3C();
  }

  v0 = &_os_log_default;
  if (__osLogPearlLibTrace)
  {
    v1 = __osLogPearlLibTrace;
  }

  else
  {
    v1 = &_os_log_default;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "generateAndVerifyAriesHostAuthorization\n", &v8, 2u);
  }

  v2 = sub_C48EC();
  if (v2)
  {
    sub_D4964(v2, v2, &v8);
  }

  else
  {
    v3 = sub_C4988(dword_1C6C90, 86, 0, 0, 0, 0, 0);
    v4 = 0;
    if (!v3)
    {
      goto LABEL_10;
    }

    sub_D4A64(v3, v3, &v8);
  }

  v4 = v8;
LABEL_10:
  if (dword_1C6C90)
  {
    IOServiceClose(dword_1C6C90);
    dword_1C6C90 = 0;
  }

  if (v4)
  {
    if (qword_1C6C98 != -1)
    {
      sub_CADC0();
    }

    if (__osLogPearlLibTrace)
    {
      v0 = __osLogPearlLibTrace;
    }

    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      v8 = 67109120;
      v9 = v4;
      v5 = v0;
      v6 = OS_LOG_TYPE_ERROR;
LABEL_25:
      _os_log_impl(&dword_0, v5, v6, "generateAndVerifyAriesHostAuthorization -> %d\n", &v8, 8u);
    }
  }

  else
  {
    if (qword_1C6C98 != -1)
    {
      sub_CADC0();
    }

    if (__osLogPearlLibTrace)
    {
      v0 = __osLogPearlLibTrace;
    }

    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 67109120;
      v9 = 0;
      v5 = v0;
      v6 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_25;
    }
  }

  return v4;
}

void sub_CA770(id a1)
{
  v1 = os_log_create("com.apple.BiometricKit", "Library-PearlFactory");
  v2 = __osLogPearlLib;
  __osLogPearlLib = v1;

  v3 = __osLogPearlLib;
  if (!__osLogPearlLib)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_D4B64();
    }

    v3 = __osLogPearlLib;
  }

  objc_storeStrong(&__osLogPearlLibTrace, v3);
}

void sub_CA92C(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint8_t buf)
{

  _os_log_impl(a1, v15, OS_LOG_TYPE_DEFAULT, a4, &buf, 0x30u);
}

BOOL sub_CA94C@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
}

void sub_CA96C(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint8_t buf)
{

  _os_log_impl(a1, v15, OS_LOG_TYPE_DEFAULT, a4, &buf, 0x30u);
}

BOOL sub_CA98C@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
}

void sub_CAA00(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint8_t buf)
{

  _os_log_impl(a1, v15, OS_LOG_TYPE_DEFAULT, a4, &buf, 0x30u);
}

BOOL sub_CAA20@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
}

void sub_CAAD8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 0x30u);
}

BOOL sub_CAAF0@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
}

void sub_CABBC(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint8_t buf)
{

  _os_log_impl(a1, v15, OS_LOG_TYPE_ERROR, a4, &buf, 8u);
}

BOOL sub_CABDC@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
}

BOOL sub_CABFC@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
}

BOOL sub_CAC1C@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
}

void sub_CD444()
{
  fprintf(__stderrp, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", "fileURL", 0, "", "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m", 511);
  if (qword_1C6C98 != -1)
  {
    dispatch_once(&qword_1C6C98, &stru_1AF4F8);
  }

  if (sub_CABFC(__osLogPearlLib))
  {
    v3 = 136316162;
    v4 = "fileURL";
    sub_CA87C();
    v5 = "";
    v6 = v1;
    v7 = "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m";
    sub_CAA40();
    v8 = 511;
    sub_CAAD8(&dword_0, v0, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v3);
  }
}

void sub_CD564()
{
  fprintf(__stderrp, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", "pathString", 0, "", "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m", 509);
  if (qword_1C6C98 != -1)
  {
    dispatch_once(&qword_1C6C98, &stru_1AF4F8);
  }

  if (sub_CABFC(__osLogPearlLib))
  {
    v3 = 136316162;
    v4 = "pathString";
    sub_CA87C();
    v5 = "";
    v6 = v1;
    v7 = "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m";
    sub_CAA40();
    v8 = 509;
    sub_CAAD8(&dword_0, v0, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v3);
  }
}

void sub_D0958()
{
  sub_CAB10();
  if (qword_1C6C98 != -1)
  {
    dispatch_once(&qword_1C6C98, &stru_1AF4F8);
  }

  if (__osLogPearlLibTrace)
  {
    v2 = __osLogPearlLibTrace;
  }

  else
  {
    v2 = &_os_log_default;
  }

  v3 = v2;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "allocateAndMapObjectS3C1 -> 0x%x\n", v4, 8u);
  }

  *v1 = 0;
  *v0 = v3;
}

uint64_t sub_D4BAC()
{
  v0 = off_1AD528();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  printf("libCyrusFDR: entered libCyrusFDR_certs_verify%s", "\n");
  bzero(inputStruct, 0x8010uLL);
  v6 = 4294967293;
  if (!v5 || !v4)
  {
    goto LABEL_29;
  }

  v7 = sub_DC9AC();
  if (!v7)
  {
    printf("libCyrusFDR: ERROR: [%s:%u:%s] cant talk to cyrus kext%s", "libCyrusFDR.c", 216, "libCyrusFDR_certs_verify", "\n");
    v6 = 4294967294;
LABEL_29:
    memset_s(inputStruct, 0x8010uLL, 0, 0x8010uLL);
    return v6;
  }

  v8 = v7;
  v15 = 0;
  v14 = 0;
  v9 = sub_DC3D8(&v15, &v14);
  if (!v15 || v9)
  {
    printf("libCyrusFDR: libCyrusFDR_is_multilynx_present(%d): device is not not multilinx?%s", v9, "\n");
  }

  if (v14 >= 2)
  {
    for (i = 1; i < v14; ++i)
    {
      printf("libCyrusFDR: cert(%d) len %jd%s", i, *(v4 + 8 * i), "\n");
    }
  }

  v19 = 1;
  if (IOConnectCallStructMethod(v8, 5u, inputStruct, 0x8010uLL, 0, 0))
  {
    printf("libCyrusFDR: ERROR: [%s:%u:%s] kAppleCyrusFDRVerify(reset) -> %x%s");
LABEL_27:
    v6 = 0xFFFFFFFFLL;
    goto LABEL_20;
  }

  if (v14 >= 2)
  {
    v11 = 1;
    while (*(v5 + 8 * v11))
    {
      v12 = *(v4 + 8 * v11);
      if (!v12)
      {
        printf("libCyrusFDR: ERROR: [%s:%u:%s] invalid len %d%s");
        goto LABEL_25;
      }

      if (v12 > 0x8000)
      {
        printf("libCyrusFDR: ERROR: [%s:%u:%s] cert doesnt fit %d%s");
        goto LABEL_25;
      }

      memset_s(inputStruct, 0x8010uLL, 0, 0x8010uLL);
      v17 = *(v4 + 8 * v11);
      __memcpy_chk();
      v19 = 2;
      v18 = v11;
      if (IOConnectCallStructMethod(v8, 5u, inputStruct, 0x8010uLL, 0, 0))
      {
        printf("libCyrusFDR: ERROR: [%s:%u:%s] kAppleCyrusFDRVerify(add_cert, %d) -> %x%s");
        goto LABEL_27;
      }

      if (++v11 >= v14)
      {
        goto LABEL_18;
      }
    }

    printf("libCyrusFDR: ERROR: [%s:%u:%s] invalid cert %d%s");
LABEL_25:
    v6 = 4294967293;
    goto LABEL_20;
  }

LABEL_18:
  memset_s(inputStruct, 0x8010uLL, 0, 0x8010uLL);
  v20 = v2;
  v19 = 3;
  if (IOConnectCallStructMethod(v8, 5u, inputStruct, 0x8010uLL, 0, 0))
  {
    printf("libCyrusFDR: ERROR: [%s:%u:%s] kAppleCyrusFDRVerify -> %x%s");
    goto LABEL_27;
  }

  printf("libCyrusFDR: success%s", "\n");
  v6 = 0;
LABEL_20:
  memset_s(inputStruct, 0x8010uLL, 0, 0x8010uLL);
  v19 = 1;
  IOConnectCallStructMethod(v8, 5u, inputStruct, 0x8010uLL, 0, 0);
  IOServiceClose(v8);
  return v6;
}

uint64_t sub_D4FB4(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, 0, 0, 0, 0, a9, a10);
}

uint64_t sub_D4FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, __int16 a15, char a16, BOOL a17)
{
  a17 = 0;
  a14 = 0;

  return sub_DC3D8(&a17, &a14);
}

uint64_t sub_D500C(io_service_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, io_connect_t connect)
{
  v14 = *v12;

  return IOServiceOpen(a1, v14, 0, &connect);
}

uint64_t sub_D502C(unint64_t a1)
{
  v1 = 0;
  v2 = 4866;
  while (1)
  {
    v3 = (v1 + v2) / 2;
    v4 = qword_181FE0[v3];
    if (v4 == a1)
    {
      break;
    }

    if (v4 < a1)
    {
      v1 = v3 + 1;
    }

    else
    {
      v2 = v3 - 1;
    }

    if (v1 > v2)
    {
      v5 = 0;
      v6 = 5974;
      while (1)
      {
        v7 = (v5 + v6) / 2;
        v8 = qword_18B7F8[v7];
        if (v8 == a1)
        {
          break;
        }

        if (v8 < a1)
        {
          v5 = v7 + 1;
        }

        else
        {
          v6 = v7 - 1;
        }

        if (v5 > v6)
        {
          v9 = 0;
          v10 = 2129;
          while (1)
          {
            v11 = (v9 + v10) / 2;
            v12 = qword_1972B0[v11];
            if (v12 == a1)
            {
              break;
            }

            if (v12 < a1)
            {
              v9 = v11 + 1;
            }

            else
            {
              v10 = v11 - 1;
            }

            if (v9 > v10)
            {
              v13 = 0;
              v14 = 1319;
              do
              {
                v15 = (v13 + v14) / 2;
                v16 = qword_19B540[v15];
                v17 = v16 == a1;
                if (v16 == a1)
                {
                  break;
                }

                if (v16 < a1)
                {
                  v13 = v15 + 1;
                }

                else
                {
                  v14 = v15 - 1;
                }
              }

              while (v13 <= v14);
              return v17;
            }
          }

          return 1;
        }
      }

      return 1;
    }
  }

  return 1;
}

BOOL sub_D5140(int a1, int a2, int a3)
{
  if (qword_1C6CB0 == -1)
  {
    v3 = dword_1C6CA0 < a1;
    if (dword_1C6CA0 > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    sub_DD5D4();
    a2 = v6;
    a3 = v5;
    v3 = dword_1C6CA0 < a1;
    if (dword_1C6CA0 > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_1C6CA4 > a2)
  {
    return 1;
  }

  if (dword_1C6CA4 < a2)
  {
    return 0;
  }

  return dword_1C6CA8 >= a3;
}

uint64_t sub_D5200(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_1C6CB8 == -1)
  {
    if (qword_1C6CC0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_DD5EC();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1C6CC0)
    {
      return _availability_version_check();
    }
  }

  if (qword_1C6CB0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_DD5D4();
    a3 = v10;
    a4 = v9;
    v8 = dword_1C6CA0 < v11;
    if (dword_1C6CA0 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1C6CA4 > a3)
      {
        return 1;
      }

      if (dword_1C6CA4 >= a3)
      {
        return dword_1C6CA8 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_1C6CA0 < a2;
  if (dword_1C6CA0 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_D5394(uint64_t result)
{
  v1 = qword_1C6CC0;
  if (qword_1C6CC0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (off_1AD530)
    {
      v1 = off_1AD530;
      qword_1C6CC0 = off_1AD530;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_1C6CA0, &dword_1C6CA4, &dword_1C6CA8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_D56C8(__CFDictionary *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  if (!a1)
  {
    return;
  }

  if (!a2)
  {
    return;
  }

  if (!a3)
  {
    return;
  }

  v6 = a3[2];
  v7 = a2[2];
  v8 = v6 - v7;
  if (v6 <= v7)
  {
    return;
  }

  mach_timebase_info(&dword_1C64D8);
  v15 = *a2;
  valuePtr = v8 * dword_1C64D8 / *algn_1C64DC;
  v11 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &v15);
  v15 = *a3;
  v12 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &v15);
  v13 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &valuePtr);
  v14 = v13;
  if (v11 && v12 && v13)
  {
    if (a4 || CFDictionaryGetValue(a1, kCheckpointEngineStatsCheckpointStartTime[0]))
    {
      CFDictionarySetValue(a1, kCheckpointEngineStatsCheckpointIsRetry[0], kCFBooleanTrue);
    }

    CFDictionarySetValue(a1, kCheckpointEngineStatsCheckpointStartTime[0], v11);
    CFDictionarySetValue(a1, kCheckpointEngineStatsCheckpointEndTime[0], v12);
    CFDictionarySetValue(a1, kCheckpointEngineStatsCheckpointPreciseTime[0], v14);
  }

  else if (!v11)
  {
    goto LABEL_13;
  }

  CFRelease(v11);
LABEL_13:
  if (v12)
  {
    CFRelease(v12);
  }

  if (v14)
  {
    CFRelease(v14);
  }
}

void sub_D592C(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  sub_EAD8();
  sub_EAB4();
  _os_crash_msg();
  __break(1u);
}

void sub_D59D0(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  sub_EAD8();
  sub_EAB4();
  _os_crash_msg();
  __break(1u);
}

void sub_D5A60(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  sub_EAD8();
  sub_EAB4();
  _os_crash_msg();
  __break(1u);
}

CFDataRef ramrod_hash_data_with_method(const __CFData *a1, CFStringRef theString1)
{
  if (CFStringCompare(theString1, kAMAuthInstallApParameterImg4DigestSHA1, 0))
  {
    if (CFStringCompare(theString1, kAMAuthInstallApParameterImg4DigestSHA384, 0))
    {
      ramrod_log_msg("Unrecognized hash implementation.\n", v4, v5, v6, v7, v8, v9, v10, v19[0]);
      v11 = 0;
      goto LABEL_4;
    }

    v13 = &kImg4DecodeSecureBootRsa4kSha384;
  }

  else
  {
    v13 = &kImg4DecodeSecureBootRsa1kSha1;
  }

  v14 = v13[1];
  v19[0] = *v13;
  v19[1] = v14;
  v20 = v13[2];
  v21 = *(v13 + 6);
  v15 = *v20;
  v11 = calloc(*v20, 1uLL);
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  if (!(*&v19[0])(BytePtr, Length, v11, v15, v19))
  {
    v12 = CFDataCreate(kCFAllocatorDefault, v11, v15);
    goto LABEL_9;
  }

LABEL_4:
  v12 = 0;
LABEL_9:
  free(v11);
  return v12;
}

void sub_D5C30(void *a1, _OWORD *a2)
{
  sub_13494(a1, a2);
  sub_134AC();
  sub_EAD8();
  sub_EAB4();
  _os_crash_msg();
  __break(1u);
}

void sub_D5CC4(void *a1, _OWORD *a2)
{
  sub_13494(a1, a2);
  sub_134AC();
  sub_EAD8();
  sub_EAB4();
  _os_crash_msg();
  __break(1u);
}

void sub_D5D44(void *a1, _OWORD *a2)
{
  sub_13494(a1, a2);
  sub_134AC();
  sub_EAD8();
  sub_EAB4();
  _os_crash_msg();
  __break(1u);
}

void sub_D5DD8(void *a1, _OWORD *a2)
{
  sub_13494(a1, a2);
  sub_134AC();
  sub_EAD8();
  sub_EAB4();
  _os_crash_msg();
  __break(1u);
}

uint64_t sub_D6054()
{
  v0 = __error();
  strerror(*v0);
  return AMSupportLogInternal();
}

uint64_t sub_D6174()
{
  v0 = __error();
  strerror(*v0);
  return AMSupportLogInternal();
}

uint64_t sub_D61B8()
{
  v0 = __error();
  strerror(*v0);
  return AMSupportLogInternal();
}

CFTypeRef ramrod_copy_imr4_with_key_value(const void *a1, const void *a2, const void *a3)
{
  cf = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  theDict = Mutable;
  if (a1)
  {
    if (!AMAuthInstallApImg4DecodeRestoreInfo())
    {
      if (CFDictionaryGetValue(theDict, a2))
      {
        cf = CFRetain(a1);
        v14 = "im4r has required tag.\n";
      }

      else
      {
        CFDictionarySetValue(theDict, a2, a3);
        if (AMAuthInstallApImg4EncodeRestoreInfo())
        {
          ramrod_log_msg("Failed to re-encode img4\n", v7, v8, v9, v10, v11, v12, v13, theDict);
          goto LABEL_6;
        }

        v14 = "Re-encoded img4 because im4r was missing required tag.\n";
      }

      ramrod_log_msg(v14, v7, v8, v9, v10, v11, v12, v13, theDict);
    }

LABEL_6:
    Mutable = theDict;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return cf;
}

id ramrod_flash_dual_iboot_spi_firmware(id result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    v6 = +[(MSUBootFirmwareUpdater *)SPIiBootUpdater];
    [v6 setApNonce:a2];
    [v6 setLlbData:v5];
    return [v6 updateBootFirmwareWithError:a3];
  }

  return result;
}

BOOL ramrod_verify_dual_iboot_spi_partition(unsigned int a1, const __CFData *a2, void *a3)
{
  v3 = 0;
  if (a1 <= 1 && a2)
  {
    v7 = wait_for_io_service_matching_class_with_timeout("AppleEmbeddedSimpleSPINORFlasherDriver", 0xFu);
    if (!v7)
    {
      ramrod_log_msg("%s: no SPI flasher driver\n", v8, v9, v10, v11, v12, v13, v14, "ramrod_verify_dual_iboot_spi_partition");
      v3 = 0;
      goto LABEL_19;
    }

    v15 = v7;
    v16 = [[IODualSPIWriter alloc] initWithService:v7];
    if ([(IOServiceWriter *)v16 isAvailable])
    {
      if ([(IODualSPIWriter *)v16 verifyHeadersAtIndex:a1])
      {
        keys = @"BNCN";
        values = 0;
        if (a3)
        {
          values = a3;
          CFRetain(a3);
          v24 = 0;
          v25 = kCFAllocatorDefault;
        }

        else
        {
          v26 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/chosen");
          if (!v26)
          {
            ramrod_create_error_cf(0, kCFErrorDomainMach, -536870911, 0, @"%s: unable to find chosen node to fetch boot nonce", v27, v28, v29, "create_iBoot_SPI_firmware_image");
            goto LABEL_17;
          }

          v24 = v26;
          v25 = kCFAllocatorDefault;
          values = IORegistryEntryCreateCFProperty(v26, @"boot-nonce", kCFAllocatorDefault, 0);
          if (!values)
          {
            sub_44A10(0, @"RamrodErrorDomain", @"%s: can't find boot-nonce in IORegistry", v30, v31, v32, "create_iBoot_SPI_firmware_image");
LABEL_16:
            IOObjectRelease(v24);
LABEL_17:
            AMSupportSafeRelease();
            AMSupportSafeRelease();
            AMSupportSafeRelease();
            AMSupportSafeRelease();
            AMSupportSafeRelease();
            v3 = [(IODualSPIWriter *)v16 verifyFirmwareAtIndex:a1 againstData:0];
            goto LABEL_18;
          }
        }

        if (CFDictionaryCreate(v25, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks))
        {
          CFDataGetLength(a2);
          if (AMAuthInstallApImg4EncodeRestoreInfo())
          {
            v40 = @"%s: error creating new LLB img4 with restore info";
          }

          else
          {
            v40 = @"%s: NULL LLG img4 with restore info";
          }

          ramrod_create_error_cf(0, @"RamrodErrorDomain", 7, 0, v40, v36, v37, v38, "create_iBoot_SPI_firmware_image");
        }

        else
        {
          ramrod_create_error_cf(0, @"RamrodErrorDomain", 6, 0, @"%s: unable to allocate restore info dict from boot-nonce data", v33, v34, v35, "create_iBoot_SPI_firmware_image");
        }

        if (!v24)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      ramrod_log_msg("%s: error - new header does not have a larger generation count than existing header", v17, v18, v19, v20, v21, v22, v23, "ramrod_verify_dual_iboot_spi_partition");
    }

    v3 = 0;
LABEL_18:
    IOObjectRelease(v15);
  }

LABEL_19:
  AMSupportSafeRelease();
  return v3;
}

const char *ramrod_update_twostage_enabled(const __CFString *a1)
{
  v21 = 0;
  v22 = 0;
  cf = 0;
  if (!a1)
  {
    goto LABEL_32;
  }

  CStringPtr = AMAuthInstallUpdaterTwoStageEnabled();
  if (CFStringCompare(a1, @"T200", 0))
  {
LABEL_3:
    sub_44A78();
    v3 = 0;
    goto LABEL_25;
  }

  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (!CStringPtr)
  {
    AMSupportLogInternal();
    goto LABEL_3;
  }

  dylib = ramrod_update_get_dylib(a1);
  if (!dylib)
  {
LABEL_32:
    AMSupportLogInternal();
    v3 = 0;
    goto LABEL_34;
  }

  v5 = dlopen(dylib, 261);
  v3 = v5;
  if (!v5)
  {
    dlerror();
    AMSupportLogInternal();
    goto LABEL_34;
  }

  if (!ramrod_copy_updater_functions(v5, CStringPtr, &v22, 0, v6, v7, v8, v9) || !*(v22 + 2) || !*v22)
  {
    goto LABEL_34;
  }

  v10 = *(v22 + 3);
  if (!v10)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v13 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v13)
      {
        CFDictionarySetValue(Mutable, @"Options", v13);
        sub_449C0();
        v15 = v14(Mutable);
        if (v15)
        {
          v19 = 0;
          if ((*(v22 + 2))(v15, @"queryInfo", 0, &cf, &v19) == 1 && !v19 && cf && (v16 = CFGetTypeID(cf), v16 == CFDictionaryGetTypeID()) && CFDictionaryGetValue(cf, @"IsTwoStageSupported") == kCFBooleanTrue)
          {
            v17 = "Enable";
            CStringPtr = (&dword_0 + 1);
          }

          else
          {
            CStringPtr = 0;
            v17 = "Disable";
          }

          ramrod_log_msg_cf(@"Runtime check for two-stage support: %s\n", v17);
          goto LABEL_25;
        }
      }
    }

    AMSupportLogInternal();
LABEL_34:
    CStringPtr = 0;
    goto LABEL_25;
  }

  CStringPtr = v10(&v21);
  v11 = "Enable";
  if (!CStringPtr)
  {
    v11 = "Disable";
  }

  ramrod_log_msg_cf(@"Runtime (via IsTwoStageSupported) check for two-stage support: %s\n", v11);
  sub_44A78();
LABEL_25:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  if (v22)
  {
    free(v22);
    v22 = 0;
  }

  if (v3)
  {
    dlclose(v3);
  }

  return CStringPtr;
}

const __CFString *ramrod_update_supported(CFStringRef theString, const __CFString *a2)
{
  v2 = theString;
  v22[1] = 0;
  cf = 0;
  v22[0] = 0;
  if (theString)
  {
    CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
    if (CStringPtr)
    {
      dylib = ramrod_update_get_dylib(v2);
      if (dylib)
      {
        v6 = dlopen(dylib, 261);
        if (!v6)
        {
          dlerror();
          AMSupportLogInternal();
          goto LABEL_14;
        }

        Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (Mutable)
        {
          v8 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          if (v8)
          {
            CFDictionarySetValue(Mutable, @"Options", v8);
            CFDictionarySetValue(v8, @"PreflightRequired", kCFBooleanTrue);
            if (ramrod_copy_updater_functions(v6, CStringPtr, v22, 0, v9, v10, v11, v12) && *(v22[0] + 2) && *(v22[0] + 1) && *v22[0])
            {
              sub_449C0();
              v14 = v13(Mutable);
              v15 = v14;
              if (v14)
              {
                err = 0;
                if (!(*(v22[0] + 1))(v14, 0))
                {
                  v16 = (*(v22[0] + 2))(v15, @"queryInfo", 0, &cf, &err);
                  if (v16 != 1 || err || cf && ((v17 = CFGetTypeID(cf), v17 != CFDictionaryGetTypeID()) || CFDictionaryGetCount(cf)))
                  {
                    v18 = err;
                    if (!a2 || !err)
                    {
                      goto LABEL_25;
                    }

                    v19 = CFErrorCopyDescription(err);
                    if (!v19 || CFStringCompare(v19, a2, 0))
                    {
                      AMSupportLogInternal();
                      v18 = err;
LABEL_25:
                      ramrod_log_msg_cf(@"%@ tells us to attempt Update.  success=%d, error=%d, result=%d.", v2, v16, v18 != 0, cf != 0);
                      v2 = (&dword_0 + 1);
                      goto LABEL_26;
                    }
                  }
                }
              }

              AMSupportLogInternal();
            }
          }

          else
          {
            AMSupportLogInternal();
          }

LABEL_14:
          v2 = 0;
          goto LABEL_26;
        }
      }
    }

    AMSupportLogInternal();
    goto LABEL_14;
  }

  AMSupportLogInternal();
LABEL_26:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  if (v22[0])
  {
    free(v22[0]);
  }

  return v2;
}

uint64_t ramrod_device_hide_fdr_failure(const void *a1)
{
  if (!a1 || (TypeID = CFDictionaryGetTypeID(), TypeID != CFGetTypeID(a1)) || (Value = CFDictionaryGetValue(a1, @"FDRIgnoreDevBoardFailures")) == 0 || (v4 = Value, v5 = CFBooleanGetTypeID(), v5 != CFGetTypeID(v4)) || (result = CFBooleanGetValue(v4), result))
  {
    result = MGCopyAnswer();
    if (result)
    {
      v7 = result;
      return CFStringGetLength(result) >= 4 && CFStringHasSuffix(v7, @"DEV") != 0;
    }
  }

  return result;
}

uint64_t ramrod_load_sep_os_and_patch_from_filesystem(CFDictionaryRef theDict, const char *a2, uint64_t a3, CFErrorRef *a4)
{
  v68[0] = 0;
  v69[0] = off_1A98C0;
  memset(&v69[1], 0, 48);
  if (!a2)
  {
    return 0;
  }

  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"SEPRestore");
    v9 = CFDictionaryGetValue(theDict, @"SEPLoadRequiresART");
    v10 = CFDictionaryGetValue(theDict, @"SEPLoadNoPreflight");
  }

  else
  {
    Value = kCFBooleanFalse;
    v10 = kCFBooleanFalse;
    v9 = kCFBooleanFalse;
  }

  if (v10 == kCFBooleanTrue)
  {
    v11 = 1;
  }

  else
  {
    *(&v69[0] + 1) = "--preflight";
    v11 = 2;
  }

  if (Value == kCFBooleanTrue)
  {
    if (v9 == Value)
    {
      v12 = "--restore+art";
    }

    else
    {
      v12 = "--restore";
    }
  }

  else
  {
    v12 = "--load";
  }

  *(v69 + v11) = v12;
  v13 = v11 + 2;
  *(v69 + v11 + 1) = a2;
  if (a3)
  {
    *(v69 + v13) = "--patches";
    v13 = v11 | 4;
    *(&v69[1] + v11 + 1) = a3;
  }

  if (_ramrod_device_has_sandcat())
  {
    v67 = 2;
    v21 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
    v68[1] = 0;
    if (v21)
    {
      if (CFURLCreateWithFileSystemPath(kCFAllocatorDefault, v21, kCFURLPOSIXPathStyle, 0))
      {
        AMSupportCreateDataFromMappedFileURL();
        ramrod_log_msg("WARNING: failed to open path %s with error: %d\n", v29, v30, v31, v32, v33, v34, v35, a2);
      }

      else
      {
        ramrod_log_msg("WARNING: failed to create path URL from: %s.\n", v22, v23, v24, v25, v26, v27, v28, a2);
      }
    }

    else
    {
      ramrod_log_msg("WARNING: failed to create path string from: %s.\n", v14, v15, v16, v17, v18, v19, v20, a2);
    }

    AMSupportSafeRelease();
    AMSupportSafeRelease();
    AMSupportSafeRelease();
    ramrod_log_msg("Warning: No snid stitched to sep being loaded, will attempt to use flashing slot as proxy.\n", v36, v37, v38, v39, v40, v41, v42, v66);
    v67 = dword_1C4800;
    asprintf(v68, "--slot=%d", dword_1C4800);
    if (!v68[0])
    {
      v57 = __error();
      ramrod_log_msg("unable to load sepos because sandcat slot print failed. error: %d\n", v58, v59, v60, v61, v62, v63, v64, *v57);
      goto LABEL_27;
    }

    *(v69 + v13) = v68[0];
  }

  v43 = ramrod_execute_command(v69);
  if (!v43)
  {
    v56 = 1;
    goto LABEL_28;
  }

  ramrod_log_msg("seputil failure when attempting to load the SEP OS firmware: %d\n", v44, v45, v46, v47, v48, v49, v50, v43);
  sub_44A2C(a4, @"RamrodErrorDomain", v51, v52, @"%s: seputil failed when attempting to load the SEP OS firmware: %d", v53, v54, v55, "ramrod_load_sep_os_and_patch_from_filesystem");
LABEL_27:
  v56 = 0;
LABEL_28:
  if (v68[0])
  {
    free(v68[0]);
  }

  return v56;
}

void *_ramrod_copy_update_firmware_info(uint64_t a1)
{
  v2 = calloc(1uLL, 0x20uLL);
  if (v2)
  {
    *v2 = AMSupportSafeRetain();
    v3 = calloc(1uLL, 0x88uLL);
    v2[1] = v3;
    memcpy(v3, *(a1 + 8), 0x88uLL);
    v4 = calloc(1uLL, 0x10uLL);
    *(v2[1] + 80) = v4;
    *v4 = **(*(a1 + 8) + 80);
    v5 = calloc(1uLL, 0x48uLL);
    v2[2] = v5;
    memcpy(v5, *(a1 + 16), 0x48uLL);
    if (*v2[2])
    {
      v6 = calloc(8uLL, 1uLL);
      v7 = **v2[2];
      *v6 = v7;
      v8 = v7;
      *v2[2] = v6;
    }

    AMSupportSafeRetain();
    AMSupportSafeRetain();
    AMSupportSafeRetain();
    AMSupportSafeRetain();
    AMSupportSafeRetain();
    *(v2 + 24) = *(a1 + 24);
  }

  return v2;
}

uint64_t sub_D7964(uint64_t a1, uint64_t (**a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("Step 1: Writing out individual EAN keys.\n", a2, a3, a4, a5, a6, a7, a8, v37);
  v10 = a2[9](a3);
  v15 = v10;
  if (v10)
  {
    if (sub_33250(v10, a2, a3, 1, v11, v12, v13, v14))
    {
      ramrod_log_msg("Step 2: Clean up any orphaned keys that moved from EAN to iBootEAN.\n", v16, v17, v18, v19, v20, v21, v22, v38);
      v23 = a2[11](a3);
      v31 = v23;
      if (v23)
      {
        if (CFDictionaryGetCount(v23) >= 1 && !sub_4412C(v31, v15))
        {
          goto LABEL_15;
        }

        ramrod_log_msg("Step 3: Clean up any orphaned keys that moved from EAN to iBootNonEssentialEAN.\n", v24, v25, v26, v27, v28, v29, v30, v38);
        v32 = a2[12](a3);
        v33 = v32;
        if (!v32)
        {
          v34 = 1;
          v35 = "copy_ibne_data returned NULL.\n";
          goto LABEL_10;
        }

        if (CFDictionaryGetCount(v32) >= 1 && !sub_4412C(v33, v15))
        {
LABEL_15:
          v34 = 1;
          v35 = "_cleanup_ibfw failure.\n";
          goto LABEL_10;
        }

        v34 = 1;
        v35 = "All Done.\n";
      }

      else
      {
        v34 = 1;
        v35 = "copy_ibfw_data returned NULL.\n";
      }
    }

    else
    {
      sub_44A78();
      v34 = 0;
      v35 = "_write_ean failure.\n";
    }
  }

  else
  {
    sub_44A78();
    v34 = 0;
    v35 = "copy_ean_data returned NULL.\n";
  }

LABEL_10:
  ramrod_log_msg(v35, v24, v25, v26, v27, v28, v29, v30, v38);
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v34;
}

uint64_t ramrod_unarchive_dir(uint64_t a1, const __CFData *a2)
{
  bzero(&v22, 0x98uLL);
  v20 = 0;
  v21 = 0;
  v11 = 0xFFFFFFFFLL;
  if (a1 && a2)
  {
    if (CFDataGetLength(a2) < 1)
    {
      v11 = 0xFFFFFFFFLL;
    }

    else
    {
      CFDataGetLength(a2);
      ramrod_log_msg("[%s] extracting archive (%lu bytes) to dir '%s'\n", v12, v13, v14, v15, v16, v17, v18, "ramrod_unarchive_dir");
      bzero(&v22, 0x98uLL);
      v20 = a2;
      v21 = 0;
      v22 = 1;
      v23 = a1;
      v24 = sub_D7BBC;
      v25 = &v20;
      v11 = ParallelArchiveExtract();
    }
  }

  ramrod_log_msg("[%s] result = %d\n", v4, v5, v6, v7, v8, v9, v10, "ramrod_unarchive_dir");
  return v11;
}

CFIndex sub_D7BBC(uint64_t a1, UInt8 *a2, CFIndex a3)
{
  v3 = -1;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v7 = *a1;
        if (v7)
        {
          v8 = *(a1 + 8);
          Length = CFDataGetLength(v7);
          ramrod_log_msg("[%s] [num bytes to read = %llu] [byte offset: %lu] [length: %lu]\n", v10, v11, v12, v13, v14, v15, v16, "_read_data");
          if (Length - v8 >= a3)
          {
            v3 = a3;
          }

          else
          {
            v3 = Length - v8;
          }

          v18.location = v8;
          v18.length = v3;
          CFDataGetBytes(*a1, v18, a2);
          *(a1 + 8) += v3;
        }
      }
    }
  }

  return v3;
}

uint64_t sub_D7C6C(int a1, const __CFData *a2, CFErrorRef *a3)
{
  bzero(&v42, 0x90uLL);
  if (fstat(a1, &v42))
  {
    v30 = *__error();
    v31 = __error();
    strerror(*v31);
    ramrod_create_error_cf(a3, kCFErrorDomainPOSIX, v30, 0, @"%s: Error calling fstat() on fd: err='%s'", v32, v33, v34, "write_data_to_fd");
    return 0;
  }

  st_blksize = v42.st_blksize;
  if (!v42.st_blksize)
  {
    v35 = sub_44A44();
    ramrod_create_error_cf(v35, v36, 2, 0, v37, v38, v39, v40, v41);
    return 0;
  }

  v7 = lseek(a1, 0, 1);
  v8 = v7 & ~(v7 >> 63);
  Length = CFDataGetLength(a2);
  sub_44A64();
  ramrod_log_msg("%s: length=%ld, preferred_block_size=%lu, next_io_size=%lu\n", v10, v11, v12, v13, v14, v15, v16, "write_data_to_fd");
  v17 = valloc(st_blksize);
  bzero(v17, st_blksize);
  if (!v17)
  {
    return 0;
  }

  if (Length < 1)
  {
LABEL_12:
    v23 = 1;
  }

  else
  {
    v18 = Length;
    while (1)
    {
      sub_44A64();
      v20 = v18 >= v19 ? v19 : v18;
      v43.location = Length - v18;
      v43.length = v20;
      CFDataGetBytes(a2, v43, v17);
      v21 = write(a1, v17, v20);
      if (v21 == -1)
      {
        break;
      }

      v8 += v21;
      v22 = v18 <= v21;
      v18 -= v21;
      if (v22)
      {
        goto LABEL_12;
      }
    }

    v25 = *__error();
    v26 = __error();
    strerror(*v26);
    ramrod_create_error_cf(a3, kCFErrorDomainPOSIX, v25, 0, @"%s: Error writing to fd: err='%s'", v27, v28, v29, "write_data_to_fd");
    v23 = 0;
  }

  free(v17);
  return v23;
}

void sub_D7EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("failed to skip from nvmefwupdater\n", a2, a3, a4, a5, a6, a7, a8, v16);
  v8 = sub_44A44();
  sub_44A2C(v8, v9, v10, v11, v12, v13, v14, v15, v17);
}

void sub_D7F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("failed to create nvmefwupdater config dict\n", a2, a3, a4, a5, a6, a7, a8, v14);
  v8 = sub_44A44();
  ramrod_create_error_cf(v8, v9, 6, 0, v10, v11, v12, v13, v15);
}

void sub_D7FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("invalid arguments for %s: only %s specified (text and data both required)\n", a2, a3, a4, a5, a6, a7, a8, "/usr/bin/nvmefwupdater");
  v8 = sub_44A44();
  ramrod_create_error_cf(v8, v9, 1018, 0, v10, v11, v12, v13, v14);
}

void sub_D83C8(CFErrorRef *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_28524(a1, @"RamrodErrorDomain", @"%s: updaterOptionsCopy is NULL", a6, a7, a8, "ramrod_updater_copy_options");

  CFRelease(a2);
}

void sub_D854C(const void *a1)
{
  AMSupportLogInternal();

  CFRelease(a1);
}

void sub_D85AC(const void *a1)
{
  AMSupportLogInternal();

  CFRelease(a1);
}

void sub_D8670()
{
  sub_44A50();
  AMSupportLogInternal();
  ramrod_create_error_cf(v1, v0, 1013, *v2, @"%s: Preflight Create failed on %s", v3, v4, v5, "ramrod_update_copy_deviceinfo_with_options");
}

void sub_D86EC()
{
  sub_44A50();
  AMSupportLogInternal();
  ramrod_create_error_cf(v1, v0, 1016, *v2, @"%s: Exceeded maximum loops for %s", v3, v4, v5, "ramrod_update_copy_deviceinfo_with_options");
}

uint64_t sub_D9034(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg(a1, a2, a3, a4, a5, a6, a7, a8, v9);
  AMSupportSafeRelease();
  return AMSupportSafeRelease();
}

void sub_D95CC(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg(a1, a2, a3, a4, a5, a6, a7, a8, v21);
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  ramrod_log_msg("Failed to write staged FDR EAN key.\n", v8, v9, v10, v11, v12, v13, v14, v22);
  v15 = sub_44A44();
  ramrod_create_error_cf(v15, v16, 1023, 0, v17, v18, v19, v20, v23);
}

void sub_D9650()
{
  __error();
  _os_assert_log();
  _os_crash();
  __break(1u);
}

uint64_t sub_D9854(const __CFData *a1, CFDataRef *a2, int a3)
{
  Length = CFDataGetLength(a1);
  if (HIDWORD(Length))
  {
    return 0;
  }

  v7 = Length;
  connect[0] = 0;
  v8 = IOServiceMatching("IOAESAccelerator");
  if (!v8)
  {
    ramrod_log_msg("Could not allocate matching dict for kIOAESAcceleratorClass", v9, v10, v11, v12, v13, v14, v15, v59);
    return 0;
  }

  v16 = v8;
  CFRetain(v8);
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v16);
  if (!MatchingService)
  {
    ramrod_log_msg("Could not find kIOAESAcceleratorClass", v18, v19, v20, v21, v22, v23, v24, v59);
    CFRelease(v16);
    return 0;
  }

  v25 = MatchingService;
  v26 = IOServiceOpen(MatchingService, mach_task_self_, 0, connect);
  if (v26)
  {
    ramrod_log_msg("Return %d trying to open kIOAESAcceleratorClass", v27, v28, v29, v30, v31, v32, v33, v26);
  }

  CFRelease(v16);
  IOObjectRelease(v25);
  v34 = connect[0];
  if (!connect[0])
  {
    return 0;
  }

  if (a3)
  {
    if (v7)
    {
      BytePtr = CFDataGetBytePtr(a1);
      v36 = sub_452C8((v7 + 19) & 0x1FFFFFFF0);
      if (v36)
      {
        v37 = v36;
        *v36 = v7;
        memcpy(v36 + 1, BytePtr, v7);
        v7 = (v7 + 19) & 0x1FFFFFFF0;
        goto LABEL_14;
      }
    }

    goto LABEL_25;
  }

  if (v7 < 5 || (v38 = CFDataGetBytePtr(a1), (v39 = sub_452C8(v7)) == 0))
  {
LABEL_25:
    IOServiceClose(v34);
    return 0;
  }

  v37 = v39;
  memcpy(v39, v38, v7);
LABEL_14:
  v40 = sub_452C8(v7);
  v41 = v40;
  if (!v40)
  {
LABEL_24:
    v53 = 0;
    goto LABEL_33;
  }

  v71 = 0;
  outputStructCnt = 88;
  if (a3)
  {
    v42 = v37;
  }

  else
  {
    v42 = v40;
  }

  if (a3)
  {
    v43 = v40;
  }

  else
  {
    v43 = v37;
  }

  *connect = v42;
  v62 = v43;
  v63 = v7;
  v65 = 0;
  v64 = 0;
  v66 = a3 ^ 1;
  v67 = 128;
  v68 = 0u;
  v69 = 0u;
  v70 = 2108;
  v44 = IOConnectCallStructMethod(v34, 1u, connect, 0x58uLL, connect, &outputStructCnt);
  if (v44)
  {
    v59 = v44;
    v52 = "perform aes => %d";
LABEL_23:
    ramrod_log_msg(v52, v45, v46, v47, v48, v49, v50, v51, v59);
    goto LABEL_24;
  }

  if (a3)
  {
    v54 = kCFAllocatorDefault;
    v55 = v41;
    v56 = v7;
  }

  else
  {
    v56 = *v41;
    if (v7 - 4 < v56)
    {
      goto LABEL_24;
    }

    v54 = kCFAllocatorDefault;
    v55 = v41 + 4;
  }

  v57 = CFDataCreate(v54, v55, v56);
  *a2 = v57;
  if (!v57)
  {
    v52 = "Unable to allocate return crypto CFData";
    goto LABEL_23;
  }

  v53 = 1;
LABEL_33:
  IOServiceClose(v34);
  free(v37);
  if (v41)
  {
    free(v41);
  }

  return v53;
}

void sub_D9B14(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  sub_EAB4();
  _os_crash_msg();
  __break(1u);
}

void sub_D9BC4(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  sub_EAB4();
  _os_crash_msg();
  __break(1u);
}

void sub_D9E68(void *a1, _OWORD *a2)
{
  sub_13494(a1, a2);
  sub_134AC();
  sub_EAD8();
  sub_57C98();
  _os_crash_msg();
  __break(1u);
}

void sub_D9F00(void *a1, _OWORD *a2)
{
  sub_13494(a1, a2);
  sub_134AC();
  sub_EAD8();
  sub_57C98();
  _os_crash_msg();
  __break(1u);
}

void sub_D9F84(void *a1, _OWORD *a2)
{
  sub_13494(a1, a2);
  sub_134AC();
  sub_EAD8();
  sub_57C98();
  _os_crash_msg();
  __break(1u);
}

void sub_DA008(const char *a1, void *a2, _OWORD *a3)
{
  strlen(a1);
  *a2 = 0;
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  sub_134AC();
  v5 = __error();
  strerror(*v5);
  sub_57C98();
  _os_crash_msg();
  __break(1u);
}

void sub_DA0D8(void *a1, _OWORD *a2)
{
  sub_13494(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  __error();
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
}

void sub_DA19C(void *a1, _OWORD *a2)
{
  sub_13494(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  __error();
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
}

const __CFArray *wait_for_io_service_matching_any_dict(const __CFArray *result, unsigned int a2)
{
  if (result)
  {
    v3 = result;
    Count = CFArrayGetCount(result);
    v5 = 0;
    while (1)
    {
      v6 = a2 - v5 >= 3 ? 3 : a2 - v5;
      if (Count >= 1)
      {
        break;
      }

LABEL_10:
      v9 = CFCopyDescription(v3);
      v23 = 0;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      *buffer = 0u;
      v18 = 0u;
      if (CFStringGetCString(v9, buffer, 100, 0x8000100u))
      {
        ramrod_log_msg("waiting for matching IOKit service: %s\n", v10, v11, v12, v13, v14, v15, v16, buffer);
      }

      CFRelease(v9);
      sleep(v6);
      v5 += v6;
      if (v5 >= a2)
      {
        return 0;
      }
    }

    v7 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, v7);
      CFRetain(ValueAtIndex);
      result = IOServiceGetMatchingService(kIOMasterPortDefault, ValueAtIndex);
      if (result)
      {
        break;
      }

      if (Count == ++v7)
      {
        goto LABEL_10;
      }
    }
  }

  return result;
}

const __CFArray *wait_for_io_service_matching_any_class_with_timeout(const __CFArray *a1, unsigned int a2)
{
  if (!a1)
  {
    return 0;
  }

  Count = CFArrayGetCount(a1);
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, Count, &kCFTypeArrayCallBacks);
  if (!Mutable)
  {
    return 0;
  }

  v6 = Mutable;
  if (Count < 1)
  {
LABEL_12:
    v17 = wait_for_io_service_matching_any_dict(v6, a2);
  }

  else
  {
    v7 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v7);
      if (!ValueAtIndex)
      {
        break;
      }

      v9 = ValueAtIndex;
      v10 = CFGetTypeID(ValueAtIndex);
      if (v10 != CFStringGetTypeID())
      {
        break;
      }

      Length = CFStringGetLength(v9);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      if (MaximumSizeForEncoding < 1)
      {
        break;
      }

      v13 = MaximumSizeForEncoding;
      v14 = malloc(MaximumSizeForEncoding);
      if (!v14)
      {
        break;
      }

      v15 = v14;
      if (!CFStringGetCString(v9, v14, v13, 0x8000100u))
      {
        break;
      }

      v16 = IOServiceMatching(v15);
      free(v15);
      if (!v16)
      {
        break;
      }

      CFArrayAppendValue(v6, v16);
      CFRelease(v16);
      if (Count == ++v7)
      {
        goto LABEL_12;
      }
    }

    v17 = 0;
  }

  CFRelease(v6);
  return v17;
}

uint64_t sub_DA4F0(void **a1, unint64_t a2, char *a3, unsigned __int8 **a4, unint64_t a5)
{
  v7 = *a1;
  v8 = *a4;
  if (*a1 < a3 && v8 < a5)
  {
    while (1)
    {
      *a4 = v8;
      *a1 = v7;
      v15 = *v8++;
      v14 = v15;
      v16 = v15 >> 4;
      if (v15 >> 4 == 15)
      {
        while (v8 < a5)
        {
          v26 = *v8++;
          v16 += v26;
          if (v26 != 255)
          {
            goto LABEL_8;
          }
        }

        return 1;
      }

LABEL_8:
      if (a5 - v8 < v16)
      {
        return 1;
      }

      v17 = v16;
      if (a3 - v7 < v16)
      {
        memcpy(v7, v8, a3 - v7);
        v7 = a3;
        goto LABEL_6;
      }

      memcpy(v7, v8, v16);
      v8 += v17;
      v18 = &v7[v17];
      if (v8 >= a5)
      {
        v7 += v17;
        goto LABEL_6;
      }

      if (a5 - v8 < 2)
      {
        return 1;
      }

      v20 = *v8;
      v8 += 2;
      v19 = v20;
      if (!v20 || &v18[-v19] < a2)
      {
        return 1;
      }

      v21 = (v14 & 0xF) + 4;
      if ((v14 & 0xF) == 0xF)
      {
        while (v8 < a5)
        {
          v27 = *v8++;
          v21 += v27;
          if (v27 != 255)
          {
            goto LABEL_15;
          }
        }

        return 1;
      }

LABEL_15:
      v22 = a3 - v18;
      if (a3 - v18 < v21)
      {
        break;
      }

      if (v21)
      {
        v23 = -v19;
        v24 = &v7[v17];
        v25 = v21;
        do
        {
          *v24 = v24[v23];
          ++v24;
          --v25;
        }

        while (v25);
      }

      v7 = &v18[v21];
      if (v8 >= a5)
      {
        goto LABEL_6;
      }
    }

    if (v18 != a3)
    {
      if (v22 <= 1)
      {
        v28 = 1;
      }

      else
      {
        v28 = v22;
      }

      v29 = -v19;
      v30 = &v7[v17];
      do
      {
        *v30 = v30[v29];
        ++v30;
        --v28;
      }

      while (v28);
    }

    v7 = &v18[v22];
  }

LABEL_6:
  result = 0;
  *a1 = v7;
  *a4 = v8;
  return result;
}

unsigned __int16 *sub_DA6AC(unsigned int *a1, unint64_t a2, _BYTE *a3, _BYTE *a4, unint64_t a5, unsigned __int8 *a6, uint64_t a7)
{
  v7 = *(a1 + 2);
  if (!v7)
  {
    return v7;
  }

  if (!a7)
  {
    return 0;
  }

  v8 = *(a1 + 29);
  if (a7 < 1)
  {
    v10 = 0;
    v9 = a6;
  }

  else
  {
    v9 = a6 + 1;
    v10 = *a6 != 0;
  }

  v11 = 0;
  v604 = *(a1 + 28);
  v601 = *(a1 + 27);
  v12 = &a6[a7];
  v13 = 4;
  v602 = *(a1 + 26);
  do
  {
    if (v9 >= v12)
    {
      v14 = 0;
    }

    else
    {
      v15 = *v9++;
      v14 = v15;
    }

    v11 = v14 | (v11 << 8);
    --v13;
  }

  while (v13);
  if (v11 == -1)
  {
    v10 = 1;
  }

  if (v10)
  {
    return 0;
  }

  v594 = a3;
  if (a3 >= a4)
  {
    v206 = a3;
    goto LABEL_837;
  }

  v600 = v7 + 1956;
  v599 = 8 - v602;
  v598 = v7 + 204;
  v595 = v7 + 420;
  v596 = v7 + 1220;
  v597 = v7 + 690;
  v17 = v7 + 1940;
  v18 = -1;
  while (1)
  {
    if (!HIBYTE(v18))
    {
      if (v9 >= v12)
      {
        v19 = 0;
      }

      else
      {
        v20 = *v9++;
        v19 = v20;
      }

      v18 <<= 8;
      v11 = v19 | (v11 << 8);
    }

    v21 = a3 - a2;
    v22 = v604 & (a3 - a2);
    v23 = &v7[16 * v8 + v22];
    v24 = *v23;
    v25 = (v18 >> 11) * v24;
    v26 = v11 - v25;
    if (v11 < v25)
    {
      break;
    }

    v53 = v18 - v25;
    v54 = v7 + 192;
LABEL_212:
    *v23 = v24 - (v24 >> 5);
    if (!HIBYTE(v53))
    {
      if (v9 >= v12)
      {
        v157 = 0;
      }

      else
      {
        v158 = *v9++;
        v157 = v158;
      }

      v53 <<= 8;
      v26 = v157 | (v26 << 8);
    }

    v159 = v54[v8];
    v160 = (v53 >> 11) * v159;
    v11 = v26 - v160;
    if (v26 >= v160)
    {
      v54[v8] -= v54[v8] >> 5;
      if (a3 == a2)
      {
        return 0;
      }

      v195 = v53 - v160;
      if (!((v53 - v160) >> 24))
      {
        if (v9 >= v12)
        {
          v196 = 0;
        }

        else
        {
          v197 = *v9++;
          v196 = v197;
        }

        v195 <<= 8;
        v11 = v196 | (v11 << 8);
      }

      v198 = v598[v8];
      v199 = (v195 >> 11) * v198;
      v200 = v11 - v199;
      if (v11 >= v199)
      {
        v239 = v195 - v199;
        v598[v8] -= v598[v8] >> 5;
        if (HIBYTE(v239))
        {
          v240 = v7 + 408;
        }

        else
        {
          v240 = v7 + 408;
          if (v9 >= v12)
          {
            v241 = 0;
          }

          else
          {
            v242 = *v9++;
            v241 = v242;
          }

          v239 <<= 8;
          v200 = v241 | (v200 << 8);
        }

        v284 = v240[v8];
        v283 = (v239 >> 11) * v284;
        v285 = v200 - v283;
        if (v200 >= v283)
        {
          v286 = v239 - v283;
          v240[v8] -= v240[v8] >> 5;
          if (HIBYTE(v286))
          {
            v200 -= v283;
          }

          else
          {
            if (v9 >= v12)
            {
              v287 = 0;
            }

            else
            {
              v288 = *v9++;
              v287 = v288;
            }

            v286 <<= 8;
            v200 = v287 | (v285 << 8);
          }

          v433 = v595[v8];
          v283 = (v286 >> 11) * v433;
          v434 = v200 - v283;
          if (v200 >= v283)
          {
            v283 = v286 - v283;
            v435 = v433 - (v433 >> 5);
            LODWORD(v203) = a1[3];
            a1[3] = a1[2];
            v200 = v434;
          }

          else
          {
            v435 = v433 + ((2048 - v433) >> 5);
            LODWORD(v203) = a1[2];
          }

          v595[v8] = v435;
          a1[2] = a1[1];
        }

        else
        {
          v240[v8] = v284 + ((2048 - v284) >> 5);
          LODWORD(v203) = a1[1];
        }

        v436 = *a1;
        *a1 = v203;
        a1[1] = v436;
      }

      else
      {
        v598[v8] = v198 + ((2048 - v198) >> 5);
        if (!HIBYTE(v199))
        {
          if (v9 >= v12)
          {
            v201 = 0;
          }

          else
          {
            v202 = *v9++;
            v201 = v202;
          }

          v199 <<= 8;
          v11 = v201 | (v11 << 8);
        }

        v203 = *a1;
        v204 = &v7[16 * v8 + 216];
        v205 = *(v204 + 2 * v22);
        v18 = (v199 >> 11) * v205;
        v200 = v11 - v18;
        if (v11 < v18)
        {
          *(v204 + 2 * v22) = v205 + ((2048 - v205) >> 5);
          *a3 = a3[-v203];
          v206 = a3 + 1;
          v8 = byte_171E10[v8 + 48];
          goto LABEL_779;
        }

        v283 = v199 - v18;
        *(v204 + 2 * v22) = v205 - (v205 >> 5);
      }

      v437 = v7[962];
      if (!HIBYTE(v283))
      {
        if (v9 >= v12)
        {
          v438 = 0;
        }

        else
        {
          v439 = *v9++;
          v438 = v439;
        }

        v283 <<= 8;
        v200 = v438 | (v200 << 8);
      }

      v440 = (v283 >> 11) * v437;
      v441 = v200 - v440;
      if (v200 >= v440)
      {
        v473 = v283 - v440;
        v7[962] -= v7[962] >> 5;
        if (!((v283 - v440) >> 24))
        {
          if (v9 >= v12)
          {
            v474 = 0;
          }

          else
          {
            v475 = *v9++;
            v474 = v475;
          }

          v473 <<= 8;
          v441 = v474 | (v441 << 8);
        }

        v476 = v7[963];
        v477 = (v473 >> 11) * v476;
        v478 = v441 - v477;
        if (v441 >= v477)
        {
          v508 = v473 - v477;
          v7[963] -= v7[963] >> 5;
          if (!((v473 - v477) >> 24))
          {
            if (v9 >= v12)
            {
              v509 = 0;
            }

            else
            {
              v510 = *v9++;
              v509 = v510;
            }

            v508 <<= 8;
            v478 = v509 | (v478 << 8);
          }

          v511 = v7[1221];
          v512 = (v508 >> 11) * v511;
          v513 = v511 + ((2048 - v511) >> 5);
          v514 = v508 - v512;
          v515 = v511 - (v511 >> 5);
          v516 = v478 >= v512;
          if (v478 >= v512)
          {
            v517 = 3;
          }

          else
          {
            v517 = 2;
          }

          if (v478 >= v512)
          {
            v518 = v478 - v512;
          }

          else
          {
            v514 = v512;
            v518 = v478;
          }

          if (!v516)
          {
            LOWORD(v515) = v513;
          }

          v7[1221] = v515;
          if (!HIBYTE(v514))
          {
            if (v9 >= v12)
            {
              v519 = 0;
            }

            else
            {
              v520 = *v9++;
              v519 = v520;
            }

            v514 <<= 8;
            v518 = v519 | (v518 << 8);
          }

          v521 = v596[v517];
          v522 = (v514 >> 11) * v521;
          v523 = v521 + ((2048 - v521) >> 5);
          LODWORD(v524) = (2 * v517) | 1;
          v525 = v514 - v522;
          v526 = v518 - v522;
          v527 = v521 - (v521 >> 5);
          v528 = v518 >= v522;
          if (v518 >= v522)
          {
            v524 = v524;
          }

          else
          {
            v524 = (2 * v517);
          }

          if (v518 >= v522)
          {
            v522 = v525;
          }

          if (v528)
          {
            v518 = v526;
          }

          if (!v528)
          {
            LOWORD(v527) = v523;
          }

          v596[v517] = v527;
          v529 = v596[v524];
          if (!HIBYTE(v522))
          {
            if (v9 >= v12)
            {
              v530 = 0;
            }

            else
            {
              v531 = *v9++;
              v530 = v531;
            }

            v522 <<= 8;
            v518 = v530 | (v518 << 8);
          }

          v532 = (v522 >> 11) * v529;
          LODWORD(v533) = 2 * v524;
          v534 = v529 + ((2048 - v529) >> 5);
          v535 = v522 - v532;
          v536 = v529 - (v529 >> 5);
          if (v518 >= v532)
          {
            v533 = (2 * v524) | 1u;
          }

          else
          {
            v533 = v533;
          }

          if (v518 >= v532)
          {
            v537 = v535;
          }

          else
          {
            v537 = v532;
          }

          if (v518 >= v532)
          {
            v538 = v518 - v532;
          }

          else
          {
            v538 = v518;
          }

          if (v518 >= v532)
          {
            v539 = v536;
          }

          else
          {
            v539 = v534;
          }

          v596[v524] = v539;
          v540 = v596[v533];
          if (!HIBYTE(v537))
          {
            if (v9 >= v12)
            {
              v541 = 0;
            }

            else
            {
              v542 = *v9++;
              v541 = v542;
            }

            v537 <<= 8;
            v538 = v541 | (v538 << 8);
          }

          v543 = (v537 >> 11) * v540;
          v544 = 2 * v533;
          v545 = v538 - v543;
          if (v538 >= v543)
          {
            v544 |= 1u;
            v543 = v537 - v543;
            v538 = v545;
            v546 = v540 - (v540 >> 5);
          }

          else
          {
            v546 = v540 + ((2048 - v540) >> 5);
          }

          v596[v533] = v546;
          v547 = v544 ^ 0x10u;
          v548 = &v7[16 * v547 + 1236];
          v549 = *(v548 + 2);
          if (!HIBYTE(v543))
          {
            if (v9 >= v12)
            {
              v550 = 0;
            }

            else
            {
              v551 = *v9++;
              v550 = v551;
            }

            v543 <<= 8;
            v538 = v550 | (v538 << 8);
          }

          v552 = (v543 >> 11) * v549;
          v553 = v549 + ((2048 - v549) >> 5);
          v554 = v543 - v552;
          v555 = v549 - (v549 >> 5);
          if (v538 >= v552)
          {
            v556 = 3;
          }

          else
          {
            v556 = 2;
          }

          if (v538 >= v552)
          {
            v557 = v538 - v552;
          }

          else
          {
            v554 = v552;
            v557 = v538;
          }

          if (v538 >= v552)
          {
            v558 = v555;
          }

          else
          {
            v558 = v553;
          }

          *(v548 + 2) = v558;
          v559 = *(v548 + 2 * v556);
          if (!HIBYTE(v554))
          {
            if (v9 >= v12)
            {
              v560 = 0;
            }

            else
            {
              v561 = *v9++;
              v560 = v561;
            }

            v554 <<= 8;
            v557 = v560 | (v557 << 8);
          }

          v562 = (v554 >> 11) * v559;
          v563 = v559 + ((2048 - v559) >> 5);
          v564 = v554 - v562;
          v565 = v559 - (v559 >> 5);
          v566 = v557 >= v562;
          if (v557 >= v562)
          {
            v567 = (2 * v556) | 1u;
          }

          else
          {
            v567 = (2 * v556);
          }

          if (v557 >= v562)
          {
            v557 -= v562;
          }

          else
          {
            v564 = v562;
          }

          if (v566)
          {
            v568 = v565;
          }

          else
          {
            v568 = v563;
          }

          *(v548 + 2 * v556) = v568;
          v569 = *(v548 + 2 * v567);
          if (!HIBYTE(v564))
          {
            if (v9 >= v12)
            {
              v570 = 0;
            }

            else
            {
              v571 = *v9++;
              v570 = v571;
            }

            v564 <<= 8;
            v557 = v570 | (v557 << 8);
          }

          v572 = (v564 >> 11) * v569;
          v573 = v569 + ((2048 - v569) >> 5);
          v574 = v564 - v572;
          v575 = v569 - (v569 >> 5);
          if (v557 >= v572)
          {
            v576 = (2 * v567) | 1u;
          }

          else
          {
            v576 = (2 * v567);
          }

          if (v557 >= v572)
          {
            v11 = v557 - v572;
          }

          else
          {
            v574 = v572;
            v11 = v557;
          }

          if (v557 >= v572)
          {
            v577 = v575;
          }

          else
          {
            v577 = v573;
          }

          *(v548 + 2 * v567) = v577;
          v578 = *(v548 + 2 * v576);
          if (!HIBYTE(v574))
          {
            if (v9 >= v12)
            {
              v579 = 0;
            }

            else
            {
              v580 = *v9++;
              v579 = v580;
            }

            v574 <<= 8;
            v11 = v579 | (v11 << 8);
          }

          v18 = (v574 >> 11) * v578;
          v581 = 2 * v576;
          v582 = v11 - v18;
          if (v11 >= v18)
          {
            v581 |= 1u;
            v18 = v574 - v18;
            v11 = v582;
            v583 = v578 - (v578 >> 5);
          }

          else
          {
            v583 = v578 + ((2048 - v578) >> 5);
          }

          *(v548 + 2 * v576) = v583;
          v243 = (v581 ^ 0x10) + 16 * v547 + 18;
        }

        else
        {
          v7[963] = v476 + ((2048 - v476) >> 5);
          if (!HIBYTE(v477))
          {
            if (v9 >= v12)
            {
              v479 = 0;
            }

            else
            {
              v480 = *v9++;
              v479 = v480;
            }

            v477 <<= 8;
            v441 = v479 | (v441 << 8);
          }

          v481 = &v7[8 * v22 + 1092];
          v482 = *(v481 + 2);
          v483 = (v477 >> 11) * v482;
          v484 = v482 + ((2048 - v482) >> 5);
          v485 = v477 - v483;
          v486 = v482 - (v482 >> 5);
          if (v441 >= v483)
          {
            v487 = 3;
          }

          else
          {
            v487 = 2;
          }

          if (v441 >= v483)
          {
            v488 = v485;
          }

          else
          {
            v488 = v483;
          }

          if (v441 >= v483)
          {
            v489 = v441 - v483;
          }

          else
          {
            v489 = v441;
          }

          if (v441 < v483)
          {
            LOWORD(v486) = v484;
          }

          *(v481 + 2) = v486;
          if (!HIBYTE(v488))
          {
            if (v9 >= v12)
            {
              v490 = 0;
            }

            else
            {
              v491 = *v9++;
              v490 = v491;
            }

            v488 <<= 8;
            v489 = v490 | (v489 << 8);
          }

          v492 = *(v481 + 2 * v487);
          v493 = (v488 >> 11) * v492;
          LODWORD(v494) = 2 * v487;
          v495 = v492 + ((2048 - v492) >> 5);
          v496 = v488 - v493;
          v497 = v492 - (v492 >> 5);
          v498 = v489 >= v493;
          if (v489 >= v493)
          {
            v494 = (2 * v487) | 1u;
          }

          else
          {
            v494 = v494;
          }

          if (v489 >= v493)
          {
            v489 -= v493;
          }

          else
          {
            v496 = v493;
          }

          if (!v498)
          {
            LOWORD(v497) = v495;
          }

          *(v481 + 2 * v487) = v497;
          v499 = *(v481 + 2 * v494);
          if (!HIBYTE(v496))
          {
            if (v9 >= v12)
            {
              v500 = 0;
            }

            else
            {
              v501 = *v9++;
              v500 = v501;
            }

            v496 <<= 8;
            v489 = v500 | (v489 << 8);
          }

          v502 = (v496 >> 11) * v499;
          v503 = 2 * v494;
          v504 = v499 + ((2048 - v499) >> 5);
          v505 = v496 - v502;
          v506 = v499 - (v499 >> 5);
          if (v489 < v502)
          {
            v18 = v502;
          }

          else
          {
            v503 = (2 * v494) | 1;
            v18 = v505;
          }

          if (v489 >= v502)
          {
            v11 = v489 - v502;
          }

          else
          {
            v11 = v489;
          }

          if (v489 >= v502)
          {
            v507 = v506;
          }

          else
          {
            v507 = v504;
          }

          *(v481 + 2 * v494) = v507;
          v243 = (v503 ^ 8) + 10;
        }
      }

      else
      {
        v7[962] = v437 + ((2048 - v437) >> 5);
        if (!HIBYTE(v440))
        {
          if (v9 >= v12)
          {
            v442 = 0;
          }

          else
          {
            v443 = *v9++;
            v442 = v443;
          }

          v440 <<= 8;
          v200 = v442 | (v200 << 8);
        }

        v444 = &v7[8 * v22 + 964];
        v445 = *(v444 + 2);
        v446 = (v440 >> 11) * v445;
        v447 = v445 + ((2048 - v445) >> 5);
        v448 = v440 - v446;
        v449 = v200 - v446;
        v450 = v445 - (v445 >> 5);
        v451 = v200 >= v446;
        if (v200 >= v446)
        {
          v452 = 3;
        }

        else
        {
          v452 = 2;
        }

        if (v200 >= v446)
        {
          v446 = v448;
        }

        if (v451)
        {
          v453 = v449;
        }

        else
        {
          v453 = v200;
        }

        if (!v451)
        {
          LOWORD(v450) = v447;
        }

        *(v444 + 2) = v450;
        if (!HIBYTE(v446))
        {
          if (v9 >= v12)
          {
            v454 = 0;
          }

          else
          {
            v455 = *v9++;
            v454 = v455;
          }

          v446 <<= 8;
          v453 = v454 | (v453 << 8);
        }

        v456 = *(v444 + 2 * v452);
        v457 = (v446 >> 11) * v456;
        v458 = v456 + ((2048 - v456) >> 5);
        v459 = v446 - v457;
        v460 = v456 - (v456 >> 5);
        v461 = v453 >= v457;
        if (v453 >= v457)
        {
          v462 = (2 * v452) | 1u;
        }

        else
        {
          v462 = (2 * v452);
        }

        if (v453 >= v457)
        {
          v463 = v459;
        }

        else
        {
          v463 = v457;
        }

        if (v453 >= v457)
        {
          v453 -= v457;
        }

        if (!v461)
        {
          LOWORD(v460) = v458;
        }

        *(v444 + 2 * v452) = v460;
        v464 = *(v444 + 2 * v462);
        if (!HIBYTE(v463))
        {
          if (v9 >= v12)
          {
            v465 = 0;
          }

          else
          {
            v466 = *v9++;
            v465 = v466;
          }

          v463 <<= 8;
          v453 = v465 | (v453 << 8);
        }

        v467 = (v463 >> 11) * v464;
        v468 = 2 * v462;
        v469 = v464 + ((2048 - v464) >> 5);
        v470 = v463 - v467;
        v471 = v464 - (v464 >> 5);
        if (v453 < v467)
        {
          v18 = v467;
        }

        else
        {
          v468 = (2 * v462) | 1;
          v18 = v470;
        }

        if (v453 >= v467)
        {
          v11 = v453 - v467;
        }

        else
        {
          v11 = v453;
        }

        if (v453 >= v467)
        {
          v472 = v471;
        }

        else
        {
          v472 = v469;
        }

        *(v444 + 2 * v462) = v472;
        v243 = (v468 ^ 8) + 2;
      }

      v8 = byte_171E10[v8 + 36];
    }

    else
    {
      v54[v8] = v159 + ((2048 - v159) >> 5);
      if (!HIBYTE(v160))
      {
        if (v9 >= v12)
        {
          v161 = 0;
        }

        else
        {
          v162 = *v9++;
          v161 = v162;
        }

        v160 <<= 8;
        v26 = v161 | (v26 << 8);
      }

      v163 = v7[432];
      v164 = (v160 >> 11) * v163;
      v165 = v26 - v164;
      if (v26 >= v164)
      {
        v207 = v160 - v164;
        v7[432] -= v7[432] >> 5;
        if (!((v160 - v164) >> 24))
        {
          if (v9 >= v12)
          {
            v208 = 0;
          }

          else
          {
            v209 = *v9++;
            v208 = v209;
          }

          v207 <<= 8;
          v165 = v208 | (v165 << 8);
        }

        v210 = v7[433];
        v211 = (v207 >> 11) * v210;
        v212 = v165 - v211;
        if (v165 >= v211)
        {
          v244 = v207 - v211;
          v7[433] -= v7[433] >> 5;
          if (!((v207 - v211) >> 24))
          {
            if (v9 >= v12)
            {
              v245 = 0;
            }

            else
            {
              v246 = *v9++;
              v245 = v246;
            }

            v244 <<= 8;
            v212 = v245 | (v212 << 8);
          }

          v247 = v7[691];
          v248 = (v244 >> 11) * v247;
          v249 = v247 + ((2048 - v247) >> 5);
          v250 = v244 - v248;
          v251 = v247 - (v247 >> 5);
          v252 = v212 >= v248;
          if (v212 >= v248)
          {
            v253 = 3;
          }

          else
          {
            v253 = 2;
          }

          if (v212 >= v248)
          {
            v254 = v212 - v248;
          }

          else
          {
            v250 = v248;
            v254 = v212;
          }

          if (!v252)
          {
            LOWORD(v251) = v249;
          }

          v7[691] = v251;
          if (!HIBYTE(v250))
          {
            if (v9 >= v12)
            {
              v255 = 0;
            }

            else
            {
              v256 = *v9++;
              v255 = v256;
            }

            v250 <<= 8;
            v254 = v255 | (v254 << 8);
          }

          v257 = v597[v253];
          v258 = (v250 >> 11) * v257;
          v259 = v257 + ((2048 - v257) >> 5);
          LODWORD(v260) = (2 * v253) | 1;
          v261 = v250 - v258;
          v262 = v254 - v258;
          v263 = v257 - (v257 >> 5);
          v264 = v254 >= v258;
          if (v254 >= v258)
          {
            v260 = v260;
          }

          else
          {
            v260 = (2 * v253);
          }

          if (v254 >= v258)
          {
            v258 = v261;
          }

          if (v264)
          {
            v254 = v262;
          }

          if (!v264)
          {
            LOWORD(v263) = v259;
          }

          v597[v253] = v263;
          v265 = v597[v260];
          if (!HIBYTE(v258))
          {
            if (v9 >= v12)
            {
              v266 = 0;
            }

            else
            {
              v267 = *v9++;
              v266 = v267;
            }

            v258 <<= 8;
            v254 = v266 | (v254 << 8);
          }

          v268 = (v258 >> 11) * v265;
          LODWORD(v269) = 2 * v260;
          v270 = v265 + ((2048 - v265) >> 5);
          v271 = v258 - v268;
          v272 = v265 - (v265 >> 5);
          if (v254 >= v268)
          {
            v269 = (2 * v260) | 1u;
          }

          else
          {
            v269 = v269;
          }

          if (v254 >= v268)
          {
            v273 = v271;
          }

          else
          {
            v273 = v268;
          }

          if (v254 >= v268)
          {
            v274 = v254 - v268;
          }

          else
          {
            v274 = v254;
          }

          if (v254 >= v268)
          {
            v275 = v272;
          }

          else
          {
            v275 = v270;
          }

          v597[v260] = v275;
          v276 = v597[v269];
          if (!HIBYTE(v273))
          {
            if (v9 >= v12)
            {
              v277 = 0;
            }

            else
            {
              v278 = *v9++;
              v277 = v278;
            }

            v273 <<= 8;
            v274 = v277 | (v274 << 8);
          }

          v279 = (v273 >> 11) * v276;
          v280 = 2 * v269;
          v281 = v274 - v279;
          if (v274 >= v279)
          {
            v280 |= 1u;
            v279 = v273 - v279;
            v274 = v281;
            v282 = v276 - (v276 >> 5);
          }

          else
          {
            v282 = v276 + ((2048 - v276) >> 5);
          }

          v597[v269] = v282;
          v289 = v280 ^ 0x10u;
          v290 = &v7[16 * v289 + 706];
          v291 = *(v290 + 2);
          if (!HIBYTE(v279))
          {
            if (v9 >= v12)
            {
              v292 = 0;
            }

            else
            {
              v293 = *v9++;
              v292 = v293;
            }

            v279 <<= 8;
            v274 = v292 | (v274 << 8);
          }

          v294 = (v279 >> 11) * v291;
          v295 = v291 + ((2048 - v291) >> 5);
          v296 = v279 - v294;
          v297 = v291 - (v291 >> 5);
          if (v274 >= v294)
          {
            v298 = 3;
          }

          else
          {
            v298 = 2;
          }

          if (v274 >= v294)
          {
            v299 = v274 - v294;
          }

          else
          {
            v296 = v294;
            v299 = v274;
          }

          if (v274 >= v294)
          {
            v300 = v297;
          }

          else
          {
            v300 = v295;
          }

          *(v290 + 2) = v300;
          v301 = *(v290 + 2 * v298);
          if (!HIBYTE(v296))
          {
            if (v9 >= v12)
            {
              v302 = 0;
            }

            else
            {
              v303 = *v9++;
              v302 = v303;
            }

            v296 <<= 8;
            v299 = v302 | (v299 << 8);
          }

          v304 = (v296 >> 11) * v301;
          v305 = v301 + ((2048 - v301) >> 5);
          v306 = v296 - v304;
          v307 = v301 - (v301 >> 5);
          v308 = v299 >= v304;
          if (v299 >= v304)
          {
            v309 = (2 * v298) | 1u;
          }

          else
          {
            v309 = (2 * v298);
          }

          if (v299 >= v304)
          {
            v299 -= v304;
          }

          else
          {
            v306 = v304;
          }

          if (v308)
          {
            v310 = v307;
          }

          else
          {
            v310 = v305;
          }

          *(v290 + 2 * v298) = v310;
          v311 = *(v290 + 2 * v309);
          if (!HIBYTE(v306))
          {
            if (v9 >= v12)
            {
              v312 = 0;
            }

            else
            {
              v313 = *v9++;
              v312 = v313;
            }

            v306 <<= 8;
            v299 = v312 | (v299 << 8);
          }

          v314 = (v306 >> 11) * v311;
          v315 = v311 + ((2048 - v311) >> 5);
          v316 = v306 - v314;
          v187 = v299 - v314;
          v317 = v311 - (v311 >> 5);
          if (v299 >= v314)
          {
            v318 = (2 * v309) | 1u;
          }

          else
          {
            v318 = (2 * v309);
          }

          if (v299 >= v314)
          {
            v319 = v316;
          }

          else
          {
            v319 = v314;
          }

          if (v299 >= v314)
          {
            v320 = v317;
          }

          else
          {
            v187 = v299;
            v320 = v315;
          }

          *(v290 + 2 * v309) = v320;
          v321 = *(v290 + 2 * v318);
          if (!HIBYTE(v319))
          {
            if (v9 >= v12)
            {
              v322 = 0;
            }

            else
            {
              v323 = *v9++;
              v322 = v323;
            }

            v319 <<= 8;
            v187 = v322 | (v187 << 8);
          }

          v191 = (v319 >> 11) * v321;
          v324 = 2 * v318;
          v325 = v187 - v191;
          if (v187 >= v191)
          {
            v324 |= 1u;
            v191 = v319 - v191;
            v187 = v325;
            v326 = v321 - (v321 >> 5);
          }

          else
          {
            v326 = v321 + ((2048 - v321) >> 5);
          }

          *(v290 + 2 * v318) = v326;
          v243 = (v324 ^ 0x10) + 16 * v289 + 18;
        }

        else
        {
          v7[433] = v210 + ((2048 - v210) >> 5);
          if (!HIBYTE(v211))
          {
            if (v9 >= v12)
            {
              v213 = 0;
            }

            else
            {
              v214 = *v9++;
              v213 = v214;
            }

            v211 <<= 8;
            v165 = v213 | (v165 << 8);
          }

          v215 = &v7[8 * v22 + 562];
          v216 = *(v215 + 2);
          v217 = (v211 >> 11) * v216;
          v218 = v216 + ((2048 - v216) >> 5);
          v219 = v211 - v217;
          v220 = v216 - (v216 >> 5);
          if (v165 >= v217)
          {
            v221 = 3;
          }

          else
          {
            v221 = 2;
          }

          if (v165 >= v217)
          {
            v222 = v219;
          }

          else
          {
            v222 = v217;
          }

          if (v165 >= v217)
          {
            v223 = v165 - v217;
          }

          else
          {
            v223 = v165;
          }

          if (v165 < v217)
          {
            LOWORD(v220) = v218;
          }

          *(v215 + 2) = v220;
          if (!HIBYTE(v222))
          {
            if (v9 >= v12)
            {
              v224 = 0;
            }

            else
            {
              v225 = *v9++;
              v224 = v225;
            }

            v222 <<= 8;
            v223 = v224 | (v223 << 8);
          }

          v226 = *(v215 + 2 * v221);
          v227 = (v222 >> 11) * v226;
          LODWORD(v228) = 2 * v221;
          v229 = v226 + ((2048 - v226) >> 5);
          v230 = v222 - v227;
          v187 = v223 - v227;
          v231 = v226 - (v226 >> 5);
          if (v223 >= v227)
          {
            v228 = (2 * v221) | 1u;
          }

          else
          {
            v228 = v228;
          }

          if (v223 >= v227)
          {
            v232 = v230;
          }

          else
          {
            v232 = v227;
          }

          if (v223 < v227)
          {
            v187 = v223;
            LOWORD(v231) = v229;
          }

          *(v215 + 2 * v221) = v231;
          v233 = *(v215 + 2 * v228);
          if (!HIBYTE(v232))
          {
            if (v9 >= v12)
            {
              v234 = 0;
            }

            else
            {
              v235 = *v9++;
              v234 = v235;
            }

            v232 <<= 8;
            v187 = v234 | (v187 << 8);
          }

          v191 = (v232 >> 11) * v233;
          v236 = 2 * v228;
          v237 = v187 - v191;
          if (v187 >= v191)
          {
            v236 |= 1u;
            v191 = v232 - v191;
            v187 = v237;
            v238 = v233 - (v233 >> 5);
          }

          else
          {
            v238 = v233 + ((2048 - v233) >> 5);
          }

          *(v215 + 2 * v228) = v238;
          v243 = (v236 ^ 8) + 10;
        }
      }

      else
      {
        v7[432] = v163 + ((2048 - v163) >> 5);
        if (!HIBYTE(v164))
        {
          if (v9 >= v12)
          {
            v166 = 0;
          }

          else
          {
            v167 = *v9++;
            v166 = v167;
          }

          v164 <<= 8;
          v26 = v166 | (v26 << 8);
        }

        v168 = &v7[8 * v22 + 434];
        v169 = *(v168 + 2);
        v170 = (v164 >> 11) * v169;
        v171 = v169 + ((2048 - v169) >> 5);
        v172 = v164 - v170;
        v173 = v26 - v170;
        v174 = v169 - (v169 >> 5);
        v175 = v26 >= v170;
        if (v26 >= v170)
        {
          v176 = 3;
        }

        else
        {
          v176 = 2;
        }

        if (v26 >= v170)
        {
          v170 = v172;
        }

        if (v175)
        {
          v177 = v173;
        }

        else
        {
          v177 = v26;
        }

        if (!v175)
        {
          LOWORD(v174) = v171;
        }

        *(v168 + 2) = v174;
        if (!HIBYTE(v170))
        {
          if (v9 >= v12)
          {
            v178 = 0;
          }

          else
          {
            v179 = *v9++;
            v178 = v179;
          }

          v170 <<= 8;
          v177 = v178 | (v177 << 8);
        }

        v180 = *(v168 + 2 * v176);
        v181 = (v170 >> 11) * v180;
        v182 = v180 + ((2048 - v180) >> 5);
        v183 = v170 - v181;
        v184 = v180 - (v180 >> 5);
        if (v177 >= v181)
        {
          v185 = (2 * v176) | 1u;
        }

        else
        {
          v185 = (2 * v176);
        }

        if (v177 >= v181)
        {
          v186 = v183;
        }

        else
        {
          v186 = v181;
        }

        if (v177 >= v181)
        {
          v187 = v177 - v181;
        }

        else
        {
          v187 = v177;
        }

        if (v177 < v181)
        {
          LOWORD(v184) = v182;
        }

        *(v168 + 2 * v176) = v184;
        v188 = *(v168 + 2 * v185);
        if (!HIBYTE(v186))
        {
          if (v9 >= v12)
          {
            v189 = 0;
          }

          else
          {
            v190 = *v9++;
            v189 = v190;
          }

          v186 <<= 8;
          v187 = v189 | (v187 << 8);
        }

        v191 = (v186 >> 11) * v188;
        v192 = 2 * v185;
        v193 = v187 - v191;
        if (v187 >= v191)
        {
          v192 |= 1u;
          v191 = v186 - v191;
          v187 = v193;
          v194 = v188 - (v188 >> 5);
        }

        else
        {
          v194 = v188 + ((2048 - v188) >> 5);
        }

        *(v168 + 2 * v185) = v194;
        v243 = (v192 ^ 8) + 2;
      }

      v327 = v243 - 2;
      if (v243 >= 6)
      {
        v327 = 3;
      }

      v328 = &v7[80 * v327 + 1492];
      v329 = *(v328 + 130);
      if (!HIBYTE(v191))
      {
        if (v9 >= v12)
        {
          v330 = 0;
        }

        else
        {
          v331 = *v9++;
          v330 = v331;
        }

        v191 <<= 8;
        v187 = v330 | (v187 << 8);
      }

      v332 = v328 + 128;
      v333 = (v191 >> 11) * v329;
      v334 = v329 + ((2048 - v329) >> 5);
      v335 = v329 - (v329 >> 5);
      if (v187 >= v333)
      {
        v336 = 3;
      }

      else
      {
        v336 = 2;
      }

      if (v187 >= v333)
      {
        v337 = v191 - v333;
      }

      else
      {
        v337 = v333;
      }

      if (v187 >= v333)
      {
        v338 = v187 - v333;
      }

      else
      {
        v338 = v187;
      }

      if (v187 >= v333)
      {
        v339 = v335;
      }

      else
      {
        v339 = v334;
      }

      *(v328 + 130) = v339;
      v340 = *(v332 + 2 * v336);
      if (!HIBYTE(v337))
      {
        if (v9 >= v12)
        {
          v341 = 0;
        }

        else
        {
          v342 = *v9++;
          v341 = v342;
        }

        v337 <<= 8;
        v338 = v341 | (v338 << 8);
      }

      v343 = (v337 >> 11) * v340;
      v344 = v340 + ((2048 - v340) >> 5);
      v345 = v337 - v343;
      v346 = v340 - (v340 >> 5);
      v347 = v338 >= v343;
      if (v338 >= v343)
      {
        v348 = (2 * v336) | 1u;
      }

      else
      {
        v348 = (2 * v336);
      }

      if (v338 >= v343)
      {
        v349 = v345;
      }

      else
      {
        v349 = v343;
      }

      if (v338 >= v343)
      {
        v338 -= v343;
      }

      if (v347)
      {
        v350 = v346;
      }

      else
      {
        v350 = v344;
      }

      *(v332 + 2 * v336) = v350;
      v351 = *(v332 + 2 * v348);
      if (!HIBYTE(v349))
      {
        if (v9 >= v12)
        {
          v352 = 0;
        }

        else
        {
          v353 = *v9++;
          v352 = v353;
        }

        v349 <<= 8;
        v338 = v352 | (v338 << 8);
      }

      v354 = (v349 >> 11) * v351;
      v355 = v351 + ((2048 - v351) >> 5);
      v356 = v349 - v354;
      v357 = v351 - (v351 >> 5);
      if (v338 >= v354)
      {
        v358 = (2 * v348) | 1u;
      }

      else
      {
        v358 = (2 * v348);
      }

      if (v338 >= v354)
      {
        v359 = v356;
      }

      else
      {
        v359 = v354;
      }

      if (v338 >= v354)
      {
        v360 = v338 - v354;
      }

      else
      {
        v360 = v338;
      }

      if (v338 >= v354)
      {
        v361 = v357;
      }

      else
      {
        v361 = v355;
      }

      *(v332 + 2 * v348) = v361;
      v362 = *(v332 + 2 * v358);
      if (!HIBYTE(v359))
      {
        if (v9 >= v12)
        {
          v363 = 0;
        }

        else
        {
          v364 = *v9++;
          v363 = v364;
        }

        v359 <<= 8;
        v360 = v363 | (v360 << 8);
      }

      v365 = (v359 >> 11) * v362;
      v366 = 2 * v358;
      v367 = v362 + ((2048 - v362) >> 5);
      v368 = v359 - v365;
      v369 = v360 - v365;
      v370 = v362 - (v362 >> 5);
      v371 = v360 >= v365;
      if (v360 < v365)
      {
        v368 = v365;
      }

      else
      {
        v366 = (2 * v358) | 1;
      }

      if (v360 >= v365)
      {
        v372 = v370;
      }

      else
      {
        v372 = v367;
      }

      *(v332 + 2 * v358) = v372;
      if (v371)
      {
        v373 = v369;
      }

      else
      {
        v373 = v360;
      }

      v374 = (4 * v366) ^ 0x40;
      v375 = v328 + 2 * v374;
      v376 = *(v375 + 2);
      if (!HIBYTE(v368))
      {
        if (v9 >= v12)
        {
          v377 = 0;
        }

        else
        {
          v378 = *v9++;
          v377 = v378;
        }

        v368 <<= 8;
        v373 = v377 | (v373 << 8);
      }

      v379 = (v368 >> 11) * v376;
      v380 = v376 + ((2048 - v376) >> 5);
      v381 = v368 - v379;
      v382 = v376 - (v376 >> 5);
      v383 = v373 >= v379;
      if (v373 >= v379)
      {
        v384 = 3;
      }

      else
      {
        v384 = 2;
      }

      if (v373 >= v379)
      {
        v385 = v381;
      }

      else
      {
        v385 = v379;
      }

      if (v373 >= v379)
      {
        v373 -= v379;
      }

      if (v383)
      {
        v386 = v382;
      }

      else
      {
        v386 = v380;
      }

      *(v375 + 2) = v386;
      v387 = *(v375 + 2 * v384);
      if (!HIBYTE(v385))
      {
        if (v9 >= v12)
        {
          v388 = 0;
        }

        else
        {
          v389 = *v9++;
          v388 = v389;
        }

        v385 <<= 8;
        v373 = v388 | (v373 << 8);
      }

      v390 = (v385 >> 11) * v387;
      v391 = v387 + ((2048 - v387) >> 5);
      v392 = v385 - v390;
      v393 = v387 - (v387 >> 5);
      if (v373 >= v390)
      {
        v394 = (2 * v384) | 1;
      }

      else
      {
        v394 = 2 * v384;
      }

      if (v373 >= v390)
      {
        v18 = v392;
      }

      else
      {
        v18 = v390;
      }

      if (v373 >= v390)
      {
        v11 = v373 - v390;
      }

      else
      {
        v11 = v373;
      }

      if (v373 >= v390)
      {
        v395 = v393;
      }

      else
      {
        v395 = v391;
      }

      *(v375 + 2 * v384) = v395;
      v396 = (v394 ^ 4) + v374;
      if (v366 != 16)
      {
        v397 = v396 >> 1;
        v398 = (v396 >> 1) - 1;
        v399 = (v394 & 1 | 2) << ((v396 >> 1) - 1);
        if (v396 > 0xD)
        {
          v414 = v397 - 5;
          if (v397 != 5)
          {
            v415 = 0;
            do
            {
              if (!HIBYTE(v18))
              {
                if (v9 >= v12)
                {
                  v416 = 0;
                }

                else
                {
                  v417 = *v9++;
                  v416 = v417;
                }

                v18 <<= 8;
                v11 = v416 | (v11 << 8);
              }

              v418 = v11 >= v18 >> 1;
              v18 >>= 1;
              v419 = v418;
              if (v418)
              {
                v420 = v18;
              }

              else
              {
                v420 = 0;
              }

              v11 -= v420;
              v415 = v419 | (2 * v415);
              --v414;
            }

            while (v414);
            v414 = 16 * v415;
          }

          v421 = 0;
          v422 = 0;
          v423 = 1;
          do
          {
            if (!HIBYTE(v18))
            {
              if (v9 >= v12)
              {
                v424 = 0;
              }

              else
              {
                v425 = *v9++;
                v424 = v425;
              }

              v18 <<= 8;
              v11 = v424 | (v11 << 8);
            }

            v426 = v423;
            v427 = v17[v423];
            v428 = v427 + ((2048 - v427) >> 5);
            v429 = (v18 >> 11) * v427;
            v423 *= 2;
            v430 = v427 - (v427 >> 5);
            v431 = v11 >= v429;
            if (v11 < v429)
            {
              v18 = v429;
            }

            else
            {
              v423 |= 1u;
              v18 -= v429;
            }

            if (v11 >= v429)
            {
              v11 -= v429;
            }

            if (v431)
            {
              v432 = 1;
            }

            else
            {
              LOWORD(v430) = v428;
              v432 = 0;
            }

            v17[v426] = v430;
            v422 += v432 << v421++;
          }

          while (v421 != 4);
          v401 = v422 + v414;
        }

        else if (v396 < 4)
        {
          v401 = 0;
        }

        else
        {
          v400 = 0;
          v401 = 0;
          v402 = &v7[v399 + 1812];
          if (v398 <= 1)
          {
            v403 = 1;
          }

          else
          {
            v403 = v398;
          }

          v404 = 1;
          do
          {
            if (!HIBYTE(v18))
            {
              if (v9 >= v12)
              {
                v405 = 0;
              }

              else
              {
                v406 = *v9++;
                v405 = v406;
              }

              v18 <<= 8;
              v11 = v405 | (v11 << 8);
            }

            v407 = v404;
            v408 = *(v402 + 2 * v404);
            v409 = v408 + ((2048 - v408) >> 5);
            v410 = (v18 >> 11) * v408;
            v404 *= 2;
            v411 = v408 - (v408 >> 5);
            v412 = v11 >= v410;
            if (v11 < v410)
            {
              v18 = v410;
            }

            else
            {
              v404 |= 1u;
              v18 -= v410;
            }

            if (v11 >= v410)
            {
              v11 -= v410;
            }

            if (v412)
            {
              v413 = 1;
            }

            else
            {
              LOWORD(v411) = v409;
              v413 = 0;
            }

            *(v402 + 2 * v407) = v411;
            v401 += v413 << v400++;
          }

          while (v403 != v400);
        }

        v396 = v401 + v399;
      }

      if (&a3[-a2] <= v396)
      {
        return 0;
      }

      v8 = byte_171E10[v8 + 24];
      a1[3] = a1[2];
      *(a1 + 1) = *a1;
      LODWORD(v203) = v396 + 1;
      *a1 = v396 + 1;
    }

    v206 = &a3[v243];
    if ((v206 + 47) > a5)
    {
      if (v206 > a4)
      {
        return 0;
      }

      do
      {
        *a3 = a3[-v203];
        ++a3;
      }

      while (a3 < v206);
    }

    else if (v203 > 0xF)
    {
      v590 = &a3[-v203];
      if (v203 >= v243 + 47)
      {
        v592 = v590[1];
        *a3 = *v590;
        *(a3 + 1) = v592;
        *(a3 + 2) = v590[2];
        if (v243 >= 0x31)
        {
          for (i = 48; i < v243; i += 16)
          {
            *&a3[i] = v590[i / 0x10];
          }
        }
      }

      else
      {
        *a3 = *v590;
        *(a3 + 1) = v590[1];
        *(a3 + 2) = v590[2];
        if (v243 >= 0x31)
        {
          for (j = 48; j < v243; j += 16)
          {
            *&a3[j] = v590[j / 0x10];
          }
        }
      }
    }

    else
    {
      v584 = &a3[-v203];
      v585 = vqtbl1q_s8(*v584, xmmword_171E50[(v203 - 1)]);
      v586 = byte_171F40[(v203 - 1)];
      v587 = &v584->i8[v586];
      *a3 = v585;
      *(a3 + 1) = *v587;
      *(a3 + 2) = *(v587 + 1);
      if (v243 >= 0x31)
      {
        v588 = v586 - v203 + 32;
        for (k = 48; k < v243; k += 16)
        {
          *&a3[k] = *&a3[v588];
          v588 += 16;
        }
      }
    }

LABEL_779:
    a3 = v206;
    if (v206 >= a4)
    {
      goto LABEL_837;
    }
  }

  *v23 = v24 + ((2048 - v24) >> 5);
  if (a3 <= a2)
  {
    v27 = 0;
  }

  else
  {
    v27 = *(a3 - 1);
  }

  v28 = &v600[816 * ((v27 >> v599) | ((v21 & v601) << v602))];
  if (!byte_171E10[v8])
  {
    v29 = 0;
    v30 = a3[-*a1];
    v31 = v28 + 768;
    v32 = v30 & 0xF0;
    v33 = 1;
    do
    {
      if (v29 > 3)
      {
        break;
      }

      v34 = 2 * v33;
      v35 = ((2 * v33) | (v32 >> 7) & 1) + 16;
      if (!HIBYTE(v25))
      {
        if (v9 >= v12)
        {
          v36 = 0;
        }

        else
        {
          v37 = *v9++;
          v36 = v37;
        }

        v25 <<= 8;
        v11 = v36 | (v11 << 8);
      }

      v38 = v31[v35];
      v39 = (v32 >> 7) & 1;
      v40 = (v25 >> 11) * v38;
      v41 = v38 + ((2048 - v38) >> 5);
      v25 -= v40;
      v42 = v38 - (v38 >> 5);
      v43 = v11 >= v40;
      v33 = v11 >= v40 ? v34 | 1 : v34;
      if (v11 >= v40)
      {
        v11 -= v40;
      }

      else
      {
        v25 = v40;
      }

      if (v43)
      {
        v44 = 1;
      }

      else
      {
        LOWORD(v42) = v41;
        v44 = 0;
      }

      v31[v35] = v42;
      if (v44 == v39)
      {
        ++v29;
      }

      else
      {
        if (v29 == 3)
        {
          break;
        }

        do
        {
          if (!HIBYTE(v25))
          {
            if (v9 >= v12)
            {
              v45 = 0;
            }

            else
            {
              v46 = *v9++;
              v45 = v46;
            }

            v25 <<= 8;
            v11 = v45 | (v11 << 8);
          }

          v47 = v33;
          v48 = v31[v33];
          v49 = (v25 >> 11) * v48;
          v33 *= 2;
          v50 = v48 + ((2048 - v48) >> 5);
          v25 -= v49;
          v51 = v48 - (v48 >> 5);
          v52 = v11 >= v49;
          if (v11 < v49)
          {
            v25 = v49;
          }

          else
          {
            v33 |= 1u;
          }

          if (v11 >= v49)
          {
            v11 -= v49;
          }

          if (!v52)
          {
            LOWORD(v51) = v50;
          }

          v31[v47] = v51;
          ++v29;
        }

        while (v29 < 3);
        v29 = 4;
      }

      v32 *= 2;
    }

    while (v44 == v39);
    v55 = 16 * (v33 ^ 0x10);
    if ((v30 ^ v55) <= 0xF)
    {
      v56 = 0;
      v57 = &v28[48 * (v33 ^ 0x10)];
      v58 = 16 * v30;
      v59 = 1;
      do
      {
        if (v56 > 3)
        {
          break;
        }

        v60 = 2 * v59;
        v61 = ((2 * v59) | (v58 >> 7) & 1) + 16;
        if (!HIBYTE(v25))
        {
          if (v9 >= v12)
          {
            v62 = 0;
          }

          else
          {
            v63 = *v9++;
            v62 = v63;
          }

          v25 <<= 8;
          v11 = v62 | (v11 << 8);
        }

        v64 = v57[v61];
        v65 = (v58 >> 7) & 1;
        v66 = (v25 >> 11) * v64;
        v67 = v64 + ((2048 - v64) >> 5);
        v59 = v60 | 1;
        v25 -= v66;
        v68 = v64 - (v64 >> 5);
        v69 = v11 >= v66;
        if (v11 >= v66)
        {
          v11 -= v66;
        }

        else
        {
          v59 = v60;
          v25 = v66;
        }

        if (v69)
        {
          v70 = 1;
        }

        else
        {
          LOWORD(v68) = v67;
          v70 = 0;
        }

        v57[v61] = v68;
        if (v70 == v65)
        {
          ++v56;
        }

        else
        {
          if (v56 == 3)
          {
            break;
          }

          do
          {
            if (!HIBYTE(v25))
            {
              if (v9 >= v12)
              {
                v71 = 0;
              }

              else
              {
                v72 = *v9++;
                v71 = v72;
              }

              v25 <<= 8;
              v11 = v71 | (v11 << 8);
            }

            v73 = v59;
            v74 = v57[v59];
            v75 = (v25 >> 11) * v74;
            v59 *= 2;
            v76 = v74 + ((2048 - v74) >> 5);
            v25 -= v75;
            v77 = v74 - (v74 >> 5);
            v78 = v11 >= v75;
            if (v11 < v75)
            {
              v25 = v75;
            }

            else
            {
              v59 |= 1u;
            }

            if (v11 >= v75)
            {
              v11 -= v75;
            }

            if (!v78)
            {
              LOWORD(v77) = v76;
            }

            v57[v73] = v77;
            ++v56;
          }

          while (v56 < 3);
          v56 = 4;
        }

        v58 *= 2;
      }

      while (v70 == v65);
      v79 = v59 ^ 0x10;
      goto LABEL_152;
    }

    goto LABEL_100;
  }

  while (1)
  {
    v120 = v28 + 768;
    v121 = v28[769];
    if (!HIBYTE(v25))
    {
      if (v9 >= v12)
      {
        v122 = 0;
      }

      else
      {
        v123 = *v9++;
        v122 = v123;
      }

      v25 <<= 8;
      v11 = v122 | (v11 << 8);
    }

    v124 = (v25 >> 11) * v121;
    v125 = v121 + ((2048 - v121) >> 5);
    v126 = v121 - (v121 >> 5);
    if (v11 >= v124)
    {
      v127 = 3;
    }

    else
    {
      v127 = 2;
    }

    if (v11 >= v124)
    {
      v128 = v25 - v124;
    }

    else
    {
      v128 = v124;
    }

    if (v11 >= v124)
    {
      v129 = v11 - v124;
    }

    else
    {
      v129 = v11;
    }

    if (v11 >= v124)
    {
      v130 = v126;
    }

    else
    {
      v130 = v125;
    }

    v28[769] = v130;
    v131 = v120[v127];
    if (!HIBYTE(v128))
    {
      if (v9 >= v12)
      {
        v132 = 0;
      }

      else
      {
        v133 = *v9++;
        v132 = v133;
      }

      v128 <<= 8;
      v129 = v132 | (v129 << 8);
    }

    v134 = (v128 >> 11) * v131;
    v135 = v131 + ((2048 - v131) >> 5);
    v136 = v128 - v134;
    v137 = v131 - (v131 >> 5);
    v138 = v129 >= v134;
    if (v129 >= v134)
    {
      v139 = (2 * v127) | 1u;
    }

    else
    {
      v139 = (2 * v127);
    }

    if (v129 >= v134)
    {
      v140 = v136;
    }

    else
    {
      v140 = v134;
    }

    if (v129 >= v134)
    {
      v129 -= v134;
    }

    if (v138)
    {
      v141 = v137;
    }

    else
    {
      v141 = v135;
    }

    v120[v127] = v141;
    v142 = v120[v139];
    if (!HIBYTE(v140))
    {
      if (v9 >= v12)
      {
        v143 = 0;
      }

      else
      {
        v144 = *v9++;
        v143 = v144;
      }

      v140 <<= 8;
      v129 = v143 | (v129 << 8);
    }

    v145 = (v140 >> 11) * v142;
    v146 = v142 + ((2048 - v142) >> 5);
    v147 = v140 - v145;
    v148 = v142 - (v142 >> 5);
    if (v129 >= v145)
    {
      v149 = (2 * v139) | 1u;
    }

    else
    {
      v149 = (2 * v139);
    }

    if (v129 >= v145)
    {
      v11 = v129 - v145;
    }

    else
    {
      v147 = v145;
      v11 = v129;
    }

    if (v129 >= v145)
    {
      v150 = v148;
    }

    else
    {
      v150 = v146;
    }

    v120[v139] = v150;
    v151 = v120[v149];
    if (!HIBYTE(v147))
    {
      if (v9 >= v12)
      {
        v152 = 0;
      }

      else
      {
        v153 = *v9++;
        v152 = v153;
      }

      v147 <<= 8;
      v11 = v152 | (v11 << 8);
    }

    v25 = (v147 >> 11) * v151;
    v154 = 2 * v149;
    v155 = v11 - v25;
    if (v11 >= v25)
    {
      v154 |= 1u;
      v25 = v147 - v25;
      v11 = v155;
      v156 = v151 - (v151 >> 5);
    }

    else
    {
      v156 = v151 + ((2048 - v151) >> 5);
    }

    v120[v149] = v156;
    v55 = (16 * v154) ^ 0x100;
LABEL_100:
    v80 = &v28[3 * v55];
    v81 = v80[1];
    if (!HIBYTE(v25))
    {
      if (v9 >= v12)
      {
        v82 = 0;
      }

      else
      {
        v83 = *v9++;
        v82 = v83;
      }

      v25 <<= 8;
      v11 = v82 | (v11 << 8);
    }

    v84 = (v25 >> 11) * v81;
    v85 = v81 + ((2048 - v81) >> 5);
    v86 = v81 - (v81 >> 5);
    if (v11 >= v84)
    {
      v87 = 3;
    }

    else
    {
      v87 = 2;
    }

    if (v11 >= v84)
    {
      v88 = v25 - v84;
    }

    else
    {
      v88 = v84;
    }

    if (v11 >= v84)
    {
      v89 = v11 - v84;
    }

    else
    {
      v89 = v11;
    }

    if (v11 >= v84)
    {
      v90 = v86;
    }

    else
    {
      v90 = v85;
    }

    v80[1] = v90;
    v91 = v80[v87];
    if (!HIBYTE(v88))
    {
      if (v9 >= v12)
      {
        v92 = 0;
      }

      else
      {
        v93 = *v9++;
        v92 = v93;
      }

      v88 <<= 8;
      v89 = v92 | (v89 << 8);
    }

    v94 = (v88 >> 11) * v91;
    v95 = v91 + ((2048 - v91) >> 5);
    v96 = v88 - v94;
    v97 = v91 - (v91 >> 5);
    v98 = v89 >= v94;
    if (v89 >= v94)
    {
      v99 = (2 * v87) | 1u;
    }

    else
    {
      v99 = (2 * v87);
    }

    if (v89 >= v94)
    {
      v100 = v96;
    }

    else
    {
      v100 = v94;
    }

    if (v89 >= v94)
    {
      v89 -= v94;
    }

    if (v98)
    {
      v101 = v97;
    }

    else
    {
      v101 = v95;
    }

    v80[v87] = v101;
    v102 = v80[v99];
    if (!HIBYTE(v100))
    {
      if (v9 >= v12)
      {
        v103 = 0;
      }

      else
      {
        v104 = *v9++;
        v103 = v104;
      }

      v100 <<= 8;
      v89 = v103 | (v89 << 8);
    }

    v105 = (v100 >> 11) * v102;
    v106 = v102 + ((2048 - v102) >> 5);
    v107 = v100 - v105;
    v108 = v102 - (v102 >> 5);
    if (v89 >= v105)
    {
      v109 = (2 * v99) | 1u;
    }

    else
    {
      v109 = (2 * v99);
    }

    if (v89 >= v105)
    {
      v11 = v89 - v105;
    }

    else
    {
      v107 = v105;
      v11 = v89;
    }

    if (v89 >= v105)
    {
      v110 = v108;
    }

    else
    {
      v110 = v106;
    }

    v80[v99] = v110;
    v111 = v80[v109];
    if (!HIBYTE(v107))
    {
      if (v9 >= v12)
      {
        v112 = 0;
      }

      else
      {
        v113 = *v9++;
        v112 = v113;
      }

      v107 <<= 8;
      v11 = v112 | (v11 << 8);
    }

    v25 = (v107 >> 11) * v111;
    v114 = 2 * v109;
    v115 = v11 - v25;
    if (v11 >= v25)
    {
      v114 |= 1u;
      v25 = v107 - v25;
      v11 = v115;
      v116 = v111 - (v111 >> 5);
    }

    else
    {
      v116 = v111 + ((2048 - v111) >> 5);
    }

    v80[v109] = v116;
    v79 = v114 ^ 0x10;
LABEL_152:
    v54 = v7 + 192;
    v8 = byte_171E10[v8 + 12];
    *a3++ = v79 + v55;
    if (a3 == a4)
    {
      break;
    }

    v22 = ++v21 & v604;
    v23 = &v7[16 * v8 + (v21 & v604)];
    v24 = *v23;
    if (!HIBYTE(v25))
    {
      if (v9 >= v12)
      {
        v117 = 0;
      }

      else
      {
        v118 = *v9++;
        v117 = v118;
      }

      v25 <<= 8;
      v11 = v117 | (v11 << 8);
    }

    v119 = (v25 >> 11) * v24;
    v26 = v11 - v119;
    if (v11 >= v119)
    {
      v53 = v25 - v119;
      goto LABEL_212;
    }

    *v23 = v24 + ((2048 - v24) >> 5);
    v28 = &v600[816 * (((v21 & v601) << v602) | ((v79 + v55) >> v599))];
    v25 = (v25 >> 11) * v24;
  }

  v206 = a4;
LABEL_837:
  v7 = 0;
  if (!v11 && v206 == a4)
  {
    *(a1 + 29) = v8;
    return (a4 - v594);
  }

  return v7;
}

uint64_t sub_DC3D8(BOOL *a1, unsigned int *a2)
{
  printf("libCyrusFDR: entered libCyrusFDR_is_multilynx_present%s", "\n");
  size = 4;
  v17 = 0;
  v4 = 0xFFFFFFFFLL;
  if (!a1 || !a2)
  {
    goto LABEL_23;
  }

  printf("libCyrusFDR: entered libCyrusFDR unit_has_missealed_ocelot%s", "\n");
  v18 = 0;
  v5 = MGCopyAnswer();
  if (!v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      _40[0] = 0;
      _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "failed to query UniqueChipID", _40, 2u);
    }

    goto LABEL_12;
  }

  v6 = v5;
  if (!CFNumberGetValue(v5, kCFNumberSInt64Type, &v18))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      _40[0] = 0;
      _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "failed to get UniqueChipID", _40, 2u);
    }

    CFRelease(v6);
LABEL_12:
    printf("libCyrusFDR: unit_has_missealed_ocelot returned %d%s", 0, "\n");
    goto LABEL_13;
  }

  CFRelease(v6);
  v7 = sub_D502C(v18);
  printf("libCyrusFDR: found ecid in missealed ocelots %d%s", v7, "\n");
  printf("libCyrusFDR: unit_has_missealed_ocelot returned %d%s", v7, "\n");
  if (v7)
  {
    return 0;
  }

LABEL_13:
  v8 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/product");
  if (!v8)
  {
    v4 = 4294967294;
LABEL_23:
    printf("libCyrusFDR: ERROR: [%s:%u:%s] cant determine multlilynx presence%s", "libCyrusFDR.c", 86, "libCyrusFDR_is_multilynx_present", "\n");
    return v4;
  }

  v9 = v8;
  if (IORegistryEntryGetProperty(v8, "lynx-count", &v17, &size))
  {
LABEL_18:
    *a1 = 0;
    goto LABEL_19;
  }

  if (size != 4)
  {
    v15 = size;
    sub_D4FA8();
    printf("libCyrusFDR: ERROR: [%s:%u:%s] unexpected length of lynx-count: %u%s", v12, v13, v14, v15, "\n");
    goto LABEL_18;
  }

  v10 = v17;
  *a1 = v17 > 1;
  *a2 = v10;
LABEL_19:
  IOObjectRelease(v9);
  return 0;
}

uint64_t sub_DC644()
{
  v0 = off_1AD528();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  printf("libCyrusFDR: entered libCyrusFDR_cert_collect%s", "\n");
  bzero(&v27, 0x800CuLL);
  outputStructCnt = 32780;
  bzero(inputStruct, 0x8010uLL);
  v10 = 4294967293;
  if (v8 && v6 && v4 && v2)
  {
    v11 = sub_DC9AC();
    if (!v11)
    {
      printf("libCyrusFDR: ERROR: [%s:%u:%s] cant talk to cyrus kext%s", "libCyrusFDR.c", 165, "libCyrusFDR_cert_collect", "\n");
      return 4294967294;
    }

    v12 = v11;
    v22 = 0;
    v21 = 0;
    if (sub_DC3D8(&v22, &v21))
    {
      sub_D4FA8();
      printf("libCyrusFDR: ERROR: [%s:%u:%s] libCyrusFDR_is_multilynx_present -> %x%s");
    }

    else
    {
      v13 = v21;
      printf("libCyrusFDR: entered lynx_index_to_slave_pos%s", "\n");
      if (!v9 || v13 <= v9)
      {
        sub_D4FA8();
        printf("libCyrusFDR: ERROR: [%s:%u:%s] invalid lynx num %d%s", v18, v19, v20, v9, "\n");
        v10 = 4294967293;
        goto LABEL_17;
      }

      LOBYTE(v27) = v9;
      if (IOConnectCallStructMethod(v12, 1u, &v27, 0x800CuLL, &v27, &outputStructCnt))
      {
        sub_D4FA8();
        printf("libCyrusFDR: ERROR: [%s:%u:%s] kAppleCyrusFDRCollection -> %x%s");
      }

      else
      {
        v10 = 0xFFFFFFFFLL;
        if (outputStructCnt < 0x800C || v27 > 0x8000)
        {
          goto LABEL_17;
        }

        inputStruct[0] = v9;
        v25 = v27;
        __memcpy_chk();
        v26[0] = v29[0];
        *(v26 + 3) = *(v29 + 3);
        if (IOConnectCallStructMethod(v12, 2u, inputStruct, 0x8010uLL, 0, 0))
        {
          sub_D4FA8();
          printf("libCyrusFDR: ERROR: [%s:%u:%s] kAppleCyrusFDRCollectionConfirm -> %x%s");
        }

        else
        {
          v14 = v27;
          *v6 = v27;
          v15 = malloc(v14);
          *v8 = v15;
          if (v15)
          {
            memcpy(v15, &v28, v14);
            *v2 = 7;
            v16 = malloc(7uLL);
            *v4 = v16;
            if (v16)
            {
              v10 = 0;
              *v16 = v29[0];
              *(v16 + 3) = *(v29 + 3);
LABEL_17:
              IOServiceClose(v12);
              return v10;
            }
          }

          printf("libCyrusFDR: ERROR: [%s:%u:%s] cant allocate mem%s");
        }
      }
    }

    v10 = 0xFFFFFFFFLL;
    goto LABEL_17;
  }

  return v10;
}

uint64_t sub_DC9AC()
{
  connect = 0;
  HIBYTE(v21) = 0;
  HIDWORD(v20) = 0;
  if (!sub_DC3D8(&v21 + 3, &v20 + 1) && HIBYTE(v21) == 1)
  {
    v1 = IORegistryEntryFromPath(kIOMainPortDefault, "IOService:/IOResources/AppleCyrus");
    if (v1 && !sub_D500C(v1, v2, v3, v4, v5, v6, v7, v8, v19, v20, v21, connect))
    {
      goto LABEL_7;
    }

    v9 = IOServiceMatching("AppleCyrus");
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v9);
    if (MatchingService)
    {
      sub_D500C(MatchingService, v11, v12, v13, v14, v15, v16, v17, v19, v20, v21, connect);
LABEL_7:
      IOObjectRelease(v0);
    }
  }

  return connect;
}

uint64_t sub_DCA88(io_connect_t a1, void *a2, void *a3)
{
  v6 = printf("libCyrusFDR: entered libCyrusFDR_get_public_key%s", "\n");
  memset(__src, 0, sizeof(__src));
  v14 = 4294967293;
  if (a2 && a3)
  {
    v15 = sub_D4FD4(v6, v7, v8, v9, v10, v11, v12, v13, v24, v27, v29, v31, v33, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
    if (v15)
    {
      v32 = v15;
      sub_D4FA8();
      printf("libCyrusFDR: ERROR: [%s:%u:%s] libCyrusFDR_is_multilynx_present -> %x%s", v25, v28, v30, v32, "\n");
      return 0xFFFFFFFFLL;
    }

    printf("libCyrusFDR: entered lynx_index_to_slave_pos%s", "\n");
    if (!a1 || v35 <= a1)
    {
      sub_D4FA8();
      printf("libCyrusFDR: ERROR: [%s:%u:%s] invalid lynx num %d%s", v26, v28, v30, a1, "\n");
      return 4294967293;
    }

    if (!sub_DC9AC())
    {
      printf("libCyrusFDR: ERROR: [%s:%u:%s] cant talk to cyrus kext%s", "libCyrusFDR.c", 292, "libCyrusFDR_get_public_key", "\n");
      return 4294967294;
    }

    sub_D4FF4();
    if (sub_D4FB4(v17, 3u, v18, 1u, v19, v20, v21, v22, v26, v28))
    {
      sub_D4FA8();
      printf("libCyrusFDR: ERROR: [%s:%u:%s] kAppleCyrusMLGetPub -> %x%s");
    }

    else
    {
      *a3 = 96;
      v23 = malloc(0x60uLL);
      *a2 = v23;
      if (v23)
      {
        memcpy(v23, __src, 0x60uLL);
        v14 = 0;
LABEL_12:
        IOServiceClose(a1);
        return v14;
      }

      printf("libCyrusFDR: ERROR: [%s:%u:%s] cant allocate mem%s");
    }

    v14 = 0xFFFFFFFFLL;
    goto LABEL_12;
  }

  return v14;
}

uint64_t sub_DCCA4(unsigned int a1, void *a2, void *a3)
{
  v6 = printf("libCyrusFDR: entered libCyrusFDR_get_serial_number%s", "\n");
  *(v31 + 3) = 0;
  v31[0] = 0;
  v30 = 7;
  v14 = 4294967293;
  if (a2 && a3)
  {
    if (sub_D4FD4(v6, v7, v8, v9, v10, v11, v12, v13, v23, v24, v25, v26, v27, v28, SWORD2(v28), SBYTE6(v28), SHIBYTE(v28)))
    {
      sub_D4FA8();
      printf("libCyrusFDR: ERROR: [%s:%u:%s] libCyrusFDR_is_multilynx_present -> %x%s");
      return 0xFFFFFFFFLL;
    }

    printf("libCyrusFDR: entered lynx_index_to_slave_pos%s", "\n");
    if (!a1 || v29 <= a1)
    {
      sub_D4FA8();
      printf("libCyrusFDR: ERROR: [%s:%u:%s] invalid lynx num %d%s");
      return 0xFFFFFFFFLL;
    }

    v32 = a1;
    v16 = sub_DC9AC();
    if (!v16)
    {
      printf("libCyrusFDR: ERROR: [%s:%u:%s] cant talk to cyrus kext%s", "libCyrusFDR.c", 332, "libCyrusFDR_get_serial_number", "\n");
      return 4294967294;
    }

    v21 = v16;
    if (sub_D4FB4(v16, 4u, &v32, 1u, v17, v18, v19, v20, v31, &v30))
    {
      sub_D4FA8();
      printf("libCyrusFDR: ERROR: [%s:%u:%s] kAppleCyrusMLGetSN -> %x%s");
    }

    else if (v30 >= 7)
    {
      *a3 = 7;
      v22 = malloc(7uLL);
      *a2 = v22;
      if (v22)
      {
        v14 = 0;
        *v22 = v31[0];
        *(v22 + 3) = *(v31 + 3);
LABEL_14:
        IOServiceClose(v21);
        return v14;
      }

      printf("libCyrusFDR: ERROR: [%s:%u:%s] cant allocate mem%s");
    }

    v14 = 0xFFFFFFFFLL;
    goto LABEL_14;
  }

  return v14;
}

uint64_t sub_DCEC4()
{
  v0 = off_1AD528();
  v2 = v1;
  v3 = v0;
  bzero(__src, 0x6E44uLL);
  v13 = 28228;
  v4 = 4294967293;
  if (v3 && v2)
  {
    v5 = sub_DC9AC();
    if (!v5)
    {
      printf("libCyrusFDR: ERROR: [%s:%u:%s] cant talk to cyrus kext%s", "libCyrusFDR.c", 360, "libCyrusFDR_get_diagnostic", "\n");
      return 4294967294;
    }

    v10 = v5;
    if (sub_D4FB4(v5, 6u, 0, 0, v6, v7, v8, v9, __src, &v13))
    {
      sub_D4FA8();
      printf("libCyrusFDR: ERROR: [%s:%u:%s] kAppleCyrusMLDiagnostic -> %x%s");
    }

    else
    {
      *v2 = 28228;
      v11 = malloc(0x6E44uLL);
      *v3 = v11;
      if (v11)
      {
        memcpy(v11, __src, 0x6E44uLL);
        v4 = 0;
LABEL_7:
        IOServiceClose(v10);
        return v4;
      }

      printf("libCyrusFDR: ERROR: [%s:%u:%s] cant allocate mem%s");
    }

    v4 = 0xFFFFFFFFLL;
    goto LABEL_7;
  }

  return v4;
}

uint64_t sub_DD068(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 4294967293;
  if (a2 && a3)
  {
    v11 = a1;
    if (sub_D4FD4(a1, a2, a3, a4, a5, a6, a7, a8, v20, v22, v24, v25, v26, v27, SWORD2(v27), SBYTE6(v27), SHIBYTE(v27)))
    {
      sub_D4FA8();
      printf("libCyrusFDR: ERROR: [%s:%u:%s] libCyrusFDR_is_multilynx_present -> %x%s");
      return 0xFFFFFFFFLL;
    }

    printf("libCyrusFDR: entered lynx_index_to_slave_pos%s", "\n");
    if (!v11 || v28 <= v11)
    {
      sub_D4FA8();
      printf("libCyrusFDR: ERROR: [%s:%u:%s] invalid lynx num %d%s");
      return 0xFFFFFFFFLL;
    }

    if (!sub_DC9AC())
    {
      printf("libCyrusFDR: ERROR: [%s:%u:%s] cant talk to cyrus kext%s", "libCyrusFDR.c", 395, "libCyrusFDR_get_imm_hash_for_sandcat", "\n");
      return 4294967294;
    }

    sub_D4FF4();
    if (sub_D4FB4(v13, 7u, v14, 1u, v15, v16, v17, v18, v21, v23))
    {
      sub_D4FA8();
      printf("libCyrusFDR: ERROR: [%s:%u:%s] kAppleCyrusFDRGetSandCatImmHash -> %x%s");
    }

    else
    {
      *a3 = 32;
      v19 = malloc(0x20uLL);
      *a2 = v19;
      if (v19)
      {
        v8 = 0;
        *v19 = 0u;
        v19[1] = 0u;
LABEL_13:
        IOServiceClose(v11);
        return v8;
      }

      printf("libCyrusFDR: ERROR: [%s:%u:%s] cant allocate mem%s");
    }

    v8 = 0xFFFFFFFFLL;
    goto LABEL_13;
  }

  return v8;
}

uint64_t sub_DD268(int a1, __int16 a2, __int128 *a3)
{
  inputStruct[1] = 0;
  if (!a3)
  {
    return 4294967293;
  }

  v6 = sub_DC9AC();
  if (v6)
  {
    v7 = v6;
    v17 = a1;
    inputStruct[0] = a2;
    v8 = a3[1];
    v18 = *a3;
    v19 = v8;
    v9 = IOConnectCallStructMethod(v6, 8u, inputStruct, 0x28uLL, 0, 0);
    if (v9)
    {
      v15 = v9;
      sub_D4FA8();
      printf("libCyrusFDR: ERROR: [%s:%u:%s] kAppleCyrusMLTestWrite -> %x%s", v12, v13, v14, v15, "\n");
      v10 = 0xFFFFFFFFLL;
    }

    else
    {
      v10 = 0;
    }

    IOServiceClose(v7);
  }

  else
  {
    printf("libCyrusFDR: ERROR: [%s:%u:%s] cant talk to cyrus kext%s", "libCyrusFDR.c", 423, "libCyrusFDR_test_write", "\n");
    return 4294967294;
  }

  return v10;
}

uint64_t sub_DD398(int a1, _OWORD *a2)
{
  memset(&outputStruct[4], 0, 28);
  outputStructCnt = 32;
  if (!a2)
  {
    return 4294967293;
  }

  v4 = sub_DC9AC();
  if (v4)
  {
    v5 = v4;
    *outputStruct = a1;
    v6 = IOConnectCallStructMethod(v4, 9u, outputStruct, 0x20uLL, outputStruct, &outputStructCnt);
    if (v6)
    {
      v13 = v6;
      sub_D4FA8();
      printf("libCyrusFDR: ERROR: [%s:%u:%s] kAppleCyrusMLTestRead -> %x%s", v10, v11, v12, v13, "\n");
      v7 = 0xFFFFFFFFLL;
    }

    else
    {
      v7 = 0;
      v8 = *&outputStruct[16];
      *a2 = *outputStruct;
      a2[1] = v8;
    }

    IOServiceClose(v5);
  }

  else
  {
    printf("libCyrusFDR: ERROR: [%s:%u:%s] cant talk to cyrus kext%s", "libCyrusFDR.c", 450, "libCyrusFDR_test_read", "\n");
    return 4294967294;
  }

  return v7;
}

uint64_t sub_DD4D4(int a1)
{
  v2 = sub_DC9AC();
  if (v2)
  {
    v3 = v2;
    inputStruct = a1;
    v4 = IOConnectCallStructMethod(v2, 0xAu, &inputStruct, 4uLL, 0, 0);
    if (v4)
    {
      v10 = v4;
      sub_D4FA8();
      printf("libCyrusFDR: ERROR: [%s:%u:%s] kAppleCyrusMLTestDelete -> %x%s", v7, v8, v9, v10, "\n");
      v5 = 0xFFFFFFFFLL;
    }

    else
    {
      v5 = 0;
    }

    IOServiceClose(v3);
  }

  else
  {
    printf("libCyrusFDR: ERROR: [%s:%u:%s] cant talk to cyrus kext%s", "libCyrusFDR.c", 475, "libCyrusFDR_test_delete", "\n");
    return 4294967294;
  }

  return v5;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v5 = _CFStringFind(theString, stringToFind, compareOptions);
  length = v5.length;
  location = v5.location;
  result.length = length;
  result.location = location;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}