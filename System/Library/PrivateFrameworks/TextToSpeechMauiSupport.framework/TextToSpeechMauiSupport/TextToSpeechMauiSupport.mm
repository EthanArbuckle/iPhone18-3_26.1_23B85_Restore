uint64_t sub_26E794D80(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26E794DA0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26E794DC0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_26E794DE8()
{
  MEMORY[0x27437FCF0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26E794E20()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26E794E58()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26E794E90()
{
  v1 = sub_26ECC55F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_26E794F68(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26E794F78()
{

  return MEMORY[0x2821FE8E8](v0, 36, 7);
}

void sub_26E798834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t MauiStreamOpen(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1;
  v9 = 2147483655;
  if (a3)
  {
    if (a4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [MEMORY[0x277CCACA8] stringWithCString:a3 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
        v11 = [MEMORY[0x277CCACA8] stringWithCString:a4 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
        v9 = [v8 open:v10 mode:v11 outPointer:a5];
      }
    }
  }

  return v9;
}

void sub_26E79912C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26E799614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MauiProcCallback(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 processingCallback:a4];
  }

  else
  {
    v6 = 2147483655;
  }

  return v6;
}

void sub_26E79B2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26E79B6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFStringRef TTSVocalizerCopyPathForCommonResources()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = TTSVocalizerCopyURLForFrameworkResourcesWithType();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFURLCreateCopyAppendingPathComponent(*MEMORY[0x277CBECE8], v0, @"common", 1u);
  if (v2)
  {
    v3 = v2;
    memset(&v6, 0, sizeof(v6));
    if (CFURLGetFileSystemRepresentation(v2, 1u, buffer, 1024) && !stat(buffer, &v6))
    {
      v4 = CFURLCopyFileSystemPath(v3, kCFURLPOSIXPathStyle);
      CFRelease(v3);
      goto LABEL_7;
    }

    CFRelease(v3);
  }

  v4 = 0;
LABEL_7:
  CFRelease(v1);
  return v4;
}

CFURLRef TTSVocalizerCopyURLForFrameworkResourcesWithType()
{
  v0 = CFURLCreateWithFileSystemPath(*MEMORY[0x277CBECE8], @"/System/Library/PrivateFrameworks/TextToSpeechMauiSupport.framework", kCFURLPOSIXPathStyle, 1u);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFBundleCreate(0, v0);
  v3 = CFBundleCopyResourceURL(v2, @"TTSResources", 0, 0);
  CFRelease(v1);
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

uint64_t vplatform_dynlib_Close(void **a1)
{
  if (!a1)
  {
    return 2147483654;
  }

  v2 = (dlclose(a1[1]) != 0) << 31;
  free(a1);
  return v2;
}

uint64_t _TTSMauiVocalizerCriticalSectionImplOpen(uint64_t a1, uint64_t a2, pthread_mutex_t **a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return 2147483655;
  }

  v4 = 2147483912;
  v5 = malloc_type_malloc(0x40uLL, 0x1000040FA0F61DDuLL);
  if (v5)
  {
    v6 = v5;
    v8.__sig = 0;
    *v8.__opaque = 0;
    pthread_mutexattr_init(&v8);
    pthread_mutexattr_settype(&v8, 2);
    if (pthread_mutex_init(v6, &v8))
    {
      free(v6);
      v4 = 2147483918;
    }

    else
    {
      v4 = 0;
      *a3 = v6;
    }

    pthread_mutexattr_destroy(&v8);
  }

  return v4;
}

pthread_mutex_t *_TTSMauiVocalizerCriticalSectionImplClose(pthread_mutex_t *result)
{
  if (result)
  {
    v1 = result;
    if (pthread_mutex_destroy(result))
    {
      return 2147483918;
    }

    else
    {
      free(v1);
      return 0;
    }
  }

  return result;
}

pthread_mutex_t *_TTSMauiVocalizerCriticalSectionImplEnter(pthread_mutex_t *result)
{
  if (result)
  {
    if (pthread_mutex_lock(result))
    {
      return 2147483918;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

pthread_mutex_t *_TTSMauiVocalizerCriticalSectionImplLeave(pthread_mutex_t *result)
{
  if (result)
  {
    if (pthread_mutex_unlock(result))
    {
      return 2147483918;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _TTSMauiVocalizerDataStreamImplClose(FILE *a1)
{
  if (!a1)
  {
    return 2147483655;
  }

  if (fclose(a1))
  {
    return 2147483907;
  }

  return 0;
}

uint64_t _TTSMauiVocalizerDataStreamImplRead(void *a1, size_t a2, size_t a3, FILE *a4)
{
  if (a4)
  {
    return fread(a1, a2, a3, a4);
  }

  else
  {
    return 0;
  }
}

uint64_t _TTSMauiVocalizerDataStreamImplSeek(FILE *a1, uint64_t a2, int a3, int a4)
{
  if (!a1)
  {
    return 2147483655;
  }

  if (a3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2 * (a3 == 2);
  }

  if (a4 == -1)
  {
    a2 = -a2;
  }

  if (fseek(a1, a2, v4) == -1)
  {
    return 2147483908;
  }

  else
  {
    return 0;
  }
}

FILE *_TTSMauiVocalizerDataStreamImplGetSize(FILE *result)
{
  if (result)
  {
    memset(&v2, 0, sizeof(v2));
    v1 = fileno(result);
    if (fstat(v1, &v2))
    {
      return 0;
    }

    else
    {
      return v2.st_size;
    }
  }

  return result;
}

uint64_t _TTSMauiVocalizerDataStreamImplGetError(FILE *a1)
{
  if (!a1)
  {
    return 2147483655;
  }

  if (ferror(a1))
  {
    return 2147483652;
  }

  return 0;
}

size_t _TTSMauiVocalizerDataStreamImplWrite(const void *a1, size_t a2, size_t a3, FILE *a4)
{
  if (a4)
  {
    return fwrite(a1, a2, a3, a4);
  }

  else
  {
    return 0;
  }
}

uint64_t TTSMauiVocalizerDataMappingImplOpenWithFunctionPointer(uint64_t a1, uint64_t a2, const void *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t, const void *, const char *, uint64_t *))
{
  v19 = 0;
  if (a4)
  {
    pthread_mutex_lock(&__MappingInfoCacheLock);
    if (__MappingInfoCache && (Value = CFDictionaryGetValue(__MappingInfoCache, a3)) != 0)
    {
      if (*(Value + 56))
      {
        v11 = 0;
        ++Value[5];
        *a4 = Value;
LABEL_20:
        pthread_mutex_unlock(&__MappingInfoCacheLock);
        return v11;
      }

      v12 = 0;
    }

    else
    {
      v12 = 1;
    }

    v11 = a5(a1, a2, a3, "r", &v19);
    if (!v11)
    {
      if (a3)
      {
        v13 = strlen(a3);
        v14 = malloc_type_malloc(0x40uLL, 0x109004021B9ABA4uLL);
        if (v13 && (v15 = malloc_type_malloc(v13 + 1, 0x100004077774924uLL), (v13 = v15) != 0))
        {
          strcpy(v15, a3);
          v16 = 1;
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v14 = malloc_type_malloc(0x40uLL, 0x109004021B9ABA4uLL);
        v16 = 0;
        v13 = 0;
      }

      v11 = 0;
      v14[6] = v13;
      v14[1] = 0;
      v14[2] = 0;
      *v14 = v19;
      *(v14 + 2) = xmmword_26ECC72D0;
      *(v14 + 56) = 0;
      *a4 = v14;
      if ((v12 & v16) == 1)
      {
        v17 = __MappingInfoCache;
        if (!__MappingInfoCache)
        {
          keyCallBacks = *byte_287EE67D8;
          v17 = CFDictionaryCreateMutable(0, 0, &keyCallBacks, 0);
          __MappingInfoCache = v17;
        }

        CFDictionarySetValue(v17, v13, v14);
        v11 = 0;
      }
    }

    goto LABEL_20;
  }

  return 2147483655;
}

uint64_t _TTSMauiVocalizerDataMappingImplClose(FILE **a1)
{
  if (!a1)
  {
    return 2147483655;
  }

  pthread_mutex_lock(&__MappingInfoCacheLock);
  if (a1[5] == 1)
  {
    v2 = a1[6];
    if (v2 && __MappingInfoCache && CFDictionaryGetValue(__MappingInfoCache, a1[6]) == a1)
    {
      CFDictionaryRemoveValue(__MappingInfoCache, v2);
    }

    pthread_mutex_unlock(&__MappingInfoCacheLock);
    v3 = a1[1];
    if (v3)
    {
      v4 = munmap(v3, a1[3]);
      v5 = v4 != 0;
      if (v4)
      {
        v6 = 2147483918;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    if (*a1 && !v5)
    {
      if (fclose(*a1))
      {
        v6 = 2147483907;
      }

      else
      {
        v6 = 0;
      }
    }

    v7 = a1[6];
    if (v7)
    {
      free(v7);
    }

    free(a1);
  }

  else
  {
    a1[5] = (a1[5] - 1);
    pthread_mutex_unlock(&__MappingInfoCacheLock);
    return 0;
  }

  return v6;
}

uint64_t _TTSMauiVocalizerDataMappingImplMap(uint64_t a1, unint64_t a2, uint64_t *a3, void *a4)
{
  v8 = getpagesize();
  result = 2147483655;
  if (!a1 || !a4)
  {
    return result;
  }

  v10 = a2 / v8 * v8;
  v11 = a2 % v8;
  pthread_mutex_lock(&__MappingInfoCacheLock);
  v12 = *(a1 + 32);
  if ((v12 & 0x8000000000000000) == 0 && *(a1 + 56))
  {
    goto LABEL_12;
  }

  if (*(a1 + 8))
  {
    _TTSMauiVocalizerDataMappingImplMap_cold_1();
  }

  if (!*(a1 + 16))
  {
    *(a1 + 16) = _TTSMauiVocalizerDataStreamImplGetSize(*a1);
  }

  if (!*a1)
  {
    goto LABEL_13;
  }

  v13 = fileno(*a1);
  if (v13 < 0)
  {
    goto LABEL_13;
  }

  v14 = v13;
  v15 = *(a1 + 16);
  v16 = mmap(0, v15, 1, 2, v13, 0);
  *(a1 + 8) = v16;
  if (v16 != -1)
  {
    v12 = 0;
    *(a1 + 24) = v15;
    *(a1 + 56) = 1;
LABEL_12:
    *(a1 + 32) = v12 + 1;
    goto LABEL_13;
  }

  if (a3)
  {
    v28 = *a3;
    if (*a3)
    {
      v29 = v28 + v11;
      v30 = mmap(0, v28 + v11, 1, 2, v14, v10);
      *(a1 + 8) = v30;
      if (v30 != -1)
      {
        if (*a3)
        {
          v12 = 0;
          *(a1 + 24) = v29;
          goto LABEL_12;
        }
      }
    }
  }

  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
LABEL_13:
  v17 = *(a1 + 56);
  v18 = CFStringCreateWithCString(0, *(a1 + 48), 0x8000100u);
  v19 = v18;
  if (*(a1 + 56))
  {
    if (CFStringHasPrefix(v18, @"uselect"))
    {
      v20 = *a3;
      if (*a3 > 0x200000 && *(a1 + 24) * 0.8 > (v20 + a2) && v20 >= 1)
      {
        v21 = *(a1 + 8) + a2;
        v22 = v21 + v20;
        do
        {
          v21 += 4096;
        }

        while (v21 < v22);
      }
    }
  }

  if (v19)
  {
    CFRelease(v19);
  }

  pthread_mutex_unlock(&__MappingInfoCacheLock);
  if (*(a1 + 16) >= a2)
  {
    v23 = *(a1 + 24);
    if (v17)
    {
      v24 = a2;
    }

    else
    {
      v24 = v11;
    }

    *a4 = *(a1 + 8) + v24;
    result = 0;
    if (a3)
    {
      if (v17)
      {
        v25 = a2;
      }

      else
      {
        v25 = 0;
      }

      v26 = v23 - v25;
      if (*a3 >= v26)
      {
        LODWORD(v27) = v26;
      }

      else
      {
        v27 = *a3;
      }

      if (*a3)
      {
        LODWORD(v26) = v27;
      }

      *a3 = v26;
    }
  }

  else
  {
    result = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t _TTSMauiVocalizerDataMappingImplUnmap(uint64_t a1)
{
  if (!a1)
  {
    return 2147483655;
  }

  pthread_mutex_lock(&__MappingInfoCacheLock);
  v2 = *(a1 + 32);
  v3 = v2 < 1;
  v4 = v2 - 1;
  if (v3)
  {
    v5 = 2147483665;
  }

  else
  {
    v5 = 0;
    *(a1 + 32) = v4;
  }

  if (!*(a1 + 56))
  {
    if (munmap(*(a1 + 8), *(a1 + 24)))
    {
      v5 = 2147483918;
    }

    else
    {
      *(a1 + 8) = 0;
      *(a1 + 24) = 0;
    }
  }

  pthread_mutex_unlock(&__MappingInfoCacheLock);
  return v5;
}

void _TTSMauiVocalizerLogError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v28 = 0;
  if (a3)
  {
    for (i = 0; i != a3; ++i)
    {
      if (i)
      {
        __strcat_chk();
      }

      if (*(a4 + 8 * i))
      {
        v10 = *(a5 + 8 * i) == 0;
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        __strcat_chk();
        __strcat_chk();
        __strcat_chk();
      }
    }
  }

  v11 = MEMORY[0x277CCACA8];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
  v13 = [v11 stringWithFormat:@"%@", v12];

  v14 = TTSVocalizerErrors();
  v15 = [v14 objectForKeyedSubscript:v13];

  if (v15)
  {
    v16 = [v15 objectForKeyedSubscript:@"severity"];
    v17 = [v15 objectForKeyedSubscript:@"text"];
    v18 = v17;
    v19 = &stru_287EF7E80;
    if (v17)
    {
      v19 = v17;
    }

    v20 = v19;

    if ([v16 intValue]<= 3)
    {
      v21 = AXTTSLogCommon();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109634;
        v23 = a2;
        v24 = 2112;
        v25 = v20;
        v26 = 2080;
        v27 = &v28;
        _os_log_error_impl(&dword_26E793000, v21, OS_LOG_TYPE_ERROR, "MauiVocalizer: %d (%@): %s\n", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v16 = AXTTSLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      _TTSMauiVocalizerLogError_cold_1();
    }
  }
}

void _TTSMauiVocalizerLogDiagnostic()
{
  v0 = AXTTSLogCommon();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    _TTSMauiVocalizerLogDiagnostic_cold_1();
  }
}

uint64_t _TTSMauiVocalizerGetThreadImplOpen(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = 2147483912;
  v6 = malloc_type_malloc(0x10uLL, 0xDB08F6AFuLL);
  *a3 = v6;
  if (!v6)
  {
    return 2147483654;
  }

  v7 = v6;
  *(v6 + 2) = 135972;
  v8 = malloc_type_malloc(0x10uLL, 0xDB08F6AFuLL);
  if (!v8)
  {
LABEL_7:
    free(a3);
    return v5;
  }

  v9 = v8;
  v10 = malloc_type_malloc(8uLL, 0xDB08F6AFuLL);
  *v9 = v10;
  if (!v10)
  {
    free(v9);
    goto LABEL_7;
  }

  v5 = 0;
  v9[1] = a2;
  *v7 = v9;
  return v5;
}

uint64_t _TTSMauiVocalizerGetThreadImplClose(_DWORD *a1)
{
  result = 2147483654;
  if (a1)
  {
    if (a1[2] == 135972)
    {
      v3 = *a1;
      if (*a1)
      {
        free(*v3);
        free(a1);
        free(v3);
        return 0;
      }

      else
      {
        return 2147483916;
      }
    }

    else
    {
      return 2147483656;
    }
  }

  return result;
}

uint64_t _TTSMauiVocalizerGetThreadImplStart(uint64_t a1, void *(__cdecl *a2)(void *), void *a3, size_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  result = 2147483654;
  if (a1)
  {
    if (*(a1 + 8) == 135972)
    {
      v6 = *a1;
      if (*a1)
      {
        memset(&v10, 0, sizeof(v10));
        pthread_attr_init(&v10);
        pthread_attr_setstacksize(&v10, a4);
        pthread_attr_setdetachstate(&v10, 1);
        pthread_attr_set_qos_class_np(&v10, QOS_CLASS_USER_INTERACTIVE, -1);
        if (pthread_create(*v6, &v10, a2, a3))
        {
          return 2147483651;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 2147483916;
      }
    }

    else
    {
      return 2147483656;
    }
  }

  return result;
}

uint64_t _TTSMauiVocalizerGetThreadImplJoin(uint64_t a1, void **a2)
{
  result = 2147483654;
  v5 = a2;
  if (a1)
  {
    if (*(a1 + 8) == 135972)
    {
      v4 = *a1;
      if (v4)
      {
        if (a2)
        {
          a2 = &v5;
        }

        return (pthread_join(**v4, a2) != 0) << 31;
      }

      else
      {
        return 2147483916;
      }
    }

    else
    {
      return 2147483656;
    }
  }

  return result;
}

uint64_t _TTSMauiVocalizerGetThreadImplThreadId(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    *a2 = 0;
    *a2 += pthread_self();
  }

  return 0;
}

uint64_t _TTSMauiVocalizerGetSemaphoreImplOpen(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void ****a5)
{
  v7 = 2147483654;
  v8 = malloc_type_malloc(0x10uLL, 0xDB08F6AFuLL);
  *a5 = v8;
  if (v8)
  {
    v9 = v8;
    *(v8 + 2) = 135973;
    v10 = malloc_type_calloc(1uLL, 0x10uLL, 0x3328CB88uLL);
    if (v10)
    {
      v11 = v10;
      v12 = dispatch_semaphore_create(a3);
      v13 = *v11;
      *v11 = v12;

      v7 = 0;
      *v9 = v11;
    }

    else
    {
      free(a5);
      return 2147483912;
    }
  }

  return v7;
}

uint64_t _TTSMauiVocalizerGetSemaphoreImplClose(void ***a1)
{
  result = 2147483654;
  if (a1)
  {
    if (*(a1 + 2) == 135973)
    {
      v3 = *a1;
      if (*a1)
      {
        v4 = *v3;
        *v3 = 0;

        free(a1);
        free(v3);
        return 0;
      }

      else
      {
        return 2147483916;
      }
    }

    else
    {
      return 2147483656;
    }
  }

  return result;
}

uint64_t _TTSMauiVocalizerGetSemaphoreImplAcquire(uint64_t a1)
{
  result = 2147483654;
  if (a1)
  {
    if (*(a1 + 8) == 135973)
    {
      v3 = *a1;
      if (v3)
      {
        dispatch_semaphore_wait(*v3, 0xFFFFFFFFFFFFFFFFLL);
        return 0;
      }

      else
      {
        return 2147483916;
      }
    }

    else
    {
      return 2147483656;
    }
  }

  return result;
}

uint64_t _TTSMauiVocalizerGetSemaphoreImplRelease(uint64_t a1)
{
  result = 2147483654;
  if (a1)
  {
    if (*(a1 + 8) == 135973)
    {
      v3 = *a1;
      if (v3)
      {
        dispatch_semaphore_signal(*v3);
        return 0;
      }

      else
      {
        return 2147483916;
      }
    }

    else
    {
      return 2147483656;
    }
  }

  return result;
}

id TTSVocalizerErrors()
{
  if (TTSVocalizerErrors_onceToken != -1)
  {
    TTSVocalizerErrors_cold_1();
  }

  v1 = TTSVocalizerErrors_vocalizerErrors;

  return v1;
}

void __TTSVocalizerErrors_block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v0 pathForResource:@"vocalizer_errors" ofType:@"plist"];

  v1 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v3];
  v2 = TTSVocalizerErrors_vocalizerErrors;
  TTSVocalizerErrors_vocalizerErrors = v1;
}

BOOL _CompareBrokerNames(char *__s1, char *a2)
{
  if (__s1 == a2)
  {
    return 1;
  }

  result = 0;
  if (__s1)
  {
    if (a2)
    {
      return strcmp(__s1, a2) == 0;
    }
  }

  return result;
}

const char *_HashBrokerName(const char *result)
{
  if (result)
  {
    v1 = result;
    result = strlen(result);
    if (result)
    {
      v2 = result;
      v3 = &result[v1];
      result = (result[v1 - 1] + *v1);
      if (v2 != 1)
      {
        result += v1[1] + *(v3 - 2);
      }
    }
  }

  return result;
}

id sub_26E79D0AC()
{
  v0 = sub_26ECC5558();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26ECC5648();
  sub_26ECC5628();
  sub_26ECC5608();
  v5 = v4;

  if (v5)
  {
    sub_26ECC55D8();
    sub_26ECC55C8();
    sub_26ECC5548();
    (*(v1 + 8))(v3, v0);
    v6 = objc_allocWithZone(TTSMauiVoice);
    v7 = sub_26ECC5828();

    v8 = sub_26ECC5828();

    v9 = sub_26ECC5828();

    v5 = [v6 initWithIdentifier:v7 language:v8 path:v9];
  }

  return v5;
}

id sub_26E79D2CC()
{
  swift_beginAccess();

  v0 = sub_26ECC5828();

  return v0;
}

uint64_t sub_26E79D350(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_26E79D3B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_26ECC5838();
  v8 = v7;
  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_26E79D428(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

id TTSMauiVoice.init(identifier:language:path:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_26ECC5828();

  v2 = sub_26ECC5828();

  v3 = sub_26ECC5828();

  v4 = [v0 initWithIdentifier:v1 language:v2 path:v3];

  return v4;
}

id TTSMauiVoice.init(identifier:language:path:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = (v6 + OBJC_IVAR___TTSMauiVoice_identifier);
  *v7 = a1;
  v7[1] = a2;
  v8 = (v6 + OBJC_IVAR___TTSMauiVoice_language);
  *v8 = a3;
  v8[1] = a4;
  v9 = (v6 + OBJC_IVAR___TTSMauiVoice_path);
  *v9 = a5;
  v9[1] = a6;
  v11.super_class = TTSMauiVoice;
  return objc_msgSendSuper2(&v11, sel_init);
}

id TTSMauiVoice.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t variable initialization expression of MauiAUSPAudioUnit.markerQueue()
{
  v0 = sub_26ECC5978();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20]();
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26ECC5968();
  MEMORY[0x28223BE20]();
  sub_26ECC5788();
  MEMORY[0x28223BE20]();
  sub_26E79E3A4(0, &unk_28118F1E0);
  sub_26ECC5778();
  v5[1] = MEMORY[0x277D84F90];
  sub_26E79D9E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C61E0);
  sub_26E79DA88();
  sub_26ECC59F8();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v0);
  return sub_26ECC5998();
}

unint64_t sub_26E79D9E8()
{
  result = qword_28118F1F0;
  if (!qword_28118F1F0)
  {
    sub_26ECC5968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28118F1F0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_26E79DA88()
{
  result = qword_28118F210;
  if (!qword_28118F210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2806C61E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28118F210);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t variable initialization expression of MauiAUSPAudioUnit.voiceResourceQueue()
{
  v0 = sub_26ECC5978();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20]();
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26ECC5968();
  MEMORY[0x28223BE20]();
  sub_26ECC5788();
  MEMORY[0x28223BE20]();
  sub_26E79E3A4(0, &unk_28118F1E0);
  sub_26ECC5778();
  v5[1] = MEMORY[0x277D84F90];
  sub_26E79D9E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C61E0);
  sub_26E79DA88();
  sub_26ECC59F8();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v0);
  return sub_26ECC5998();
}

uint64_t sub_26E79DD90@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t variable initialization expression of MauiAUSPAudioUnit._timbre()
{
  v0 = objc_opt_self();
  LOBYTE(v9) = 0;
  sub_26ECC5848();
  v1 = sub_26ECC5828();

  type metadata accessor for MauiAUSPAudioUnit();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_26ECC5478();

  v4 = sub_26ECC5828();

  LODWORD(v5) = 1112014848;
  LODWORD(v6) = 1128792064;
  v7 = [v0 createParameterWithIdentifier:v1 name:v4 address:0 min:0 max:0 unit:0 unitName:v5 flags:v6 valueStrings:0 dependentParameters:{0, v9}];

  return sub_26ECC5578();
}

uint64_t variable initialization expression of MauiAUSPAudioUnit._sentencePauseDuration()
{
  v0 = objc_opt_self();
  LOBYTE(v8) = 1;
  sub_26ECC5848();
  v1 = sub_26ECC5828();

  type metadata accessor for MauiAUSPAudioUnit();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_26ECC5478();

  v4 = sub_26ECC5828();

  LODWORD(v5) = 9.0;
  v6 = [v0 createParameterWithIdentifier:v1 name:v4 address:1 min:0 max:0 unit:0 unitName:0.0 flags:v5 valueStrings:0 dependentParameters:{0, v8}];

  return sub_26ECC5578();
}

unint64_t sub_26E79E14C(uint64_t a1, uint64_t a2)
{
  sub_26ECC5A88();
  sub_26ECC5868();
  v4 = sub_26ECC5AA8();

  return sub_26E79E1C4(a1, a2, v4);
}

unint64_t sub_26E79E1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_26ECC5A68())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_26E79E27C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C6070);
    v3 = sub_26ECC5A38();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_26E79E14C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_26E79E3A4(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26E79E438(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26E79E48C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26E79E4AC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

void sub_26E79E588(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_26E79E5F8()
{
  v1 = *v0;
  sub_26ECC5A88();
  MEMORY[0x27437EC90](v1);
  return sub_26ECC5AA8();
}

uint64_t sub_26E79E66C()
{
  v1 = *v0;
  sub_26ECC5A88();
  MEMORY[0x27437EC90](v1);
  return sub_26ECC5AA8();
}

void *sub_26E79E6B0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void static MauiAUSPAudioUnit.registerAudioUnit()()
{
  v0 = sub_26ECC5858();
  v1 = objc_opt_self();
  type metadata accessor for MauiAUSPAudioUnit();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_26ECC5828();
  v4[0] = 1635087216;
  v4[1] = v0;
  v5 = 1634758764;
  v6 = 0;
  [v1 registerSubclass:ObjCClassFromMetadata asComponentDescription:v4 name:v3 version:0];
}

uint64_t type metadata accessor for MauiAUSPAudioUnit()
{
  result = qword_28118F298;
  if (!qword_28118F298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26E79E7E4()
{
  v0 = sub_26ECC5858();
  v1 = objc_opt_self();
  type metadata accessor for MauiAUSPAudioUnit();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_26ECC5828();
  v4[0] = 1635087216;
  v4[1] = v0;
  v5 = 1634758764;
  v6 = 0;
  [v1 registerSubclass:ObjCClassFromMetadata asComponentDescription:v4 name:v3 version:0];
}

uint64_t sub_26E79E8A0(unint64_t a1, unint64_t a2, int a3, unsigned int a4)
{
  v91 = a4;
  v90 = a3;
  v89 = a2;
  v88 = a1;
  v113 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C61D0);
  MEMORY[0x28223BE20]();
  v104 = &v81 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C61D8);
  MEMORY[0x28223BE20]();
  v103 = &v81 - v6;
  v102 = sub_26ECC5978();
  v7 = *(v102 - 1);
  MEMORY[0x28223BE20]();
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26ECC5968();
  MEMORY[0x28223BE20]();
  sub_26ECC5788();
  MEMORY[0x28223BE20]();
  v99 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = qword_28118F330;
  *&v4[qword_28118F330] = 0;
  v85 = qword_28118F2B8;
  *&v4[qword_28118F2B8] = 0;
  v11 = qword_28118F230;
  v12 = sub_26ECC56D8();
  v13 = *(*(v12 - 8) + 56);
  v87 = v11;
  v13(&v4[v11], 1, 1, v12);
  v82 = qword_28118F358;
  *&v4[qword_28118F358] = 0;
  v83 = qword_28118F360;
  *&v4[qword_28118F360] = 0;
  v14 = qword_28118F238;
  v15 = sub_26ECC55F8();
  v16 = *(*(v15 - 8) + 56);
  v86 = v14;
  v16(&v4[v14], 1, 1, v15);
  v100 = v4;
  *&v4[qword_28118F2F0] = 0;
  *&v4[qword_28118F308] = 0;
  v17 = qword_28118F348;
  v101 = sub_26E79E3A4(0, &unk_28118F1E0);
  sub_26ECC5778();
  *&v110 = MEMORY[0x277D84F90];
  v97 = sub_26E7A58F4(&qword_28118F1F0, MEMORY[0x277D85230]);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C61E0);
  v98 = sub_26E7A593C(&qword_28118F210, &unk_2806C61E0);
  sub_26ECC59F8();
  v18 = *MEMORY[0x277D85260];
  v19 = *(v7 + 104);
  v94 = v7 + 104;
  v95 = v19;
  v93 = v9;
  v20 = v102;
  (v19)(v9, v18, v102);
  v21 = sub_26ECC5998();
  v81 = v17;
  v22 = v100;
  *&v100[v17] = v21;
  v23 = qword_28118F300;
  v92 = "Support.TTSMauiVoice";
  sub_26ECC5778();
  *&v110 = MEMORY[0x277D84F90];
  sub_26ECC59F8();
  v95(v93, v18, v20);
  v24 = sub_26ECC5998();
  v99 = v23;
  *&v22[v23] = v24;
  v25 = v22;
  v26 = qword_28118F2D8;
  v27 = sub_26ECC5528();
  v28 = *(*(v27 - 8) + 56);
  v98 = v26;
  v28(&v22[v26], 1, 1, v27);
  v29 = &v22[qword_28118F320];
  *v29 = 0;
  *(v29 + 1) = 0;
  v29[16] = 1;
  v30 = qword_28118F310;
  v31 = sub_26E79E27C(MEMORY[0x277D84F90]);
  v97 = v30;
  *&v22[v30] = v31;
  v32 = qword_28118F338;
  v33 = sub_26ECC5508();
  v34 = *(*(v33 - 8) + 56);
  v96 = v32;
  v34(&v22[v32], 1, 1, v33);
  v35 = qword_28118F2C0;
  v36 = objc_opt_self();
  LOBYTE(v110) = 0;
  sub_26ECC5848();
  v37 = sub_26ECC5828();

  v101 = "maui.voiceresource";
  v102 = type metadata accessor for MauiAUSPAudioUnit();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v39 = objc_opt_self();
  v40 = [v39 bundleForClass_];
  sub_26ECC5478();

  v41 = sub_26ECC5828();

  LODWORD(v42) = 1112014848;
  LODWORD(v43) = 1128792064;
  v44 = [v36 createParameterWithIdentifier:v37 name:v41 address:0 min:0 max:0 unit:0 unitName:v42 flags:v43 valueStrings:0 dependentParameters:0];

  v107[0] = 100;
  v112 = 0;
  v110 = 0u;
  v111 = 0u;
  v95 = v35;
  sub_26ECC5578();
  v45 = qword_28118F2E8;
  LOBYTE(v110) = 1;
  sub_26ECC5848();
  v46 = sub_26ECC5828();

  v47 = [v39 bundleForClass_];
  sub_26ECC5478();

  v48 = sub_26ECC5828();

  LODWORD(v49) = 9.0;
  v50 = [v36 createParameterWithIdentifier:v46 name:v48 address:1 min:0 max:0 unit:0 unitName:0.0 flags:v49 valueStrings:0 dependentParameters:0];

  v107[0] = 1;
  v112 = 0;
  v110 = 0u;
  v111 = 0u;
  sub_26ECC5578();
  *(v25 + qword_28118F240) = 0;
  v107[1] = 0x40D5888000000000;
  v108 = xmmword_26ECC74A0;
  v109 = xmmword_26ECC74B0;
  type metadata accessor for CMFormatDescription(0);
  v51 = sub_26ECC57F8();
  (*(*(v51 - 8) + 56))(v103, 1, 1, v51);
  v52 = sub_26ECC59C8();
  (*(*(v52 - 8) + 56))(v104, 1, 1, v52);
  v53 = v105;
  sub_26ECC5808();
  if (v53)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v54 = v110;
    v55 = [objc_allocWithZone(MEMORY[0x277CB83A0]) initWithCMAudioFormatDescription_];

    v56 = qword_28118F2D0;
    *(v25 + qword_28118F2D0) = v55;
    v57 = objc_allocWithZone(MEMORY[0x277CEFD20]);
    *&v110 = 0;
    v58 = v55;
    v59 = [v57 initWithFormat:v58 error:&v110];
    if (v59)
    {
      v60 = v59;
      v61 = v88;
      v62 = HIDWORD(v88);
      v63 = v89;
      v64 = HIDWORD(v89);
      v65 = v110;

      *(v25 + qword_28118F2A8) = v60;
      v106.receiver = v25;
      v106.super_class = v102;
      v107[0] = 0;
      *&v110 = __PAIR64__(v62, v61);
      *(&v110 + 1) = __PAIR64__(v64, v63);
      LODWORD(v111) = v90;
      v66 = objc_msgSendSuper2(&v106, sel_initWithComponentDescription_options_error_, &v110, v91, v107);
      v67 = v107[0];
      if (v66)
      {
        v68 = v66;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C61F8);
        v69 = swift_allocObject();
        *(v69 + 16) = xmmword_26ECC74C0;
        v70 = *&v68[qword_28118F2A8];
        *(v69 + 32) = v70;
        v71 = objc_allocWithZone(MEMORY[0x277CEFD28]);
        sub_26E79E3A4(0, &unk_28118F200);
        v25 = v68;
        v72 = v67;
        v73 = v70;
        v74 = sub_26ECC58C8();

        v75 = [v71 initWithAudioUnit:v25 busType:2 busses:v74];

        v76 = *(v25 + qword_28118F330);
        *(v25 + qword_28118F330) = v75;
      }

      else
      {
        v25 = v107[0];
        sub_26ECC5498();

        swift_willThrow();
      }
    }

    else
    {
      v77 = v110;
      sub_26ECC5498();

      swift_willThrow();
      sub_26E7A59EC(v25 + v87, &qword_2806C6130);

      sub_26E7A59EC(v25 + v86, &qword_2806C6140);
      sub_26E7A59EC(v25 + v98, &qword_2806C61F0);

      sub_26E7A59EC(v25 + v96, &qword_2806C6128);
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6138);
      v79 = *(*(v78 - 8) + 8);
      v79(v95 + v25, v78);
      v79(v25 + v45, v78);
      swift_deallocPartialClassInstance();
    }

    return v25;
  }

  return result;
}

id sub_26E79F73C(uint64_t a1)
{
  result = *(a1 + qword_28118F330);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

id MauiAUSPAudioUnit.outputBusses.getter()
{
  result = *(v0 + qword_28118F330);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MauiAUSPAudioUnit.allocateRenderResources()()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for MauiAUSPAudioUnit();
  if (objc_msgSendSuper2(&v3, sel_allocateRenderResourcesAndReturnError_, v4))
  {
    v1 = v4[0];
  }

  else
  {
    v2 = v4[0];
    sub_26ECC5498();

    swift_willThrow();
  }
}

BOOL sub_26E79F820(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  MauiAUSPAudioUnit.allocateRenderResources()();

  if (v5)
  {
    if (a3)
    {
      v6 = sub_26ECC5488();

      v7 = v6;
      *a3 = v6;
    }

    else
    {
    }
  }

  return v5 == 0;
}

id sub_26E79F89C()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3[4] = sub_26E7A5BE4;
  v3[5] = v0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = sub_26E79F9C0;
  v3[3] = &block_descriptor_16;
  v1 = _Block_copy(v3);

  return v1;
}

void (*MauiAUSPAudioUnit.internalRenderBlock.getter())(_DWORD *a1, uint64_t a2, int a3)
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_26E7A047C;
}

uint64_t sub_26E79F9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *aBlock)
{
  v14 = *(a1 + 32);
  v15 = _Block_copy(aBlock);
  if (v15)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    v15 = sub_26E7A45B4;
  }

  else
  {
    v16 = 0;
  }

  v17 = v14(a2, a3, a4, a5, a6, a7, v15, v16);
  sub_26E794F68(v15);

  return v17;
}

void sub_26E79FAAC(_DWORD *a1, uint64_t a2, int a3)
{
  LODWORD(v3) = a3;
  v81 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6128);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v83 = v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v73 - v7;
  v9 = sub_26ECC5508();
  v93 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v82 = v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v73 - v12;
  v14 = sub_26ECC57C8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v19 = Strong;
  sub_26ECC57D8();
  v20 = sub_26ECC57E8();
  v22 = v21;
  v20(aBlock, 0);
  (*(v15 + 8))(v17, v14);
  v89 = v22;
  if (!v22)
  {
    goto LABEL_42;
  }

  if (!*(v19 + qword_28118F2B8))
  {
    goto LABEL_31;
  }

  p_vtable = &OBJC_METACLASS___TTSMauiSpeechEngine.vtable;
  if (!v3)
  {
    LODWORD(v26) = 0;
    v69 = 0;
LABEL_34:
    v70 = p_vtable[97];
    v71 = *&v70[v19];
    v42 = __CFADD__(v71, 4 * v26);
    v72 = v71 + 4 * v26;
    if (v42)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    *&v70[v19] = v72;
    sub_26ECC5748();

    sub_26E794F68(v69);
    return;
  }

  v24 = v3;
  v77 = v13;
  v95 = qword_28118F360;
  v88 = qword_28118F358;
  v25 = qword_28118F338;
  v75 = qword_28118F308;
  v74 = qword_28118F348;
  v94 = qword_28118F2F0;
  swift_beginAccess();
  v85 = 0;
  v84 = 0;
  v26 = 0;
  v87 = (v93 + 48);
  v79 = (v93 + 32);
  v27 = (v93 + 8);
  v78 = (v93 + 56);
  v73[1] = v97;
  v3 = &qword_2806C6128;
  v76 = xmmword_26ECC74D0;
  v28 = &unk_279DB9000;
  v92 = v24;
  v90 = v9;
  v91 = v8;
  v93 = v25;
  v80 = v27;
  do
  {
    v30 = *(v19 + v95);
    if (!v30)
    {
      v44 = [*(v19 + v88) nextBuffer];
      v45 = *(v19 + v95);
      *(v19 + v95) = v44;

      sub_26E7A5AB0(v19 + v25, v8, &qword_2806C6128);
      if ((*v87)(v8, 1, v9) == 1)
      {
        sub_26E7A59EC(v8, &qword_2806C6128);
      }

      else
      {
        v86 = v26;
        v46 = v77;
        (*v79)(v77, v8, v9);
        v47 = v82;
        sub_26ECC54F8();
        v48 = v27;
        sub_26ECC54E8();
        v49 = *v27;
        (*v27)(v47, v9);
        v50 = v83;
        (*v78)(v83, 1, 1, v9);
        swift_beginAccess();
        sub_26E7A5984(v50, v19 + v25, &qword_2806C6128);
        swift_endAccess();
        v51 = AXTTSLogCommon();
        if (!v51)
        {
          goto LABEL_41;
        }

        v52 = v51;
        v53 = v9;
        sub_26ECC5948();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6148);
        v54 = swift_allocObject();
        *(v54 + 16) = v76;
        v55 = sub_26E79E3A4(0, &qword_2806C6268);
        v56 = sub_26ECC59D8();
        *(v54 + 56) = v55;
        *(v54 + 64) = sub_26E7A5B6C();
        *(v54 + 32) = v56;
        sub_26ECC5738();

        v49(v46, v53);
        v24 = v92;
        v8 = v91;
        v9 = v53;
        v25 = v93;
        v26 = v86;
        v27 = v48;
        v3 = &qword_2806C6128;
        v28 = &unk_279DB9000;
      }

      v57 = *(v19 + v95);
      if (!v57)
      {
        goto LABEL_26;
      }

      v58 = v26;
      v59 = [v57 markers];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6218);
      v60 = sub_26ECC58D8();

      if (v60 >> 62)
      {
        if (sub_26ECC5A28())
        {
          goto LABEL_21;
        }
      }

      else if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_21:
        v61 = *(v19 + v75);
        v62 = *(v19 + v74);
        v63 = swift_allocObject();
        *(v63 + 16) = v19;
        *(v63 + 24) = v60;
        *(v63 + 32) = v61;
        v64 = v62;
        v65 = v19;
        sub_26E794F68(v85);
        v66 = swift_allocObject();
        *(v66 + 16) = sub_26E7A5B18;
        *(v66 + 24) = v63;
        v97[2] = sub_26E7A5B44;
        v97[3] = v66;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        v97[0] = sub_26E7A04A0;
        v97[1] = &block_descriptor_43;
        v67 = _Block_copy(aBlock);

        dispatch_sync(v64, v67);

        _Block_release(v67);
        LOBYTE(v64) = swift_isEscapingClosureAtFileLocation();

        if (v64)
        {
          goto LABEL_37;
        }

        v85 = sub_26E7A5B18;
        v84 = v63;
        v24 = v92;
        v9 = v90;
        v8 = v91;
        v25 = v93;
        v26 = v58;
        v3 = &qword_2806C6128;
        goto LABEL_25;
      }

      v26 = v58;
LABEL_25:
      v27 = v80;
LABEL_26:
      v68 = v95;
      *(v19 + v94) = 0;
      if (!*(v19 + v68))
      {
        *v81 = 128;
        v89[v26] = 0;
        v26 = (v26 + 1);
      }

      continue;
    }

    v31 = v27;
    v32 = v26;
    v33 = v30;
    v34 = [v33 v28[95]];
    v35 = [v34 mutableAudioBufferList];

    v36 = v35[2];
    if (!v36)
    {
      goto LABEL_40;
    }

    v37 = v94;
    v38 = *(v19 + v94);
    v39 = [v33 v28[95]];
    v40 = [v39 frameLength];

    if (v38 >= v40)
    {

      *(v19 + v37) = 0;
      v29 = *(v19 + v95);
      *(v19 + v95) = 0;

      v9 = v90;
      v8 = v91;
      v25 = v93;
      v26 = v32;
    }

    else
    {
      *&v89[v32] = vcvts_n_f32_s32(*(v36 + 2 * *(v19 + v37)), 0xFuLL);

      v41 = *(v19 + v37);
      v42 = __CFADD__(v41, 1);
      v43 = v41 + 1;
      v25 = v93;
      if (v42)
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v26 = (v32 + 1);
      *(v19 + v37) = v43;
      v9 = v90;
      v8 = v91;
    }

    v27 = v31;
    v3 = &qword_2806C6128;
    v24 = v92;
    v28 = &unk_279DB9000;
  }

  while (v26 < v24);
  p_vtable = (&OBJC_METACLASS___TTSMauiSpeechEngine + 24);
  v69 = v85;
  if (!(v26 >> 30))
  {
    goto LABEL_34;
  }

  __break(1u);
