uint64_t SAMachTimeFromSecondsUsingLiveTimebase(double a1)
{
  if (_MergedGlobals_7 != -1)
  {
    dispatch_once(&_MergedGlobals_7, &__block_literal_global_9);
  }

  if (HIDWORD(qword_1EDD032B0))
  {
    v2 = qword_1EDD032B0 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    return 0;
  }

  result = (a1 * 1000000000.0);
  if (HIDWORD(qword_1EDD032B0) != qword_1EDD032B0)
  {
    return __udivti3();
  }

  return result;
}

id DictGetNumber(void *a1, uint64_t a2)
{
  objc_opt_class();

  return _DictGet(a1, a2);
}

id SACachedNSString(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1EDD03290 != -1)
  {
    dispatch_once(&qword_1EDD03290, &__block_literal_global_113);
  }

  os_unfair_lock_lock(&stru_1EDD0326C);
  v2 = [qword_1EDD03288 member:a1];
  if (!v2)
  {
    v3 = [a1 copy];
    if (!v3)
    {
      v6 = *__error();
      v7 = _sa_logt();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v16 = [a1 UTF8String];
        _os_log_error_impl(&dword_1E0E2F000, v7, OS_LOG_TYPE_ERROR, "Unable to copy %s", buf, 0xCu);
      }

      *__error() = v6;
      v8 = [a1 UTF8String];
      _SASetCrashLogMessage(1502, "Unable to copy %s", v9, v10, v11, v12, v13, v14, v8);
      _os_crash();
      __break(1u);
    }

    v2 = v3;
    [qword_1EDD03288 addObject:v3];
  }

  os_unfair_lock_unlock(&stru_1EDD0326C);
  v4 = *MEMORY[0x1E69E9840];

  return v2;
}

id CopyCleanSegmentName(void *a1)
{
  if ([a1 hasSuffix:@" SEGMENT"])
  {
    os_unfair_lock_lock(&stru_1EDD031D4);
    v2 = qword_1EDD031E0;
    if (!qword_1EDD031E0)
    {
      v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:8];
      v4 = qword_1EDD031E0;
      qword_1EDD031E0 = v3;

      v2 = qword_1EDD031E0;
    }

    v5 = [v2 objectForKeyedSubscript:a1];
    if (!v5)
    {
      v6 = [a1 stringByReplacingOccurrencesOfString:@" SEGMENT" withString:&stru_1F5BBF440];
      v5 = SACachedNSString(v6);

      [qword_1EDD031E0 setObject:v5 forKeyedSubscript:a1];
    }

    os_unfair_lock_unlock(&stru_1EDD031D4);
  }

  else
  {
    v5 = SACachedNSString(a1);
  }

  return v5;
}

void __SACachedNSString_block_invoke()
{
  v0 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
  v1 = qword_1EDD03288;
  qword_1EDD03288 = v0;
}

id _DictGet(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKeyedSubscript:a2];
  if (v2 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id DictGetString(void *a1, uint64_t a2)
{
  objc_opt_class();

  return _DictGet(a1, a2);
}

id uuidForString(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  memset(uu, 0, sizeof(uu));
  if (!uuid_parse([a1 UTF8String], uu))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:uu];
    goto LABEL_10;
  }

  if ([a1 length] >= 0x20)
  {
    v2 = objc_alloc(MEMORY[0x1E696AEC0]);
    v3 = [a1 substringWithRange:{0, 8}];
    v4 = [a1 substringWithRange:{8, 4}];
    v5 = [a1 substringWithRange:{12, 4}];
    v6 = [a1 substringWithRange:{16, 4}];
    v7 = [a1 substringWithRange:{20, 12}];
    v8 = [v2 initWithFormat:@"%@-%@-%@-%@-%@", v3, v4, v5, v6, v7];

    if (!uuid_parse([v8 UTF8String], uu))
    {
      v11 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:uu];

      goto LABEL_10;
    }
  }

  v9 = *__error();
  v10 = _sa_logt();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v15 = a1;
    _os_log_error_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_ERROR, "Unable to parse uuid %@", buf, 0xCu);
  }

  v11 = 0;
  *__error() = v9;
LABEL_10:
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id DictGetArrayOfClass(void *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  v4 = _DictGet(a1, a2);
  v5 = v4;
  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            goto LABEL_12;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v12 = v6;
  }

  else
  {
LABEL_12:
    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

uint64_t SAFilepathMatches(void *a1, void *a2, _BYTE *a3)
{
  if (!a1)
  {
LABEL_5:
    result = 1;
    if (a3)
    {
      *a3 = 1;
    }

    return result;
  }

  if (![a1 isAbsolutePath])
  {
    v6 = [a2 length];
    if (v6 > [a1 length])
    {
      result = [a2 hasSuffix:a1];
      if (!result)
      {
        return result;
      }

      goto LABEL_5;
    }
  }

  if (a3)
  {
    *a3 = 0;
  }

  return [a1 hasSuffix:a2];
}

char *___debugMicrostackshots_block_invoke()
{
  result = getenv("SA_LOG_MICROSTACKSHOTS");
  if (result && (*result != 48 || result[1]))
  {
    byte_1EDD02EF3 = 1;
  }

  return result;
}

id uuidForBytes(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:a1];

  return v1;
}

_BYTE *SAFilepathForCString(_BYTE *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    if (!*a1)
    {
LABEL_11:
      a1 = 0;
      goto LABEL_15;
    }

    if (*a1 == 47 && a1[1])
    {
      goto LABEL_10;
    }

    v2 = a1 - 1;
    do
    {
      v4 = *++v2;
      v3 = v4;
    }

    while ((v4 - 48) > 0xFFFFFFFD);
    if (v3)
    {
      if (strcmp(v2, "<unknown>"))
      {
        a1 = v2;
LABEL_10:
        a1 = SANSStringForCString(a1);
        goto LABEL_15;
      }

      goto LABEL_11;
    }

    v5 = *__error();
    v6 = _sa_logt();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315138;
      v11 = v1;
      _os_log_debug_impl(&dword_1E0E2F000, v6, OS_LOG_TYPE_DEBUG, "%s is not a filepath", &v10, 0xCu);
    }

    v7 = __error();
    a1 = 0;
    *v7 = v5;
  }

LABEL_15:
  v8 = *MEMORY[0x1E69E9840];

  return a1;
}

id SANSStringForCString(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:a1];
  v3 = v2;
  if (!v2)
  {
    if (a1)
    {
      v4 = *__error();
      v5 = _sa_logt();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v9 = 136315138;
        v10 = a1;
        _os_log_error_impl(&dword_1E0E2F000, v5, OS_LOG_TYPE_ERROR, "Unable to get NSString for cstr '%s'", &v9, 0xCu);
      }

      *__error() = v4;
    }

    v2 = @"(badstring)";
  }

  v6 = SACachedNSString(v2);

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

double SATimeOfBootForLiveMachine()
{
  if (qword_1EDD032A0 != -1)
  {
    dispatch_once(&qword_1EDD032A0, &__block_literal_global_142);
  }

  return *&qword_1EDD03298;
}

id DictForChunkViaNSPropertyList()
{
  v0 = ktrace_chunk_size();
  v1 = ktrace_chunk_map_data();
  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = MEMORY[0x1E696AE40];
  v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v1 length:v0 freeWhenDone:0];
  v4 = [v2 propertyListWithData:v3 options:0 format:0 error:0];

  ktrace_chunk_unmap_data();
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

LABEL_5:
      v4 = 0;
    }
  }

  return v4;
}

id DictGetDictOfClasses(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  objc_opt_class();
  v8 = _DictGet(a1, a2);
  v9 = v8;
  if (!v8)
  {
    goto LABEL_4;
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __DictDoAllClassesMatch_block_invoke;
  v13[3] = &unk_1E86F6FF0;
  v13[5] = a3;
  v13[6] = a4;
  v13[4] = &v14;
  [v8 enumerateKeysAndObjectsUsingBlock:v13];
  v10 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  if (v10 == 1)
  {
    v11 = v9;
  }

  else
  {
LABEL_4:
    v11 = 0;
  }

  return v11;
}

void sub_1E0E31BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __DictDoAllClassesMatch_block_invoke(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = a1[5];
  result = objc_opt_isKindOfClass();
  if ((result & 1) == 0 || (v8 = a1[6], result = objc_opt_isKindOfClass(), (result & 1) == 0))
  {
    *(*(a1[4] + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

id DictGetDict(void *a1, uint64_t a2)
{
  objc_opt_class();

  return _DictGet(a1, a2);
}

uint64_t SABinarySearchArray(void *a1, __int16 a2, uint64_t a3)
{
  v5 = [a1 count];
  v6 = [MEMORY[0x1E695DFB0] null];
  if (v5)
  {
    v32 = v6;
    v30 = a2 & 0x200;
    if (v5 < 0x101)
    {
      goto LABEL_9;
    }

    v7 = v5 - 1;
    v8 = [a1 objectAtIndex:v5 - 1];
    v9 = *(a3 + 16);
    if (v8 == v32)
    {
      v10 = v9(a3);
      if ((v10 & 0x8000000000000000) == 0)
      {
LABEL_5:
        if (v10 | a2 & 0x100)
        {
          v11 = [a1 objectAtIndex:0];

          v12 = (*(a3 + 16))(a3, v11);
          if (v12 < 0)
          {
            v13 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v13 = v12 | v30;
            if (v12 | v30)
            {

LABEL_9:
              v28 = a2;
              v29 = a2 & 0x300;
              v14 = 0;
              v15 = 0;
              v16 = 0;
              v17 = 2 << flsl(v5);
              v18 = a3;
              v19 = (a3 + 16);
              do
              {
                v7 = v14 + v17 / 2;
                if (v7 < v5)
                {
                  v20 = [a1 objectAtIndex:v14 + v17 / 2];
                  v21 = *v19;
                  if (v20 == v32)
                  {
                    v15 = v21(v18);
                  }

                  else
                  {
                    v15 = -(v21)(v18, v20);
                  }

                  if (!(v15 | v29))
                  {

                    goto LABEL_52;
                  }

                  if (v15)
                  {
                    v22 = 1;
                  }

                  else
                  {
                    v22 = v30 == 0;
                  }

                  v16 |= v15 == 0;
                  v23 = !v22 || v15 <= -1;
                  if (v23)
                  {
                    v14 += v17 / 2;
                  }
                }

                v23 = v17 <= 1;
                v17 /= 2;
              }

              while (!v23);
              LODWORD(v24) = v30 != 0;
              if (v15)
              {
                LODWORD(v24) = 0;
              }

              if (v15 < 0)
              {
                v24 = 1;
              }

              else
              {
                v24 = v24;
              }

              v25 = v14 + v24;
              v26 = v14 + (v15 >> 63);
              if ((v16 & 1) == 0)
              {
                v26 = 0x7FFFFFFFFFFFFFFFLL;
              }

              if ((v28 & 0x400) != 0)
              {
                v7 = v25;
              }

              else
              {
                v7 = v26;
              }

              goto LABEL_52;
            }
          }

          if ((a2 & 0x400) != 0)
          {
            v7 = 0;
          }

          else
          {
            v7 = v13;
          }

          v8 = v11;
LABEL_51:

LABEL_52:
          v6 = v32;
          goto LABEL_53;
        }

LABEL_43:
        if ((a2 & 0x400) != 0)
        {
          v7 = v5;
        }

        goto LABEL_51;
      }
    }

    else
    {
      v10 = -(v9)(a3, v8);
      if ((v10 & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }
    }

    v7 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_43;
  }

  if ((a2 & 0x400) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_53:

  return v7;
}

void sub_1E0E326A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id _SABinaryCreateLoadInfoArrayFromDyldImageInfos(uint64_t a1, unsigned int a2, void *a3, uint64_t a4, unsigned int a5, int a6)
{
  LODWORD(v6) = a6;
  v47 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    if (a4 || !a5)
    {
      goto LABEL_12;
    }

    v11 = *__error();
    v6 = _sa_logt();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v46 = a5;
      _os_log_error_impl(&dword_1E0E2F000, v6, OS_LOG_TYPE_ERROR, "%d text exec load infos, but NULL pointer", buf, 8u);
    }

    *__error() = v11;
    _SASetCrashLogMessage(3193, "%d text exec load infos, but NULL pointer", v12, v13, v14, v15, v16, v17, a5);
    _os_crash();
    __break(1u);
  }

  v18 = 0;
  if (!a4 || !a5)
  {
    goto LABEL_26;
  }

  if (!a1 && a2)
  {
    v35 = *__error();
    v36 = _sa_logt();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v46 = a2;
      _os_log_error_impl(&dword_1E0E2F000, v36, OS_LOG_TYPE_ERROR, "%d load infos, but NULL pointer", buf, 8u);
    }

    *__error() = v35;
    _SASetCrashLogMessage(3192, "%d load infos, but NULL pointer", v37, v38, v39, v40, v41, v42, a2);
    _os_crash();
    __break(1u);
  }

LABEL_12:
  v43 = a4;
  v44 = a5;
  v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a5 + a2];
  if (a2)
  {
    v20 = 0;
    v21 = a2;
    v22 = a1 + 8;
    do
    {
      v23 = uuidForBytes(v22);
      v24 = 0;
      if (!v20 && (v6 & 1) == 0)
      {
        if ([a3 isAbsolutePath])
        {
          v24 = a3;
        }

        else
        {
          v24 = 0;
        }
      }

      v25 = [SABinary binaryWithUUID:v23 absolutePath:v24];
      v26 = [SABinaryLoadInfo binaryLoadInfoWithBinary:v25 loadAddress:*(v22 - 8) isInKernelAddressSpace:v6 exclave:0];
      [v19 addObject:v26];

      ++v20;
      v22 += 24;
    }

    while (v21 != v20);
  }

  if (v44)
  {
    v27 = v44;
    v28 = v43 + 8;
    do
    {
      v29 = uuidForBytes(v28);
      v30 = [SABinary binaryWithUUID:v29 absolutePath:0];
      v31 = [(SABinary *)v30 segmentWithCleanName:0 length:0x7FFFFFFFFFFFFFFFLL offsetIntoBinary:?];
      v32 = [SABinaryLoadInfo binaryLoadInfoWithSegment:v31 loadAddress:*(v28 - 8) isInKernelAddressSpace:v6 exclave:0];
      [v19 addObject:v32];

      v28 += 24;
      --v27;
    }

    while (v27);
  }

  if (v6)
  {
    [v19 sortUsingComparator:&__block_literal_global_771];
  }

  v18 = [v19 copy];

LABEL_26:
  v33 = *MEMORY[0x1E69E9840];

  return v18;
}

void sub_1E0E33110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0E37C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1E0E37E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0E44950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *_CopyStringForTime(int a1, int8x16_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  memset(&v41, 0, sizeof(v41));
  v40 = (*MEMORY[0x1E695E468] + *a2.i64);
  localtime_r(&v40, &v41);
  v3 = strftime(v46, 0x40uLL, "%Y-%m-%d %T", &v41);
  if (!v3)
  {
    v14 = *MEMORY[0x1E69E9840];
    return &stru_1F5BBF440;
  }

  v5 = v3;
  if (v3 >= 0x40)
  {
    v15 = *__error();
    v16 = _sa_logt();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *__str = 136315138;
      v45 = v46;
      _os_log_error_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_ERROR, "%s", __str, 0xCu);
    }

    *__error() = v15;
    _SASetCrashLogMessage(89, "%s", v17, v18, v19, v20, v21, v22, v46);
    _os_crash();
    __break(1u);
    goto LABEL_16;
  }

  if (a1 >= 1)
  {
    *v4.i64 = *a2.i64 - trunc(*a2.i64);
    v6.f64[0] = NAN;
    v6.f64[1] = NAN;
    snprintf(__str, 0x10uLL, "%0.*f", a1, *vbslq_s8(vnegq_f64(v6), v4, a2).i64);
    v5 += strlcpy(&v46[v5], &__str[1], 64 - v5);
    if (v5 >= 0x40)
    {
      goto LABEL_19;
    }
  }

  v7 = strftime(&v46[v5], 64 - v5, " %z", &v41);
  if (!v7)
  {
    v46[v5] = 0;
  }

  if (v7 + v5 >= 0x40)
  {
LABEL_16:
    v23 = *__error();
    v24 = _sa_logt();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *__str = 136315138;
      v45 = v46;
      _os_log_error_impl(&dword_1E0E2F000, v24, OS_LOG_TYPE_ERROR, "%s", __str, 0xCu);
    }

    *__error() = v23;
    _SASetCrashLogMessage(117, "%s", v25, v26, v27, v28, v29, v30, v46);
    _os_crash();
    __break(1u);
LABEL_19:
    v31 = *__error();
    v32 = _sa_logt();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v43 = v46;
      _os_log_error_impl(&dword_1E0E2F000, v32, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
    }

    *__error() = v31;
    _SASetCrashLogMessage(101, "%s", v33, v34, v35, v36, v37, v38, v46);
    _os_crash();
    __break(1u);
  }

  v8 = SANSStringForCString(v46);
  v9 = v8;
  v10 = &stru_1F5BBF440;
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

id KTraceStringFromArguments(uint64_t a1, uint64_t a2, unsigned int a3)
{
  is_kernel_64_bit = ktrace_is_kernel_64_bit();
  v6 = 5 - a3;
  if (is_kernel_64_bit)
  {
    v7 = 8 * v6;
    v8 = (a2 + 24);
    if (a3 == 1)
    {
      v8 = (a2 + 8);
    }

    v9 = 0;
    if (a3 == 2)
    {
      v10 = (a2 + 16);
    }

    else
    {
      v10 = v8;
    }

    goto LABEL_12;
  }

  v7 = 4 * v6;
  v11 = malloc_type_calloc(v7, 1uLL, 0x100004077774924uLL);
  v9 = v11;
  if (a3 <= 1)
  {
    *v11 = *(a2 + 8);
    v12 = (v11 + 1);
LABEL_10:
    v12->i32[0] = *(a2 + 16);
    v12 = (v12 + 4);
    goto LABEL_11;
  }

  v12 = v11;
  if (a3 == 2)
  {
    goto LABEL_10;
  }

LABEL_11:
  *v12 = vmovn_s64(*(a2 + 24));
  v10 = v11;
LABEL_12:
  v13 = 0;
  while (*(v10 + v13))
  {
    if (v7 == ++v13)
    {
      v13 = v7;
LABEL_17:
      v14 = [objc_alloc(MEMORY[0x1E696AD60]) initWithBytes:v10 length:v13 encoding:4];
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  if (v13)
  {
    goto LABEL_17;
  }

  v14 = 0;
  if (v9)
  {
LABEL_18:
    free(v9);
  }

LABEL_19:

  return v14;
}

id _sa_logt()
{
  if (qword_1EDD02EE0 != -1)
  {
    dispatch_once(&qword_1EDD02EE0, &__block_literal_global_0);
  }

  v1 = qword_1EDD02ED8;

  return v1;
}

double SASecondsFromMachTimeUsingLiveTimebase(uint64_t a1)
{
  if (_MergedGlobals_7 != -1)
  {
    dispatch_once(&_MergedGlobals_7, &__block_literal_global_9);
  }

  if (HIDWORD(qword_1EDD032B0))
  {
    v2 = qword_1EDD032B0 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    a1 = 0;
  }

  else if (qword_1EDD032B0 != HIDWORD(qword_1EDD032B0))
  {
    a1 = __udivti3();
  }

  return a1 / 1000000000.0;
}

id SAExecutablePath(int a1, const char *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a1 < 1)
  {
    v4 = 0;
    goto LABEL_31;
  }

  if (a2)
  {
    if (*a2)
    {
      v3 = a2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = 0;
  LODWORD(v6) = 0;
  do
  {
    if (v6)
    {
      v6 = (2 * v6);
    }

    else
    {
      v6 = 1024;
    }

    if (v5)
    {
      free(v5);
    }

    v5 = malloc_type_calloc(v6, 1uLL, 0xAD1672FDuLL);
    v7 = proc_pidpath(a1, v5, v6);
  }

  while (v7 >= v6);
  if (!v7)
  {
    if (kill(a1, 0))
    {
      v4 = 0;
    }

    else
    {
      v13 = *__error();
      v14 = _sa_logt();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v17 = *__error();
        v18 = 67109376;
        *v19 = a1;
        *&v19[4] = 1024;
        *&v19[6] = v17;
        _os_log_error_impl(&dword_1E0E2F000, v14, OS_LOG_TYPE_ERROR, "unable to get path for %d: %{errno}d", &v18, 0xEu);
      }

      v4 = 0;
      *__error() = v13;
    }

    goto LABEL_30;
  }

  if (v3)
  {
    v8 = rindex(v5, 47);
    if (!v8)
    {
      v11 = *__error();
      v12 = _sa_logt();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v18 = 136315650;
        *v19 = v3;
        *&v19[8] = 1024;
        v20 = a1;
        v21 = 2080;
        v22 = v5;
        _os_log_error_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_ERROR, "%s [%d] path %s has no path components", &v18, 0x1Cu);
      }

      goto LABEL_26;
    }

    v9 = v8;
    v10 = strlen(v3);
    if (strncmp(v3, v9 + 1, v10))
    {
      v11 = *__error();
      v12 = _sa_logt();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v18 = 136315650;
        *v19 = v3;
        *&v19[8] = 1024;
        v20 = a1;
        v21 = 2080;
        v22 = v5;
        _os_log_debug_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_DEBUG, "%s [%d] exec'ed into %s", &v18, 0x1Cu);
      }

LABEL_26:

      v4 = 0;
      *__error() = v11;
      goto LABEL_30;
    }
  }

  v4 = SANSStringForCString(v5);
LABEL_30:
  free(v5);
LABEL_31:
  v15 = *MEMORY[0x1E69E9840];

  return v4;
}

id SACopySanitizedStringWhitespaceOnlyNullable(void *a1)
{
  if (a1)
  {
    a1 = SACopySanitizedString(a1, 1, 0);
    v1 = vars8;
  }

  return a1;
}

__CFString *_shared_cache_display_string(uint64_t a1)
{
  if (!a1 || ([MEMORY[0x1E695DFB0] null], v2 = objc_claimAutoreleasedReturnValue(), v2, v2 == a1))
  {
    v3 = @"None";
    goto LABEL_17;
  }

  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = [a1 slidBaseAddress];
  v5 = [a1 slide];
  v6 = [a1 uuid];
  v7 = v6;
  if (v4 == -1)
  {
    if (v5 == -1)
    {
      [(__CFString *)v3 appendFormat:@"%@", v6, v11, v12];
    }

    else
    {
      -[__CFString appendFormat:](v3, "appendFormat:", @"%@ slide 0x%llx", v6, [a1 slide], v12);
    }
  }

  else
  {
    v8 = [a1 slidBaseAddress];
    if (v5 == -1)
    {
      [(__CFString *)v3 appendFormat:@"%@ slid base address 0x%llx", v7, v8, v12];
    }

    else
    {
      -[__CFString appendFormat:](v3, "appendFormat:", @"%@ slid base address 0x%llx, slide 0x%llx", v7, v8, [a1 slide]);
    }
  }

  v9 = *(a1 + 28);
  if (v9)
  {
    [(__CFString *)v3 appendFormat:@" (System Primary)"];
    v9 = *(a1 + 28);
    if ((v9 & 2) == 0)
    {
LABEL_13:
      if ((v9 & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_13;
  }

  [(__CFString *)v3 appendFormat:@" (DriverKit)"];
  if ((*(a1 + 28) & 4) != 0)
  {
LABEL_14:
    [(__CFString *)v3 appendFormat:@" (Rosetta)"];
  }

LABEL_15:
  if (*(a1 + 25))
  {
    [(__CFString *)v3 appendFormat:@" (Exclave)"];
  }

LABEL_17:

  return v3;
}

id SACopySanitizedString(void *a1, int a2, unint64_t a3)
{
  v5 = a1;
  v6 = v5;
  if (a2 && [v5 rangeOfString:@"[^\\S ]" options:1024] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v6 stringByReplacingOccurrencesOfString:@"[^\\S ]" withString:@" " options:1024 range:{0, objc_msgSend(v6, "length")}];

    v6 = v7;
  }

  if (a3 && [v6 length] > a3)
  {
    v8 = [v6 substringWithRange:{0, a3}];

    v6 = v8;
  }

  return v6;
}

id SAFormattedBytesEx(unint64_t a1, int a2, int a3, int a4, unint64_t a5)
{
  v8 = 1000;
  if (a2)
  {
    v8 = 1024;
    v9 = 0x100000;
  }

  else
  {
    v9 = 1000000;
  }

  if (a2)
  {
    v10 = 0x40000000;
  }

  else
  {
    v10 = 1000000000;
  }

  if (a3)
  {
    v11 = "i";
  }

  else
  {
    v11 = "";
  }

  if (10 * v8 <= a1 || v8 <= a5)
  {
    if (10 * v9 <= a1 || v9 <= a5)
    {
      v20 = a1;
      v21 = objc_alloc(MEMORY[0x1E696AEC0]);
      v22 = " ";
      if (!a4)
      {
        v22 = "";
      }

      if (10 * v10 <= a1 || v10 <= a5)
      {
        if (floor(v20 / v10) == v20 / v10)
        {
          v16 = [v21 initWithFormat:@"%.0f%sG%sB", v20 / v10, v22, v11];
        }

        else
        {
          v16 = [v21 initWithFormat:@"%.2f%sG%sB", v20 / v10, v22, v11];
        }
      }

      else if (floor(v20 / v9) == v20 / v9)
      {
        v16 = [v21 initWithFormat:@"%.0f%sM%sB", v20 / v9, v22, v11];
      }

      else
      {
        v16 = [v21 initWithFormat:@"%.2f%sM%sB", v20 / v9, v22, v11];
      }
    }

    else
    {
      v17 = a1 / v8;
      v18 = objc_alloc(MEMORY[0x1E696AEC0]);
      v19 = " ";
      if (!a4)
      {
        v19 = "";
      }

      v16 = [v18 initWithFormat:@"%lld%sK%sB", v17, v19, v11];
    }
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x1E696AEC0]);
    v14 = "  ";
    if (!a4)
    {
      v14 = "";
    }

    v15 = " ";
    if ((a3 & a4) == 0)
    {
      v15 = "";
    }

    v16 = [v13 initWithFormat:@"%lld%s%sB", a1, v14, v15];
  }

  return v16;
}

