uint64_t getPDAK(void *a1, void *a2)
{
  v20 = *MEMORY[0x29EDCA608];
  if (OSLogInit_onceToken != -1)
  {
    encryptFDRData_cold_1();
  }

  v4 = MEMORY[0x29EDCA988];
  if (__osLogPearlLibTrace)
  {
    v5 = __osLogPearlLibTrace;
  }

  else
  {
    v5 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__size[0]) = 0;
    _os_log_impl(&dword_299F4E000, v5, OS_LOG_TYPE_DEFAULT, "getPDAK\n", __size, 2u);
  }

  __size[0] = 65;
  if (!a1 || !a2)
  {
    getPDAK_cold_6(buf);
LABEL_37:
    v10 = *buf;
    goto LABEL_15;
  }

  v6 = initialize();
  if (v6)
  {
    getPDAK_cold_2(v6, v6, buf);
    goto LABEL_37;
  }

  v7 = calloc(1uLL, __size[0]);
  if (!v7)
  {
    getPDAK_cold_5(buf);
    goto LABEL_37;
  }

  v8 = v7;
  v9 = performCommand(_connect, 84, 0, 0, 0, v7, __size);
  if (v9)
  {
    getPDAK_cold_3(v9, v9, buf);
  }

  else
  {
    if (__size[0] == 65)
    {
      v10 = 0;
      *a1 = v8;
      *a2 = 65;
      goto LABEL_15;
    }

    getPDAK_cold_4(buf);
  }

  v10 = *buf;
  free(v8);
LABEL_15:
  if (_connect)
  {
    IOServiceClose(_connect);
    _connect = 0;
  }

  if (v10)
  {
    if (OSLogInit_onceToken != -1)
    {
      encryptFDRData_cold_3();
    }

    if (__osLogPearlLibTrace)
    {
      v11 = __osLogPearlLibTrace;
    }

    else
    {
      v11 = v4;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v19 = v10;
      v12 = v11;
      v13 = OS_LOG_TYPE_ERROR;
LABEL_32:
      _os_log_impl(&dword_299F4E000, v12, v13, "getPDAK -> %d\n", buf, 8u);
    }
  }

  else
  {
    if (OSLogInit_onceToken != -1)
    {
      encryptFDRData_cold_3();
    }

    if (__osLogPearlLibTrace)
    {
      v14 = __osLogPearlLibTrace;
    }

    else
    {
      v14 = v4;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v19 = 0;
      v12 = v14;
      v13 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_32;
    }
  }

  v15 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t getAttestationToPDAK(void *a1, void *a2)
{
  v23 = *MEMORY[0x29EDCA608];
  if (OSLogInit_onceToken != -1)
  {
    encryptFDRData_cold_1();
  }

  v4 = MEMORY[0x29EDCA988];
  if (__osLogPearlLibTrace)
  {
    v5 = __osLogPearlLibTrace;
  }

  else
  {
    v5 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__size[0]) = 0;
    _os_log_impl(&dword_299F4E000, v5, OS_LOG_TYPE_DEFAULT, "getAttestationToPDAK\n", __size, 2u);
  }

  __size[0] = 16388;
  if (a1 && a2)
  {
    v6 = initialize();
    if (v6)
    {
      getAttestationToPDAK_cold_2(v6, v6, buf);
    }

    else
    {
      v7 = calloc(1uLL, __size[0]);
      if (v7)
      {
        v8 = v7;
        v9 = performCommand(_connect, 85, 0, 0, 0, v7, __size);
        if (v9)
        {
          getAttestationToPDAK_cold_3(v9, v9, buf);
        }

        else if (__size[0] <= 3)
        {
          getAttestationToPDAK_cold_6(buf);
        }

        else
        {
          v10 = *v8;
          if ((v10 - 16385) <= 0xFFFFBFFF)
          {
            getAttestationToPDAK_cold_5(buf);
          }

          else
          {
            v11 = calloc(1uLL, v10);
            if (v11)
            {
              v12 = v11;
              memcpy(v11, v8 + 1, *v8);
              v13 = 0;
              *a1 = v12;
              *a2 = *v8;
LABEL_17:
              free(v8);
              goto LABEL_18;
            }

            getAttestationToPDAK_cold_4(buf);
          }
        }

        v13 = *buf;
        goto LABEL_17;
      }

      getAttestationToPDAK_cold_7(buf);
    }
  }

  else
  {
    getAttestationToPDAK_cold_8(buf);
  }

  v13 = *buf;
LABEL_18:
  if (_connect)
  {
    IOServiceClose(_connect);
    _connect = 0;
  }

  if (v13)
  {
    if (OSLogInit_onceToken != -1)
    {
      encryptFDRData_cold_3();
    }

    if (__osLogPearlLibTrace)
    {
      v14 = __osLogPearlLibTrace;
    }

    else
    {
      v14 = v4;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v22 = v13;
      v15 = v14;
      v16 = OS_LOG_TYPE_ERROR;
LABEL_35:
      _os_log_impl(&dword_299F4E000, v15, v16, "getAttestationToPDAK -> %d\n", buf, 8u);
    }
  }

  else
  {
    if (OSLogInit_onceToken != -1)
    {
      encryptFDRData_cold_3();
    }

    if (__osLogPearlLibTrace)
    {
      v17 = __osLogPearlLibTrace;
    }

    else
    {
      v17 = v4;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v22 = 0;
      v15 = v17;
      v16 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_35;
    }
  }

  v18 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t getDummy0PSDData(void *a1, void *a2)
{
  v19 = *MEMORY[0x29EDCA608];
  if (OSLogInit_onceToken != -1)
  {
    encryptFDRData_cold_1();
  }

  v4 = MEMORY[0x29EDCA988];
  if (__osLogPearlLibTrace)
  {
    v5 = __osLogPearlLibTrace;
  }

  else
  {
    v5 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_299F4E000, v5, OS_LOG_TYPE_DEFAULT, "getDummy0PSDData\n", buf, 2u);
  }

  if (!a1)
  {
    getDummy0PSDData_cold_7(buf);
LABEL_24:
    v12 = *buf;
    goto LABEL_27;
  }

  if (!a2)
  {
    getDummy0PSDData_cold_6(buf);
    goto LABEL_24;
  }

  *a2 = 0;
  v6 = calloc(1uLL, 0x96011uLL);
  if (!v6)
  {
    getDummy0PSDData_cold_5(buf);
    goto LABEL_24;
  }

  v7 = v6;
  *v6 = 3;
  *(v6 + 4) = 0x773C051C4FLL;
  v6[12] = 2;
  *(v6 + 13) = 0;
  *(v6 + 307215) = 1;
  v16 = 614501;
  v8 = calloc(1uLL, 0x96065uLL);
  if (v8)
  {
    v9 = v8;
    v10 = encryptFDRDataInternal(v7, 0x96011uLL, v8, &v16, 0);
    if (!v10)
    {
      *a1 = v9;
      *a2 = v16;
      free(v7);
      if (OSLogInit_onceToken != -1)
      {
        encryptFDRData_cold_3();
      }

      if (__osLogPearlLibTrace)
      {
        v11 = __osLogPearlLibTrace;
      }

      else
      {
        v11 = v4;
      }

      v12 = 0;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v18 = 0;
        _os_log_impl(&dword_299F4E000, v11, OS_LOG_TYPE_DEFAULT, "getDummy0PSDData -> %d\n", buf, 8u);
        v12 = 0;
      }

      goto LABEL_20;
    }

    v12 = v10;
    getDummy0PSDData_cold_2(v10, v7, v9);
  }

  else
  {
    getDummy0PSDData_cold_4(v7);
    v12 = 260;
  }

LABEL_27:
  if (OSLogInit_onceToken != -1)
  {
    encryptFDRData_cold_3();
  }

  if (__osLogPearlLibTrace)
  {
    v15 = __osLogPearlLibTrace;
  }

  else
  {
    v15 = v4;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v18 = v12;
    _os_log_impl(&dword_299F4E000, v15, OS_LOG_TYPE_ERROR, "getDummy0PSDData -> %d\n", buf, 8u);
  }

LABEL_20:
  v13 = *MEMORY[0x29EDCA608];
  return v12;
}

uint64_t generateAndVerifyAriesHostAuthorization()
{
  v11 = *MEMORY[0x29EDCA608];
  if (OSLogInit_onceToken != -1)
  {
    encryptFDRData_cold_1();
  }

  v0 = MEMORY[0x29EDCA988];
  if (__osLogPearlLibTrace)
  {
    v1 = __osLogPearlLibTrace;
  }

  else
  {
    v1 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_299F4E000, v1, OS_LOG_TYPE_DEFAULT, "generateAndVerifyAriesHostAuthorization\n", &v9, 2u);
  }

  v2 = initialize();
  if (v2)
  {
    generateAndVerifyAriesHostAuthorization_cold_2(v2, v2, &v9);
  }

  else
  {
    v3 = performCommand(_connect, 86, 0, 0, 0, 0, 0);
    v4 = 0;
    if (!v3)
    {
      goto LABEL_10;
    }

    generateAndVerifyAriesHostAuthorization_cold_3(v3, v3, &v9);
  }

  v4 = v9;
LABEL_10:
  if (_connect)
  {
    IOServiceClose(_connect);
    _connect = 0;
  }

  if (v4)
  {
    if (OSLogInit_onceToken != -1)
    {
      encryptFDRData_cold_3();
    }

    if (__osLogPearlLibTrace)
    {
      v0 = __osLogPearlLibTrace;
    }

    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      v9 = 67109120;
      v10 = v4;
      v5 = v0;
      v6 = OS_LOG_TYPE_ERROR;
LABEL_25:
      _os_log_impl(&dword_299F4E000, v5, v6, "generateAndVerifyAriesHostAuthorization -> %d\n", &v9, 8u);
    }
  }

  else
  {
    if (OSLogInit_onceToken != -1)
    {
      encryptFDRData_cold_3();
    }

    if (__osLogPearlLibTrace)
    {
      v0 = __osLogPearlLibTrace;
    }

    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 67109120;
      v10 = 0;
      v5 = v0;
      v6 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_25;
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return v4;
}

void __OSLogInit_block_invoke()
{
  v0 = os_log_create("com.apple.BiometricKit", "Library-PearlFactory");
  v1 = __osLogPearlLib;
  __osLogPearlLib = v0;

  v2 = __osLogPearlLib;
  if (!__osLogPearlLib)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      __OSLogInit_block_invoke_cold_1();
    }

    v2 = __osLogPearlLib;
  }

  objc_storeStrong(&__osLogPearlLibTrace, v2);
}

void OUTLINED_FUNCTION_11(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint8_t buf)
{

  _os_log_impl(a1, v15, OS_LOG_TYPE_DEFAULT, a4, &buf, 0x30u);
}

BOOL OUTLINED_FUNCTION_12@<W0>(NSObject *a1@<X8>)
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

void OUTLINED_FUNCTION_13(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint8_t buf)
{

  _os_log_impl(a1, v15, OS_LOG_TYPE_DEFAULT, a4, &buf, 0x30u);
}

BOOL OUTLINED_FUNCTION_14@<W0>(NSObject *a1@<X8>)
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

void OUTLINED_FUNCTION_18(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint8_t buf)
{

  _os_log_impl(a1, v15, OS_LOG_TYPE_DEFAULT, a4, &buf, 0x30u);
}

BOOL OUTLINED_FUNCTION_19@<W0>(NSObject *a1@<X8>)
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

void OUTLINED_FUNCTION_25()
{
  *v1 = 258;
  *v0 = 0;
  v3 = *(v2 - 56);
}

void OUTLINED_FUNCTION_29(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 0x30u);
}

BOOL OUTLINED_FUNCTION_30@<W0>(NSObject *a1@<X8>)
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

void OUTLINED_FUNCTION_35()
{
  *v1 = v3;
  *v0 = v2;
  v5 = *(v4 - 88);
}

void OUTLINED_FUNCTION_41(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint8_t buf)
{

  _os_log_impl(a1, v15, OS_LOG_TYPE_ERROR, a4, &buf, 8u);
}

BOOL OUTLINED_FUNCTION_42@<W0>(NSObject *a1@<X8>)
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

BOOL OUTLINED_FUNCTION_43@<W0>(NSObject *a1@<X8>)
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

BOOL OUTLINED_FUNCTION_44@<W0>(NSObject *a1@<X8>)
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

void getSavageProvisioningData_cold_2()
{
  v10 = *MEMORY[0x29EDCA608];
  fprintf(*MEMORY[0x29EDCA610], "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", "fileURL", 0, "", "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m", 511);
  if (OSLogInit_onceToken != -1)
  {
    dispatch_once(&OSLogInit_onceToken, &__block_literal_global_0);
  }

  if (OUTLINED_FUNCTION_43(__osLogPearlLib))
  {
    v4 = 136316162;
    v5 = "fileURL";
    OUTLINED_FUNCTION_3_0();
    v6 = "";
    v7 = v1;
    v8 = "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m";
    OUTLINED_FUNCTION_20();
    v9 = 511;
    OUTLINED_FUNCTION_29(&dword_299F4E000, v0, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v4);
  }

  v3 = *MEMORY[0x29EDCA608];
}

void getSavageProvisioningData_cold_3()
{
  v10 = *MEMORY[0x29EDCA608];
  fprintf(*MEMORY[0x29EDCA610], "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", "pathString", 0, "", "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m", 509);
  if (OSLogInit_onceToken != -1)
  {
    dispatch_once(&OSLogInit_onceToken, &__block_literal_global_0);
  }

  if (OUTLINED_FUNCTION_43(__osLogPearlLib))
  {
    v4 = 136316162;
    v5 = "pathString";
    OUTLINED_FUNCTION_3_0();
    v6 = "";
    v7 = v1;
    v8 = "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m";
    OUTLINED_FUNCTION_20();
    v9 = 509;
    OUTLINED_FUNCTION_29(&dword_299F4E000, v0, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v4);
  }

  v3 = *MEMORY[0x29EDCA608];
}

void allocateAndMapObjectS3C1_cold_20()
{
  OUTLINED_FUNCTION_31();
  v6 = *MEMORY[0x29EDCA608];
  if (OSLogInit_onceToken != -1)
  {
    dispatch_once(&OSLogInit_onceToken, &__block_literal_global_0);
  }

  if (__osLogPearlLibTrace)
  {
    v2 = __osLogPearlLibTrace;
  }

  else
  {
    v2 = MEMORY[0x29EDCA988];
  }

  v3 = v2;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = 0;
    _os_log_impl(&dword_299F4E000, v3, OS_LOG_TYPE_DEFAULT, "allocateAndMapObjectS3C1 -> 0x%x\n", v5, 8u);
  }

  *v1 = 0;
  *v0 = v3;
  v4 = *MEMORY[0x29EDCA608];
}