LABEL_31:
  if (!(v3 >> 30))
  {
    bzero(v89, (4 * v3));
    *v81 = 128;
    sub_26ECC5748();

    return;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

Swift::Void __swiftcall MauiAUSPAudioUnit.synthesizeSpeechRequest(_:)(AVSpeechSynthesisProviderRequest a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6128);
  MEMORY[0x28223BE20](v4 - 8);
  v154 = v141 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6130);
  MEMORY[0x28223BE20](v6 - 8);
  v151 = v141 - v7;
  v157 = sub_26ECC56D8();
  v156 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v9 = v141 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_26ECC5708();
  v149 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v148 = v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_26ECC56F8();
  v152 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v159 = v141 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_26ECC5728();
  v158 = *(v160 - 1);
  MEMORY[0x28223BE20](v160);
  v168 = v141 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6138);
  v162 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v167 = v141 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6140);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v165 = v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v161 = v141 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = v141 - v19;
  v21 = sub_26ECC55F8();
  v22 = *(v21 - 8);
  v170 = v21;
  v171 = v22;
  v23 = MEMORY[0x28223BE20](v21);
  v166 = v141 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v163 = v141 - v25;
  v26 = sub_26ECC5598();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = (v141 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = *&v2[qword_28118F2B8];
  *&v2[qword_28118F2B8] = a1;
  v31 = a1.super.isa;

  v141[1] = sub_26ECC5678();
  v32 = sub_26ECC5668();
  v33 = *MEMORY[0x277D70180];
  v34 = *(v27 + 104);
  v144 = v27 + 104;
  v143 = v34;
  v34(v29, v33, v26);
  v172 = v31;
  v35 = [(objc_class *)v31 jobIdentifier];
  sub_26ECC5838();

  sub_26ECC5658();

  v36 = *(v27 + 8);
  v145 = v29;
  v147 = v26;
  v146 = v27 + 8;
  v142 = v36;
  v36(v29, v26);
  v37 = v2;
  v38 = &v2[qword_28118F320];
  *v38 = 0;
  *(v38 + 1) = 0;
  v38[16] = 1;
  v169 = qword_28118F358;
  v39 = *&v2[qword_28118F358];
  v155 = v9;
  if (v39)
  {
    v40 = [v39 currentVoice];
    v41 = [v40 identifier];

    v42 = sub_26ECC5838();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0;
  }

  v45 = [(objc_class *)v172 voice];
  v46 = [v45 identifier];

  v47 = sub_26ECC5838();
  v49 = v48;

  if (v44)
  {
    if (v42 == v47 && v44 == v49)
    {

      goto LABEL_10;
    }

    v50 = sub_26ECC5A68();

    if (v50)
    {
LABEL_10:
      if (v2[qword_28118F240] != 1)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
  }

  v2[qword_28118F240] = 0;
  sub_26ECC5648();
  sub_26ECC5628();
  v51 = v172;
  v52 = [(objc_class *)v172 voice];
  v53 = [v52 identifier];

  sub_26ECC5838();
  sub_26ECC5618();

  v55 = v170;
  v54 = v171;
  if ((*(v171 + 48))(v20, 1, v170) == 1)
  {
    sub_26E7A59EC(v20, &qword_2806C6140);
LABEL_17:
    v63 = AXTTSLogCommon();
    if (v63)
    {
      v64 = v63;
      sub_26ECC5958();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6148);
      v65 = swift_allocObject();
      *(v65 + 16) = xmmword_26ECC74D0;
      v66 = [(objc_class *)v51 voice];
      v67 = [v66 identifier];

      v68 = sub_26ECC5838();
      v70 = v69;

      *(v65 + 56) = MEMORY[0x277D837D0];
      *(v65 + 64) = sub_26E7A19E8();
      *(v65 + 32) = v68;
      *(v65 + 40) = v70;
      sub_26ECC5738();

      return;
    }

    __break(1u);
LABEL_42:
    __break(1u);
    __break(1u);
    return;
  }

  v56 = v163;
  (*(v54 + 32))(v163, v20, v55);
  v57 = sub_26E79D0AC();
  if (!v57)
  {
    (*(v54 + 8))(v56, v55);
    goto LABEL_17;
  }

  v58 = v57;
  v59 = v161;
  (*(v54 + 16))(v161, v56, v55);
  (*(v54 + 56))(v59, 0, 1, v55);
  v60 = qword_28118F238;
  swift_beginAccess();
  sub_26E7A5984(v59, &v2[v60], &qword_2806C6140);
  swift_endAccess();
  sub_26ECC5628();
  *(swift_allocObject() + 16) = v2;
  v2;
  sub_26ECC5638();

  v61 = v169;
  v62 = *&v2[v169];
  if (v62)
  {
    [v62 setVoice_];
  }

  else
  {
    v71 = [objc_allocWithZone(TTSMauiSpeechEngine) initWithVoice_];
    v72 = *&v2[v61];
    *&v2[v61] = v71;
  }

  sub_26E7A1FC4(v56);

  (*(v171 + 8))(v56, v55);
LABEL_21:
  v73 = v169;
  v74 = *&v37[v169];
  v75 = v164;
  if (v74)
  {
    v76 = v162;
    v77 = *(v162 + 16);
    v78 = v167;
    v77(v167, &v37[qword_28118F2C0], v164);
    v79 = v74;
    sub_26ECC5568();
    v80 = *(v76 + 8);
    v80(v78, v75);
    v81 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    [v79 setTimbre_];

    v82 = *&v37[v73];
    if (v82)
    {
      v83 = v167;
      v77(v167, &v37[qword_28118F2E8], v75);
      v84 = v82;
      sub_26ECC5568();
      v80(v83, v75);
      v85 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      [v84 setPostSentencePauseDuration_];
    }
  }

  v86 = qword_28118F238;
  swift_beginAccess();
  v87 = v165;
  sub_26E7A5AB0(&v37[v86], v165, &qword_2806C6140);
  v89 = v170;
  v88 = v171;
  v90 = (*(v171 + 48))(v87, 1, v170);
  v91 = v166;
  v92 = v168;
  if (v90 == 1)
  {
    sub_26E7A59EC(v87, &qword_2806C6140);
    v93 = AXTTSLogCommon();
    if (v93)
    {
      v94 = v93;
      sub_26ECC5958();
      sub_26ECC5738();

      [v37 cancelSpeechRequest];
      return;
    }

    goto LABEL_42;
  }

  (*(v88 + 32))(v166, v87, v89);
  v95 = [(objc_class *)v172 ssmlRepresentation];
  sub_26ECC5838();

  sub_26ECC5718();
  v96 = *&v37[v169];
  if (!v96)
  {
    aBlock = 0x3D6C6C6570735C1BLL;
    v174 = 0xE800000000000000;
    goto LABEL_34;
  }

  v97 = [v96 currentVoice];
  v98 = [v97 language];

  v99 = sub_26ECC5838();
  v101 = v100;

  if (v99 != 0x4E432D6E6D63 || v101 != 0xE600000000000000)
  {
    v102 = sub_26ECC5A68();

    aBlock = 0x3D6C6C6570735C1BLL;
    v174 = 0xE800000000000000;
    if (v102)
    {
      goto LABEL_33;
    }

LABEL_34:
    v103 = 0xE100000000000000;
    v104 = 48;
    goto LABEL_35;
  }

  aBlock = 0x3D6C6C6570735C1BLL;
  v174 = 0xE800000000000000;
LABEL_33:
  v103 = 0xE200000000000000;
  v104 = 12339;
LABEL_35:
  MEMORY[0x27437EA80](v104, v103);

  MEMORY[0x27437EA80](92, 0xE100000000000000);
  sub_26ECC55E8();
  v105 = __swift_project_boxed_opaque_existential_1(&aBlock, v176);
  MEMORY[0x28223BE20](v105);
  (*(v107 + 16))(v141 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26ECC5558();
  sub_26ECC5918();
  v108 = v149;
  v109 = v148;
  v110 = v150;
  (*(v149 + 104))(v148, *MEMORY[0x277D70388], v150);
  sub_26ECC5688();

  (*(v108 + 8))(v109, v110);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v111 = v160;
  v176 = v160;
  v177 = MEMORY[0x277D70390];
  v112 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
  (*(v158 + 16))(v112, v92, v111);
  v113 = v155;
  sub_26ECC56E8();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v114 = sub_26ECC5668();
  v115 = v172;
  v116 = [(objc_class *)v172 ssmlRepresentation];
  v117 = sub_26ECC5838();
  v119 = v118;

  v120 = sub_26ECC56B8();
  v121 = v145;
  *v145 = v117;
  v121[1] = v119;
  v121[2] = v120;
  v121[3] = v122;
  v123 = v147;
  v143(v121, *MEMORY[0x277D70190], v147);
  v124 = [(objc_class *)v115 jobIdentifier];
  sub_26ECC5838();

  sub_26ECC5658();

  v142(v121, v123);
  *&v37[qword_28118F2F0] = 0;
  *&v37[qword_28118F308] = 0;
  v125 = v156;
  v126 = v151;
  v127 = v157;
  (*(v156 + 16))(v151, v113, v157);
  (*(v125 + 56))(v126, 0, 1, v127);
  v128 = qword_28118F230;
  swift_beginAccess();
  sub_26E7A5984(v126, &v37[v128], &qword_2806C6130);
  swift_endAccess();
  v129 = *&v37[v169];
  if (v129)
  {
    v130 = [v129 ruleSetRunner];
    v131 = swift_allocObject();
    *(v131 + 16) = v115;
    v177 = sub_26E7A27A0;
    v178 = v131;
    aBlock = MEMORY[0x277D85DD0];
    v174 = 1107296256;
    v175 = sub_26E7A1C18;
    v176 = &block_descriptor;
    v132 = _Block_copy(&aBlock);
    v133 = v115;

    [v130 setMatchLogger_];
    _Block_release(v132);
  }

  v134 = v154;
  sub_26ECC54F8();
  v135 = sub_26ECC5508();
  (*(*(v135 - 8) + 56))(v134, 0, 1, v135);
  v136 = qword_28118F338;
  swift_beginAccess();
  sub_26E7A5984(v134, &v37[v136], &qword_2806C6128);
  swift_endAccess();
  v137 = v170;
  v138 = *&v37[v169];
  if (v138)
  {
    v139 = v138;
    sub_26ECC56B8();
    v140 = sub_26ECC5828();

    [v139 speakString_];
  }

  (*(v125 + 8))(v113, v127);
  (*(v152 + 8))(v159, v153);
  (*(v158 + 8))(v168, v160);
  (*(v171 + 8))(v91, v137);
}

unint64_t sub_26E7A19E8()
{
  result = qword_2806C6150;
  if (!qword_2806C6150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6150);
  }

  return result;
}