uint64_t saos_printf_seconds(void *a1, unint64_t a2, uint64_t a3)
{
  v6 = __exp10((9 - a3));
  if (v6 <= a2)
  {
    v7 = 0;
  }

  else
  {
    v7 = [a1 appendString:@"<"];
    a2 = v6;
  }

  return [a1 printWithFormat:@"%.*fs", a3, a2 / 1000000000.0] + v7;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t saos_printf_time_scaled(void *a1, unint64_t a2)
{
  v4 = a2 / 0x3B9ACA00;
  if (a2 % 0x3B9ACA00)
  {
    v4 = a2 / 0xF4240;
    v5 = a2 % 0xF4240;
    v6 = a2 / 0x3E8;
    if (a2 % 0x3E8)
    {
      v7 = "n";
    }

    else
    {
      v7 = "u";
    }

    if (a2 % 0x3E8)
    {
      v6 = a2;
    }

    v8 = v5 == 0;
    if (v5)
    {
      v9 = v7;
    }

    else
    {
      v9 = "m";
    }

    if (!v8)
    {
      v4 = v6;
    }
  }

  else
  {
    v9 = "";
  }

  return [a1 printWithFormat:@"%llu%ss", v4, v9, v2, v3];
}

uint64_t saos_printf_cycles_instructions(void *a1, unint64_t a2, unint64_t a3, int a4)
{
  if (a4)
  {
    if (a3)
    {
      v4 = a2 / a3;
    }

    else
    {
      v4 = 0.0;
    }

    return [a1 printWithFormat:@" (%llu cycles, %llu instructions, %fc/i)", a2, a3, *&v4, v15, v16];
  }

  v5 = a2;
  if (a2 > 0x71AFD498D0000)
  {
    v6 = 1.0e15;
    v7 = "P";
LABEL_14:
    v9 = v5 / v6;
    goto LABEL_15;
  }

  if (a2 > 0x1D1A94A2000)
  {
    v6 = 1.0e12;
    v7 = "T";
    goto LABEL_14;
  }

  if (a2 > 0x77359400)
  {
    v6 = 1000000000.0;
    v7 = "G";
    goto LABEL_14;
  }

  if (a2 > 0x1E8480)
  {
    v6 = 1000000.0;
    v7 = "M";
    goto LABEL_14;
  }

  v9 = v5 / 1000.0;
  if (a2 <= 0x7D0)
  {
    v9 = a2;
  }

  v7 = "";
  if (a2 > 0x7D0)
  {
    v7 = "K";
  }

LABEL_15:
  v10 = a3;
  if (a3 <= 0x71AFD498D0000)
  {
    if (a3 <= 0x1D1A94A2000)
    {
      if (a3 <= 0x77359400)
      {
        if (a3 <= 0x1E8480)
        {
          v13 = v10 / 1000.0;
          if (a3 <= 0x7D0)
          {
            v13 = a3;
          }

          v12 = "";
          if (a3 > 0x7D0)
          {
            v12 = "K";
          }

          goto LABEL_24;
        }

        v11 = 1000000.0;
        v12 = "M";
      }

      else
      {
        v11 = 1000000000.0;
        v12 = "G";
      }
    }

    else
    {
      v11 = 1.0e12;
      v12 = "T";
    }
  }

  else
  {
    v11 = 1.0e15;
    v12 = "P";
  }

  v13 = v10 / v11;
LABEL_24:
  v14 = v5 / v10;
  if (!a3)
  {
    v14 = 0.0;
  }

  return [a1 printWithFormat:@" (%.1f%s cycles, %.1f%s instructions, %.2fc/i)", *&v9, v7, *&v13, v12, *&v14];
}

id SAFormattedBytesDouble(int a1, int a2, double a3)
{
  v4 = 1000.0;
  if (a1)
  {
    v4 = 1024.0;
    v5 = 1048576.0;
  }

  else
  {
    v5 = 1000000.0;
  }

  if (a1)
  {
    v6 = 1073741820.0;
  }

  else
  {
    v6 = 1000000000.0;
  }

  if (a2)
  {
    v7 = "i";
  }

  else
  {
    v7 = "";
  }

  if (v4 * 10.0 <= a3)
  {
    if (v5 * 10.0 <= a3)
    {
      v15 = objc_alloc(MEMORY[0x1E696AEC0]);
      if (v6 * 10.0 <= a3)
      {
        if (floor(a3 / v6) == a3 / v6)
        {
          v12 = [v15 initWithFormat:@"%.0f G%sB", a3 / v6, v7];
        }

        else
        {
          v12 = [v15 initWithFormat:@"%.2f G%sB", a3 / v6, v7];
        }
      }

      else if (floor(a3 / v5) == a3 / v5)
      {
        v12 = [v15 initWithFormat:@"%.0f M%sB", a3 / v5, v7];
      }

      else
      {
        v12 = [v15 initWithFormat:@"%.2f M%sB", a3 / v5, v7];
      }
    }

    else
    {
      v13 = a3 / v4;
      v14 = objc_alloc(MEMORY[0x1E696AEC0]);
      if (floor(v13) == v13)
      {
        v12 = [v14 initWithFormat:@"%.0f K%sB", *&v13, v7];
      }

      else
      {
        v12 = [v14 initWithFormat:@"%.2f K%sB", *&v13, v7];
      }
    }
  }

  else
  {
    v9 = floor(a3);
    v10 = objc_alloc(MEMORY[0x1E696AEC0]);
    v11 = " ";
    if (!a2)
    {
      v11 = "";
    }

    if (v9 == a3)
    {
      v12 = [v10 initWithFormat:@"%.0f  %sB", *&a3, v11];
    }

    else
    {
      v12 = [v10 initWithFormat:@"%.2f  %sB", *&a3, v11];
    }
  }

  return v12;
}

uint64_t _saos_printf_indent_and_kernel_dot(void *a1, uint64_t a2, int a3, int a4)
{
  v4 = a2;
  v19 = *MEMORY[0x1E69E9840];
  if (a2 >= 0x7FFFFFFF)
  {
    v9 = *__error();
    v10 = _sa_logt();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v18 = v4;
      _os_log_error_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_ERROR, "indent %u", buf, 8u);
    }

    *__error() = v9;
    _SASetCrashLogMessage(343, "indent %u", v11, v12, v13, v14, v15, v16, v4);
    _os_crash();
    __break(1u);
  }

  if (a4)
  {
    v5 = "";
    if (a3)
    {
      v5 = "*";
    }

    result = [a1 printWithFormat:@"%d%s ", (a2 >> 1) - 1, v5];
  }

  else
  {
    v7 = "";
    if (a3)
    {
      v7 = "*";
    }

    result = [a1 printWithFormat:@"%*s", a2, v7];
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

id SAFormattedSignedBytes(uint64_t a1, int a2, int a3)
{
  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (a1 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = -a1;
  }

  if (a1 < 0)
  {
    v8 = @"-%@";
  }

  else
  {
    v8 = @"+%@";
  }

  v9 = SAFormattedBytesEx(v7, a2, a3, 1, 0);
  v10 = [v6 initWithFormat:v8, v9];

  return v10;
}

BOOL _microstackshot_state_has_change_to_display(int a1, int a2, char a3, int a4)
{
  v5 = a1 == a2;
  result = a1 != a2;
  if (v5 || (a3 & 1) != 0)
  {
    return result;
  }

  v7 = a2 ^ a1;
  if (!a4)
  {
    if ((v7 & 0x3FA2) == 0)
    {
      return (v7 & 0x1C000) != 0;
    }

    return 1;
  }

  if ((v7 & 0x10) != 0)
  {
    return 1;
  }

  v8 = (a1 & a2 & 0x10) == 0;
  if ((v7 & 0xC) == 0)
  {
    v8 = 1;
  }

  result = 1;
  if ((v7 & 0x3FA2) == 0 && v8)
  {
    return (v7 & 0x1C000) != 0;
  }

  return result;
}

uint64_t saos_printf_frame_with_state(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  _saos_printf_indent_and_kernel_dot(a1, a2, a5, 0);
  [a1 printWithFormat:@"%-*lu  ", a3, a4];
  [a1 appendString:a6];
  _saos_printf_state_appended(a1, a7, a8);

  return [a1 appendString:@"\n"];
}

void *_saos_printf_state_appended(void *result, unint64_t a2, uint64_t a3)
{
  v5 = result;
  if (a3 || (a2 & 0x1FFFFFFFFFFFFFFFLL) != 0)
  {
    objc_msgSend(result, "appendString:", @" (");
    _saos_printf_state_appended_noparens(v5, a2, 0, a3);

    return [v5 appendString:@""]);
  }

  return result;
}

uint64_t saos_printf_call_tree_node_without_count(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _saos_printf_indent_and_kernel_dot(a1, a2, 0, 0);
  [a1 printWithFormat:@"%*s  ", a3, ""];
  return [a1 printWithFormat:@"<%@>\n", a4];
}

uint64_t _saos_printf_state_appended_noparens(void *a1, unint64_t a2, unint64_t *a3, uint64_t a4)
{
  v8 = HIDWORD(a2);
  v9 = HIWORD(a2);
  v10 = HIBYTE(a2);
  if (!a3)
  {
    v13 = a4 != 0;
    if ((a2 & 0x1FFFFFFFFFFFFFFFLL) != 0 || a4)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v16 = [a1 appendString:@"suspended"];
        if ((v10 & 4) == 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v16 = 0;
        if ((a2 & 0x400000000000000) == 0)
        {
          goto LABEL_31;
        }
      }

      goto LABEL_23;
    }

    return 0;
  }

  v11 = *a3;
  v12 = *a3 ^ a2;
  if ((v12 & 0x1FFF000000000000) == 0)
  {
    v13 = a4 != 0;
    if (a4 || a2 != v11 || (v12 & 0xFFFF00000000) != 0)
    {
      goto LABEL_4;
    }

    return 0;
  }

  v13 = a4 != 0;
LABEL_4:
  v14 = HIBYTE(v11);
  v15 = v14 ^ HIBYTE(a2);
  if (((v14 ^ HIBYTE(a2)) & 0x10) == 0)
  {
    v16 = 0;
    if (((v14 ^ HIBYTE(a2)) & 4) != 0)
    {
      goto LABEL_23;
    }

LABEL_16:
    if ((v10 & 4) != 0)
    {
      goto LABEL_29;
    }

LABEL_28:
    if (!(v14 & 4 | v15 & 8))
    {
LABEL_29:
      v18 = v9 != 0;
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v17 = @"suspended";
  }

  else
  {
    v17 = @"unsuspended";
  }

  v16 = [a1 appendString:v17];
  LOBYTE(v14) = *(a3 + 7);
  v15 = v14 ^ v10;
  if (((v14 ^ v10) & 4) == 0)
  {
    goto LABEL_16;
  }

LABEL_23:
  if (v16 >= 1)
  {
    LODWORD(v16) = [a1 appendString:{@", "}] + v16;
  }

  if ((v10 & 4) != 0)
  {
    v19 = @"running";
    goto LABEL_39;
  }

  v16 = [a1 appendString:@"not running"] + v16;
  if (a3)
  {
    LOBYTE(v14) = *(a3 + 7);
    v15 = v14 ^ v10;
    goto LABEL_28;
  }

LABEL_31:
  if ((v10 & 8) == 0)
  {
    if (!v9)
    {
      goto LABEL_60;
    }

    goto LABEL_47;
  }

LABEL_34:
  if (v16 >= 1)
  {
    LODWORD(v16) = [a1 appendString:{@", "}] + v16;
  }

  if ((v10 & 8) != 0)
  {
    v19 = @"runnable";
  }

  else
  {
    v19 = @"not runnable";
  }

LABEL_39:
  v16 = [a1 appendString:v19] + v16;
  v18 = v9 != 0;
  if (!a3)
  {
    if (!v9)
    {
      goto LABEL_60;
    }

    goto LABEL_47;
  }

LABEL_40:
  if ((v18 ^ (*(a3 + 6) != 0)))
  {
    goto LABEL_48;
  }

  v20 = !v18;
  if (!*(a3 + 6))
  {
    v20 = 1;
  }

  if ((v20 & 1) == 0 && *(a3 + 6) != BYTE6(a2))
  {
LABEL_47:
    v18 = 1;
LABEL_48:
    if (v16 >= 1)
    {
      LODWORD(v16) = [a1 appendString:{@", "}] + v16;
    }

    if (v18)
    {
      v21 = [a1 printWithFormat:@"on cpu %u", (v9 - 1)];
    }

    else
    {
      v21 = [a1 printWithFormat:@"on cpu UNKNOWN", v24];
    }

    v16 = (v21 + v16);
    if (a3)
    {
      goto LABEL_54;
    }

LABEL_60:
    if ((v10 & 2) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_61;
  }

LABEL_54:
  v22 = *(a3 + 7);
  if (((v22 ^ v10) & 2) == 0)
  {
    goto LABEL_65;
  }

  if ((v10 & 2) == 0)
  {
    if ((a2 & 0x100000000000000) == 0)
    {
      if (v16 >= 1)
      {
        LODWORD(v16) = [a1 appendString:{@", "}] + v16;
      }

      v16 = [a1 printWithFormat:@"not e-core"] + v16;
    }

LABEL_64:
    LOBYTE(v22) = *(a3 + 7);
LABEL_65:
    if ((HIBYTE(a2) & 1) == (v22 & 1))
    {
      goto LABEL_75;
    }

    if ((a2 & 0x100000000000000) == 0)
    {
      if ((v10 & 2) == 0)
      {
        if (v16 >= 1)
        {
          LODWORD(v16) = [a1 appendString:{@", "}] + v16;
        }

        v16 = [a1 printWithFormat:@"not p-core"] + v16;
      }

      goto LABEL_75;
    }

    goto LABEL_72;
  }

LABEL_61:
  if (v16 >= 1)
  {
    LODWORD(v16) = [a1 appendString:{@", "}] + v16;
  }

  v16 = [a1 printWithFormat:@"e-core"] + v16;
  if (a3)
  {
    goto LABEL_64;
  }

LABEL_71:
  if ((a2 & 0x100000000000000) == 0)
  {
    goto LABEL_77;
  }

LABEL_72:
  if (v16 >= 1)
  {
    LODWORD(v16) = [a1 appendString:{@", "}] + v16;
  }

  v16 = [a1 printWithFormat:@"p-core"] + v16;
  if (!a3)
  {
LABEL_77:
    if ((a2 & 0xFFFF00000000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_78;
  }

LABEL_75:
  if (*(a3 + 2) == v8)
  {
    goto LABEL_81;
  }

LABEL_78:
  if (v16 >= 1)
  {
    LODWORD(v16) = [a1 appendString:{@", "}] + v16;
  }

  v16 = [a1 printWithFormat:@"%uMhz", 100 * v8] + v16;
  if (a3)
  {
LABEL_81:
    if (*a3 == a2)
    {
      goto LABEL_87;
    }

    goto LABEL_84;
  }

LABEL_83:
  if (a2)
  {
LABEL_84:
    if (v16 >= 1)
    {
      LODWORD(v16) = [a1 appendString:{@", "}] + v16;
    }

    v16 = [a1 printWithFormat:@"%llu pmi cycle interval", 1000000 * a2] + v16;
LABEL_87:
    if (!v13)
    {
      return v16;
    }

    goto LABEL_88;
  }

  if (!v13)
  {
    return v16;
  }

LABEL_88:
  if (v16 >= 1)
  {
    LODWORD(v16) = [a1 appendString:{@", "}] + v16;
  }

  return [a1 printWithFormat:@"blocked by %@", a4] + v16;
}

char *init_io_histograms()
{
  v0 = malloc_type_malloc(0xF38uLL, 0x10000403AFA9047uLL);
  v1 = v0;
  if (v0)
  {
    bzero(v0, 0xF38uLL);
    for (i = 0; i != 2912; i += 728)
    {
      *&v1[i + 984] = 29;
      bzero(&v1[i + 992], 0x2B8uLL);
      memmove(&v1[i + 992], &io_latency_histogram_template, 0x2B8uLL);
    }

    *v1 = 9;
    *(v1 + 8) = 0u;
    *(v1 + 24) = 0u;
    *(v1 + 56) = 0u;
    *(v1 + 72) = 0u;
    *(v1 + 88) = 0u;
    *(v1 + 104) = 0u;
    *(v1 + 120) = 0u;
    *(v1 + 136) = 0u;
    *(v1 + 152) = 0u;
    *(v1 + 168) = 0u;
    *(v1 + 184) = 0u;
    *(v1 + 200) = 0u;
    *(v1 + 40) = 0u;
    v3 = v1 + 40;
    *(v1 + 2) = 4096;
    v4 = 8;
    *(v1 + 27) = 0;
    do
    {
      v5 = *(v3 - 3);
      *(v3 - 1) = v5;
      *v3 = 2 * v5;
      v3 += 3;
      --v4;
    }

    while (v4);
  }

  return v1;
}

unsigned int *update_histograms_stats(unsigned int *result, unsigned int a2, unint64_t a3, unint64_t a4, int a5)
{
  if (result)
  {
    v5 = &result[16 * a2];
    v6 = v5 + 182;
    v7.i64[0] = vdupq_n_s64(1uLL).u64[0];
    v7.i64[1] = a4;
    *(v5 + 182) = vaddq_s64(*(v5 + 182), v7);
    *(v5 + 93) += a4 * a4;
    if (*(v5 + 94) < a4)
    {
      *(v5 + 94) = a4;
    }

    v8 = 14;
    if (a5)
    {
      v8 = 10;
    }

    v9 = 12;
    if (a5)
    {
      v9 = 8;
    }

    *&v6[v8] += a3;
    ++*&v6[v9];
    v10 = &result[182 * a2];
    v11 = v10[246];
    if (v11)
    {
      v12 = 0;
      v13 = &result[182 * a2 + 252];
      while (*(v13 - 1) < a4)
      {
        ++v12;
        v13 += 6;
        if (v11 == v12)
        {
          goto LABEL_16;
        }
      }

      ++*v13;
    }

    else
    {
      LODWORD(v12) = 0;
    }

    if (v12 == v11)
    {
LABEL_16:
      ++*(v10 + 213);
    }

    v14 = *result;
    if (v14)
    {
      v15 = result + 6;
      while (*(v15 - 1) < a3)
      {
        v15 += 3;
        if (!--v14)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_21:
      v15 = result + 180;
    }

    ++*v15;
  }

  return result;
}

uint64_t safe_snprintf(char **a1, _DWORD *a2, const char *a3, ...)
{
  va_start(va, a3);
  v4 = vsnprintf(*a1, *a2, a3, va);
  if ((v4 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  v7 = *a2 - v4;
  v6 = *a2 > v4;
  if (*a2 < v4)
  {
    v7 = 0;
  }

  *a2 = v7;
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a1 += v5;
  return result;
}

uint64_t print_io_histograms(unsigned int *a1, char *a2, const char *a3)
{
  v36 = a3;
  v35 = a2;
  result = 0xFFFFFFFFLL;
  if (a1 && a3 >= 0x2000)
  {
    if ((safe_snprintf(&v35, a2, a3, &v36, "IO Size Histogram:\n") & 0x80000000) == 0 && (safe_snprintf(&v35, v5, v6, &v36, "     %s      %s            %s                     %s\n", "Begin", "End", "Frequency", "CDF") & 0x80000000) == 0)
    {
      if (*a1)
      {
        v9 = 0;
        v10 = 0;
        v11 = a1 + 4;
        do
        {
          v10 += v11[1];
          if ((safe_snprintf(&v35, v7, v8, &v36, "%*lluKB%*lluKB\t\t%*llu\t\t%*llu\n", 8, *(v11 - 1) >> 10, 8, *v11 >> 10, 8, v11[1], 8, v10) & 0x80000000) != 0)
          {
            return 0xFFFFFFFFLL;
          }

          v11 += 3;
          ++v9;
          v12 = *a1;
        }

        while (v9 < v12);
        v13 = v12 - 1;
      }

      else
      {
        v10 = 0;
        v13 = -1;
      }

      if ((safe_snprintf(&v35, v7, v8, &v36, "%*s%*lluKB\t\t%*llu\t\t%*llu\n", 10, ">", 8, *&a1[6 * v13 + 4] >> 10, 8, *(a1 + 90), 8, *(a1 + 90) + v10) & 0x80000000) == 0)
      {
        v16 = 0;
        v17 = a1 + 182;
        v34 = a1 + 246;
        for (i = a1 + 252; ; i += 182)
        {
          if (v17[8 * v16])
          {
            if ((safe_snprintf(&v35, v14, v15, &v36, "Tier %u Latency Histogram:\n", v16) & 0x80000000) != 0 || (safe_snprintf(&v35, v19, v20, &v36, "      %s        %s                %s                    %s\n", "Begin", "End", "Freq", "CDF") & 0x80000000) != 0)
            {
              return 0xFFFFFFFFLL;
            }

            v23 = &v34[182 * v16];
            if (*v23)
            {
              v24 = 0;
              v25 = 0;
              v26 = i;
              while (1)
              {
                v25 += *v26;
                if ((safe_snprintf(&v35, v21, v22, &v36, "%*lluus%*lluus\t\t%*llu\t\t%*llu\n", 9, *(v26 - 2), 9, *(v26 - 1), 9, *v26, 9, v25) & 0x80000000) != 0)
                {
                  return 0xFFFFFFFFLL;
                }

                v26 += 6;
                ++v24;
                v27 = *v23;
                if (v24 >= v27)
                {
                  v28 = v27 - 1;
                  goto LABEL_22;
                }
              }
            }

            v25 = 0;
            v28 = -1;
LABEL_22:
            if ((safe_snprintf(&v35, v21, v22, &v36, "%*s%*lluus\t\t%*llu\t\t%*llu\n", 10, ">", 9, *&v23[6 * v28 + 4], 9, *(v23 + 90), 9, *(v23 + 90) + v25) & 0x80000000) != 0)
            {
              return 0xFFFFFFFFLL;
            }
          }

          if (++v16 == 4)
          {
            v29 = 0;
            while (!*v17 || (safe_snprintf(&v35, v14, v15, &v36, "Tier %u Aggregate Stats:\n", v29) & 0x80000000) == 0 && (safe_snprintf(&v35, v30, v31, &v36, "\tNum IOs %llu Latency Mean %lluus Max Latency %lluus Latency SD %lluus\n", *v17, v17[1] / *v17, v17[3], sqrt((v17[2] / *v17 - v17[1] / *v17 * (v17[1] / *v17)))) & 0x80000000) == 0 && (safe_snprintf(&v35, v32, v33, &v36, "\tReads %llu (%llu KB) Writes %llu (%llu KB)\n", v17[4], v17[5] >> 10, v17[6], v17[7] >> 10) & 0x80000000) == 0)
            {
              result = 0;
              ++v29;
              v17 += 8;
              if (v29 == 4)
              {
                return result;
              }
            }

            return 0xFFFFFFFFLL;
          }
        }
      }
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

BOOL _AvoidSuspendingPid(_BOOL8 result)
{
  v5 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    proc_name(result, buffer, 0x21u);
    result = *buffer == 0x64796669746F6ELL || (*buffer == 0x676F646863746177 ? (v1 = *&buffer[8] == 100) : (v1 = 0), v1) || *buffer == 0x72616F62656B6177 && *&buffer[3] == 0x646472616F6265;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _TimerTier(int a1)
{
  if ((a1 - 16711681) >= 6)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (a1 - 16711681);
  }
}

void sub_1E0E4C3E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0E4CF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SAGetStackshotDataFromTailspinStackshotChunk(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    if ([a1 length] >= 0x10)
    {
      v2 = [v1 bytes];
      v3 = *v2 + 16;
      if (v3 <= [v1 length])
      {
        a1 = [v1 subdataWithRange:{16, *v2}];
      }

      else
      {
        v4 = *__error();
        v5 = _sa_logt();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = *v2;
          v10 = 134218496;
          v11 = v6;
          v12 = 2048;
          v13 = 16;
          v14 = 2048;
          v15 = [v1 length];
          _os_log_impl(&dword_1E0E2F000, v5, OS_LOG_TYPE_DEFAULT, "WARNING: Malformed tailspin stackshot chunk: stackshot data is %llu bytes (+ %lu header), but chunk is only %lu bytes", &v10, 0x20u);
        }

        v7 = __error();
        a1 = 0;
        *v7 = v4;
      }
    }

    else
    {
      a1 = 0;
    }
  }

  v8 = *MEMORY[0x1E69E9840];

  return a1;
}

void ___sa_logt_block_invoke()
{
  v0 = os_log_create("com.apple.sampleanalysis", "logging");
  v1 = qword_1EDD02ED8;
  qword_1EDD02ED8 = v0;
}

CFTypeRef SACFBundleCopyStringForKey(__CFBundle *a1, const __CFString *a2)
{
  result = CFBundleGetValueForInfoDictionaryKey(a1, a2);
  if (result)
  {
    v4 = result;
    v3 = CFGetTypeID(result);
    if (v3 == CFStringGetTypeID())
    {

      return v4;
    }

    else
    {
      return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@", v4];
    }
  }

  return result;
}

void *SANSDictionaryCopyStringForKey(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKey:a2];
  if (!v2)
  {
    return v2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@", v2];

  return v4;
}

uint64_t is_apple_internal_setting()
{
  if (qword_1EDD02EE8 != -1)
  {
    dispatch_once(&qword_1EDD02EE8, &__block_literal_global_12);
  }

  return _MergedGlobals_2;
}

uint64_t __is_apple_internal_setting_block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  _MergedGlobals_2 = result;
  return result;
}

uint64_t _SASetCrashLogMessage(int a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  result = snprintf(_SASetCrashLogMessage_crash_string, 0x400uLL, "%d ", a1);
  if ((result - 1) <= 0x3FE)
  {
    result = vsnprintf(&_SASetCrashLogMessage_crash_string[result], 1024 - result, a2, &a9);
  }

  qword_1ECE87E50 = _SASetCrashLogMessage_crash_string;
  return result;
}

id CopyBootArgs()
{
  v18 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9AC8];
  MEMORY[0x1EEE9AC00]();
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v2 = 0;
  v13 = v1;
  if (sysctlbyname("kern.bootargs", v2, &v13, 0, 0))
  {
    v3 = *__error();
    v4 = _sa_logt();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = *__error();
      v10 = __error();
      v11 = strerror(*v10);
      *buf = 67109378;
      v15 = v9;
      v16 = 2080;
      v17 = v11;
      _os_log_error_impl(&dword_1E0E2F000, v4, OS_LOG_TYPE_ERROR, "Unable to get kern.bootargs: %d %s", buf, 0x12u);
    }

    v5 = __error();
    v6 = 0;
    *v5 = v3;
  }

  else
  {
    v6 = SANSStringForCString(v2);
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id CopyKernelVersion()
{
  v9 = *MEMORY[0x1E69E9840];
  memset(&v8, 0, 512);
  v8.version[0] = 0;
  if (uname(&v8))
  {
    v0 = *__error();
    v1 = _sa_logt();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v2 = *__error();
      v7[0] = 67109120;
      v7[1] = v2;
      _os_log_impl(&dword_1E0E2F000, v1, OS_LOG_TYPE_DEFAULT, "WARNING: unable to get kernel strings: %d", v7, 8u);
    }

    v3 = __error();
    v4 = 0;
    *v3 = v0;
  }

  else if (v8.version[0])
  {
    v4 = SANSStringForCString(v8.version);
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

void GetOSVersions(uint64_t a1)
{
  v2 = _CFCopySupplementalVersionDictionary();
  if (v2)
  {
    v3 = v2;
    v4 = CFDictionaryGetValue(v2, *MEMORY[0x1E695E1F0]);
    v5 = CFDictionaryGetValue(v3, *MEMORY[0x1E695E208]);
    v6 = CFDictionaryGetValue(v3, *MEMORY[0x1E695E200]);
    v7 = CFDictionaryGetValue(v3, *MEMORY[0x1E695E1E8]);
    if (v4)
    {
      v8 = SACachedNSString(v4);

      if (v5)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v8 = 0;
      if (v5)
      {
LABEL_4:
        v13 = SACachedNSString(v5);

        if (v6)
        {
          goto LABEL_5;
        }

        goto LABEL_12;
      }
    }

    v13 = 0;
    if (v6)
    {
LABEL_5:
      v9 = SACachedNSString(v6);

      if (v7)
      {
LABEL_6:
        v10 = SACachedNSString(v7);

LABEL_14:
        (*(a1 + 16))(a1, v13, v9, v10, v8);
        CFRelease(v3);

        return;
      }

LABEL_13:
      v10 = 0;
      goto LABEL_14;
    }

LABEL_12:
    v9 = 0;
    if (v7)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  v11 = *__error();
  v12 = _sa_logt();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_ERROR, "unable to get system versions dictionary", buf, 2u);
  }

  *__error() = v11;
  (*(a1 + 16))(a1, 0, 0, 0, 0);
}

void sub_1E0E55378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0E5551C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0E5931C(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x520], 8);
  _Block_object_dispose(&STACK[0x228], 8);
  _Block_object_dispose(&STACK[0x248], 8);
  _Block_object_dispose(&STACK[0x268], 8);
  _Block_object_dispose(&STACK[0x288], 8);
  _Unwind_Resume(a1);
}

void sub_1E0E5965C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void KCLogIter(unsigned int *a1, unint64_t a2, int a3)
{
  if (qword_1EDD02F68 != -1)
  {
    dispatch_once(&qword_1EDD02F68, &__block_literal_global_2042);
  }

  if (byte_1EDD02EF1 == 1)
  {
    if ((*a1 & 0xFFFFFFF0) == 0x20)
    {
      v6 = 17;
    }

    else
    {
      v6 = *a1;
    }

    if ((v6 - 1) <= 5)
    {
      v7 = (a1 + 4);
      v8 = a1 + 12;
      v9 = a1[1];
      v10 = a1[2] & 0xF;
      v11 = v9 >= v10;
      v12 = v9 - v10;
      if (!v11)
      {
        v12 = 0;
      }

      v13 = v12 - 32;
LABEL_31:
      if (v6 != 17)
      {
        if (v6 != 19)
        {
          if (v6 == 20)
          {
            v17 = dword_1EDD02EF4 - 2;
            if (dword_1EDD02EF4 < 2)
            {
              v18 = *__error();
              v19 = _sa_logt();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_1E0E2F000, v19, OS_LOG_TYPE_ERROR, "Invalid kcdata: end container at indent 0", buf, 2u);
              }

              v20 = __error();
              v17 = 0;
              *v20 = v18;
            }

            dword_1EDD02EF4 = v17;
            v21 = *(a1 + 1);
            v22 = *__error();
            v23 = " -- skipping";
            if (!a3)
            {
              v23 = "";
            }

            fprintf(*MEMORY[0x1E69E9858], "%*s%s: id %llu%s\n", dword_1EDD02EF4, "", v7, v21, v23);
            *__error() = v22;
          }

          else
          {
            v28 = dword_1EDD02EF4;

            KCLogItem(v6, v13, v8, v7, v28, a3);
          }

          return;
        }

        if ((a1 + 4) <= a2)
        {
          v24 = a1[1];
          if (a1 + v24 + 16 <= a2 && v24 >= 4 && *a1 == 19)
          {
            v29 = *(a1 + 1);
            v30 = a1[4];
            v31 = *__error();
            v32 = *MEMORY[0x1E69E9858];
            v33 = dword_1EDD02EF4;
            v34 = DescriptionForKCDataType(v30);
            v35 = " -- skipping";
            if (!a3)
            {
              v35 = "";
            }

            fprintf(v32, "%*s%s: id %llu, type %s%s\n", v33, "", v7, v29, v34, v35);
            *__error() = v31;
            dword_1EDD02EF4 += 2;
            return;
          }
        }

        v25 = *__error();
        fprintf(*MEMORY[0x1E69E9858], "%*s%s: (invalid container)%s\n");
LABEL_49:
        *__error() = v25;
        return;
      }

      if ((a1 + 4) > a2 || (v26 = a1[1], a1 + v26 + 16 > a2) || (v27 = *a1, *a1 != 17) && (v27 & 0xFFFFFFF0) != 0x20)
      {
LABEL_48:
        v25 = *__error();
        fprintf(*MEMORY[0x1E69E9858], "%*s%s: (invalid array)%s\n");
        goto LABEL_49;
      }

      v36 = *(a1 + 1);
      if (!v36)
      {
        if (v26)
        {
          goto LABEL_48;
        }

        v37 = HIDWORD(v36);
        if (v27 != 17)
        {
          goto LABEL_71;
        }

LABEL_90:
        if (v37 <= 2313)
        {
          if (v37 <= 2073)
          {
            if (v37 == 48)
            {
              v39 = 20;
              goto LABEL_107;
            }

            if (v37 == 49)
            {
              v39 = 24;
              goto LABEL_107;
            }

            goto LABEL_71;
          }

          if (v37 != 2074)
          {
            if (v37 == 2311)
            {
              v39 = 4;
              goto LABEL_107;
            }

            goto LABEL_71;
          }
        }

        else if (v37 <= 2315)
        {
          if (v37 != 2314)
          {
            goto LABEL_104;
          }
        }

        else if (v37 != 2316)
        {
          if (v37 != 2317)
          {
            if (v37 == 2369)
            {
              v39 = 48;
              goto LABEL_107;
            }

LABEL_71:
            v39 = 0;
LABEL_107:
            v42 = *__error();
            v43 = *MEMORY[0x1E69E9858];
            v44 = dword_1EDD02EF4;
            v45 = DescriptionForKCDataType(v37);
            v46 = " -- skipping";
            if (!a3)
            {
              v46 = "";
            }

            fprintf(v43, "%*s%s: of type %s, count %u size %u%s\n", v44, "", v7, v45, v36, v39, v46);
            *__error() = v42;
            if (v36)
            {
              v47 = 0;
              v48 = MEMORY[0x1E69E9820];
              v36 = v36;
              do
              {
                v50 = v48;
                v51 = 3221225472;
                v52 = __KCLogIter_block_invoke;
                v53 = &__block_descriptor_41_e13_v20__0I8r_v12l;
                v54 = v37;
                v55 = v39;
                v56 = a3;
                KCLogItem(v37, v39, (v8 + v47), 0, (dword_1EDD02EF4 + 2), a3);
                v47 += v39;
                --v36;
              }

              while (v36);
            }

            return;
          }

LABEL_104:
          v39 = 16;
          goto LABEL_107;
        }

        v39 = 8;
        goto LABEL_107;
      }

      if (v27 != 17)
      {
        v40 = *a1 & 0xF;
        v11 = v26 >= v40;
        v41 = v26 - v40;
        if (!v11)
        {
          goto LABEL_48;
        }

        if (v41 < v36)
        {
          goto LABEL_48;
        }

        v39 = v41 / v36;
        if (v41 % v36)
        {
          goto LABEL_48;
        }

        v37 = HIDWORD(v36);
        goto LABEL_107;
      }

      v37 = HIDWORD(v36);
      if (SHIDWORD(v36) <= 2313)
      {
        if (SHIDWORD(v36) <= 2073)
        {
          if (HIDWORD(v36) == 48)
          {
            v38 = 20;
          }

          else
          {
            if (HIDWORD(v36) != 49)
            {
              goto LABEL_48;
            }

            v38 = 24;
          }

          goto LABEL_88;
        }

        if (HIDWORD(v36) != 2074)
        {
          if (HIDWORD(v36) != 2311)
          {
            goto LABEL_48;
          }

          v38 = 4;
          goto LABEL_88;
        }
      }

      else if (SHIDWORD(v36) <= 2315)
      {
        if (HIDWORD(v36) != 2314)
        {
LABEL_85:
          v38 = 16;
LABEL_88:
          if (v26 / v38 < v36 || v26 % v36 >= 0x10)
          {
            goto LABEL_48;
          }

          goto LABEL_90;
        }
      }

      else if (HIDWORD(v36) != 2316)
      {
        if (HIDWORD(v36) != 2317)
        {
          if (HIDWORD(v36) != 2369)
          {
            goto LABEL_48;
          }

          v38 = 48;
          goto LABEL_88;
        }

        goto LABEL_85;
      }

      v38 = 8;
      goto LABEL_88;
    }

    if (v6 > 2309)
    {
      if (v6 == 2310)
      {
        v15 = a1[1];
        if (v15 == 112)
        {
          if ((a1[2] & 0x8F) == 0)
          {
            v13 = 104;
            goto LABEL_30;
          }

          v15 = 112;
        }

LABEL_27:
        v11 = v15 >= (a1[2] & 0xF);
        v16 = v15 - (a1[2] & 0xF);
        if (v11)
        {
          v13 = v16;
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_30;
      }

      if (v6 != 2312)
      {
LABEL_23:
        v15 = a1[1];
        goto LABEL_27;
      }

      v15 = a1[1];
      if (v15 != 32)
      {
        goto LABEL_27;
      }

      if ((a1[2] & 0x8F) != 0)
      {
        v15 = 32;
        goto LABEL_27;
      }

      v13 = 24;
    }

    else
    {
      if (v6 != 17 && v6 != 19)
      {
        goto LABEL_23;
      }

      v13 = a1[1];
    }

LABEL_30:
    v8 = a1 + 4;
    v7 = DescriptionForKCDataType(v6);
    goto LABEL_31;
  }
}

uint64_t SkipToContainerEnd(int **a1, int a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a1 + 4);
  if (v4 > v3 || (v5 = v2[1], v4 + v5 > v3) || ((v6 = *v2, v5 >= 4) ? (v7 = v6 == 19) : (v7 = 0), !v7))
  {
    v8 = *__error();
    v9 = _sa_logt();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_ERROR, "invalid skipped container", buf, 2u);
    }

    *__error() = v8;
    _SASetCrashLogMessage(6945, "invalid skipped container", v10, v11, v12, v13, v14, v15, v39);
    a1 = _os_crash();
    __break(1u);
  }

  v16 = a2;
  v17 = a1;
  v18 = objc_alloc(MEMORY[0x1E695DF70]);
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(*v17 + 1)];
  v20 = [v18 initWithObjects:{v19, 0}];

  v21 = v17[1];
  v22 = *v17 + (*v17)[1];
  v23 = (v22 + 16);
  *v17 = (v22 + 16);
  v24 = (v22 + 32);
  if (v24 <= v21)
  {
    while (v24 + v23[1] <= v21 && *v23 != -242132755)
    {
      KCLogIter(v23, v21, v16);
      v25 = *v17;
      v26 = **v17;
      if ((v26 & 0xFFFFFFF0) == 0x20)
      {
        v26 = 17;
      }

      if (v26 == 20)
      {
        v28 = *(v25 + 1);
        v29 = [v20 lastObject];
        v30 = [v29 unsignedLongLongValue];

        if (v30 != v28)
        {
          v32 = *__error();
          v33 = _sa_logt();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
          {
            *buf = 134218240;
            v41 = v28;
            v42 = 2048;
            v43 = v30;
            _os_log_fault_impl(&dword_1E0E2F000, v33, OS_LOG_TYPE_FAULT, "Unexpected end container %llu (expected %llu)", buf, 0x16u);
          }

          v34 = 1;
          goto LABEL_25;
        }

        if ([v20 count] == 1)
        {
          v34 = 0;
          goto LABEL_26;
        }

        [v20 removeLastObject];
      }

      else if (v26 == 19)
      {
        v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v25 + 1)];
        [v20 addObject:v27];
      }

      v21 = v17[1];
      v31 = *v17 + (*v17)[1];
      v23 = (v31 + 16);
      *v17 = (v31 + 16);
      v24 = (v31 + 32);
      if (v24 > v21)
      {
        break;
      }
    }
  }

  v32 = *__error();
  v33 = _sa_logt();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
  {
    v37 = [v20 firstObject];
    v38 = [v37 unsignedLongLongValue];
    *buf = 134217984;
    v41 = v38;
    _os_log_fault_impl(&dword_1E0E2F000, v33, OS_LOG_TYPE_FAULT, "Didn't find endof skipped container %llu", buf, 0xCu);
  }

  v34 = 2;