CFErrorRef createCFErrorWithDomain(uint64_t a1, unsigned int a2, uint64_t a3, const __CFString *a4)
{
  v7 = *MEMORY[0x29EDB8ED8];
  v8 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@: %s", a4, a1);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = CFStringCreateWithFormat(v7, 0, @"%@: Input Options: %@", v8, a3);
  if (!v10)
  {
    v13 = 0;
    goto LABEL_4;
  }

  v11 = v10;
  Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x29EDB8F28], MEMORY[0x29EDB9020]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB8F58], v9);
  v13 = CFErrorCreate(v7, a4, a2, Mutable);
  CFRelease(v11);
  CFRelease(v9);
  v9 = Mutable;
  if (Mutable)
  {
LABEL_4:
    CFRelease(v9);
  }

  return v13;
}

uint64_t GetRelevantMeasurementTags(CFDictionaryRef theDict, void *a2, void *a3)
{
  result = 2;
  if (theDict && a2 && a3)
  {
    Value = CFDictionaryGetValue(theDict, *MEMORY[0x29EDCABC0]);
    if (!Value)
    {
      return 17;
    }

    v8 = Value;
    v9 = CFGetTypeID(Value);
    if (v9 != CFBooleanGetTypeID())
    {
      return 17;
    }

    v10 = CFBooleanGetValue(v8);
    v11 = CFDictionaryGetValue(theDict, *MEMORY[0x29EDCABC8]);
    if (!v11)
    {
      return 17;
    }

    v12 = v11;
    v13 = CFGetTypeID(v11);
    if (v13 != CFDataGetTypeID())
    {
      return 17;
    }

    BytePtr = CFDataGetBytePtr(v12);
    if (BytePtr)
    {
      v15 = *BytePtr;
      v16 = (v15 + 96) >> 4;
      if ((v16 - 8) < 2)
      {
        v19 = MEMORY[0x29EDCABF0];
        v20 = MEMORY[0x29EDCABE8];
LABEL_23:
        v22 = v10 == 0;
        if (!v10)
        {
          v19 = v20;
        }

        *a2 = *v19;
        v23 = MEMORY[0x29EDCAC20];
        v24 = MEMORY[0x29EDCAC18];
LABEL_26:
        if (v22)
        {
          v23 = v24;
        }

        v25 = *v23;
        goto LABEL_29;
      }

      if (!((v15 + 96) >> 4))
      {
        v21 = MEMORY[0x29EDCAC00];
        v22 = v10 == 0;
        if (!v10)
        {
          v21 = MEMORY[0x29EDCABF8];
        }

        *a2 = *v21;
        v23 = MEMORY[0x29EDCAC10];
        v24 = MEMORY[0x29EDCAC08];
        goto LABEL_26;
      }

      if (v16 == 4)
      {
        v17 = MEMORY[0x29EDCAC10];
        v18 = MEMORY[0x29EDCAC08];
LABEL_19:
        if (!v10)
        {
          v17 = v18;
        }

        v25 = *v17;
        *a2 = v25;
LABEL_29:
        result = 0;
        *a3 = v25;
        return result;
      }

      if (v15 >= 0xF0)
      {
        v17 = MEMORY[0x29EDCAC20];
        v18 = MEMORY[0x29EDCAC18];
        goto LABEL_19;
      }
    }

    v19 = MEMORY[0x29EDCABE0];
    v20 = MEMORY[0x29EDCABD8];
    goto LABEL_23;
  }

  return result;
}

uint64_t GetYonkersMeasurementTags(CFDictionaryRef theDict, uint64_t a2)
{
  valuePtr = 0;
  result = 2;
  if (theDict && a2)
  {
    Value = CFDictionaryGetValue(theDict, *MEMORY[0x29EDCACC0]);
    if (Value && (v5 = Value, v6 = CFGetTypeID(Value), v6 == CFBooleanGetTypeID()) && (CFBooleanGetValue(v5), (v7 = CFDictionaryGetValue(theDict, *MEMORY[0x29EDCACB0])) != 0) && (v8 = v7, v9 = CFGetTypeID(v7), v9 == CFNumberGetTypeID()))
    {
      v10 = CFNumberGetValue(v8, kCFNumberSInt32Type, &valuePtr);
      v18 = OUTLINED_FUNCTION_0(v10, v11, v12, v13, v14, v15, v16, v17, v22, v23, valuePtr);
      return GetYonkersFabRevisionTags(v18, v19, v20, v21);
    }

    else
    {
      return 17;
    }
  }

  return result;
}

uint64_t GetJasmineIRMeasurementTags(CFDictionaryRef theDict, uint64_t a2, uint64_t a3)
{
  valuePtr = 0;
  result = 2;
  if (theDict && a2 && a3)
  {
    Value = CFDictionaryGetValue(theDict, *MEMORY[0x29EDCAAD0]);
    if (Value && (v6 = Value, v7 = CFGetTypeID(Value), v7 == CFBooleanGetTypeID()) && (CFBooleanGetValue(v6), (v8 = CFDictionaryGetValue(theDict, *MEMORY[0x29EDCAAC0])) != 0) && (v9 = v8, v10 = CFGetTypeID(v8), v10 == CFNumberGetTypeID()))
    {
      v11 = CFNumberGetValue(v9, kCFNumberSInt32Type, &valuePtr);
      v19 = OUTLINED_FUNCTION_0(v11, v12, v13, v14, v15, v16, v17, v18, v23, v24, valuePtr);
      return GetJasmineIRFabRevisionTags(v19, v20, v21, v22);
    }

    else
    {
      return 17;
    }
  }

  return result;
}

uint64_t _hexStringToBytes(_BYTE *a1, unint64_t *a2, unsigned __int8 *a3, unint64_t a4)
{
  v4 = 2;
  if ((a4 & 1) == 0 && *a2 >= a4 >> 1 && a1 && a3)
  {
    v5 = 0;
    *a2 = 0;
    if (a4 < 2)
    {
LABEL_25:
      v4 = 0;
      *a2 = v5;
      a1[v5] = 0;
    }

    else
    {
      v6 = MEMORY[0x29EDCA600];
      v7 = a1;
      v8 = a4 >> 1;
      while (1)
      {
        v9 = *a3;
        if ((*(v6 + 4 * v9 + 60) & 0x10000) == 0)
        {
          return 2;
        }

        v10 = a3[1];
        if ((*(v6 + 4 * v10 + 60) & 0x10000) == 0)
        {
          return 2;
        }

        v11 = v9 - 48;
        v12 = v9 - 97;
        if ((v9 - 65) >= 6)
        {
          v13 = -1;
        }

        else
        {
          v13 = v9 - 55;
        }

        v14 = v9 - 87;
        if (v12 > 5)
        {
          v14 = v13;
        }

        if (v11 < 0xA)
        {
          v14 = v11;
        }

        v15 = 16 * v14;
        v16 = v10 - 48;
        v17 = v10 - 97;
        if ((v10 - 65) >= 6)
        {
          v18 = -1;
        }

        else
        {
          v18 = v10 - 55;
        }

        v19 = v10 - 87;
        if (v17 > 5)
        {
          v19 = v18;
        }

        if (v16 < 0xA)
        {
          v19 = v16;
        }

        *v7++ = v19 | v15;
        a3 += 2;
        if (!--v8)
        {
          v5 = a4 >> 1;
          goto LABEL_25;
        }
      }
    }
  }

  return v4;
}

uint64_t YonkersDevice::CheckProvisioningStatus(YonkersDevice *this)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = 3758097136;
  *buffer = 0;
  v19 = 0;
  memset(v17, 0, sizeof(v17));
  v3 = *MEMORY[0x29EDB8ED8];
  v4 = OUTLINED_FUNCTION_0_0(*(this + 11), @"YonkersUID");
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 != CFDataGetTypeID())
    {
      goto LABEL_24;
    }

    v21.location = 0;
    v21.length = 16;
    CFDataGetBytes(v5, v21, buffer);
    CFRelease(v5);
    *(this + 1) = bswap64(*buffer);
    v7 = OUTLINED_FUNCTION_0_0(*(this + 11), @"YonkersFabRevision");
    if (!v7)
    {
      v2 = 0;
      goto LABEL_21;
    }

    v5 = v7;
    v8 = CFGetTypeID(v7);
    if (v8 != CFDataGetTypeID())
    {
      v2 = 0;
      goto LABEL_24;
    }

    BytePtr = CFDataGetBytePtr(v5);
    if (BytePtr)
    {
      v10 = __rev16(*BytePtr);
    }

    else
    {
      v10 = 0;
    }

    CFRelease(v5);
    for (i = 0; i != 5; ++i)
    {
      if (v10 == dword_299F6F390[i])
      {
        *this = 0;
        goto LABEL_18;
      }
    }

    if (*this)
    {
      v12 = 0;
      while (v10 != dword_299F6F3A4[v12])
      {
        if (++v12 == 16)
        {
          goto LABEL_18;
        }
      }

      *(this + 1) = 1;
    }

LABEL_18:
    v13 = OUTLINED_FUNCTION_0_0(*(this + 11), @"YonkersPubKeyHmac");
    if (v13)
    {
      v5 = v13;
      v14 = CFGetTypeID(v13);
      if (v14 == CFDataGetTypeID())
      {
        v22.location = 0;
        v22.length = 32;
        CFDataGetBytes(v5, v22, v17);
        CFRelease(v5);
        v2 = 0;
        *(this + 2) = bswap64(*&v17[0]);
        goto LABEL_21;
      }

LABEL_24:
      CFRelease(v5);
    }
  }

LABEL_21:
  v15 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t YonkersDevice::CreateCertInfoBlob(uint64_t a1, uint64_t a2)
{
  v4 = 3758097136;
  v5 = *MEMORY[0x29EDB8ED8];
  v6 = OUTLINED_FUNCTION_0_0(*(a1 + 44), @"YonkersMNS");
  if (!v6)
  {
    return v4;
  }

  v7 = v6;
  v8 = CFGetTypeID(v6);
  if (v8 != CFDataGetTypeID())
  {
    goto LABEL_19;
  }

  BytePtr = CFDataGetBytePtr(v7);
  if (BytePtr)
  {
    v10 = *BytePtr;
    if (v10 == 4)
    {
      *a2 = 0;
      v10 = *BytePtr;
    }

    if (v10 == 8)
    {
      *a2 = 1;
    }
  }

  CFRelease(v7);
  v11 = OUTLINED_FUNCTION_0_0(*(a1 + 44), @"YonkersChipID");
  if (!v11)
  {
    return v4;
  }

  v7 = v11;
  v12 = CFGetTypeID(v11);
  if (v12 != CFDataGetTypeID())
  {
    goto LABEL_19;
  }

  v13 = CFDataGetBytePtr(v7);
  if (v13)
  {
    *(a2 + 4) = bswap32(*v13);
  }

  CFRelease(v7);
  v14 = OUTLINED_FUNCTION_0_0(*(a1 + 44), @"YonkersUID");
  if (!v14)
  {
    return v4;
  }

  v7 = v14;
  v15 = CFGetTypeID(v14);
  if (v15 != CFDataGetTypeID())
  {
    goto LABEL_19;
  }

  v21.location = 0;
  v21.length = 16;
  CFDataGetBytes(v7, v21, (a2 + 8));
  CFRelease(v7);
  v16 = OUTLINED_FUNCTION_0_0(*(a1 + 44), @"YonkersPubKey");
  if (!v16)
  {
    return v4;
  }

  v7 = v16;
  v17 = CFGetTypeID(v16);
  if (v17 != CFDataGetTypeID())
  {
LABEL_19:
    CFRelease(v7);
    return v4;
  }

  v22.location = 0;
  v22.length = 64;
  CFDataGetBytes(v7, v22, (a2 + 24));
  CFRelease(v7);
  v18 = OUTLINED_FUNCTION_0_0(*(a1 + 44), @"YonkersPubKeyHmac");
  if (v18)
  {
    v7 = v18;
    v19 = CFGetTypeID(v18);
    if (v19 == CFDataGetTypeID())
    {
      v23.location = 0;
      v23.length = 32;
      CFDataGetBytes(v7, v23, (a2 + 88));
      v4 = 0;
    }

    goto LABEL_19;
  }

  return v4;
}

uint64_t YonkersDevice::CreateDeviceInfoDict(YonkersDevice *this, __CFDictionary *a2)
{
  v4 = 3758097136;
  v5 = *MEMORY[0x29EDB8ED8];
  v6 = OUTLINED_FUNCTION_1(*(this + 11), @"YonkersUID");
  if (!v6)
  {
    return v4;
  }

  v7 = v6;
  v8 = CFGetTypeID(v6);
  if (v8 != CFDataGetTypeID())
  {
    goto LABEL_40;
  }

  CFDictionaryAddValue(a2, *MEMORY[0x29EDCACA8], v7);
  CFRelease(v7);
  v9 = OUTLINED_FUNCTION_1(*(this + 11), @"YonkersNonce");
  if (!v9)
  {
    return v4;
  }

  v7 = v9;
  v10 = CFGetTypeID(v9);
  if (v10 != CFDataGetTypeID())
  {
    goto LABEL_40;
  }

  CFDictionaryAddValue(a2, *MEMORY[0x29EDCACB8], v7);
  CFRelease(v7);
  v11 = OUTLINED_FUNCTION_1(*(this + 11), @"YonkersFabRevision");
  if (!v11)
  {
    return v4;
  }

  v7 = v11;
  v12 = CFGetTypeID(v11);
  if (v12 != CFDataGetTypeID())
  {
    goto LABEL_40;
  }

  BytePtr = CFDataGetBytePtr(v7);
  if (BytePtr)
  {
    v14 = __rev16(*BytePtr);
    v29 = 1;
    if ((v14 & 0xF7FF) != 0xD501)
    {
      v15 = v14 == 53506 || v14 == 53570;
      v16 = v15 || v14 == 59905;
      if (!v16 && v14 != 61953)
      {
        v29 = 0;
      }
    }

    *(this + 24) = v29;
    SavageCFDictionarySetInteger32(a2, *MEMORY[0x29EDCACB0], v14);
  }

  else
  {
    v14 = 0;
  }

  CFRelease(v7);
  v18 = OUTLINED_FUNCTION_1(*(this + 11), @"YonkersChipID");
  if (!v18)
  {
    return v4;
  }

  v7 = v18;
  v19 = CFGetTypeID(v18);
  if (v19 != CFDataGetTypeID())
  {
LABEL_40:
    CFRelease(v7);
    return v4;
  }

  v20 = CFDataGetBytePtr(v7);
  if (v20)
  {
    SavageCFDictionarySetInteger32(a2, *MEMORY[0x29EDCACA0], bswap32(*v20));
  }

  CFRelease(v7);
  v21 = OUTLINED_FUNCTION_1(*(this + 11), @"YonkersMNS");
  if (v21)
  {
    v7 = v21;
    v22 = CFGetTypeID(v21);
    if (v22 == CFDataGetTypeID())
    {
      v23 = CFDataGetBytePtr(v7);
      if (v23)
      {
        v24 = *v23;
        if (v24 == 4)
        {
          *(this + 25) = 0;
          v24 = *v23;
        }

        if (v24 == 8)
        {
          *(this + 25) = 1;
        }
      }

      v25 = 0;
      v26 = &dword_299F6F3E4;
      while (1)
      {
        v27 = *v26++;
        if (v14 == v27)
        {
          break;
        }

        v25 -= 2;
        if (v25 == -16)
        {
          goto LABEL_39;
        }
      }

      snprintf(this + 36, 2uLL, "%x", (*(this + 25) != 0) - v25);
      *(this + 38) = 1;
LABEL_39:
      SavageCFDictionarySetBoolean(a2, @"YonkersIsProvisioned", *(this + 8));
      v4 = 0;
    }

    goto LABEL_40;
  }

  return v4;
}