uint64_t sub_26E7A1A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v27 = a4;
  v28 = a8;
  v25 = a5;
  v26 = a3;
  v12 = sub_26ECC5598();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26ECC5678();
  v16 = sub_26ECC5668();

  v17 = [a7 identifier];
  v18 = sub_26ECC5838();
  v20 = v19;

  *v15 = a1;
  v15[1] = a2;
  v21 = v26;
  v15[2] = v25;
  v15[3] = a6;
  v22 = v27;
  v15[4] = v21;
  v15[5] = v22;
  v15[6] = v18;
  v15[7] = v20;
  (*(v13 + 104))(v15, *MEMORY[0x277D70170], v12);
  v23 = [v28 jobIdentifier];
  sub_26ECC5838();

  sub_26ECC5658();

  return (*(v13 + 8))(v15, v12);
}

void sub_26E7A1C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = *(a1 + 32);
  v10 = sub_26ECC5838();
  v12 = v11;
  v13 = sub_26ECC5838();
  v15 = v14;

  v16 = a6;
  v9(v10, v12, a3, a4, v13, v15, v16);
}

void sub_26E7A1CF4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  MauiAUSPAudioUnit.synthesizeSpeechRequest(_:)(v4);
}

Swift::Void __swiftcall MauiAUSPAudioUnit.cancelSpeechRequest()()
{
  v1 = v0;
  v2 = sub_26ECC5598();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26ECC5678();
  v6 = sub_26ECC5668();
  (*(v3 + 104))(v5, *MEMORY[0x277D70178], v2);
  v7 = qword_28118F2B8;
  v8 = *(v1 + qword_28118F2B8);
  if (v8)
  {
    v9 = [v8 jobIdentifier];
    sub_26ECC5838();
  }

  sub_26ECC5658();

  (*(v3 + 8))(v5, v2);
  [*(v1 + qword_28118F358) cancelSpeaking];
  v10 = *(v1 + v7);
  *(v1 + v7) = 0;

  *(v1 + qword_28118F2F0) = 0;
  v11 = *(v1 + qword_28118F360);
  *(v1 + qword_28118F360) = 0;

  *(v1 + qword_28118F308) = 0;
}

void sub_26E7A1F1C(void *a1)
{
  v1 = a1;
  MauiAUSPAudioUnit.cancelSpeechRequest()();
}

id sub_26E7A1F64()
{
  sub_26E79E3A4(0, &unk_28118F1C8);
  v0 = sub_26ECC58C8();

  return v0;
}