LABEL_25:

  *__error() = v32;
LABEL_26:

  v35 = *MEMORY[0x1E69E9840];
  return v34;
}

void sub_1E0E6AF88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0E725F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getPreferredLanguages()
{
  v0 = CFPreferencesCopyValue(@"AppleLanguages", *MEMORY[0x1E695E890], @"mobile", *MEMORY[0x1E695E898]);
  if (v0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v1 = v0;
      if (![v1 count])
      {
LABEL_7:

        goto LABEL_12;
      }

      v2 = 0;
      v3 = 1;
      while (1)
      {
        v4 = [v1 objectAtIndexedSubscript:v2];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          break;
        }

        v6 = (v2 + 1 >= [v1 count]) | ~v3;
        v2 = 1;
        v3 = 0;
        if (v6)
        {
          goto LABEL_7;
        }
      }

      v7 = *__error();
      v8 = _sa_logt();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *v10 = 0;
        _os_log_fault_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_FAULT, "Found the preferred languages array but contents are not NSString", v10, 2u);
      }

      *__error() = v7;
    }
  }

  v1 = [MEMORY[0x1E695DF58] preferredLanguages];
LABEL_12:

  return v1;
}

uint64_t __SAProcName_block_invoke()
{
  getpid();
  v0 = *MEMORY[0x1E69E9BD0];
  result = sandbox_check();
  if ((result + 1) <= 2)
  {
    _MergedGlobals_3 = (4u >> ((result + 1) & 7)) & 1;
  }

  return result;
}

void sub_1E0E73E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0E7B414(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *context, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a2 == 1)
  {
    v22 = objc_begin_catch(a1);
    if (a17 != 46)
    {
      v23 = v22;
      if (*(a22 + 552) && (v24 = *(a22 + 528)) != 0)
      {
        v25 = *MEMORY[0x1E69E9848];
        [v24 UTF8String];
        [*(a22 + 552) UTF8String];
        if (a17 < 47)
        {
          v26 = "Unable to decode binary format: Binary version %lu is no longer supported. Try %s build %s\n";
        }

        else
        {
          v26 = "Unable to decode binary format: Binary version %lu is newer than decoder version %lu. Try %s build %s or later\n";
        }

        fprintf(v25, v26);
      }

      else
      {
        v27 = *MEMORY[0x1E69E9848];
        if (a17 < 47)
        {
          fprintf(v27, "Unable to decode binary format: Binary format version %lu is no longer supported. Try an older build\n");
        }

        else
        {
          fprintf(v27, "Unable to decode binary format: Binary version %lu is newer than decoder version %lu. Try a newer build\n");
        }
      }

      *a16 = 0;
      *gSASerializationEncodedDataIsEmbedded() = 0;

      objc_end_catch();
      JUMPOUT(0x1E0E7A170);
    }

    objc_exception_rethrow();
  }

  _Unwind_Resume(a1);
}

char *__IgnoreSlidBaseAddress_block_invoke()
{
  result = getenv("SA_WORKAROUND_73965546");
  if (result && (*result != 48 || result[1]))
  {
    byte_1EDD02EF2 = 1;
  }

  return result;
}

void __SAKCDataReadAheadJetsamCoalitionInfo_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3[3]];
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*a3];
  [v5 setObject:v7 forKeyedSubscript:v6];
}

void __SAKCDataReadAheadJetsamCoalitionInfo_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) objectForKeyedSubscript:?];
  if (v4)
  {
    v5 = v4;
    [*(a1 + 40) setObject:v4 forKeyedSubscript:a2];
    v4 = v5;
  }
}

void __ReadAheadTaskLevelInfo_block_invoke(uint64_t a1, unsigned int a2, unsigned __int8 *src)
{
  v3 = *(a1 + 32) + 24 * a2;
  *v3 = *src;
  uuid_copy((v3 + 8), src + 4);
}

uint64_t __ReadAheadTaskLevelInfo_block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 17) & 0x20) != 0)
  {
    **(result + 32) = *a3;
  }

  return result;
}

uint64_t TrialLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!TrialLibraryCore_frameworkLibrary)
  {
    TrialLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = TrialLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __TrialLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  TrialLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getTRIAllocationStatusClass_block_invoke(uint64_t a1)
{
  if (!TrialLibraryCore())
  {
    v3 = abort_report_np();
    free(v3);
  }

  result = objc_getClass("TRIAllocationStatus");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTRIAllocationStatusClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v4 = abort_report_np();
    return DarwinupLibraryCore(v4);
  }

  return result;
}

uint64_t DarwinupLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!DarwinupLibraryCore_frameworkLibrary)
  {
    DarwinupLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = DarwinupLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __DarwinupLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  DarwinupLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void __getDUSessionClass_block_invoke(uint64_t a1)
{
  DarwinupLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("DUSession");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1EDD02F80 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    DarwinupLibrary();
  }
}

void DarwinupLibrary()
{
  if (!DarwinupLibraryCore())
  {
    v0 = abort_report_np();
    free(v0);
  }
}

Class __getDURootClass_block_invoke(uint64_t a1)
{
  DarwinupLibrary();
  result = objc_getClass("DURoot");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1EDD02F88 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __getAutomatedDeviceGroup_block_invoke(v3);
  }

  return result;
}

void __getAutomatedDeviceGroup_block_invoke()
{
  v0 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, &__block_literal_global_2088);
  v1 = qos_class_self();
  v2 = dispatch_get_global_queue(v1, 0);
  dispatch_async(v2, v0);

  v3 = dispatch_time(0, 2000000000);
  if (dispatch_block_wait(v0, v3))
  {
    v4 = *__error();
    v5 = _sa_logt();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1E0E2F000, v5, OS_LOG_TYPE_DEFAULT, "WARNING: Timed out waiting for automated device group", v6, 2u);
    }

    *__error() = v4;
  }
}

void __getAutomatedDeviceGroup_block_invoke_2()
{
  v0 = [MEMORY[0x1E69B7C10] automatedDeviceGroup];
  v1 = v0;
  if (v0)
  {
    obj = v0;
    v2 = [v0 length];
    v1 = obj;
    if (v2)
    {
      objc_storeStrong(&qword_1EDD02F90, obj);
      v1 = obj;
    }
  }
}