uint64_t YonkersDevice::Fusing(YonkersDevice *this, unsigned int a2, const unsigned __int8 *a3, unsigned int a4)
{
  v11[3] = *MEMORY[0x29EDCA608];
  if (*(this + 28))
  {
    v8 = *(this + 7);
    v7 = SavageCamInterfaceSensorFusing();
    goto LABEL_7;
  }

  v5 = *(this + 12);
  v11[2] = a2;
  v6 = 3758097090;
  if (a3)
  {
    if (a4)
    {
      v11[0] = a3;
      v11[1] = a4;
      v6 = 3758097084;
      if (v5)
      {
        v7 = IOConnectCallScalarMethod(v5, 0x45u, v11, 3u, 0, 0);
LABEL_7:
        v6 = v7;
      }
    }
  }

  *(this + 1) = 0;
  YonkersDevice::CheckProvisioningStatus(this);
  v9 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t JasmineIRUpdateController::start(JasmineIRUpdateController *this, const __CFDictionary *a2)
{
  *(this + 20) = 1;
  if (*(this + 66))
  {
    JasmineIRDevice::CheckProvisioningStatus(*(this + 7));
  }

  JasmineIRUpdateController::JasmineIRLog(this, "%s: isProvisioned=%d; isSocProdFused=%d; persoLoop = %d\n", "start", *(*(this + 7) + 56), *(*(this + 7) + 97), *(this + 47));
  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"Options");
    v5 = SavageSafeRetain(Value);
    if (!v5 || (v6 = v5, v7 = CFGetTypeID(v5), v7 != CFDictionaryGetTypeID()))
    {
      JasmineIRUpdateController::JasmineIRLog(this, "JasmineIR: restoreOptions missing or not a dictionary\n");
      a2 = 0;
      goto LABEL_55;
    }

    if (!CFDictionaryGetCount(v6))
    {
      a2 = 0;
      *(this + 64) = 1;
      goto LABEL_55;
    }

    a2 = CFCopyDescription(v6);
    CStringPtr = CFStringGetCStringPtr(a2, 0);
    v9 = CFStringGetCStringPtr(@"Options", 0);
    v10 = "No C string description available.";
    if (CStringPtr)
    {
      v10 = CStringPtr;
    }

    JasmineIRUpdateController::JasmineIRLog(this, "%s [input]: %s %s \n", "start", v9, v10);
    v11 = CFDictionaryGetValue(v6, *MEMORY[0x29EDCAB18]);
    if (v11)
    {
      v12 = CFGetTypeID(v11);
      if (v12 == CFBooleanGetTypeID())
      {
        *(this + 64) = 1;
      }
    }

    v13 = CFDictionaryGetValue(v6, @"PersonalizedFirmwareRootPath");
    if (v13 && (v14 = v13, v15 = CFGetTypeID(v13), v15 == CFStringGetTypeID()))
    {
      v16 = (this + 88);
    }

    else
    {
      v17 = CFDictionaryGetValue(v6, @"RestoreSystemPartition");
      if (!v17)
      {
        goto LABEL_19;
      }

      v18 = v17;
      v19 = CFGetTypeID(v17);
      if (v19 != CFStringGetTypeID())
      {
        goto LABEL_19;
      }

      v16 = (this + 88);
      CFStringAppend(*(this + 11), v18);
      v14 = @"/usr/standalone/firmware/Savage/";
    }

    CFStringAppend(*v16, v14);
LABEL_19:
    v20 = CFDictionaryGetValue(v6, @"RestoreInternal");
    if (v20)
    {
      v21 = v20;
      v22 = CFGetTypeID(v20);
      if (v22 == CFBooleanGetTypeID())
      {
        *(this + 67) = CFBooleanGetValue(v21);
      }
    }

    v23 = CFDictionaryGetValue(v6, @"PostFDRSealing");
    if (v23)
    {
      v24 = v23;
      v25 = CFGetTypeID(v23);
      if (v25 == CFBooleanGetTypeID())
      {
        if (*(this + 65))
        {
          v26 = 1;
        }

        else
        {
          v26 = CFBooleanGetValue(v24) != 0;
        }

        *(this + 65) = v26;
      }
    }

    v27 = CFDictionaryGetValue(v6, @"FlipFusingState");
    if (v27)
    {
      v28 = v27;
      v29 = CFGetTypeID(v27);
      if (v29 == CFBooleanGetTypeID() && CFBooleanGetValue(v28) == 1)
      {
        v30 = *(this + 7);
        if (!*(v30 + 56))
        {
          if (*(v30 + 97))
          {
            v31 = 1;
          }

          else
          {
            v31 = 2;
          }

          *(this + 47) = v31;
        }
      }
    }

    v32 = CFDictionaryGetValue(v6, *MEMORY[0x29EDCAB20]);
    if (v32)
    {
      v33 = v32;
      v34 = CFGetTypeID(v32);
      if (v34 == CFBooleanGetTypeID())
      {
        if (*(this + 65))
        {
          v35 = 1;
        }

        else
        {
          v35 = CFBooleanGetValue(v33) != 0;
        }

        *(this + 65) = v35;
      }
    }

    if (!*(*(this + 7) + 56))
    {
      v50 = CFDictionaryGetValue(v6, @"FusingOption");
      if (v50)
      {
        v51 = v50;
        v52 = CFGetTypeID(v50);
        if (v52 == CFBooleanGetTypeID())
        {
          *(this + 16) = CFBooleanGetValue(v51);
        }
      }
    }

    v36 = CFDictionaryGetValue(v6, @"CertificationURL");
    if (v36)
    {
      v37 = v36;
      v38 = CFGetTypeID(v36);
      if (v38 == CFStringGetTypeID())
      {
        *(this + 18) = CFStringGetLength(v37) != 0;
      }
    }

    v39 = CFDictionaryGetValue(v6, @"AuthCertOption");
    if (v39)
    {
      v40 = v39;
      v41 = CFGetTypeID(v39);
      if (v41 == CFBooleanGetTypeID())
      {
        *(this + 21) = CFBooleanGetValue(v40);
        *(this + 48) = 2;
      }
    }

    v42 = CFDictionaryGetValue(v6, @"AuthChallengeOption");
    if (v42)
    {
      v43 = v42;
      v44 = CFGetTypeID(v42);
      if (v44 == CFDataGetTypeID())
      {
        v45 = calloc(0x10uLL, 1uLL);
        *(this + 6) = v45;
        v53.location = 0;
        v53.length = 16;
        CFDataGetBytes(v43, v53, v45);
        *(this + 68) = 1;
        *(this + 10) = 256;
      }
    }

    v46 = CFDictionaryGetValue(v6, @"WrapOption");
    if (v46)
    {
      v47 = v46;
      v48 = CFGetTypeID(v46);
      if (v48 == CFBooleanGetTypeID())
      {
        *(this + 23) = CFBooleanGetValue(v47);
      }
    }
  }

LABEL_55:
  if (*(this + 67))
  {
    if (*(*(this + 7) + 56) || *(this + 16) || *(this + 18) || *(this + 21) || *(this + 23))
    {
      *(this + 47) = 1;
    }
  }

  else
  {
    *(this + 47) = 1;
    if (!*(*(this + 7) + 17))
    {
      *(this + 65) = 1;
    }
  }

  if (a2)
  {
    CFRelease(a2);
  }

  return 0;
}

uint64_t JasmineIRUpdateController::execCommand(JasmineIRUpdateController *this, CFStringRef theString, const __CFDictionary *a3, const __CFDictionary **a4)
{
  if (!theString || (CStringPtr = CFStringGetCStringPtr(theString, 0), JasmineIRUpdateController::JasmineIRLog(this, "%s: Entering execCommand: command = %s, persoLoop = %d \n", "execCommand", CStringPtr, *(this + 47)), *(this + 65)))
  {
LABEL_21:
    Stage = 0;
    goto LABEL_22;
  }

  if (a3)
  {
    JasmineIRUpdateController::JasmineIRLog(this, "%s: Input specified to the processing command\n", "execCommand");
    v9 = *(this + 9);
    if (v9)
    {
      CFRelease(v9);
      *(this + 9) = 0;
    }

    *(this + 9) = CFRetain(a3);
  }

  if (CFStringCompare(theString, @"queryInfo", 0))
  {
    if (CFStringCompare(theString, @"performNextStage", 0))
    {
      v10 = CFStringGetCStringPtr(theString, 0);
      JasmineIRUpdateController::JasmineIRLog(this, "%s: Unsupported command: %s\n", "execCommand", v10);
      Stage = 20;
      goto LABEL_22;
    }

    Firmware = JasmineIRUpdateController::getFirmware(this, this + 14, this + 30, *MEMORY[0x29EDCAA90]);
    if (Firmware || (JasmineIRUpdateController::getFirmware(this, this + 16, this + 34, *MEMORY[0x29EDCAA98]), Firmware = JasmineIRUpdateController::getTSSResponse(this), Firmware))
    {
      Stage = Firmware;
      goto LABEL_22;
    }

    Stage = JasmineIRUpdateController::eventCmdPerformNextStage(this);
    v22 = *(this + 10);
    if (v22)
    {
      CFRelease(v22);
      *(this + 10) = 0;
    }

    if (!Stage)
    {
      if (!*(this + 16) && !*(this + 20) && !*(this + 18) && !*(this + 21) && !*(this + 23))
      {
        *(this + 65) = 1;
      }

      JasmineIRUpdateController::JasmineIRLog(this, "%s: isProvisioned=%d \n", "execCommand", *(*(this + 7) + 56));
      if (!a4)
      {
        goto LABEL_21;
      }

      goto LABEL_12;
    }
  }

  else
  {
    Info = JasmineIRUpdateController::eventCmdQueryInfo(this);
    Stage = Info;
    if (a4 && !Info)
    {
LABEL_12:
      v13 = *(this + 10);
      if (v13)
      {
        if (*a4)
        {
          v14 = *MEMORY[0x29EDCAA88];
          Value = CFDictionaryGetValue(v13, *MEMORY[0x29EDCAA88]);
          CFDictionarySetValue(*a4, v14, Value);
          JasmineIRUpdateController::JasmineIRLog(this, "%s: Add the results of the command processed to the output \n");
        }

        else
        {
          *a4 = SavageSafeRetain(v13);
          JasmineIRUpdateController::JasmineIRLog(this, "%s: Send out the results in fOutput of the command processed\n");
        }

        v16 = CFCopyDescription(*a4);
        v17 = CFStringGetCStringPtr(v16, 0);
        if (v17)
        {
          v18 = v17;
        }

        else
        {
          v18 = "No C string description available.";
        }

        JasmineIRUpdateController::JasmineIRLog(this, "%s [output]: %s %s \n", "execCommand", "output dictionary of execCommand", v18);
        if (v16)
        {
          CFRelease(v16);
        }
      }

      goto LABEL_21;
    }
  }

LABEL_22:
  v19 = CFStringGetCStringPtr(theString, 0);
  JasmineIRUpdateController::JasmineIRLog(this, "%s: Exiting execCommand: command = %s, result = 0x%X, persoLoop = %d \n", "execCommand", v19, Stage, *(this + 47));
  return Stage;
}

uint64_t JasmineIRUpdateController::getFirmware(JasmineIRUpdateController *this, unsigned __int8 **a2, unsigned int *a3, const __CFString *a4)
{
  v5 = *(this + 9);
  if (!v5)
  {
    return 2;
  }

  Value = CFDictionaryGetValue(v5, @"FirmwareData");
  if (!Value)
  {
    return 10;
  }

  v10 = Value;
  v11 = CFGetTypeID(Value);
  if (v11 != CFDictionaryGetTypeID())
  {
    return 10;
  }

  v12 = CFDictionaryGetValue(v10, a4);
  if (!v12)
  {
    return 10;
  }

  v13 = v12;
  v14 = CFGetTypeID(v12);
  if (v14 != CFDataGetTypeID())
  {
    return 10;
  }

  Length = CFDataGetLength(v13);
  *a3 = Length;
  if (!*(this + 30))
  {
    return 4;
  }

  v16 = calloc(Length, 1uLL);
  *a2 = v16;
  if (!*(this + 14))
  {
    return 3;
  }

  v18.length = *a3;
  v18.location = 0;
  CFDataGetBytes(v13, v18, v16);
  return 0;
}

uint64_t JasmineIRUpdateController::getTSSResponse(JasmineIRUpdateController *this)
{
  v2 = *(this + 9);
  if (!v2)
  {
    return 2;
  }

  Value = CFDictionaryGetValue(v2, *MEMORY[0x29EDCAB00]);
  if (!Value)
  {
    return 10;
  }

  v4 = Value;
  v5 = CFGetTypeID(Value);
  if (v5 != CFDataGetTypeID())
  {
    return 10;
  }

  BytePtr = CFDataGetBytePtr(v4);
  Length = CFDataGetLength(v4);
  JasmineIRUpdateController::getSignedCertificate(this, BytePtr);
  if (!*(this + 18))
  {
    return 3;
  }

  JasmineIRUpdateController::JasmineIRLog(this, "%s - %d bytes\n", "getTSSResponse", Length);
  return 0;
}