void sub_26E7A1FC4(uint64_t a1)
{
  v3 = sub_26ECC57A8();
  v61 = *(v3 - 8);
  v62 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v59 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v60 = &v47 - v6;
  v7 = sub_26ECC5768();
  v57 = *(v7 - 8);
  v58 = v7;
  MEMORY[0x28223BE20](v7);
  v55 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_26ECC5788();
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v53 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26ECC55F8();
  v50 = *(v10 - 8);
  v51 = v10;
  MEMORY[0x28223BE20](v10);
  v48 = v11;
  v49 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6238);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v47 - v13;
  v15 = qword_28118F358;
  v16 = v1;
  [*&v1[qword_28118F358] unloadAllVoiceResources];
  sub_26ECC56A8();
  v17 = sub_26ECC5558();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v52 = a1;
  v18 = sub_26ECC5698();
  sub_26E7A59EC(v14, &qword_2806C6238);
  if (v18 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26ECC5A28())
  {
    v20 = 0;
    while (1)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x27437EC00](v20, v18);
      }

      else
      {
        if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v21 = *(v18 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v24 = *&v16[v15];
      if (v24)
      {
        v25 = v24;
        [v25 loadRuleset_];
      }

      ++v20;
      if (v23 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:

  v26 = dispatch_semaphore_create(0);
  v27 = *&v16[qword_28118F300];
  v29 = v49;
  v28 = v50;
  v30 = v51;
  (*(v50 + 16))(v49, v52, v51);
  v31 = (*(v28 + 80) + 24) & ~*(v28 + 80);
  v32 = (v48 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  *(v33 + 16) = v16;
  (*(v28 + 32))(v33 + v31, v29, v30);
  *(v33 + v32) = v26;
  aBlock[4] = sub_26E7A5864;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26E7A3414;
  aBlock[3] = &block_descriptor_25;
  v34 = _Block_copy(aBlock);
  v35 = v27;
  v36 = v16;
  v37 = v26;
  v38 = v53;
  sub_26ECC5778();
  v63 = MEMORY[0x277D84F90];
  sub_26E7A58F4(&qword_2806C6240, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6248);
  sub_26E7A593C(&qword_2806C6250, &qword_2806C6248);
  v39 = v55;
  v40 = v58;
  sub_26ECC59F8();
  MEMORY[0x27437EB80](0, v38, v39, v34);
  _Block_release(v34);

  (*(v57 + 8))(v39, v40);
  (*(v54 + 8))(v38, v56);

  v41 = v59;
  sub_26ECC5798();
  v42 = v60;
  sub_26ECC57B8();
  v43 = v62;
  v44 = *(v61 + 8);
  v44(v41, v62);
  sub_26ECC59A8();
  v44(v42, v43);
  if ((sub_26ECC5758() & 1) == 0)
  {
    goto LABEL_18;
  }

  v45 = AXTTSLogCommon();
  if (v45)
  {
    v46 = v45;
    sub_26ECC5958();
    sub_26ECC5738();

LABEL_18:
    return;
  }

  __break(1u);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_26E7A27C0(void *a1, uint64_t a2, uint64_t a3)
{
  v59 = a3;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6258);
  MEMORY[0x28223BE20](v56);
  v57 = &v51 - v5;
  v6 = sub_26ECC5558();
  v60 = *(v6 - 1);
  v61 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C61F0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v52 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v63 = &v51 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v51 - v14;
  v16 = sub_26ECC5528();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v51 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v51 - v20;
  sub_26ECC5518();
  v55 = *(v17 + 16);
  v55(v15, v21, v16);
  v62 = v17;
  v54 = *(v17 + 56);
  v54(v15, 0, 1, v16);
  v22 = qword_28118F2D8;
  swift_beginAccess();
  v58 = a1;
  sub_26E7A5984(v15, a1 + v22, &qword_2806C61F0);
  swift_endAccess();
  v23 = sub_26ECC55A8();
  v24 = objc_opt_self();
  v53 = a2;
  sub_26ECC55C8();
  sub_26ECC5538();
  (v60)[1](v8, v61);
  v25 = sub_26ECC5828();

  v61 = v23;
  v26 = [v23 voiceType];
  v60 = v24;
  v27 = [v24 effectiveResourceForLanguageCode:v25 andVoiceType:v26];

  if (!v27)
  {
    v34 = v21;
    v32 = v62;
    v35 = v16;
    result = AXTTSLogCommon();
    if (result)
    {
      v37 = result;
      sub_26ECC5938();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6148);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_26ECC74D0;
      v39 = sub_26ECC55B8();
      v41 = v40;
      *(v38 + 56) = MEMORY[0x277D837D0];
      *(v38 + 64) = sub_26E7A19E8();
      *(v38 + 32) = v39;
      *(v38 + 40) = v41;
      sub_26ECC5738();

      sub_26ECC59B8();
      v27 = v61;
      v16 = v35;
LABEL_15:

      return (*(v32 + 8))(v34, v16);
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28 = v63;
  v55(v63, v21, v16);
  v54(v28, 0, 1, v16);
  v29 = v57;
  v30 = *(v56 + 48);
  sub_26E7A5AB0(v28, v57, &qword_2806C61F0);
  v31 = v58;
  sub_26E7A5AB0(v58 + v22, v29 + v30, &qword_2806C61F0);
  v32 = v62;
  v33 = *(v62 + 48);
  v34 = v21;
  if (v33(v29, 1, v16) == 1)
  {
    sub_26E7A59EC(v63, &qword_2806C61F0);
    if (v33(v29 + v30, 1, v16) == 1)
    {
      sub_26E7A59EC(v29, &qword_2806C61F0);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v42 = v52;
  sub_26E7A5AB0(v29, v52, &qword_2806C61F0);
  if (v33(v29 + v30, 1, v16) == 1)
  {
    sub_26E7A59EC(v63, &qword_2806C61F0);
    (*(v32 + 8))(v42, v16);
LABEL_9:
    sub_26E7A59EC(v29, &qword_2806C6258);
LABEL_10:
    sub_26ECC59B8();
    result = AXTTSLogCommon();
    if (result)
    {
      v43 = result;
      sub_26ECC5938();
      sub_26ECC5738();

      v27 = v43;
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_17;
  }

  v44 = v51;
  (*(v32 + 32))(v51, v29 + v30, v16);
  sub_26E7A58F4(&qword_2806C6260, MEMORY[0x277CC95F0]);
  v45 = sub_26ECC5818();
  v46 = *(v32 + 8);
  v46(v44, v16);
  sub_26E7A59EC(v63, &qword_2806C61F0);
  v46(v42, v16);
  v31 = v58;
  sub_26E7A59EC(v29, &qword_2806C61F0);
  if ((v45 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_13:
  v47 = swift_allocObject();
  *(v47 + 16) = v31;
  aBlock[4] = sub_26E7A5A4C;
  aBlock[5] = v47;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26E7A3218;
  aBlock[3] = &block_descriptor_31;
  v48 = _Block_copy(aBlock);
  v49 = v31;

  [v60 enumerateLoadableResourcesInAsset:v27 usingBlock:v48];
  _Block_release(v48);
  result = AXTTSLogCommon();
  if (result)
  {
    v50 = result;
    sub_26ECC5948();
    sub_26ECC5738();

    sub_26ECC59B8();
    goto LABEL_15;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_26E7A3020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = [objc_allocWithZone(TTSMauiVoiceResource) init];
  if (a3 != 0xD000000000000022 || 0x800000026EDAA6B0 != a4)
  {
    v21 = v12;
    if ((sub_26ECC5A68() & 1) == 0)
    {
      if (a3 == 0xD000000000000020 && 0x800000026EDAA6E0 == a4 || (sub_26ECC5A68() & 1) != 0)
      {
        v13 = 1;
      }

      else if (a3 == 0xD00000000000001FLL && 0x800000026EDAA710 == a4)
      {
        v13 = 2;
      }

      else if (sub_26ECC5A68())
      {
        v13 = 2;
      }

      else
      {
        v13 = 0;
      }

      [v21 setType_];
      v14 = sub_26ECC5828();
      [v21 setResourceName_];

      v15 = a5();
      v17 = v16;
      v18 = sub_26ECC54C8();
      sub_26E7A5A5C(v15, v17);
      [v21 setResourceData_];

      v19 = *(a8 + qword_28118F358);
      [v19 loadVoiceResource_];
    }
  }

  return MEMORY[0x2821F9730]();
}

uint64_t sub_26E7A3218(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v19 = sub_26ECC54B8();
  v6 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 32);
  v9 = sub_26ECC5838();
  v11 = v10;
  v12 = sub_26ECC5838();
  v14 = v13;
  v15 = _Block_copy(a4);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  sub_26ECC54A8();

  v18(v9, v11, v12, v14, sub_26E7A5A54, v16, v8);

  return (*(v6 + 8))(v8, v19);
}

uint64_t sub_26E7A33C0(uint64_t a1)
{
  v1 = (*(a1 + 16))();
  v2 = sub_26ECC54D8();

  return v2;
}

uint64_t sub_26E7A3414(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_26E7A3458(uint64_t a1, int a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6130);
  (MEMORY[0x28223BE20])();
  v5 = &v24 - v4;
  v6 = sub_26ECC56D8();
  v7 = *(v6 - 8);
  result = (MEMORY[0x28223BE20])();
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v2[qword_28118F2B8];
  if (v11)
  {
    v12 = qword_28118F230;
    swift_beginAccess();
    sub_26E7A5AB0(&v2[v12], v5, &qword_2806C6130);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      return sub_26E7A59EC(v5, &qword_2806C6130);
    }

    else
    {
      (*(v7 + 32))(v10, v5, v6);
      v13 = v11;
      v14 = [v2 speechSynthesisOutputMetadataBlock];
      if (v14)
      {
        v15 = v14;
        v26 = a2;
        v16 = [v13 ssmlRepresentation];
        v25 = sub_26ECC5838();
        v18 = v17;

        v27 = sub_26E7A5504(v19);
        v20 = sub_26E7A45D8(&v27);
        v21 = v27;
        MEMORY[0x28223BE20](v20);
        v22 = v25;
        *(&v24 - 6) = v10;
        *(&v24 - 5) = v22;
        *(&v24 - 4) = v18;
        *(&v24 - 3) = v2;
        *(&v24 - 2) = v13;
        *(&v24 - 2) = v26;
        sub_26E7A3B5C(sub_26E7A57E4, (&v24 - 8), v21);

        sub_26E79E3A4(0, &unk_2806C6208);
        v23 = sub_26ECC58C8();

        (v15)[2](v15, v23, v13);

        _Block_release(v15);
      }

      else
      {
      }

      return (*(v7 + 8))(v10, v6);
    }
  }

  return result;
}

void sub_26E7A378C(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, void *a4@<X5>, unsigned int a5@<W6>, void *a6@<X8>)
{
  v36 = a4;
  v39 = a3;
  v11 = sub_26ECC5598();
  v37 = *(v11 - 8);
  v38 = v11;
  MEMORY[0x28223BE20]();
  v13 = (&v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v35 = a5;
    v40 = a6;
    v43 = v6;
    objc_opt_self();
    v14 = swift_dynamicCastObjCClassUnconditional();
    swift_unknownObjectRetain();
    v34 = v14;
    [v14 wordRange];
    sub_26ECC56B8();
    sub_26ECC5928();
    v16 = v15;

    if (v16 & 1) != 0 || (sub_26ECC56C8(), (v17) || (v41 = a1, v42 = a2, sub_26E7A580C(), v23 = sub_26ECC5878(), sub_26ECC58A8(), v24 = sub_26ECC5898(), , v25 = v39 + qword_28118F320, (*(v39 + qword_28118F320 + 16) & 1) == 0) && *v25 == v23 && *(v25 + 8) == v24)
    {
      swift_unknownObjectRelease();
      v18 = 0;
    }

    else
    {
      *v25 = v23;
      *(v25 + 8) = v24;
      *(v25 + 16) = 0;
      sub_26ECC5678();
      v26 = sub_26ECC5668();
      *v13 = [v34 wordRange];
      v13[1] = v27;
      v13[2] = v23;
      v13[3] = v24;
      v29 = v37;
      v28 = v38;
      (*(v37 + 104))(v13, *MEMORY[0x277D70188], v38);
      v30 = [v36 jobIdentifier];
      sub_26ECC5838();
      v39 = v23;

      sub_26ECC5658();

      (*(v29 + 8))(v13, v28);
      v31 = v35;
      v32 = objc_allocWithZone(MEMORY[0x277CB8478]);
      v18 = [v32 initWithMarkerType:1 forTextRange:v39 atByteSampleOffset:{v24, v31}];
      swift_unknownObjectRelease();
    }

    a6 = v40;
    goto LABEL_12;
  }

  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (!v19)
  {
    v18 = 0;
    goto LABEL_12;
  }

  v20 = v19;
  swift_unknownObjectRetain();
  v21 = [v20 name];
  if (v21)
  {
    v22 = v21;
    v18 = [objc_allocWithZone(MEMORY[0x277CB8478]) initWithBookmarkName:v21 atByteSampleOffset:a5];
    swift_unknownObjectRelease();

LABEL_12:
    *a6 = v18;
    return;
  }

  __break(1u);
}

uint64_t sub_26E7A3B5C(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v15 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
LABEL_19:
    v5 = sub_26ECC5A28();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v11 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x27437EC00](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_15:
            __break(1u);
LABEL_16:

            swift_unknownObjectRelease();
            return v11;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_19;
          }

          v7 = *(a3 + 8 * v6 + 32);
          swift_unknownObjectRetain();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_15;
          }
        }

        v14 = v7;
        a1(&v13, &v14);
        if (v3)
        {
          goto LABEL_16;
        }

        v9 = swift_unknownObjectRelease();
        if (v13)
        {
          MEMORY[0x27437EAB0](v9);
          if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_26ECC58E8();
          }

          sub_26ECC5908();
          v11 = v15;
        }

        ++v6;
        if (v8 == v5)
        {
          return v11;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_26E7A3D18()
{
  sub_26E7A59EC(v0 + qword_28118F230, &qword_2806C6130);

  sub_26E7A59EC(v0 + qword_28118F238, &qword_2806C6140);
  sub_26E7A59EC(v0 + qword_28118F2D8, &qword_2806C61F0);

  sub_26E7A59EC(v0 + qword_28118F338, &qword_2806C6128);
  v1 = qword_28118F2C0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6138);
  v5 = *(*(v2 - 8) + 8);
  (v5)((v2 - 8), v0 + v1, v2);
  v3 = v0 + qword_28118F2E8;

  return v5(v3, v2);
}

id MauiAUSPAudioUnit.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MauiAUSPAudioUnit();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_26E7A3F10()
{
  sub_26E7A4334(319, &qword_28118F250, MEMORY[0x277D70378]);
  if (v0 <= 0x3F)
  {
    sub_26E7A4334(319, &unk_28118F258, MEMORY[0x277D702F8]);
    if (v1 <= 0x3F)
    {
      sub_26E7A4334(319, &qword_28118F380, MEMORY[0x277CC95F0]);
      if (v2 <= 0x3F)
      {
        sub_26E7A4334(319, &qword_28118F388, MEMORY[0x277CC9578]);
        if (v3 <= 0x3F)
        {
          sub_26E7A4388();
          if (v4 <= 0x3F)
          {
            swift_initClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_26E7A4170(uint64_t a1)
{
  sub_26E7A59EC(a1 + qword_28118F230, &qword_2806C6130);

  sub_26E7A59EC(a1 + qword_28118F238, &qword_2806C6140);
  sub_26E7A59EC(a1 + qword_28118F2D8, &qword_2806C61F0);

  sub_26E7A59EC(a1 + qword_28118F338, &qword_2806C6128);
  v2 = qword_28118F2C0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6138);
  v6 = *(*(v3 - 8) + 8);
  (v6)((v3 - 8), a1 + v2, v3);
  v4 = a1 + qword_28118F2E8;

  return v6(v4, v3);
}

void sub_26E7A4334(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26ECC59E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26E7A4388()
{
  if (!qword_28118F370)
  {
    v0 = sub_26ECC5588();
    if (!v1)
    {
      atomic_store(v0, &qword_28118F370);
    }
  }
}

uint64_t getEnumTagSinglePayload for MauiAUSPParameter(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MauiAUSPParameter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26E7A4560()
{
  result = qword_2806C61C0;
  if (!qword_2806C61C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C61C0);
  }

  return result;
}

uint64_t sub_26E7A45D8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_26E7A57D0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_26E7A47E0(v6);
  return sub_26ECC5A18();
}

char *sub_26E7A4654(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6230);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_26E7A4758(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C61F8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_26E7A47E0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26ECC5A58();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6218);
        v6 = sub_26ECC58F8();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_26E7A4A2C(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_26E7A48F0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26E7A48F0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + 8 * a3 - 8);
    v6 = result - a3;
LABEL_5:
    v16 = a3;
    v14 = v6;
    v15 = v5;
    while (1)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        v7 = result;
        objc_opt_self();
        result = swift_dynamicCastObjCClass();
        if (result)
        {
          v8 = result;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v9 = [v7 wordRange];
          v10 = [v8 wordRange];
          swift_unknownObjectRelease();
          result = swift_unknownObjectRelease();
          if (v9 >= v10)
          {
LABEL_4:
            a3 = v16 + 1;
            v5 = v15 + 1;
            v6 = v14 - 1;
            if (v16 + 1 == a2)
            {
              return result;
            }

            goto LABEL_5;
          }
        }
      }

      if (!v4)
      {
        break;
      }

      v11 = *v5;
      *v5 = v5[1];
      v5[1] = v11;
      --v5;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26E7A4A2C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v95 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_102:
    v4 = v7;
    v7 = *v95;
    if (!*v95)
    {
      goto LABEL_142;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v9 = v105;
    if ((result & 1) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_104;
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v8 = 0x277D70000uLL;
  while (1)
  {
    v9 = v6;
    v10 = v6 + 1;
    if (v6 + 1 < v5)
    {
      v11 = *a3;
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      v98 = v5;
      if (result)
      {
        v12 = v9;
        v13 = result;
        objc_opt_self();
        result = swift_dynamicCastObjCClass();
        if (result)
        {
          v14 = result;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v15 = [v13 wordRange];
          v4 = [v14 wordRange];
          swift_unknownObjectRelease();
          result = swift_unknownObjectRelease();
          v16 = v15 < v4;
        }

        else
        {
          v16 = 1;
        }

        v101 = v16;
        v9 = v12;
      }

      else
      {
        v101 = 1;
      }

      v10 = v9 + 2;
      if (v9 + 2 >= v5)
      {
        goto LABEL_21;
      }

      v92 = v9;
      v17 = v11 + 8 * v9 + 16;
      do
      {
        objc_opt_self();
        result = swift_dynamicCastObjCClass();
        if (result && (v18 = result, objc_opt_self(), (result = swift_dynamicCastObjCClass()) != 0))
        {
          v19 = result;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v20 = [v18 wordRange];
          v5 = v98;
          v4 = [v19 wordRange];
          swift_unknownObjectRelease();
          result = swift_unknownObjectRelease();
          if (((v101 ^ (v20 >= v4)) & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        else if (!v101)
        {
          v9 = v92;
          goto LABEL_31;
        }

        ++v10;
        v17 += 8;
      }

      while (v5 != v10);
      v10 = v5;
LABEL_20:
      v9 = v92;
LABEL_21:
      if (v101)
      {
        if (v10 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v10)
        {
          v21 = 8 * v10 - 8;
          v22 = 8 * v9;
          v23 = v10;
          v24 = v9;
          do
          {
            if (v24 != --v23)
            {
              v26 = *a3;
              if (!*a3)
              {
                goto LABEL_139;
              }

              v25 = *(v26 + v22);
              *(v26 + v22) = *(v26 + v21);
              *(v26 + v21) = v25;
            }

            ++v24;
            v21 -= 8;
            v22 += 8;
          }

          while (v24 < v23);
        }
      }
    }

LABEL_31:
    v27 = a3[1];
    if (v10 < v27)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_132;
      }

      if (v10 - v9 < a4)
      {
        v28 = (v9 + a4);
        if (__OFADD__(v9, a4))
        {
          goto LABEL_133;
        }

        if (v28 >= v27)
        {
          v28 = a3[1];
        }

        if (v28 < v9)
        {
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          result = sub_26E7A54F0(v4);
          v4 = result;
LABEL_104:
          v84 = v4 + 2;
          v85 = v4[2];
          if (v85 >= 2)
          {
            while (*a3)
            {
              v86 = &v4[2 * v85];
              v87 = *v86;
              v88 = &v84[2 * v85];
              v89 = v88[1];
              sub_26E7A5184((*a3 + 8 * *v86), (*a3 + 8 * *v88), (*a3 + 8 * v89), v7);
              if (v9)
              {
              }

              if (v89 < v87)
              {
                goto LABEL_128;
              }

              if (v85 - 2 >= *v84)
              {
                goto LABEL_129;
              }

              *v86 = v87;
              v86[1] = v89;
              v90 = *v84 - v85;
              if (*v84 < v85)
              {
                goto LABEL_130;
              }

              v85 = *v84 - 1;
              result = memmove(v88, v88 + 2, 16 * v90);
              *v84 = v85;
              if (v85 <= 1)
              {
              }
            }

            goto LABEL_140;
          }
        }

        if (v10 != v28)
        {
          break;
        }
      }
    }

LABEL_50:
    if (v10 < v9)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26E7A4654(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v38 = v7[2];
    v37 = v7[3];
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_26E7A4654((v37 > 1), v38 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v39;
    v4 = v7 + 4;
    v40 = &v7[2 * v38 + 4];
    *v40 = v9;
    v40[1] = v10;
    v100 = *v95;
    if (!*v95)
    {
      goto LABEL_141;
    }

    v103 = v10;
    if (v38)
    {
      while (1)
      {
        v41 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v42 = v7[4];
          v43 = v7[5];
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_70:
          if (v45)
          {
            goto LABEL_118;
          }

          v58 = &v7[2 * v39];
          v60 = *v58;
          v59 = v58[1];
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_120;
          }

          v64 = &v4[2 * v41];
          v66 = *v64;
          v65 = v64[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_125;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v39 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        if (v39 < 2)
        {
          goto LABEL_126;
        }

        v68 = &v7[2 * v39];
        v70 = *v68;
        v69 = v68[1];
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_85:
        if (v63)
        {
          goto LABEL_122;
        }

        v71 = &v4[2 * v41];
        v73 = *v71;
        v72 = v71[1];
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_124;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_92:
        if (v41 - 1 >= v39)
        {
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*a3)
        {
          goto LABEL_138;
        }

        v79 = v8;
        v80 = &v4[2 * v41 - 2];
        v81 = *v80;
        v9 = &v4[2 * v41];
        v82 = *(v9 + 8);
        sub_26E7A5184((*a3 + 8 * *v80), (*a3 + 8 * *v9), (*a3 + 8 * v82), v100);
        if (v105)
        {
        }

        if (v82 < v81)
        {
          goto LABEL_113;
        }

        if (v41 > v7[2])
        {
          goto LABEL_114;
        }

        *v80 = v81;
        v80[1] = v82;
        v83 = v7[2];
        if (v41 >= v83)
        {
          goto LABEL_115;
        }

        v39 = v83 - 1;
        result = memmove(&v4[2 * v41], (v9 + 16), 16 * (v83 - 1 - v41));
        v7[2] = v83 - 1;
        v8 = v79;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = &v4[2 * v39];
      v47 = *(v46 - 8);
      v48 = *(v46 - 7);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_116;
      }

      v51 = *(v46 - 6);
      v50 = *(v46 - 5);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_117;
      }

      v53 = &v7[2 * v39];
      v55 = *v53;
      v54 = v53[1];
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_119;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_121;
      }

      if (v57 >= v49)
      {
        v75 = &v4[2 * v41];
        v77 = *v75;
        v76 = v75[1];
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_127;
        }

        if (v44 < v78)
        {
          v41 = v39 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_70;
    }

LABEL_3:
    v6 = v103;
    v5 = a3[1];
    if (v103 >= v5)
    {
      goto LABEL_102;
    }
  }

  v91 = v7;
  v93 = v9;
  v29 = *a3;
  v30 = (*a3 + 8 * v10 - 8);
  v31 = (v9 - v10);
  v96 = v28;
LABEL_41:
  v99 = v30;
  v102 = v10;
  v97 = v31;
  while (1)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v32 = result;
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        v33 = result;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v34 = [v32 wordRange];
        v4 = [v33 wordRange];
        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        if (v34 >= v4)
        {
LABEL_40:
          ++v10;
          v30 = v99 + 8;
          v31 = v97 - 1;
          if ((v102 + 1) != v96)
          {
            goto LABEL_41;
          }

          v10 = v96;
          v7 = v91;
          v9 = v93;
          goto LABEL_50;
        }
      }
    }

    if (!v29)
    {
      break;
    }

    v35 = *v30;
    *v30 = *(v30 + 1);
    *(v30 + 1) = v35;
    v30 -= 8;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

uint64_t sub_26E7A5184(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a3;
  v5 = __dst;
  v6 = __src;
  v7 = __dst - __src;
  v8 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v8 = __dst - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - __dst;
  v11 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v11 = a3 - __dst;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v12] <= a4)
    {
      v23 = a4;
      memmove(a4, __dst, 8 * v12);
      a4 = v23;
    }

    __srca = a4;
    v14 = &a4[8 * v12];
    if (v10 < 8)
    {
      v13 = a4;
      goto LABEL_44;
    }

    v13 = a4;
    if (v5 > v6)
    {
      do
      {
        v4 -= 8;
        v34 = v14;
        v32 = v5 - 8;
        while (1)
        {
          v24 = v4 + 8;
          v14 -= 8;
          objc_opt_self();
          v25 = swift_dynamicCastObjCClass();
          if (!v25)
          {
            break;
          }

          v26 = v25;
          objc_opt_self();
          v27 = swift_dynamicCastObjCClass();
          if (!v27)
          {
            break;
          }

          v28 = v27;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v29 = [v26 wordRange];
          v30 = [v28 wordRange];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v29 < v30)
          {
            break;
          }

          if (v24 != v34)
          {
            *v4 = *v14;
          }

          v4 -= 8;
          v34 = v14;
          v13 = __srca;
          if (v14 <= __srca)
          {
            goto LABEL_44;
          }
        }

        if (v24 != v5)
        {
          *v4 = *v32;
        }

        v13 = __srca;
        v14 = v34;
        if (v34 <= __srca)
        {
          break;
        }

        v5 -= 8;
      }

      while (v32 > v6);
      v5 = v32;
    }
  }

  else
  {
    v13 = a4;
    if (a4 != __src || &__src[8 * v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    if (v7 >= 8 && v5 < v4)
    {
      v14 = &v13[8 * v9];
      while (1)
      {
        objc_opt_self();
        v15 = swift_dynamicCastObjCClass();
        if (!v15)
        {
          break;
        }

        v16 = v15;
        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();
        if (!v17)
        {
          break;
        }

        v18 = v17;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v19 = [v16 wordRange];
        v20 = [v18 wordRange];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v19 < v20)
        {
          break;
        }

        v21 = v13;
        v22 = v6 == v13;
        v13 += 8;
        if (!v22)
        {
          goto LABEL_16;
        }

LABEL_17:
        v6 += 8;
        if (v13 >= v14 || v5 >= v4)
        {
          v5 = v6;
          goto LABEL_44;
        }
      }

      v21 = v5;
      v22 = v6 == v5;
      v5 += 8;
      if (v22)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v6 = *v21;
      goto LABEL_17;
    }

    v5 = v6;
    v14 = &v13[8 * v9];
  }

LABEL_44:
  if (v5 != v13 || v5 >= &v13[(v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v5, v13, 8 * ((v14 - v13) / 8));
  }

  return 1;
}

uint64_t sub_26E7A5504(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_26ECC5A28();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_26E7A4758(v3, 0);
  sub_26E7A5598((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_26E7A5598(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_26ECC5A28();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_26ECC5A28();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_26E7A593C(&qword_2806C6228, &qword_2806C6220);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6220);
            v9 = sub_26E7A5748(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6218);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_26E7A5748(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x27437EC00](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_26E7A57C8;
  }

  __break(1u);
  return result;
}

unint64_t sub_26E7A580C()
{
  result = qword_28118F220;
  if (!qword_28118F220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28118F220);
  }

  return result;
}

id sub_26E7A5864()
{
  v1 = *(sub_26ECC55F8() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_26E7A27C0(v3, v0 + v2, v4);
}

uint64_t sub_26E7A58F4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26E7A593C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26E7A5984(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_26E7A59EC(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26E7A5A5C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26E7A5AB0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_26E7A5B6C()
{
  result = qword_2806C6270;
  if (!qword_2806C6270)
  {
    sub_26E79E3A4(255, &qword_2806C6268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6270);
  }

  return result;
}

uint64_t brkhlp_ScanFilesForEnginesAndAddOns(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    ssftmap_Clear(*(a1 + 40));
  }

  result = brkhlp_FindAllEnginesAndAddOns(a1, *(a2 + 16));
  if (*(a2 + 32) && (result & 0x80000000) == 0 && *(a2 + 24))
  {
    v6 = 0;
    do
    {
      result = brkhlp_FindAllEnginesAndAddOns(a1, *(*(a2 + 32) + 8 * v6));
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      ++v6;
    }

    while (v6 < *(a2 + 24));
  }

  return result;
}

uint64_t brkhlp_FindAllEnginesAndAddOns(uint64_t a1, char *a2)
{
  v48 = 0;
  v4 = *(a1 + 16);
  __s1 = 0;
  v55 = 0;
  v52 = 0;
  __s = 0;
  v51 = 0;
  v50 = 1;
  FirstFile = brkhlp_FindFirstFile(v4, a2, "*.hdr", &__s, &v55);
  if ((FirstFile & 0x80000000) != 0)
  {
    return FirstFile;
  }

  v47 = 0;
  do
  {
    if (!v55)
    {
      FirstFile = brkhlp_FindFirstFile(v4, a2, "*.dat", &__s, &__s1);
      if ((FirstFile & 0x80000000) != 0)
      {
        return FirstFile;
      }

      if (!__s1)
      {
        goto LABEL_43;
      }

      while (1)
      {
        v21 = __s;
        log_OutText(*(v4 + 32), "BROKER", 4, 0, "brkhlp_FindHdrFileAndAddItem szFullPathName=%s", v18, v19, v20, __s);
        v22 = cstdlib_strrchr(v21, 47);
        if (v22)
        {
          v23 = v22;
        }

        else
        {
          v23 = v21 - 1;
        }

        v24 = cstdlib_strlen(v21) + v21 - v23;
        v25 = heap_Alloc(*(v4 + 8), (v24 - 4));
        if (!v25)
        {
          return 2169528330;
        }

        v26 = v25;
        v27 = (v24 - 5);
        cstdlib_strncpy(v25, v23 + 1, v27);
        *(v26 + v27) = 0;
        log_OutText(*(v4 + 32), "BROKER", 4, 0, "brkhlp_FindHdrFileAndAddItem szSurrogateBrokerString=%s", v28, v29, v30, v26);
        v31 = __s;
        v32 = hdrpars_CreateSurrogateTagMap(*(v4 + 8), v26, __s, &v52);
        if ((v32 & 0x80000000) != 0)
        {
          NextFile = v32;
        }

        else
        {
          NextFile = brkhlp_AddItemToClass(v31, v52, a1);
          if ((NextFile & 0x80000000) == 0)
          {
            log_OutText(*(v4 + 32), "BROKER", 4, 0, "brkhlp_FindHdrFileAndAddItem AddedNewSurrogateBrokerString=%s", v33, v34, v35, v26);
          }
        }

        heap_Free(*(v4 + 8), v26);
        heap_Free(*(v4 + 8), v31);
        if ((NextFile & 0x80000000) != 0)
        {
          break;
        }

        NextFile = brkhlp_FindNextFile(__s1, a2, &__s, *(v4 + 8), &v50);
        p_s1 = &__s1;
        if ((NextFile & 0x80000000) != 0 || !v50)
        {
          goto LABEL_42;
        }

        if (!__s1)
        {
          goto LABEL_43;
        }
      }

      v37 = &__s1;
      goto LABEL_85;
    }

    v6 = __s;
    v7 = cstdlib_strlen(__s);
    if (v7 < 5 || cstdlib_strncmp(&v6[v7 - 4], ".hdr", 4uLL))
    {
      goto LABEL_6;
    }

    NextFile = hdrpars_ReadHeader(*a1, *(a1 + 8), v6, 0, &v52, &v51);
    if ((NextFile & 0x80000000) != 0)
    {
      log_OutPublic(*(v4 + 32), "BROKER", 276, "%s%s", v10, v11, v12, v13, "file");
      if ((NextFile & 0x1FFF) == 0xA)
      {
        goto LABEL_83;
      }

LABEL_6:
      heap_Free(*(v4 + 8), v6);
      goto LABEL_7;
    }

    if (!v51)
    {
      v17 = brkhlp_ExpandComponentPath(a1, v52);
      if ((v17 & 0x80000000) == 0)
      {
        NextFile = brkhlp_AddItemToClass(v6, v52, a1);
        goto LABEL_25;
      }

      NextFile = v17;
LABEL_83:
      heap_Free(*(v4 + 8), v6);
LABEL_84:
      v37 = &v55;
LABEL_85:
      v44 = *v37;
      goto LABEL_86;
    }

    v49 = 0;
    if (vector_GetElemAt(v51, 0, &v49))
    {
      v14 = 1;
      while (1)
      {
        if ((NextFile & 0x80000000) != 0)
        {
          goto LABEL_18;
        }

        v15 = brkhlp_ExpandComponentPath(a1, *v49);
        if ((v15 & 0x80000000) != 0)
        {
          break;
        }

        NextFile = brkhlp_AddItemToClass(v6, *v49, a1);
LABEL_19:
        if (!vector_GetElemAt(v51, v14++, &v49))
        {
          goto LABEL_20;
        }
      }

      NextFile = v15;
LABEL_18:
      ssftmap_ObjClose(*v49);
      goto LABEL_19;
    }

LABEL_20:
    vector_ObjClose(v51);
    v51 = 0;
LABEL_25:
    heap_Free(*(v4 + 8), v6);
    if ((NextFile & 0x80000000) != 0)
    {
      goto LABEL_84;
    }

LABEL_7:
    NextFile = brkhlp_FindNextFile(v55, a2, &__s, *(v4 + 8), &v50);
    p_s1 = &v55;
  }

  while ((NextFile & 0x80000000) == 0 && v50);
LABEL_42:
  osspi_FindClose(*p_s1);
  if ((NextFile & 0x80000000) != 0)
  {
    return NextFile;
  }

LABEL_43:
  v47 = 0;
  v48 = 0;
  if (!a2)
  {
    goto LABEL_69;
  }

  __s1 = 0;
  v55 = 0;
  FirstFile = brkhlp_ConcatenatePath(&v55, a2, "*", 0, *(v4 + 8));
  if ((FirstFile & 0x80000000) != 0)
  {
    return FirstFile;
  }

  v36 = v55;
  LODWORD(NextFile) = osspi_FindOpen(*(v4 + 64), *(v4 + 8), v55, 16, &__s1, &v48);
  if ((NextFile & 0x80000000) == 0)
  {
    while ((NextFile & 0x80000000) == 0)
    {
      if (cstdlib_strcmp(__s1, ".") && cstdlib_strcmp(__s1, ".."))
      {
        v39 = brkhlp_ConcatenatePath(&v47, a2, __s1, 0, *(v4 + 8));
        LODWORD(NextFile) = 0;
        if ((v39 & 0x80000000) == 0)
        {
LABEL_58:
          if (__s1)
          {
            heap_Free(*(v4 + 8), __s1);
          }

          goto LABEL_60;
        }

        v46 = v39;
        v38 = v48;
        LODWORD(NextFile) = v46;
        if (!v48)
        {
LABEL_56:
          v48 = 0;
          goto LABEL_58;
        }

LABEL_55:
        osspi_FindClose(v38);
        goto LABEL_56;
      }

      heap_Free(*(v4 + 8), __s1);
      __s1 = 0;
      LODWORD(NextFile) = osspi_FindNext(v48, &__s1);
      if ((NextFile & 0x1FFF) == 0x14)
      {
        NextFile = 0;
        goto LABEL_63;
      }
    }

    v38 = v48;
    if (!v48)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

LABEL_60:
  if ((NextFile & 0x1FFF) == 0x14)
  {
    NextFile = 0;
  }

  else
  {
    NextFile = NextFile;
  }

LABEL_63:
  if (v36)
  {
    heap_Free(*(v4 + 8), v36);
  }

  if (!v47 && v48)
  {
    osspi_FindClose(v48);
    v48 = 0;
  }

  if ((NextFile & 0x80000000) == 0)
  {
LABEL_69:
    if (v48)
    {
      while (1)
      {
        v40 = v47;
        NextFile = brkhlp_FindAllEnginesAndAddOns(a1, v47);
        heap_Free(*(v4 + 8), v40);
        if ((NextFile & 0x80000000) != 0)
        {
          break;
        }

        v41 = v48;
        v42 = *(v4 + 8);
        v55 = 0;
        v47 = 0;
        Next = osspi_FindNext(v48, &v55);
        if ((Next & 0x80000000) != 0)
        {
          if ((Next & 0x1FFF) == 0x14)
          {
            NextFile = 0;
          }

          else
          {
            NextFile = Next;
          }

          break;
        }

        while ((Next & 0x80000000) == 0 && (!cstdlib_strcmp(v55, ".") || !cstdlib_strcmp(v55, "..")))
        {
          heap_Free(v42, v55);
          v55 = 0;
          Next = osspi_FindNext(v41, &v55);
          if ((Next & 0x1FFF) == 0x14)
          {
            NextFile = 0;
            goto LABEL_80;
          }
        }

        NextFile = brkhlp_ConcatenatePath(&v47, a2, v55, 0, v42);
        heap_Free(v42, v55);
        if ((NextFile & 0x80000000) != 0)
        {
          break;
        }

        NextFile = 0;
        if (!v48)
        {
          return NextFile;
        }
      }

LABEL_80:
      v44 = v48;
LABEL_86:
      osspi_FindClose(v44);
    }

    else
    {
      return 0;
    }
  }

  return NextFile;
}

uint64_t brkhlp_FindFirstFile(uint64_t a1, char *a2, const char *a3, char **a4, uint64_t *a5)
{
  v5 = 0;
  *a5 = 0;
  if (a2 && a3)
  {
    v14 = 0;
    v15 = 0;
    v10 = brkhlp_ConcatenatePath(&v15, a2, a3, 0, *(a1 + 8));
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    else
    {
      v11 = v15;
      Open = osspi_FindOpen(*(a1 + 64), *(a1 + 8), v15, 0, &v14, a5);
      if ((Open & 0x80000000) != 0)
      {
        if ((Open & 0x1FFF) == 0x14)
        {
          v5 = 0;
        }

        else
        {
          v5 = Open;
        }
      }

      else
      {
        v5 = brkhlp_ConcatenatePath(a4, a2, v14, 0, *(a1 + 8));
        if ((v5 & 0x80000000) != 0)
        {
          if (*a5)
          {
            osspi_FindClose(*a5);
          }

          *a5 = 0;
        }

        heap_Free(*(a1 + 8), v14);
      }

      heap_Free(*(a1 + 8), v11);
    }
  }

  return v5;
}

uint64_t brkhlp_ExpandComponentPath(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  v16 = 0;
  memset(__b, 0, sizeof(__b));
  v13 = 0;
  v3 = *(a1 + 16);
  v4 = "COMPONENT";
  v5 = brkhlp_SearchTag(a2, "COMPONENT", &v16);
  if (v5 < 0 && (v4 = "COMMONCOMPONENT", v6 = brkhlp_SearchTag(a2, "COMMONCOMPONENT", &v16), (v6 & 0x80000000) != 0) || (v6 = brkhlp_SearchTag(a2, "HDRFILE", &v15), (v6 & 0x80000000) != 0) || (v6 = brkhlp_ConcatenatePath(&v13, v15, v16, 1, *(v3 + 8)), (v6 & 0x80000000) != 0))
  {
    v9 = v6;
  }

  else
  {
    cstdlib_memset(__b, 0, 0x18uLL);
    v7 = v13;
    __b[0] = v13;
    v8 = ssftmap_Insert(a2, "FULLPATHCOMPONENT", __b);
    if ((v8 & 0x80000000) == 0 || (v9 = v8, (v8 & 0x1FFF) == 2))
    {
      v9 = ssftmap_Remove(a2, v4);
    }

    heap_Free(*(v3 + 8), v7);
    if (v5 < 0 && (v9 & 0x80000000) == 0)
    {
      cstdlib_memset(__b, 0, 0x18uLL);
      __b[0] = "1";
      v10 = ssftmap_Insert(a2, "COMMON", __b);
      if ((v10 & 0x1FFF) == 2)
      {
        v11 = 0;
      }

      else
      {
        v11 = v10;
      }

      if (v10 < 0)
      {
        v9 = v11;
      }

      else
      {
        v9 = v10;
      }
    }
  }

  if (v9 == -2125438956)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

uint64_t brkhlp_FindNextFile(void *a1, char *a2, char **a3, void *a4, _DWORD *a5)
{
  v12 = 0;
  *a3 = 0;
  *a5 = 0;
  Next = osspi_FindNext(a1, &v12);
  if ((Next & 0x80000000) != 0)
  {
    if ((Next & 0x1FFF) == 0x14)
    {
      return 0;
    }

    else
    {
      return Next;
    }
  }

  else
  {
    v10 = brkhlp_ConcatenatePath(a3, a2, v12, 0, a4);
    heap_Free(a4, v12);
    if ((v10 & 0x80000000) == 0)
    {
      v10 = 0;
      *a5 = 1;
    }
  }

  return v10;
}

uint64_t brkhlp_ConcatenatePath(char **a1, char *__s, const char *a3, int a4, uint64_t a5)
{
  v5 = 2169528320;
  if (__s && a3)
  {
    v11 = cstdlib_strlen(__s);
    v12 = cstdlib_strlen(a3);
    v13 = heap_Alloc(a5, v11 + v12 + 2);
    *a1 = v13;
    if (v13)
    {
      cstdlib_strcpy(v13, __s);
      if (a4)
      {
        v14 = v11++;
        while (v14)
        {
          v15 = (*a1)[--v14];
          --v11;
          if (v15 == 47)
          {
            goto LABEL_11;
          }
        }

        v11 = 0;
LABEL_11:
        (*a1)[v11] = 0;
      }

      if (v12 && v11 && __s[v11 - 1] != 47)
      {
        cstdlib_strcat(*a1, "/");
      }

      cstdlib_strcat(*a1, a3);
      v16 = cstdlib_strchr(*a1 + 1, 46);
      if (v16)
      {
        v17 = v16;
        while (1)
        {
          v18 = v17 - 1;
          if (*(v17 - 1) != 47)
          {
            goto LABEL_31;
          }

          v19 = v17 + 1;
          v20 = v17[1];
          if (v20 == 46)
          {
            break;
          }

          if (v20 != 47)
          {
            goto LABEL_31;
          }

          v21 = cstdlib_strlen(v17 + 2);
          cstdlib_memmove(v17, v17 + 2, v21 + 1);
          v19 = v17;
LABEL_32:
          v17 = cstdlib_strchr(v19, 46);
          if (!v17)
          {
            return 0;
          }
        }

        if (v17[2] == 47)
        {
          v22 = *a1;
          if (v18 > *a1)
          {
            v23 = 0;
            v24 = v17 - 1;
            while (1)
            {
              v26 = *--v24;
              v25 = v26;
              if (v26 == 47)
              {
                break;
              }

              if (v25 != 46)
              {
                v23 = 1;
              }

              v18 = v24;
              if (v24 <= v22)
              {
                if (!v23)
                {
                  goto LABEL_32;
                }

                goto LABEL_35;
              }
            }

            v22 = v18;
            if (!v23)
            {
              goto LABEL_32;
            }

LABEL_35:
            v27 = cstdlib_strlen(v17 + 3);
            cstdlib_memmove(v22, v17 + 3, v27 + 1);
            v19 = v22;
          }

          goto LABEL_32;
        }

LABEL_31:
        v19 = v17 + 1;
        goto LABEL_32;
      }

      return 0;
    }

    else
    {
      return 2169528330;
    }
  }

  return v5;
}

uint64_t engbrk_AddSystemInfo(uint64_t a1, char *a2)
{
  result = 2169528326;
  if (a1)
  {
    if (a2)
    {
      result = critsec_Enter(*(a1 + 24));
      if ((result & 0x80000000) == 0)
      {
        v5 = brkhlp_ScanBufferForEnginesAndAddOns(*(a1 + 16), a1, a2);
        LODWORD(result) = critsec_Leave(*(a1 + 24));
        if (v5 > -1 && result < 0)
        {
          return result;
        }

        else
        {
          return v5;
        }
      }
    }
  }

  return result;
}

uint64_t brkhlp_ScanBufferForEnginesAndAddOns(uint64_t a1, uint64_t a2, char *__s1)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = 2169528326;
  v20 = 0;
  v21 = 0;
  strcpy(v22, "BINBROKER");
  if (!a2)
  {
    return v3;
  }

  i = __s1;
  if (!__s1)
  {
    return v3;
  }

  if (cstdlib_strncmp(__s1, "<?xml", 5uLL))
  {
    v7 = cstdlib_strpbrk(i, "\n\r");
    if (v7)
    {
      for (i = v7; ; ++i)
      {
        v8 = *i;
        if (v8 != 13 && v8 != 10)
        {
          break;
        }
      }
    }
  }

  v3 = hdrpars_ReadHeader(*a2, *(a2 + 8), 0, i, &v21, &v20);
  if ((v3 & 0x80000000) != 0)
  {
    log_OutPublic(*(a1 + 32), "BROKER", 276, 0, v10, v11, v12, v13, v19);
    return v3;
  }

  if (!v20)
  {
    v3 = brkhlp_AddItemToClass(v22, v21, a2);
    if ((v3 & 0x80000000) != 0)
    {
      return v3;
    }

    goto LABEL_24;
  }

  v19 = 0;
  if (vector_GetElemAt(v20, 0, &v19))
  {
    v14 = 1;
    do
    {
      if ((v3 & 0x80000000) != 0)
      {
        ssftmap_ObjClose(*v19);
      }

      else
      {
        v3 = brkhlp_AddItemToClass(v22, *v19, a2);
      }
    }

    while (vector_GetElemAt(v20, v14++, &v19));
  }

  vector_ObjClose(v20);
  v20 = 0;
  if ((v3 & 0x80000000) == 0)
  {
LABEL_24:
    v3 = critsec_Enter(*(a2 + 56));
    if ((v3 & 0x80000000) == 0)
    {
      if (!ssftmap_GetSize(*(a2 + 40)))
      {
        LODWORD(v3) = -2125438710;
      }

      v16 = critsec_Leave(*(a2 + 56));
      if (v3 > -1 && v16 < 0)
      {
        return v16;
      }

      else
      {
        return v3;
      }
    }
  }

  return v3;
}

uint64_t engbrk_GetSystemInfo(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v3 = 2169528326;
  v15 = 0;
  if (a1 && a2 && a3)
  {
    *a2 = 0;
    *a3 = 0;
    if ((ssftstring_ObjOpen(*(*(a1 + 16) + 8), &v15) & 0x80000000) == 0)
    {
      v7 = critsec_Enter(*(a1 + 56));
      if ((v7 & 0x80000000) != 0)
      {
        v3 = v7;
LABEL_22:
        ssftstring_ObjClose(v15);
        return v3;
      }

      v8 = v15;
      Size = ssftmap_GetSize(*(a1 + 40));
      ssftstring_Reserve(v8, 500 * Size);
      v10 = v15;
      v11 = *(a1 + 40);
      v16 = 0;
      v17 = 0;
      if (v11)
      {
        v18 = 0;
        v12 = ssftmap_IteratorOpen(v11, 0, 1, &v16);
        v3 = v12;
        if ((v12 & 0x80000000) == 0)
        {
          if ((ssftmap_IteratorNext(v16, &v17, &v18) & 0x80000000) == 0)
          {
            while (1)
            {
              appended = ssftstring_AppendCStr(v10, "<?xml version=1.0?>\n<NUANCE>\n<VERSION>NUAN_1.0</VERSION>\n<HEADER>\n");
              if ((appended & 0x80000000) != 0)
              {
                break;
              }

              appended = StoreTagInfo(v10, *v18);
              if ((appended & 0x80000000) != 0)
              {
                break;
              }

              v3 = ssftstring_AppendCStr(v10, "</HEADER>\n</NUANCE>\n");
              if ((v3 & 0x80000000) != 0)
              {
                goto LABEL_20;
              }

              if ((ssftmap_IteratorNext(v16, &v17, &v18) & 0x80000000) != 0)
              {
                goto LABEL_13;
              }
            }

            v3 = appended;
LABEL_20:
            ssftmap_IteratorClose(v16);
            goto LABEL_21;
          }

LABEL_13:
          ssftmap_IteratorClose(v16);
          goto LABEL_18;
        }

        if ((v12 & 0x1FFF) != 0x14)
        {
LABEL_21:
          critsec_Leave(*(a1 + 56));
          goto LABEL_22;
        }
      }

      v3 = 0;
LABEL_18:
      *a3 = ssftstring_Size(v15) + 1;
      *a2 = ssftstring_CStrDetach(v15);
      goto LABEL_21;
    }

    return 2169528330;
  }

  return v3;
}

uint64_t engbrk_FreeSystemInfo(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    heap_Free(*(*(a1 + 16) + 8), a2);
  }

  return 0;
}

uint64_t StoreTagInfo(uint64_t a1, uint64_t a2)
{
  __s = 0;
  v11 = 0;
  v9 = 0;
  if (!a2)
  {
    LODWORD(v3) = 0;
LABEL_29:
    if ((v3 & 0x1FFF) == 0x14)
    {
      return 0;
    }

    else
    {
      return v3;
    }
  }

  v3 = ssftmap_IteratorOpen(a2, 0, 1, &v11);
  if ((v3 & 0x80000000) != 0)
  {
    goto LABEL_29;
  }

  if ((ssftmap_IteratorNext(v11, &__s, &v9) & 0x80000000) != 0)
  {
    goto LABEL_34;
  }

  while (1)
  {
    appended = ssftstring_AppendCStr(a1, "<");
    if ((appended & 0x80000000) != 0 || (appended = ssftstring_AppendCStr(a1, __s), (appended & 0x80000000) != 0))
    {
LABEL_33:
      v3 = appended;
      goto LABEL_34;
    }

    v5 = *(v9 + 8);
    v13 = 0;
    v14 = 0;
    v12 = 0;
    if (v5)
    {
      break;
    }

LABEL_18:
    appended = ssftstring_AppendCStr(a1, ">");
    if ((appended & 0x80000000) != 0)
    {
      goto LABEL_33;
    }

    appended = ssftstring_AppendCStr(a1, *v9);
    if ((appended & 0x80000000) != 0)
    {
      goto LABEL_33;
    }

    if (ssftmap_GetSize(*(v9 + 16)))
    {
      appended = ssftstring_AppendCStr(a1, "\n");
      if ((appended & 0x80000000) != 0)
      {
        goto LABEL_33;
      }

      appended = StoreTagInfo(a1, *(v9 + 16));
      if ((appended & 0x80000000) != 0)
      {
        goto LABEL_33;
      }
    }

    appended = ssftstring_AppendCStr(a1, "</");
    if ((appended & 0x80000000) != 0)
    {
      goto LABEL_33;
    }

    appended = ssftstring_AppendCStr(a1, __s);
    if ((appended & 0x80000000) != 0)
    {
      goto LABEL_33;
    }

    v3 = ssftstring_AppendCStr(a1, ">\n");
    if ((v3 & 0x80000000) != 0 || (ssftmap_IteratorNext(v11, &__s, &v9) & 0x80000000) != 0)
    {
      goto LABEL_34;
    }
  }

  v6 = ssftmap_IteratorOpen(v5, 0, 1, &v14);
  if ((v6 & 0x80000000) != 0)
  {
    v3 = v6;
    if ((v6 & 0x1FFF) != 0x14)
    {
      goto LABEL_34;
    }

    goto LABEL_18;
  }

  do
  {
    if ((ssftmap_IteratorNext(v14, &v13, &v12) & 0x80000000) != 0)
    {
      ssftmap_IteratorClose(v14);
      goto LABEL_18;
    }

    v7 = ssftstring_AppendCStr(a1, " ");
    if ((v7 & 0x80000000) != 0)
    {
      break;
    }

    v7 = ssftstring_AppendCStr(a1, v13);
    if ((v7 & 0x80000000) != 0)
    {
      break;
    }

    v7 = ssftstring_AppendCStr(a1, "=");
    if ((v7 & 0x80000000) != 0)
    {
      break;
    }

    v7 = ssftstring_AppendCStr(a1, v12);
    if ((v7 & 0x80000000) != 0)
    {
      break;
    }

    v7 = ssftstring_AppendCStr(a1, "");
  }

  while ((v7 & 0x80000000) == 0);
  v3 = v7;
  ssftmap_IteratorClose(v14);
LABEL_34:
  ssftmap_IteratorClose(v11);
  return v3;
}

uint64_t brkhlp_SearchTag(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = 0;
  v4 = ssftmap_Find(a1, a2, &v6);
  if ((v4 & 0x80000000) == 0 && v6)
  {
    *a3 = *v6;
  }

  if (v4 < 0)
  {
    return 2169528340;
  }

  else
  {
    return 0;
  }
}

uint64_t brkhlp_ElemCompareKeysBrokerString(char *a1, char *a2)
{
  if (a1 | a2)
  {
    LODWORD(v2) = -1;
  }

  else
  {
    LODWORD(v2) = 0;
  }

  if (a1)
  {
    v2 = 1;
  }

  else
  {
    v2 = v2;
  }

  if (a1 && a2)
  {
    return LH_stricmp(a1, a2);
  }

  else
  {
    return v2;
  }
}

uint64_t brkhlp_AddItemToClass(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  v6 = ssftmap_Find(a2, "BROKERSTRING", &v9);
  if (v6 < 0 || !v9)
  {
    if (v6 < 0)
    {
      hdrpars_FreeHeader(a2);
      return 2169528340;
    }

    v7 = 0;
  }

  else
  {
    v7 = *v9;
  }

  return brkhlp_AddNewAddOn(v7, a1, a2, a3, 0);
}

uint64_t brkhlp_AddNewAddOn(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    return 2169528327;
  }

  __b = 0;
  v23 = 0;
  v24 = 0;
  v9 = *(a4 + 16);
  cstdlib_memset(&__b, 0, 0x18uLL);
  __b = a3;
  v23 = a1;
  v24 = a5;
  log_OutText(*(v9 + 32), "BROKER", 4, 0, "brkhlp_AddNewAddOn: detect= %s", v10, v11, v12, a1);
  v13 = critsec_Enter(*(a4 + 56));
  if (v13 < 0)
  {
    v18 = v13;
  }

  else
  {
    v18 = ssftmap_Insert(*(a4 + 40), v23, &__b);
    if (v18 < 0)
    {
      log_OutPublic(*(v9 + 32), "BROKER", 289, "%s%s", v14, v15, v16, v17, "file");
    }

    v19 = critsec_Leave(*(a4 + 56));
    if (v19 < 0 && v18 > -1)
    {
      v18 = v19;
    }
  }

  if (__b)
  {
    hdrpars_FreeHeader(__b);
  }

  if ((v18 & 0x1FFF) == 2)
  {
    return 0;
  }

  else
  {
    return v18;
  }
}

uint64_t engbrk_ClassOpen(_WORD *a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4, uint64_t **a5)
{
  v5 = 2169528321;
  *v39 = 0;
  if ((*a3 & 0xFFFE) == 2)
  {
    inited = InitRsrcFunction(a1, a2, v39);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      log_OutText(*(*v39 + 32), "BROKER", 4, 0, "brk_ClassOpen: Begin", v11, v12, v13, v35);
      v14 = heap_Calloc(*(*v39 + 8), 1, 72);
      if (v14)
      {
        v15 = v14;
        *v14 = a1;
        v14[1] = a2;
        v16 = *v39;
        v14[2] = *v39;
        v17 = *(v16 + 8);
        v18 = heap_Calloc(v17, 1, 48);
        if (!v18)
        {
LABEL_22:
          v15[6] = 0;
          v5 = 2169528330;
          goto LABEL_32;
        }

        v19 = v18;
        *v18 = *a3;
        *(v18 + 8) = 0;
        v20 = *(a3 + 2);
        if (v20)
        {
          v21 = brkhlp_CloneString(v17, v20);
          *(v19 + 16) = v21;
          if (!v21)
          {
            goto LABEL_21;
          }
        }

        else
        {
          *(v18 + 16) = 0;
        }

        *(v19 + 24) = 0;
        if (a3[12])
        {
          v22 = heap_Calloc(v17, a3[12], 8);
          *(v19 + 32) = v22;
          if (!v22)
          {
LABEL_21:
            brkhlp_FreeProductInfo(v17, v19);
            goto LABEL_22;
          }

          if (a3[12])
          {
            v23 = 0;
            do
            {
              *(*(v19 + 32) + 8 * v23) = brkhlp_CloneString(v17, *(*(a3 + 4) + 8 * v23));
              if (!*(*(v19 + 32) + 8 * v23))
              {
                goto LABEL_21;
              }

              ++*(v19 + 24);
            }

            while (++v23 < a3[12]);
          }
        }

        else
        {
          *(v19 + 32) = 0;
        }

        v24 = *(a3 + 5);
        if (v24)
        {
          v25 = brkhlp_CloneString(v17, v24);
          *(v19 + 40) = v25;
          if (!v25)
          {
            goto LABEL_21;
          }
        }

        else
        {
          *(v19 + 40) = 0;
        }

        v15[6] = v19;
        v26 = critsec_ObjOpen(*(*v39 + 16), *(*v39 + 8), v15 + 3);
        if ((v26 & 0x80000000) != 0 || (v27 = *(*v39 + 8), v36 = BRK_ADDON_IELEM, v37 = *&off_287EE6E60, v38 = off_287EE6E70, v26 = ssftmap_ObjOpen(v27, 0, &v36, v15 + 5), (v26 & 0x80000000) != 0) || (v28 = *(*v39 + 8), v36 = BRK_INTF_IELEM, v37 = *off_287EE6E88, v38 = off_287EE6E98, v26 = ssftmap_ObjOpen(v28, 0, &v36, v15 + 4), (v26 & 0x80000000) != 0) || (v26 = critsec_ObjOpen(*(*v39 + 16), *(*v39 + 8), v15 + 7), (v26 & 0x80000000) != 0))
        {
          v5 = v26;
          goto LABEL_32;
        }

        v29 = *a3;
        if (v29 == 3)
        {
          v30 = brkhlp_ScanBufferForEnginesAndAddOns(*v39, v15, *(a3 + 5));
        }

        else
        {
          if (v29 != 2)
          {
            goto LABEL_32;
          }

          v30 = brkhlp_ScanFilesForEnginesAndAddOns(v15, a3, 1);
        }

        v5 = v30;
        if ((v30 & 0x80000000) == 0)
        {
          *a5 = v15;
          goto LABEL_33;
        }

LABEL_32:
        engbrk_ClassClose(v15);
LABEL_33:
        log_OutText(*(*v39 + 32), "BROKER", 4, 0, "brk_ClassOpen: End %x", v31, v32, v33, v5);
        return v5;
      }

      return 2169528330;
    }
  }

  return v5;
}

uint64_t engbrk_ClassClose(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1[2];
  v3 = a1[4];
  if (v3)
  {
    v4 = ssftmap_ObjClose(v3);
    a1[4] = 0;
    v5 = v4 & (v4 >> 31);
  }

  else
  {
    v5 = 0;
  }

  v6 = a1[5];
  if (v6)
  {
    v7 = ssftmap_ObjClose(v6);
    a1[5] = 0;
    if (v7 >= 0 || v5 <= -1)
    {
      v5 = v5;
    }

    else
    {
      v5 = v7;
    }
  }

  v9 = a1[3];
  if (v9)
  {
    v10 = critsec_ObjClose(v9);
    a1[3] = 0;
    if (v10 >= 0 || v5 <= -1)
    {
      v5 = v5;
    }

    else
    {
      v5 = v10;
    }
  }

  v12 = a1[7];
  if (v12)
  {
    v13 = critsec_ObjClose(v12);
    a1[7] = 0;
    if (v13 >= 0 || v5 <= -1)
    {
      v5 = v5;
    }

    else
    {
      v5 = v13;
    }
  }

  v15 = a1[6];
  if (v15)
  {
    brkhlp_FreeProductInfo(*(v2 + 8), v15);
    a1[6] = 0;
  }

  heap_Free(*(v2 + 8), a1);
  return v5;
}

void *brkhlp_FreeProductInfo(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *(a2 + 16);
    if (v4)
    {
      heap_Free(result, v4);
    }

    v5 = *(a2 + 32);
    if (v5)
    {
      if (*(a2 + 24))
      {
        v6 = 0;
        do
        {
          heap_Free(v3, *(*(a2 + 32) + 8 * v6++));
        }

        while (v6 < *(a2 + 24));
        v5 = *(a2 + 32);
      }

      heap_Free(v3, v5);
    }

    v7 = *(a2 + 40);
    if (v7)
    {
      heap_Free(v3, v7);
    }

    return heap_Free(v3, a2);
  }

  return result;
}

uint64_t engbrk_ClassUpdateEx(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 2169528327;
  }

  log_OutText(*(*(a1 + 16) + 32), "BROKER", 4, 0, "brk_ClassUpdate: Begin", a6, a7, a8, v16);
  v14 = brkhlp_ScanFilesForEnginesAndAddOns(a1, *(a1 + 48), a2);
  if ((v14 & 0x80000000) != 0)
  {
    log_OutPublic(*(*(a1 + 16) + 32), "BROKER", v14, "brk_ClassUpdate: Scan failed", v10, v11, v12, v13, v17);
  }

  log_OutText(*(*(a1 + 16) + 32), "BROKER", 4, 0, "brk_ClassUpdate: End %x", v11, v12, v13, v14);
  return v14;
}

uint64_t engbrk_ObjOpen(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 2169528327;
  v25 = 0;
  *a3 = 0;
  if (a2)
  {
    v11 = *(a2 + 16);
    v12 = *(v11 + 32);
    if (a1)
    {
      log_OutText(v12, "BROKER", 4, 0, "brk_ObjOpen  Object identifier=%s: Begin", a6, a7, a8, a1);
    }

    else
    {
      log_OutText(v12, "BROKER", 4, 0, "brk_ObjOpen  Object identifier=NULL: Begin", a6, a7, a8, v23);
    }

    v17 = heap_Calloc(*(v11 + 8), 1, 40);
    v18 = *(v11 + 32);
    if (v17)
    {
      *v17 = a2;
      *(v17 + 8) = v18;
      *(v17 + 24) = 0;
      if ((paramc_ParamGetStr(*(v11 + 40), "broker_mmap_clc_data", &v25) & 0x80000000) == 0 && (!LH_stricmp(v25, "yes") || !LH_stricmp(v25, "true")))
      {
        *(v17 + 24) = 1;
      }

      *(v17 + 32) = 0;
      *a3 = v17;
      log_OutText(*(v11 + 32), "BROKER", 4, 0, "brk_ObjOpen : End", v19, v20, v21, v24);
      return 0;
    }

    else
    {
      log_OutPublic(v18, "BROKER", 200, 0, v13, v14, v15, v16, v24);
      return 2169528330;
    }
  }

  return v8;
}

uint64_t engbrk_ObjClose(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 2169528327;
  }

  v9 = *(*a1 + 16);
  log_OutText(*(v9 + 32), "BROKER", 4, 0, "brk_ObjClose : Begin", a6, a7, a8, v18);
  v10 = 0;
  if (*(*(*a1 + 16) + 24) == a1)
  {
    v11 = critsec_Enter(*(*a1 + 24));
    if ((v11 & 0x80000000) != 0)
    {
      return v11;
    }

    LODWORD(v10) = ssftmap_Clear(*(*a1 + 32));
    v12 = critsec_Leave(*(*a1 + 24));
    if (v10 > -1 && v12 < 0)
    {
      v10 = v12;
    }

    else
    {
      v10 = v10;
    }
  }

  heap_Free(*(v9 + 8), a1);
  log_OutText(*(v9 + 32), "BROKER", 4, 0, "brk_ObjClose : End", v14, v15, v16, v19);
  return v10;
}

uint64_t engbrk_SetLog(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 2169528327;
  }

  if (!a2)
  {
    a2 = *(*(*a1 + 16) + 32);
  }

  v2 = 0;
  a1[1] = a2;
  return v2;
}

uint64_t engbrk_SetRsrc(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 2169528327;
  }

  result = 0;
  *(a1 + 32) = a2;
  return result;
}

uint64_t engbrk_ObjGetClass(uint64_t *a1, void *a2)
{
  if (a1 && a2)
  {
    result = 0;
    v4 = *a1;
  }

  else
  {
    result = 2169528327;
    if (!a2)
    {
      return result;
    }

    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t engbrk_InterfaceQueryEx(uint64_t *a1, char *a2, uint64_t a3, int a4, uint64_t *a5, uint64_t *a6)
{
  v65 = 0;
  v66 = 0;
  v63 = 0;
  v64 = 0;
  v6 = -2125438956;
  v7 = 2169528327;
  v62 = 0;
  if (a1 && a2 && a6)
  {
    memset(__b, 0, sizeof(__b));
    v14 = *(*a1 + 16);
    if (a5)
    {
      *a5 = safeh_GetNullHandle();
      a5[1] = v15;
    }

    *a6 = 0;
    cstdlib_memset(__b, 0, 0x20uLL);
    log_OutText(a1[1], "BROKER", 4, 0, "brk_InterfaceQuery BrokerString=%s : Begin", v16, v17, v18, a2);
    v7 = critsec_Enter(*(*a1 + 24));
    if ((v7 & 0x80000000) == 0)
    {
      if ((ssftmap_Find(*(*a1 + 32), a2, &v62) & 0x80000000) == 0)
      {
        v23 = v62;
        v24 = v62[1];
        if (v24)
        {
LABEL_9:
          *a6 = v24;
          if (a5)
          {
            *a5 = *(v23 + 1);
          }

          v25 = 1;
          goto LABEL_22;
        }

        v6 = -2125438963;
        if (!a4)
        {
          log_OutPublic(a1[1], "BROKER", 259, "%s%s%s%x", v19, v20, v21, v22, "BrokerString");
          v6 = -2125438963;
        }

        goto LABEL_21;
      }

      v26 = ssftmap_Insert(*(*a1 + 32), a2, __b);
      if (v26 < 0 || (v26 = ssftmap_Find(*(*a1 + 32), a2, &v62), v26 < 0))
      {
        v6 = v26;
        log_OutPublic(a1[1], "BROKER", 200, "%s%s", v27, v28, v29, v30, "module");
        goto LABEL_21;
      }

      v31 = brkhlp_SearchAddOn(a1, a2, &v66);
      if (v31 < 0)
      {
        if ((v31 & 0x1FFF) == 0xA)
        {
          v6 = -2125438966;
          goto LABEL_21;
        }
      }

      else
      {
        v32 = v66;
        v33 = *v66;
        v67 = 0;
        v34 = ssftmap_Find(v33, "FULLPATHCOMPONENT", &v67);
        if ((v34 & 0x80000000) == 0 && v67)
        {
          v65 = *v67;
          v39 = a4 == 0;
          goto LABEL_33;
        }

        v39 = a4 == 0;
        if (a4 || (v34 & 0x80000000) == 0)
        {
          if ((v34 & 0x80000000) == 0)
          {
LABEL_33:
            v45 = *v32;
            v67 = 0;
            v46 = ssftmap_Find(v45, "GETINTERFACE", &v67);
            if (v46 < 0 || !v67)
            {
              if (v46 < 0)
              {
                if (v39)
                {
                  log_OutPublic(a1[1], "BROKER", 262, "%s%s%s%x", v47, v20, v21, v22, "BrokerString");
                }

                goto LABEL_21;
              }

              v48 = 0;
            }

            else
            {
              v48 = *v67;
            }

            v6 = 0;
            v64 = v48;
LABEL_42:
            v51 = v63;
            if ((v6 & 0x80000000) == 0 && !v63)
            {
              log_OutText(a1[1], "BROKER", 3, 0, "brk_InterfaceQuery : osspi_DynModOpen %s, %d", v20, v21, v22, v65);
              v52 = osspi_DynModOpen(*(v14 + 64), *(v14 + 8), v65, 0, v62);
              v6 = v52;
              if (!a4 && v52 < 0)
              {
                log_OutPublic(a1[1], "BROKER", 263, "%s%s%s%x", v53, v20, v21, v22, "BrokerString");
                goto LABEL_21;
              }

              if (v52 < 0)
              {
                goto LABEL_21;
              }

              log_OutText(a1[1], "BROKER", 3, 0, "brk_InterfaceQuery : osspi_DynModObjLoad %s", v20, v21, v22, v64);
              v54 = osspi_DynModObjLoad(*v62, v64, &v63);
              v6 = v54;
              if (!a4 && v54 < 0)
              {
                log_OutPublic(a1[1], "BROKER", 264, "%s%s%s%x", v55, v20, v21, v22, "BrokerString");
                goto LABEL_21;
              }

              v51 = v63;
            }

            if (v6 < 0 || !v51 || (v56 = v51(a3, v62 + 1), v6 = v56, a4) || (v56 & 0x80000000) == 0)
            {
              if ((v6 & 0x80000000) == 0)
              {
                v23 = v62;
                v24 = v62[1];
                v58 = *(v24 + 16);
                if (v58)
                {
                  v59 = v58(**a1, *(*a1 + 8), v62 + 2);
                  v6 = v59;
                  if (!a4 && v59 < 0)
                  {
                    log_OutPublic(a1[1], "BROKER", 266, "%s%s%s%x", v60, v20, v21, v22, "module");
                    goto LABEL_21;
                  }

                  if (v59 < 0)
                  {
                    goto LABEL_21;
                  }

                  v23 = v62;
                  v24 = v62[1];
                }

                LODWORD(v7) = v6;
                goto LABEL_9;
              }
            }

            else
            {
              log_OutPublic(a1[1], "BROKER", 265, "%s%s%s%x", v57, v20, v21, v22, "module");
            }

LABEL_21:
            log_OutText(a1[1], "BROKER", 3, 0, "brk_InterfaceQuery : BrokerString=%s: Module Not Found (%x)", v20, v21, v22, a2);
            v25 = 0;
            LODWORD(v7) = v6;
LABEL_22:
            v40 = critsec_Leave(*(*a1 + 24));
            if ((v25 & (v40 < 0)) != 0)
            {
              v7 = v40;
            }

            else
            {
              v7 = v7;
            }

            log_OutText(a1[1], "BROKER", 4, 0, "brk_InterfaceQuery BrokerString=%s : End", v41, v42, v43, a2);
            return v7;
          }
        }

        else
        {
          log_OutPublic(a1[1], "BROKER", 260, "%s%s%s%x", v35, v36, v37, v38, "BrokerString");
        }
      }

      BuiltinInterface = brkhlp_GetBuiltinInterface(a2, &v63, &v65, &v64);
      v6 = BuiltinInterface;
      if (!a4 && BuiltinInterface < 0)
      {
        log_OutPublic(a1[1], "BROKER", 261, "%s%s%s%x", v50, v20, v21, v22, "BrokerString");
        goto LABEL_21;
      }

      goto LABEL_42;
    }
  }

  return v7;
}

uint64_t brkhlp_SearchAddOn(uint64_t a1, char *a2, void *a3)
{
  *a3 = 0;
  result = 2169528333;
  if (a1)
  {
    if (a2)
    {
      result = critsec_Enter(*(*a1 + 56));
      if ((result & 0x80000000) == 0)
      {
        v7 = brkhlp_InternalSearchAddOn(a1, a2, a3);
        LODWORD(result) = critsec_Leave(*(*a1 + 56));
        if (v7 > -1 && result < 0)
        {
          return result;
        }

        else
        {
          return v7;
        }
      }
    }
  }

  return result;
}

uint64_t engbrk_InterfaceRelease(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 2169528327;
  if (a1)
  {
    if (a2)
    {
      log_OutText(*(a1 + 8), "BROKER", 4, 0, "brk_InterfaceRelease : Begin", a6, a7, a8, v13);
      log_OutText(*(a1 + 8), "BROKER", 4, 0, "brk_InterfaceRelease : End", v10, v11, v12, v14);
      return 0;
    }
  }

  return result;
}

uint64_t engbrk_TagQueryEx(void *a1, char *a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = 0;
  v8 = 2169528327;
  if (a1 && a5 && a3 && a2 && *a1)
  {
    *a5 = 0;
    log_OutText(a1[1], "BROKER", 4, 0, "brk_TagQuery BrokerString=%s TagName=%s : Begin", a6, a7, a8, a2);
    v14 = brkhlp_SearchAddOn(a1, a2, &v22);
    if (v14 < 0)
    {
      if ((v14 & 0x1FFF) == 0xA)
      {
        v8 = 2169528330;
        goto LABEL_16;
      }

      v8 = 2169528333;
    }

    else
    {
      v19 = brkhlp_SearchTag(*v22, a3, a5);
      if ((v19 & 0x80000000) == 0)
      {
        v8 = 0;
LABEL_16:
        log_OutText(a1[1], "BROKER", 4, 0, "brk_TagQuery TagContents = %p %s: End", v16, v17, v18, *a5);
        return v8;
      }

      v8 = v19;
    }

    v20 = a1[1];
    if (a4)
    {
      log_OutText(v20, "BROKER", 3, 0, "brk_TagQuery : BrokerString=%s TagName=%s  Failure (%x)", v16, v17, v18, a2);
    }

    else
    {
      log_OutPublic(v20, "BROKER", 267, "%s%s%s%s%s%x", v15, v16, v17, v18, "Broker String");
    }

    goto LABEL_16;
  }

  return v8;
}

uint64_t engbrk_TagRelease(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 2169528327;
  if (a1)
  {
    if (a2)
    {
      log_OutText(*(a1 + 8), "BROKER", 4, 0, "brk_TagRelease TagContents address = %p : Begin", a6, a7, a8, a2);
      log_OutText(*(a1 + 8), "BROKER", 4, 0, "brk_TagRelease : End", v10, v11, v12, v13);
      return 0;
    }
  }

  return result;
}

uint64_t engbrk_ComponentTableIteratorOpen(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 2169528327;
  if (a1 && a3 && a2 && *a1)
  {
    v12 = *(*a1 + 16);
    log_OutText(*(v12 + 32), "BROKER", 4, 0, "brk_ComponentTableIteratorOpen Query=%s: Begin", a6, a7, a8, a2);
    v13 = heap_Calloc(*(v12 + 8), 1, 72);
    *a3 = v13;
    if (v13)
    {
      *v13 = v12;
      *(*a3 + 8) = a1;
      String = brkhlp_CreateString((*a3 + 16), a2, *(v12 + 8));
      if ((String & 0x80000000) == 0)
      {
        v8 = critsec_Enter(*(*a1 + 56));
        v22 = *a3;
        if ((v8 & 0x80000000) == 0)
        {
          v23 = ssftmap_IteratorOpen(*(*a1 + 40), a2, 0, (v22 + 3));
          LODWORD(v8) = (v23 & 0x80001FFF) == 0x80000014 ? 0 : v23;
          v24 = critsec_Leave(*(*a1 + 56));
          v25 = v8 > -1 && v24 < 0;
          v8 = v25 ? v24 : v8;
          v22 = *a3;
          if ((v8 & 0x80000000) == 0)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_22;
      }

      v8 = String;
    }

    else
    {
      v8 = 2169528330;
    }

    v22 = *a3;
LABEL_22:
    if (v22)
    {
      engbrk_ComponentTableIteratorClose(v22, v14, v15, v16, v17, v18, v19, v20);
      v22 = 0;
      *a3 = 0;
    }

LABEL_24:
    log_OutText(*(v12 + 32), "BROKER", 4, 0, "brk_ComponentTableIteratorOpen iterator address = %p: End", v18, v19, v20, v22);
  }

  return v8;
}

uint64_t brkhlp_CreateString(char **a1, char *__s, uint64_t a3)
{
  v3 = 2169528320;
  if (!a1)
  {
    return 2169528327;
  }

  *a1 = 0;
  if (__s)
  {
    v7 = cstdlib_strlen(__s);
    v8 = heap_Alloc(a3, (v7 + 1));
    *a1 = v8;
    if (v8)
    {
      cstdlib_strcpy(v8, __s);
      return 0;
    }

    else
    {
      return 2169528330;
    }
  }

  return v3;
}

uint64_t engbrk_ComponentTableIteratorClose(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 2169528327;
  }

  v9 = *a1;
  log_OutText(*(*a1 + 32), "BROKER", 4, 0, "brk_ComponentTableIteratorClose iterator=%p: Begin", a6, a7, a8, a1);
  v10 = a1[2];
  if (v10)
  {
    heap_Free(*(v9 + 8), v10);
    a1[2] = 0;
  }

  v11 = a1[3];
  if (v11)
  {
    ssftmap_IteratorClose(v11);
  }

  heap_Free(*(v9 + 8), a1);
  log_OutText(*(v9 + 32), "BROKER", 4, 0, "brk_ComponentTableIteratorClose: End", v12, v13, v14, v16);
  return 0;
}

uint64_t engbrk_ComponentTableIteratorNext(uint64_t a1, const char **a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = 0;
  v38 = 0;
  if (!a1)
  {
    return 2169528327;
  }

  v8 = a2;
  v10 = *a1;
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  log_OutText(*(v10 + 32), "BROKER", 4, 0, "brk_ComponentTableIteratorNext iterator=%p: Begin", a6, a7, a8, a1);
  LODWORD(v11) = brkhlp_SizeOfNextBlock(*(a1 + 16));
  v12 = ssftmap_IteratorNext(*(a1 + 24), &v38, &v37);
  if ((v12 & 0x80000000) != 0)
  {
LABEL_19:
    v16 = v12;
  }

  else
  {
    v11 = v11;
    v16 = 2169528330;
    v36 = v10;
    v34 = v11;
    while (1)
    {
      if ((LH_strnicmp(*(a1 + 16), v38, v11) & 0x80000000) != 0)
      {
        v16 = 2169528343;
        goto LABEL_33;
      }

      v17 = *(v10 + 8);
      v18 = v38;
      v19 = *(a1 + 16);
      v20 = cstdlib_strlen(v19);
      v21 = heap_Alloc(v17, (v20 + 1));
      if (!v21)
      {
        goto LABEL_33;
      }

      v22 = v21;
      v23 = v8;
      if (!cstdlib_strlen(v19))
      {
        break;
      }

      v24 = v19;
      v25 = v18;
      while (1)
      {
        Block = brkhlp_SizeOfNextBlock(v24);
        cstdlib_strncpy(v22, v24, Block);
        v22[Block] = 0;
        v27 = cstdlib_strstr(v25, v22);
        if (!v27)
        {
          break;
        }

        v25 = &v27[Block];
        if (Block)
        {
          if (v22[Block - 1] != 47 && v25 - v18 != cstdlib_strlen(v18))
          {
            break;
          }
        }

        v24 += (Block + 1);
        if (v24 - v19 >= cstdlib_strlen(v19))
        {
          goto LABEL_21;
        }
      }

      heap_Free(v17, v22);
      v12 = ssftmap_IteratorNext(*(a1 + 24), &v38, &v37);
      v8 = v23;
      v10 = v36;
      v16 = 2169528330;
      v11 = v34;
      if ((v12 & 0x80000000) != 0)
      {
        goto LABEL_19;
      }
    }

LABEL_21:
    heap_Free(v17, v22);
    v8 = v23;
    if (v23)
    {
      *v23 = v38;
    }

    if (a3)
    {
      v28 = v37;
      *(a1 + 32) = v38;
      *(a1 + 56) = 0u;
      *(a1 + 40) = 0u;
      v29 = brkhlp_SearchTag(*v28, "NAME", (a1 + 40));
      if ((v29 & 0x80000000) == 0 || (v16 = v29, v29 == -2125438956))
      {
        v30 = brkhlp_SearchTag(*v37, "LANGUAGE", (a1 + 56));
        if ((v30 & 0x80000000) == 0 || (v16 = v30, v30 == -2125438956))
        {
          v31 = brkhlp_SearchTag(*v37, "VERSION", (a1 + 48));
          if ((v31 & 0x80000000) == 0 || (v16 = v31, v31 == -2125438956))
          {
            v16 = 0;
            *a3 = a1 + 32;
          }
        }
      }
    }

    else
    {
      v16 = 0;
    }

    v10 = v36;
  }

LABEL_33:
  v32 = "";
  if (v8 && *v8)
  {
    v32 = *v8;
  }

  log_OutText(*(v10 + 32), "BROKER", 4, 0, "brk_ComponentTableIteratorNext szBrkString=%s: End", v13, v14, v15, v32);
  return v16;
}

size_t brkhlp_SizeOfNextBlock(char *a1)
{
  v2 = cstdlib_strchr(a1, 42);
  if (v2)
  {
    return v2 - a1;
  }

  else
  {
    return cstdlib_strlen(a1);
  }
}

uint64_t engbrk_DataReplace(uint64_t *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = 0;
  v8 = 2169528327;
  if (a1 && a2 && a3)
  {
    v11 = *(*a1 + 16);
    log_OutText(a1[1], "BROKER", 4, 0, "brk_DataReplace BrokerString=%s : Begin", a6, a7, a8, a2);
    v12 = brkhlp_SearchAddOn(a1, a2, &v31);
    if ((v12 & 0x80000000) != 0)
    {
      v24 = v12;
      log_OutPublic(a1[1], "BROKER", 293, "%s%s", v13, v14, v15, v16, "brokerString");
      if ((v24 & 0x1FFF) == 0xA)
      {
        v8 = 2169528330;
LABEL_16:
        log_OutText(a1[1], "BROKER", 4, 0, "brk_DataReplace : End", v25, v26, v27, v30);
        return v8;
      }
    }

    else
    {
      v17 = *v31;
      v32 = 0;
      v18 = ssftmap_Find(v17, "FULLPATHCOMPONENT", &v32);
      if ((v18 & 0x80000000) == 0 && v32)
      {
        v23 = *v32;
        goto LABEL_12;
      }

      if ((v18 & 0x80000000) == 0)
      {
        v23 = 0;
LABEL_12:
        v8 = osspi_DataReplace(*(v11 + 64), *(v11 + 8), v23);
        if ((v8 & 0x80000000) != 0)
        {
          log_OutPublic(a1[1], "BROKER", 295, "%s%s%s%x", v28, v25, v26, v27, "brokerString");
        }

        goto LABEL_16;
      }

      log_OutPublic(a1[1], "BROKER", 294, "%s%s", v19, v20, v21, v22, "brokerString");
      v24 = 2169528340;
    }

    v8 = v24;
    goto LABEL_16;
  }

  return v8;
}

uint64_t engbrk_DataOpenEx(uint64_t *a1, char *__s, char a3, uint64_t **a4)
{
  v5 = 2169528330;
  v108 = 0;
  v109[0] = 0;
  result = 2169528327;
  if (a1)
  {
    v7 = __s;
    if (__s)
    {
      v8 = a4;
      if (a4)
      {
        v10 = *(*a1 + 16);
        if (a1[4])
        {
          v11 = a1[4];
        }

        else
        {
          v11 = *(*a1 + 16);
        }

        *a4 = 0;
        v12 = cstdlib_strlen(__s);
        log_OutText(a1[1], "BROKER", 4, 0, "brk_DataOpen : BrokerString=%s : Begin", v13, v14, v15, v7);
        v16 = heap_Calloc(*(v10 + 8), 1, 48);
        if (!v16)
        {
          hlp_ReleaseUriFetcherInterface(v11, 0);
LABEL_119:
          log_OutText(a1[1], "BROKER", 4, 0, "brk_DataOpen : End %x", v32, v33, v34, v5);
          return v5;
        }

        v17 = v16;
        v103 = v11;
        v18 = IsThisUrlOrRealPath(v7, v12, 0);
        v19 = cstdlib_strchr(v7, 58);
        v20 = v19;
        if (v19)
        {
          v21 = v19 == v7;
        }

        else
        {
          v21 = 1;
        }

        v22 = !v21 && v18 == 0;
        v23 = v22;
        v100 = v18;
        if (v22)
        {
          v24 = critsec_Enter(*(*a1 + 24));
          if ((v24 & 0x80000000) != 0)
          {
            v40 = v24;
            hlp_ReleaseUriFetcherInterface(v103, v17);
            v102 = 0;
            v20 = 0;
            v5 = v40;
            goto LABEL_114;
          }

          v25 = v20 - v7;
          v26 = heap_Alloc(*(v10 + 8), (v20 - v7 + 1));
          if (!v26)
          {
            hlp_ReleaseUriFetcherInterface(v103, v17);
            v102 = 0;
            v20 = 0;
LABEL_106:
            v91 = critsec_Leave(*(*a1 + 24));
            if (v5 > -1 && v91 < 0)
            {
              v5 = v91;
            }

            else
            {
              v5 = v5;
            }

LABEL_112:
            if ((v5 & 0x80000000) == 0)
            {
              *v8 = v17;
LABEL_115:
              if (v102)
              {
                heap_Free(*(v10 + 8), v102);
              }

              if (v20)
              {
                heap_Free(*(v10 + 8), v20);
              }

              goto LABEL_119;
            }

LABEL_114:
            heap_Free(*(v10 + 8), v17);
            goto LABEL_115;
          }

          v97 = v8;
          v27 = a3;
          v28 = v10;
          v29 = v17;
          v30 = v23;
          v31 = v26;
          cstdlib_strncpy(v26, v7, v25);
          v31[v25] = 0;
          v102 = v31;
          v7 = v31;
          v23 = v30;
          v17 = v29;
          v10 = v28;
          a3 = v27;
          v8 = v97;
          v18 = v100;
        }

        else
        {
          v102 = 0;
        }

        if (v18)
        {
          v20 = 0;
        }

        v35 = brkhlp_SearchAddOn(a1, v7, v109);
        v39 = v35;
        if ((v35 & 0x80000000) == 0)
        {
          log_OutText(a1[1], "BROKER", 3, 0, "brk_DataOpen : match on broker string %s", v36, v37, v38, v7);
          goto LABEL_27;
        }

        if ((v35 & 0x1FFF) == 0xA)
        {
          goto LABEL_31;
        }

        v99 = v20;
        v43 = *(v10 + 8);
        v44 = cstdlib_strlen(v7);
        v20 = heap_Alloc(v43, (v44 + 4));
        if (!v20)
        {
          goto LABEL_104;
        }

        if (!engbrk_CreateSurrogateBrokerString(v7, v20))
        {
          goto LABEL_43;
        }

        v39 = brkhlp_SearchAddOn(a1, v20, v109);
        if ((v39 & 0x80000000) == 0)
        {
          log_OutText(a1[1], "BROKER", 3, 0, "brk_DataOpen : match on Surrogate broker string %s", v45, v46, v47, v20);
        }

        if ((v39 & 0x1FFF) == 0xA)
        {
          goto LABEL_31;
        }

        if ((v39 & 0x80000000) != 0)
        {
LABEL_43:
          cstdlib_strcpy(v20, v7);
          v48 = cstdlib_strstr(v20, "mpthreeml");
          if (!v48)
          {
            goto LABEL_56;
          }

          cstdlib_strcpy(v48, "mpthreevadml");
          v49 = brkhlp_SearchAddOn(a1, v20, v109);
          v39 = v49;
          if ((v49 & 0x80000000) == 0)
          {
            log_OutText(a1[1], "BROKER", 3, 0, "brk_DataOpen : match on Surrogate broker string %s", v50, v51, v52, v20);
            goto LABEL_46;
          }

          if ((v49 & 0x1FFF) == 0xA)
          {
            goto LABEL_31;
          }

          if (engbrk_CreateSurrogateBrokerString(v20, v20))
          {
            v39 = brkhlp_SearchAddOn(a1, v20, v109);
            if ((v39 & 0x80000000) == 0)
            {
              log_OutText(a1[1], "BROKER", 3, 0, "brk_DataOpen : match on Surrogate broker string %s", v53, v54, v55, v20);
            }

            if ((v39 & 0x1FFF) == 0xA)
            {
              goto LABEL_31;
            }

            heap_Free(*(v10 + 8), v20);
            v20 = v99;
            if ((v39 & 0x80000000) == 0)
            {
              goto LABEL_27;
            }
          }

          else
          {
LABEL_56:
            heap_Free(*(v10 + 8), v20);
            v20 = v99;
          }

          if (v20)
          {
            v56 = brkhlp_RegisterAddon(v7, 0, 0, v109, *a1);
            if ((v56 & 0x80000000) != 0)
            {
              v20 = 0;
              v5 = v56;
              goto LABEL_104;
            }
          }

LABEL_59:
          v98 = v20;
          if (v100)
          {
            v20 = 0;
            v42 = v7;
LABEL_66:
            if (UriGetUrlPrefixLength(v42, 0) && (objc_GetObject(*(v103 + 48), "URIFETCHER", &v108) & 0x80000000) == 0)
            {
              v63 = v108;
              v17[3] = *(v108 + 8);
              *(v17 + 2) = *(v63 + 16);
            }

LABEL_69:
            v101 = v17 + 3;
            v5 = osspi_DataOpenEx(*(v10 + 64), *(v10 + 8), v17[3], v17[4], v17[5], v42, v17);
            if ((v5 & 0x80000000) != 0)
            {
              if (a3)
              {
                log_OutText(a1[1], "BROKER", 3, 0, "brk_DataOpen : osspi_DataOpen failed: %s, %x", v64, v65, v66, v42);
              }

              else
              {
                v77 = cstdlib_strcmp(v42, v7);
                v78 = a1[1];
                if (v77)
                {
                  log_OutPublic(v78, "BROKER", 275, "%s%s%s%s%s%x", v73, v74, v75, v76, "BrokerString");
                }

                else
                {
                  log_OutPublic(v78, "BROKER", 275, "%s%s%s%x", v73, v74, v75, v76, "BrokerString");
                }
              }

              goto LABEL_104;
            }

            log_OutText(a1[1], "BROKER", 3, 0, "brk_DataOpen : osspi_DataOpen %s, %p", v64, v65, v66, v42);
            if (!v98 || (v95 = a3, v67 = cstdlib_strstr(v7, "clc"), v68 = cstdlib_strstr(v7, "clmnn"), v96 = v109[0], v69 = clcarchive_ObjOpen(**a1, *(*a1 + 8), v7, (v109[0] + 16)), v5 = v69, (v69 & 0x80000000) != 0))
            {
LABEL_104:
              v80 = v103;
              goto LABEL_105;
            }

            v70 = (v68 | v67) != 0;
            if (v68 | v67 && *(a1 + 6))
            {
              v71 = 0;
              v72 = (v69 & 0x1FFF) == 1;
            }

            else
            {
              v79 = osspi_ClcDataOpen(*v17, *(v96 + 16));
              v5 = v79;
              v71 = v79 >> 31;
              v72 = (v79 & 0x1FFF) == 1;
              if ((v79 & 0x1FFF) != 1)
              {
                v80 = v103;
                if ((v79 & 0x80000000) != 0)
                {
                  v72 = 0;
                  *(v96 + 16) = 0;
                }

                goto LABEL_83;
              }
            }

            v80 = v103;
LABEL_83:
            v81 = v23;
            if (*(a1 + 6))
            {
              v82 = v70;
            }

            else
            {
              v82 = 0;
            }

            if ((v72 & v71 & 1) != 0 || v82)
            {
              v106 = 0;
              v107 = 0;
              memset(v105, 0, sizeof(v105));
              clcarchive_GetMemoryStreamInterface(v105);
              v104 = 0;
              v86 = engbrk_DataMapEx(a1, v17, 0, &v107, &v106, v83, v84, v85);
              if ((v86 & 0x80000000) != 0)
              {
                v5 = v86;
              }

              else
              {
                LODWORD(v5) = clcarchive_Parse(*(v96 + 16), v105, &v106, &v104, 1);
                v87 = engbrk_DataUnmap(a1, v17, v106);
                if (v5 > -1 && v87 < 0)
                {
                  LODWORD(v5) = v87;
                }

                v89 = osspi_DataClose(*v17);
                *v17 = 0;
                if (v5 > -1 && v89 < 0)
                {
                  v5 = v89;
                }

                else
                {
                  v5 = v5;
                }

                if (v17[3] && v17[4])
                {
                  objc_ReleaseObject(*(v80 + 48), "URIFETCHER");
                  *v101 = 0;
                  v17[4] = 0;
                }
              }
            }

            if ((v5 & 0x80000000) == 0 && (v5 = brkhlp_SearchClcArchive(a1[1], v96, v98 + 1, v95, v17, a1), v93 = v109[0], (v94 = *(v109[0] + 16)) != 0) && v5 && (clcarchive_ObjClose(v94), *(v93 + 16) = 0, osspi_DataClose(*v17), *v17 = 0, v17[3]))
            {
              v23 = v81;
              if (v17[4])
              {
                objc_ReleaseObject(*(v80 + 48), "URIFETCHER");
                *v101 = 0;
                v17[4] = 0;
              }
            }

            else
            {
              v23 = v81;
            }

LABEL_105:
            hlp_ReleaseUriFetcherInterface(v80, v17);
            if (!v23)
            {
              goto LABEL_112;
            }

            goto LABEL_106;
          }

          v57 = *(v10 + 8);
          v58 = cstdlib_strlen(v7);
          v59 = heap_Alloc(v57, (v58 + 1));
          if (v59)
          {
            v42 = v59;
            cstdlib_strlen(v7);
            v60 = 0;
            v61 = 1;
            do
            {
              v42[v60] = cstdlib_tolower(v7[v60]);
              v60 = v61;
            }

            while (cstdlib_strlen(v7) >= v61++);
            v20 = v42;
LABEL_65:
            if (!v100)
            {
              goto LABEL_69;
            }

            goto LABEL_66;
          }

LABEL_31:
          v20 = 0;
          goto LABEL_104;
        }

LABEL_46:
        heap_Free(*(v10 + 8), v20);
        v20 = v99;
LABEL_27:
        if (*(v109[0] + 16))
        {
          if (!v20)
          {
            v5 = v39;
            goto LABEL_104;
          }

          v5 = brkhlp_SearchClcArchive(a1[1], v109[0], v20 + 1, a3, v17, a1);
          goto LABEL_31;
        }

        v41 = *v109[0];
        *&v105[0] = 0;
        if ((ssftmap_Find(v41, "FULLPATHCOMPONENT", v105) & 0x80000000) == 0)
        {
          if (*&v105[0])
          {
            v42 = **&v105[0];
            if (**&v105[0])
            {
              v98 = v20;
              v20 = 0;
              goto LABEL_65;
            }
          }
        }

        goto LABEL_59;
      }
    }
  }

  return result;
}

uint64_t engbrk_CreateSurrogateBrokerString(const char *a1, uint64_t a2)
{
  if (cstdlib_strlen(a1))
  {
    v4 = 0;
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = a1[v4];
      v8 = (v7 - 48) >= 0xA && (v7 & 0xFFFFFFDF) - 65 >= 0x1A;
      if (v8 && v7 != 45)
      {
        if (v7 == 95 || v7 == 47)
        {
          if (v7 == 95)
          {
            v5 = v5;
          }

          else
          {
            v5 = 1;
          }

          LOBYTE(v7) = 95;
        }

        else
        {
          v5 = 1;
          LOBYTE(v7) = 45;
        }
      }

      *(a2 + v4) = v7;
      v4 = v6;
    }

    while (cstdlib_strlen(a1) > v6++);
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  *(a2 + v4) = 0;
  return v5;
}

uint64_t brkhlp_SearchClcArchive(uint64_t a1, uint64_t a2, char *__s, char a4, uint64_t a5, uint64_t a6)
{
  v23 = *MEMORY[0x277D85DE8];
  v12 = *(a2 + 16);
  memset(v22, 0, sizeof(v22));
  if (cstdlib_strlen(__s) <= 0x7F)
  {
    engbrk_CreateSurrogateBrokerString(__s, v22);
  }

  if (*(v12 + 16))
  {
    v17 = 0;
    v18 = 0;
    while (LH_stricmp(v22, *(*(v12 + 8) + v17)))
    {
      ++v18;
      v17 += 40;
      if (v18 >= *(v12 + 16))
      {
        goto LABEL_7;
      }
    }

    *(a5 + 16) = v18;
    *(a5 + 8) = v12;
    v20 = critsec_Enter(*(*a6 + 24));
    if ((v20 & 0x80000000) == 0)
    {
      ++*(v12 + 120);
      return critsec_Leave(*(*a6 + 24));
    }

    return v20;
  }

  else
  {
LABEL_7:
    v19 = 2169528333;
    if (a4)
    {
      log_OutText(a1, "BROKER", 3, 0, "brk_DataOpen : SearchClcArchive failed: %s:%s", v14, v15, v16, *(a2 + 8));
    }

    else
    {
      log_OutPublic(a1, "BROKER", 257, "%s%s%s%s", v13, v14, v15, v16, "archive");
    }
  }

  return v19;
}

uint64_t brkhlp_RegisterAddon(char *a1, char *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v17 = 0;
  *v18 = 0;
  v5 = 2169528326;
  if (a1)
  {
    if (a5)
    {
      v7 = *(a5 + 16);
      if (v7)
      {
        v12 = brkhlp_SearchAddOn(*(v7 + 24), a1, a4);
        if ((v12 & 0x80000000) == 0 && a3 && !*(*a4 + 16))
        {
          *(*a4 + 16) = a3;
          return v12;
        }

        if ((v12 & 0x1FFF) != 0xA)
        {
          v13 = *(*(a5 + 16) + 8);
          v15[0] = BRK_HDRPARS_TAG_MAP_IELEM;
          v15[1] = *off_287EE6FE8;
          v16 = off_287EE6FF8;
          v12 = ssftmap_ObjOpen(v13, 1, v15, v18);
          if ((v12 & 0x80000000) == 0)
          {
            v12 = brkhlp_allocateAndStoreTagInMap(*(*(a5 + 16) + 8), *v18, a1, "BROKER", &v17);
            if ((v12 & 0x80000000) == 0)
            {
              if (!a2 || (v12 = brkhlp_allocateAndStoreTagInMap(*(*(a5 + 16) + 8), *v18, a2, "FULLPATHCOMPONENT", v15), (v12 & 0x80000000) == 0))
              {
                v12 = brkhlp_AddNewAddOn(*v17, *v17, *v18, a5, a3);
                if ((v12 & 0x80000000) == 0)
                {
                  return brkhlp_SearchAddOn(*(*(a5 + 16) + 24), a1, a4);
                }
              }
            }
          }

          return v12;
        }

        return 2169528330;
      }
    }
  }

  return v5;
}

uint64_t engbrk_DataMapEx(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 2169528327;
  if (!a2 || !a1 || !a4 || !a5)
  {
    return v8;
  }

  v12 = a3;
  *a5 = 0;
  v14 = *(a2 + 8);
  if (!v14)
  {
    v8 = osspi_DataMap(*a2, a3, a4, a5);
    if ((v8 & 0x80000000) == 0)
    {
      return v8;
    }

LABEL_26:
    log_OutPublic(a1[1], "BROKER", 287, "%s%p%s%u%s%u%s%x", a5, a6, a7, a8, "hData");
    return v8;
  }

  v15 = *(v14 + 8);
  v16 = *(a2 + 16);
  v17 = *(v15 + 40 * v16 + 16);
  v8 = 2169528324;
  if (v17 < a3)
  {
    goto LABEL_26;
  }

  if (*a4)
  {
    v18 = *(v15 + 40 * v16 + 16);
    v17 = *a4;
  }

  else
  {
    *a4 = v17;
    v16 = *(a2 + 16);
    v18 = *(v15 + 40 * v16 + 16);
  }

  if (v17 + a3 > v18)
  {
    *a4 = v18 - a3;
    v16 = *(a2 + 16);
  }

  v19 = *(v15 + 40 * v16 + 8);
  if (v19)
  {
    v8 = 0;
    *a5 = v19 + a3;
    return v8;
  }

  v20 = critsec_Enter(*(*a1 + 56));
  if ((v20 & 0x80000000) != 0)
  {
    v8 = v20;
    goto LABEL_26;
  }

  Data = clcarchive_GetData(*(a2 + 8), *(a2 + 16), v12, *a4, a5);
  v22 = critsec_Leave(*(*a1 + 56));
  if (Data > -1 && v22 < 0)
  {
    v8 = v22;
  }

  else
  {
    v8 = Data;
  }

  if ((v8 & 0x80000000) != 0)
  {
    goto LABEL_26;
  }

  return v8;
}

uint64_t engbrk_DataUnmap(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = 2169528327;
  if (a1 && a2 && a3)
  {
    v7 = *(*a1 + 16);
    v3 = critsec_Enter(*(*a1 + 24));
    if ((v3 & 0x80000000) != 0)
    {
      goto LABEL_16;
    }

    v12 = *(a2 + 8);
    if (v12)
    {
      if (!*(*(v12 + 8) + 40 * *(a2 + 16) + 8))
      {
        heap_Free(*(v7 + 8), a3);
      }
    }

    else
    {
      LODWORD(v3) = osspi_DataUnmap(*a2, a3);
    }

    v13 = critsec_Leave(*(*a1 + 24));
    v14 = v3 > -1 && v13 < 0;
    v3 = v14 ? v13 : v3;
    if ((v3 & 0x80000000) != 0)
    {
LABEL_16:
      log_OutPublic(a1[1], "BROKER", 296, "%s%p%s%x", v8, v9, v10, v11, "hData");
    }
  }

  return v3;
}

uint64_t hlp_ReleaseUriFetcherInterface(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = (a2 + 24);
    if (*(a2 + 24))
    {
      if (*(a2 + 32))
      {
        result = objc_ReleaseObject(*(result + 48), "URIFETCHER");
        *v2 = 0;
        v2[1] = 0;
      }
    }
  }

  return result;
}

uint64_t engbrk_DataClose(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 2169528327;
  if (!a1 || !a2)
  {
    return v8;
  }

  v12 = *a1;
  v11 = a1[1];
  v13 = *(v12 + 16);
  if (a1[4])
  {
    v14 = a1[4];
  }

  else
  {
    v14 = *(v12 + 16);
  }

  log_OutText(v11, "BROKER", 4, 0, "brk_DataClose : hData=%p : Begin", a6, a7, a8, a2);
  if (!a2[1])
  {
    if (*a2)
    {
      v8 = osspi_DataClose(*a2);
      *a2 = 0;
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_26;
  }

  v19 = critsec_Enter(*(*a1 + 24));
  if ((v19 & 0x80000000) != 0)
  {
    return v19;
  }

  v23 = a2[1];
  v24 = *(v23 + 120);
  if (v24)
  {
    v25 = v24 - 1;
    *(v23 + 120) = v25;
    if (!v25)
    {
LABEL_15:
      v38 = 0;
      if ((brkhlp_SearchAddOn(a1, *(v23 + 128), &v38) & 0x80001FFF) == 0x8000000A)
      {
LABEL_16:
        critsec_Leave(*(*a1 + 24));
        return 2169528330;
      }

      v26 = v38;
      if (v38)
      {
        goto LABEL_19;
      }

      v34 = *(v13 + 8);
      v35 = cstdlib_strlen(*(a2[1] + 128));
      v36 = heap_Alloc(v34, (v35 + 1));
      if (!v36)
      {
        goto LABEL_16;
      }

      v37 = v36;
      engbrk_CreateSurrogateBrokerString(*(a2[1] + 128), v36);
      if (cstdlib_strcmp(*(a2[1] + 128), v37))
      {
        brkhlp_SearchAddOn(a1, v37, &v38);
        v26 = v38;
        heap_Free(*(v13 + 8), v37);
        if (v26)
        {
LABEL_19:
          *(v26 + 16) = 0;
        }
      }

      else
      {
        heap_Free(*(v13 + 8), v37);
      }

      v27 = a2[1];
      if (*(v27 + 112))
      {
        osspi_DataClose(*(v27 + 112));
        v28 = a2[3];
        v27 = a2[1];
        *(v27 + 112) = 0;
        if (v28)
        {
          if (a2[4])
          {
            objc_ReleaseObject(*(v14 + 48), "URIFETCHER");
            a2[3] = 0;
            a2[4] = 0;
            v27 = a2[1];
          }
        }
      }

      clcarchive_ObjClose(v27);
      a2[1] = 0;
    }
  }

  else
  {
    log_OutText(a1[1], "BROKER", 1, 0, "brk_DataClose : RefCount is 0 before substruction. hData=%p", v20, v21, v22, a2);
    v23 = a2[1];
    if (!*(v23 + 120))
    {
      goto LABEL_15;
    }
  }

  v29 = critsec_Leave(*(*a1 + 24));
  v8 = v29 & (v29 >> 31);
LABEL_26:
  if (a2[3] && a2[4])
  {
    objc_ReleaseObject(*(v14 + 48), "URIFETCHER");
    a2[3] = 0;
    a2[4] = 0;
  }

  if ((v8 & 0x80000000) != 0)
  {
    log_OutPublic(a1[1], "BROKER", 280, "%s%p%s%x", v15, v16, v17, v18, "hData");
  }

  heap_Free(*(v13 + 8), a2);
  log_OutText(a1[1], "BROKER", 4, 0, "brk_DataClose : End %x", v30, v31, v32, v8);
  return v8;
}

uint64_t engbrk_DataMap(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = a4;
  result = engbrk_DataMapEx(a1, a2, a3, &v13, a5, a6, a7, a8);
  if ((result & 0x80000000) == 0 && v13 < a4)
  {
    engbrk_DataUnmap(a1, a2, *a5);
    return 2169528324;
  }

  return result;
}

uint64_t engbrk_DataFreeze(uint64_t a1, uint64_t a2)
{
  v2 = 2169528327;
  if (a1 && a2)
  {
    if (*(a2 + 8))
    {
      return 0;
    }

    else
    {
      v4 = osspi_DataFreeze(*a2);
      v2 = v4;
      if ((v4 & 0x80000000) != 0 && (v4 & 0x1FFF) != 1)
      {
        log_OutPublic(*(a1 + 8), "BROKER", 297, "%s%p%s%x", v5, v6, v7, v8, "hData");
      }
    }
  }

  return v2;
}

uint64_t engbrk_TagIteratorOpen(uint64_t a1, char *a2, char *a3, char a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = 2169528327;
  v38 = 0;
  v39 = 0;
  if (a1 && a2 && a3 && *a2 && a5 && *a3)
  {
    v14 = *(*a1 + 16);
    *a5 = 0;
    log_OutText(*(v14 + 32), "BROKER", 4, 0, "brk_TagIteratorOpen BrokerString=%s Query=%s QueryMode=%d: Begin", a6, a7, a8, a2);
    v15 = brkhlp_SearchAddOn(a1, a2, &v39);
    if (v39)
    {
      v23 = v15 < 0;
    }

    else
    {
      v23 = 1;
    }

    if (v23 && (v15 & 0x1FFF) == 13)
    {
      v25 = 2169528333;
    }

    else
    {
      v25 = v15;
    }

    if ((v25 & 0x80000000) != 0 || !v39)
    {
      if ((v25 & 0x80000000) != 0)
      {
        goto LABEL_39;
      }

      v37 = v14;
      v26 = 0;
    }

    else
    {
      v37 = v14;
      v26 = *v39;
    }

    for (i = a3; ; i = v28 + 1)
    {
      v28 = cstdlib_strchr(i, 47);
      if (!v28 && !cstdlib_strcmp(i, "*"))
      {
        break;
      }

      if (v38)
      {
        v26 = *(v38 + 16);
      }

      if (!v26)
      {
        goto LABEL_38;
      }

      if (!v28)
      {
        if ((ssftmap_Find(v26, i, &v38) & 0x80000000) != 0)
        {
LABEL_38:
          v25 = 2169528333;
          v14 = v37;
          goto LABEL_39;
        }

        break;
      }

      v29 = (v28 - i);
      if (v29 > 0x7F)
      {
        v31 = v26;
        v30 = i;
      }

      else
      {
        cstdlib_strncpy(__dst, i, v29);
        __dst[v28 - i] = 0;
        v30 = __dst;
        v31 = v26;
      }

      if ((ssftmap_Find(v31, v30, &v38) & 0x80000000) != 0)
      {
        goto LABEL_38;
      }
    }

    v14 = v37;
    v32 = heap_Calloc(*(v37 + 8), 1, 24);
    *a5 = v32;
    if (!v32)
    {
      v25 = 2169528330;
LABEL_41:
      v35 = *(v14 + 32);
      if (a4)
      {
        log_OutText(v35, "BROKER", 3, 0, "brk_TagIteratorOpen : BrokerString=%s Query=%s  Failure (%x)", v20, v21, v22, a2);
      }

      else
      {
        log_OutPublic(v35, "BROKER", 282, "%s%s%s%s%s%x", v19, v20, v21, v22, "Broker String");
      }

      goto LABEL_44;
    }

    if (!cstdlib_strcmp(i, "*"))
    {
      if (v38)
      {
        v26 = *(v38 + 16);
      }

      String = ssftmap_IteratorOpen(v26, 0, 1, *a5 + 16);
LABEL_50:
      v25 = String;
      **a5 = v37;
      if ((String & 0x80000000) == 0)
      {
LABEL_44:
        log_OutText(*(v14 + 32), "BROKER", 4, 0, "brk_TagIteratorOpen iterator address = %p: End", v20, v21, v22, *a5);
        return v25;
      }

      goto LABEL_39;
    }

    v33 = ssftmap_IteratorOpen(v26, i, 1, *a5 + 16);
    if ((v33 & 0x80000000) == 0)
    {
      String = brkhlp_CreateString((*a5 + 8), i, *(v37 + 8));
      goto LABEL_50;
    }

    v25 = v33;
LABEL_39:
    if (*a5)
    {
      engbrk_TagIteratorClose(*a5, v16, v17, v18, v19, v20, v21, v22);
      *a5 = 0;
    }

    goto LABEL_41;
  }

  return v8;
}

uint64_t engbrk_TagIteratorClose(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 2169528327;
  }

  v9 = *a1;
  log_OutText(*(*a1 + 32), "BROKER", 4, 0, "brk_TagIteratorClose iterator=%p: Begin", a6, a7, a8, a1);
  v10 = a1[1];
  if (v10)
  {
    heap_Free(*(v9 + 8), v10);
  }

  v11 = a1[2];
  if (v11)
  {
    ssftmap_IteratorClose(v11);
  }

  heap_Free(*(v9 + 8), a1);
  log_OutText(*(v9 + 32), "BROKER", 4, 0, "brk_TagIteratorClose: End", v12, v13, v14, v16);
  return 0;
}

uint64_t engbrk_DataGetSize(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  result = 2169528327;
  if (a2 && a3 && a1 && a4)
  {
    *a3 = 0;
    *a4 = 0;
    v6 = *(a2 + 8);
    result = 0;
    if (v6)
    {
      *a4 = *(*(v6 + 8) + 40 * *(a2 + 16) + 16);
      *a3 = 1;
    }
  }

  return result;
}

uint64_t engbrk_TagIteratorNext(uint64_t a1, const char **a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = 0;
  v8 = 2169528327;
  if (!a1 || !a2 || !a3)
  {
    return v8;
  }

  log_OutText(*(*a1 + 32), "BROKER", 4, 0, "brk_TagIteratorNext iterator=%p: Begin", a6, a7, a8, a1);
  v16 = ssftmap_IteratorNext(*(a1 + 16), a2, &v22);
  if ((v16 & 0x80000000) != 0)
  {
    goto LABEL_13;
  }

  v17 = *(a1 + 8);
  if (!v17 || !cstdlib_strcmp(v17, *a2))
  {
    v18 = v22;
    if (v22[2])
    {
      v19 = 0;
    }

    else
    {
      v19 = *v22;
    }

    *a3 = v19;
    if (a4)
    {
      *a4 = v18[1];
    }

LABEL_13:
    v8 = v16;
    goto LABEL_14;
  }

  v8 = 2169528343;
LABEL_14:
  v20 = *a2;
  if (!*a2)
  {
    v20 = "";
  }

  log_OutText(*(*a1 + 32), "BROKER", 4, 0, "brk_TagIteratorNext Name=%s, Value=%s, Attrs=%p: End", v13, v14, v15, v20);
  return v8;
}

uint64_t engbrk_ComponentPathQuery(void *a1, char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 2169528327;
  v14 = 0;
  if (!a1)
  {
    return v8;
  }

  if (!a3)
  {
    return v8;
  }

  if (!a2)
  {
    return v8;
  }

  if (!*a1)
  {
    return v8;
  }

  log_OutText(a1[1], "BROKER", 4, 0, "brk_ComponentPathQuery BrokerString=%s : Begin", a6, a7, a8, a2);
  v8 = 2169528333;
  if ((brkhlp_SearchAddOn(a1, a2, &v14) & 0x80000000) != 0 || !v14)
  {
    return v8;
  }

  v12 = *v14;

  return brkhlp_SearchTag(v12, "FULLPATHCOMPONENT", a3);
}

uint64_t engbrk_ComponentPathRelease(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 2169528327;
  if (a1)
  {
    if (a2)
    {
      log_OutText(*(a1 + 8), "BROKER", 4, 0, "brk_ComponentPathRelease address = %p : Begin", a6, a7, a8, a2);
      log_OutText(*(a1 + 8), "BROKER", 4, 0, "brk_ComponentPathRelease : End", v10, v11, v12, v13);
      return 0;
    }
  }

  return result;
}

uint64_t engbrk_RegisterCupAddon(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v12 = 0;
  *a2 = 0;
  *a3 = 0;
  result = 2169528326;
  if (a1 && a5)
  {
    v9 = *(*(a5 + 16) + 48);
    if (a4)
    {
      v10 = *(a4 + 32);
    }

    else
    {
      v10 = 0;
    }

    result = objc_GetAddRefCountedObject(v9, a1, ObjcLoadCupAddon, ObjcUnloadCupAddon, v10, &v12);
    if ((result & 0x80000000) == 0 && v12)
    {
      v11 = *(v12 + 32);
      if (v11)
      {
        *a2 = *(*v11 + 16);
        *a3 = v11[3];
      }
    }
  }

  return result;
}

uint64_t ObjcLoadCupAddon(_WORD *a1, int a2, char *a3, uint64_t a4, uint64_t a5)
{
  v27 = 0;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  NullHandle = safeh_GetNullHandle();
  v12 = v11;
  inited = InitRsrcFunction(a1, a2, &v28);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v14 = 2169528330;
  v15 = heap_Calloc(*(v28 + 8), 1, 32);
  if (v15)
  {
    v16 = v15;
    v17 = strhelper_Strdup(*(v28 + 8), a3);
    *(v16 + 8) = v17;
    if (v17)
    {
      v18 = heap_Calloc(*(v28 + 8), 1, 8);
      *(v16 + 24) = v18;
      if (v18)
      {
        v19 = UriToBrokerString(*(v28 + 8), a3);
        *(v16 + 16) = v19;
        if (v19)
        {
          v20 = v28;
          if (a5)
          {
            v20 = a5;
          }

          if ((objc_GetObject(*(v20 + 48), "URIFETCHER", &v27) & 0x80000000) != 0)
          {
            v21 = 0;
          }

          else
          {
            v21 = v27[1];
            NullHandle = v27[2];
            v12 = v27[3];
          }

          v22 = clcarchive_ObjOpen(a1, a2, *(v16 + 16), &v26);
          if ((v22 & 0x80000000) == 0)
          {
            ++*(v26 + 120);
            v22 = osspi_DataOpenEx(*(v28 + 64), *(v28 + 8), v21, NullHandle, v12, a3, &v25);
            if ((v22 & 0x80000000) == 0)
            {
              v22 = osspi_ClcDataOpen(v25, v26);
              if ((v22 & 0x80000000) == 0)
              {
                cstdlib_memcpy(*(v16 + 24), &v25, 8uLL);
                v22 = brkhlp_RegisterAddon(*(v16 + 16), a3, v26, v16, **(v28 + 24));
              }
            }
          }

          v14 = v22;
          if (v21 && NullHandle)
          {
            v23 = v28;
            if (a5)
            {
              v23 = a5;
            }

            objc_ReleaseObject(*(v23 + 48), "URIFETCHER");
          }

          if ((v14 & 0x80000000) == 0)
          {
            *(a4 + 32) = v16;
            return v14;
          }
        }

        else
        {
          v14 = 2169528338;
        }
      }
    }

    FreeAllCupAddonResources(v28, v16);
  }

  return v14;
}

uint64_t ObjcUnloadCupAddon(_WORD *a1, int a2, uint64_t a3)
{
  v7 = 0;
  inited = InitRsrcFunction(a1, a2, &v7);
  if ((inited & 0x80000000) == 0)
  {
    v5 = *(a3 + 32);
    if (v5)
    {
      FreeAllCupAddonResources(v7, v5);
    }
  }

  return inited;
}

uint64_t engbrk_UnregisterCupAddon(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    objc_ReleaseObject(*(*(a2 + 16) + 48), a1);
  }

  return 0;
}

uint64_t engbrk_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 8;
  }

  result = 0;
  *a2 = &IBroker;
  return result;
}

char *brkhlp_CloneString(void *a1, char *__s)
{
  if (!__s)
  {
    return 0;
  }

  v4 = cstdlib_strlen(__s);
  v5 = heap_Calloc(a1, 1, (v4 + 1));
  v6 = v5;
  if (v5)
  {
    cstdlib_strcpy(v5, __s);
  }

  return v6;
}

uint64_t brkhlp_ElemCopyAddOn(void *a1, uint64_t a2, void *a3)
{
  v5 = heap_Alloc(a2, 24);
  if (!v5)
  {
    return 2169528330;
  }

  v6 = v5;
  cstdlib_memcpy(v5, a1, 0x18uLL);
  result = 0;
  *a1 = 0;
  a1[2] = 0;
  *a3 = v6;
  return result;
}

uint64_t *brkhlp_ElemFreeAddOn(uint64_t *result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = *result;
    if (v4)
    {
      hdrpars_FreeHeader(v4);
    }

    return heap_Free(a2, v3);
  }

  return result;
}

uint64_t brkhlp_ElemCopyLoadedIntf(void *a1, uint64_t a2, void *a3)
{
  v5 = heap_Alloc(a2, 32);
  if (!v5)
  {
    return 2169528330;
  }

  v6 = v5;
  cstdlib_memcpy(v5, a1, 0x20uLL);
  *a1 = 0;
  NullHandle = safeh_GetNullHandle();
  result = 0;
  a1[2] = NullHandle;
  a1[3] = v9;
  *a3 = v6;
  return result;
}

uint64_t *brkhlp_ElemFreeLoadedIntf(uint64_t *result, void *a2)
{
  if (result)
  {
    v3 = result;
    if (result[2])
    {
      v4 = *(result[1] + 24);
      if (v4)
      {
        v4();
      }
    }

    if (*v3)
    {
      osspi_DynModClose(*v3);
    }

    return heap_Free(a2, v3);
  }

  return result;
}

uint64_t brkhlp_InternalSearchAddOn(uint64_t a1, char *a2, void *a3)
{
  v5 = 2169528333;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  v6 = ssftmap_IteratorOpen(*(*a1 + 40), a2, 1, &v12);
  v7 = v6;
  if ((v6 & 0x80000000) != 0)
  {
    if ((v6 & 0x1FFF) == 0x14)
    {
      return 2169528333;
    }

    else
    {
      return v6;
    }
  }

  while ((ssftmap_IteratorNext(v12, &v11, &v10) & 0x80000000) == 0)
  {
    v8 = LH_stricmp(a2, v11);
    if (!v8)
    {
      *a3 = v10;
      break;
    }

    if (v8 > 0)
    {
      break;
    }
  }

  ssftmap_IteratorClose(v12);
  if (*a3)
  {
    return v7;
  }

  return v5;
}

uint64_t brkhlp_allocateAndStoreTagInMap(void *a1, uint64_t a2, char *__s, uint64_t a4, void *a5)
{
  v10 = cstdlib_strlen(__s);
  v11 = heap_Calloc(a1, 1, v10 + 25);
  if (!v11)
  {
    return 2169528330;
  }

  v12 = v11;
  v13 = (v11 + 24);
  *v12 = v13;
  cstdlib_strcpy(v13, __s);
  result = ssftmap_Insert(a2, a4, v12);
  if ((result & 0x80000000) == 0)
  {
    *a5 = v12;
  }

  return result;
}

void *brkhlp_ElemFreeTag(void *result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = result[1];
    if (v4)
    {
      ssftmap_ObjClose(v4);
    }

    v5 = *(v3 + 16);
    if (v5)
    {
      ssftmap_ObjClose(v5);
    }

    return heap_Free(a2, v3);
  }

  return result;
}

void *FreeAllCupAddonResources(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v5 = a2[3];
  if (v5)
  {
    v6 = *v5;
    v7 = a2[2];
    v8 = **(a1 + 24);
    v19 = 0;
    if (v7)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v10 = *(v8 + 16);
      if (v10)
      {
        if ((critsec_Enter(*(v8 + 24)) & 0x80000000) == 0)
        {
          if ((brkhlp_InternalSearchAddOn(*(*(v8 + 16) + 24), v7, &v19) & 0x80000000) == 0)
          {
            v11 = v19;
            v12 = *(v19 + 16);
            if (v12)
            {
              if (v6)
              {
                osspi_ClcDataClose(v6, v12);
                v12 = *(v11 + 16);
              }

              --*(v12 + 120);
              clcarchive_ObjClose(v12);
            }
          }

          if ((ssftmap_Remove(*(v8 + 40), v7) & 0x80000000) == 0)
          {
            log_OutText(*(v10 + 32), "BROKER", 4, 0, "brkhlp_RemoveAddOn: %s", v13, v14, v15, v7);
          }

          critsec_Leave(*(v8 + 24));
        }
      }
    }

    if (v6)
    {
      osspi_DataClose(v6);
    }

    heap_Free(v4, a2[3]);
    v4 = *(a1 + 8);
  }

  v16 = a2[1];
  if (v16)
  {
    heap_Free(v4, v16);
    v4 = *(a1 + 8);
  }

  v17 = a2[2];
  if (v17)
  {
    heap_Free(v4, v17);
    v4 = *(a1 + 8);
  }

  return heap_Free(v4, a2);
}