uint64_t SAHelperLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!SAHelperLibraryCore_frameworkLibrary)
  {
    SAHelperLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = SAHelperLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SAHelperLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SAHelperLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getSAModelGatherInfoSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SAHelperLibraryCore();
  if (!v2)
  {
    v4 = abort_report_np();
    free(v4);
  }

  result = dlsym(v2, "SAModelGatherInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EDD02FA0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

const char *DescriptionForKCDataType(uint64_t a1)
{
  if (a1 <= 56)
  {
    if (a1 <= 47)
    {
      if (a1 <= 16)
      {
        if (a1 == -568875622)
        {
          return "Begin delta stackshot";
        }

        if (a1 == -242132755)
        {
          return "buffer end";
        }
      }

      else
      {
        switch(a1)
        {
          case 0x11:
            return "Array";
          case 0x13:
            return "Container begin";
          case 0x14:
            return "Container end";
        }
      }
    }

    else
    {
      if (a1 <= 50)
      {
        if (a1 == 48)
        {
          return "load info 32-bit";
        }

        if (a1 == 49)
        {
          return "load info 64-bit";
        }

        return "mach timebase";
      }

      switch(a1)
      {
        case '3':
          return "machabstime";
        case '4':
          return "time val";
        case '5':
          return "usecs since epoch";
      }
    }

LABEL_24:
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"UNKNOWN TYPE (0x%x)", a1];
    v3 = [v2 UTF8String];
    if (v3)
    {
      v1 = v3;
    }

    else
    {
      v1 = "UNKNOWN TYPE";
    }
  }

  else
  {
    switch(a1)
    {
      case 2305:
        return "iostats";
      case 2306:
        return "memstats";
      case 2307:
        return "task container";
      case 2308:
        return "thread container";
      case 2309:
        return "task snapshot";
      case 2310:
        return "thread snapshot";
      case 2311:
        return "donating pids";
      case 2312:
        return "shared cache load info";
      case 2313:
        return "thread name";
      case 2314:
        return "stack kernel 32-bit";
      case 2315:
        return "stack kernel 64-bit";
      case 2316:
        return "stack user 32-bit";
      case 2317:
        return "stack user 64-bit";
      case 2318:
        return "boot args";
      case 2319:
        return "os version";
      case 2320:
        return "kernel page size";
      case 2321:
        return "jetsam level";
      case 2322:
        return "delta timestamp used";
      case 2323:
        return "stack kernel lr 32-bit";
      case 2324:
        return "stack kernel lr 64-bit";
      case 2325:
        return "stack user lr 32-bit";
      case 2326:
        return "stack user lr 64-bit";
      case 2327:
        return "nonrunnable thread";
      case 2328:
        return "nonrunnable task";
      case 2329:
        return "cpu times";
      case 2330:
        return "stackshot duration";
      case 2331:
      case 2334:
      case 2335:
      case 2340:
      case 2341:
      case 2342:
      case 2343:
      case 2359:
      case 2360:
      case 2361:
      case 2362:
      case 2363:
      case 2364:
      case 2365:
      case 2366:
      case 2367:
      case 2389:
      case 2390:
      case 2391:
        goto LABEL_24;
      case 2332:
        return "kernelcache_loadinfo";
      case 2333:
        return "thread waitinfo";
      case 2336:
        return "jetsam coalition snapshot";
      case 2337:
        return "jetsam coalition";
      case 2338:
        return "thread policy version";
      case 2339:
        return "instruction cycles";
      case 2344:
        return "dispatch queue label";
      case 2345:
        return "thread turnstileinfo";
      case 2346:
        return "architecture";
      case 2347:
        return "latency info";
      case 2348:
        return "latency info task";
      case 2349:
        return "latency info thread";
      case 2350:
        return "text exec load info";
      case 2351:
        return "aot shared cache load info";
      case 2352:
        return "task transitioning snapshot";
      case 2353:
        return "task transitioning container";
      case 2354:
        return "swift async start index";
      case 2355:
        return "swift async stack";
      case 2356:
        return "port label container";
      case 2357:
        return "port label";
      case 2358:
        return "port label name";
      case 2368:
        return "task delta snapshot";
      case 2369:
        return "thread delta snapshot";
      case 2370:
        return "shared cache container";
      case 2371:
        return "shared cache info";
      case 2372:
        return "aot shared cache info";
      case 2373:
        return "shared cache id";
      case 2374:
        return "codesigning info";
      case 2375:
        return "os build version";
      case 2376:
        return "exclaves thread info";
      case 2377:
        return "exclave container";
      case 2378:
        return "exclaves scresult container";
      case 2379:
        return "exclaves scresult info";
      case 2380:
        return "exclaves ipc stack entry container";
      case 2381:
        return "exclaves ipc stack entry info";
      case 2382:
        return "exclaves ipc stack entry info ecstack";
      case 2383:
        return "exclave address space container";
      case 2384:
        return "exclave address space info";
      case 2385:
        return "exclave address space name";
      case 2386:
        return "exclaves text layout container";
      case 2387:
        return "exclaves text layout info";
      case 2388:
        return "exclaves text layout segments";
      case 2392:
        return "memory status";
      default:
        if (a1 == 57)
        {
          v1 = "aot info";
        }

        else
        {
          if (a1 != 1503811591)
          {
            goto LABEL_24;
          }

          v1 = "Begin stackshot";
        }

        break;
    }
  }

  return v1;
}

int *KCLogItem(uint64_t a1, unsigned int a2, unsigned int *a3, const char *a4, uint64_t a5, int a6)
{
  v8 = a4;
  v11 = a1;
  v178 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    v8 = DescriptionForKCDataType(a1);
  }

  if (v11 > 52)
  {
    switch(v11)
    {
      case 2309:
        v13 = *__error();
        v131 = a3[21];
        fprintf(*MEMORY[0x1E69E9858], "%*s%s: %s [%d]%s\n");
        goto LABEL_98;
      case 2310:
        v16 = *__error();
        v147 = *(a3 + 5);
        v132 = *a3;
        fprintf(*MEMORY[0x1E69E9858], "%*s%s: thread_v%d 0x%llx dispatch queue %lld%s\n", a5);
        goto LABEL_105;
      case 2311:
        goto LABEL_38;
      case 2312:
        if (a2 < 0x28)
        {
          goto LABEL_89;
        }

        if (qword_1EDD02F70 != -1)
        {
          dispatch_once(&qword_1EDD02F70, &__block_literal_global_2047);
        }

        if (byte_1EDD02EF2)
        {
LABEL_89:
          v23 = *__error();
          v89 = *MEMORY[0x1E69E9858];
          add_explicit = atomic_fetch_add_explicit(&uuid_string_index, 1u, memory_order_relaxed);
          v91 = add_explicit & 3;
          v92 = -add_explicit;
          v28 = v92 < 0;
          v93 = v92 & 3;
          if (v28)
          {
            v94 = v91;
          }

          else
          {
            v94 = -v93;
          }

          uuid_unparse(a3 + 8, &uuid_string_string[37 * v94]);
          v95 = *a3;
          fprintf(v89, "%*s%s: %s slide 0x%llx%s\n");
        }

        else
        {
          v23 = *__error();
          v68 = *MEMORY[0x1E69E9858];
          v105 = atomic_fetch_add_explicit(&uuid_string_index, 1u, memory_order_relaxed);
          v106 = v105 & 3;
          v107 = -v105;
          v28 = v107 < 0;
          v108 = v107 & 3;
          if (v28)
          {
            v109 = v106;
          }

          else
          {
            v109 = -v108;
          }

          v110 = &uuid_string_string[37 * v109];
          uuid_unparse(a3 + 8, v110);
          v111 = " -- skipping";
          if (!a6)
          {
            v111 = "";
          }

          v143 = *a3;
          v155 = v111;
          v115 = v110;
          v127 = *(a3 + 4);
          v112 = v8;
          v77 = "%*s%s: %s slid base address 0x%llx, slide 0x%llx%s\n";
LABEL_70:
          fprintf(v68, v77, a5, "", v112, v115, v127, v143, v155, v163, v166);
        }

        goto LABEL_93;
      case 2313:
      case 2318:
      case 2319:
      case 2344:
      case 2358:
      case 2375:
      case 2385:
        goto LABEL_5;
      case 2314:
      case 2316:
        v13 = *__error();
        v50 = *MEMORY[0x1E69E9858];
        v113 = *a3;
        goto LABEL_49;
      case 2315:
      case 2317:
      case 2382:
        v13 = *__error();
        v19 = *MEMORY[0x1E69E9858];
        v20 = *a3;
        goto LABEL_23;
      case 2320:
      case 2321:
      case 2338:
      case 2354:
      case 2373:
        goto LABEL_26;
      case 2322:
      case 2337:
        goto LABEL_19;
      case 2323:
      case 2325:
        v51 = *a3;
        v13 = *__error();
        v50 = *MEMORY[0x1E69E9858];
LABEL_49:
        fprintf(v50, "%*s%s: 0x%x%s\n");
        goto LABEL_98;
      case 2324:
      case 2326:
      case 2327:
        v21 = *a3;
        v13 = *__error();
        v19 = *MEMORY[0x1E69E9858];
LABEL_23:
        fprintf(v19, "%*s%s: 0x%llx%s\n");
        goto LABEL_98;
      case 2328:
      case 2329:
      case 2330:
      case 2331:
      case 2334:
      case 2335:
      case 2340:
      case 2341:
      case 2342:
      case 2343:
      case 2347:
      case 2348:
      case 2349:
      case 2353:
      case 2355:
      case 2356:
      case 2359:
      case 2360:
      case 2361:
      case 2362:
      case 2363:
      case 2364:
      case 2365:
      case 2366:
      case 2367:
      case 2370:
      case 2377:
      case 2378:
      case 2380:
      case 2383:
      case 2386:
      case 2389:
      case 2390:
      case 2391:
        goto LABEL_50;
      case 2332:
        v23 = *__error();
        v80 = *MEMORY[0x1E69E9858];
        v82 = *a3;
        v81 = (a3 + 2);
        v83 = atomic_fetch_add_explicit(&uuid_string_index, 1u, memory_order_relaxed);
        v84 = v83 & 3;
        v85 = -v83;
        v28 = v85 < 0;
        v86 = v85 & 3;
        if (v28)
        {
          v87 = v84;
        }

        else
        {
          v87 = -v86;
        }

        uuid_unparse(v81, &uuid_string_string[37 * v87]);
        fprintf(v80, "%*s%s: 0x%llx %s%s\n");
        goto LABEL_93;
      case 2333:
        v16 = *__error();
        v102 = *MEMORY[0x1E69E9858];
        if (a2 < 0x1F)
        {
          v141 = *a3;
          fprintf(v102, "%*s%s: type:0x%x owner:0x%llx waiter:0x%llx context:0x%llx%s\n", a5, "");
        }

        else
        {
          v168 = *(a3 + 27);
          v161 = *(a3 + 2);
          v165 = *(a3 + 25);
          v139 = *a3;
          v154 = *(a3 + 1);
          v124 = *(a3 + 24);
          fprintf(v102, "%*s%s: type:0x%x owner:0x%llx waiter:0x%llx context:0x%llx portlabel_id:%d flags:0x%x%s\n", a5, "", v8);
        }

        goto LABEL_105;
      case 2336:
        v13 = *__error();
        v159 = *(a3 + 3);
        v150 = *(a3 + 2);
        v121 = *a3;
        fprintf(*MEMORY[0x1E69E9858], "%*s%s: id %llu, flags 0x%llx, thread_group %llu, leader uniquepid %llu%s\n", a5, "");
        goto LABEL_98;
      case 2339:
        v13 = *__error();
        v103 = *(a3 + 1);
        v140 = *a3;
        fprintf(*MEMORY[0x1E69E9858], "%*s%s: %llu instructions, %llu cycles%s\n");
        goto LABEL_98;
      case 2345:
        v16 = *__error();
        v78 = *MEMORY[0x1E69E9858];
        if (a2 < 0x1C)
        {
          v162 = *(a3 + 16);
          fprintf(v78, "%*s%s: flags:0x%llx waiter:0x%llx context:0x%llx priority:%d hops:%d%s\n", a5, "");
        }

        else
        {
          v167 = *(a3 + 13);
          v156 = *(a3 + 16);
          v164 = *(a3 + 17);
          v128 = *a3;
          v144 = *(a3 + 1);
          v116 = *(a3 + 18);
          fprintf(v78, "%*s%s: flags:0x%llx waiter:0x%llx context:0x%llx priority:%d hops:%d portlabel_id:%d%s\n", a5, "", v8);
        }

        goto LABEL_105;
      case 2346:
        v16 = *__error();
        v98 = *MEMORY[0x1E69E9858];
        v99 = *a3;
        v100 = a3[1] & 0xFFFFFF;
        CSArchitectureGetFamilyName();
        v153 = a3[1];
        v136 = *a3;
        fprintf(v98, "%*s%s: %s (0x%x, 0x%x)%s\n", a5);
        goto LABEL_105;
      case 2350:
        goto LABEL_28;
      case 2351:
      case 2372:
        v174 = *__error();
        v171 = *(a3 + 3);
        v173 = *MEMORY[0x1E69E9858];
        v38 = atomic_fetch_add_explicit(&uuid_string_index, 1u, memory_order_relaxed);
        v39 = v38 & 3;
        v40 = -v38;
        v28 = v40 < 0;
        v41 = v40 & 3;
        if (v28)
        {
          v42 = v39;
        }

        else
        {
          v42 = -v41;
        }

        uuid_unparse(a3 + 32, &uuid_string_string[37 * v42]);
        v43 = *a3;
        v44 = atomic_fetch_add_explicit(&uuid_string_index, 1u, memory_order_relaxed);
        v45 = v44 & 3;
        v46 = -v44;
        v28 = v46 < 0;
        v47 = v46 & 3;
        if (v28)
        {
          v48 = v45;
        }

        else
        {
          v48 = -v47;
        }

        uuid_unparse(a3 + 8, &uuid_string_string[37 * v48]);
        fprintf(v173, "%*s%s: 0x%llx %s -> 0x%llx %s%s\n", a5, "");
        goto LABEL_46;
      case 2352:
        v13 = *__error();
        v142 = *(a3 + 2);
        v126 = a3[6];
        fprintf(*MEMORY[0x1E69E9858], "%*s%s: %s [%d] (transitioning 0x%llx)%s\n", a5);
        goto LABEL_98;
      case 2357:
        v13 = *__error();
        v145 = *(a3 + 4);
        v117 = *a3;
        v129 = *(a3 + 1);
        fprintf(*MEMORY[0x1E69E9858], "%*s%s: id:%d flags:0x%x domain:%d%s\n", a5);
        goto LABEL_98;
      case 2368:
        v13 = *__error();
        v88 = *a3;
        fprintf(*MEMORY[0x1E69E9858], "%*s%s: [%llu]%s\n");
        goto LABEL_98;
      case 2369:
        v16 = *__error();
        v137 = *a3;
        fprintf(*MEMORY[0x1E69E9858], "%*s%s: thread_delta_v%d 0x%llx%s\n");
        goto LABEL_105;
      case 2371:
        v23 = *__error();
        v68 = *MEMORY[0x1E69E9858];
        v69 = a3[10];
        v70 = atomic_fetch_add_explicit(&uuid_string_index, 1u, memory_order_relaxed);
        v71 = v70 & 3;
        v72 = -v70;
        v28 = v72 < 0;
        v73 = v72 & 3;
        if (v28)
        {
          v74 = v71;
        }

        else
        {
          v74 = -v73;
        }

        v75 = &uuid_string_string[37 * v74];
        uuid_unparse(a3 + 8, v75);
        v76 = " -- skipping";
        if (!a6)
        {
          v76 = "";
        }

        v163 = a3[11];
        v166 = v76;
        v143 = *(a3 + 4);
        v155 = *a3;
        v115 = v69;
        v127 = v75;
        v112 = v8;
        v77 = "%*s%s: id %d: %s slid base address 0x%llx, slide 0x%llx, flags 0x%x%s\n";
        goto LABEL_70;
      case 2374:
        v13 = *__error();
        v101 = *a3;
        v138 = a3[2];
        fprintf(*MEMORY[0x1E69E9858], "%*s%s: flags 0x%llx, trust level %u%s\n");
        goto LABEL_98;
      case 2376:
        v13 = *__error();
        v149 = a3[3];
        v120 = *a3;
        v134 = a3[2];
        fprintf(*MEMORY[0x1E69E9858], "%*s%s: scid %llu, thread offset %u, flags 0x%x%s\n", a5);
        goto LABEL_98;
      case 2379:
        v13 = *__error();
        v79 = *a3;
        v130 = *(a3 + 1);
        fprintf(*MEMORY[0x1E69E9858], "%*s%s: id %llu, flags 0x%llx%s\n");
        goto LABEL_98;
      case 2381:
        v13 = *__error();
        v157 = *(a3 + 3);
        v146 = *(a3 + 2);
        v118 = *a3;
        fprintf(*MEMORY[0x1E69E9858], "%*s%s: asid 0x%llx, tnid %llu, invocationid %llu, flags 0x%llx%s\n", a5, "");
        goto LABEL_98;
      case 2384:
        v13 = *__error();
        v160 = *(a3 + 3);
        v152 = *(a3 + 2);
        v123 = *a3;
        fprintf(*MEMORY[0x1E69E9858], "%*s%s: id 0x%llx, flags 0x%llx, layoutid %llu, slide 0x%llx, %s\n", a5, "");
        goto LABEL_98;
      case 2387:
        v16 = *__error();
        v96 = *MEMORY[0x1E69E9858];
        if (a2 < 0x14)
        {
          fprintf(v96, "%*s%s: layoutid %llu, flags 0x%llx%s\n");
        }

        else
        {
          v151 = a3[4];
          v122 = *a3;
          v135 = *(a3 + 1);
          fprintf(v96, "%*s%s: layoutid %llu, flags 0x%llx, sharedcache_index %u%s\n", a5);
        }

        goto LABEL_105;
      case 2388:
        v23 = *__error();
        v24 = *MEMORY[0x1E69E9858];
        v62 = *(a3 + 2);
        goto LABEL_59;
      case 2392:
        v13 = *__error();
        v158 = a3[3];
        v133 = a3[1];
        v148 = a3[2];
        v119 = *a3;
        fprintf(*MEMORY[0x1E69E9858], "%*s%s: memlimit:%u effectivepri:%u requestedpri:%u assertionpri:%u%s\n", a5, "");
        goto LABEL_98;
      default:
        if (v11 == 53)
        {
          v104 = *a3;
          memset(&v176, 0, sizeof(v176));
          v175 = v104 / 0xF4240;
          localtime_r(&v175, &v176);
          if (!strftime(v177, 0x20uLL, "%Y-%m-%d %T", &v176))
          {
            v177[0] = 0;
          }

          v23 = *__error();
          fprintf(*MEMORY[0x1E69E9858], "%*s%s: %s.%03llu%s\n");
          goto LABEL_93;
        }

        if (v11 != 57)
        {
          goto LABEL_50;
        }

        v174 = *__error();
        v169 = *a3;
        v170 = *(a3 + 2) + *(a3 + 1);
        v172 = *MEMORY[0x1E69E9858];
        v26 = atomic_fetch_add_explicit(&uuid_string_index, 1u, memory_order_relaxed);
        v27 = v26 & 3;
        v29 = -v26;
        v28 = v29 < 0;
        v30 = v29 & 3;
        if (v28)
        {
          v31 = v27;
        }

        else
        {
          v31 = -v30;
        }

        uuid_unparse(a3 + 24, &uuid_string_string[37 * v31]);
        v32 = atomic_fetch_add_explicit(&uuid_string_index, 1u, memory_order_relaxed);
        v33 = v32 & 3;
        v34 = -v32;
        v28 = v34 < 0;
        v35 = v34 & 3;
        if (v28)
        {
          v36 = v33;
        }

        else
        {
          v36 = -v35;
        }

        uuid_unparse(a3 + 40, &uuid_string_string[37 * v36]);
        fprintf(v172, "%*s%s: %#18llx - %#18llx -> %#18llx %s-%s%s\n", a5, "", v8);
LABEL_46:
        result = __error();
        *result = v174;
        break;
    }

    goto LABEL_99;
  }

  if (v11 <= 47)
  {
    if (v11 <= 2)
    {
      if (v11 == 1)
      {
LABEL_5:
        v12 = *(a3 + a2 - 1);
        v13 = *__error();
        v14 = *MEMORY[0x1E69E9858];
        if (v12)
        {
          fprintf(v14, "%*s%s: (invalid string)%s\n");
        }

        else
        {
          fprintf(v14, "%*s%s: %s%s\n");
        }

        goto LABEL_98;
      }

      if (v11 == 2)
      {
LABEL_26:
        v22 = *a3;
        v13 = *__error();
        fprintf(*MEMORY[0x1E69E9858], "%*s%s: %u%s\n");
        goto LABEL_98;
      }

      goto LABEL_50;
    }

    if (v11 != 3)
    {
      if (v11 == 4)
      {
LABEL_38:
        v37 = *a3;
        v13 = *__error();
        fprintf(*MEMORY[0x1E69E9858], "%*s%s: %d%s\n");
        goto LABEL_98;
      }

      if (v11 == 5)
      {
        v15 = *a3;
        v13 = *__error();
        fprintf(*MEMORY[0x1E69E9858], "%*s%s: %lld%s\n");
LABEL_98:
        result = __error();
        *result = v13;
        goto LABEL_99;
      }

LABEL_50:
      v52 = *__error();
      v53 = " -- skipping";
      if (!a6)
      {
        v53 = "";
      }

      fprintf(*MEMORY[0x1E69E9858], "%*s%s: %s\n", a5, "", v8, v53);
      result = __error();
      *result = v52;
      goto LABEL_99;
    }

LABEL_19:
    v18 = *a3;
    v13 = *__error();
    fprintf(*MEMORY[0x1E69E9858], "%*s%s: %llu%s\n");
    goto LABEL_98;
  }

  if (v11 <= 49)
  {
    if (v11 == 48)
    {
      v23 = *__error();
      v54 = *MEMORY[0x1E69E9858];
      v56 = *a3;
      v55 = (a3 + 1);
      v57 = atomic_fetch_add_explicit(&uuid_string_index, 1u, memory_order_relaxed);
      v58 = v57 & 3;
      v59 = -v57;
      v28 = v59 < 0;
      v60 = v59 & 3;
      if (v28)
      {
        v61 = v58;
      }

      else
      {
        v61 = -v60;
      }

      uuid_unparse(v55, &uuid_string_string[37 * v61]);
      fprintf(v54, "%*s%s: %#18x %s%s\n");
    }

    else
    {
LABEL_28:
      v23 = *__error();
      v24 = *MEMORY[0x1E69E9858];
      v25 = *a3;
      a3 += 2;
LABEL_59:
      v63 = atomic_fetch_add_explicit(&uuid_string_index, 1u, memory_order_relaxed);
      v64 = v63 & 3;
      v65 = -v63;
      v28 = v65 < 0;
      v66 = v65 & 3;
      if (v28)
      {
        v67 = v64;
      }

      else
      {
        v67 = -v66;
      }

      uuid_unparse(a3, &uuid_string_string[37 * v67]);
      fprintf(v24, "%*s%s: %#18llx %s%s\n");
    }

LABEL_93:
    result = __error();
    *result = v23;
    goto LABEL_99;
  }

  if (v11 == 50)
  {
    v13 = *__error();
    v125 = a3[1];
    v114 = *a3;
    fprintf(*MEMORY[0x1E69E9858], "%*s%s: %d/%d%s\n");
    goto LABEL_98;
  }

  if (v11 == 51)
  {
    goto LABEL_19;
  }

  memset(&v176, 0, sizeof(v176));
  v175 = *a3;
  localtime_r(&v175, &v176);
  if (!strftime(v177, 0x20uLL, "%Y-%m-%d %T", &v176))
  {
    v177[0] = 0;
  }

  v16 = *__error();
  v17 = *(a3 + 1) / 1000;
  fprintf(*MEMORY[0x1E69E9858], "%*s%s: %s.%03llu%s\n");
LABEL_105:
  result = __error();
  *result = v16;
LABEL_99:
  v97 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *StringForKPDecodeContentBits(uint64_t *result)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = *result;
  if (!*result)
  {
    strcpy(&qword_1EDD02FD0, "empty");
    goto LABEL_240;
  }

  v2 = result;
  if (v1)
  {
    strcpy(&qword_1EDD02FD0, "timestamp");
    v1 = *result;
    if ((*result & 2) == 0)
    {
      v3 = &word_1EDD02FD8 + 1;
      if ((v1 & 4) == 0)
      {
        if ((v1 & 8) == 0)
        {
          if ((v1 & 0x10) == 0)
          {
            if ((v1 & 0x20) == 0)
            {
              if ((v1 & 0x40) == 0)
              {
                if ((v1 & 0x80) == 0)
                {
                  if ((v1 & 0x200000000) == 0)
                  {
                    if ((v1 & 0x100) == 0)
                    {
                      if ((v1 & 0x200) == 0)
                      {
                        if ((v1 & 0x400) == 0)
                        {
                          if ((v1 & 0x800) == 0)
                          {
                            if ((v1 & 0x1000) == 0)
                            {
                              if ((v1 & 0x2000) == 0)
                              {
                                if ((v1 & 0x4000) == 0)
                                {
                                  if ((v1 & 0x8000) == 0)
                                  {
                                    if ((v1 & 0x10000) == 0)
                                    {
                                      if ((v1 & 0x20000) == 0)
                                      {
                                        if ((v1 & 0x40000) == 0)
                                        {
                                          if ((v1 & 0x80000) == 0)
                                          {
                                            if ((v1 & 0x100000) == 0)
                                            {
                                              if ((v1 & 0x200000) == 0)
                                              {
                                                if ((v1 & 0x400000) == 0)
                                                {
                                                  if ((v1 & 0x1000000) == 0)
                                                  {
                                                    if ((v1 & 0x2000000) == 0)
                                                    {
                                                      if ((v1 & 0x4000000) == 0)
                                                      {
                                                        if ((v1 & 0x8000000) == 0)
                                                        {
                                                          if ((v1 & 0x10000000) == 0)
                                                          {
                                                            if ((v1 & 0x20000000) == 0)
                                                            {
                                                              if ((v1 & 0x40000000) == 0)
                                                              {
                                                                if ((v1 & 0x80000000) == 0)
                                                                {
                                                                  if ((v1 & 0x100000000) == 0)
                                                                  {
                                                                    if ((v1 & 0x8000000000000000) == 0)
                                                                    {
                                                                      goto LABEL_234;
                                                                    }

                                                                    goto LABEL_231;
                                                                  }

                                                                  goto LABEL_227;
                                                                }

                                                                goto LABEL_223;
                                                              }

                                                              goto LABEL_219;
                                                            }

                                                            goto LABEL_215;
                                                          }

                                                          goto LABEL_211;
                                                        }

                                                        goto LABEL_207;
                                                      }

                                                      goto LABEL_203;
                                                    }

                                                    goto LABEL_199;
                                                  }

                                                  goto LABEL_195;
                                                }

                                                goto LABEL_191;
                                              }

                                              goto LABEL_187;
                                            }

                                            goto LABEL_183;
                                          }

                                          goto LABEL_179;
                                        }

                                        goto LABEL_175;
                                      }

                                      goto LABEL_171;
                                    }

                                    goto LABEL_167;
                                  }

                                  goto LABEL_163;
                                }

                                goto LABEL_159;
                              }

                              goto LABEL_155;
                            }

                            goto LABEL_151;
                          }

                          goto LABEL_147;
                        }

                        goto LABEL_143;
                      }

                      goto LABEL_139;
                    }

                    goto LABEL_135;
                  }

                  goto LABEL_131;
                }

                goto LABEL_127;
              }

              goto LABEL_123;
            }

            goto LABEL_119;
          }

          goto LABEL_115;
        }

        goto LABEL_111;
      }

      goto LABEL_107;
    }

    v3 = &word_1EDD02FD8 + snprintf(&word_1EDD02FD8 + 1, _MergedGlobals_4 - (&word_1EDD02FD8 + 1) + 552, ", ") + 1;
LABEL_73:
    result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "cpuno");
    v3 += result;
    v1 = *v2;
    if ((*v2 & 4) == 0)
    {
      if ((v1 & 8) != 0)
      {
        goto LABEL_110;
      }

      goto LABEL_75;
    }

    if (v3 == &qword_1EDD02FD0)
    {
      v3 = &qword_1EDD02FD0;
LABEL_109:
      result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "tid");
      v3 += result;
      v1 = *v2;
      if ((*v2 & 8) != 0)
      {
LABEL_110:
        if (v3 == &qword_1EDD02FD0)
        {
          v3 = &qword_1EDD02FD0;
LABEL_113:
          result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "threadname");
          v3 += result;
          v1 = *v2;
          if ((*v2 & 0x10) != 0)
          {
LABEL_114:
            if (v3 == &qword_1EDD02FD0)
            {
              v3 = &qword_1EDD02FD0;
LABEL_117:
              result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "kevent");
              v3 += result;
              v1 = *v2;
              if ((*v2 & 0x20) != 0)
              {
LABEL_118:
                if (v3 == &qword_1EDD02FD0)
                {
                  v3 = &qword_1EDD02FD0;
LABEL_121:
                  result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "threadinfo");
                  v3 += result;
                  v1 = *v2;
                  if ((*v2 & 0x40) != 0)
                  {
LABEL_122:
                    if (v3 == &qword_1EDD02FD0)
                    {
                      v3 = &qword_1EDD02FD0;
LABEL_125:
                      result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "kstack");
                      v3 += result;
                      v1 = *v2;
                      if ((*v2 & 0x80) != 0)
                      {
LABEL_126:
                        if (v3 == &qword_1EDD02FD0)
                        {
                          v3 = &qword_1EDD02FD0;
LABEL_129:
                          result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "ustack");
                          v3 += result;
                          v1 = *v2;
                          if ((*v2 & 0x200000000) != 0)
                          {
LABEL_130:
                            if (v3 == &qword_1EDD02FD0)
                            {
                              v3 = &qword_1EDD02FD0;
LABEL_133:
                              result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "exstack");
                              v3 += result;
                              v1 = *v2;
                              if ((*v2 & 0x100) != 0)
                              {
LABEL_134:
                                if (v3 == &qword_1EDD02FD0)
                                {
                                  v3 = &qword_1EDD02FD0;
LABEL_137:
                                  result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "trigger");
                                  v3 += result;
                                  v1 = *v2;
                                  if ((*v2 & 0x200) != 0)
                                  {
LABEL_138:
                                    if (v3 == &qword_1EDD02FD0)
                                    {
                                      v3 = &qword_1EDD02FD0;
LABEL_141:
                                      result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "pmc_thread");
                                      v3 += result;
                                      v1 = *v2;
                                      if ((*v2 & 0x400) != 0)
                                      {
LABEL_142:
                                        if (v3 == &qword_1EDD02FD0)
                                        {
                                          v3 = &qword_1EDD02FD0;
LABEL_145:
                                          result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "pmc_cpu");
                                          v3 += result;
                                          v1 = *v2;
                                          if ((*v2 & 0x800) != 0)
                                          {
LABEL_146:
                                            if (v3 == &qword_1EDD02FD0)
                                            {
                                              v3 = &qword_1EDD02FD0;
LABEL_149:
                                              result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "pmc_config");
                                              v3 += result;
                                              v1 = *v2;
                                              if ((*v2 & 0x1000) != 0)
                                              {
LABEL_150:
                                                if (v3 == &qword_1EDD02FD0)
                                                {
                                                  v3 = &qword_1EDD02FD0;
LABEL_153:
                                                  result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "meminfo");
                                                  v3 += result;
                                                  v1 = *v2;
                                                  if ((*v2 & 0x2000) != 0)
                                                  {
LABEL_154:
                                                    if (v3 == &qword_1EDD02FD0)
                                                    {
                                                      v3 = &qword_1EDD02FD0;
LABEL_157:
                                                      result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "sample");
                                                      v3 += result;
                                                      v1 = *v2;
                                                      if ((*v2 & 0x4000) != 0)
                                                      {
LABEL_158:
                                                        if (v3 == &qword_1EDD02FD0)
                                                        {
                                                          v3 = &qword_1EDD02FD0;
LABEL_161:
                                                          result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "cswitch");
                                                          v3 += result;
                                                          v1 = *v2;
                                                          if ((*v2 & 0x8000) != 0)
                                                          {
LABEL_162:
                                                            if (v3 == &qword_1EDD02FD0)
                                                            {
                                                              v3 = &qword_1EDD02FD0;
LABEL_165:
                                                              result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "config_ws");
                                                              v3 += result;
                                                              v1 = *v2;
                                                              if ((*v2 & 0x10000) != 0)
                                                              {
LABEL_166:
                                                                if (v3 == &qword_1EDD02FD0)
                                                                {
                                                                  v3 = &qword_1EDD02FD0;
LABEL_169:
                                                                  result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "lost_evts");
                                                                  v3 += result;
                                                                  v1 = *v2;
                                                                  if ((*v2 & 0x20000) != 0)
                                                                  {
LABEL_170:
                                                                    if (v3 == &qword_1EDD02FD0)
                                                                    {
                                                                      v3 = &qword_1EDD02FD0;
LABEL_173:
                                                                      result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "straggler");
                                                                      v3 += result;
                                                                      v1 = *v2;
                                                                      if ((*v2 & 0x40000) != 0)
                                                                      {
LABEL_174:
                                                                        if (v3 == &qword_1EDD02FD0)
                                                                        {
                                                                          v3 = &qword_1EDD02FD0;
LABEL_177:
                                                                          result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "signpost");
                                                                          v3 += result;
                                                                          v1 = *v2;
                                                                          if ((*v2 & 0x80000) != 0)
                                                                          {
LABEL_178:
                                                                            if (v3 == &qword_1EDD02FD0)
                                                                            {
                                                                              v3 = &qword_1EDD02FD0;
LABEL_181:
                                                                              result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "id_string");
                                                                              v3 += result;
                                                                              v1 = *v2;
                                                                              if ((*v2 & 0x100000) != 0)
                                                                              {
LABEL_182:
                                                                                if (v3 == &qword_1EDD02FD0)
                                                                                {
                                                                                  v3 = &qword_1EDD02FD0;
LABEL_185:
                                                                                  result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "tinfo_sched");
                                                                                  v3 += result;
                                                                                  v1 = *v2;
                                                                                  if ((*v2 & 0x200000) != 0)
                                                                                  {
LABEL_186:
                                                                                    if (v3 == &qword_1EDD02FD0)
                                                                                    {
                                                                                      v3 = &qword_1EDD02FD0;
LABEL_189:
                                                                                      result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "task_snapshot");
                                                                                      v3 += result;
                                                                                      v1 = *v2;
                                                                                      if ((*v2 & 0x400000) != 0)
                                                                                      {
LABEL_190:
                                                                                        if (v3 == &qword_1EDD02FD0)
                                                                                        {
                                                                                          v3 = &qword_1EDD02FD0;
LABEL_193:
                                                                                          result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "thread_snapshot");
                                                                                          v3 += result;
                                                                                          v1 = *v2;
                                                                                          if ((*v2 & 0x1000000) != 0)
                                                                                          {
LABEL_194:
                                                                                            if (v3 == &qword_1EDD02FD0)
                                                                                            {
                                                                                              v3 = &qword_1EDD02FD0;
LABEL_197:
                                                                                              result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "timer_fire");
                                                                                              v3 += result;
                                                                                              v1 = *v2;
                                                                                              if ((*v2 & 0x2000000) != 0)
                                                                                              {
LABEL_198:
                                                                                                if (v3 == &qword_1EDD02FD0)
                                                                                                {
                                                                                                  v3 = &qword_1EDD02FD0;
LABEL_201:
                                                                                                  result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "system_memory");
                                                                                                  v3 += result;
                                                                                                  v1 = *v2;
                                                                                                  if ((*v2 & 0x4000000) != 0)
                                                                                                  {
LABEL_202:
                                                                                                    if (v3 == &qword_1EDD02FD0)
                                                                                                    {
                                                                                                      v3 = &qword_1EDD02FD0;
LABEL_205:
                                                                                                      result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "thread_inscyc");
                                                                                                      v3 += result;
                                                                                                      v1 = *v2;
                                                                                                      if ((*v2 & 0x8000000) != 0)
                                                                                                      {
LABEL_206:
                                                                                                        if (v3 == &qword_1EDD02FD0)
                                                                                                        {
                                                                                                          v3 = &qword_1EDD02FD0;
LABEL_209:
                                                                                                          result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "tinfo_sched_v2");
                                                                                                          v3 += result;
                                                                                                          v1 = *v2;
                                                                                                          if ((*v2 & 0x10000000) != 0)
                                                                                                          {
LABEL_210:
                                                                                                            if (v3 == &qword_1EDD02FD0)
                                                                                                            {
                                                                                                              v3 = &qword_1EDD02FD0;
LABEL_213:
                                                                                                              result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "thread_dispatch_label");
                                                                                                              v3 += result;
                                                                                                              v1 = *v2;
                                                                                                              if ((*v2 & 0x20000000) != 0)
                                                                                                              {
LABEL_214:
                                                                                                                if (v3 == &qword_1EDD02FD0)
                                                                                                                {
                                                                                                                  v3 = &qword_1EDD02FD0;
LABEL_217:
                                                                                                                  result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "specific_thread_name");
                                                                                                                  v3 += result;
                                                                                                                  v1 = *v2;
                                                                                                                  if ((*v2 & 0x40000000) != 0)
                                                                                                                  {
LABEL_218:
                                                                                                                    if (v3 == &qword_1EDD02FD0)
                                                                                                                    {
                                                                                                                      v3 = &qword_1EDD02FD0;
LABEL_221:
                                                                                                                      result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "pmi");
                                                                                                                      v3 += result;
                                                                                                                      v1 = *v2;
                                                                                                                      if ((*v2 & 0x80000000) != 0)
                                                                                                                      {
LABEL_222:
                                                                                                                        if (v3 == &qword_1EDD02FD0)
                                                                                                                        {
                                                                                                                          v3 = &qword_1EDD02FD0;
                                                                                                                          goto LABEL_225;
                                                                                                                        }

LABEL_223:
                                                                                                                        v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                                                                                                        goto LABEL_225;
                                                                                                                      }

LABEL_103:
                                                                                                                      if ((v1 & 0x100000000) != 0)
                                                                                                                      {
                                                                                                                        goto LABEL_226;
                                                                                                                      }

LABEL_104:
                                                                                                                      if ((v1 & 0x8000000000000000) == 0)
                                                                                                                      {
                                                                                                                        goto LABEL_234;
                                                                                                                      }

                                                                                                                      goto LABEL_230;
                                                                                                                    }

LABEL_219:
                                                                                                                    v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                                                                                                    goto LABEL_221;
                                                                                                                  }

LABEL_102:
                                                                                                                  if ((v1 & 0x80000000) != 0)
                                                                                                                  {
                                                                                                                    goto LABEL_222;
                                                                                                                  }

                                                                                                                  goto LABEL_103;
                                                                                                                }

LABEL_215:
                                                                                                                v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                                                                                                goto LABEL_217;
                                                                                                              }

LABEL_101:
                                                                                                              if ((v1 & 0x40000000) != 0)
                                                                                                              {
                                                                                                                goto LABEL_218;
                                                                                                              }

                                                                                                              goto LABEL_102;
                                                                                                            }

LABEL_211:
                                                                                                            v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                                                                                            goto LABEL_213;
                                                                                                          }

LABEL_100:
                                                                                                          if ((v1 & 0x20000000) != 0)
                                                                                                          {
                                                                                                            goto LABEL_214;
                                                                                                          }

                                                                                                          goto LABEL_101;
                                                                                                        }

LABEL_207:
                                                                                                        v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                                                                                        goto LABEL_209;
                                                                                                      }

LABEL_99:
                                                                                                      if ((v1 & 0x10000000) != 0)
                                                                                                      {
                                                                                                        goto LABEL_210;
                                                                                                      }

                                                                                                      goto LABEL_100;
                                                                                                    }

LABEL_203:
                                                                                                    v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                                                                                    goto LABEL_205;
                                                                                                  }

LABEL_98:
                                                                                                  if ((v1 & 0x8000000) != 0)
                                                                                                  {
                                                                                                    goto LABEL_206;
                                                                                                  }

                                                                                                  goto LABEL_99;
                                                                                                }

LABEL_199:
                                                                                                v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                                                                                goto LABEL_201;
                                                                                              }

LABEL_97:
                                                                                              if ((v1 & 0x4000000) != 0)
                                                                                              {
                                                                                                goto LABEL_202;
                                                                                              }

                                                                                              goto LABEL_98;
                                                                                            }

LABEL_195:
                                                                                            v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                                                                            goto LABEL_197;
                                                                                          }

LABEL_96:
                                                                                          if ((v1 & 0x2000000) != 0)
                                                                                          {
                                                                                            goto LABEL_198;
                                                                                          }

                                                                                          goto LABEL_97;
                                                                                        }

LABEL_191:
                                                                                        v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                                                                        goto LABEL_193;
                                                                                      }

LABEL_95:
                                                                                      if ((v1 & 0x1000000) != 0)
                                                                                      {
                                                                                        goto LABEL_194;
                                                                                      }

                                                                                      goto LABEL_96;
                                                                                    }

LABEL_187:
                                                                                    v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                                                                    goto LABEL_189;
                                                                                  }

LABEL_94:
                                                                                  if ((v1 & 0x400000) != 0)
                                                                                  {
                                                                                    goto LABEL_190;
                                                                                  }

                                                                                  goto LABEL_95;
                                                                                }

LABEL_183:
                                                                                v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                                                                goto LABEL_185;
                                                                              }

LABEL_93:
                                                                              if ((v1 & 0x200000) != 0)
                                                                              {
                                                                                goto LABEL_186;
                                                                              }

                                                                              goto LABEL_94;
                                                                            }

LABEL_179:
                                                                            v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                                                            goto LABEL_181;
                                                                          }

LABEL_92:
                                                                          if ((v1 & 0x100000) != 0)
                                                                          {
                                                                            goto LABEL_182;
                                                                          }

                                                                          goto LABEL_93;
                                                                        }

LABEL_175:
                                                                        v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                                                        goto LABEL_177;
                                                                      }

LABEL_91:
                                                                      if ((v1 & 0x80000) != 0)
                                                                      {
                                                                        goto LABEL_178;
                                                                      }

                                                                      goto LABEL_92;
                                                                    }

LABEL_171:
                                                                    v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                                                    goto LABEL_173;
                                                                  }

LABEL_90:
                                                                  if ((v1 & 0x40000) != 0)
                                                                  {
                                                                    goto LABEL_174;
                                                                  }

                                                                  goto LABEL_91;
                                                                }

LABEL_167:
                                                                v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                                                goto LABEL_169;
                                                              }

LABEL_89:
                                                              if ((v1 & 0x20000) != 0)
                                                              {
                                                                goto LABEL_170;
                                                              }

                                                              goto LABEL_90;
                                                            }