void JasmineIRUpdateController::getSignedCertificate(JasmineIRUpdateController *this, unsigned __int8 *a2)
{
  v2 = MEMORY[0x2A1C7C4A8](this, a2);
  v4 = v3;
  v5 = v2;
  v15 = *MEMORY[0x29EDCA608];
  *(v2 + 152) = v6;
  v7 = calloc(v6, 1uLL);
  *(v5 + 144) = v7;
  if (v7)
  {
    memcpy(v7, v4, *(v5 + 152));
    JasmineIRUpdateController::JasmineIRLog(v5, "JasmineIR: Signed Certificate (TSS Response):-------------- Length = %d \n", *(v5 + 152));
    v8 = *(v5 + 152);
    if (v8)
    {
      v9 = 0;
      do
      {
        bzero(v14, 0x1000uLL);
        if (v9 >= v8)
        {
          v12 = v9;
        }

        else
        {
          v10 = 0;
          do
          {
            v11 = snprintf(&v14[v10], 5uLL, " %02X ", *(*(v5 + 144) + v9++));
            v12 = v9;
            if (v9 >= *(v5 + 152))
            {
              break;
            }

            v10 += v11;
          }

          while ((v10 + 5) < 0x1000);
        }

        JasmineIRUpdateController::JasmineIRLog(v5, "\n JasmineIR: %s \n", v14);
        v8 = *(v5 + 152);
        v9 = v12;
      }

      while (v12 < v8);
    }
  }

  v13 = *MEMORY[0x29EDCA608];
}

uint64_t YonkersUpdateController::start(YonkersUpdateController *this, const __CFDictionary *a2)
{
  *(this + 21) = 1;
  if (*(this + 34))
  {
    YonkersDevice::CheckProvisioningStatus(*(this + 3));
  }

  YonkersUpdateController::YonkersLog(this, "%s: isProvisioned=%d; isSocProdFused=%d; persoLoop = %d\n", "start", *(*(this + 3) + 8), *(*(this + 3) + 26), *(this + 39));
  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"Options");
    v5 = SavageSafeRetain(Value);
    if (!v5 || (v6 = v5, v7 = CFGetTypeID(v5), v7 != CFDictionaryGetTypeID()))
    {
      YonkersUpdateController::YonkersLog(this, "Yonkers: restoreOptions missing or not a dictionary\n");
      a2 = 0;
      goto LABEL_47;
    }

    if (!CFDictionaryGetCount(v6))
    {
      a2 = 0;
      *(this + 32) = 1;
      goto LABEL_47;
    }

    a2 = CFCopyDescription(v6);
    CStringPtr = CFStringGetCStringPtr(a2, 0);
    v9 = CFStringGetCStringPtr(@"Options", 0);
    v10 = "No C string description available.";
    if (CStringPtr)
    {
      v10 = CStringPtr;
    }

    YonkersUpdateController::YonkersLog(this, "%s [input]: %s %s \n", "start", v9, v10);
    v11 = CFDictionaryGetValue(v6, *MEMORY[0x29EDCAC88]);
    if (v11)
    {
      v12 = CFGetTypeID(v11);
      if (v12 == CFBooleanGetTypeID())
      {
        *(this + 32) = 1;
      }
    }

    v13 = CFDictionaryGetValue(v6, @"PersonalizedFirmwareRootPath");
    if (v13 && (v14 = v13, v15 = CFGetTypeID(v13), v15 == CFStringGetTypeID()))
    {
      v16 = (this + 56);
    }

    else
    {
      v17 = CFDictionaryGetValue(v6, @"RestoreSystemPartition");
      if (!v17)
      {
        goto LABEL_19;
      }

      v18 = v17;
      v19 = CFGetTypeID(v17);
      if (v19 != CFStringGetTypeID())
      {
        goto LABEL_19;
      }

      v16 = (this + 56);
      CFStringAppend(*(this + 7), v18);
      v14 = @"/usr/standalone/firmware/Yonkers/";
    }

    CFStringAppend(*v16, v14);
LABEL_19:
    v20 = CFDictionaryGetValue(v6, @"RestoreInternal");
    if (v20)
    {
      v21 = v20;
      v22 = CFGetTypeID(v20);
      if (v22 == CFBooleanGetTypeID())
      {
        *(this + 35) = CFBooleanGetValue(v21);
      }
    }

    v23 = CFDictionaryGetValue(v6, @"PostFDRSealing");
    if (v23)
    {
      v24 = v23;
      v25 = CFGetTypeID(v23);
      if (v25 == CFBooleanGetTypeID())
      {
        if (*(this + 33))
        {
          v26 = 1;
        }

        else
        {
          v26 = CFBooleanGetValue(v24) != 0;
        }

        *(this + 33) = v26;
      }
    }

    v27 = CFDictionaryGetValue(v6, @"FlipFusingState");
    if (v27)
    {
      v28 = v27;
      v29 = CFGetTypeID(v27);
      if (v29 == CFBooleanGetTypeID() && CFBooleanGetValue(v28) == 1)
      {
        v30 = *(this + 3);
        if (!*(v30 + 8))
        {
          if (*(v30 + 26))
          {
            v31 = 2;
          }

          else
          {
            v31 = 4;
          }

          *(this + 39) = v31;
        }
      }
    }

    v32 = CFDictionaryGetValue(v6, *MEMORY[0x29EDCAC80]);
    if (v32)
    {
      v33 = v32;
      v34 = CFDictionaryGetValue(v32, *MEMORY[0x29EDCAC90]);
      if (v34)
      {
        v35 = v34;
        v36 = CFGetTypeID(v34);
        if (v36 == CFBooleanGetTypeID())
        {
          if (*(this + 33))
          {
            v37 = 1;
          }

          else
          {
            v37 = CFBooleanGetValue(v35) != 0;
          }

          *(this + 33) = v37;
        }
      }

      if (!*(*(this + 3) + 8))
      {
        v42 = CFDictionaryGetValue(v33, @"FusingOption");
        if (v42)
        {
          v43 = v42;
          v44 = CFGetTypeID(v42);
          if (v44 == CFBooleanGetTypeID())
          {
            *(this + 17) = CFBooleanGetValue(v43);
          }
        }
      }

      v38 = CFDictionaryGetValue(v33, @"CertificationURL");
      if (v38)
      {
        v39 = v38;
        v40 = CFGetTypeID(v38);
        if (v40 == CFStringGetTypeID())
        {
          *(this + 19) = CFStringGetLength(v39) != 0;
        }
      }
    }

    else
    {
      YonkersUpdateController::YonkersLog(this, "Yonkers: No YonkersOptions \n");
    }
  }

LABEL_47:
  if (*(this + 35))
  {
    if (*(*(this + 3) + 8) || *(this + 17) || *(this + 19) || *(this + 16))
    {
      *(this + 39) = 1;
    }
  }

  else
  {
    *(this + 39) = 1;
    if (!*(*(this + 3) + 1))
    {
      *(this + 33) = 1;
    }
  }

  if (a2)
  {
    CFRelease(a2);
  }

  return 0;
}

uint64_t YonkersUpdateController::execCommand(YonkersUpdateController *this, CFStringRef theString, const __CFDictionary *a3, const __CFDictionary **a4)
{
  if (!theString)
  {
    goto LABEL_31;
  }

  CStringPtr = CFStringGetCStringPtr(theString, 0);
  YonkersUpdateController::YonkersLog(this, "%s: Entering execCommand: command = %s, persoLoop = %d \n", "execCommand", CStringPtr, *(this + 39));
  if (*(this + 33))
  {
    goto LABEL_31;
  }

  if (a3)
  {
    YonkersUpdateController::YonkersLog(this, "%s: Input specified to the processing command\n", "execCommand");
    v9 = *(this + 5);
    if (v9)
    {
      CFRelease(v9);
      *(this + 5) = 0;
    }

    *(this + 5) = CFRetain(a3);
  }

  if (CFStringCompare(theString, @"queryInfo", 0))
  {
    if (CFStringCompare(theString, @"performNextStage", 0))
    {
      v10 = CFStringGetCStringPtr(theString, 0);
      YonkersUpdateController::YonkersLog(this, "%s: Unsupported command: %s\n", "execCommand", v10);
      v11 = 0;
      v12 = 20;
      goto LABEL_10;
    }

    Firmware = YonkersUpdateController::getFirmware(this, this + 10, this + 22, *MEMORY[0x29EDCAC70]);
    if (!Firmware)
    {
      Firmware = YonkersUpdateController::getFirmware(this, this + 12, this + 26, *MEMORY[0x29EDCAC78]);
      if (!Firmware)
      {
        Firmware = YonkersUpdateController::getTSSResponse(this);
        if (!Firmware)
        {
          Firmware = YonkersUpdateController::eventCmdPerformNextStage(this);
          if (!Firmware)
          {
            if (!*(this + 17) && !*(this + 21) && !*(this + 19) && !*(this + 16))
            {
              *(this + 33) = 1;
            }

            YonkersUpdateController::YonkersLog(this, "%s: isProvisioned=%d \n", "execCommand", *(*(this + 3) + 8));
            if (!a4)
            {
              goto LABEL_31;
            }

            goto LABEL_28;
          }
        }
      }
    }

    v12 = Firmware;
    v11 = 0;
  }

  else
  {
    Info = YonkersUpdateController::eventCmdQueryInfo(this);
    v12 = Info;
    v11 = 0;
    if (a4 && !Info)
    {
LABEL_28:
      v18 = *(this + 6);
      if (v18)
      {
        if (*a4)
        {
          v19 = *MEMORY[0x29EDCAC68];
          Value = CFDictionaryGetValue(v18, *MEMORY[0x29EDCAC68]);
          CFDictionarySetValue(*a4, v19, Value);
          YonkersUpdateController::YonkersLog(this, "%s: Add the results of the command processed to the output \n");
        }

        else
        {
          *a4 = SavageSafeRetain(v18);
          YonkersUpdateController::YonkersLog(this, "%s: Send out the results in fOutput of the command processed\n");
        }

        v11 = CFCopyDescription(*a4);
        v21 = CFStringGetCStringPtr(v11, 0);
        if (v21)
        {
          v22 = v21;
        }

        else
        {
          v22 = "No C string description available.";
        }

        YonkersUpdateController::YonkersLog(this, "%s [output]: %s %s \n", "execCommand", "output dictionary of execCommand", v22);
        goto LABEL_37;
      }

LABEL_31:
      v11 = 0;
LABEL_37:
      v12 = 0;
    }
  }

LABEL_10:
  v13 = *(this + 6);
  if (v13)
  {
    CFRelease(v13);
    *(this + 6) = 0;
  }

  if (v11)
  {
    CFRelease(v11);
  }

  v14 = CFStringGetCStringPtr(theString, 0);
  YonkersUpdateController::YonkersLog(this, "%s: Exiting execCommand: command = %s, result = 0x%X, persoLoop = %d \n", "execCommand", v14, v12, *(this + 39));
  return v12;
}

uint64_t YonkersUpdateController::eventCmdQueryInfo(YonkersUpdateController *this)
{
  v2 = *MEMORY[0x29EDB8ED8];
  v3 = OUTLINED_FUNCTION_1_0();
  *(this + 6) = OUTLINED_FUNCTION_1_0();
  if (*(this + 17) == 1)
  {
    YonkersUpdateController::YonkersLog(this, "%s: Begin Fusing \n", "eventCmdQueryInfo");
    OUTLINED_FUNCTION_0_1(v4, *MEMORY[0x29EDCACF0]);
    OUTLINED_FUNCTION_0_1(v5, *MEMORY[0x29EDCACE8]);
    OUTLINED_FUNCTION_0_1(v6, *MEMORY[0x29EDCACD8]);
    OUTLINED_FUNCTION_0_1(v7, *MEMORY[0x29EDCACC8]);
    OUTLINED_FUNCTION_0_1(v8, *MEMORY[0x29EDCACD0]);
    DeviceInfoDict = YonkersDevice::PreFusing(*(this + 3), *(this + 38));
    if (DeviceInfoDict)
    {
      goto LABEL_31;
    }

    YonkersUpdateController::YonkersLog(this, "%s: Finished pre-fusing \n");
  }

  else if (*(this + 19) == 1)
  {
    YonkersUpdateController::YonkersLog(this, "%s: Begin Certification \n", "eventCmdQueryInfo");
    OUTLINED_FUNCTION_0_1(v10, *MEMORY[0x29EDCACC8]);
    OUTLINED_FUNCTION_0_1(v11, *MEMORY[0x29EDCACD0]);
    OUTLINED_FUNCTION_0_1(v12, *MEMORY[0x29EDCACD8]);
    DeviceInfoDict = YonkersDevice::PreFusing(*(this + 3), *(this + 38));
    if (DeviceInfoDict)
    {
      goto LABEL_31;
    }

    YonkersUpdateController::YonkersLog(this, "%s: Finished pre-certification \n");
  }

  else if (*(this + 21) == 1)
  {
    YonkersUpdateController::YonkersLog(this, "%s: Begin Personalization \n", "eventCmdQueryInfo");
    OUTLINED_FUNCTION_0_1(v13, *MEMORY[0x29EDCACD0]);
    OUTLINED_FUNCTION_0_1(v14, *MEMORY[0x29EDCAC98]);
    OUTLINED_FUNCTION_0_1(v15, *MEMORY[0x29EDCACC8]);
    YonkersUpdateController::YonkersLog(this, "%s: Finished pre-personalizing \n");
  }

  DeviceInfoDict = YonkersDevice::CreateDeviceInfoDict(*(this + 3), v3);
  if (DeviceInfoDict)
  {
LABEL_31:
    YonkersMeasurementTags = DeviceInfoDict;
    if (!v3)
    {
      return YonkersMeasurementTags;
    }

    goto LABEL_29;
  }

  v16 = *(this + 3);
  if (*(this + 35) == 1 && !*(v16 + 8) && !*(this + 17) && !*(this + 19) && *(this + 21) == 1)
  {
    v17 = *(this + 39);
    v18 = v17 == 4 || v17 == 2;
    if (v18)
    {
      v18 = *(v16 + 24) == 0;
      *(v16 + 24) = *(v16 + 24) == 0;
      if (v18)
      {
        v19 = 59905;
      }

      else
      {
        v19 = 6657;
      }

      SavageCFDictionarySetInteger32(v3, *MEMORY[0x29EDCACB0], v19);
      v17 = *(this + 39);
      v16 = *(this + 3);
    }

    if (v17 >= 3)
    {
      *(v16 + 25) = *(v16 + 25) == 0;
    }
  }

  SavageCFDictionarySetBoolean(v3, @"YonkersIsYmgt", *(v16 + 24));
  SavageCFDictionarySetBoolean(v3, *MEMORY[0x29EDCACC0], *(*(this + 3) + 25));
  YonkersMeasurementTags = GetYonkersMeasurementTags(v3, this + 64);
  if (!YonkersMeasurementTags)
  {
    CFDictionarySetValue(*(this + 6), *MEMORY[0x29EDCAC68], v3);
  }

  if (v3)
  {
LABEL_29:
    CFRelease(v3);
  }

  return YonkersMeasurementTags;
}