uint64_t brkhlp_GetBuiltinInterface(char *__s1, void *a2, void *a3, void *a4)
{
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  v8 = "fe/fe_prmfx";
  v9 = &off_287EE7020;
  while (cstdlib_strcmp(__s1, v8))
  {
    v10 = *v9;
    v9 += 4;
    v8 = v10;
    if (!v10)
    {
      return 2169528333;
    }
  }

  v12 = *(v9 - 3);
  result = 0;
  if (v12)
  {
    *a2 = v12;
  }

  else
  {
    *a3 = *(v9 - 2);
    *a4 = *(v9 - 1);
  }

  return result;
}

uint64_t log_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = 2226135048;
  v18 = 0;
  if (!a4)
  {
    return 2226135046;
  }

  if ((InitRsrcFunction(a1, a2, &v18) & 0x80000000) == 0)
  {
    *a4 = 0;
    v8 = heap_Calloc(*(v18 + 8), 1, 224);
    if (v8)
    {
      v9 = v8;
      cstdlib_memset(v8, 0, 0xE0uLL);
      *v9 = a1;
      *(v9 + 8) = a2;
      *(v9 + 16) = v18;
      v22 = 0;
      v23 = 0;
      __src = 0;
      __s1 = 0;
      bzero(__dst, 0x400uLL);
      v19 = 0;
      if ((InitRsrcFunction(*v9, *(v9 + 8), &v23) & 0x80000000) != 0 || !*(v23 + 40))
      {
LABEL_49:
        log_ClassClose(v9);
      }

      else
      {
        if (brk_TagIteratorOpen(*(*(v9 + 16) + 24), "logging", "*", 1, &v19))
        {
          v10 = 1;
        }

        else
        {
          v10 = v19 == 0;
        }

        if (!v10)
        {
          while ((brk_TagIteratorNext(v19, &__s1, &__src) & 0x80000000) == 0)
          {
            if (__s1)
            {
              v11 = __src == 0;
            }

            else
            {
              v11 = 1;
            }

            if (v11 || !cstdlib_strcmp(__s1, "BROKERSTRING"))
            {
              continue;
            }

            __dst[0] = 0;
            if (!cstdlib_strcmp(__s1, "LOG.DIAGNOSTIC"))
            {
              __s1 = "logfile.enabled";
              goto LABEL_36;
            }

            if (!cstdlib_strcmp(__s1, "LOG.DIAGNOSTIC.LEVEL"))
            {
              __s1 = "logfile.filter.level";
              goto LABEL_36;
            }

            if (cstdlib_strcmp(__s1, "LOG.DIAGNOSTIC.DIR"))
            {
              if (!cstdlib_strcmp(__s1, "LOG.DIAGNOSTIC.FILEMAXSIZEMB"))
              {
                __s1 = "logfile.max_size";
                cstdlib_strcpy(__dst, __src);
                cstdlib_strcat(__dst, "000000");
LABEL_32:
                __src = __dst;
                goto LABEL_36;
              }

              if (cstdlib_strcmp(__s1, "LOG.DIAGNOSTIC.FILEMIMETYPE"))
              {
                if (!cstdlib_strcmp(__s1, "LOG.DIAGNOSTIC.MODULES"))
                {
                  __s1 = "logfile.filter.modules";
                  LH_MapModuleNamesToIds(__src, __dst, 0x400u);
                  goto LABEL_32;
                }

                if (cstdlib_strcmp(__s1, "LOG.TSO"))
                {
                  if (cstdlib_strcmp(__s1, "LOG.TSO.LEVEL"))
                  {
                    if (cstdlib_strcmp(__s1, "LOG.TSO.FILENAME"))
                    {
                      goto LABEL_36;
                    }

                    v12 = "logtso.filename";
                  }

                  else
                  {
                    v12 = "logtso.filter.level";
                  }
                }

                else
                {
                  v12 = "logtso.enabled";
                }
              }

              else
              {
                v12 = "logfile.filemimetype";
              }
            }

            else
            {
              v12 = "logfile.filename.1";
            }

            __s1 = v12;
LABEL_36:
            Str = paramc_ParamGetStr(*(v23 + 40), __s1, &v22);
            v14 = *(v23 + 40);
            if (Str < 0)
            {
              if ((paramc_ParamSetStr(v14, __s1, __src) & 0x80000000) != 0)
              {
                brk_TagIteratorClose(v19);
                v4 = 2226135040;
                goto LABEL_49;
              }
            }

            else
            {
              paramc_ParamRelease(v14);
            }
          }

          brk_TagIteratorClose(v19);
        }

        v15 = 0;
        v16 = &LOG_SUBSCRIBER_ID;
        do
        {
          if (v15 != 40)
          {
            brk_InterfaceQueryEx(*(*(v9 + 16) + 24), *v16, 1, 1, v9 + v15 + 48, v9 + v15 + 40);
          }

          v15 += 40;
          ++v16;
        }

        while (v15 != 200);
        v4 = 0;
        *a4 = v9;
      }
    }

    else
    {
      return 2226135050;
    }
  }

  return v4;
}