LABEL_163:
                                                            v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                                            goto LABEL_165;
                                                          }

LABEL_88:
                                                          if ((v1 & 0x10000) != 0)
                                                          {
                                                            goto LABEL_166;
                                                          }

                                                          goto LABEL_89;
                                                        }

LABEL_159:
                                                        v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                                        goto LABEL_161;
                                                      }

LABEL_87:
                                                      if ((v1 & 0x8000) != 0)
                                                      {
                                                        goto LABEL_162;
                                                      }

                                                      goto LABEL_88;
                                                    }

LABEL_155:
                                                    v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                                    goto LABEL_157;
                                                  }

LABEL_86:
                                                  if ((v1 & 0x4000) != 0)
                                                  {
                                                    goto LABEL_158;
                                                  }

                                                  goto LABEL_87;
                                                }

LABEL_151:
                                                v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                                goto LABEL_153;
                                              }

LABEL_85:
                                              if ((v1 & 0x2000) != 0)
                                              {
                                                goto LABEL_154;
                                              }

                                              goto LABEL_86;
                                            }

LABEL_147:
                                            v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                            goto LABEL_149;
                                          }

LABEL_84:
                                          if ((v1 & 0x1000) != 0)
                                          {
                                            goto LABEL_150;
                                          }

                                          goto LABEL_85;
                                        }

LABEL_143:
                                        v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                        goto LABEL_145;
                                      }

LABEL_83:
                                      if ((v1 & 0x800) != 0)
                                      {
                                        goto LABEL_146;
                                      }

                                      goto LABEL_84;
                                    }

LABEL_139:
                                    v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                    goto LABEL_141;
                                  }

LABEL_82:
                                  if ((v1 & 0x400) != 0)
                                  {
                                    goto LABEL_142;
                                  }

                                  goto LABEL_83;
                                }

LABEL_135:
                                v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                                goto LABEL_137;
                              }

LABEL_81:
                              if ((v1 & 0x200) != 0)
                              {
                                goto LABEL_138;
                              }

                              goto LABEL_82;
                            }

LABEL_131:
                            v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                            goto LABEL_133;
                          }

LABEL_80:
                          if ((v1 & 0x100) != 0)
                          {
                            goto LABEL_134;
                          }

                          goto LABEL_81;
                        }

LABEL_127:
                        v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                        goto LABEL_129;
                      }

LABEL_79:
                      if ((v1 & 0x200000000) != 0)
                      {
                        goto LABEL_130;
                      }

                      goto LABEL_80;
                    }

LABEL_123:
                    v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                    goto LABEL_125;
                  }

LABEL_78:
                  if ((v1 & 0x80) != 0)
                  {
                    goto LABEL_126;
                  }

                  goto LABEL_79;
                }

LABEL_119:
                v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
                goto LABEL_121;
              }

LABEL_77:
              if ((v1 & 0x40) != 0)
              {
                goto LABEL_122;
              }

              goto LABEL_78;
            }

LABEL_115:
            v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
            goto LABEL_117;
          }

LABEL_76:
          if ((v1 & 0x20) != 0)
          {
            goto LABEL_118;
          }

          goto LABEL_77;
        }

LABEL_111:
        v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
        goto LABEL_113;
      }

LABEL_75:
      if ((v1 & 0x10) != 0)
      {
        goto LABEL_114;
      }

      goto LABEL_76;
    }

LABEL_107:
    v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
    goto LABEL_109;
  }

  v3 = &qword_1EDD02FD0;
  if ((v1 & 2) != 0)
  {
    goto LABEL_73;
  }

  if ((v1 & 4) != 0)
  {
    goto LABEL_109;
  }

  if ((v1 & 8) != 0)
  {
    goto LABEL_113;
  }

  if ((v1 & 0x10) != 0)
  {
    goto LABEL_117;
  }

  if ((v1 & 0x20) != 0)
  {
    goto LABEL_121;
  }

  if ((v1 & 0x40) != 0)
  {
    goto LABEL_125;
  }

  if ((v1 & 0x80) != 0)
  {
    goto LABEL_129;
  }

  if ((v1 & 0x200000000) != 0)
  {
    goto LABEL_133;
  }

  if ((v1 & 0x100) != 0)
  {
    goto LABEL_137;
  }

  if ((v1 & 0x200) != 0)
  {
    goto LABEL_141;
  }

  if ((v1 & 0x400) != 0)
  {
    goto LABEL_145;
  }

  if ((v1 & 0x800) != 0)
  {
    goto LABEL_149;
  }

  if ((v1 & 0x1000) != 0)
  {
    goto LABEL_153;
  }

  if ((v1 & 0x2000) != 0)
  {
    goto LABEL_157;
  }

  if ((v1 & 0x4000) != 0)
  {
    goto LABEL_161;
  }

  if ((v1 & 0x8000) != 0)
  {
    goto LABEL_165;
  }

  if ((v1 & 0x10000) != 0)
  {
    goto LABEL_169;
  }

  if ((v1 & 0x20000) != 0)
  {
    goto LABEL_173;
  }

  if ((v1 & 0x40000) != 0)
  {
    goto LABEL_177;
  }

  if ((v1 & 0x80000) != 0)
  {
    goto LABEL_181;
  }

  if ((v1 & 0x100000) != 0)
  {
    goto LABEL_185;
  }

  if ((v1 & 0x200000) != 0)
  {
    goto LABEL_189;
  }

  if ((v1 & 0x400000) != 0)
  {
    goto LABEL_193;
  }

  if ((v1 & 0x1000000) != 0)
  {
    goto LABEL_197;
  }

  if ((v1 & 0x2000000) != 0)
  {
    goto LABEL_201;
  }

  if ((v1 & 0x4000000) != 0)
  {
    goto LABEL_205;
  }

  if ((v1 & 0x8000000) != 0)
  {
    goto LABEL_209;
  }

  if ((v1 & 0x10000000) != 0)
  {
    goto LABEL_213;
  }

  if ((v1 & 0x20000000) != 0)
  {
    goto LABEL_217;
  }

  if ((v1 & 0x40000000) != 0)
  {
    goto LABEL_221;
  }

  if ((v1 & 0x80000000) == 0)
  {
    if ((v1 & 0x100000000) == 0)
    {
      if ((v1 & 0x8000000000000000) == 0)
      {
        goto LABEL_234;
      }

      goto LABEL_233;
    }

    goto LABEL_229;
  }

LABEL_225:
  result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "system_memory_status");
  v3 += result;
  v1 = *v2;
  if ((*v2 & 0x100000000) == 0)
  {
    goto LABEL_104;
  }

LABEL_226:
  if (v3 != &qword_1EDD02FD0)
  {
LABEL_227:
    v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
    goto LABEL_229;
  }

  v3 = &qword_1EDD02FD0;
LABEL_229:
  result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "async_stack");
  v3 += result;
  v1 = *v2;
  if ((*v2 & 0x8000000000000000) == 0)
  {
    goto LABEL_234;
  }

LABEL_230:
  if (v3 == &qword_1EDD02FD0)
  {
    v3 = &qword_1EDD02FD0;
    goto LABEL_233;
  }

LABEL_231:
  v3 += snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ");
LABEL_233:
  result = snprintf(v3, _MergedGlobals_4 - v3 + 552, "malformed");
  v3 += result;
  v1 = *v2;
LABEL_234:
  v4 = v1 & 0x7FFFFFFC00000000;
  v18 = v1 & 0x7FFFFFFC00000000;
  if ((v1 & 0x7FFFFFFC00000000) != 0)
  {
    do
    {
      v5 = __clz(__rbit64(v4));
      v6 = buf[(v5 >> 3) - 8];
      v7 = 1 << (v5 & 7);
      if ((v7 & v6) == 0)
      {
        v10 = *__error();
        v11 = _sa_logt();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109376;
          v20 = v5;
          v21 = 2048;
          v22 = v4;
          _os_log_error_impl(&dword_1E0E2F000, v11, OS_LOG_TYPE_ERROR, "bitNum %d unset, but contents 0x%llx", buf, 0x12u);
        }

        *__error() = v10;
        _SASetCrashLogMessage(623, "bitNum %d unset, but contents 0x%llx", v12, v13, v14, v15, v16, v17, v5);
        _os_crash();
        __break(1u);
      }

      buf[(v5 >> 3) - 8] = v6 & ~v7;
      if (v3 == &qword_1EDD02FD0)
      {
        v8 = &qword_1EDD02FD0;
      }

      else
      {
        v8 = &v3[snprintf(v3, _MergedGlobals_4 - v3 + 552, ", ")];
      }

      result = snprintf(v8, _MergedGlobals_4 - v8 + 552, "UNKNOWN(%d)", v5);
      v3 = &v8[result];
      v4 = v18;
    }

    while (v18);
  }

LABEL_240:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E0E86A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57)
{
  _Block_object_dispose((v58 - 136), 8);

  _Unwind_Resume(a1);
}

void sub_1E0E90BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, void *a56, void *a57, void *a58)
{
  _Block_object_dispose(&STACK[0x540], 8);
  _Block_object_dispose((v60 - 256), 8);

  _Block_object_dispose(&STACK[0x430], 8);
  _Block_object_dispose(&STACK[0x460], 8);
  _Block_object_dispose(&STACK[0x480], 8);
  _Block_object_dispose(&STACK[0x4A0], 8);
  _Block_object_dispose(&STACK[0x4C0], 8);
  _Block_object_dispose(&STACK[0x4E0], 8);

  _Block_object_dispose(&STACK[0x510], 8);
  _Unwind_Resume(a1);
}

id DictForChunkViaNSUnarchiver()
{
  v0 = ktrace_chunk_size();
  v1 = ktrace_chunk_map_data();
  if (v1)
  {
    v2 = v1;
    v13 = MEMORY[0x1E696ACD0];
    v3 = objc_alloc(MEMORY[0x1E695DFD8]);
    v4 = objc_opt_class();
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = [v3 initWithObjects:{v4, v5, v6, v7, objc_opt_class(), 0}];
    v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v2 length:v0 freeWhenDone:0];
    v14 = 0;
    v10 = [v13 unarchivedObjectOfClasses:v8 fromData:v9 error:&v14];
    v11 = v14;

    ktrace_chunk_unmap_data();
    if (v10)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_1E0E94E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t flatbuffers::Verifier::VerifyOffset(flatbuffers::Verifier *this, unint64_t a2)
{
  if (a2 & 3) != 0 && (*(this + 40))
  {
    return 0;
  }

  v2 = *(this + 1);
  if (v2 < 5 || v2 - 4 < a2)
  {
    return 0;
  }

  v4 = *(*this + a2);
  if (v4 < 1)
  {
    return 0;
  }

  if (v2 - 1 >= v4 + a2)
  {
    return v4;
  }

  return 0;
}

BOOL flatbuffers::Verifier::VerifyTableStart(flatbuffers::Verifier *this, const unsigned __int8 *a2)
{
  v2 = *this;
  v3 = &a2[-*this];
  if (v3 & 3) != 0 && (*(this + 40))
  {
    return 0;
  }

  v4 = *(this + 1);
  v5 = v4 >= 5 && v4 - 4 >= v3;
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = *(this + 5);
  v8 = *(this + 4) + 1;
  *(this + 4) = v8;
  v9 = *(this + 6) + 1;
  *(this + 6) = v9;
  if (v8 > v7 || v9 > *(this + 7))
  {
    return 0;
  }

  v12 = v3 - v6;
  if (v12)
  {
    v10 = 0;
    if ((*(this + 40) & 1) != 0 || v4 - 2 < v12)
    {
      return v10;
    }
  }

  else if (v4 - 2 < v12)
  {
    return 0;
  }

  v13 = *(v2 + v12);
  if (v13 & 1) != 0 && (*(this + 40))
  {
    return 0;
  }

  v5 = v4 >= v13;
  v14 = v4 - v13;
  return v14 != 0 && v5 && v14 >= v12;
}

BOOL flatbuffers::Verifier::VerifyVectorOrString(flatbuffers::Verifier *this, const unsigned __int8 *a2, unint64_t a3, unint64_t *a4)
{
  v4 = &a2[-*this];
  if (v4 & 3) != 0 && (*(this + 40))
  {
    return 0;
  }

  v5 = *(this + 1);
  if (v5 < 5 || v5 - 4 < v4)
  {
    return 0;
  }

  v7 = *a2;
  if (0x7FFFFFFF / a3 <= v7)
  {
    return 0;
  }

  v8 = v7 * a3 + 4;
  if (a4)
  {
    *a4 = v8 + v4;
    v5 = *(this + 1);
  }

  v9 = v5 > v8;
  v10 = v5 - v8;
  return v9 && v10 >= v4;
}

BOOL flatbuffers::Verifier::VerifyString(flatbuffers::Verifier *a1, const unsigned __int8 *a2)
{
  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  result = flatbuffers::Verifier::VerifyVectorOrString(a1, a2, 1uLL, &v6);
  if (result)
  {
    v4 = *(a1 + 1);
    return v4 >= 2 && v4 - 1 >= v6 && *(*a1 + v6) == 0;
  }

  return result;
}

BOOL flatbuffers::Verifier::VerifyVectorOfTables<FlatbufferSymbols::TranslatedImageInfo>(flatbuffers::Verifier *this, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = 0;
  v6 = a2 + 1;
  while (1)
  {
    v7 = a2[v4 + 1];
    v8 = &a2[v4] + v7;
    result = flatbuffers::Verifier::VerifyTableStart(this, v8 + 4);
    if (!result)
    {
      break;
    }

    v10 = v7 - *(v8 + 1);
    v11 = *(&a2[v4 + 1] + v10);
    if (v11 >= 5)
    {
      if (*(&a2[v4 + 2] + v10))
      {
        result = 0;
        v12 = *(this + 1);
        if (v12 < 9 || v12 - 8 < &v6[v4] + v7 + *(&a2[v4 + 2] + v10) - *this)
        {
          break;
        }
      }

      if (v11 >= 7)
      {
        if (*(&a2[v4 + 2] + v10 + 2))
        {
          result = 0;
          v13 = *(this + 1);
          if (v13 < 9 || v13 - 8 < &v6[v4] + v7 + *(&a2[v4 + 2] + v10 + 2) - *this)
          {
            break;
          }
        }

        if (v11 >= 9)
        {
          if (*(&a2[v4 + 3] + v10))
          {
            result = 0;
            v14 = *(this + 1);
            if (v14 < 9 || v14 - 8 < &v6[v4] + v7 + *(&a2[v4 + 3] + v10) - *this)
            {
              break;
            }
          }
        }
      }
    }

    result = flatbuffers::Table::VerifyOffset((v8 + 4), this, 0xAu);
    if (!result)
    {
      break;
    }

    if (v11 >= 0xB)
    {
      if (*(&a2[v4 + 3] + v10 + 2))
      {
        v15 = v7 + *(&a2[v4 + 3] + v10 + 2);
        if (!flatbuffers::Verifier::VerifyVectorOrString(this, &a2[v4 + 1] + v15 + *(&a2[v4 + 1] + v15), 1uLL, 0))
        {
          return 0;
        }
      }
    }

    --*(this + 4);
    ++v5;
    ++v4;
    if (v5 >= *a2)
    {
      return 1;
    }
  }

  return result;
}

BOOL FlatbufferSymbols::TimeRange::Verify(FlatbufferSymbols::TimeRange *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5 || (!v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 9) && v7 - 8 >= this + v5[2] - *a2) && (v6 < 7 || (v8 = v5[3]) == 0 || (result = 0, v9 = *(a2 + 1), v9 >= 9) && v9 - 8 >= this + v8 - *a2))
    {
      --*(a2 + 4);
      return 1;
    }
  }

  return result;
}