uint64_t YonkersUpdateController::getFirmware(YonkersUpdateController *this, unsigned __int8 **a2, unsigned int *a3, const __CFString *a4)
{
  v5 = *(this + 5);
  if (!v5)
  {
    return 2;
  }

  Value = CFDictionaryGetValue(v5, @"FirmwareData");
  if (!Value)
  {
    return 10;
  }

  v10 = Value;
  v11 = CFGetTypeID(Value);
  if (v11 != CFDictionaryGetTypeID())
  {
    return 10;
  }

  v12 = CFDictionaryGetValue(v10, a4);
  if (!v12)
  {
    return 10;
  }

  v13 = v12;
  v14 = CFGetTypeID(v12);
  if (v14 != CFDataGetTypeID())
  {
    return 10;
  }

  Length = CFDataGetLength(v13);
  *a3 = Length;
  if (!*(this + 22))
  {
    return 4;
  }

  v16 = calloc(Length, 1uLL);
  *a2 = v16;
  if (!*(this + 10))
  {
    return 3;
  }

  v18.length = *a3;
  v18.location = 0;
  CFDataGetBytes(v13, v18, v16);
  return 0;
}

uint64_t YonkersUpdateController::getTSSResponse(YonkersUpdateController *this)
{
  v2 = *(this + 5);
  if (!v2)
  {
    return 2;
  }

  Value = CFDictionaryGetValue(v2, *MEMORY[0x29EDCACE0]);
  if (!Value)
  {
    return 10;
  }

  v4 = Value;
  v5 = CFGetTypeID(Value);
  if (v5 != CFDataGetTypeID())
  {
    return 10;
  }

  BytePtr = CFDataGetBytePtr(v4);
  Length = CFDataGetLength(v4);
  YonkersUpdateController::getSignedCertificate(this, BytePtr);
  if (!*(this + 14))
  {
    return 3;
  }

  YonkersUpdateController::YonkersLog(this, "%s - %d bytes\n", "getTSSResponse", Length);
  return 0;
}

void YonkersUpdateController::formatAndStitchFiles(YonkersUpdateController *this)
{
  v27 = *MEMORY[0x29EDCA608];
  v1 = *(this + 30);
  v2 = (v1 + 8223) & 0xFFFFFFE0;
  v3 = *(this + 22);
  HIBYTE(v26) = 0;
  if (*(this + 10) && *(this + 14))
  {
    v5 = 3 * v1;
    v6 = *(*(this + 3) + 38) ? 51 : 48;
    v7 = v5 + v6;
    if (*(this + 17) == 1 || *(this + 19) == 1)
    {
      v8 = 3 * v3 + 6;
    }

    else
    {
      v8 = 3 * v3;
    }

    v9 = (v7 + v8 + 32);
    *(this + 35) = v9;
    v10 = calloc(v9, 1uLL);
    *(this + 18) = v10;
    if (v10)
    {
      *v10 = 0;
      *(v10 + 1) = v7;
      *(v10 + 2) = v8;
      *(v10 + 20) = 0;
      *(v10 + 12) = 0;
      *(v10 + 7) = 0;
      YonkersUpdateController::YonkersLog(this, "%s -  certStartAddr=0x%08X, firmwareStartAddr=0x%08X, theCompletePatchFileLen=%d, signedCertificateLen=%d, firmwareDataLen=%d, 4cc=%s \n", "formatAndStitchFiles", 0x2000, v2, *(this + 35), *(this + 30), *(this + 22), (*(this + 3) + 36));
      v11 = 0;
      v12 = &v26 + 3;
      v13 = 4608;
      while (1)
      {
        v14 = *(this + 35);
        if (v11 + 35 > v14)
        {
          break;
        }

        *(*(this + 18) + v11 + 32) = BYTE1(v13);
        *(*(this + 18) + v11 + 33) = v13;
        v15 = *v12--;
        *(*(this + 18) + v11 + 34) = v15;
        ++v13;
        v11 += 3;
        if (v11 == 48)
        {
          LODWORD(v14) = *(this + 35);
          v16 = 80;
          goto LABEL_16;
        }
      }

      v16 = v11 + 32;
LABEL_16:
      if (*(*(this + 3) + 38))
      {
        if (v16 + 3 > v14)
        {
          goto LABEL_37;
        }

        *(*(this + 18) + v16) = 18;
        *(*(this + 18) + v16 + 1) = 31;
        *(*(this + 18) + v16 + 2) = *(*(this + 3) + 36);
        LODWORD(v14) = *(this + 35);
        v16 += 3;
      }

      v17 = v16 + 3;
      if (v16 + 3 <= v14)
      {
        if (*(this + 30))
        {
          v18 = 0;
          v19 = v16;
          v20 = 0x2000;
          while (1)
          {
            v21 = v19 + 3;
            if (v19 + 3 > *(this + 35))
            {
              break;
            }

            *(*(this + 18) + v19) = BYTE1(v20);
            *(*(this + 18) + v19 + 1) = v20;
            *(*(this + 18) + v19 + 2) = *(*(this + 14) + v18++);
            ++v20;
            v19 += 3;
            if (v18 >= *(this + 30))
            {
              LODWORD(v14) = *(this + 35);
              v16 = v21;
              goto LABEL_26;
            }
          }

          LODWORD(v14) = *(this + 35);
          v16 = v19;
LABEL_26:
          v17 = v16 + 3;
        }

        if (v17 <= v14)
        {
          if (*(this + 22))
          {
            v22 = 0;
            v23 = v16;
            do
            {
              if (*(this + 35) < (v16 + 3))
              {
                break;
              }

              *(*(this + 18) + v23) = BYTE1(v2);
              *(*(this + 18) + v23 + 1) = v2;
              *(*(this + 18) + v23 + 2) = *(*(this + 10) + v22++);
              ++v2;
              v23 += 3;
              v16 += 3;
            }

            while (v22 < *(this + 22));
          }

          if (*(this + 17) == 1 || *(this + 19) == 1)
          {
            v24 = v16 + 3;
            if (v24 <= *(this + 35))
            {
              *(*(this + 18) + v16) = 17;
              *(*(this + 18) + v16 + 1) = 3;
              *(*(this + 18) + v16 + 2) = 1;
              if ((v16 + 6) <= *(this + 35))
              {
                *(*(this + 18) + v24) = 17;
                *(*(this + 18) + v16 + 4) = 19;
                *(*(this + 18) + v16 + 5) = 1;
              }
            }
          }
        }
      }
    }
  }

LABEL_37:
  v25 = *MEMORY[0x29EDCA608];
}

void YonkersUpdateController::getSignedCertificate()
{
  __assert_rtn("getSignedCertificate", "YonkersUpdateController.cpp", 563, "numLenOctets <= MAX_LEN_OCTETS");
}

{
  __assert_rtn("getSignedCertificate", "YonkersUpdateController.cpp", 581, "numLenOctets <= MAX_LEN_OCTETS");
}

{
  __assert_rtn("getSignedCertificate", "YonkersUpdateController.cpp", 612, "numLenOctets <= MAX_LEN_OCTETS");
}

{
  __assert_rtn("getSignedCertificate", "YonkersUpdateController.cpp", 632, "numLenOctets <= MAX_LEN_OCTETS");
}

{
  __assert_rtn("getSignedCertificate", "YonkersUpdateController.cpp", 650, "numLenOctets <= MAX_LEN_OCTETS");
}

{
  __assert_rtn("getSignedCertificate", "YonkersUpdateController.cpp", 717, "numLenOctets <= MAX_LEN_OCTETS");
}

{
  __assert_rtn("getSignedCertificate", "YonkersUpdateController.cpp", 736, "numLenOctets <= MAX_LEN_OCTETS");
}

{
  __assert_rtn("getSignedCertificate", "YonkersUpdateController.cpp", 755, "numLenOctets <= MAX_LEN_OCTETS");
}

void YonkersUpdateController::validateSignatureLen()
{
  __assert_rtn("validateSignatureLen", "YonkersUpdateController.cpp", 837, "sigSLen >= MIN_SIG_LEN && sigSLen <= MAX_ACCEPTED_SIG_LEN");
}

{
  __assert_rtn("validateSignatureLen", "YonkersUpdateController.cpp", 814, "sigRLen >= MIN_SIG_LEN && sigRLen <= MAX_ACCEPTED_SIG_LEN");
}