uint64_t log_ClassClose(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  for (i = 40; i != 240; i += 40)
  {
    v3 = *(a1 + i);
    if (v3)
    {
      v4 = brk_InterfaceRelease(*(*(a1 + 16) + 24), v3);
      if ((v4 & 0x80000000) != 0)
      {
        return v4;
      }

      *(a1 + i) = 0;
    }
  }

  v8 = 0;
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v8);
  if ((inited & 0x80000000) != 0)
  {
    return 2226135048;
  }

  v6 = inited;
  heap_Free(*(v8 + 8), a1);
  return v6;
}

uint64_t log_ObjOpen(uint64_t a1, uint64_t *a2)
{
  if (a1)
  {
    v3 = 2226135046;
    if (a2)
    {
      *a2 = 0;
      v5 = heap_Calloc(*(*(a1 + 16) + 8), 1, 128);
      if (v5)
      {
        v6 = v5;
        cstdlib_memset(v5, 0, 0x80uLL);
        v7 = 0;
        *v6 = *(*(a1 + 16) + 8);
        v8 = (a1 + 56);
        do
        {
          v9 = *(v8 - 2);
          *(v6 + v7 + 24) = v9;
          if (v9)
          {
            v10 = (*(v9 + 32))(*(v8 - 1), *v8, v6 + v7 + 16);
            if ((v10 & 0x80000000) != 0)
            {
              v3 = v10;
              log_ObjClose(v6);
              return v3;
            }
          }

          v8 += 5;
          v7 += 16;
        }

        while (v7 != 80);
        v11 = 0;
        *(v6 + 96) = 1;
        do
        {
          v12 = *(v6 + v11 + 24);
          if (v12)
          {
            v13 = *(v12 + 80);
            if (v13)
            {
              v14 = v13(*(v6 + v11 + 16));
              if (v14 > *(v6 + 96))
              {
                *(v6 + 96) = v14;
              }
            }
          }

          v11 += 16;
        }

        while (v11 != 80);
        v3 = 0;
        *a2 = v6;
      }

      else
      {
        return 2226135050;
      }
    }
  }

  else
  {
    v3 = 0;
    *a2 = 0;
  }

  return v3;
}