BOOL FlatbufferSymbols::MachoMetadata::Verify(FlatbufferSymbols::MachoMetadata *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = flatbuffers::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = flatbuffers::Verifier::VerifyString(a2, v10);
          if (result)
          {
            v11 = (this - *this);
            v12 = *v11;
            if (v12 < 9 || (!v11[4] || (result = 0, v13 = *(a2 + 1), v13 >= 9) && v13 - 8 >= this + v11[4] - *a2) && (v12 < 0xB || !v11[5] || (result = 0, v14 = *(a2 + 1), v14 >= 9) && v14 - 8 >= this + v11[5] - *a2))
            {
              result = flatbuffers::Table::VerifyOffset(this, a2, 0xCu);
              if (result && (v12 < 0xD || !v11[6] || (result = FlatbufferSymbols::CPUArchitecture::Verify((this + v11[6] + *(this + v11[6])), a2))))
              {
                result = flatbuffers::Table::VerifyOffset(this, a2, 0xEu);
                if (result)
                {
                  v15 = (this - *this);
                  if (*v15 >= 0xFu && (v16 = v15[7]) != 0)
                  {
                    v17 = this + v16 + *(this + v16);
                  }

                  else
                  {
                    v17 = 0;
                  }

                  result = flatbuffers::Verifier::VerifyString(a2, v17);
                  if (result)
                  {
                    result = flatbuffers::Table::VerifyOffset(this, a2, 0x10u);
                    if (result)
                    {
                      v18 = (this - *this);
                      if (*v18 >= 0x11u && (v19 = v18[8]) != 0)
                      {
                        v20 = this + v19 + *(this + v19);
                      }

                      else
                      {
                        v20 = 0;
                      }

                      result = flatbuffers::Verifier::VerifyString(a2, v20);
                      if (result)
                      {
                        result = flatbuffers::Table::VerifyOffset(this, a2, 0x12u);
                        if (result)
                        {
                          v21 = (this - *this);
                          if (*v21 >= 0x13u && (v22 = v21[9]) != 0)
                          {
                            v23 = this + v22 + *(this + v22);
                          }

                          else
                          {
                            v23 = 0;
                          }

                          result = flatbuffers::Verifier::VerifyString(a2, v23);
                          if (result)
                          {
                            result = flatbuffers::Table::VerifyOffset(this, a2, 0x14u);
                            if (result)
                            {
                              v24 = (this - *this);
                              if (*v24 >= 0x15u && (v25 = v24[10]) != 0)
                              {
                                v26 = this + v25 + *(this + v25);
                              }

                              else
                              {
                                v26 = 0;
                              }

                              result = flatbuffers::Verifier::VerifyString(a2, v26);
                              if (result)
                              {
                                result = flatbuffers::Table::VerifyOffset(this, a2, 0x16u);
                                if (result)
                                {
                                  v27 = (this - *this);
                                  if (*v27 >= 0x17u && (v28 = v27[11]) != 0)
                                  {
                                    v29 = this + v28 + *(this + v28);
                                  }

                                  else
                                  {
                                    v29 = 0;
                                  }

                                  result = flatbuffers::Verifier::VerifyString(a2, v29);
                                  if (result)
                                  {
                                    result = flatbuffers::Table::VerifyOffset(this, a2, 0x18u);
                                    if (result)
                                    {
                                      v30 = (this - *this);
                                      if (*v30 >= 0x19u && (v31 = v30[12]) != 0)
                                      {
                                        v32 = this + v31 + *(this + v31);
                                      }

                                      else
                                      {
                                        v32 = 0;
                                      }

                                      result = flatbuffers::Verifier::VerifyString(a2, v32);
                                      if (result)
                                      {
                                        --*(a2 + 4);
                                        return 1;
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
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL FlatbufferSymbols::CPUArchitecture::Verify(FlatbufferSymbols::CPUArchitecture *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5 || (!v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 5) && v7 - 4 >= this + v5[2] - *a2) && (v6 < 7 || (!v5[3] || (result = 0, v8 = *(a2 + 1), v8 >= 5) && v8 - 4 >= this + v5[3] - *a2) && (v6 < 9 || (v9 = v5[4]) == 0 || (result = 0, v10 = *(a2 + 1), v10 >= 5) && v10 - 4 >= this + v9 - *a2)))
    {
      --*(a2 + 4);
      return 1;
    }
  }

  return result;
}

BOOL FlatbufferSymbols::DyldSharedCacheMetadata::Verify(FlatbufferSymbols::DyldSharedCacheMetadata *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = flatbuffers::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = flatbuffers::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = flatbuffers::Verifier::VerifyString(a2, v10);
          if (result)
          {
            v11 = (this - *this);
            v12 = *v11;
            if (v12 < 9 || (!v11[4] || (result = 0, v13 = *(a2 + 1), v13 >= 9) && v13 - 8 >= this + v11[4] - *a2) && (v12 < 0xB || !v11[5] || (result = 0, v14 = *(a2 + 1), v14 >= 9) && v14 - 8 >= this + v11[5] - *a2))
            {
              result = flatbuffers::Table::VerifyOffset(this, a2, 0xCu);
              if (result && (v12 < 0xD || !v11[6] || (result = FlatbufferSymbols::CPUArchitecture::Verify((this + v11[6] + *(this + v11[6])), a2))))
              {
                result = flatbuffers::Table::VerifyOffset(this, a2, 0xEu);
                if (result)
                {
                  v15 = (this - *this);
                  if (*v15 >= 0xFu && (v16 = v15[7]) != 0)
                  {
                    v17 = this + v16 + *(this + v16);
                  }

                  else
                  {
                    v17 = 0;
                  }

                  result = flatbuffers::Verifier::VerifyString(a2, v17);
                  if (result)
                  {
                    result = flatbuffers::Table::VerifyOffset(this, a2, 0x10u);
                    if (result)
                    {
                      v18 = (this - *this);
                      if (*v18 >= 0x11u && (v19 = v18[8]) != 0)
                      {
                        v20 = this + v19 + *(this + v19);
                      }

                      else
                      {
                        v20 = 0;
                      }

                      result = flatbuffers::Verifier::VerifyString(a2, v20);
                      if (result)
                      {
                        result = flatbuffers::Table::VerifyOffset(this, a2, 0x12u);
                        if (result)
                        {
                          v21 = (this - *this);
                          if (*v21 >= 0x13u && (v22 = v21[9]) != 0)
                          {
                            v23 = this + v22 + *(this + v22);
                          }

                          else
                          {
                            v23 = 0;
                          }

                          result = flatbuffers::Verifier::VerifyString(a2, v23);
                          if (result)
                          {
                            v24 = (this - *this);
                            if (*v24 < 0x15u || (v25 = v24[10]) == 0 || (result = 0, v26 = *(a2 + 1), v26 >= 9) && v26 - 8 >= this + v25 - *a2)
                            {
                              --*(a2 + 4);
                              return 1;
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
    }
  }

  return result;
}

uint64_t flatbuffers::Verifier::VerifyVectorOfTables<FlatbufferSymbols::SymbolNameEntry>(flatbuffers::Verifier *this, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = 0;
  v6 = a2 + 1;
  while (1)
  {
    v7 = a2[v4 + 1];
    v8 = &a2[v4] + v7;
    result = flatbuffers::Verifier::VerifyTableStart(this, v8 + 4);
    if (!result)
    {
      break;
    }

    v10 = v7 - *(v8 + 1);
    if (*(&a2[v4 + 1] + v10) < 5u)
    {
      return 0;
    }

    v11 = *(&a2[v4 + 2] + v10);
    if (!v11)
    {
      return 0;
    }

    v12 = v7 + v11;
    result = flatbuffers::Verifier::VerifyOffset(this, &v6[v4] + v7 + v11 - *this);
    if (!result)
    {
      return result;
    }

    result = flatbuffers::Verifier::VerifyString(this, &a2[v4 + 1] + v12 + *(&a2[v4 + 1] + v12));
    if (!result)
    {
      return result;
    }

    result = flatbuffers::Table::VerifyOffset((v8 + 4), this, 6u);
    if (!result)
    {
      return result;
    }

    v13 = &a2[v4] + v7 - *(v8 + 1);
    if (*(v13 + 2) >= 7u)
    {
      v14 = *(v13 + 5);
      if (v14)
      {
        if ((FlatbufferSymbols::Symbol::Verify((&a2[v4 + 1] + v7 + v14 + *(&a2[v4 + 1] + v7 + v14)), this) & 1) == 0)
        {
          return 0;
        }
      }
    }

    --*(this + 4);
    ++v5;
    ++v4;
    if (v5 >= *a2)
    {
      return 1;
    }
  }

  return result;
}

uint64_t FlatbufferSymbols::Symbol::Verify(FlatbufferSymbols::Symbol *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5 || (!v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 9) && v7 - 8 >= this + v5[2] - *a2) && (v6 < 7 || !v5[3] || (result = 0, v8 = *(a2 + 1), v8 >= 9) && v8 - 8 >= this + v5[3] - *a2))
    {
      result = flatbuffers::Table::VerifyOffset(this, a2, 8u);
      if (result)
      {
        v9 = v6 >= 9 && v5[4] ? this + v5[4] + *(this + v5[4]) : 0;
        result = flatbuffers::Verifier::VerifyString(a2, v9);
        if (result)
        {
          result = flatbuffers::Table::VerifyOffset(this, a2, 0xAu);
          if (result)
          {
            v10 = (this - *this);
            if (*v10 >= 0xBu && (v11 = v10[5]) != 0)
            {
              v12 = this + v11 + *(this + v11);
            }

            else
            {
              v12 = 0;
            }

            result = flatbuffers::Verifier::VerifyString(a2, v12);
            if (result)
            {
              result = flatbuffers::Table::VerifyOffset(this, a2, 0xCu);
              if (result)
              {
                v13 = *this;
                if (*(this - v13) < 0xDu)
                {
                  goto LABEL_29;
                }

                if (*(this - v13 + 12))
                {
                  result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v13 + 12) + *(this + *(this - v13 + 12)), 4uLL, 0);
                  if (!result)
                  {
                    return result;
                  }

                  v13 = *this;
                  if (*(this - v13) < 0xDu)
                  {
                    goto LABEL_29;
                  }
                }

                v14 = *(this - v13 + 12);
                if (!v14)
                {
LABEL_29:
                  v15 = 0;
                }

                else
                {
                  v15 = (this + v14 + *(this + v14));
                }

                result = flatbuffers::Verifier::VerifyVectorOfTables<FlatbufferSymbols::SourceInfo>(a2, v15);
                if (result)
                {
                  result = flatbuffers::Table::VerifyOffset(this, a2, 0xEu);
                  if (result)
                  {
                    v16 = (this - *this);
                    if (*v16 < 0xFu || (v17 = v16[7]) == 0 || (result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + v17 + *(this + v17), 1uLL, 0), result))
                    {
                      result = flatbuffers::Table::VerifyOffset(this, a2, 0x10u);
                      if (result)
                      {
                        v18 = *this;
                        if (*(this - v18) < 0x11u)
                        {
                          goto LABEL_42;
                        }

                        if (*(this - v18 + 16))
                        {
                          result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + *(this - v18 + 16) + *(this + *(this - v18 + 16)), 4uLL, 0);
                          if (!result)
                          {
                            return result;
                          }

                          v18 = *this;
                          if (*(this - v18) < 0x11u)
                          {
                            goto LABEL_42;
                          }
                        }

                        v19 = *(this - v18 + 16);
                        if (!v19)
                        {
LABEL_42:
                          v20 = 0;
                        }

                        else
                        {
                          v20 = (this + v19 + *(this + v19));
                        }

                        result = flatbuffers::Verifier::VerifyVectorOfTables<FlatbufferSymbols::InlineSymbol>(a2, v20);
                        if (result)
                        {
                          v21 = (this - *this);
                          if (*v21 < 0x13u || (v22 = v21[9]) == 0 || (result = 0, v23 = *(a2 + 1), v23 >= 9) && v23 - 8 >= this + v22 - *a2)
                          {
                            --*(a2 + 4);
                            return 1;
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
  }

  return result;
}

BOOL flatbuffers::Verifier::VerifyVectorOfTables<FlatbufferSymbols::SourceInfo>(flatbuffers::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = FlatbufferSymbols::SourceInfo::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t flatbuffers::Verifier::VerifyVectorOfTables<FlatbufferSymbols::InlineSymbol>(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = 0;
  v6 = a2 + 1;
  while (1)
  {
    v7 = a2[v4 + 1];
    v8 = &a2[v4] + v7;
    result = flatbuffers::Verifier::VerifyTableStart(a1, v8 + 4);
    if (!result)
    {
      return result;
    }

    v10 = v7 - *(v8 + 1);
    v11 = *(&a2[v4 + 1] + v10);
    if (v11 >= 5)
    {
      if (*(&a2[v4 + 2] + v10))
      {
        result = 0;
        v12 = *(a1 + 8);
        if (v12 < 9 || v12 - 8 < &v6[v4] + v7 + *(&a2[v4 + 2] + v10) - *a1)
        {
          return result;
        }
      }

      if (v11 >= 7)
      {
        if (*(&a2[v4 + 2] + v10 + 2))
        {
          result = 0;
          v13 = *(a1 + 8);
          if (v13 < 9 || v13 - 8 < &v6[v4] + v7 + *(&a2[v4 + 2] + v10 + 2) - *a1)
          {
            return result;
          }
        }
      }
    }

    result = flatbuffers::Table::VerifyOffset((v8 + 4), a1, 8u);
    if (!result)
    {
      return result;
    }

    if (v11 >= 9 && *(&a2[v4 + 3] + v10))
    {
      v14 = v7 + *(&a2[v4 + 3] + v10);
      v15 = &a2[v4 + 1] + v14 + *(&a2[v4 + 1] + v14);
    }

    else
    {
      v15 = 0;
    }

    result = flatbuffers::Verifier::VerifyString(a1, v15);
    if (!result)
    {
      return result;
    }

    result = flatbuffers::Table::VerifyOffset((v8 + 4), a1, 0xAu);
    if (!result)
    {
      return result;
    }

    v16 = &a2[v4] + v7 - *(v8 + 1);
    if (*(v16 + 2) >= 0xBu && (v17 = *(v16 + 7)) != 0)
    {
      v18 = &a2[v4 + 1] + v7 + v17 + *(&a2[v4 + 1] + v7 + v17);
    }

    else
    {
      v18 = 0;
    }

    result = flatbuffers::Verifier::VerifyString(a1, v18);
    if (!result)
    {
      return result;
    }

    result = flatbuffers::Table::VerifyOffset((v8 + 4), a1, 0xCu);
    if (!result)
    {
      return result;
    }

    v19 = &a2[v4] + v7 - *(v8 + 1);
    if (*(v19 + 2) >= 0xDu)
    {
      v20 = *(v19 + 8);
      if (v20)
      {
        result = FlatbufferSymbols::SourceInfo::Verify((&a2[v4 + 1] + v7 + v20 + *(&a2[v4 + 1] + v7 + v20)), a1);
        if (!result)
        {
          return result;
        }
      }
    }

    result = flatbuffers::Table::VerifyOffset((v8 + 4), a1, 0xEu);
    if (!result)
    {
      return result;
    }

    v21 = *(v8 + 1);
    v22 = &a2[v4] + v7 - v21;
    if (*(v22 + 2) < 0xFu)
    {
      goto LABEL_36;
    }

    v23 = *(v22 + 9);
    if (v23)
    {
      result = flatbuffers::Verifier::VerifyVectorOrString(a1, &a2[v4 + 1] + v7 + v23 + *(&a2[v4 + 1] + v7 + v23), 4uLL, 0);
      if (!result)
      {
        return result;
      }

      v21 = *(v8 + 1);
      if (*(&a2[v4 + 1] + v7 - v21) < 0xFu)
      {
        goto LABEL_36;
      }
    }

    v24 = *(a2 + v7 + v4 * 4 - v21 + 18);
    if (!v24)
    {
LABEL_36:
      v25 = 0;
    }

    else
    {
      v25 = &a2[v4 + 1] + v7 + v24 + *(&a2[v4 + 1] + v7 + v24);
    }

    result = flatbuffers::Verifier::VerifyVectorOfTables<FlatbufferSymbols::InlineSymbol>(a1, v25);
    if (!result)
    {
      return result;
    }

    v26 = &a2[v4] + v7 - *(v8 + 1);
    if (*(v26 + 2) >= 0x11u)
    {
      v27 = *(v26 + 10);
      if (v27)
      {
        result = 0;
        v28 = *(a1 + 8);
        if (v28 < 9 || v28 - 8 < &v6[v4] + v7 + v27 - *a1)
        {
          return result;
        }
      }
    }

    --*(a1 + 16);
    ++v5;
    ++v4;
    if (v5 >= *a2)
    {
      return 1;
    }
  }
}

BOOL FlatbufferSymbols::SourceInfo::Verify(FlatbufferSymbols::SourceInfo *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = flatbuffers::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = flatbuffers::Verifier::VerifyString(a2, v7);
      if (result)
      {
        v8 = (this - *this);
        v9 = *v8;
        if (v9 < 7)
        {
          goto LABEL_28;
        }

        if (!v8[3] || (result = 0, v10 = *(a2 + 1), v10 >= 5) && v10 - 4 >= this + v8[3] - *a2)
        {
          if (v9 < 9)
          {
            goto LABEL_28;
          }

          if (!v8[4] || (result = 0, v11 = *(a2 + 1), v11 >= 5) && v11 - 4 >= this + v8[4] - *a2)
          {
            if (v9 < 0xB || (!v8[5] || (result = 0, v12 = *(a2 + 1), v12 >= 5) && v12 - 4 >= this + v8[5] - *a2) && (v9 < 0xD || (!v8[6] || (result = 0, v13 = *(a2 + 1), v13 >= 9) && v13 - 8 >= this + v8[6] - *a2) && (v9 < 0xF || (v14 = v8[7]) == 0 || (result = 0, v15 = *(a2 + 1), v15 >= 5) && v15 - 4 >= this + v14 - *a2)))
            {
LABEL_28:
              --*(a2 + 4);
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1E0E9C804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  objc_sync_exit(v43);
  objc_sync_exit(obj);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

void sub_1E0E9D3C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  objc_sync_exit(v36);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose((v37 - 184), 8);
  _Block_object_dispose((v37 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_1E0E9E728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0E9E9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0E9EC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0E9EDF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0E9F070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0E9F490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0EA1350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id obj)
{
  objc_sync_exit(v19);
  objc_sync_exit(obj);
  _Unwind_Resume(a1);
}

void sub_1E0EA2A24(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 176), 8);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_1E0EA4CB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id obj, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  objc_sync_exit(v37);
  _Unwind_Resume(a1);
}

void sub_1E0EA66E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_1E0EA710C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0EA888C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_1E0EA8AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1E0EA8C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CopyLoadInfosForLiveProcess(_BOOL8 a1, uint64_t a2, void *a3, void *a4, id *a5, unint64_t a6, unint64_t a7, int a8)
{
  v12 = a3;
  v14 = a1;
  v202[10] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  if (!a1)
  {
    v23 = (a6 | a7) != 0;
    if (!a3 && !(a6 | a7))
    {
      goto LABEL_150;
    }

    v202[0] = @"OSBundleLoadAddress";
    v202[1] = @"OSBundleLoadSize";
    v202[2] = @"OSBundleExecLoadAddress";
    v202[3] = @"OSBundleExecLoadSize";
    v202[4] = @"OSBundleUUID";
    v202[5] = @"OSBundleExecutablePath";
    v202[6] = @"OSBundleCPUType";
    v202[7] = @"OSBundleCPUSubtype";
    v161 = *MEMORY[0x1E695E4F0];
    v163 = *MEMORY[0x1E695E500];
    v202[8] = *MEMORY[0x1E695E500];
    v202[9] = v161;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v202 count:10];
    v25 = OSKextCopyLoadedKextInfo();
    if ([v25 count])
    {
      v157 = a6;
      v159 = a7;
      v151 = v24;
      v152 = v12;
      v165 = v23;
      if (v12)
      {
        v171 = objc_alloc_init(MEMORY[0x1E695DF70]);
      }

      else
      {
        v171 = 0;
      }

      v184 = 0u;
      v185 = 0u;
      v182 = 0u;
      v183 = 0u;
      v150 = v25;
      v74 = v25;
      v75 = [v74 countByEnumeratingWithState:&v182 objects:buf count:16];
      if (v75)
      {
        v76 = v75;
        v77 = 0x1E695D000uLL;
        v180 = *v183;
        do
        {
          v78 = 0;
          v176 = v76;
          do
          {
            if (*v183 != v180)
            {
              objc_enumerationMutation(v74);
            }

            v79 = *(*(&v182 + 1) + 8 * v78);
            v80 = [v74 objectForKeyedSubscript:v79];
            v81 = *(v77 + 3824);
            objc_opt_class();
            v82 = _DictGet(v80, @"OSBundleUUID");
            v83 = v82;
            if (!v82)
            {
              v84 = *__error();
              v85 = _sa_logt();
              if (!os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_89;
              }

              *v186 = 138412290;
              *v187 = v79;
              v87 = v85;
              v88 = "No UUID for kext %@, not including in load info";
              v89 = 12;
              goto LABEL_122;
            }

            if ([v82 length] <= 0xF)
            {
              v84 = *__error();
              v85 = _sa_logt();
              if (!os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
              {
LABEL_89:

                *__error() = v84;
                goto LABEL_134;
              }

              v86 = [v83 length];
              *v186 = 138412546;
              *v187 = v79;
              *&v187[8] = 2048;
              v188 = v86;
              v87 = v85;
              v88 = "UUID too short for kext %@ (%lu), not including in load info";
              v89 = 22;
LABEL_122:
              _os_log_error_impl(&dword_1E0E2F000, v87, OS_LOG_TYPE_ERROR, v88, v186, v89);
              goto LABEL_89;
            }

            v90 = uuidForBytes([v83 bytes]);
            objc_opt_class();
            v91 = _DictGet(v80, @"OSBundleLoadAddress");
            v92 = [v91 unsignedLongLongValue];

            objc_opt_class();
            v93 = _DictGet(v80, @"OSBundleExecLoadAddress");
            v94 = [v93 unsignedLongLongValue];

            if (v92 | v94)
            {
              objc_opt_class();
              v95 = _DictGet(v80, @"OSBundleLoadSize");
              v168 = [v95 unsignedLongLongValue];

              objc_opt_class();
              v96 = _DictGet(v80, @"OSBundleExecLoadSize");
              v170 = [v96 unsignedLongLongValue];

              objc_opt_class();
              v97 = _DictGet(v80, @"OSBundleExecutablePath");
              v174 = v97;
              if ([v97 isAbsolutePath])
              {
                v98 = v97;
              }

              else
              {
                v98 = 0;
              }

              v178 = v90;
              v99 = [SABinary binaryWithUUID:v90 absolutePath:v98];
              v100 = [v99 bundleIdentifier];

              if (!v100)
              {
                objc_opt_class();
                v101 = _DictGet(v80, v161);
                v102 = v101;
                if (v101 && ([v101 isEqual:@"__kernel__"] & 1) == 0)
                {
                  v104 = SACachedNSString(v102);
                  if (v99)
                  {
                    objc_setProperty_atomic_copy(v99, v103, v104, 88);
                  }
                }
              }

              v105 = [v99 bundleVersion];

              if (!v105)
              {
                objc_opt_class();
                v106 = _DictGet(v80, v163);
                v107 = v106;
                if (v106)
                {
                  v109 = SACachedNSString(v106);
                  if (v99)
                  {
                    objc_setProperty_atomic_copy(v99, v108, v109, 96);
                  }
                }
              }

              if (v165 && [v79 isEqual:@"__kernel__"])
              {
                if (v157)
                {
                  v110 = v99;
                  *v157 = v99;
                }

                if (v159)
                {
                  objc_opt_class();
                  v111 = _DictGet(v80, @"OSBundleCPUType");
                  objc_opt_class();
                  v112 = _DictGet(v80, @"OSBundleCPUSubtype");
                  v113 = v112;
                  if (v111 && v112)
                  {
                    v114 = v111;
                    v115 = [v111 intValue];
                    v116 = [v113 intValue];
                    *v159 = v115;
                    v159[1] = v116;
                    v111 = v114;
                  }

                  else
                  {
                    v155 = *__error();
                    v121 = _sa_logt();
                    if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
                    {
                      v148 = v111 != 0;
                      v149 = v111;
                      v126 = [v111 intValue];
                      v127 = [v113 intValue];
                      *v186 = 67109888;
                      *v187 = v148;
                      *&v187[4] = 1024;
                      *&v187[6] = v113 != 0;
                      LOWORD(v188) = 1024;
                      *(&v188 + 2) = v126;
                      v111 = v149;
                      HIWORD(v188) = 1024;
                      v189 = v127;
                      _os_log_error_impl(&dword_1E0E2F000, v121, OS_LOG_TYPE_ERROR, "No cpu type(%d)/subtype(%d) 0x%x/0x%x for main kernel binary", v186, 0x1Au);
                    }

                    *__error() = v155;
                  }
                }
              }

              v90 = v178;
              if (v171)
              {
                if (v92)
                {
                  v122 = [(SABinary *)v99 segmentWithCleanName:v168 length:0x7FFFFFFFFFFFFFFFLL offsetIntoBinary:?];
                  v123 = [SABinaryLoadInfo binaryLoadInfoWithSegment:v122 loadAddress:v92 isInKernelAddressSpace:1 exclave:0];
                  [v171 addObject:v123];

                  v90 = v178;
                }

                if (v94)
                {
                  v124 = [(SABinary *)v99 segmentWithCleanName:v170 length:0x7FFFFFFFFFFFFFFFLL offsetIntoBinary:?];
                  v125 = [SABinaryLoadInfo binaryLoadInfoWithSegment:v124 loadAddress:v94 isInKernelAddressSpace:1 exclave:0];
                  [v171 addObject:v125];

                  v90 = v178;
                }
              }

              v76 = v176;
            }

            else
            {
              v117 = [v79 hasPrefix:@"com.apple.kpi."];
              v118 = *__error();
              v119 = _sa_logt();
              v120 = v119;
              if (v117)
              {
                v76 = v176;
                if (os_log_type_enabled(v119, OS_LOG_TYPE_DEBUG))
                {
                  *v186 = 138412290;
                  *v187 = v79;
                  _os_log_debug_impl(&dword_1E0E2F000, v120, OS_LOG_TYPE_DEBUG, "Ignoring kext %@", v186, 0xCu);
                }
              }

              else
              {
                v76 = v176;
                if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
                {
                  *v186 = 138412290;
                  *v187 = v79;
                  _os_log_error_impl(&dword_1E0E2F000, v120, OS_LOG_TYPE_ERROR, "No load address for kext %@, not including in load info", v186, 0xCu);
                }
              }

              *__error() = v118;
            }

            v77 = 0x1E695D000;
LABEL_134:

            ++v78;
          }

          while (v76 != v78);
          v76 = [v74 countByEnumeratingWithState:&v182 objects:buf count:16];
        }

        while (v76);
      }

      if (v152 && v171)
      {
        objc_opt_self();
        [v171 sortUsingComparator:&__block_literal_global_361];
        *v152 = [v171 copy];
      }

      v23 = 0;
      v25 = v150;
      v24 = v151;
    }

    else
    {
      v47 = *__error();
      v48 = _sa_logt();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E0E2F000, v48, OS_LOG_TYPE_ERROR, "OSKext provided no load infos", buf, 2u);
      }

      *__error() = v47;
      v23 = 0xFFFFFFFFLL;
    }

    goto LABEL_150;
  }

  v15 = CopyDyldSnapshotForPid(a1);
  if (!v15)
  {
    v17 = a7;
    v26 = kill(v14, 0);
    v18 = *__error();
    v27 = _sa_logt();
    v19 = v27;
    if (v26)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        v191 = v14;
        _os_log_debug_impl(&dword_1E0E2F000, v19, OS_LOG_TYPE_DEBUG, "[%d]: Process no longer alive, unable to inspect for load infos", buf, 8u);
      }

      *__error() = v18;
      v23 = 4294967294;
      goto LABEL_150;
    }

    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    *buf = 67109120;
    v191 = v14;
    v20 = "[%d]: Process alive, but unable to inspect for load infos via dyld introspection, trying CoreSymbolication";
    v21 = v19;
    v22 = 8;
    goto LABEL_142;
  }

  InfosForDyldSnapshot = _CopyLoadInfosForDyldSnapshot(v15, v14, 0, a2, v12, a5, a6, a7);
  dyld_process_snapshot_dispose();
  if (InfosForDyldSnapshot)
  {
    v17 = a7;
    v18 = *__error();
    v19 = _sa_logt();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
LABEL_31:

      *__error() = v18;
      SymbolicatorForLiveProcess = CreateSymbolicatorForLiveProcess(v14, a8);
      v35 = v34;
      if (!CSIsNull())
      {
        v40 = *__error();
        v41 = _sa_logt();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          v191 = v14;
          _os_log_debug_impl(&dword_1E0E2F000, v41, OS_LOG_TYPE_DEBUG, "[%d]: Inspected live process via CS", buf, 8u);
        }

        *__error() = v40;
        if (a5)
        {
          *a5 = [SASharedCache sharedCacheWithCSSymbolicator:v35 dataGatheringOptions:a2];
        }

        if (v12)
        {
          v42 = objc_opt_self();
          *v12 = [SABinaryLoadInfo binaryLoadInfoForSymbolicator:v42 isKernel:SymbolicatorForLiveProcess dataGatheringOptions:v35 excludeRange:0 ignoreSharedCache:a2];
        }

        if (v17)
        {
          *v17 = CSSymbolicatorGetArchitecture();
        }

        if (a6)
        {
          AOutSymbolOwner = CSSymbolicatorGetAOutSymbolOwner();
          v45 = v44;
          if ((CSIsNull() & 1) == 0)
          {
            v46 = [SABinary binaryWithSymbolOwner:v45 fromDisk:0];
            if (v46)
            {
              v46 = v46;
              *a6 = v46;
            }
          }
        }

        goto LABEL_148;
      }

      v36 = kill(v14, 0);
      v37 = *__error();
      v38 = _sa_logt();
      v39 = v38;
      if (v36)
      {
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          v191 = v14;
          _os_log_debug_impl(&dword_1E0E2F000, v39, OS_LOG_TYPE_DEBUG, "[%d]: Process no longer alive, unable to inspect for load infos", buf, 8u);
        }
      }

      else if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v191 = v14;
        _os_log_error_impl(&dword_1E0E2F000, v39, OS_LOG_TYPE_ERROR, "[%d]: Process alive, but unable to inspect for load infos via CoreSymbolication", buf, 8u);
      }

      *__error() = v37;
      v23 = 0xFFFFFFFFLL;
      goto LABEL_150;
    }

    *buf = 67109376;
    v191 = v14;
    v192 = 1024;
    LODWORD(v193) = InfosForDyldSnapshot;
    v20 = "[%d]: Failed to get load infos via dyld introspection (%d), trying CoreSymbolication";
    v21 = v19;
    v22 = 14;
LABEL_142:
    _os_log_error_impl(&dword_1E0E2F000, v21, OS_LOG_TYPE_ERROR, v20, buf, v22);
    goto LABEL_31;
  }

  if (SACompareDyldToCSLevel() < 1)
  {
    goto LABEL_149;
  }

  v158 = CreateSymbolicatorForLiveProcess(v14, a8);
  v160 = v28;
  v29 = CSIsNull();
  v30 = *__error();
  v31 = _sa_logt();
  v32 = v31;
  if (v29)
  {
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v191 = v14;
      _os_log_error_impl(&dword_1E0E2F000, v32, OS_LOG_TYPE_ERROR, "[%d]: Unable to inspect live process via CS to compare to dyld", buf, 8u);
    }

    v23 = 0;
    *__error() = v30;
    goto LABEL_150;
  }

  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v191 = v14;
    _os_log_debug_impl(&dword_1E0E2F000, v32, OS_LOG_TYPE_DEBUG, "[%d]: Inspected live process via CS to compare to dyld", buf, 8u);
  }

  *__error() = v30;
  v156 = v14;
  if (a5)
  {
    v49 = [SASharedCache sharedCacheWithCSSymbolicator:v158 dataGatheringOptions:v160, a2];
    if (v49 != *a5)
    {
      v140 = *__error();
      v141 = _sa_logt();
      if (os_log_type_enabled(v141, OS_LOG_TYPE_FAULT))
      {
        v144 = [v49 debugDescription];
        v145 = [*a5 debugDescription];
        *buf = 67109634;
        v191 = v14;
        v192 = 2112;
        v193 = v144;
        v194 = 2112;
        v195 = v145;
        _os_log_fault_impl(&dword_1E0E2F000, v141, OS_LOG_TYPE_FAULT, "[%d]: CS shared cache %@ vs dyld shared cache %@", buf, 0x1Cu);
      }

      *__error() = v140;
    }
  }

  if (!v12)
  {
    goto LABEL_148;
  }

  v50 = objc_opt_self();
  v51 = [SABinaryLoadInfo binaryLoadInfoForSymbolicator:v50 isKernel:v158 dataGatheringOptions:v160 excludeRange:0 ignoreSharedCache:a2];
  v52 = [v51 count];
  if (v52 != [*v12 count])
  {
    v142 = *__error();
    v143 = _sa_logt();
    if (os_log_type_enabled(v143, OS_LOG_TYPE_FAULT))
    {
      v146 = [v51 debugDescription];
      v147 = [*v12 debugDescription];
      *buf = 67109634;
      v191 = v14;
      v192 = 2112;
      v193 = v146;
      v194 = 2112;
      v195 = v147;
      _os_log_fault_impl(&dword_1E0E2F000, v143, OS_LOG_TYPE_FAULT, "[%d]: CS load infos %@ vs dyld load infos %@", buf, 0x1Cu);
    }

    *__error() = v142;
  }

  v53 = [v51 count];
  if (v53 != [*v12 count] || !objc_msgSend(v51, "count"))
  {
    goto LABEL_147;
  }

  v54 = 0;
  while (1)
  {
    v55 = [v51 objectAtIndexedSubscript:v54];
    v56 = [v55 loadAddress];
    v57 = [*v12 objectAtIndexedSubscript:v54];
    if (v56 != [v57 loadAddress])
    {
      break;
    }

    v175 = [v51 objectAtIndexedSubscript:v54];
    v58 = [v175 binary];
    v59 = [v58 uuid];
    v60 = [*v12 objectAtIndexedSubscript:v54];
    v179 = [v60 binary];
    v177 = [v179 uuid];
    if ([v59 isEqual:?])
    {
      v14 = [v51 objectAtIndexedSubscript:v54];
      v173 = [v14 segment];
      if (v173 || ([*v12 objectAtIndexedSubscript:v54], v153 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v153, "segment"), (v154 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        [v51 objectAtIndexedSubscript:v54];
        v61 = v169 = v55;
        [v61 segment];
        v162 = v167 = v58;
        [v162 name];
        v62 = v166 = v59;
        [*v12 objectAtIndexedSubscript:v54];
        v63 = v164 = v57;
        [v63 segment];
        v64 = v51;
        v66 = v65 = v12;
        [v66 name];
        v67 = v14;
        v69 = v68 = v60;
        v172 = [v62 isEqual:v69] ^ 1;

        v60 = v68;
        v14 = v67;

        v12 = v65;
        v51 = v64;

        v57 = v164;
        v59 = v166;

        v58 = v167;
        v55 = v169;
        v70 = v173;
        if (!v173)
        {
LABEL_72:
          v71 = v51;
          v72 = v70;

          v70 = v72;
          v51 = v71;
        }

        LODWORD(v14) = v156;
        v73 = v172;
        goto LABEL_74;
      }

      v154 = 0;
      v172 = 0;
      v70 = 0;
      goto LABEL_72;
    }

    v73 = 1;
LABEL_74:

    if (v73)
    {
      goto LABEL_144;
    }

    if (++v54 >= [v51 count])
    {
      goto LABEL_147;
    }
  }

LABEL_144:
  v128 = *__error();
  v129 = _sa_logt();
  if (os_log_type_enabled(v129, OS_LOG_TYPE_FAULT))
  {
    v181 = [v51 objectAtIndexedSubscript:v54];
    v132 = [v181 debugDescription];
    v133 = [*v12 objectAtIndexedSubscript:v54];
    v134 = [v133 debugDescription];
    v135 = [v51 debugDescription];
    v136 = v12;
    v137 = v135;
    [*v136 debugDescription];
    v139 = v138 = v51;
    *buf = 67110402;
    v191 = v14;
    v192 = 2048;
    v193 = v54;
    v194 = 2112;
    v195 = v132;
    v196 = 2112;
    v197 = v134;
    v198 = 2112;
    v199 = v137;
    v200 = 2112;
    v201 = v139;
    _os_log_fault_impl(&dword_1E0E2F000, v129, OS_LOG_TYPE_FAULT, "[%d]: index %lu CS load info %@ vs dyld %@\n%@\nvs\n%@", buf, 0x3Au);

    v51 = v138;
  }

  *__error() = v128;
LABEL_147:

LABEL_148:
  CSRelease();
LABEL_149:
  v23 = 0;
LABEL_150:
  v130 = *MEMORY[0x1E69E9840];
  return v23;
}

uint64_t CreateSymbolicatorForLiveProcess(_BOOL8 a1, int a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  if (qword_1EDD03278 != -1)
  {
    dispatch_once(&qword_1EDD03278, &__block_literal_global_5);
  }

  v4 = qword_1EDD03270;
  objc_sync_enter(v4);
  v5 = qword_1EDD03270;
  v6 = [MEMORY[0x1E696AD98] numberWithInt:a1];
  LOBYTE(v5) = [v5 containsObject:v6];

  objc_sync_exit(v4);
  if ((v5 & 1) != 0 || _AvoidSuspendingPid(a1))
  {
    v7 = 0;
  }

  else
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3010000000;
    v30 = 0;
    v31 = 0;
    v29 = "";
    if (a1)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __CreateSymbolicatorForLiveProcess_block_invoke_2;
      block[3] = &unk_1E86F6F08;
      v24 = a1;
      v25 = a2 | 0x80000;
      block[4] = &v26;
      block[5] = &v32;
      v8 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, block);
      v8[2]();

      v9 = v27[4];
      v10 = v27[5];
    }

    else
    {
      v11 = CSSymbolicatorCreateWithMachKernelFlagsAndNotification();
      v12 = v27;
      v27[4] = v11;
      v12[5] = v13;
    }

    if (CSIsNull())
    {
      v14 = qword_1EDD03270;
      objc_sync_enter(v14);
      v15 = qword_1EDD03270;
      v16 = [MEMORY[0x1E696AD98] numberWithInt:a1];
      [v15 addObject:v16];

      objc_sync_exit(v14);
    }

    else if (a1)
    {
      ++_MergedGlobals_6;
      *&qword_1EDD03280 = v33[3] + *&qword_1EDD03280;
      v17 = *__error();
      v18 = _sa_logt();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v22 = *(v33 + 3);
        *buf = 67110144;
        v37 = a1;
        v38 = 2048;
        v39 = v22;
        v40 = 1024;
        v41 = _MergedGlobals_6;
        v42 = 2048;
        v43 = qword_1EDD03280;
        v44 = 2048;
        v45 = *&qword_1EDD03280 / _MergedGlobals_6;
        _os_log_debug_impl(&dword_1E0E2F000, v18, OS_LOG_TYPE_DEBUG, "[%d]: Inspected live process via cs introspection in %fs (%d totaling %fs, %fs avg)", buf, 0x2Cu);
      }

      *__error() = v17;
    }

    v7 = v27[4];
    v19 = v27[5];
    _Block_object_dispose(&v26, 8);
  }

  _Block_object_dispose(&v32, 8);
  v20 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1E0EB7360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __CreateSymbolicatorForLiveProcess_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v1 = qword_1EDD03270;
  qword_1EDD03270 = v0;
}

void __CreateSymbolicatorForLiveProcess_block_invoke_2(uint64_t a1)
{
  v2 = mach_absolute_time();
  v3 = SASecondsFromMachTimeUsingLiveTimebase(v2);
  v4 = *(a1 + 48);
  v5 = *(a1 + 52);
  v6 = CSSymbolicatorCreateWithPidFlagsAndNotification();
  v7 = *(*(a1 + 32) + 8);
  *(v7 + 32) = v6;
  *(v7 + 40) = v8;
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 32);
  v11 = *(v9 + 40);
  if ((CSIsNull() & 1) == 0)
  {
    v12 = mach_absolute_time();
    *(*(*(a1 + 40) + 8) + 24) = SASecondsFromMachTimeUsingLiveTimebase(v12) - v3;
  }
}

uint64_t CreateSymbolOwnerForUUIDAtPath(void *a1, void *a2, int a3)
{
  v111 = *MEMORY[0x1E69E9840];
  v100 = 0uLL;
  [a1 getUUIDBytes:&v100];
  v97[0] = MEMORY[0x1E69E9820];
  v97[1] = 3221225472;
  v97[2] = __CreateSymbolOwnerForUUIDAtPath_block_invoke;
  v97[3] = &__block_descriptor_52_e32___CSTypeRef_QQ_16__0__NSString_8l;
  v98 = a3 | 0x80000;
  v99 = v100;
  v73 = MEMORY[0x1E12EBE50](v97);
  v5 = (v73)[2](v73, a2);
  if (CSIsNull())
  {
    if ([a2 isAbsolutePath])
    {
      v6 = [a2 substringFromIndex:1];
    }

    else
    {
      v6 = a2;
    }

    v75 = v6;
    v7 = SAGetHomeDirectoryURL();
    v66 = v7;
    if (v7)
    {
      v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"Library" relativeToURL:v7];
      v9 = [v8 absoluteURL];
    }

    else
    {
      v9 = 0;
    }

    v74 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = [v74 URLsForDirectory:5 inDomains:3];
    v11 = v10;
    if (v9)
    {
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v93 objects:v110 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v94;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v94 != v15)
            {
              objc_enumerationMutation(v12);
            }

            if ([*(*(&v93 + 1) + 8 * i) isEqual:v9])
            {
              v11 = v12;
              goto LABEL_19;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v93 objects:v110 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v12, "count") + 1}];
      [v11 addObject:v9];
      [v11 addObjectsFromArray:v12];
LABEL_19:
    }

    v65 = v9;
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v17 = v11;
    v60 = [v17 countByEnumeratingWithState:&v89 objects:v109 count:16];
    if (v60)
    {
      v18 = *v90;
      v19 = *MEMORY[0x1E695DC30];
      v76 = *MEMORY[0x1E695DB78];
      v20 = 0x1E695D000uLL;
      v21 = 0x1E696A000uLL;
      v64 = v17;
      v59 = *v90;
      v62 = *MEMORY[0x1E695DC30];
      do
      {
        v22 = 0;
        v23 = 0x1E695D000uLL;
        do
        {
          if (*v90 != v18)
          {
            objc_enumerationMutation(v17);
          }

          v61 = v22;
          v24 = [*(v23 + 4088) fileURLWithPath:@"Developer/Xcode" isDirectory:1 relativeToURL:{*(*(&v89 + 1) + 8 * v22), v59}];
          v108 = v19;
          v25 = [*(v20 + 3784) arrayWithObjects:&v108 count:1];
          v67 = v24;
          v26 = [v74 enumeratorAtURL:v24 includingPropertiesForKeys:v25 options:1 errorHandler:0];

          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v27 = v26;
          v71 = [v27 countByEnumeratingWithState:&v85 objects:v107 count:16];
          if (v71)
          {
            v28 = *v86;
            v68 = v27;
            v63 = *v86;
            do
            {
              for (j = 0; j != v71; ++j)
              {
                if (*v86 != v28)
                {
                  objc_enumerationMutation(v27);
                }

                v30 = *(*(&v85 + 1) + 8 * j);
                v83 = 0;
                v84 = 0;
                v31 = [v30 getResourceValue:&v84 forKey:v19 error:&v83];
                v32 = v84;
                v72 = v83;
                if (v31)
                {
                  v33 = *(v21 + 3776);
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) != 0 && [v32 containsString:@"DeviceSupport"])
                  {
                    v69 = j;
                    v70 = v32;
                    v102 = v76;
                    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v102 count:1];
                    v35 = [v74 enumeratorAtURL:v30 includingPropertiesForKeys:v34 options:1 errorHandler:0];

                    v81 = 0u;
                    v82 = 0u;
                    v79 = 0u;
                    v80 = 0u;
                    v36 = v35;
                    v37 = [v36 countByEnumeratingWithState:&v79 objects:v101 count:16];
                    if (v37)
                    {
                      v38 = v37;
                      v39 = *v80;
                      do
                      {
                        v40 = 0;
                        do
                        {
                          if (*v80 != v39)
                          {
                            objc_enumerationMutation(v36);
                          }

                          v41 = *(*(&v79 + 1) + 8 * v40);
                          v77 = 0;
                          v78 = 0;
                          v42 = [v41 getResourceValue:&v78 forKey:v76 error:&v77];
                          v43 = v78;
                          v44 = v77;
                          if (v42)
                          {
                            objc_opt_class();
                            if ((objc_opt_isKindOfClass() & 1) != 0 && [v43 BOOLValue])
                            {
                              v45 = [*(v23 + 4088) fileURLWithPath:v75 relativeToURL:v41];
                              v46 = [v45 path];

                              if (v46 && [v74 fileExistsAtPath:v46])
                              {
                                v5 = (v73)[2](v73, v46);
                                if ((CSIsNull() & 1) == 0)
                                {
                                  goto LABEL_68;
                                }
                              }

                              else
                              {
                                v49 = *(v23 + 4088);
                                v50 = [v49 fileURLWithPath:@"Symbols" relativeToURL:v41];
                                v51 = [v49 fileURLWithPath:v75 relativeToURL:v50];
                                v52 = [v51 path];

                                if (v52)
                                {
                                  if ([v74 fileExistsAtPath:v52])
                                  {
                                    v5 = v73[2](v73, v52);
                                    if (!CSIsNull())
                                    {
                                      v46 = v52;
LABEL_68:

                                      v17 = v64;
                                      goto LABEL_69;
                                    }
                                  }

                                  v46 = v52;
                                }

                                else
                                {
                                  v46 = 0;
                                }
                              }

                              v23 = 0x1E695D000;
                            }
                          }

                          else
                          {
                            v47 = *__error();
                            v48 = _sa_logt();
                            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 138412546;
                              v104 = v41;
                              v105 = 2112;
                              v106 = v44;
                              _os_log_error_impl(&dword_1E0E2F000, v48, OS_LOG_TYPE_ERROR, "Error getting isDir for %@: %@", buf, 0x16u);
                            }

                            *__error() = v47;
                          }

                          ++v40;
                        }

                        while (v38 != v40);
                        v53 = [v36 countByEnumeratingWithState:&v79 objects:v101 count:16];
                        v38 = v53;
                      }

                      while (v53);
                    }

                    v19 = v62;
                    v28 = v63;
                    v21 = 0x1E696A000;
                    v27 = v68;
                    j = v69;
                    v32 = v70;
                  }
                }

                else
                {
                  v54 = j;
                  v55 = *__error();
                  v56 = _sa_logt();
                  if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v104 = v30;
                    v105 = 2112;
                    v106 = v72;
                    _os_log_error_impl(&dword_1E0E2F000, v56, OS_LOG_TYPE_ERROR, "Error getting name for %@: %@", buf, 0x16u);
                  }

                  *__error() = v55;
                  j = v54;
                }
              }

              v71 = [v27 countByEnumeratingWithState:&v85 objects:v107 count:16];
              v20 = 0x1E695D000;
            }

            while (v71);
          }

          v22 = v61 + 1;
          v17 = v64;
          v18 = v59;
        }

        while (v61 + 1 != v60);
        v5 = 0;
        v60 = [v64 countByEnumeratingWithState:&v89 objects:v109 count:16];
      }

      while (v60);
    }

    else
    {
      v5 = 0;
    }

LABEL_69:
  }

  v57 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t __CreateSymbolOwnerForUUIDAtPath_block_invoke(uint64_t a1, id a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3010000000;
  v14 = 0;
  v15 = 0;
  v13 = "";
  v4 = a2;
  [a2 UTF8String];
  v5 = *(a1 + 32);
  v9 = *(a1 + 36);
  CSSymbolicatorForeachSymbolicatorWithPathFlagsAndNotification();
  v6 = v11[4];
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);
  return v6;
}

void sub_1E0EB7DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CreateSymbolOwnerForUUIDAtPath_block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  result = CSIsNull();
  if (result)
  {
    CSSymbolicatorGetSymbolOwnerWithCFUUIDBytesAtTime();
    result = CSIsNull();
    if ((result & 1) == 0)
    {
      result = CSRetain();
      v6 = *(*(a1 + 32) + 8);
      *(v6 + 32) = result;
      *(v6 + 40) = v7;
    }
  }

  return result;
}

id SAGetHomeDirectoryURL()
{
  v0 = NSHomeDirectoryForUser(&cfstr_Mobile.isa);
  if (v0)
  {
    v1 = [MEMORY[0x1E695DFF8] fileURLWithPath:v0 isDirectory:1];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t CreateSymbolOwnerForArchitectureAtPath(uint64_t a1, id a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    [a2 UTF8String];
    CSSymbolicatorCreateWithPathArchitectureFlagsAndNotification();
    SymbolOwner = CSSymbolicatorGetSymbolOwner();
    if (CSIsNull())
    {
      v4 = *__error();
      v5 = _sa_logt();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412802;
        *&buf[4] = a2;
        *&buf[12] = 2048;
        *&buf[14] = CSSymbolicatorGetSymbolOwnerCountAtTime();
        *&buf[22] = 2082;
        FamilyName = CSArchitectureGetFamilyName();
        _os_log_fault_impl(&dword_1E0E2F000, v5, OS_LOG_TYPE_FAULT, "No symbol owner at %@: %zu exist for arch %{public}s", buf, 0x20u);
      }

      *__error() = v4;
    }

    else
    {
      SymbolOwner = CSRetain();
    }

    CSRelease();
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3010000000;
    v23 = 0;
    v24 = 0;
    FamilyName = "";
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v6 = a2;
    [a2 UTF8String];
    CSSymbolicatorForeachSymbolicatorWithPathFlagsAndNotification();
    if (*(v14 + 6) != 1)
    {
      v7 = *__error();
      v8 = _sa_logt();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v12 = *(v14 + 6);
        *v17 = 138412546;
        v18 = a2;
        v19 = 1024;
        v20 = v12;
        _os_log_error_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_ERROR, "Unable to uniquely identify symbol owner at %@: %d symbol owners exist", v17, 0x12u);
      }

      *__error() = v7;
    }

    SymbolOwner = *(*&buf[8] + 32);
    v9 = *(*&buf[8] + 40);
    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(buf, 8);
  }

  v10 = *MEMORY[0x1E69E9840];
  return SymbolOwner;
}

void sub_1E0EB81D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __CreateSymbolOwnerForArchitectureAtPath_block_invoke(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (*(*(a1[5] + 8) + 24))
  {
    v2 = *(a1[6] + 8);
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    result = CSIsNull();
    if ((result & 1) == 0)
    {
      v6 = *(a1[6] + 8);
      v7 = *(v6 + 32);
      v8 = *(v6 + 40);
      result = CSRelease();
      v9 = *(a1[6] + 8);
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
    }
  }

  else
  {
    SymbolOwner = CSSymbolicatorGetSymbolOwner();
    v11 = *(a1[6] + 8);
    *(v11 + 32) = SymbolOwner;
    *(v11 + 40) = v12;
    v13 = *(a1[6] + 8);
    v14 = *(v13 + 32);
    v15 = *(v13 + 40);
    if (CSIsNull())
    {
      v16 = *__error();
      v17 = _sa_logt();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        v24 = a1[4];
        v25 = 138412546;
        v26 = v24;
        v27 = 2048;
        SymbolOwnerCountAtTime = CSSymbolicatorGetSymbolOwnerCountAtTime();
        _os_log_fault_impl(&dword_1E0E2F000, v17, OS_LOG_TYPE_FAULT, "No symbol owner at %@: %zu exist", &v25, 0x16u);
      }

      result = __error();
      *result = v16;
    }

    else
    {
      v18 = *(a1[6] + 8);
      v19 = *(v18 + 32);
      v20 = *(v18 + 40);
      result = CSRetain();
      v21 = *(a1[6] + 8);
      *(v21 + 32) = result;
      *(v21 + 40) = v22;
    }
  }

  ++*(*(a1[5] + 8) + 24);
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CreateSymbolOwnerForExclaveUUID(void *a1)
{
  v3[0] = 0;
  v3[1] = 0;
  [a1 getUUIDBytes:v3];
  CSSymbolicatorCreateWithExclaveUUIDAndFlags();
  SymbolOwner = 0;
  if ((CSIsNull() & 1) == 0)
  {
    SymbolOwner = CSSymbolicatorGetSymbolOwner();
    if ((CSIsNull() & 1) == 0)
    {
      CSRetain();
    }

    CSRelease();
  }

  return SymbolOwner;
}

uint64_t _SASpawnPlatformBinaryWithSigningIdentifier(const char *a1, void *a2, char *const *a3, char **a4, cpu_type_t *a5, void *a6, int a7, _DWORD *a8, unsigned __int8 a9, _DWORD *a10, unsigned __int8 a11, _DWORD *a12)
{
  v98 = *MEMORY[0x1E69E9840];
  *v97 = -1;
  *v95 = -1;
  *v96 = -1;
  if (a8 && a7)
  {
    v59 = *__error();
    v60 = _sa_logt();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v60, OS_LOG_TYPE_ERROR, "Cannot specify inheritStdout and provide stdout_out", buf, 2u);
    }

    *__error() = v59;
    _SASetCrashLogMessage(761, "Cannot specify inheritStdout and provide stdout_out", v61, v62, v63, v64, v65, v66, v85);
    _os_crash();
    __break(1u);
    goto LABEL_113;
  }

  v15 = a10;
  v14 = a9;
  if (a10)
  {
    v21 = a9 == 0;
  }

  else
  {
    v21 = 1;
  }

  if (!v21)
  {
LABEL_113:
    v67 = *__error();
    v68 = _sa_logt();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v68, OS_LOG_TYPE_ERROR, "Cannot specify inheritStderr and provide stderr_out", buf, 2u);
    }

    *__error() = v67;
    _SASetCrashLogMessage(762, "Cannot specify inheritStderr and provide stderr_out", v69, v70, v71, v72, v73, v74, v85);
    _os_crash();
    __break(1u);
    goto LABEL_116;
  }

  v12 = a12;
  v13 = a11;
  if (a12)
  {
    v22 = a11 == 0;
  }

  else
  {
    v22 = 1;
  }

  if (!v22)
  {
LABEL_116:
    v32 = *__error();
    v75 = _sa_logt();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v75, OS_LOG_TYPE_ERROR, "Cannot specify inheritStdin and provide stdin_out", buf, 2u);
    }

    *__error() = v32;
    _SASetCrashLogMessage(763, "Cannot specify inheritStdin and provide stdin_out", v76, v77, v78, v79, v80, v81, v85);
    _os_crash();
    __break(1u);
    goto LABEL_119;
  }

  v86 = a1;
  v87 = a3;
  __envp = a4;
  v92 = 0;
  v23 = posix_spawn_file_actions_init(&v92);
  if (v23)
  {
    v24 = v23;
    v25 = *__error();
    v26 = _sa_logt();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v94) = v24;
      _os_log_error_impl(&dword_1E0E2F000, v26, OS_LOG_TYPE_ERROR, "Unable to create posix file actions: %{errno}d", buf, 8u);
    }

    *__error() = v25;