uint64_t SavageDevice::CheckProvisioningStatus(SavageDevice *this)
{
  v48 = *MEMORY[0x29EDCA608];
  v2 = 3758097136;
  v3 = *MEMORY[0x29EDB8ED8];
  v4 = OUTLINED_FUNCTION_0_0(*(this + 30), @"SavageUID");
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 != CFDataGetTypeID())
    {
      goto LABEL_36;
    }

    v7 = OUTLINED_FUNCTION_0_2();
    v49.length = 16;
    CFDataGetBytes(v7, v49, v8);
    CFRelease(v5);
    *(this + 7) = bswap64(0);
    v9 = OUTLINED_FUNCTION_0_0(*(this + 30), @"SavageMNS");
    if (v9)
    {
      v5 = v9;
      v10 = CFGetTypeID(v9);
      if (v10 != CFDataGetTypeID())
      {
        goto LABEL_36;
      }

      BytePtr = CFDataGetBytePtr(v5);
      if (BytePtr)
      {
        v12 = *BytePtr;
        if (v12 == 10 || v12 == 6)
        {
          *(this + 17) = 1;
        }
      }

      CFRelease(v5);
      v14 = OUTLINED_FUNCTION_0_0(*(this + 30), @"SavageChipID");
      if (v14)
      {
        v5 = v14;
        v15 = CFGetTypeID(v14);
        if (v15 != CFDataGetTypeID())
        {
          goto LABEL_36;
        }

        v16 = OUTLINED_FUNCTION_0_2();
        v50.length = 4;
        CFDataGetBytes(v16, v50, v17);
        *(this + 28) = bswap32(*(this + 28));
        CFRelease(v5);
        v18 = OUTLINED_FUNCTION_0_0(*(this + 30), @"SavageKCV");
        if (v18)
        {
          v5 = v18;
          v19 = CFGetTypeID(v18);
          if (v19 != CFDataGetTypeID())
          {
            goto LABEL_36;
          }

          v20 = OUTLINED_FUNCTION_0_2();
          v51.length = 3;
          CFDataGetBytes(v20, v51, v21);
          CFRelease(v5);
          v22 = OUTLINED_FUNCTION_0_0(*(this + 30), @"SavageWrapOutputKey");
          if (v22)
          {
            v23 = v22;
            v24 = CFGetTypeID(v22);
            if (v24 == CFDataGetTypeID())
            {
              v25 = OUTLINED_FUNCTION_0_2();
              v52.length = 32;
              CFDataGetBytes(v25, v52, v26);
            }

            CFRelease(v23);
            v27 = bswap64(0);
          }

          else
          {
            v27 = 0;
          }

          *(this + 12) = v27;
          v28 = OUTLINED_FUNCTION_0_0(*(this + 30), @"SavagePubKeyHmac");
          if (v28)
          {
            v29 = v28;
            v30 = CFGetTypeID(v28);
            if (v30 == CFDataGetTypeID())
            {
              v31 = OUTLINED_FUNCTION_0_2();
              v53.length = 32;
              CFDataGetBytes(v31, v53, v32);
            }

            CFRelease(v29);
            v33 = bswap64(0);
          }

          else
          {
            v33 = 0;
          }

          *(this + 9) = v33;
          v34 = OUTLINED_FUNCTION_0_0(*(this + 30), @"SavageAuthPubKey");
          if (v34)
          {
            v5 = v34;
            v35 = CFGetTypeID(v34);
            if (v35 != CFDataGetTypeID())
            {
              goto LABEL_36;
            }

            *this = SavageSafeRetain(v5);
            CFRelease(v5);
            v36 = OUTLINED_FUNCTION_0_0(*(this + 30), @"SavageAuthSalt");
            if (v36)
            {
              v5 = v36;
              v37 = CFGetTypeID(v36);
              if (v37 != CFDataGetTypeID())
              {
                goto LABEL_36;
              }

              v38 = OUTLINED_FUNCTION_0_2();
              v54.length = 16;
              CFDataGetBytes(v38, v54, v39);
              CFRelease(v5);
              *(this + 11) = bswap64(0);
              v40 = OUTLINED_FUNCTION_0_0(*(this + 30), @"SavageAuthResponse");
              if (v40)
              {
                v5 = v40;
                v41 = CFGetTypeID(v40);
                if (v41 != CFDataGetTypeID())
                {
                  goto LABEL_36;
                }

                *(this + 1) = SavageSafeRetain(v5);
                CFRelease(v5);
                v42 = OUTLINED_FUNCTION_0_0(*(this + 30), @"SavageAuthPubKeyHmac");
                if (v42)
                {
                  v5 = v42;
                  v43 = CFGetTypeID(v42);
                  if (v43 == CFDataGetTypeID())
                  {
                    v44 = OUTLINED_FUNCTION_0_2();
                    v55.length = 32;
                    CFDataGetBytes(v44, v55, v45);
                    CFRelease(v5);
                    v2 = 0;
                    *(this + 10) = bswap64(0);
                    goto LABEL_35;
                  }

LABEL_36:
                  CFRelease(v5);
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_35:
  v46 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t SavageDevice::CreateNGIDProvBlob(uint64_t a1, UInt8 *a2)
{
  v4 = 3758097136;
  v5 = *MEMORY[0x29EDB8ED8];
  CFProperty = IORegistryEntryCreateCFProperty(*(a1 + 120), @"SavageUID", *MEMORY[0x29EDB8ED8], 0);
  if (CFProperty)
  {
    v7 = CFProperty;
    v8 = CFGetTypeID(CFProperty);
    if (v8 != CFDataGetTypeID())
    {
      goto LABEL_8;
    }

    v14.location = 0;
    v14.length = 16;
    CFDataGetBytes(v7, v14, a2);
    CFRelease(v7);
    v9 = IORegistryEntryCreateCFProperty(*(a1 + 120), @"SavagePubKey", v5, 0);
    if (!v9)
    {
      return v4;
    }

    v7 = v9;
    v10 = CFGetTypeID(v9);
    if (v10 != CFDataGetTypeID())
    {
LABEL_8:
      CFRelease(v7);
      return v4;
    }

    v15.location = 0;
    v15.length = 56;
    CFDataGetBytes(v7, v15, a2 + 16);
    CFRelease(v7);
    v11 = IORegistryEntryCreateCFProperty(*(a1 + 120), @"SavageKCV", v5, 0);
    if (v11)
    {
      v7 = v11;
      v12 = CFGetTypeID(v11);
      if (v12 == CFDataGetTypeID())
      {
        v16.location = 0;
        v16.length = 3;
        CFDataGetBytes(v7, v16, a2 + 144);
        v4 = 0;
      }

      goto LABEL_8;
    }
  }

  return v4;
}

uint64_t SavageDevice::CreateDeviceInfoDict(SavageDevice *this, __CFDictionary *a2)
{
  v3 = 3758097136;
  v4 = *MEMORY[0x29EDB8ED8];
  v5 = OUTLINED_FUNCTION_2(*(this + 30), @"SavageUID");
  if (v5)
  {
    v6 = v5;
    v7 = CFGetTypeID(v5);
    TypeID = CFDataGetTypeID();
    if (v7 != TypeID)
    {
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_3(TypeID, *MEMORY[0x29EDCABD0]);
    CFRelease(v6);
    v9 = OUTLINED_FUNCTION_2(*(this + 30), @"SavageNonce");
    if (v9)
    {
      v6 = v9;
      v10 = CFGetTypeID(v9);
      v11 = CFDataGetTypeID();
      if (v10 != v11)
      {
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_3(v11, *MEMORY[0x29EDCABB8]);
      CFRelease(v6);
      v12 = OUTLINED_FUNCTION_2(*(this + 30), @"SavageChipID");
      if (v12)
      {
        v6 = v12;
        v13 = CFGetTypeID(v12);
        v14 = CFDataGetTypeID();
        if (v13 != v14)
        {
          goto LABEL_24;
        }

        OUTLINED_FUNCTION_3(v14, *MEMORY[0x29EDCABB0]);
        CFRelease(v6);
        v15 = OUTLINED_FUNCTION_2(*(this + 30), @"SavageDeviceRev");
        if (v15)
        {
          v6 = v15;
          v16 = CFGetTypeID(v15);
          v17 = CFDataGetTypeID();
          if (v16 != v17)
          {
            goto LABEL_24;
          }

          OUTLINED_FUNCTION_3(v17, *MEMORY[0x29EDCABC8]);
          BytePtr = CFDataGetBytePtr(v6);
          if (BytePtr)
          {
            *(this + 68) = (*BytePtr & 0xF0) == 160;
          }

          CFRelease(v6);
          v19 = OUTLINED_FUNCTION_2(*(this + 30), @"SavageMNS");
          if (v19)
          {
            v6 = v19;
            v20 = CFGetTypeID(v19);
            if (v20 != CFDataGetTypeID())
            {
              goto LABEL_24;
            }

            v21 = CFDataGetBytePtr(v6);
            if (v21)
            {
              v22 = *v21;
              if (v22 == 6)
              {
                *(this + 69) = 0;
                v22 = *v21;
              }

              if (v22 == 10)
              {
                *(this + 69) = 1;
              }
            }

            CFRelease(v6);
            v23 = *MEMORY[0x29EDBB118];
            v24 = IOServiceNameMatching("ApplePearlSEPDriver");
            MatchingService = IOServiceGetMatchingService(v23, v24);
            v3 = MatchingService;
            if (MatchingService)
            {
              v26 = OUTLINED_FUNCTION_2(MatchingService, @"FDRDataEncryptionKey");
              if (!v26)
              {
LABEL_22:
                IOObjectRelease(v3);
                return 0;
              }

              v6 = v26;
              v27 = CFGetTypeID(v26);
              if (v27 == CFDataGetTypeID())
              {
                v28 = OUTLINED_FUNCTION_0_2();
                v31.length = 32;
                CFDataGetBytes(v28, v31, v29);
                *(this + 18) = 1;
                CFRelease(v6);
                goto LABEL_22;
              }

              IOObjectRelease(v3);
              v3 = 0;
LABEL_24:
              CFRelease(v6);
            }
          }
        }
      }
    }
  }

  return v3;
}

uint64_t SavageDevice::Fusing(SavageDevice *this, unsigned int a2, const unsigned __int8 *a3, unsigned int a4)
{
  v11[3] = *MEMORY[0x29EDCA608];
  if (*(this + 105))
  {
    v8 = *(this + 16);
    v7 = SavageCamInterfaceSensorFusing();
    goto LABEL_7;
  }

  v5 = *(this + 31);
  v11[2] = a2;
  v6 = 3758097090;
  if (a3)
  {
    if (a4)
    {
      v11[0] = a3;
      v11[1] = a4;
      v6 = 3758097084;
      if (v5)
      {
        v7 = IOConnectCallScalarMethod(v5, 2u, v11, 3u, 0, 0);
LABEL_7:
        v6 = v7;
      }
    }
  }

  *(this + 7) = 0;
  SavageDevice::CheckProvisioningStatus(this);
  v9 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t SavageDevice::AuthFlow(SavageDevice *this, unsigned int a2, const unsigned __int8 *a3)
{
  v4 = *(this + 16);
  v5 = SavageCamInterfaceSensorAuth();
  SavageDevice::CheckProvisioningStatus(this);
  return v5;
}

uint64_t JasmineIRDevice::CheckProvisioningStatus(JasmineIRDevice *this)
{
  v41 = *MEMORY[0x29EDCA608];
  v2 = 3758097136;
  v3 = *MEMORY[0x29EDB8ED8];
  v4 = OUTLINED_FUNCTION_0_0(*(this + 30), @"SavageUID");
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 != CFDataGetTypeID())
    {
      goto LABEL_29;
    }

    v7 = OUTLINED_FUNCTION_0_2();
    v42.length = 16;
    CFDataGetBytes(v7, v42, v8);
    CFRelease(v5);
    *(this + 7) = bswap64(0);
    v9 = OUTLINED_FUNCTION_0_0(*(this + 30), @"SavageFabRevision");
    if (!v9)
    {
      v2 = 0;
      goto LABEL_26;
    }

    v5 = v9;
    v10 = CFGetTypeID(v9);
    if (v10 != CFDataGetTypeID())
    {
      v2 = 0;
      goto LABEL_29;
    }

    CFDataGetBytePtr(v5);
    CFRelease(v5);
    v11 = OUTLINED_FUNCTION_0_0(*(this + 30), @"SavageChipID");
    if (v11)
    {
      v5 = v11;
      v12 = CFGetTypeID(v11);
      if (v12 != CFDataGetTypeID())
      {
        goto LABEL_29;
      }

      v13 = OUTLINED_FUNCTION_0_2();
      v43.length = 4;
      CFDataGetBytes(v13, v43, v14);
      CFRelease(v5);
      v15 = OUTLINED_FUNCTION_0_0(*(this + 30), @"SavageWrapOutputKey");
      if (v15)
      {
        v16 = v15;
        v17 = CFGetTypeID(v15);
        if (v17 == CFDataGetTypeID())
        {
          v18 = OUTLINED_FUNCTION_0_2();
          v44.length = 32;
          CFDataGetBytes(v18, v44, v19);
        }

        CFRelease(v16);
        v20 = bswap64(0);
      }

      else
      {
        v20 = 0;
      }

      *(this + 11) = v20;
      v21 = OUTLINED_FUNCTION_0_0(*(this + 30), @"SavagePubKeyHmac");
      if (v21)
      {
        v22 = v21;
        v23 = CFGetTypeID(v21);
        if (v23 == CFDataGetTypeID())
        {
          v24 = OUTLINED_FUNCTION_0_2();
          v45.length = 32;
          CFDataGetBytes(v24, v45, v25);
        }

        CFRelease(v22);
        v26 = bswap64(0);
      }

      else
      {
        v26 = 0;
      }

      *(this + 8) = v26;
      v27 = OUTLINED_FUNCTION_0_0(*(this + 30), @"SavageAuthPubKey");
      if (v27)
      {
        v5 = v27;
        v28 = CFGetTypeID(v27);
        if (v28 != CFDataGetTypeID())
        {
          goto LABEL_29;
        }

        *this = SavageSafeRetain(v5);
        CFRelease(v5);
        v29 = OUTLINED_FUNCTION_0_0(*(this + 30), @"SavageAuthSalt");
        if (v29)
        {
          v5 = v29;
          v30 = CFGetTypeID(v29);
          if (v30 != CFDataGetTypeID())
          {
            goto LABEL_29;
          }

          v31 = OUTLINED_FUNCTION_0_2();
          v46.length = 16;
          CFDataGetBytes(v31, v46, v32);
          CFRelease(v5);
          *(this + 10) = bswap64(0);
          v33 = OUTLINED_FUNCTION_0_0(*(this + 30), @"SavageAuthResponse");
          if (v33)
          {
            v5 = v33;
            v34 = CFGetTypeID(v33);
            if (v34 != CFDataGetTypeID())
            {
              goto LABEL_29;
            }

            *(this + 1) = SavageSafeRetain(v5);
            CFRelease(v5);
            v35 = OUTLINED_FUNCTION_0_0(*(this + 30), @"SavageAuthPubKeyHmac");
            if (v35)
            {
              v5 = v35;
              v36 = CFGetTypeID(v35);
              if (v36 == CFDataGetTypeID())
              {
                v37 = OUTLINED_FUNCTION_0_2();
                v47.length = 32;
                CFDataGetBytes(v37, v47, v38);
                CFRelease(v5);
                v2 = 0;
                *(this + 9) = bswap64(0);
                goto LABEL_26;
              }

LABEL_29:
              CFRelease(v5);
            }
          }
        }
      }
    }
  }

LABEL_26:
  v39 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t JasmineIRDevice::CreateCertInfoBlob(uint64_t a1, uint64_t a2)
{
  v4 = 3758097136;
  v5 = *MEMORY[0x29EDB8ED8];
  v6 = OUTLINED_FUNCTION_0_0(*(a1 + 120), @"SavageMNS");
  if (!v6)
  {
    return v4;
  }

  v7 = v6;
  v8 = CFGetTypeID(v6);
  if (v8 != CFDataGetTypeID())
  {
    goto LABEL_19;
  }

  BytePtr = CFDataGetBytePtr(v7);
  if (BytePtr)
  {
    v10 = *BytePtr;
    if (v10 == 222)
    {
      *a2 = 0;
      v10 = *BytePtr;
    }

    if (v10 == 173)
    {
      *a2 = 1;
    }
  }

  CFRelease(v7);
  v11 = OUTLINED_FUNCTION_0_0(*(a1 + 120), @"SavageChipID");
  if (!v11)
  {
    return v4;
  }

  v7 = v11;
  v12 = CFGetTypeID(v11);
  if (v12 != CFDataGetTypeID())
  {
    goto LABEL_19;
  }

  v13 = CFDataGetBytePtr(v7);
  if (v13)
  {
    *(a2 + 4) = bswap32(*v13);
  }

  CFRelease(v7);
  v14 = OUTLINED_FUNCTION_0_0(*(a1 + 120), @"SavageUID");
  if (!v14)
  {
    return v4;
  }

  v7 = v14;
  v15 = CFGetTypeID(v14);
  if (v15 != CFDataGetTypeID())
  {
    goto LABEL_19;
  }

  v21.location = 0;
  v21.length = 16;
  CFDataGetBytes(v7, v21, (a2 + 8));
  CFRelease(v7);
  v16 = OUTLINED_FUNCTION_0_0(*(a1 + 120), @"SavagePubKey");
  if (!v16)
  {
    return v4;
  }

  v7 = v16;
  v17 = CFGetTypeID(v16);
  if (v17 != CFDataGetTypeID())
  {
LABEL_19:
    CFRelease(v7);
    return v4;
  }

  v22.location = 0;
  v22.length = 64;
  CFDataGetBytes(v7, v22, (a2 + 24));
  CFRelease(v7);
  v18 = OUTLINED_FUNCTION_0_0(*(a1 + 120), @"SavagePubKeyHmac");
  if (v18)
  {
    v7 = v18;
    v19 = CFGetTypeID(v18);
    if (v19 == CFDataGetTypeID())
    {
      v23.location = 0;
      v23.length = 32;
      CFDataGetBytes(v7, v23, (a2 + 88));
      v4 = 0;
    }

    goto LABEL_19;
  }

  return v4;
}

uint64_t JasmineIRDevice::CreateDeviceInfoDict(JasmineIRDevice *this, __CFDictionary *a2)
{
  v4 = 3758097136;
  v5 = *MEMORY[0x29EDB8ED8];
  v6 = OUTLINED_FUNCTION_2(*(this + 30), @"SavageUID");
  if (v6)
  {
    v7 = v6;
    v8 = CFGetTypeID(v6);
    if (v8 != CFDataGetTypeID())
    {
      goto LABEL_35;
    }

    CFDictionaryAddValue(a2, *MEMORY[0x29EDCAB28], v7);
    CFRelease(v7);
    v9 = OUTLINED_FUNCTION_2(*(this + 30), @"SavageUID");
    if (v9)
    {
      v7 = v9;
      v10 = CFGetTypeID(v9);
      if (v10 != CFDataGetTypeID())
      {
        goto LABEL_35;
      }

      CFDictionaryAddValue(a2, *MEMORY[0x29EDCAAB8], v7);
      CFRelease(v7);
      v11 = OUTLINED_FUNCTION_2(*(this + 30), @"SavageNonce");
      if (v11)
      {
        v7 = v11;
        v12 = CFGetTypeID(v11);
        if (v12 != CFDataGetTypeID())
        {
          goto LABEL_35;
        }

        CFDictionaryAddValue(a2, *MEMORY[0x29EDCAAC8], v7);
        CFRelease(v7);
        v13 = OUTLINED_FUNCTION_2(*(this + 30), @"SavageFabRevision");
        if (v13)
        {
          v7 = v13;
          v14 = CFGetTypeID(v13);
          if (v14 != CFDataGetTypeID())
          {
            goto LABEL_35;
          }

          BytePtr = CFDataGetBytePtr(v7);
          if (BytePtr)
          {
            v16 = __rev16(*BytePtr);
            SavageCFDictionarySetInteger32(a2, *MEMORY[0x29EDCAAC0], v16);
          }

          else
          {
            v16 = 0;
          }

          CFRelease(v7);
          v17 = OUTLINED_FUNCTION_2(*(this + 30), @"SavageChipID");
          if (v17)
          {
            v7 = v17;
            v18 = CFGetTypeID(v17);
            if (v18 != CFDataGetTypeID())
            {
              goto LABEL_35;
            }

            v19 = CFDataGetBytePtr(v7);
            if (v19)
            {
              SavageCFDictionarySetInteger32(a2, *MEMORY[0x29EDCAAB0], bswap32(*v19));
            }

            CFRelease(v7);
            v20 = OUTLINED_FUNCTION_2(*(this + 30), @"SavageMNS");
            if (v20)
            {
              v7 = v20;
              v21 = CFGetTypeID(v20);
              if (v21 != CFDataGetTypeID())
              {
                goto LABEL_35;
              }

              v22 = CFDataGetBytePtr(v7);
              if (v22 && *v22 == 173)
              {
                *(this + 96) = 1;
              }

              v23 = 0;
              v24 = &dword_299F6F460;
              v25 = &dword_299F6F480;
              while (1)
              {
                v26 = *v25++;
                if (v16 == v26 || v16 == *v24)
                {
                  break;
                }

                v23 -= 2;
                ++v24;
                if (v23 == -16)
                {
                  goto LABEL_27;
                }
              }

              v27 = (*(this + 96) != 0) - v23;
              snprintf(this + 107, 2uLL, "%x", v27);
              snprintf(this + 112, 2uLL, "%x", v27);
LABEL_27:
              if ((v16 | 0x10) != 0x90B0)
              {
                *(this + 109) = 0;
              }

              SavageCFDictionarySetBoolean(a2, @"JasmineIRIsProvisioned", *(this + 56));
              v28 = *MEMORY[0x29EDBB118];
              v29 = IOServiceNameMatching("ApplePearlSEPDriver");
              MatchingService = IOServiceGetMatchingService(v28, v29);
              if (MatchingService)
              {
                v31 = MatchingService;
                v32 = OUTLINED_FUNCTION_2(MatchingService, @"FDRDataEncryptionKey");
                v7 = v32;
                if (v32)
                {
                  v33 = CFGetTypeID(v32);
                  if (v33 == CFDataGetTypeID())
                  {
                    v35.location = 0;
                    v35.length = 32;
                    CFDataGetBytes(v7, v35, this + 19);
                    *(this + 18) = 1;
                    CFRelease(v7);
                    v7 = 0;
                  }
                }

                IOObjectRelease(v31);
              }

              v4 = 0;
              if (v7)
              {
LABEL_35:
                CFRelease(v7);
              }
            }
          }
        }
      }
    }
  }

  return v4;
}

uint64_t JasmineIRDevice::Fusing(JasmineIRDevice *this, unsigned int a2, const unsigned __int8 *a3)
{
  if (*(this + 98))
  {
    v5 = *(this + 16);
    v4 = SavageCamInterfaceSensorFusing();
  }

  else
  {
    v4 = 0;
  }

  *(this + 7) = 0;
  JasmineIRDevice::CheckProvisioningStatus(this);
  return v4;
}

uint64_t JasmineIRDevice::AuthFlow(JasmineIRDevice *this, unsigned int a2, const unsigned __int8 *a3)
{
  v4 = *(this + 16);
  v5 = SavageCamInterfaceSensorAuth();
  JasmineIRDevice::CheckProvisioningStatus(this);
  return v5;
}

uint64_t JasmineIRDevice::JasmineIRDeviceOpen(uint64_t a1, _DWORD *a2)
{
  result = SavageCamInterfaceOpen();
  if (!result)
  {
    result = *(a1 + 128);
    if (result)
    {
      result = SavageCamInterfaceGetSensorInfo();
      if (!result)
      {
        *(a1 + 100) = 0;
        *(a1 + 16) = 0;
      }
    }
  }

  *a2 = result;
  return result;
}

uint64_t SavageUpdateController::start(SavageUpdateController *this, const __CFDictionary *a2)
{
  *(this + 25) = 1;
  if (*(this + 250))
  {
    SavageDevice::CheckProvisioningStatus(*(this + 8));
  }

  OUTLINED_FUNCTION_1_1();
  SavageUpdateController::SavageLog(this, "%s: isProvisioned=0x%llX; isNGIDProvisioned=0x%X; isSocProdfused=%d; persoLoop = %d\n", "start", v5, *(v4 + 64), *(v4 + 70), *(this + 107));
  if (a2)
  {
    *(this + 32) = SavageSafeRetain(a2);
    v6 = *MEMORY[0x29EDCAB68];
    Value = CFDictionaryGetValue(a2, *MEMORY[0x29EDCAB68]);
    v8 = SavageSafeRetain(Value);
    if (v8 && (v9 = v8, v10 = CFGetTypeID(v8), v10 == CFDictionaryGetTypeID()))
    {
      if (CFDictionaryGetCount(v9))
      {
        a2 = CFCopyDescription(v9);
        CStringPtr = CFStringGetCStringPtr(a2, 0);
        v12 = CFStringGetCStringPtr(v6, 0);
        v13 = "No C string description available.";
        if (CStringPtr)
        {
          v13 = CStringPtr;
        }

        SavageUpdateController::SavageLog(this, "%s [input]: %s %s \n", "start", v12, v13);
        v14 = CFDictionaryGetValue(v9, *MEMORY[0x29EDCAB78]);
        if (v14)
        {
          v15 = CFGetTypeID(v14);
          if (v15 == CFBooleanGetTypeID())
          {
            *(this + 248) = 1;
          }
        }

        v16 = CFDictionaryGetValue(v9, *MEMORY[0x29EDCABA0]);
        if (*(this + 250) == 1)
        {
          v17 = v16;
          if (v16)
          {
            v18 = CFGetTypeID(v16);
            if (v18 == CFBooleanGetTypeID())
            {
              *(this + 249) = CFBooleanGetValue(v17);
            }
          }
        }

        v19 = CFDictionaryGetValue(v9, *MEMORY[0x29EDCAB50]);
        if (v19)
        {
          v20 = v19;
          v21 = CFGetTypeID(v19);
          if (v21 == CFBooleanGetTypeID() && CFBooleanGetValue(v20) == 1)
          {
            OUTLINED_FUNCTION_1_1();
            if (!v23)
            {
              if (*(v22 + 70))
              {
                v24 = 1;
              }

              else
              {
                v24 = 2;
              }

              *(this + 107) = v24;
            }
          }
        }

        v25 = CFDictionaryGetValue(v9, *MEMORY[0x29EDCAB90]);
        if (v25)
        {
          v26 = v25;
          v27 = CFGetTypeID(v25);
          if (v27 == CFBooleanGetTypeID())
          {
            *(this + 253) = CFBooleanGetValue(v26);
          }
        }

        v28 = CFDictionaryGetValue(v9, *MEMORY[0x29EDCAB98]);
        if (v28)
        {
          v29 = v28;
          v30 = CFGetTypeID(v28);
          if (v30 == CFBooleanGetTypeID())
          {
            *(this + 252) = CFBooleanGetValue(v29);
          }
        }

        v31 = CFDictionaryGetValue(v9, *MEMORY[0x29EDCAB70]);
        if (v31)
        {
          v32 = v31;
          v33 = CFGetTypeID(v31);
          if (v33 == CFBooleanGetTypeID())
          {
            *(this + 16) = CFBooleanGetValue(v32);
          }
        }

        v34 = CFDictionaryGetValue(v9, *MEMORY[0x29EDCAB58]);
        if (v34)
        {
          v35 = v34;
          v36 = CFGetTypeID(v34);
          if (v36 == CFBooleanGetTypeID())
          {
            *(this + 17) = CFBooleanGetValue(v35);
          }
        }

        v37 = CFDictionaryGetValue(v9, *MEMORY[0x29EDCAB30]);
        if (v37)
        {
          v38 = v37;
          v39 = CFGetTypeID(v37);
          if (v39 == CFBooleanGetTypeID())
          {
            *(this + 21) = CFBooleanGetValue(v38);
            *(this + 108) = 2;
          }
        }

        v40 = CFDictionaryGetValue(v9, *MEMORY[0x29EDCAB38]);
        if (v40)
        {
          v41 = v40;
          v42 = CFGetTypeID(v40);
          if (v42 == CFDataGetTypeID())
          {
            v43 = calloc(0x10uLL, 1uLL);
            *(this + 4) = v43;
            v67.location = 0;
            v67.length = 16;
            CFDataGetBytes(v41, v67, v43);
            *(this + 254) = 1;
            *(this + 21) = 1;
            *(this + 25) = 0;
          }
        }

        v44 = CFDictionaryGetValue(v9, *MEMORY[0x29EDCAC60]);
        if (v44)
        {
          v45 = v44;
          v46 = CFGetTypeID(v44);
          if (v46 == CFBooleanGetTypeID())
          {
            *(this + 23) = CFBooleanGetValue(v45);
          }
        }

        v47 = CFDictionaryGetValue(v9, *MEMORY[0x29EDCAB40]);
        if (v47)
        {
          v48 = v47;
          v49 = CFGetTypeID(v47);
          if (v49 == CFStringGetTypeID())
          {
            *(this + 19) = CFStringGetLength(v48) != 0;
          }
        }

        v50 = CFDictionaryGetValue(v9, @"PersonalizedFirmwareRootPath");
        if (v50)
        {
          v51 = v50;
          v52 = CFGetTypeID(v50);
          if (v52 == CFStringGetTypeID())
          {
            Mutable = CFStringCreateMutable(0, 0);
            *(this + 34) = Mutable;
            CFStringAppend(Mutable, v51);
          }
        }

        v54 = CFDictionaryGetValue(v9, *MEMORY[0x29EDCAB88]);
        if (v54)
        {
          v55 = v54;
          v56 = CFGetTypeID(v54);
          if (v56 == CFStringGetTypeID())
          {
            v57 = CFStringCreateMutable(0, 0);
            *(this + 35) = v57;
            CFStringAppend(v57, v55);
            if (!*(this + 34))
            {
              v58 = CFStringCreateMutable(0, 0);
              *(this + 34) = v58;
              CFStringAppend(v58, v55);
              CFStringAppend(*(this + 34), @"/usr/standalone/firmware/Savage/");
            }
          }
        }

        v59 = CFDictionaryGetValue(v9, *MEMORY[0x29EDCAB80]);
        if (v59)
        {
          v60 = v59;
          v61 = CFGetTypeID(v59);
          if (v61 == CFBooleanGetTypeID())
          {
            *(this + 251) = CFBooleanGetValue(v60);
          }
        }
      }

      else
      {
        a2 = 0;
        *(this + 248) = 1;
      }
    }

    else
    {
      SavageUpdateController::SavageLog(this, "%s: restoreOptions missing or not a dictionary\n", "start");
      a2 = 0;
    }
  }

  v62 = *(this + 8);
  if (!*(v62 + 17) && !*(this + 251))
  {
    *(this + 249) = 1;
  }

  v63 = *(this + 16);
  if (*(this + 16))
  {
    if (*(this + 19))
    {
      if (v63 != 1)
      {
        v63 = 1;
        goto LABEL_68;
      }

      v64 = 0;
      *(this + 25) = 0;
      *(this + 23) = 0;
      *(this + 21) = 0;
      v65 = 17;
      *(this + 19) = 0;
    }

    else
    {
      v63 = 0;
      *(this + 16) = 0;
      v64 = 1;
      v65 = 249;
    }

    *(this + v65) = v64;
  }

LABEL_68:
  if (*(this + 252) == 1 && !*(this + 17) && !*(this + 19))
  {
    *(this + 26) = 1;
  }

  if (!*(this + 251) || *(v62 + 56) || *(this + 17) || *(this + 19) || *(this + 21) || *(this + 23) | v63)
  {
    *(this + 107) = 1;
  }

  if (a2)
  {
    CFRelease(a2);
  }

  return 0;
}

uint64_t SavageUpdateController::execCommand(SavageUpdateController *this, CFStringRef theString, const __CFDictionary *a3, const __CFDictionary **a4)
{
  if (!theString)
  {
    goto LABEL_37;
  }

  CStringPtr = CFStringGetCStringPtr(theString, 0);
  SavageUpdateController::SavageLog(this, "%s: Entering execCommand: command = %s, persoLoop = %d  \n", "execCommand", CStringPtr, *(this + 107));
  if (*(this + 249))
  {
    goto LABEL_37;
  }

  if (a3)
  {
    SavageUpdateController::SavageLog(this, "%s: Input specified to the processing command\n", "execCommand");
    v9 = *(this + 32);
    if (v9)
    {
      CFRelease(v9);
      *(this + 32) = 0;
    }

    *(this + 32) = SavageSafeRetain(a3);
  }

  if (CFStringCompare(theString, @"queryInfo", 0) == kCFCompareEqualTo)
  {
    Info = SavageUpdateController::eventCmdQueryInfo(this);
    if (!Info)
    {
      if (*(this + 253) != 1)
      {
        goto LABEL_30;
      }

      SavageUpdateController::SavageLog(this, "%s: Fetching digest during SeaCookie pairing\n", "execCommand");
      Info = SavageUpdateController::getTSSResponse(this);
      if (!Info)
      {
        FirmwareDigest = SavageUpdateController::getFirmwareDigest(this);
        Stage = FirmwareDigest;
        if (a4 && !FirmwareDigest)
        {
LABEL_31:
          v20 = *(this + 33);
          if (v20)
          {
            v21 = SavageSafeRetain(v20);
            *a4 = v21;
            v22 = CFCopyDescription(v21);
            v23 = CFStringGetCStringPtr(v22, 0);
            if (v23)
            {
              v24 = v23;
            }

            else
            {
              v24 = "No C string description available.";
            }

            SavageUpdateController::SavageLog(this, "%s [output]: %s %s \n", "execCommand", "output dictionary of execCommand", v24);
            if (v22)
            {
              CFRelease(v22);
            }
          }

          goto LABEL_37;
        }

        goto LABEL_10;
      }
    }

LABEL_38:
    Stage = Info;
    goto LABEL_10;
  }

  if (CFStringCompare(theString, @"performNextStage", 0))
  {
    v10 = CFStringGetCStringPtr(theString, 0);
    SavageUpdateController::SavageLog(this, "%s: Unsupported command: %s\n", "execCommand", v10);
    Stage = 20;
    goto LABEL_10;
  }

  Info = SavageUpdateController::getFirmware(this);
  if (Info)
  {
    goto LABEL_38;
  }

  Info = SavageUpdateController::getTSSResponse(this);
  if (Info)
  {
    goto LABEL_38;
  }

  Stage = SavageUpdateController::eventCmdPerformNextStage(this, v16);
  v17 = *(this + 33);
  if (v17)
  {
    CFRelease(v17);
    *(this + 33) = 0;
  }

  if (!Stage)
  {
    if (!*(this + 17) && !*(this + 25) && !*(this + 19) && !*(this + 21) && !*(this + 23) && !*(this + 16))
    {
      *(this + 249) = 1;
    }

    OUTLINED_FUNCTION_1_1();
    SavageUpdateController::SavageLog(this, "%s: isProvisioned=0x%llX; isNGIDProvisioned=0x%X \n", "execCommand", v19, *(v18 + 64));
LABEL_30:
    if (a4)
    {
      goto LABEL_31;
    }

LABEL_37:
    Stage = 0;
  }

LABEL_10:
  v12 = CFStringGetCStringPtr(theString, 0);
  SavageUpdateController::SavageLog(this, "%s: Exiting execCommand: command = %s, result = 0x%X, persoLoop = %d \n", "execCommand", v12, Stage, *(this + 107));
  return Stage;
}

uint64_t SavageUpdateController::eventCmdQueryInfo(SavageUpdateController *this)
{
  v2 = *MEMORY[0x29EDB8ED8];
  *(this + 33) = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (*(this + 16) == 1)
  {
    SavageUpdateController::SavageLog(this, "%s: Begin NGID Provisioning \n", "eventCmdQueryInfo");
    SavageCFDictionarySetBoolean(*(this + 33), *MEMORY[0x29EDCAC30], 1);
    SavageCFDictionarySetBoolean(*(this + 33), *MEMORY[0x29EDCAC38], 1);
    DeviceInfoDict = OUTLINED_FUNCTION_0_3();
    if (!DeviceInfoDict)
    {
      SavageUpdateController::SavageLog(this, "%s: Finished pre NGID Provisioning \n");
      goto LABEL_25;
    }

    return DeviceInfoDict;
  }

  if (*(this + 17) != 1)
  {
    if (*(this + 19) == 1)
    {
      SavageUpdateController::SavageLog(this, "%s: Begin Certification \n", "eventCmdQueryInfo");
      SavageCFDictionarySetBoolean(*(this + 33), *MEMORY[0x29EDCAC30], 1);
      SavageCFDictionarySetBoolean(*(this + 33), *MEMORY[0x29EDCAC38], 1);
      SavageCFDictionarySetBoolean(*(this + 33), *MEMORY[0x29EDCAC40], 1);
      DeviceInfoDict = OUTLINED_FUNCTION_0_3();
      if (DeviceInfoDict)
      {
        return DeviceInfoDict;
      }

      SavageUpdateController::SavageLog(this, "%s: Finished pre-certification \n");
      goto LABEL_25;
    }

    if (*(this + 21) == 1)
    {
      SavageUpdateController::SavageLog(this, "%s: Begin Auth Flow \n", "eventCmdQueryInfo");
      SavageCFDictionarySetBoolean(*(this + 33), *MEMORY[0x29EDCAC30], 1);
      SavageCFDictionarySetBoolean(*(this + 33), *MEMORY[0x29EDCAC38], 1);
      SavageCFDictionarySetBoolean(*(this + 33), *MEMORY[0x29EDCAA68], 1);
      v4 = *(this + 33);
      if (!*(this + 254))
      {
        SavageCFDictionarySetBoolean(v4, *MEMORY[0x29EDCAC40], 1);
        DeviceInfoDict = OUTLINED_FUNCTION_0_3();
        if (DeviceInfoDict)
        {
          return DeviceInfoDict;
        }

        SavageUpdateController::SavageLog(this, "%s: Finished pre-auth-flow \n");
        goto LABEL_25;
      }

      v5 = "%s: Finished pre-auth-flow \n";
      v6 = MEMORY[0x29EDCABA8];
    }

    else
    {
      if (*(this + 23) == 1)
      {
        SavageUpdateController::SavageLog(this, "%s: Begin Wrapping \n", "eventCmdQueryInfo");
        SavageCFDictionarySetBoolean(*(this + 33), *MEMORY[0x29EDCAC38], 1);
        SavageCFDictionarySetBoolean(*(this + 33), *MEMORY[0x29EDCAA80], 1);
        SavageCFDictionarySetBoolean(*(this + 33), *MEMORY[0x29EDCAC30], 1);
        DeviceInfoDict = OUTLINED_FUNCTION_0_3();
        if (DeviceInfoDict)
        {
          return DeviceInfoDict;
        }

        SavageUpdateController::SavageLog(this, "%s: Finished pre-wrapping \n");
        goto LABEL_25;
      }

      if (*(this + 25) != 1)
      {
        goto LABEL_25;
      }

      SavageUpdateController::SavageLog(this, "%s: Begin Personalization \n", "eventCmdQueryInfo");
      SavageCFDictionarySetBoolean(*(this + 33), *MEMORY[0x29EDCAC38], 1);
      SavageCFDictionarySetBoolean(*(this + 33), *MEMORY[0x29EDCABA8], 1);
      SavageCFDictionarySetBoolean(*(this + 33), *MEMORY[0x29EDCAC30], 1);
      v7 = *(this + 8);
      if (*(v7 + 112) < 0x5065u || !*(v7 + 56))
      {
        v5 = "%s: Finished pre-personalizing \n";
        goto LABEL_24;
      }

      SavageCFDictionarySetBoolean(*(this + 33), *MEMORY[0x29EDCAA78], 1);
      v4 = *(this + 33);
      v5 = "%s: Finished pre-personalizing \n";
      v6 = MEMORY[0x29EDCAA68];
    }

    SavageCFDictionarySetBoolean(v4, *v6, 1);
LABEL_24:
    SavageUpdateController::SavageLog(this, v5, "eventCmdQueryInfo");
    goto LABEL_25;
  }

  SavageUpdateController::SavageLog(this, "%s: Begin Fusing \n", "eventCmdQueryInfo");
  SavageCFDictionarySetBoolean(*(this + 33), *MEMORY[0x29EDCAC50], 1);
  SavageCFDictionarySetBoolean(*(this + 33), *MEMORY[0x29EDCAC58], 1);
  SavageCFDictionarySetBoolean(*(this + 33), *MEMORY[0x29EDCAC38], 1);
  SavageCFDictionarySetBoolean(*(this + 33), *MEMORY[0x29EDCAC30], 1);
  DeviceInfoDict = OUTLINED_FUNCTION_0_3();
  if (DeviceInfoDict)
  {
    return DeviceInfoDict;
  }

  SavageUpdateController::SavageLog(this, "%s: Finished pre-fusing \n");
LABEL_25:
  DeviceInfoDict = SavageDevice::CreateDeviceInfoDict(*(this + 8), *(this + 33));
  if (DeviceInfoDict)
  {
    return DeviceInfoDict;
  }

  if (*(this + 252) != 1 || *(this + 251) != 1 || (OUTLINED_FUNCTION_1_1(), !v9) || *(this + 17) || *(this + 19) || *(this + 21) || *(this + 23) || *(this + 25) != 1)
  {
    v11 = 0;
  }

  else
  {
    if (*(v8 + 68))
    {
      v10 = -32;
    }

    else
    {
      v10 = -16;
    }

    bytes = v10;
    v11 = CFDataCreate(v2, &bytes, 1);
    CFDictionarySetValue(*(this + 33), *MEMORY[0x29EDCABC8], v11);
  }

  v12 = *(this + 8);
  if (*(this + 251) == 1 && !*(v12 + 56) && !*(this + 17) && !*(this + 19) && !*(this + 21) && !*(this + 23) && *(this + 25) == 1 && *(this + 107) == 2)
  {
    *(v12 + 69) = *(v12 + 69) == 0;
  }

  SavageCFDictionarySetBoolean(*(this + 33), *MEMORY[0x29EDCABC0], *(v12 + 69));
  RelevantMeasurementTags = GetRelevantMeasurementTags(*(this + 33), this + 37, this + 36);
  if (v11)
  {
    CFRelease(v11);
  }

  return RelevantMeasurementTags;
}

uint64_t SavageUpdateController::getTSSResponse(CFDictionaryRef *this)
{
  v12 = 0;
  v2 = *MEMORY[0x29EDB8ED8];
  CFDictionaryGetValue(this[33], *MEMORY[0x29EDCABB0]);
  v3 = AMFDRCreateInstanceString();
  if (SavageCFStringToUInt32(v3, &v12, 16))
  {
    v4 = this[32];
    if (v4)
    {
      if (v12 <= 0x5064)
      {
        v5 = MEMORY[0x29EDCAC48];
      }

      else
      {
        v5 = MEMORY[0x29EDCAA70];
      }

      Value = CFDictionaryGetValue(v4, *v5);
      if (Value && (v7 = Value, v8 = CFGetTypeID(Value), v8 == CFDataGetTypeID()))
      {
        BytePtr = CFDataGetBytePtr(v7);
        CFDataGetLength(v7);
        SavageUpdateController::getSignedCertificate(this, BytePtr);
        if (this[48])
        {
          v10 = 0;
        }

        else
        {
          v10 = 3;
        }
      }

      else
      {
        v10 = 10;
      }
    }

    else
    {
      v10 = 2;
    }
  }

  else
  {
    v10 = 11;
  }

  SavageUpdateController::SavageLog(this, "%s: - result = 0x%08X (chipID = 0x%08X) \n", "getTSSResponse", v10, v12);
  if (v3)
  {
    CFRelease(v3);
  }

  return v10;
}

size_t SavageUpdateController::getFirmware(SavageUpdateController *this)
{
  v2 = *(this + 32);
  if (!v2)
  {
    return 2;
  }

  Value = CFDictionaryGetValue(v2, *MEMORY[0x29EDCAB60]);
  if (!Value)
  {
    return 10;
  }

  v4 = Value;
  v5 = CFGetTypeID(Value);
  if (v5 != CFDictionaryGetTypeID())
  {
    v6 = CFGetTypeID(v4);
    if (v6 == CFDataGetTypeID())
    {
      SavageUpdateController::SavageLog(this, "%s: Savage firmware passed in as a data ref \n", "getFirmware");
      goto LABEL_8;
    }

    return 10;
  }

  SavageUpdateController::SavageLog(this, "%s: Savage firmware passed in as a dictionary \n", "getFirmware");
  v4 = CFDictionaryGetValue(v4, *MEMORY[0x29EDCAB48]);
  if (!v4)
  {
    return 10;
  }

LABEL_8:
  v7 = CFGetTypeID(v4);
  if (v7 != CFDataGetTypeID())
  {
    return 10;
  }

  v17.location = 0;
  v17.length = 16;
  CFDataGetBytes(v4, v17, this + 396);
  if (!*(this + 99))
  {
    v14 = *(this + 100);
    if (!v14)
    {
      return 4;
    }

    v15 = calloc(v14, 1uLL);
    *(this + 38) = v15;
    if (v15)
    {
      v18.length = *(this + 100);
      v18.location = 16;
      CFDataGetBytes(v4, v18, v15);
      result = *(this + 101);
      if (!result)
      {
        return result;
      }

      v16 = calloc(result, 1uLL);
      *(this + 39) = v16;
      if (v16)
      {
        v10 = v16;
        v12.length = *(this + 101);
        v12.location = *(this + 100) + 16;
        v11 = v4;
        goto LABEL_18;
      }
    }

    return 3;
  }

  *(this + 396) = 0;
  *(this + 404) = 0;
  Length = CFDataGetLength(v4);
  *(this + 100) = Length;
  v9 = calloc(Length, 1uLL);
  *(this + 38) = v9;
  if (!v9)
  {
    return 3;
  }

  v10 = v9;
  v12.length = *(this + 100);
  v11 = v4;
  v12.location = 0;
LABEL_18:
  CFDataGetBytes(v11, v12, v10);
  return 0;
}

void SavageUpdateController::getSignedCertificate()
{
  __assert_rtn("getSignedCertificate", "SavageUpdateController.cpp", 1031, "numLenOctets <= MAX_LEN_OCTETS");
}

{
  __assert_rtn("getSignedCertificate", "SavageUpdateController.cpp", 1083, "numLenOctets <= MAX_LEN_OCTETS");
}

void SavageUpdateController::validateSignatureLen()
{
  __assert_rtn("validateSignatureLen", "SavageUpdateController.cpp", 1181, "sigSLen >= MIN_SIG_LEN && sigSLen <= MAX_ACCEPTED_SIG_LEN");
}

{
  __assert_rtn("validateSignatureLen", "SavageUpdateController.cpp", 1159, "sigRLen >= MIN_SIG_LEN && sigRLen <= MAX_ACCEPTED_SIG_LEN");
}

uint64_t SavageUpdaterIsDone(uint64_t result, CFTypeRef *a2)
{
  if (!result)
  {
    return result;
  }

  v3 = *(result + 32);
  if (!v3)
  {
    v6 = "SavageUpdaterIsDone - no savage controller instance";
    v7 = &kSavageErrorDomain;
LABEL_13:
    CFErrorWithDomain = createCFErrorWithDomain(v6, 0x10u, 0, *v7);
    v9 = CFErrorWithDomain;
    if (a2 && CFErrorWithDomain)
    {
      *a2 = SavageSafeRetain(CFErrorWithDomain);
    }

    else if (!CFErrorWithDomain)
    {
      return 1;
    }

    CFRelease(v9);
    return 1;
  }

  v4 = *(result + 48);
  if (!v4)
  {
    v6 = "SavageUpdaterIsDone - no jasmine ir controller instance";
    v7 = &kJasmineIRErrorDomain;
    goto LABEL_13;
  }

  v5 = *(result + 40);
  if (!v5)
  {
    v6 = "SavageUpdaterIsDone - no yonkers controller instance";
    v7 = &kYonkersErrorDomain;
    goto LABEL_13;
  }

  return *(v3 + 249) && *(v4 + 65) && *(v5 + 33) != 0;
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