uint64_t log_ObjClose(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = 0;
    while (1)
    {
      v3 = v1[v2 + 3];
      if (v3)
      {
        v4 = v3[5];
        if (v4)
        {
          if (v1[v2 + 2])
          {
            result = v4();
            if ((result & 0x80000000) != 0)
            {
              break;
            }
          }
        }
      }

      v2 += 2;
      if (v2 == 10)
      {
        heap_Free(*v1, v1);
        return 0;
      }
    }
  }

  return result;
}

uint64_t log_SubscriberAdd(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    if (*(result + 112))
    {
      return 2226135040;
    }

    else
    {
      *(result + 104) = a2;
      *(result + 112) = a3;
      if (a3 && (v4 = *(a3 + 80)) != 0 && (v5 = v4(a2), v5 > *(v3 + 96)))
      {
        v6 = v5;
        result = 0;
        *(v3 + 96) = v6;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t log_SubscriberRemove(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    result = 2226135040;
    if (*(v3 + 112) == a3 && *(v3 + 104) == a2)
    {
      result = 0;
      *(v3 + 104) = 0;
      *(v3 + 112) = 0;
    }
  }

  return result;
}

uint64_t LH_ERROR_to_VERROR(int a1)
{
  v1 = 11;
  for (i = &dword_26ECC76F0; *(i - 1) != a1; i += 2)
  {
    if (!--v1)
    {
      return 2703237376;
    }
  }

  v4 = *i;
  if (v4)
  {
    return v4 | 0xA1202000;
  }

  else
  {
    return 0;
  }
}

const char *verror_GetString(int a1)
{
  if (a1)
  {
    return "NO ERROR STRINGS SUPPORTED";
  }

  else
  {
    return " Success";
  }
}

const char *verror_GetModuleName(int a1)
{
  if (a1)
  {
    return "NO ERROR STRINGS SUPPORTED";
  }

  else
  {
    return "NO ERROR";
  }
}

uint64_t compstats_ObjOpen(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v27 = 0;
  result = 2285903879;
  if (!a3)
  {
    return result;
  }

  if (!a4)
  {
    return result;
  }

  result = InitRsrcFunction(a1, a2, &v27);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v9 = heap_Calloc(*(v27 + 8), 1, 320);
  if (!v9)
  {
LABEL_13:
    log_OutPublic(*(v27 + 32), "CompStats", 2688, 0, v10, v11, v12, v13, v25);
    return 2285903882;
  }

  v14 = v9;
  *(v9 + 284) = a3;
  v15 = 2 * a3;
  v16 = heap_Calloc(*(v27 + 8), v15, 56);
  v14[36] = v16;
  if (!v16)
  {
    heap_Free(*(v27 + 8), v14);
    goto LABEL_13;
  }

  *v14 = a1;
  v14[1] = a2;
  v14[2] = v27;
  v14[38] = v16 + 56 * a3;
  if (v15)
  {
    v17 = 0;
    __asm { FMOV            V0.2D, #1.0 }

    v26 = _Q0;
    do
    {
      v23 = v14[36];
      if (v23)
      {
        v24 = v23 + v17;
        cstdlib_memset((v23 + v17), 0, 0x38uLL);
        *(v24 + 40) = v26;
        *v24 = 0u;
        *(v24 + 16) = 0u;
        *(v24 + 32) = 0;
      }

      v17 += 56;
    }

    while (56 * v15 != v17);
  }

  *a4 = v14;
  *(a4 + 8) = 61435;
  return compstats_Reset(v14);
}

uint64_t compstats_ClockInit(_OWORD *a1)
{
  if (!a1)
  {
    return 2285903879;
  }

  cstdlib_memset(a1, 0, 0x38uLL);
  result = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 40) = _Q0;
  *a1 = 0u;
  a1[1] = 0u;
  *(a1 + 4) = 0;
  return result;
}