LABEL_74:
    if ((v97[0] & 0x80000000) == 0)
    {
      close(v97[0]);
    }

    if ((v97[1] & 0x80000000) == 0)
    {
      close(v97[1]);
    }

    if ((v96[0] & 0x80000000) == 0)
    {
      close(v96[0]);
    }

    if ((v96[1] & 0x80000000) == 0)
    {
      close(v96[1]);
    }

    v47 = v95[0];
    if (v95[0] < 0)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

  if (a7)
  {
    v27 = posix_spawn_file_actions_addinherit_np(&v92, 1);
    if (v27)
    {
      v24 = v27;
      v28 = *__error();
      v29 = _sa_logt();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v94) = v24;
        v30 = "Unable to inherit stdout: %{errno}d";
LABEL_43:
        _os_log_error_impl(&dword_1E0E2F000, v29, OS_LOG_TYPE_ERROR, v30, buf, 8u);
        goto LABEL_44;
      }

      goto LABEL_44;
    }

LABEL_32:
    v32 = -1;
    goto LABEL_33;
  }

  if (a8)
  {
    if (pipe(v97))
    {
      v24 = *__error();
      v28 = *__error();
      v29 = _sa_logt();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v94) = v24;
        v30 = "Unable to open pipe: %{errno}d";
        goto LABEL_43;
      }

LABEL_44:

      *__error() = v28;
      posix_spawn_file_actions_destroy(&v92);
      goto LABEL_74;
    }

    v36 = posix_spawn_file_actions_adddup2(&v92, v97[1], 1);
    if (v36)
    {
      v24 = v36;
      v28 = *__error();
      v29 = _sa_logt();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v94) = v24;
        v30 = "Unable to set posix file dup2: %{errno}d";
        goto LABEL_43;
      }

      goto LABEL_44;
    }

    goto LABEL_32;
  }

  v31 = open("/dev/null", 1);
  if (v31 < 0)
  {
    v24 = *__error();
    v28 = *__error();
    v29 = _sa_logt();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v94) = v24;
      v30 = "Unable to open /dev/null: %{errno}d";
      goto LABEL_43;
    }

    goto LABEL_44;
  }

  v32 = v31;
  v33 = posix_spawn_file_actions_adddup2(&v92, v31, 1);
  if (v33)
  {
    v24 = v33;
    v34 = *__error();
    v35 = _sa_logt();
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_49;
    }

    *buf = 67109120;
    LODWORD(v94) = v24;
    goto LABEL_109;
  }

LABEL_33:
  if (a9)
  {
    v37 = posix_spawn_file_actions_addinherit_np(&v92, 2);
    if (v37)
    {
      v24 = v37;
      v38 = *__error();
      v39 = _sa_logt();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v94) = v24;
        v40 = "Unable to inherit stderr: %{errno}d";
LABEL_70:
        _os_log_error_impl(&dword_1E0E2F000, v39, OS_LOG_TYPE_ERROR, v40, buf, 8u);
        goto LABEL_71;
      }

      goto LABEL_71;
    }

    goto LABEL_53;
  }

  if (!a10)
  {
    if (v32 < 0)
    {
      v32 = open("/dev/null", 1);
      if (v32 < 0)
      {
        v24 = *__error();
        v28 = *__error();
        v29 = _sa_logt();
        if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_44;
        }

        *buf = 67109120;
        LODWORD(v94) = v24;
        v30 = "Unable to open /dev/null: %{errno}d";
        goto LABEL_43;
      }
    }

    v41 = posix_spawn_file_actions_adddup2(&v92, v32, 2);
    if (!v41)
    {
      goto LABEL_53;
    }

    v24 = v41;
    v34 = *__error();
    v35 = _sa_logt();
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
LABEL_49:

      *__error() = v34;
      posix_spawn_file_actions_destroy(&v92);
LABEL_73:
      close(v32);
      goto LABEL_74;
    }

    *buf = 67109120;
    LODWORD(v94) = v24;
LABEL_109:
    _os_log_error_impl(&dword_1E0E2F000, v35, OS_LOG_TYPE_ERROR, "Unable to set posix file dup2: %{errno}d", buf, 8u);
    goto LABEL_49;
  }

  if (pipe(v96))
  {
    v24 = *__error();
    v38 = *__error();
    v39 = _sa_logt();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v94) = v24;
      v40 = "Unable to open pipe: %{errno}d";
      goto LABEL_70;
    }

LABEL_71:

    *__error() = v38;
    goto LABEL_72;
  }

  v42 = posix_spawn_file_actions_adddup2(&v92, v96[1], 2);
  if (v42)
  {
    v24 = v42;
    v38 = *__error();
    v39 = _sa_logt();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v94) = v24;
      v40 = "Unable to set posix file dup2: %{errno}d";
      goto LABEL_70;
    }

    goto LABEL_71;
  }

LABEL_53:
  if (a11)
  {
    v43 = posix_spawn_file_actions_addinherit_np(&v92, 0);
    if (v43)
    {
      v24 = v43;
      v38 = *__error();
      v39 = _sa_logt();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v94) = v24;
        v40 = "Unable to inherit stdin: %{errno}d";
        goto LABEL_70;
      }

      goto LABEL_71;
    }
  }

  else if (a12)
  {
    if (pipe(v95))
    {
      v24 = *__error();
      v38 = *__error();
      v39 = _sa_logt();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v94) = v24;
        v40 = "Unable to open pipe: %{errno}d";
        goto LABEL_70;
      }

      goto LABEL_71;
    }

    v45 = posix_spawn_file_actions_adddup2(&v92, v95[0], 0);
    if (v45)
    {
      v24 = v45;
      v38 = *__error();
      v39 = _sa_logt();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v94) = v24;
        v40 = "Unable to set posix file dup2: %{errno}d";
        goto LABEL_70;
      }

      goto LABEL_71;
    }
  }

  else
  {
    v44 = posix_spawn_file_actions_addclose(&v92, 0);
    if (v44)
    {
      v24 = v44;
      v38 = *__error();
      v39 = _sa_logt();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v94) = v24;
        v40 = "Unable to set posix close: %{errno}d";
        goto LABEL_70;
      }

      goto LABEL_71;
    }
  }

  v91 = 0;
  v46 = posix_spawnattr_init(&v91);
  if (v46)
  {
    v24 = v46;
    v38 = *__error();
    v39 = _sa_logt();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v94) = v24;
      v40 = "Unable to create posix attr: %{errno}d";
      goto LABEL_70;
    }

    goto LABEL_71;
  }

  if (a5)
  {
    v50 = posix_spawnattr_setbinpref_np(&v91, 1uLL, a5, 0);
    if (v50)
    {
      v24 = v50;
      v51 = *__error();
      v52 = _sa_logt();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v94) = v24;
        v83 = "Unable to set posix arch preference: %{errno}d";
        goto LABEL_144;
      }

LABEL_91:

      *__error() = v51;
LABEL_107:
      posix_spawnattr_destroy(&v91);
LABEL_72:
      posix_spawn_file_actions_destroy(&v92);
      if (v32 < 0)
      {
        goto LABEL_74;
      }

      goto LABEL_73;
    }
  }

  if (a6)
  {
    v14 = 16449;
  }

  else
  {
    v14 = 16385;
  }

  a6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{&unk_1F5BDCA00, @"validation-category", 0}];
  if (a2)
  {
    v53 = SANSStringForCString(a2);
    [a6 setObject:v53 forKey:@"signing-identifier"];
  }

  v90 = 0;
  a2 = [MEMORY[0x1E69E5150] withVersion:1 withConstraintCategory:0 withRequirements:a6 withError:&v90];
  v13 = v90;
  if (!a2)
  {
    v57 = *__error();
    v58 = _sa_logt();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      v84 = [v13 description];
      *buf = 138412290;
      v94 = v84;
      _os_log_error_impl(&dword_1E0E2F000, v58, OS_LOG_TYPE_ERROR, "Unable to set code requirement: %@", buf, 0xCu);
    }

    *__error() = v57;
    v24 = 76;
    goto LABEL_107;
  }

  a5 = [a2 externalRepresentation];
  [(cpu_type_t *)a5 bytes];
  [(cpu_type_t *)a5 length];
  v54 = amfi_launch_constraint_set_spawnattr();
  if (v54)
  {
    v24 = v54;
    v55 = *__error();
    v56 = _sa_logt();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v94) = v24;
      _os_log_error_impl(&dword_1E0E2F000, v56, OS_LOG_TYPE_ERROR, "Unable to set amfi posix launch constraint: %{errno}d", buf, 8u);
    }

    *__error() = v55;
    goto LABEL_107;
  }

LABEL_119:

  v82 = posix_spawnattr_setflags(&v91, v14);
  if (v82)
  {
    v24 = v82;
    v51 = *__error();
    v52 = _sa_logt();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v94) = v24;
      v83 = "Unable to set posix flags: %{errno}d";
LABEL_144:
      _os_log_error_impl(&dword_1E0E2F000, v52, OS_LOG_TYPE_ERROR, v83, buf, 8u);
      goto LABEL_91;
    }

    goto LABEL_91;
  }

  v89 = -1;
  v24 = posix_spawn(&v89, v86, &v92, &v91, v87, __envp);
  posix_spawnattr_destroy(&v91);
  posix_spawn_file_actions_destroy(&v92);
  if ((v32 & 0x80000000) == 0)
  {
    close(v32);
  }

  if ((v97[1] & 0x80000000) == 0)
  {
    close(v97[1]);
    v97[1] = -1;
  }

  if ((v96[1] & 0x80000000) == 0)
  {
    close(v96[1]);
    v96[1] = -1;
  }

  if ((v95[0] & 0x80000000) == 0)
  {
    close(v95[0]);
    v95[0] = -1;
  }

  if (v24 || v89 < 1)
  {
    if ((v97[0] & 0x80000000) == 0)
    {
      close(v97[0]);
    }

    v47 = v96[0];
    if (v96[0] < 0)
    {
      goto LABEL_84;
    }

LABEL_83:
    close(v47);
LABEL_84:
    if ((v95[1] & 0x80000000) == 0)
    {
      close(v95[1]);
    }

    *__error() = v24;
    result = 0xFFFFFFFFLL;
    goto LABEL_87;
  }

  if (a8)
  {
    *a8 = v97[0];
  }

  if (v15)
  {
    *v15 = v96[0];
  }

  if (v12)
  {
    *v12 = v95[1];
  }

  *__error() = 0;
  result = v89;
LABEL_87:
  v49 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SASpawnPlatformBinaryWithSigningIdentifier(const char *a1, void *a2, char *const *a3, char **a4, cpu_type_t *a5, int a6, _DWORD *a7, unsigned __int8 a8, _DWORD *a9, unsigned __int8 a10, _DWORD *a11)
{
  if (a2)
  {
    return _SASpawnPlatformBinaryWithSigningIdentifier(a1, a2, a3, a4, a5, 0, a6, a7, a8, a9, a10, a11);
  }

  v12 = *__error();
  v13 = _sa_logt();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E0E2F000, v13, OS_LOG_TYPE_ERROR, "SASpawnPlatformBinaryWithSigningIdentifier requires a signing identifier", buf, 2u);
  }

  *__error() = v12;
  _SASetCrashLogMessage(1055, "SASpawnPlatformBinaryWithSigningIdentifier requires a signing identifier", v14, v15, v16, v17, v18, v19, v20);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t __SASymbolOwnerForeachSegment_block_invoke(void *a1)
{
  Name = CSRegionGetName();
  result = SACompareDyldToCSLevel();
  if (result >= 2)
  {
    Range = CSRegionGetRange();
    v6 = v5;
    v7 = Range + v5;
    v8 = a1[5];
    v9 = a1[6];
    v10 = CSSymbolOwnerGetName();
    result = printf("CS   %#18llx - %#18llx (%#10llx) %16s %s\n", Range, v7, v6, Name, v10);
  }

  if (Name)
  {
    result = SAShouldIgnoreSegmentWithCName(Name);
    if ((result & 1) == 0)
    {
      v11 = *(a1[4] + 16);

      return v11();
    }
  }

  return result;
}

BOOL SASymbolOwnerIsContiguous(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  BaseAddress = CSSymbolOwnerGetBaseAddress();
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = -1;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  SASymbolOwnerForeachSegment();
  if (BaseAddress && BaseAddress != v26[3])
  {
    v7 = *__error();
    v8 = _sa_logt();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      Name = CSSymbolOwnerGetName();
      v15 = v26[3];
      CSSymbolOwnerGetSegmentWithAddress();
      v16 = CSRegionGetName();
      *buf = 136315906;
      v34 = Name;
      v35 = 2048;
      v36 = BaseAddress;
      v37 = 2048;
      v38 = v15;
      v39 = 2080;
      v40 = v16;
      _os_log_debug_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_DEBUG, "SymbolOwner %s base address 0x%llx != start address 0x%llx for segment %s", buf, 0x2Au);
    }

    *__error() = v7;
  }

  if (a3)
  {
    v9 = v26[3];
    v10 = v22[3] - v9;
    *a3 = v9;
    a3[1] = v10;
  }

  if (a4)
  {
    *a4 = v30[3];
  }

  v11 = BaseAddress == v26[3] && v18[3] == v22[3] - BaseAddress;
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

unint64_t __SASymbolOwnerIsContiguous_block_invoke(void *a1)
{
  ++*(*(a1[4] + 8) + 24);
  result = CSRegionGetRange();
  v4 = *(a1[5] + 8);
  if (*(v4 + 24) < result + v3)
  {
    *(v4 + 24) = result + v3;
  }

  v5 = *(a1[6] + 8);
  if (*(v5 + 24) > result)
  {
    *(v5 + 24) = result;
  }

  *(*(a1[7] + 8) + 24) += v3;
  return result;
}

uint64_t SAArchitectureForTranslatedTask(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (CSArchitectureIsArm64())
    {
      return 0x301000007;
    }

    else if ((CSArchitectureIsX86_64() & 1) == 0)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __SAArchitectureForTranslatedTask_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = v1;
      if (SAArchitectureForTranslatedTask_onceToken != -1)
      {
        dispatch_once(&SAArchitectureForTranslatedTask_onceToken, block);
      }

      return 0;
    }
  }

  return v1;
}

int *__SAArchitectureForTranslatedTask_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *__error();
  v3 = _sa_logt();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 136315138;
    FamilyName = CSArchitectureGetFamilyName();
    _os_log_error_impl(&dword_1E0E2F000, v3, OS_LOG_TYPE_ERROR, "Unknown translation architecture %s", &v7, 0xCu);
  }

  result = __error();
  *result = v2;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

id DictGetArray(void *a1, uint64_t a2)
{
  objc_opt_class();

  return _DictGet(a1, a2);
}

uint64_t SAResampleThreads(pid_t a1, void *a2, uint64_t a3)
{
  v66 = *MEMORY[0x1E69E9840];
  if (getpid() != a1)
  {
    if (SAResampleThreads_timedOut)
    {
      v6 = 49;
      goto LABEL_22;
    }

    context = objc_autoreleasePoolPush();
    target_task = 0;
    v7 = *MEMORY[0x1E69E9A60];
    v6 = task_read_for_pid();
    if (v6)
    {
      if (!kill(a1, 0))
      {
        v8 = *__error();
        v9 = _sa_logt();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *v60 = 67109376;
          *&v60[4] = a1;
          LOWORD(v61) = 1024;
          *(&v61 + 2) = v6;
          _os_log_error_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_ERROR, "[%d] task_read_for_pid failed: %d", v60, 0xEu);
        }

        *__error() = v8;
      }

      goto LABEL_21;
    }

    v34 = [objc_alloc(MEMORY[0x1E69D4F40]) initWithTask:target_task options:96];
    if (v34)
    {
      act_list = 0;
      act_listCnt = 0;
      v6 = task_threads(target_task, &act_list, &act_listCnt);
      if (!v6)
      {
        if (act_listCnt)
        {
          v16 = 0;
          v6 = 0;
          v33 = 1;
          do
          {
            v17 = act_list[v16];
            if (SAResampleThreads_timedOut == 1)
            {
              mach_port_deallocate(*MEMORY[0x1E69E9A60], act_list[v16]);
            }

            else
            {
              *thread_info_out = 0;
              v48 = 0;
              v49 = 0;
              thread_info_outCnt = 6;
              if (thread_info(v17, 4u, thread_info_out, &thread_info_outCnt) || (v18 = *thread_info_out, [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*thread_info_out], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(a2, "containsObject:", v19), v19, !v20))
              {
                mach_port_deallocate(*MEMORY[0x1E69E9A60], v17);
              }

              else
              {
                *v60 = 0;
                v61 = v60;
                v62 = 0x3032000000;
                v63 = __Block_byref_object_copy__3;
                v64 = __Block_byref_object_dispose__3;
                v65 = 0;
                v42 = 0;
                v43 = &v42;
                v44 = 0x2020000000;
                v45 = 0;
                block[0] = MEMORY[0x1E69E9820];
                block[1] = 3221225472;
                block[2] = __SAResampleThreads_block_invoke;
                block[3] = &unk_1E86F7018;
                v38 = v60;
                v37 = v34;
                v39 = &v42;
                v40 = v17;
                v41 = target_task;
                v21 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, block);
                v22 = dispatch_get_global_queue(33, 0);
                dispatch_async(v22, v21);

                v23 = dispatch_time(0, 1000000000);
                if (dispatch_block_wait(v21, v23))
                {
                  SAResampleThreads_timedOut = 1;
                  proc_name(a1, buffer, 0x21u);
                  v24 = *__error();
                  v25 = _sa_logt();
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315650;
                    v54 = buffer;
                    v55 = 1024;
                    v56 = a1;
                    v57 = 2048;
                    v58 = v18;
                    _os_log_error_impl(&dword_1E0E2F000, v25, OS_LOG_TYPE_ERROR, "Timed out resampling %s [%d] thread 0x%llx", buf, 0x1Cu);
                  }

                  *__error() = v24;
                  v26 = (v43 + 3);
                  __swp(v26, v26);
                  if (v26)
                  {
                    v27 = *__error();
                    v28 = _sa_logt();
                    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_error_impl(&dword_1E0E2F000, v28, OS_LOG_TYPE_ERROR, "Timed out sampler, but lost race", buf, 2u);
                    }

                    *__error() = v27;
                    mach_port_deallocate(*MEMORY[0x1E69E9A60], v17);
                  }

                  else
                  {
                    v33 = 0;
                  }

                  v6 = 49;
                }

                else
                {
                  if ((v43[3] & 1) == 0)
                  {
                    v31 = *__error();
                    oslog = _sa_logt();
                    if (os_log_type_enabled(oslog, OS_LOG_TYPE_FAULT))
                    {
                      *buffer = 0;
                      _os_log_fault_impl(&dword_1E0E2F000, oslog, OS_LOG_TYPE_FAULT, "racebit not true", buffer, 2u);
                    }

                    *__error() = v31;
                  }

                  mach_port_deallocate(*MEMORY[0x1E69E9A60], v17);
                  v29 = [*(v61 + 5) backtrace];
                  v30 = [*(v61 + 5) backtraceLength];
                  if (v29 && v30)
                  {
                    (*(a3 + 16))(a3, v18, v29, v30);
                  }
                }

                _Block_object_dispose(&v42, 8);
                _Block_object_dispose(v60, 8);
              }
            }

            ++v16;
          }

          while (v16 < act_listCnt);
          mach_vm_deallocate(*MEMORY[0x1E69E9A60], act_list, 4 * act_listCnt);
          if ((v33 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        else
        {
          mach_vm_deallocate(*MEMORY[0x1E69E9A60], act_list, 0);
          v6 = 0;
        }

LABEL_19:
        mach_port_deallocate(*MEMORY[0x1E69E9A60], target_task);
LABEL_20:

LABEL_21:
        objc_autoreleasePoolPop(context);
        goto LABEL_22;
      }

      v10 = *__error();
      v11 = _sa_logt();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v60 = 67109376;
        *&v60[4] = a1;
        LOWORD(v61) = 1024;
        *(&v61 + 2) = v6;
        _os_log_error_impl(&dword_1E0E2F000, v11, OS_LOG_TYPE_ERROR, "[%d] task_threads failed: %d", v60, 0xEu);
      }

      v12 = __error();
    }

    else
    {
      v10 = *__error();
      v13 = _sa_logt();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v60 = 67109120;
        *&v60[4] = a1;
        _os_log_error_impl(&dword_1E0E2F000, v13, OS_LOG_TYPE_ERROR, "[%d] unable to create VMUSampler", v60, 8u);
      }

      v12 = __error();
      v6 = 0;
    }

    *v12 = v10;
    goto LABEL_19;
  }

  v6 = 16;
LABEL_22:
  v14 = *MEMORY[0x1E69E9840];
  return v6;
}