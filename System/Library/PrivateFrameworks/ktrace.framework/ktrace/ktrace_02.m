uint64_t ktariadne_read_times(uint64_t a1, void *a2, void *a3, void *a4, _DWORD *a5, _DWORD *a6)
{
  if (*(*a1 + 20) != 5 || ktrace_chunk_tag(a1) != 20482)
  {
    return 0;
  }

  v12 = ktrace_chunk_copy_plist(a1);
  if (v12)
  {
    v13 = v12;
    Value = CFDictionaryGetValue(v12, @"MachAbsoluteTime");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberSInt64Type, a2);
      if (!a3)
      {
        goto LABEL_14;
      }
    }

    else
    {
      *a6 = 45;
      if (!a3)
      {
        goto LABEL_14;
      }
    }

    v19 = CFDictionaryGetValue(v13, @"ContinuousTimeOffset");
    if (!v19)
    {
      *a6 = 45;
      if (a4)
      {
LABEL_15:
        v20 = CFDictionaryGetValue(v13, @"SecondsSinceEpoch");
        if (v20)
        {
          valuePtr = 0.0;
          CFNumberGetValue(v20, kCFNumberDoubleType, &valuePtr);
          v23 = 0.0;
          v21 = modf(valuePtr, &v23);
          *a4 = v23;
          a4[1] = (v21 * 1000000000.0);
        }

        else
        {
          *a6 = 45;
        }
      }

LABEL_20:
      if (a5)
      {
        v22 = CFDictionaryGetValue(v13, @"SecondsFromGMT");
        if (v22)
        {
          valuePtr = 0.0;
          CFNumberGetValue(v22, kCFNumberDoubleType, &valuePtr);
          *a5 = (valuePtr / -60.0);
        }

        else
        {
          *a6 = 45;
        }
      }

      CFRelease(v13);
      return 1;
    }

    CFNumberGetValue(v19, kCFNumberSInt64Type, a3);
LABEL_14:
    if (a4)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  v16 = *__error();
  ktrace_log_init();
  v17 = ktrace_file_log;
  if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
  {
    ktariadne_read_times_cold_1(v16, v17);
  }

  v18 = __error();
  result = 0;
  *v18 = v16;
  return result;
}

uint64_t kttimesync_init(uint64_t a1, uint64_t a2, int a3)
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 0;
  if (a2)
  {
    ktrace_file_timebase(a2, (a1 + 16), (a1 + 20));
    v25 = 0;
    v26 = &v25;
    v27 = 0x2000000000;
    v28 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x2000000000;
    v24 = 0;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 0x40000000;
    v20[2] = __kttimesync_init_block_invoke;
    v20[3] = &unk_27886DD58;
    v20[4] = &v25;
    v20[5] = &v21;
    v20[7] = &v33;
    v20[8] = a1;
    v20[6] = &v29;
    v6 = ktrace_file_iterate(a2, 0, v20);
    if (*(v26 + 6))
    {
      v7 = 0;
      v8 = *(v26 + 6);
    }

    else
    {
      v8 = v6;
      if (v6)
      {
        v7 = 0;
      }

      else if (v22[3])
      {
        v7 = 0;
        v8 = 0;
      }

      else
      {
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 0x40000000;
        v19[2] = __kttimesync_init_block_invoke_2;
        v19[3] = &__block_descriptor_tmp_5;
        v19[4] = a1;
        ktrace_file_header_iterate(a2, 0, v19);
        v17 = 0;
        v18 = 0;
        v13 = ktrace_file_walltime_offset(a2, a1, &v17, (a1 + 40));
        v7 = v13 == 0;
        if (!v13)
        {
          *(a1 + 48) |= 2u;
          v14 = 1000 * v18;
          *(a1 + 24) = v17;
          *(a1 + 32) = v14;
        }

        v8 = 45;
      }
    }

    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&v25, 8);
    if (v7)
    {
      goto LABEL_23;
    }

    goto LABEL_29;
  }

  v25 = 0;
  v21 = 0;
  if (mach_get_times())
  {
    v9 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      kttimesync_init_cold_1();
    }

LABEL_12:
    *__error() = v9;
    v8 = 22;
    goto LABEL_29;
  }

  v10 = *(a1 + 48);
  v11 = v21 - v25;
  *a1 = v25;
  *(a1 + 8) = v11;
  *(a1 + 48) = v10 | 3;
  if (mach_timebase_info((a1 + 16)))
  {
    v9 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      kttimesync_init_cold_2();
    }

    goto LABEL_12;
  }

  if (!gettimeofday(0, (a1 + 40)))
  {
    *(a1 + 48) |= 4u;
LABEL_23:
    if (*(v34 + 24) == 1)
    {
      a3 = *(v30 + 24);
    }

    v8 = 0;
    if (a3)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    *(a1 + 48) = *(a1 + 48) & 0xF7 | v15;
    goto LABEL_29;
  }

  v12 = *__error();
  ktrace_log_init();
  if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
  {
    kttimesync_init_cold_3();
  }

  *__error() = v12;
  v8 = *__error();
LABEL_29:
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  return v8;
}

uint64_t __kttimesync_init_block_invoke(uint64_t a1, uint64_t *a2)
{
  if (ktrace_chunk_tag(a2) == 32787)
  {
    if (ktrace_chunk_version_major(a2) == 1)
    {
      v13 = 0u;
      v14 = 0u;
      v12 = 0u;
      v4 = ktrace_chunk_copy_data(a2, 0, &v12, 0x30uLL);
      if (v4)
      {
        *(*(*(a1 + 32) + 8) + 24) = v4;
      }

      else
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
        v8 = *(a1 + 64);
        *v8 = v12;
        *(v8 + 16) = v13;
        v9 = v14;
        *(v8 + 24) = *(&v13 + 1);
        *(v8 + 32) = v9;
        *(v8 + 40) = *(&v14 + 4);
        *(v8 + 48) = *(v8 + 48) & 0xF0 | (8 * (BYTE12(v14) & 1)) | 7;
      }
    }

    return 1;
  }

  if (ktrace_chunk_tag(a2) == 32774)
  {
    v5 = ktrace_config_create(a2);
    *(*(*(a1 + 48) + 8) + 24) = ktrace_config_kdebug_using_mach_continuous_time(v5);
    v6 = *(*(a1 + 56) + 8);
    v7 = 1;
    *(v6 + 24) = 1;
    ktrace_config_destroy(v5);
  }

  else
  {
    if (!ktariadne_read_times(a2, *(a1 + 64), (*(a1 + 64) + 8), (*(a1 + 64) + 24), (*(a1 + 64) + 40), (*(*(a1 + 32) + 8) + 24)))
    {
      return 1;
    }

    if (*(*(*(a1 + 32) + 8) + 24))
    {
      return 0;
    }

    else
    {
      *(*(a1 + 64) + 48) |= 2u;
      *(*(a1 + 64) + 48) |= 1u;
      *(*(a1 + 64) + 48) |= 4u;
      v11 = *(*(a1 + 40) + 8);
      v7 = 1;
      *(v11 + 24) = 1;
    }
  }

  return v7;
}

BOOL __kttimesync_init_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = ktrace_chunk_tag(a2);
  if (v4 == 36874)
  {
    v5 = ktrace_chunk_copy_plist(a2);
    if (v5)
    {
      v6 = v5;
      v12 = 0;
      if (dict_uint64(v5, @"mach_abs_time", &v12))
      {
        v7 = *__error();
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
        {
          __kttimesync_init_block_invoke_2_cold_1();
        }

        *__error() = v7;
      }

      else
      {
        **(a1 + 32) = v12;
        v11 = 0;
        if (!dict_uint64(v6, @"mach_cont_time", &v11))
        {
          v9 = *(a1 + 32);
          *(v9 + 8) = v11 - *v9;
          *(v9 + 48) |= 1u;
        }
      }

      CFRelease(v6);
    }

    else
    {
      v8 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
      {
        __kttimesync_init_block_invoke_2_cold_2();
      }

      *__error() = v8;
    }
  }

  return v4 != 36874;
}

void *kttimesync_append(__int128 *a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v6 = *(a1 + 3);
  v4 = *a1;
  v5 = *(a1 + 2);
  v7 = v2;
  v8 = *(a1 + 5);
  v9 = (*(a1 + 48) >> 3) & 1;
  return ktrace_file_append_chunk(a2, 32787, 1, 0, &v4, 48);
}

unint64_t machtime_to_timespec(unsigned int *a1, unint64_t a2)
{
  if (a1)
  {
    v2 = *a1;
    v3 = a1[1];
    if (v2 != v3)
    {
      a2 = v2 * a2 / v3;
    }

    return a2 / 0x3B9ACA00;
  }

  else
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  return result;
}

double kttimesync_frequency(uint64_t a1, double a2, double a3)
{
  LODWORD(a2) = *(a1 + 16);
  LODWORD(a3) = *(a1 + 20);
  return *&a2 / *&a3;
}

unint64_t kttimesync_ns_from_mach(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 20);
  if (v2 != v3)
  {
    return v2 * a2 / v3;
  }

  return a2;
}

unint64_t kttimesync_abs_from_cont(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t kttimesync_timestamp_from_ns(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 20);
  if (v2 != v3)
  {
    return v3 * a2 / v2;
  }

  return a2;
}

unint64_t kttimesync_abs_from_timestamp(uint64_t a1, unint64_t a2)
{
  if ((*(a1 + 48) & 8) == 0)
  {
    return a2;
  }

  v3 = *(a1 + 8);
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t timespec_add(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a4 + a2) <= 0x3B9AC9FF)
  {
    return a3 + a1;
  }

  else
  {
    return a3 + a1 + 1;
  }
}

double ktrace_remotetime_update_params(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  *(a1 + 536) = *(a2 + 8);
  *(a1 + 544) = *(a2 + 16);
  result = *(a2 + 24);
  *(a1 + 528) = result;
  return result;
}

uint64_t ktrace_get_remotetime_for_localtime(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v7 = 0;
  ktrace_convert_timestamp_to_nanoseconds(a1, a2, &v7);
  result = 0;
  v4 = *(a1 + 528);
  if (v4 != 0.0)
  {
    v5 = v4 * (v7 - *(a1 + 536));
    v6 = *(a1 + 544);
    if (__OFADD__(v6, v5))
    {
      return 0;
    }

    else
    {
      return v6 + v5;
    }
  }

  return result;
}

uint64_t ktrace_set_remotetime_conversion_enabled(uint64_t result, int a2)
{
  if (!result)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v2 = *(result + 224);
  if (v2 & 2) != 0 || (v2)
  {
    ktrace_set_remotetime_conversion_enabled_cold_1();
  }

  *(result + 288) = a2;
  return result;
}

uint64_t ktrace_get_remotetime_conversion_enabled(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 288);
}

uint64_t timeval_add(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if ((a4 + a2) <= 0xF423F)
  {
    return a3 + a1;
  }

  else
  {
    return a3 + a1 + 1;
  }
}

unint64_t machtime_to_timeval(unsigned int *a1, unint64_t a2)
{
  if (a1)
  {
    v2 = *a1;
    v3 = a1[1];
    if (v2 != v3)
    {
      a2 = v2 * a2 / v3;
    }

    return a2 / 0x3B9ACA00;
  }

  else
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t str_hash_callback(const char *a1)
{
  v2 = strlen(a1);

  return MEMORY[0x28210F690](a1, v2);
}

uint64_t proc_name_hash_callback(const char *a1)
{
  v2 = strlen(a1);
  if (v2 >= 16)
  {
    v3 = 16;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x28210F690](a1, v3);
}

const void *create_dict(UInt8 *bytes, CFIndex length)
{
  error = 0;
  v2 = CFDataCreateWithBytesNoCopy(0, bytes, length, *MEMORY[0x277CBED00]);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFPropertyListCreateWithData(0, v2, 0, 0, &error);
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 != CFDictionaryGetTypeID())
    {
      v7 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        create_dict_cold_1();
      }

      *__error() = v7;
      CFRelease(v5);
      v5 = 0;
    }
  }

  else
  {
    v8 = error;
    v9 = *__error();
    ktrace_log_init();
    v10 = os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR);
    if (v8)
    {
      if (v10)
      {
        create_dict_cold_2(&error);
      }
    }

    else if (v10)
    {
      create_dict_cold_3();
    }

    v5 = 0;
    *__error() = v9;
  }

  CFRelease(v3);
  if (error)
  {
    CFRelease(error);
  }

  return v5;
}

uint64_t dict_BOOL(const __CFDictionary *a1, void *key, BOOL *a3)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!key)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  Value = CFDictionaryGetValue(a1, key);
  if (Value)
  {
    v5 = Value;
    v6 = CFGetTypeID(Value);
    if (v6 == CFBooleanGetTypeID())
    {
      v7 = CFBooleanGetValue(v5);
      result = 0;
      *a3 = v7 != 0;
      return result;
    }

    v9 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      dict_BOOL_cold_1();
    }
  }

  else
  {
    v9 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      dict_BOOL_cold_2();
    }
  }

  *__error() = v9;
  return 22;
}

CFIndex dict_number_arr_internal(const __CFDictionary *a1, void *key, void *a3, _DWORD *a4, CFNumberType a5, uint64_t a6)
{
  v32 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!key)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  Value = CFDictionaryGetValue(a1, key);
  if (!Value)
  {
    v20 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      dict_BOOL_cold_2();
    }

    goto LABEL_19;
  }

  v11 = Value;
  v12 = CFGetTypeID(Value);
  if (v12 != CFArrayGetTypeID())
  {
    v20 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      dict_number_arr_internal_cold_1();
    }

LABEL_19:
    *__error() = v20;
LABEL_20:
    result = 22;
    goto LABEL_21;
  }

  result = CFArrayGetCount(v11);
  if (!result)
  {
    *a3 = 0;
    *a4 = 0;
    goto LABEL_21;
  }

  v14 = result;
  v27 = malloc_type_malloc(result * a6, 0x66B3DDACuLL);
  if (!v27)
  {
    result = *__error();
    goto LABEL_21;
  }

  if (v14 >= 1)
  {
    v15 = 0;
    v16 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v11, v15);
      if (!ValueAtIndex)
      {
        v22 = *__error();
        ktrace_log_init();
        v23 = ktrace_log;
        if (!os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_29;
        }

        *buf = 67109634;
        *v29 = v16;
        *&v29[4] = 2112;
        *&v29[6] = v11;
        v30 = 1024;
        v31 = v22;
        v24 = "element %u missing from array: %@ (%{errno}d)";
        v25 = v23;
LABEL_31:
        _os_log_error_impl(&dword_22ED7A000, v25, OS_LOG_TYPE_ERROR, v24, buf, 0x18u);
        goto LABEL_29;
      }

      v18 = ValueAtIndex;
      v19 = CFGetTypeID(ValueAtIndex);
      if (v19 != CFNumberGetTypeID())
      {
        break;
      }

      if (!CFNumberGetValue(v18, a5, &v27[v15 * a6]))
      {
        v22 = *__error();
        ktrace_log_init();
        v26 = ktrace_log;
        if (!os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_29;
        }

        *buf = 138412802;
        *v29 = v18;
        *&v29[8] = 1024;
        *&v29[10] = v16;
        v30 = 1024;
        v31 = v22;
        v24 = "array number '%@' at index %u is not the right type (%{errno}d)";
        v25 = v26;
        goto LABEL_31;
      }

      v15 = ++v16;
      if (v14 <= v16)
      {
        goto LABEL_14;
      }
    }

    v22 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      dict_number_arr_internal_cold_2();
    }

LABEL_29:
    *__error() = v22;
    free(v27);
    goto LABEL_20;
  }

LABEL_14:
  result = 0;
  *a3 = v27;
  *a4 = v14;
LABEL_21:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t dict_set_data(__CFDictionary *a1, const void *a2, UInt8 *bytes, CFIndex length)
{
  v6 = CFDataCreate(0, bytes, length);
  if (!v6)
  {
    return 12;
  }

  v7 = v6;
  CFDictionarySetValue(a1, a2, v6);
  CFRelease(v7);
  return 0;
}

UInt8 *aasprintf(char *a1, ...)
{
  va_start(va, a1);
  bytes[0] = 0;
  va_copy(&bytes[1], va);
  vasprintf(bytes, a1, va);
  if (!bytes[0])
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v1 = CFDataCreateWithBytesNoCopy(0, bytes[0], 1, *MEMORY[0x277CBECF0]);
  CFAutorelease(v1);
  return bytes[0];
}

CFStringRef cfaasprintf(char *a1, ...)
{
  va_start(va, a1);
  __s[0] = 0;
  va_copy(&__s[1], va);
  vasprintf(__s, a1, va);
  if (!__s[0])
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v1 = strlen(__s[0]);
  v2 = CFStringCreateWithBytesNoCopy(0, __s[0], v1, 0x8000100u, 0, *MEMORY[0x277CBECF0]);
  if (!v2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = v2;
  CFAutorelease(v2);
  return v3;
}

char *utf8_nullable(const __CFString *a1)
{
  if (a1)
  {
    return utf8(a1);
  }

  else
  {
    return "<null>";
  }
}

char *utf8(const __CFString *a1)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (!CStringPtr)
  {
    Length = CFStringGetLength(a1);
    v4 = malloc_type_malloc(Length + 1, 0xFB78F91CuLL);
    if (!v4)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    CStringPtr = v4;
    if (!CFStringGetCString(a1, v4, Length + 1, 0x8000100u))
    {
      v5 = CFStringGetLength(a1);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(v5, 0x8000100u);
      free(CStringPtr);
      v7 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x8C93E330uLL);
      if (!v7)
      {
        ktrace_postprocess_file_internal_cold_4();
      }

      CStringPtr = v7;
      if (!CFStringGetCString(a1, v7, MaximumSizeForEncoding + 1, 0x8000100u))
      {
        ktrace_postprocess_file_internal_cold_4();
      }
    }

    v8 = CFDataCreateWithBytesNoCopy(0, CStringPtr, 1, *MEMORY[0x277CBECF0]);
    CFAutorelease(v8);
  }

  return CStringPtr;
}

char *uuid_string(uint64_t a1, uint64_t a2)
{
  v5[0] = a1;
  v5[1] = a2;
  v2 = malloc_type_calloc(1uLL, 0x25uLL, 0x1000040C946DD6EuLL);
  uuid_unparse(v5, v2);
  v3 = CFDataCreateWithBytesNoCopy(0, v2, 1, *MEMORY[0x277CBECF0]);
  CFAutorelease(v3);
  return v2;
}

uint64_t ktrace_chunk_version_minor(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 38);
}

uint64_t ktrace_chunk_copy_data(uint64_t *a1, uint64_t a2, void *a3, size_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a4)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v6 = a1[1];
  if (v6 < a4)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (a2 < 0)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (a4 + a2 > v6)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v8 = *a1;
  if (*a1)
  {
    if (ktrace_file_read(v8, a3, a4, a1[2] + a2) >= a4)
    {
      result = 0;
    }

    else
    {
      ktrace_log_init();
      v9 = ktrace_file_log;
      if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_DEBUG))
      {
        v12 = a1[2] + a2;
        v13 = 134218240;
        v14 = a4;
        v15 = 2048;
        v16 = v12;
        _os_log_debug_impl(&dword_22ED7A000, v9, OS_LOG_TYPE_DEBUG, "cannot read %zu bytes at offset %lld", &v13, 0x16u);
      }

      result = *__error();
    }
  }

  else
  {
    result = 45;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

CFPropertyListRef ktrace_chunk_copy_plist(uint64_t a1)
{
  v2 = ktrace_chunk_size(a1);
  v3 = ktrace_chunk_copy_cfdata(a1, 0, v2);
  if (v3)
  {
    v4 = v3;
    error = 0;
    v5 = CFPropertyListCreateWithData(0, v3, 0, 0, &error);
    CFRelease(v4);
    if (!v5)
    {
      v6 = *__error();
      ktrace_log_init();
      v7 = ktrace_log;
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        ktrace_chunk_copy_plist_cold_1(&error, v6, v7);
      }

      *__error() = v6;
      CFRelease(error);
    }
  }

  else
  {
    v8 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_chunk_copy_plist_cold_2();
    }

    v5 = 0;
    *__error() = v8;
  }

  return v5;
}

const char *utf8_cferror(__CFError *a1)
{
  if (!a1)
  {
    return "unknown error";
  }

  v1 = CFErrorCopyDescription(a1);
  if (!v1)
  {
    return "unknown error";
  }

  v2 = v1;
  v3 = utf8(v1);
  CFRelease(v2);
  return v3;
}

uint64_t ktrace_chunk_overwrite(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a4)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (a4 + a2 > *(a1 + 8))
  {
    result = 34;
    goto LABEL_15;
  }

  v9 = *a1;
  if (!*a1)
  {
    result = 45;
    goto LABEL_15;
  }

  if (v9 == -1)
  {
    BytePtr = CFDataGetBytePtr(*(a1 + 16));
    memcpy(&BytePtr[a2], a3, a4);
LABEL_14:
    result = 0;
    goto LABEL_15;
  }

  if (ktrace_file_write(v9, a3, a4, *(a1 + 16) + a2) >= a4)
  {
    goto LABEL_14;
  }

  ktrace_log_init();
  v11 = ktrace_file_log;
  if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 16) + a2;
    v14 = 134218240;
    v15 = a4;
    v16 = 2048;
    v17 = v13;
    _os_log_debug_impl(&dword_22ED7A000, v11, OS_LOG_TYPE_DEBUG, "cannot write %zu bytes at offset %lld", &v14, 0x16u);
  }

  result = *__error();
LABEL_15:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ktrace_chunk_iterate_subchunks(uint64_t *a1, void *a2, uint64_t a3)
{
  v12 = a2;
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v5 = (a1 + 6);
  v6 = ktrace_chunk_array_validate_chunk(*a1, (a1 + 6), &v12);
  if (v6)
  {
    v7 = v6;
    v8 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_chunk_iterate_subchunks_cold_1();
    }

    *__error() = v8;
  }

  else
  {
    if (v12)
    {
      do
      {
        if (!(*(a3 + 16))(a3))
        {
          break;
        }
      }

      while (!ktrace_chunk_array_next(*a1, v5, &v12) && v12 != 0);
    }

    else
    {
      ktrace_log_init();
      v10 = ktrace_file_log;
      if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_DEBUG))
      {
        ktrace_chunk_iterate_subchunks_cold_2(v10);
      }
    }

    return 0;
  }

  return v7;
}

void ktrace_chunk_destroy(void *a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (*a1 != -1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

void kteventnames_append(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if ((v3 & 1) == 0)
  {
    kteventnames_append_cold_1();
  }

  if ((v3 & 2) != 0 || (byte_27DA95BE8 & 6) == 6)
  {
    append_eventnames_from_dir(a2, "/usr/share/misc");
    append_eventnames_from_dir(a2, "/usr/local/share/misc");
  }

  v5 = *(a1 + 16);
  v9.length = CFArrayGetCount(v5);
  context[0] = MEMORY[0x277D85DD0];
  context[1] = 3221225472;
  context[2] = __kteventnames_append_block_invoke;
  context[3] = &__block_descriptor_40_e9_v16__0_v8l;
  context[4] = a2;
  v9.location = 0;
  CFArrayApplyFunction(v5, v9, CFArrayApplierTrampoline, context);
  v6 = *(a1 + 24);
  v10.length = CFArrayGetCount(v6);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __kteventnames_append_block_invoke_2;
  v7[3] = &__block_descriptor_40_e9_v16__0_v8l;
  v7[4] = a2;
  v10.location = 0;
  CFArrayApplyFunction(v6, v10, CFArrayApplierTrampoline, v7);
}

uint64_t kteventnames_using_default(uint64_t a1)
{
  if ((~byte_27DA95BE8 & 6) != 0)
  {
    return (*(a1 + 32) >> 1) & 1;
  }

  else
  {
    return 1;
  }
}

DIR *append_eventnames_from_dir(uint64_t a1, char *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  result = opendir(a2);
  if (result)
  {
    v5 = result;
    for (i = readdir(result); i; i = readdir(v5))
    {
      d_name = i->d_name;
      if (issuffix(i->d_name, ".codes"))
      {
        snprintf(__str, 0x400uLL, "%s/%s", a2, d_name);
        append_eventnames_from_path(a1, __str);
      }
    }

    result = closedir(v5);
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

_DWORD *append_eventnames_from_path(uint64_t a1, char *a2)
{
  result = ktrace_file_append_file(a1, 32783, 0, 0, a2, 0, 0x7FFFFFFFFFFFFFFFLL);
  if (!result)
  {
    v4 = *__error();
    ktrace_log_init();
    v5 = ktrace_log;
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      append_eventnames_from_path_cold_1(a2, v4, v5);
    }

    result = __error();
    *result = v4;
  }

  return result;
}

uint64_t kteventnames_add_path(CFMutableDictionaryRef *a1, char *a2)
{
  os_unfair_lock_lock(&global);
  v4 = kteventnames_add_path_locked(a1, a2);
  if (!v4)
  {
    v5 = strdup(a2);
    if (!v5)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    CFArrayAppendValue(a1[3], v5);
  }

  os_unfair_lock_unlock(&global);
  return v4;
}

uint64_t kteventnames_add_path_locked(CFMutableDictionaryRef *a1, char *__filename)
{
  v3 = fopen(__filename, "r");
  if (!v3)
  {
    return *__error();
  }

  v4 = v3;
  kteventnames_add_stream(a1, v3);
  fclose(v4);
  return 0;
}

BOOL kteventnames_add_chunks(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 32) & 6) != 2)
  {
    return 0;
  }

  os_unfair_lock_lock(&global);
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __kteventnames_add_chunks_block_invoke;
  v6[3] = &unk_27886DDC0;
  v6[4] = &v7;
  v6[5] = a1;
  LODWORD(a2) = ktrace_file_iterate(a2, 0, v6);
  os_unfair_lock_unlock(&global);
  if (a2)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(v8 + 6) != 0;
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_22ED9AC80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __kteventnames_add_chunks_block_invoke(uint64_t a1, uint64_t a2)
{
  v39 = *MEMORY[0x277D85DE8];
  if (ktrace_chunk_tag(a2) == 20986)
  {
    v4 = *(a1 + 40);
    v5 = ktrace_chunk_copy_plist(a2);
    context = objc_autoreleasePoolPush();
    v28 = v5;
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v6 = [v5 allValues];
        v7 = [v6 countByEnumeratingWithState:&v33 objects:v38 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v34;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v34 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v33 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v31 = 0u;
                v32 = 0u;
                v29 = 0u;
                v30 = 0u;
                v12 = [v11 countByEnumeratingWithState:&v29 objects:v37 count:16];
                if (v12)
                {
                  v13 = v12;
                  v14 = *v30;
                  do
                  {
                    for (j = 0; j != v13; ++j)
                    {
                      if (*v30 != v14)
                      {
                        objc_enumerationMutation(v11);
                      }

                      kteventnames_add_track(v4, 0, *(*(&v29 + 1) + 8 * j));
                    }

                    v13 = [v11 countByEnumeratingWithState:&v29 objects:v37 count:16];
                  }

                  while (v13);
                }
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v33 objects:v38 count:16];
          }

          while (v8);
        }
      }
    }

    objc_autoreleasePoolPop(context);
  }

  else if (ktrace_chunk_tag(a2) == 32783 && !ktrace_chunk_version_major(a2))
  {
    v16 = ktrace_chunk_size_t(a2);
    v17 = ktrace_chunk_copy_cfdata(a2, 0, v16);
    if (!v17)
    {
      v26 = __error();
      result = 0;
      *(*(*(a1 + 32) + 8) + 24) = *v26;
      goto LABEL_26;
    }

    v18 = v17;
    v19 = *(a1 + 40);
    BytePtr = CFDataGetBytePtr(v17);
    Length = CFDataGetLength(v18);
    v22 = fmemopen(BytePtr, Length, "r");
    if (!v22)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    v23 = v22;
    kteventnames_add_stream(v19, v22);
    fclose(v23);
    CFRelease(v18);
    *(*(a1 + 40) + 32) |= 4u;
  }

  result = 1;
LABEL_26:
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t kteventnames_using_global(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((v1 & 4) != 0)
  {
    return 0;
  }

  v2 = (v1 >> 1) & 1;
  if ((~byte_27DA95BE8 & 6) != 0)
  {
    return v2;
  }

  else
  {
    return 1;
  }
}

const void *kteventnames_name_from_id(uint64_t a1, void *key)
{
  v3 = key;
  result = CFDictionaryGetValue(*(a1 + 8), key);
  if (!result && (*(a1 + 32) & 4) == 0 && (*(a1 + 32) & 1) == 0)
  {
    if ((*(a1 + 32) & 2) != 0 || (byte_27DA95BE8 & 6) == 6)
    {
      os_unfair_lock_lock(&global);
      ensure_global_names_locked();
      Value = CFDictionaryGetValue(qword_27DA95BC8, v3);
      os_unfair_lock_unlock(&global);
      return Value;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void ensure_global_names_locked()
{
  v33[1] = *MEMORY[0x277D85DE8];
  if (byte_27DA95BE8)
  {
    goto LABEL_27;
  }

  kteventnames_init(&qword_27DA95BC0);
  v0 = objc_autoreleasePoolPush();
  v1 = opendir("/AppleInternal/Library/Ariadne/Plists/");
  if (!v1)
  {
    goto LABEL_26;
  }

  v2 = v1;
  while (1)
  {
    v3 = readdir(v2);
    if (!v3)
    {
      break;
    }

    d_name = v3->d_name;
    if (issuffix(v3->d_name, ".plist"))
    {
      snprintf(__str, 0x400uLL, "%s/%s", "/AppleInternal/Library/Ariadne/Plists/", d_name);
      v25 = 0;
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:__str];
      if ([v5 hasSuffix:@".plist"])
      {
        v6 = [MEMORY[0x277CBEAE0] inputStreamWithFileAtPath:v5];
        if (!v6)
        {
          *__error() = 2;
          v13 = *__error();
          ktrace_log_init();
          v14 = ktrace_log;
          if (!os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_22;
          }

          *buf = 136315394;
          v28 = __str;
          v29 = 1024;
          LODWORD(v30) = v13;
          v15 = v14;
          v16 = "failed to open file at %s (%{errno}d)";
          v17 = 18;
          goto LABEL_24;
        }

        v7 = v6;
        [v6 open];
        v8 = [MEMORY[0x277CCAC58] propertyListWithStream:v7 options:0 format:0 error:&v25];
        [v7 close];
        if (v8)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v33[0] = v8;
            v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
          }

          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v9 = [v8 countByEnumeratingWithState:&v21 objects:buf count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v22;
            do
            {
              for (i = 0; i != v10; ++i)
              {
                if (*v22 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                kteventnames_add_track(&qword_27DA95BC0, 0, *(*(&v21 + 1) + 8 * i));
              }

              v10 = [v8 countByEnumeratingWithState:&v21 objects:buf count:16];
            }

            while (v10);
          }
        }

        else
        {
          *__error() = 79;
          v13 = *__error();
          ktrace_log_init();
          v18 = ktrace_log;
          if (!os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_22;
          }

          v19 = [objc_msgSend(v25 "localizedDescription")];
          *buf = 136315650;
          v28 = __str;
          v29 = 2080;
          v30 = v19;
          v31 = 1024;
          v32 = v13;
          v15 = v18;
          v16 = "failed to read Ariadne signpost file at %s as plist: %s (%{errno}d)";
          v17 = 28;
LABEL_24:
          _os_log_error_impl(&dword_22ED7A000, v15, OS_LOG_TYPE_ERROR, v16, buf, v17);
LABEL_22:
          *__error() = v13;
          __error();
        }
      }
    }
  }

  closedir(v2);
LABEL_26:
  kteventnames_add_dir("/usr/share/misc");
  kteventnames_add_dir("/usr/local/share/misc");
  objc_autoreleasePoolPop(v0);
  byte_27DA95BE8 |= 1u;
LABEL_27:
  v20 = *MEMORY[0x277D85DE8];
}

const void *kteventnames_id_from_name(uint64_t a1, const void *a2)
{
  Value = CFDictionaryGetValue(*a1, a2);
  if (!Value && (*(a1 + 32) & 4) == 0 && (*(a1 + 32) & 1) == 0)
  {
    if ((*(a1 + 32) & 2) != 0 || (byte_27DA95BE8 & 6) == 6)
    {
      os_unfair_lock_lock(&global);
      ensure_global_names_locked();
      Value = CFDictionaryGetValue(qword_27DA95BC0, a2);
      os_unfair_lock_unlock(&global);
    }

    else
    {
      return 0;
    }
  }

  return Value;
}

void ktrace_set_default_event_names_enabled(int a1)
{
  os_unfair_lock_lock(&global);
  if (a1 == 1)
  {
    v2 = 6;
  }

  else
  {
    v2 = 2;
  }

  byte_27DA95BE8 = v2 | byte_27DA95BE8 & 0xF9;

  os_unfair_lock_unlock(&global);
}

uint64_t ktrace_add_codes_file(char *a1)
{
  os_unfair_lock_lock(&global);
  ensure_global_names_locked();
  os_unfair_lock_unlock(&global);

  return kteventnames_add_path(&qword_27DA95BC0, a1);
}

char *issuffix(char *a1, const char *a2)
{
  result = strrchr(a1, *a2);
  if (result)
  {
    return (strcmp(result, a2) == 0);
  }

  return result;
}

void kteventnames_add_stream(CFMutableDictionaryRef *a1, FILE *__stream)
{
  v21 = *MEMORY[0x277D85DE8];
  __linecapp = 0;
  __linep = 0;
  if (getline(&__linep, &__linecapp, __stream) >= 1)
  {
    do
    {
      v4 = __linep;
      v5 = strchr(__linep, 35);
      if (v5)
      {
        *v5 = 0;
        v4 = __linep;
      }

      if (*v4)
      {
        key = 0;
        if (sscanf(v4, "%x%127s", &key, __s2) == 2)
        {
          __s2[127] = 0;
          Value = CFDictionaryGetValue(a1[1], key);
          if (Value)
          {
            v7 = Value;
            if (strcmp(Value, __s2))
            {
              ktrace_log_init();
              v8 = ktrace_log;
              if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_DEBUG))
              {
                *buf = 134218498;
                v15 = key;
                v16 = 2080;
                v17 = v7;
                v18 = 2080;
                v19 = __s2;
                _os_log_debug_impl(&dword_22ED7A000, v8, OS_LOG_TYPE_DEBUG, "conflicting names for debugid %#lx: %s and %s", buf, 0x20u);
              }
            }
          }

          else
          {
            v9 = name_intern(__s2);
            CFDictionarySetValue(*a1, v9, key);
            CFDictionarySetValue(a1[1], key, v9);
          }
        }
      }
    }

    while (getline(&__linep, &__linecapp, __stream) > 0);
  }

  free(__linep);
  v10 = *MEMORY[0x277D85DE8];
}

const void *name_intern(void *value)
{
  if (name_intern_nameset_once != -1)
  {
    name_intern_cold_1();
  }

  v2 = CFSetGetValue(name_intern_nameset, value);
  if (!v2)
  {
    v3 = strlen(value) + 1;
    if (v3 >= 0x8000)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    v4 = name_intern_namebuf_left;
    if (v3 >= name_intern_namebuf_left)
    {
      v5 = malloc_type_malloc(0x8000uLL, 0x99D2E19BuLL);
      name_intern_namebuf_pos = v5;
      if (!v5)
      {
        ktrace_postprocess_file_internal_cold_4();
      }

      v4 = 0x8000;
      name_intern_namebuf_left = 0x8000;
    }

    else
    {
      v5 = name_intern_namebuf_pos;
    }

    v6 = strlcpy(v5, value, v4);
    v2 = name_intern_namebuf_pos;
    name_intern_namebuf_pos += v6 + 1;
    if (name_intern_namebuf_left < v6 + 1)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    name_intern_namebuf_left -= v6 + 1;
    CFSetAddValue(name_intern_nameset, v2);
  }

  return v2;
}

CFMutableSetRef __name_intern_block_invoke()
{
  result = CFSetCreateMutable(0, 0, &str_no_free_set_callbacks);
  name_intern_nameset = result;
  return result;
}

void kteventnames_add_track(CFMutableDictionaryRef *a1, uint64_t a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [a3 objectForKeyedSubscript:@"Name"];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [v7 stringByReplacingOccurrencesOfString:@" " withString:@"_"];
      }

      else
      {
        v7 = 0;
      }
    }

    v8 = [a3 objectForKeyedSubscript:@"Children"];
    if (v8 && (v9 = v8, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v10 = [v9 countByEnumeratingWithState:&v30 objects:v40 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v31;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v31 != v12)
            {
              objc_enumerationMutation(v9);
            }

            kteventnames_add_track(a1, v7, *(*(&v30 + 1) + 8 * i));
          }

          v11 = [v9 countByEnumeratingWithState:&v30 objects:v40 count:16];
        }

        while (v11);
      }
    }

    else if (v7)
    {
      if (a2)
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", a2, v7];
      }

      v14 = name_intern([v7 UTF8String]);
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v15 = [&unk_2843A6C80 countByEnumeratingWithState:&v35 objects:v41 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v36;
        do
        {
          for (j = 0; j != v16; ++j)
          {
            if (*v36 != v17)
            {
              objc_enumerationMutation(&unk_2843A6C80);
            }

            v19 = [a3 objectForKeyedSubscript:*(*(&v35 + 1) + 8 * j)];
            if (v19)
            {
              value = 0;
              if (!_to_integer(v19, &value))
              {
                goto LABEL_29;
              }

              v20 = value;
              CFDictionarySetValue(*a1, v14, value);
              CFDictionarySetValue(a1[1], v20, v14);
            }
          }

          v16 = [&unk_2843A6C80 countByEnumeratingWithState:&v35 objects:v41 count:16];
        }

        while (v16);
      }

LABEL_29:
      v21 = [a3 objectForKeyedSubscript:@"Component"];
      value = 0;
      if (_to_integer(v21, &value))
      {
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v22 = [&unk_2843A6C98 countByEnumeratingWithState:&v35 objects:v41 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v36;
          v25 = (value << 16) | 0x2B000000;
          do
          {
            for (k = 0; k != v23; ++k)
            {
              if (*v36 != v24)
              {
                objc_enumerationMutation(&unk_2843A6C98);
              }

              v27 = [a3 objectForKeyedSubscript:*(*(&v35 + 1) + 8 * k)];
              v34 = 0;
              if (_to_integer(v27, &v34))
              {
                v28 = 4 * (v34 & 0x3FFF);
                CFDictionarySetValue(*a1, v14, (v25 | v28));
                CFDictionarySetValue(a1[1], (v25 | v28), v14);
              }
            }

            v23 = [&unk_2843A6C98 countByEnumeratingWithState:&v35 objects:v41 count:16];
          }

          while (v23);
        }
      }
    }

    objc_autoreleasePoolPop(v6);
  }

  v29 = *MEMORY[0x277D85DE8];
}

BOOL _to_integer(void *a1, unint64_t *a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *a2 = [a1 unsignedLongValue];
    return 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      __endptr = 0;
      *a2 = strtoul([a1 UTF8String], &__endptr, 0);
      return *__endptr == 0;
    }

    else
    {
      return 0;
    }
  }
}

void kteventnames_add_dir(const char *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = opendir(a1);
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    while (1)
    {
      v5 = readdir(v3);
      if (!v5)
      {
        break;
      }

      d_name = v5->d_name;
      if (issuffix(v5->d_name, ".codes"))
      {
        snprintf(__str, 0x400uLL, "%s/%s", a1, d_name);
        v7 = kteventnames_add_path_locked(&qword_27DA95BC0, __str);
        if (v4)
        {
          v8 = 1;
        }

        else
        {
          v8 = v7 == 0;
        }

        if (!v8)
        {
          v4 = v7;
        }
      }
    }

    closedir(v3);
    if (!v4)
    {
      v9 = strdup(a1);
      if (!v9)
      {
        ktrace_postprocess_file_internal_cold_4();
      }

      CFArrayAppendValue(qword_27DA95BD0, v9);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t ktrace_events_all(uint64_t a1, const void *a2)
{
  result = ktrace_events_range(a1, 0, -1, a2);
  if (!result)
  {
    *(a1 + 16) = 1;
  }

  return result;
}

uint64_t ktrace_events_range(uint64_t a1, int a2, int a3, const void *a4)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v7 = ktrace_callback_list_add(a1, a1 + 24);
  if (!v7)
  {
    return 12;
  }

  v8 = v7;
  *v7 = 0;
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = 0;
  v9 = _Block_copy(a4);
  result = 0;
  *(v8 + 3) = v9;
  return result;
}

uint64_t ktrace_events_all_paired(uint64_t a1, const void *a2)
{
  result = ktrace_events_range_paired(a1, 0, 0xFFFFFFFF, a2);
  if (!result)
  {
    *(a1 + 16) = 1;
  }

  return result;
}

uint64_t ktrace_events_range_paired(uint64_t a1, int a2, unsigned int a3, const void *a4)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v7 = ktrace_callback_list_add(a1, a1 + 24);
  if (!v7)
  {
    return 12;
  }

  v8 = v7;
  *v7 = 0;
  v9 = (a3 + 3) & 0xFFFFFFFC;
  if (a3 > 0xFFFFFFFB)
  {
    v9 = -1;
  }

  v7[2] = a2 & 0xFFFFFFFC;
  v7[3] = v9;
  v7[4] = 1;
  v10 = _Block_copy(a4);
  result = 0;
  *(v8 + 3) = v10;
  return result;
}

uint64_t ktrace_events_any(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = ktrace_callback_list_add(a1, a1 + 40);
  if (!v3)
  {
    return 12;
  }

  v4 = v3;
  *v3 = 2;
  v3[4] = 0;
  v5 = _Block_copy(a2);
  result = 0;
  *(v4 + 3) = v5;
  return result;
}

uint64_t ktrace_events_any_paired(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = ktrace_callback_list_add(a1, a1 + 40);
  if (!v3)
  {
    return 12;
  }

  v4 = v3;
  *v3 = 2;
  v3[4] = 1;
  v5 = _Block_copy(a2);
  result = 0;
  *(v4 + 3) = v5;
  return result;
}

uint64_t ktrace_events_filter_bitmap_paired(uint64_t a1, const void *a2, const void *a3)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v6 = malloc_type_malloc(0x2000uLL, 0xAA43EBFEuLL);
  if (!v6)
  {
    return 12;
  }

  v7 = v6;
  memcpy(v6, a2, 0x2000uLL);
  v8 = ktrace_events_filter_bitmap_internal_paired(a1, v7, a3);
  if (v8)
  {
    free(v7);
  }

  return v8;
}

uint64_t ktrace_events_filter_bitmap_internal_paired(uint64_t a1, uint64_t a2, const void *a3)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v5 = ktrace_callback_list_add(a1, a1 + 24);
  if (!v5)
  {
    return 12;
  }

  v6 = v5;
  *v5 = 1;
  v5[1] = a2;
  *(v5 + 4) = 1;
  v7 = _Block_copy(a3);
  result = 0;
  v6[3] = v7;
  return result;
}

uint64_t ktrace_events_filter(uint64_t a1, const char *a2, const void *a3)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v6 = malloc_type_calloc(0x2000uLL, 1uLL, 0x100004077774924uLL);
  if (!v6)
  {
    return 12;
  }

  v7 = v6;
  if (trace_parse_filter(a2, v6))
  {
    v8 = 22;
LABEL_7:
    free(v7);
    return v8;
  }

  v8 = ktrace_events_filter_bitmap_internal(a1, v7, a3);
  if (v8)
  {
    goto LABEL_7;
  }

  return v8;
}

uint64_t ktrace_events_filter_paired(uint64_t a1, const char *a2, const void *a3)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v6 = malloc_type_calloc(0x2000uLL, 1uLL, 0x100004077774924uLL);
  if (!v6)
  {
    return 12;
  }

  v7 = v6;
  if (trace_parse_filter(a2, v6))
  {
    v8 = 22;
LABEL_7:
    free(v7);
    return v8;
  }

  v8 = ktrace_events_filter_bitmap_internal_paired(a1, v7, a3);
  if (v8)
  {
    goto LABEL_7;
  }

  return v8;
}

void ktrace_callback_list_sort(int *a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = *(a1 + 1);
  if (v3)
  {
    v4 = *a1;

    qsort_b(v3, v4, 0x20uLL, &__block_literal_global_0);
  }
}

uint64_t __ktrace_callback_list_sort_block_invoke(uint64_t a1, _DWORD *a2, int *a3)
{
  v3 = *a3;
  if (*a2 == 1)
  {
    if (v3 != 1)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    if (v3 == 1)
    {
      return 1;
    }

    if (*a2 == 3)
    {
      if (v3 != 3)
      {
        return 0xFFFFFFFFLL;
      }
    }

    else if (v3 == 3)
    {
      return 1;
    }
  }

  v4 = a3[4];
  if (a2[4] != 1)
  {
    if (v4 != 1)
    {
      goto LABEL_11;
    }

    return 1;
  }

  if (v4 != 1)
  {
    return 0xFFFFFFFFLL;
  }

LABEL_11:
  v6 = a2[2];
  v7 = a3[2];
  v8 = v6 >= v7;
  v9 = v6 != v7;
  if (v8)
  {
    return v9;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void ktrace_compressor_init(_DWORD *a1, int a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  bzero(a1, 0x388uLL);
  a1[1] = a2;
}

unint64_t ktrace_compressor_commit(int *a1, void *a2, unint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a3 < 0x41)
  {
    v6 = safe_encode(a1, __src, a3);
    if (v6)
    {
      memcpy(a2, __src, v6);
    }

    v7 = *MEMORY[0x277D85DE8];
    return v6;
  }

  else
  {
    v4 = *MEMORY[0x277D85DE8];

    return safe_encode(a1, a2, a3);
  }
}

unint64_t safe_encode(int *a1, uint64_t a2, unint64_t a3)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v6 = *(a1 + 2) - *(a1 + 1);
  v7 = (a2 + 2);
  v8 = (9 * __clz(v6 | 1)) >> 6;
  if (HIBYTE(v6))
  {
    *(a2 + 2) = 0;
    *(a2 + 3) = v6;
  }

  else
  {
    *v7 = ((2 * v6) | 1) << (8 - v8);
  }

  v9 = v7 + 9 - v8;
  v10 = a1[1];
  if (v10 == 2)
  {
    v38 = 0;
    v39 = 0;
    v12 = 0;
    v40 = *a1;
    v41 = &a1[12 * v40 + 6];
    v42 = &a1[12 * v40];
    v43 = -1;
    while (1)
    {
      v44 = 0;
      v45 = 0;
      v46 = 0;
      if ((v40 + 1) <= 0x10)
      {
        LODWORD(v40) = v40 + 1;
      }

      else
      {
        LODWORD(v40) = 0;
      }

      v47 = 6;
      do
      {
        v48 = *&v42[v47];
        if (!v48)
        {
          goto LABEL_54;
        }

        v49 = *&a1[12 * v40 + v47];
        if ((v49 ^ v48) == 3)
        {
          v50 = (2 << v44);
LABEL_52:
          v46 |= v50;
          goto LABEL_54;
        }

        if (v48 == v49)
        {
          v50 = (1 << v44);
          goto LABEL_52;
        }

        v51 = 9 - ((9 * __cls(v48 - v49)) >> 6);
        v46 |= (v51 << ((v47 * 4) - 8)) | (3 << v44);
        v45 += v51;
LABEL_54:
        v47 += 2;
        v44 += 2;
      }

      while (v44 != 12);
      if (v45 < v43)
      {
        v12 = v46 | (v38 << 12);
        v39 = v40;
        v43 = v45;
      }

      if (++v38 == 16)
      {
        v9 = encode_row(v9, &a1[12 * v39 + 6], v41, v12);
        goto LABEL_59;
      }
    }
  }

  if (v10 == 3)
  {
    v23 = (a1 + 6);
    v24 = *a1;
    v25 = &a1[12 * *a1 + 6];
    v26 = 3999999939 * ((*(v25 + 32) << 30) | (*(v25 + 40) >> 2));
    v27 = a1 + ((BYTE5(v26) ^ BYTE3(v26)) & 0x3F);
    v28 = v27[840];
    v27[840] = *a1;
    v29 = v28 + ~v24;
    if (v29 <= 0x11)
    {
      v30 = v28 + ~v24;
    }

    else
    {
      v30 = v29 + 17;
    }

    if (v30 > 0xF || (v31 = &v23[12 * v28], *(v31 + 32) != *(v25 + 32)))
    {
      LOWORD(v30) = 0;
      if ((v24 + 1) <= 0x10)
      {
        v32 = v24 + 1;
      }

      else
      {
        v32 = 0;
      }

      v31 = &v23[12 * v32];
    }

    v33 = 0;
    v34 = 0;
    v12 = 0;
    while (1)
    {
      v35 = *(v25 + v34);
      if (v35)
      {
        v36 = *(v31 + v34);
        if ((v36 ^ v35) == 3)
        {
          v37 = (2 << v33);
        }

        else
        {
          if (v35 != v36)
          {
            v12 |= ((9 - ((9 * __cls(v35 - v36)) >> 6)) << (v34 + 16)) | (3 << v33);
            goto LABEL_40;
          }

          v37 = (1 << v33);
        }

        v12 |= v37;
      }

LABEL_40:
      v34 += 8;
      v33 += 2;
      if (v33 == 12)
      {
        v9 = encode_row(v9, v31, v25, v12);
        LOWORD(v12) = v12 | (v30 << 12);
        goto LABEL_59;
      }
    }
  }

  if (v10 != 4)
  {
    safe_encode_cold_1();
  }

  v11 = 0;
  LOWORD(v12) = 0;
  v13 = &a1[12 * *a1 + 6];
  if ((*a1 + 1) <= 0x10)
  {
    v14 = *a1 + 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = &a1[12 * v14 + 6];
  do
  {
    v17 = *v13;
    v13 += 2;
    v16 = v17;
    v19 = *v15;
    v15 += 2;
    v18 = v19;
    if (v16)
    {
      if (v16 == v18)
      {
        v20 = 1 << v11;
      }

      else
      {
        v21 = v16 - v18;
        v22 = (9 * __cls(v21)) >> 6;
        if (((v21 ^ (v21 >> 63)) >> 55))
        {
          *v9 = 0;
          *(v9 + 1) = v21;
        }

        else
        {
          *v9 = ((2 * v21) | 1) << (8 - v22);
        }

        v9 += 9 - v22;
        v20 = 3 << v11;
      }

      LOWORD(v12) = v12 | v20;
    }

    v11 += 2;
  }

  while (v11 != 12);
LABEL_59:
  *a2 = v12;
  result = v9 - a2;
  if (result > a3)
  {
    return 0;
  }

  if (*a1)
  {
    v53 = *a1 - 1;
  }

  else
  {
    v53 = 16;
  }

  *a1 = v53;
  *(a1 + 1) = *(a1 + 2);
  return result;
}

uint64_t ktrace_compressor_read_first_timestamp(char *a1, unint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  bzero(v8, 0x388uLL);
  v8[1] = 1;
  if (ktrace_compressor_decompress(v8, a1, a2))
  {
    result = 0;
    *a3 = v9;
  }

  else
  {
    result = 22;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t decompress_32(int *a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t a5)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a4)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v8 = 0;
  v9 = *a3;
  if (*a3)
  {
    v11 = 0;
    if (a5)
    {
      v11 = 0;
      v8 = 0;
      v13 = (a1 + 6);
      do
      {
        v14 = ktrace_compressor_decompress(a1, (a2 + v11), v9 - v11);
        if (!v14)
        {
          break;
        }

        v15 = a4 + v8;
        v16 = &v13[12 * *a1];
        *v15 = *(a1 + 2) & 0xFFFFFFFFFFFFFFLL | (BYTE4(*(v16 + 5)) << 56);
        *(v15 + 8) = vuzp1q_s32(*v16, *(v16 + 1));
        *(v15 + 24) = vmovn_s64(*(v16 + 2));
        v11 += v14;
        v8 += 32;
        if (v11 >= v9)
        {
          break;
        }
      }

      while (v8 < a5);
    }
  }

  else
  {
    v11 = 0;
  }

  *a3 = v11;
  return v8;
}

uint64_t encode_row(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = 0;
  v5 = a4 >> 16;
  do
  {
    if (v5)
    {
      v6 = *(a3 + v4) - *(a2 + v4);
      if (v5 > 8u)
      {
        *result = 0;
        *(result + 1) = v6;
      }

      else
      {
        *result = ((2 * v6) | 1) << (v5 - 1);
      }
    }

    result += v5;
    v5 >>= 8;
    v4 += 8;
  }

  while (v4 != 48);
  return result;
}

uint64_t config_init_v1_0(const __CFDictionary *a1, char **a2)
{
  result = dict_uint32(a1, @"owner_kind", a2 + 252);
  if (!result)
  {
    if (!*(a2 + 63))
    {
      return 0;
    }

    result = dict_string(a1, @"owner_name", 0, 0, a2);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t config_init_v1_1(const __CFDictionary *a1, char **a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  result = dict_uint32(a1, @"context_kind", a2 + 32);
  if (!result)
  {
    dict_string(a1, @"reason", 0, 0, a2 + 1);
    dict_string(a1, @"command", 0, 0, a2 + 2);

    return dict_uint32(a1, @"trigger_kind", a2 + 260);
  }

  return result;
}

uint64_t config_init_v1_2(const __CFDictionary *a1, uint64_t a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  dict_uint64(a1, @"kperf_lazy_wait_threshold", (a2 + 160));
  dict_uint32(a1, @"kperf_lazy_wait_action", (a2 + 168));
  dict_uint64(a1, @"kperf_lazy_cpu_threshold", (a2 + 176));
  dict_uint32(a1, @"kperf_lazy_cpu_action", (a2 + 184));
  return 0;
}

uint64_t config_init_v1_3(const __CFDictionary *a1, uint64_t a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  dict_BOOL(a1, @"kdebug_continuous_time", (a2 + 77));
  dict_BOOL(a1, @"kdebug_coprocessor_tracing", (a2 + 78));
  return 0;
}

uint64_t config_init_v1_4(const __CFDictionary *a1, uint64_t a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v5 = 0;
  dict_uint64_arr(a1, @"kdebug_disabling_event_match", (a2 + 40), &v5);
  dict_uint64_arr(a1, @"kdebug_disabling_event_mask", (a2 + 48), &v5);
  return 0;
}

_BYTE *ktrace_config_create(void *a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v2 = ktrace_chunk_tag(a1);
  if (v2 != 20995)
  {
    v11 = v2;
    v7 = 0;
    v5 = 0;
    v3 = 0;
    v12 = a1;
    goto LABEL_8;
  }

  v3 = ktrace_chunk_size_t(a1);
  v4 = ktrace_chunk_map_data(a1, 0, v3);
  if (!v4)
  {
    v9 = *__error();
    if (v9)
    {
LABEL_27:
      v10 = 0;
      *__error() = v9;
      return v10;
    }

    return 0;
  }

  v5 = v4;
  v6 = ktrace_file_open_memory(v4, v3, 0, 0);
  if (v6)
  {
    v7 = v6;
    v24 = 0;
    v25 = &v24;
    v26 = 0x2000000000;
    v27 = 0;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 0x40000000;
    v23[2] = __ktrace_config_create_block_invoke;
    v23[3] = &unk_27886DE48;
    v23[4] = &v24;
    v8 = ktrace_file_iterate(v6, 0, v23);
    if (v8)
    {
      v9 = v8;
      _Block_object_dispose(&v24, 8);
      v10 = 0;
LABEL_12:
      ktrace_file_close(v7);
LABEL_13:
      if (!v5)
      {
        if (!v9)
        {
          return v10;
        }

        goto LABEL_25;
      }

      goto LABEL_24;
    }

    v12 = v25[3];
    v11 = ktrace_chunk_tag(v12);
    _Block_object_dispose(&v24, 8);
LABEL_8:
    if (v11 != 32774 || ktrace_chunk_version_major(v12) > 1)
    {
      v10 = 0;
      v9 = 79;
      goto LABEL_11;
    }

    v13 = ktrace_chunk_size(v12);
    v14 = ktrace_chunk_map_data(v12, 0, v13);
    if (!v14)
    {
      v10 = 0;
      v9 = *__error();
      goto LABEL_11;
    }

    v15 = v14;
    dict = create_dict(v14, v13);
    if (!dict)
    {
      v10 = 0;
      v9 = 12;
LABEL_53:
      ktrace_chunk_unmap_data(v12, v15, v13);
LABEL_11:
      if (!v7)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v17 = dict;
    v18 = malloc_type_calloc(1uLL, 0x110uLL, 0x101004089C2A7BEuLL);
    if (!v18)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    v10 = v18;
    v18[78] = 1;
    v19 = (v18 + 78);
    v20 = ktrace_chunk_version_minor(v12);
    if (v20 < 4)
    {
      if (v20 != 3)
      {
        if (v20 < 2)
        {
          if (!v20)
          {
LABEL_36:
            inited = config_init_v1_0(v17, v10);
            if (!inited)
            {
              inited = dict_uint32(v17, @"kdebug_state", v10 + 68);
              if (!inited && ((v10[68] & 1) == 0 || (inited = config_kdebug_init(v10, v17)) == 0))
              {
                inited = dict_uint32(v17, @"kperf_state", v10 + 136);
                if (!inited && ((v10[136] & 1) == 0 || (inited = config_kperf_init(v10, v17)) == 0))
                {
                  inited = dict_uint32(v17, @"kpc_state", v10 + 216);
                  if (!inited)
                  {
                    if ((v10[216] & 1) == 0)
                    {
                      v9 = 0;
LABEL_52:
                      CFRelease(v17);
                      goto LABEL_53;
                    }

                    inited = config_kpc_init(v10, v17);
                  }
                }
              }
            }

LABEL_51:
            v9 = inited;
            goto LABEL_52;
          }

LABEL_35:
          inited = config_init_v1_1(v17, v10);
          if (inited)
          {
            goto LABEL_51;
          }

          goto LABEL_36;
        }

LABEL_34:
        config_init_v1_2(v17, v10);
        goto LABEL_35;
      }
    }

    else
    {
      LODWORD(v24) = 0;
      dict_uint64_arr(v17, @"kdebug_disabling_event_match", v10 + 5, &v24);
      dict_uint64_arr(v17, @"kdebug_disabling_event_mask", v10 + 6, &v24);
    }

    dict_BOOL(v17, @"kdebug_continuous_time", v10 + 77);
    dict_BOOL(v17, @"kdebug_coprocessor_tracing", v19);
    goto LABEL_34;
  }

  v10 = 0;
  v9 = *__error();
LABEL_24:
  ktrace_chunk_unmap_data(a1, v5, v3);
  if (v9)
  {
LABEL_25:
    if (v10)
    {
      ktrace_config_destroy(v10);
    }

    goto LABEL_27;
  }

  return v10;
}

BOOL __ktrace_config_create_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = ktrace_chunk_tag(a2);
  if (v4 == 32774)
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  return v4 != 32774;
}

uint64_t config_kdebug_init(uint64_t a1, const __CFDictionary *a2)
{
  result = dict_uint64(a2, @"kdebug_buffer_size", (a1 + 56));
  if (!result)
  {
    result = dict_data(a2, @"kdebug_typefilter", (a1 + 24), 0);
    if (!result)
    {
      result = dict_uint32(a2, @"kdebug_procfilt_mode", (a1 + 72));
      if (!result)
      {
        result = dict_int_arr(a2, @"kdebug_procfilt", (a1 + 32), (a1 + 64));
        if (!result)
        {

          return dict_BOOL(a2, @"kdebug_wrapping", (a1 + 76));
        }
      }
    }
  }

  return result;
}

CFIndex config_kperf_init(uint64_t a1, const __CFDictionary *a2)
{
  result = dict_uint64_arr(a2, @"kperf_actions_sampler", (a1 + 80), (a1 + 128));
  if (!result)
  {
    v6 = 0;
    result = dict_uint64_arr(a2, @"kperf_actions_user_data", (a1 + 88), &v6);
    if (!result)
    {
      if (*(a1 + 128) != v6)
      {
        return 79;
      }

      result = dict_int_arr(a2, @"kperf_actions_pid_filter", (a1 + 96), &v6);
      if (result)
      {
        return result;
      }

      if (*(a1 + 128) != v6)
      {
        return 79;
      }

      result = dict_uint32_arr(a2, @"kperf_timers_action_id", (a1 + 104), (a1 + 132));
      if (result)
      {
        return result;
      }

      v5 = 0;
      result = dict_uint64_arr(a2, @"kperf_timers_period_ns", (a1 + 112), &v5);
      if (result)
      {
        return result;
      }

      if (*(a1 + 132) != v5)
      {
        return 79;
      }

      result = dict_uint32(a2, @"kperf_pet_mode", (a1 + 140));
      if (!result)
      {
        result = dict_int(a2, @"kperf_pet_timer_id", (a1 + 144));
        if (!result)
        {
          result = dict_uint32(a2, @"kperf_pet_idle_rate", (a1 + 148));
          if (!result)
          {
            result = dict_uint32(a2, @"kperf_kdebug_action_id", (a1 + 152));
            if (!result)
            {
              return dict_string(a2, @"kperf_kdebug_filter", 0, 0, (a1 + 120));
            }
          }
        }
      }
    }
  }

  return result;
}

CFIndex config_kpc_init(uint64_t a1, const __CFDictionary *a2)
{
  result = dict_uint64_arr(a2, @"kpc_config", (a1 + 192), (a1 + 240));
  if (!result)
  {
    result = dict_uint64(a2, @"kpc_classes", (a1 + 224));
    if (!result)
    {
      result = dict_uint64(a2, @"kpc_thread_classes", (a1 + 232));
      if (!result)
      {
        result = dict_uint64_arr(a2, @"kpc_periods", (a1 + 200), (a1 + 244));
        if (!result)
        {
          v5 = 0;
          result = dict_uint32_arr(a2, @"kpc_action_ids", (a1 + 208), &v5);
          if (!result)
          {
            if (*(a1 + 244) == v5)
            {
              return 0;
            }

            else
            {
              return 22;
            }
          }
        }
      }
    }
  }

  return result;
}

_DWORD *ktrace_config_enable_configured(_DWORD *result)
{
  if (!result)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (result[17] == 1)
  {
    result[17] = 3;
  }

  if (result[34] == 1)
  {
    result[34] = 3;
  }

  if (result[54] == 1)
  {
    result[54] = 3;
  }

  return result;
}

uint64_t ktrace_config_kdebug_get_state(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 68);
}

uint64_t ktrace_config_kperf_get_state(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 136);
}

uint64_t ktrace_config_kpc_get_state(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 216);
}

void *ktrace_config_append(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v8 = 0;
  v9 = 0;
  v3 = ktrace_config_serialize(a1, &v9, &v8);
  if (v3)
  {
    v4 = v3;
    appended = 0;
  }

  else
  {
    v6 = v9;
    if (!v9)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    if (!v8)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    appended = ktrace_file_append_chunk(a2, 32774, 1, 4, v9, v8);
    v4 = *__error();
    free(v6);
  }

  *__error() = v4;
  return appended;
}

uint64_t ktrace_config_serialize(uint64_t a1, UInt8 **a2, CFIndex *a3)
{
  error = 0;
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    return 12;
  }

  v7 = Mutable;
  v8 = dict_set_string(Mutable, @"owner_name", *a1);
  if (v8)
  {
    goto LABEL_41;
  }

  v8 = dict_set_uint32(v7, @"owner_kind", *(a1 + 252));
  if (v8)
  {
    goto LABEL_41;
  }

  v8 = dict_set_int(v7, @"owner_pid", *(a1 + 248));
  if (v8)
  {
    goto LABEL_41;
  }

  v8 = dict_set_uint32(v7, @"context_kind", *(a1 + 256));
  if (v8)
  {
    goto LABEL_41;
  }

  v8 = dict_set_string(v7, @"reason", *(a1 + 8));
  if (v8)
  {
    goto LABEL_41;
  }

  v8 = dict_set_string(v7, @"command", *(a1 + 16));
  if (v8)
  {
    goto LABEL_41;
  }

  v8 = dict_set_uint32(v7, @"trigger_kind", *(a1 + 260));
  if (v8)
  {
    goto LABEL_41;
  }

  v8 = dict_set_uint32(v7, @"kdebug_state", *(a1 + 68));
  if (v8)
  {
    goto LABEL_41;
  }

  v8 = dict_set_uint64(v7, @"kdebug_buffer_size", *(a1 + 56));
  if (v8)
  {
    goto LABEL_41;
  }

  v8 = dict_set_data(v7, @"kdebug_typefilter", *(a1 + 24), (*(a1 + 24) != 0) << 13);
  if (v8)
  {
    goto LABEL_41;
  }

  v8 = dict_set_uint32(v7, @"kdebug_procfilt_mode", *(a1 + 72));
  if (v8)
  {
    goto LABEL_41;
  }

  v8 = dict_set_int_arr(v7, @"kdebug_procfilt", *(a1 + 32), *(a1 + 64));
  if (v8)
  {
    goto LABEL_41;
  }

  v8 = dict_set_BOOL(v7, @"kdebug_wrapping", *(a1 + 76));
  if (v8)
  {
    goto LABEL_41;
  }

  v8 = dict_set_BOOL(v7, @"kdebug_continuous_time", *(a1 + 77));
  if (v8)
  {
    goto LABEL_41;
  }

  v8 = dict_set_BOOL(v7, @"kdebug_coprocessor_tracing", *(a1 + 78));
  if (v8)
  {
    goto LABEL_41;
  }

  v8 = dict_set_uint64_arr(v7, @"kdebug_disabling_event_match", *(a1 + 40), 5);
  if (v8)
  {
    goto LABEL_41;
  }

  v8 = dict_set_uint64_arr(v7, @"kdebug_disabling_event_mask", *(a1 + 48), 5);
  if (v8)
  {
    goto LABEL_41;
  }

  v8 = dict_set_uint32(v7, @"kperf_state", *(a1 + 136));
  if (v8)
  {
    goto LABEL_41;
  }

  v8 = dict_set_uint64_arr(v7, @"kperf_actions_sampler", *(a1 + 80), *(a1 + 128));
  if (v8)
  {
    goto LABEL_41;
  }

  v8 = dict_set_uint64_arr(v7, @"kperf_actions_user_data", *(a1 + 88), *(a1 + 128));
  if (v8)
  {
    goto LABEL_41;
  }

  v8 = dict_set_int_arr(v7, @"kperf_actions_pid_filter", *(a1 + 96), *(a1 + 128));
  if (v8)
  {
    goto LABEL_41;
  }

  v8 = dict_set_uint32_arr(v7, @"kperf_timers_action_id", *(a1 + 104), *(a1 + 132));
  if (v8)
  {
    goto LABEL_41;
  }

  v8 = dict_set_uint64_arr(v7, @"kperf_timers_period_ns", *(a1 + 112), *(a1 + 132));
  if (v8)
  {
    goto LABEL_41;
  }

  v8 = dict_set_uint32(v7, @"kperf_kdebug_action_id", *(a1 + 152));
  if (v8)
  {
    goto LABEL_41;
  }

  v8 = dict_set_string(v7, @"kperf_kdebug_filter", *(a1 + 120));
  if (v8)
  {
    goto LABEL_41;
  }

  v8 = dict_set_uint32(v7, @"kperf_pet_mode", *(a1 + 140));
  if (v8)
  {
    goto LABEL_41;
  }

  v8 = dict_set_int(v7, @"kperf_pet_timer_id", *(a1 + 144));
  if (v8)
  {
    goto LABEL_41;
  }

  v8 = dict_set_uint32(v7, @"kperf_pet_idle_rate", *(a1 + 148));
  if (v8)
  {
    goto LABEL_41;
  }

  v8 = dict_set_uint64(v7, @"kperf_lazy_wait_threshold", *(a1 + 160));
  if (v8)
  {
    goto LABEL_41;
  }

  v8 = dict_set_uint32(v7, @"kperf_lazy_wait_action", *(a1 + 168));
  if (v8)
  {
    goto LABEL_41;
  }

  v8 = dict_set_uint64(v7, @"kperf_lazy_cpu_threshold", *(a1 + 176));
  if (v8 || (v8 = dict_set_uint32(v7, @"kperf_lazy_cpu_action", *(a1 + 184)), v8) || (v8 = dict_set_uint32(v7, @"kpc_state", *(a1 + 216)), v8) || (v8 = dict_set_uint64_arr(v7, @"kpc_config", *(a1 + 192), *(a1 + 240)), v8) || (v8 = dict_set_uint64(v7, @"kpc_classes", *(a1 + 224)), v8) || (v8 = dict_set_uint64(v7, @"kpc_thread_classes", *(a1 + 232)), v8) || (v8 = dict_set_uint64_arr(v7, @"kpc_periods", *(a1 + 200), *(a1 + 244)), v8) || (v8 = dict_set_uint32_arr(v7, @"kpc_action_ids", *(a1 + 208), *(a1 + 244)), v8))
  {
LABEL_41:
    v9 = v8;
  }

  else
  {
    v12 = CFPropertyListCreateData(0, v7, kCFPropertyListBinaryFormat_v1_0, 0, &error);
    if (v12)
    {
      v13 = v12;
      Length = CFDataGetLength(v12);
      v15 = Length;
      if (Length)
      {
        v16 = malloc_type_malloc(Length, 0xA968B45FuLL);
        if (v16)
        {
          v22.location = 0;
          v22.length = v15;
          CFDataGetBytes(v13, v22, v16);
          v9 = 0;
        }

        else
        {
          v9 = *__error();
        }
      }

      else
      {
        *__error() = 22;
        v20 = *__error();
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
        {
          ktrace_config_serialize_cold_1();
        }

        v16 = 0;
        *__error() = v20;
        v9 = 22;
      }

      CFRelease(v13);
      CFRelease(v7);
      if (!v9)
      {
        *a2 = v16;
        *a3 = v15;
        return v9;
      }

      v10 = v16;
      goto LABEL_43;
    }

    v17 = error;
    v18 = *__error();
    ktrace_log_init();
    v19 = os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR);
    if (v17)
    {
      if (v19)
      {
        ktrace_config_serialize_cold_2(&error);
      }
    }

    else if (v19)
    {
      ktrace_config_serialize_cold_3();
    }

    *__error() = v18;
    v9 = 22;
  }

  CFRelease(v7);
  v10 = 0;
LABEL_43:
  free(v10);
  return v9;
}

char *owner_kind_name(unsigned int a1)
{
  if (a1 >= 3)
  {
    owner_kind_name_cold_1();
  }

  return off_27886DE68[a1];
}

char *context_kind_name(unsigned int a1)
{
  if (a1 >= 5)
  {
    context_kind_name_cold_1();
  }

  return off_27886DE80[a1];
}

char *trigger_kind_name(unsigned int a1)
{
  if (a1 >= 4)
  {
    trigger_kind_name_cold_1();
  }

  return off_27886DEA8[a1];
}

FILE *ktrace_config_copy_description(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v4 = 0;
  __bufp = 0;
  result = open_memstream(&__bufp, &v4);
  if (result)
  {
    v3 = result;
    ktrace_config_print_description(a1, result);
    fclose(v3);
    return __bufp;
  }

  return result;
}

uint64_t ktrace_config_get_owner_name(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *a1;
}

uint64_t ktrace_config_get_owner_kind(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 252);
}

uint64_t ktrace_config_get_owner_pid(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 248);
}

uint64_t ktrace_config_get_context_kind(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 256);
}

uint64_t ktrace_config_set_context_kind(uint64_t result, unsigned int a2)
{
  if (!result)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (a2 >= 5)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  *(result + 256) = a2;
  return result;
}

uint64_t ktrace_config_get_reason(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 8);
}

char *ktrace_config_set_reason(uint64_t a1, char *__s1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    free(v4);
  }

  if (__s1)
  {
    result = strdup(__s1);
  }

  else
  {
    result = 0;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t ktrace_config_get_command(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 16);
}

char *ktrace_config_set_command(uint64_t a1, char *__s1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    free(v4);
  }

  if (__s1)
  {
    result = strdup(__s1);
  }

  else
  {
    result = 0;
  }

  *(a1 + 16) = result;
  return result;
}

uint64_t ktrace_config_get_trigger_kind(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 260);
}

uint64_t ktrace_config_set_trigger_kind(uint64_t result, unsigned int a2)
{
  if (!result)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (a2 >= 4)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  *(result + 260) = a2;
  return result;
}

BOOL ktrace_config_kdebug_get_filtering_events(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 24) != 0;
}

uint64_t ktrace_config_kdebug_get_typefilter(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  *__error() = 0;
  return *(a1 + 24);
}

uint64_t ktrace_config_kdebug_get_debugid_enabled(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (*(a1 + 68) != 3)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(v2 + (a2 >> 19)) >> (BYTE2(a2) & 7)) & 1;
  }

  else
  {
    return 1;
  }
}

uint64_t ktrace_config_kdebug_get_buffer_size(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 56);
}

uint64_t ktrace_config_kdebug_get_procfilt_mode(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 72);
}

uint64_t ktrace_config_kdebug_get_procfilt(uint64_t a1, void *a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  *a2 = *(a1 + 64);
  return *(a1 + 32);
}

uint64_t ktrace_config_kdebug_pid_included(uint64_t a1, int a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = *(a1 + 72);
  result = 1;
  if (v3)
  {
    if (v3 != 1)
    {
      if (v3 != 2)
      {
        ktrace_config_kdebug_pid_included_cold_1();
      }

      LODWORD(result) = 0;
    }

    v5 = *(a1 + 64);
    if (v5)
    {
      v6 = *(a1 + 32);
      if (*v6 == a2)
      {
        v7 = 0;
      }

      else
      {
        v8 = 1;
        do
        {
          v9 = v8;
          if (v5 == v8)
          {
            break;
          }

          v10 = v6[v8++];
        }

        while (v10 != a2);
        v7 = v9 >= v5;
      }
    }

    else
    {
      v7 = 1;
    }

    return result ^ v7;
  }

  return result;
}

uint64_t ktrace_config_kdebug_get_wrapping(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 76);
}

uint64_t ktrace_config_kdebug_using_mach_continuous_time(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 77);
}

uint64_t ktrace_config_kdebug_get_coprocessor_tracing(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 78);
}

uint64_t ktrace_config_kdebug_get_disabling_event_matching(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = *(a1 + 40);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a1 + 48);
  if (!v4)
  {
    return 0;
  }

  v5 = v3[1];
  *a2 = *v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v3[2];
  *(a2 + 24) = v3[3];
  *(a2 + 32) = v3[4];
  v6 = v4[1];
  *a3 = *v4;
  *(a3 + 8) = v6;
  *(a3 + 16) = v4[2];
  *(a3 + 24) = v4[3];
  *(a3 + 32) = v4[4];
  return 1;
}

uint64_t ktrace_config_kperf_get_action_count(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 128);
}

uint64_t ktrace_config_kperf_get_action_samplers(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (a2 && *(a1 + 128) >= a2)
  {
    return *(*(a1 + 80) + 8 * (a2 - 1));
  }

  else
  {
    return 0;
  }
}

uint64_t ktrace_config_kperf_get_action_user_data(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (a2 && *(a1 + 128) >= a2)
  {
    return *(*(a1 + 88) + 8 * (a2 - 1));
  }

  else
  {
    return 0;
  }
}

uint64_t ktrace_config_kperf_get_action_pid_only(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (a2 && *(a1 + 128) >= a2)
  {
    return *(*(a1 + 96) + 4 * (a2 - 1));
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t ktrace_config_kperf_get_timer_count(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 132);
}

uint64_t ktrace_config_kperf_get_timer_action_id(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (*(a1 + 132) <= a2)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 104) + 4 * a2);
  }
}

uint64_t ktrace_config_kperf_get_timer_period_ns(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (*(a1 + 132) <= a2)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 112) + 8 * a2);
  }
}

uint64_t ktrace_config_kperf_get_pet_mode(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 140);
}

uint64_t ktrace_config_kperf_get_pet_timer_id(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 144);
}

uint64_t ktrace_config_kperf_get_pet_idle_rate(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 148);
}

uint64_t ktrace_config_kperf_get_kdebug_action_id(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 152);
}

uint64_t ktrace_config_kperf_get_kdebug_filter_desc(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 120);
}

BOOL ktrace_config_kperf_get_lazy_wait_enabled(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 168) != 0;
}

uint64_t ktrace_config_kperf_get_lazy_wait_time_threshold(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (*(a1 + 168))
  {
    return *(a1 + 160);
  }

  else
  {
    return 0;
  }
}

BOOL ktrace_config_kperf_get_lazy_cpu_enabled(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 184) != 0;
}

uint64_t ktrace_config_kperf_get_lazy_cpu_time_threshold(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (*(a1 + 184))
  {
    return *(a1 + 176);
  }

  else
  {
    return 0;
  }
}

uint64_t ktrace_config_kpc_get_classes(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 224);
}

uint64_t ktrace_config_kpc_get_thread_classes(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 232);
}

uint64_t ktrace_config_kpc_get_config(uint64_t a1, void *a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  *a2 = *(a1 + 240);
  return *(a1 + 192);
}

uint64_t ktrace_config_kpc_get_action_id(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (*(a1 + 216) == 3 && (v2 = *(a1 + 208)) != 0 && *(a1 + 244) > a2)
  {
    return *(v2 + 4 * a2);
  }

  else
  {
    return 0;
  }
}

uint64_t ktrace_config_kpc_get_period(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (*(a1 + 216) == 3 && (v2 = *(a1 + 200)) != 0 && *(a1 + 244) > a2)
  {
    return *(v2 + 8 * a2);
  }

  else
  {
    return 0;
  }
}

uint64_t ktrace_file_append_local_log_content(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x277D24438] localStore];
  if (v8)
  {

    return ktrace_file_append_log_content_from_store(a1, v8, a2, a3, 0, a4, 0);
  }

  else
  {
    v10 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_file_append_local_log_content_cold_1();
    }

    *__error() = v10;
    return 22;
  }
}

uint64_t ktrace_file_append_log_content_from_store(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v14 = objc_autoreleasePoolPush();
  v25 = 0;
  v26 = &v25;
  v27 = 0x3052000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __ktrace_file_append_log_content_from_store_block_invoke;
  v24[3] = &unk_27886DED0;
  v24[4] = &v25;
  [a2 prepareWithCompletionHandler:v24];
  v15 = v26[5];
  if (v15)
  {
    v16 = dispatch_semaphore_create(0);
    v17 = objc_alloc(MEMORY[0x277D24428]);
    v18 = v26[5];
    v22[6] = a1;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __ktrace_file_append_log_content_from_store_block_invoke_2;
    v23[3] = &__block_descriptor_40_e16_v16__0__NSData_8l;
    v23[4] = a1;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __ktrace_file_append_log_content_from_store_block_invoke_4;
    v22[3] = &unk_27886DF18;
    v22[4] = v16;
    v22[5] = &v31;
    v19 = [v17 initWithSource:v18 dataProcessingBlock:v23 completionBlock:v22];
    [v19 setFlags:a3];
    [v19 setArgumentRedactionBlock:a5];
    [v19 setFilterPredicate:a4];
    [v19 serializeFromDate:a6 toDate:a7];
    dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);

    dispatch_release(v16);
  }

  _Block_object_dispose(&v25, 8);
  objc_autoreleasePoolPop(v14);
  if (v15)
  {
    v20 = *(v32 + 6);
  }

  else
  {
    v20 = 22;
  }

  _Block_object_dispose(&v31, 8);
  return v20;
}

int *__ktrace_file_append_log_content_from_store_block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (a3)
  {
    v4 = [a3 localizedDescription];
    v5 = *__error();
    ktrace_log_init();
    v6 = ktrace_log;
    v7 = os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      if (v7)
      {
        __ktrace_file_append_log_content_from_store_block_invoke_cold_1(a3, v5, v6);
      }
    }

    else if (v7)
    {
      __ktrace_file_append_log_content_from_store_block_invoke_cold_2();
    }

    result = __error();
    *result = v5;
  }

  else
  {
    result = a2;
    *(*(*(a1 + 32) + 8) + 40) = result;
  }

  return result;
}

_DWORD *__ktrace_file_append_log_content_from_store_block_invoke_2(uint64_t a1, void *a2)
{
  result = ktrace_file_append_chunk(*(a1 + 32), 32785, *MEMORY[0x277D24468], 0, [a2 bytes], objc_msgSend(a2, "length"));
  if (!result)
  {
    v3 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      __ktrace_file_append_log_content_from_store_block_invoke_2_cold_1();
    }

    result = __error();
    *result = v3;
  }

  return result;
}

intptr_t __ktrace_file_append_log_content_from_store_block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3 > 5)
  {
    if (a3 <= 7)
    {
      if (a3 == 6)
      {
        v5 = *__error();
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
        {
          __ktrace_file_append_log_content_from_store_block_invoke_4_cold_4();
        }

        v6 = 45;
      }

      else
      {
        v5 = *__error();
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
        {
          __ktrace_file_append_log_content_from_store_block_invoke_4_cold_3();
        }

        v6 = 1;
      }

      goto LABEL_35;
    }

    if (a3 == 8)
    {
      v5 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        __ktrace_file_append_log_content_from_store_block_invoke_4_cold_2();
      }

      v6 = 22;
      goto LABEL_35;
    }

    if (a3 == 9)
    {
      v5 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        __ktrace_file_append_log_content_from_store_block_invoke_4_cold_1();
      }

      v6 = 70;
      goto LABEL_35;
    }
  }

  else if (a3 > 2)
  {
    if (a3 == 3)
    {
      v5 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        __ktrace_file_append_log_content_from_store_block_invoke_4_cold_6();
      }

      v6 = 6;
      goto LABEL_35;
    }

    if (a3 == 4)
    {
      v5 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        __ktrace_file_append_log_content_from_store_block_invoke_4_cold_5();
      }

      v6 = 89;
      goto LABEL_35;
    }
  }

  else
  {
    if (a3 == 1)
    {
      v5 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        __ktrace_file_append_log_content_from_store_block_invoke_4_cold_8();
      }

      v6 = 57;
      goto LABEL_35;
    }

    if (a3 == 2)
    {
      v5 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        __ktrace_file_append_log_content_from_store_block_invoke_4_cold_7();
      }

      v6 = 55;
LABEL_35:
      *__error() = v5;
      *(*(*(a1 + 40) + 8) + 24) = v6;
    }
  }

  if (a2 && !ktrace_file_append_chunk(*(a1 + 48), 32786, *MEMORY[0x277D24468], 0, [a2 bytes], objc_msgSend(a2, "length")))
  {
    v7 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      __ktrace_file_append_log_content_from_store_block_invoke_4_cold_9();
    }

    *__error() = v7;
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t ktrace_file_contains_log_content(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __ktrace_file_contains_log_content_block_invoke;
  v3[3] = &unk_27886DF40;
  v3[4] = &v8;
  v3[5] = &v4;
  ktrace_file_iterate(a1, 0, v3);
  if (*(v9 + 24) == 1)
  {
    v1 = *(v5 + 24);
  }

  else
  {
    v1 = 0;
  }

  _Block_object_dispose(&v4, 8);
  _Block_object_dispose(&v8, 8);
  return v1 & 1;
}

void sub_22ED9EC50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t __ktrace_file_contains_log_content_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = ktrace_chunk_tag(a2);
  if (v3 == 32786)
  {
    v4 = 32;
  }

  else
  {
    if (v3 != 32785)
    {
      goto LABEL_6;
    }

    v4 = 40;
  }

  *(*(*(a1 + v4) + 8) + 24) = 1;
LABEL_6:
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v5 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

void sub_22ED9EFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unsigned int *ktrace_cpus_create(uint64_t *a1)
{
  if (ktrace_chunk_tag(a1) != 7168 || ktrace_chunk_version_major(a1) >= 2)
  {
    v2 = 0;
    *__error() = 0;
    return v2;
  }

  count = 0;
  if (ktrace_chunk_size(a1) <= 7)
  {
LABEL_6:
    v2 = 0;
    *__error() = 79;
    return v2;
  }

  v4 = ktrace_chunk_copy_data(a1, 0, &count, 8uLL);
  if (v4)
  {
    v2 = 0;
    *__error() = v4;
    return v2;
  }

  if (count != 1)
  {
    if (count == 1437204737)
    {
      return _create_from_legacy_cpu_map(a1, HIDWORD(count));
    }

    goto LABEL_6;
  }

  v5 = malloc_type_calloc(HIDWORD(count), 0x28uLL, 0x10000400A747E1EuLL);
  if (!v5)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v6 = v5;
  v7 = ktrace_chunk_copy_data(a1, 8, v5, 40 * HIDWORD(count));
  if (v7)
  {
    v8 = v7;
    v2 = 0;
  }

  else
  {
    v2 = _create_from_cpu_map(HIDWORD(count), v6);
    v8 = *__error();
  }

  free(v6);
  *__error() = v8;
  return v2;
}

unsigned int *_create_from_legacy_cpu_map(uint64_t *a1, unsigned int a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = ktrace_chunk_size_t(a1);
  v5 = a2;
  if (v4 < ((16 * a2) | 8uLL))
  {
    v6 = v4;
    *__error() = 79;
    v7 = *__error();
    ktrace_log_init();
    v8 = ktrace_log;
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      v18 = 134218752;
      v19 = v6;
      v20 = 2048;
      v21 = (16 * a2) | 8;
      v22 = 1024;
      v23 = a2;
      v24 = 1024;
      v25 = v7;
      _os_log_error_impl(&dword_22ED7A000, v8, OS_LOG_TYPE_ERROR, "legacy CPU map chunk is too small %zu, expected %zu for %u CPUs (%{errno}d)", &v18, 0x22u);
    }

    goto LABEL_8;
  }

  v9 = malloc_type_malloc(33 * a2 + 4, 0x100004052888210uLL);
  if (!v9)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v10 = v9;
  v11 = malloc_type_malloc(16 * a2, 0xB22E0E4DuLL);
  if (!v11)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v12 = v11;
  v13 = ktrace_chunk_copy_data(a1, 8, v11, 16 * a2);
  if (v13)
  {
    v7 = v13;
    free(v10);
    free(v12);
LABEL_8:
    v10 = 0;
    *__error() = v7;
    goto LABEL_9;
  }

  *v10 = a2;
  if (a2)
  {
    v16 = v12 + 8;
    do
    {
      v17 = v10 + 33 * *(v16 - 2) + 4;
      __strlcpy_chk();
      *(v17 + 32) = *(v16 - 4) & 1;
      v16 += 16;
      --v5;
    }

    while (v5);
  }

  free(v12);
LABEL_9:
  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

_DWORD *_create_from_cpu_map(unsigned int a1, uint64_t a2)
{
  v4 = malloc_type_malloc(33 * a1 + 4, 0x100004052888210uLL);
  if (!v4)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v5 = v4;
  *v4 = a1;
  if (a1)
  {
    v6 = a1;
    v7 = v4 + 1;
    v8 = a2 + 8;
    do
    {
      v9 = v7 + 33 * *(v8 - 8);
      __strlcpy_chk();
      v9[32] = *(v8 - 4) & 1;
      v8 += 40;
      --v6;
    }

    while (v6);
  }

  return v5;
}

_DWORD *ktrace_cpus_create_current()
{
  v3 = 0;
  v4 = 0;
  v0 = kdebug_alloc_current_cpu_map(&v4, &v3);
  if (v0)
  {
    v1 = 0;
    *__error() = v0;
  }

  else
  {
    v1 = _create_from_cpu_map(*(v4 + 1), v4 + 8);
    free(v4);
  }

  return v1;
}

uint64_t ktrace_print_trace_point(FILE *a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  v50 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v10 = *a3;
  earliest_timestamp = ktrace_get_earliest_timestamp(a2);
  v12 = ktrace_convert_timestamp_to_nanoseconds(a2, v10 - earliest_timestamp, &v26);
  if (v12)
  {
    *__error() = v12;
LABEL_3:
    result = 0xFFFFFFFFLL;
    goto LABEL_37;
  }

  bzero(v49, 0x400uLL);
  if (a5)
  {
    memset(v33, 0, 56);
    if (!localtime_r(a3 + 7, v33))
    {
      goto LABEL_3;
    }

    if (!strftime(v48, 0x400uLL, "%FT%T", v33) || !strftime(v47, 0x400uLL, "%Z", v33))
    {
      *__error() = 22;
      goto LABEL_3;
    }

    snprintf(v49, 0x400uLL, "%s.%06u%s", v48, *(a3 + 16), v47);
    v14 = ", walltime: ";
  }

  else
  {
    v14 = "";
  }

  v25 = v14;
  v15 = 0uLL;
  memset(__str, 0, sizeof(__str));
  if ((a5 & 4) != 0 && *(a3 + 22) != -1)
  {
    snprintf(__str, 0x20uLL, "%d", *(a3 + 22));
    v15 = 0uLL;
  }

  v47[14] = v15;
  v47[15] = v15;
  v47[12] = v15;
  v47[13] = v15;
  v47[10] = v15;
  v47[11] = v15;
  v47[8] = v15;
  v47[9] = v15;
  v47[6] = v15;
  v47[7] = v15;
  v47[4] = v15;
  v47[5] = v15;
  v47[2] = v15;
  v47[3] = v15;
  v47[0] = v15;
  v47[1] = v15;
  if ((a5 & 2) != 0)
  {
    name_for_thread = ktrace_get_name_for_thread(a2, a3[5]);
    if (name_for_thread)
    {
      escape_string(a4, v47, 0x100uLL, name_for_thread);
    }
  }

  v17 = 0uLL;
  memset(v48, 0, 512);
  if ((a5 & 8) != 0)
  {
    escape_string(a4, v48, 0x200uLL, a3[9]);
    v17 = 0uLL;
    v18 = ", eventname: ";
  }

  else
  {
    v18 = "";
  }

  v24 = v18;
  v44 = v17;
  v45 = v17;
  v42 = v17;
  v43 = v17;
  v40 = v17;
  v41 = v17;
  v38 = v17;
  v39 = v17;
  v36 = v17;
  v37 = v17;
  v34 = v17;
  v35 = v17;
  *&v33[32] = v17;
  *&v33[48] = v17;
  *v33 = v17;
  *&v33[16] = v17;
  if ((a5 & 0x10) != 0)
  {
    v19 = a3[10];
    if (v19)
    {
      escape_string(a4, v33, 0x100uLL, v19);
    }
  }

  if (a4)
  {
    v20 = "%llu";
    snprintf(v32, 0x20uLL, "%llu");
  }

  else
  {
    v20 = "%llu";
    snprintf(v32, 0x20uLL, "%llu");
  }

  snprintf(v31, 0x20uLL, v20, a3[1]);
  snprintf(v30, 0x20uLL, v20, a3[2]);
  snprintf(v29, 0x20uLL, v20, a3[3]);
  snprintf(v28, 0x20uLL, v20, a3[4]);
  snprintf(v27, 0x20uLL, v20, a3[5]);
  if (a4 >= 2)
  {
    if (a4 != 2)
    {
      ktrace_print_trace_point_cold_1();
    }

    if (a5)
    {
      v21 = ",";
    }

    else
    {
      v21 = "";
    }

    if ((a5 & 8) != 0)
    {
      v22 = ",";
    }

    else
    {
      v22 = "";
    }

    result = fprintf(a1, "%s%s%s%s%s,%u,%s,%s,%s,%s,%u,%s%s%s%s%s%s%s", v32, v21, v49, v22, v48, *(a3 + 12), v31, v30, v29, v28, *(a3 + 13), v27);
  }

  else
  {
    result = fprintf(a1, "{ timestampns: %s%s%s%s%s, debugid: %u, args: [ %s, %s, %s, %s ], cpuid: %u, threadid: %s%s%s%s%s%s%s }", v32, v25, v49, v24, v48, *(a3 + 12), v31, v30, v29, v28, *(a3 + 13), v27);
  }

LABEL_37:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t escape_string(uint64_t result, _BYTE *a2, unint64_t a3, char *__s)
{
  *a2 = 34;
  if (!__s)
  {
LABEL_7:
    v10 = 1;
    goto LABEL_20;
  }

  if (result == 2)
  {
    v7 = a3 - 2;
    v8 = *__s;
    if (*__s)
    {
      v9 = v7 >= 2;
    }

    else
    {
      v9 = 0;
    }

    if (!v9)
    {
      goto LABEL_7;
    }

    v13 = __s + 1;
    v14 = 1;
    v15 = 1;
    do
    {
      if (v8 == 34)
      {
        ++v15;
        a2[v14] = 34;
        LOBYTE(v8) = *(v13 - 1);
      }

      v10 = v15 + 1;
      a2[v15] = v8;
      v16 = *v13++;
      v8 = v16;
      v14 = v15 + 1;
      if (v16)
      {
        v17 = v7 > v10;
      }

      else
      {
        v17 = 0;
      }

      ++v15;
    }

    while (v17);
  }

  else
  {
    v11 = strlen(__s);
    if (v11 >= a3 >> 2)
    {
      v12 = a3 >> 2;
    }

    else
    {
      v12 = v11;
    }

    result = strsnvisx(a2 + 1, a3 - 2, __s, v12, 34, "\\\b\f\n\r\t");
    v10 = result + 1;
  }

  if (v10 <= 0)
  {
    escape_string_cold_1();
  }

LABEL_20:
  *&a2[v10] = 34;
  return result;
}

uint64_t ktrace_print_csv_header(FILE *a1, uint64_t a2, char a3)
{
  v3 = ",walltime";
  v4 = "";
  if ((a3 & 1) == 0)
  {
    v3 = "";
  }

  v5 = ",eventname";
  if ((a3 & 8) == 0)
  {
    v5 = "";
  }

  v6 = ",threadname";
  if ((a3 & 2) == 0)
  {
    v6 = "";
  }

  v7 = ",pid";
  if ((a3 & 4) == 0)
  {
    v7 = "";
  }

  if ((a3 & 0x10) != 0)
  {
    v4 = ",execname";
  }

  return fprintf(a1, "timestampns%s%s,debugid,arg1,arg2,arg3,arg4,cpuid,threadid%s%s%s", v3, v5, v6, v7, v4);
}

void thread_cputime_map_update(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  dispatch_assert_queue_V2(*(a1 + 232));
  v10 = a3 & 0xFFFFFFFC;
  if ((a3 & 0xFFFFFFFC) <= 20971555)
  {
    if (v10 == 20971520 || v10 == 20971528)
    {
      if (a5)
      {
        v11 = *(a4 + 16);
        v12 = *(a4 + 40);
        v13 = *a4;
      }

      else
      {
        v11 = *(a4 + 12);
        v12 = *(a4 + 24);
        v13 = *a4 & 0xFFFFFFFFFFFFFFLL;
      }

      state = thread_cputime_get_state(a2, v12);
      v17 = state[1];
      if (!v17)
      {
        if (*(a2 + 16) == 1)
        {
          v17 = *(a1 + 488);
        }

        else
        {
          v17 = v13;
          if ((*state + 1) >= 2)
          {
            ktrace_postprocess_file_internal_cold_4();
          }
        }
      }

      if (*state != -1)
      {
        *state = *state + v13 - v17;
      }

      state[1] = 0;
      *(thread_cputime_get_state(a2, v11) + 1) = v13;
      return;
    }

LABEL_30:
    thread_cputime_map_update_cold_2();
  }

  if (v10 == 20971556)
  {
    if (a5)
    {
      v15 = *(a4 + 40);
    }

    else
    {
      v15 = *(a4 + 24);
    }

    v18 = thread_cputime_get_state(a2, v15);
    if (*v18 != -1)
    {
      *v18 = -1;
    }
  }

  else
  {
    if (v10 != 117440524)
    {
      goto LABEL_30;
    }

    if (a5)
    {
      v14 = *(a4 + 8);
    }

    else
    {
      v14 = *(a4 + 8);
    }

    Value = CFDictionaryGetValue(*a2, v14);
    if (Value)
    {
      v20 = *Value;
      v21 = *a2;
      *(a2 + 8) += v20;

      CFDictionaryRemoveValue(v21, v14);
    }
  }
}

const void *thread_cputime_get_state(CFDictionaryRef *a1, const void *a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  Value = CFDictionaryGetValue(*a1, a2);
  if (!Value)
  {
    v5 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040451B5BE8uLL);
    if (!v5)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    Value = v5;
    CFDictionarySetValue(*a1, a2, v5);
  }

  return Value;
}

void thread_cputime_map_dropped_events(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 1;
  v3 = *a2;
  if (!*a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  CFDictionaryApplyFunction(v3, apply_clear_oncore, 0);
}

void apply_clear_oncore(uint64_t a1, void *a2)
{
  if (a2[1])
  {
    if (*a2 != -1)
    {
      a2[1] = 0;
    }
  }
}

CFMutableDictionaryRef ktrace_set_thread_cputime_enabled(CFMutableDictionaryRef result, int a2)
{
  if (!result)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v2 = result;
  v3 = *(result + 112);
  if (v3 & 2) != 0 || (v3)
  {
    ktrace_set_thread_cputime_enabled_cold_3();
  }

  if (a2 && !*(result + 68))
  {
    *(result + 68) = 1;
    v6 = *byte_28439FD98;
    v4 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040545B2139uLL);
    *(v2 + 51) = v4;
    if (!v4)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    v5 = v4;
    result = CFDictionaryCreateMutable(0, 0, &long_key_callbacks, &v6);
    *v5 = result;
    if (!result)
    {
      ktrace_postprocess_file_internal_cold_4();
    }
  }

  return result;
}

uint64_t ktrace_get_thread_cputime_enabled(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 272);
}

void *ktrace_get_cputime_for_thread(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!*(a1 + 272))
  {
    return 0;
  }

  result = CFDictionaryGetValue(**(a1 + 408), a2);
  if (result)
  {
    v4 = result;
    result = *result;
    v5 = v4[1];
    if (v5)
    {
      return (result + *(a1 + 496) - v5);
    }
  }

  return result;
}

uint64_t ktrace_get_cputime_total(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!*(a1 + 272))
  {
    return 0;
  }

  v2 = *(a1 + 408);
  v3 = *v2;
  if (!*v2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v4 = *(v2 + 8);
  v6 = a1;
  v7 = v4;
  CFDictionaryApplyFunction(v3, apply_sum_time, &v6);
  return v7;
}

void apply_sum_time(uint64_t a1, void *a2, void *a3)
{
  if (!a3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (*a2 != -1)
  {
    v3 = a3[1] + *a2;
    a3[1] = v3;
    v4 = a2[1];
    if (v4)
    {
      a3[1] = v3 - v4 + *(*a3 + 496);
    }
  }
}

__n128 insert_start_event(uint64_t a1, void **a2, uint64_t a3)
{
  v5 = *(a3 + 40);
  v6 = v5 & 0x3FF;
  v7 = *(a1 + 8 * v6);
  if (!v7)
  {
    goto LABEL_9;
  }

  if (*(v7 + 5) == v5 && *(v7 + 12) == *(a3 + 48))
  {
    *(a1 + 8 * v6) = *(v7 + 7);
    goto LABEL_13;
  }

  v8 = *(v7 + 7);
  if (!v8)
  {
LABEL_9:
    v7 = *a2;
    if (*a2)
    {
      *a2 = *(v7 + 7);
    }

    else
    {
      v7 = malloc_type_malloc(0x40uLL, 0x1000040FA0F61DDuLL);
    }

    goto LABEL_13;
  }

  while (*(v8 + 40) != v5 || *(v8 + 48) != *(a3 + 48))
  {
    v8 = *(v8 + 56);
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  v9 = *(v8 + 56);
  *(v7 + 7) = v9;
  v10 = v7 == v9;
  v7 = v8;
  if (v10)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

LABEL_13:
  result = *a3;
  v12 = *(a3 + 16);
  v13 = *(a3 + 48);
  *(v7 + 2) = *(a3 + 32);
  *(v7 + 3) = v13;
  *v7 = result;
  *(v7 + 1) = v12;
  *(v7 + 12) &= 0xFFFFFFFC;
  v14 = *(a1 + 8 * v6);
  *(v7 + 7) = v14;
  *(a1 + 8 * v6) = v7;
  if (v7 == v14)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return result;
}

uint64_t match_end_event(uint64_t a1, __int128 **a2, uint64_t a3, _OWORD *a4)
{
  v4 = *(a3 + 40);
  v5 = *(a1 + 8 * (v4 & 0x3FF));
  if (!v5)
  {
    return 0;
  }

  v6 = *(a3 + 48) & 0xFFFFFFFC;
  if (*(v5 + 5) != v4 || *(v5 + 12) != v6)
  {
    v7 = *(v5 + 7);
    if (v7)
    {
      while (*(v7 + 5) != v4 || *(v7 + 12) != v6)
      {
        v7 = *(v7 + 7);
        if (!v7)
        {
          return 0;
        }
      }

      v9 = *(v7 + 7);
      *(v5 + 7) = v9;
      v10 = v5 == v9;
      v5 = v7;
      if (v10)
      {
        ktrace_postprocess_file_internal_cold_4();
      }

      goto LABEL_11;
    }

    return 0;
  }

  *(a1 + 8 * (v4 & 0x3FF)) = *(v5 + 7);
LABEL_11:
  v11 = *v5;
  v12 = v5[1];
  v13 = v5[3];
  a4[2] = v5[2];
  a4[3] = v13;
  *a4 = v11;
  a4[1] = v12;
  *(v5 + 7) = *a2;
  *a2 = v5;
  return 1;
}

void *ktrace_file_create(uint64_t a1, char *a2)
{
  if (a1 && *(a1 + 16) == 4)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = open(a2, 1538, 438);
  if (v3 == -1)
  {
    return 0;
  }

  return ktrace_file_create_fd(a1, v3);
}

void *ktrace_file_create_memory(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v4 = ktrace_file_alloc_memory(0, 0, a2, a3);
  v5 = v4;
  if (v4 && ktrace_file_create_internal(v4, a1))
  {
    ktrace_file_close(v5);
    return 0;
  }

  return v5;
}

void *ktrace_file_alloc_memory(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = ktrace_file_alloc();
  v10 = v8;
  if (v8)
  {
    *(v8 + 16) = 2;
    *(v8 + 196) = -1;
    *(v8 + 256) = a3;
    *(v8 + 264) = a4;
    if (a1)
    {
      *(v8 + 280) = a2;
      *(v8 + 240) = a1;
      *(v8 + 248) = a2;
      if (a3)
      {
        *(v8 + 296) = 1;
      }

      else if (!a2)
      {
        ktrace_postprocess_file_internal_cold_4();
      }
    }

    else
    {
      if (!a3)
      {
        ktrace_postprocess_file_internal_cold_4();
      }

      *(v8 + 296) = 1;
      v11 = (*(a3 + 16))(a3, 0, 0, 0x2000, v9);
      v10[30] = v11;
      if (v11)
      {
        v10[31] = 0x2000;
      }

      else
      {
        *__error() = 12;
        ktrace_file_close(v10);
        return 0;
      }
    }
  }

  return v10;
}

uint64_t ktrace_file_create_chunk_sink(const void *a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  ktrace_file_alloc();
  v3 = v2;
  if (v2)
  {
    *(v2 + 196) = -1;
    *(v2 + 16) = 4;
    *(v2 + 272) = _Block_copy(a1);
    *(v3 + 299) = 1;
    *(v3 + 296) = 1;
  }

  return v3;
}

uint64_t ktrace_file_open(const char *a1, int a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (a2)
  {
    v3 = open(a1, 2);
  }

  else
  {
    v3 = open(a1, 0);
  }

  if (v3 == -1)
  {
    return 0;
  }

  return ktrace_file_open_fd(v3, a2);
}

uint64_t ktrace_file_open_fd(int a1, int a2)
{
  if (a1 == -1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v4 = ktrace_file_alloc_fd(a1, a2);
  v5 = v4;
  if (v4)
  {
    v6 = fd_size(*(v4 + 196));
    *(v5 + 280) = v6;
    if (v6 < 0)
    {
      close(a1);
      *(v5 + 196) = -1;
      ktrace_file_close(v5);
      v5 = 0;
      *__error() = 79;
    }

    else
    {
      v7 = ktrace_file_open_internal(v5, a2);
      if (v7)
      {
        v8 = v7;
        ktrace_file_close(v5);
        v5 = 0;
        *__error() = v8;
      }
    }
  }

  else
  {
    close(a1);
  }

  return v5;
}

uint64_t ktrace_file_open_internal(uint64_t a1, int a2)
{
  v32 = 0;
  if (ktrace_file_read(a1, &v32, 4uLL, 0) <= 3)
  {
    v4 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_file_open_internal_cold_8();
    }

LABEL_4:
    *__error() = v4;
LABEL_5:
    v5 = *__error();
    goto LABEL_20;
  }

  if (v32 <= 1437204736)
  {
    if (v32 != 4096)
    {
      if (v32 == 1095914544)
      {
        *(a1 + 20) = 5;
        v33 = 0;
        v34 = &v33;
        v35 = 0x2000000000;
        v36 = 0;
        *(a1 + 296) = 0;
        if (*(a1 + 280) <= 4096)
        {
LABEL_32:
          *&v37 = MEMORY[0x277D85DD0];
          *(&v37 + 1) = 0x40000000;
          *&v38 = __parse_artrace_file_block_invoke;
          *(&v38 + 1) = &unk_27886E200;
          *&v39 = &v33;
          *(&v39 + 1) = a1;
          if (ktrace_file_iterate(a1, 0, &v37))
          {
            v5 = 1;
          }

          else
          {
            v5 = *(v34 + 6) != 0;
          }
        }

        else
        {
          v11 = 4096;
          while (1)
          {
            *&v37 = 0;
            if (ktrace_file_read(a1, &v37, 8uLL, v11) != 8)
            {
              break;
            }

            v12 = v11 + 8;
            v13 = DWORD1(v37);
            v14 = ktrace_chunk_create(a1, v37 + 20480, 0, 0, DWORD1(v37), v12);
            if (!v14)
            {
              v30 = *__error();
              ktrace_log_init();
              if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
              {
                ktrace_file_open_internal_cold_6();
              }

              *__error() = v30;
              v29 = *__error();
              goto LABEL_68;
            }

            v15 = v14;
            appended = ktrace_chunk_array_append_internal(a1 + 24, v14);
            if (appended)
            {
              v31 = appended;
              free(v15);
              *__error() = v31;
              v29 = *__error();
              ktrace_log_init();
              if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
              {
                ktrace_file_open_internal_cold_5();
              }

              goto LABEL_68;
            }

            *(a1 + 72) = *(a1 + 64);
            *(a1 + 32) = v15;
            v11 = v12 + v13;
            if (v11 >= *(a1 + 280))
            {
              goto LABEL_32;
            }
          }

          v28 = *__error();
          ktrace_log_init();
          if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
          {
            ktrace_file_open_internal_cold_4();
          }

          *__error() = v28;
          __error();
          v29 = 0;
LABEL_68:
          *__error() = v29;
          v5 = *__error();
        }

        _Block_object_dispose(&v33, 8);
        goto LABEL_20;
      }

      if (v32 == 1437204736)
      {
        v6 = 1;
LABEL_18:
        *(a1 + 20) = v6;
        v9 = parse_v1_file(a1);
        goto LABEL_19;
      }

      goto LABEL_23;
    }

    *(a1 + 20) = 4;
    v7 = a1;
    v8 = 1;
LABEL_16:
    v9 = parse_v3_header(v7, v8);
LABEL_19:
    v5 = v9;
    goto LABEL_20;
  }

  switch(v32)
  {
    case 1437204737:
      v6 = 2;
      goto LABEL_18;
    case 1437204992:
      *(a1 + 20) = 3;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_DEBUG))
      {
        ktrace_file_open_internal_cold_1();
      }

      *(a1 + 296) = 0;
      if (ktrace_file_read(a1, &v37, 0x120uLL, 0) != 288)
      {
        v4 = *__error();
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
        {
          ktrace_file_open_internal_cold_2();
        }

        goto LABEL_4;
      }

      *(a1 + 168) = *(&v37 + 1);
      *(a1 + 176) = v38;
      v17 = 1000000000;
      if (*(&v38 + 1))
      {
        v18 = 1000000000;
        v19 = *(&v38 + 1);
        do
        {
          v17 = v19;
          v19 = v18 % v19;
          v18 = v17;
        }

        while (v19);
      }

      v20 = *(&v38 + 1) / v17;
      *(a1 + 188) = 0x3B9ACA00 / v17;
      *(a1 + 192) = v20;
      if (BYTE4(v38))
      {
        *(a1 + 298) = 1;
        v21 = 32;
      }

      else
      {
        v21 = 28;
        if (*(a1 + 298))
        {
          v21 = 32;
        }
      }

      v24 = (-(v21 * DWORD1(v37)) & 0xFFCLL) + v21 * SDWORD1(v37);
      if (*(a1 + 280) >= v24)
      {
        v26 = ktrace_chunk_create(a1, 7424, 1, 0, v24 - 288, 288);
        if (!v26)
        {
          goto LABEL_5;
        }

        v27 = v26;
        v5 = ktrace_chunk_array_append_internal(a1 + 24, v26);
        if (v5)
        {
          free(v27);
        }

        else
        {
          *(a1 + 72) = *(a1 + 64);
          *(a1 + 32) = v27;
          if (!synthesize_events_chunk(a1, (-v24 & 0xFFCLL) + v24))
          {
            goto LABEL_5;
          }
        }

        goto LABEL_20;
      }

      v25 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
      {
        ktrace_file_open_internal_cold_3((a1 + 280));
      }

      *__error() = v25;
LABEL_55:
      v5 = 22;
      goto LABEL_20;
    case 1437205248:
      *(a1 + 20) = 4;
      v7 = a1;
      v8 = 0;
      goto LABEL_16;
  }

LABEL_23:
  *(a1 + 20) = 0;
  LODWORD(v37) = 0;
  *(a1 + 296) = 0;
  if (ktrace_file_read(a1, &v37, 4uLL, 0) <= 3)
  {
    v4 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_file_open_internal_cold_7();
    }

    goto LABEL_4;
  }

  if (v37 > 0x186A0)
  {
    goto LABEL_55;
  }

  if (v37)
  {
    v22 = synthesize_thread_map_chunk(a1, 4uLL, v37);
    if (!v22)
    {
      goto LABEL_5;
    }

    v23 = v22[1] + v22[2];
  }

  else
  {
    v23 = 4;
  }

  if (!synthesize_events_chunk(a1, v23))
  {
    goto LABEL_5;
  }

  v5 = 0;
LABEL_20:
  if (*(a1 + 296) == a2)
  {
    return v5;
  }

  else
  {
    return 79;
  }
}

void *ktrace_file_open_memory(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = ktrace_file_alloc_memory(a1, a2, a3, a4);
  v5 = v4;
  if (v4)
  {
    v6 = ktrace_file_open_internal(v4, *(v4 + 296));
    if (v6)
    {
      v7 = v6;
      ktrace_file_close(v5);
      v5 = 0;
      *__error() = v7;
    }
  }

  return v5;
}

uint64_t ktrace_file_get_memory(uint64_t a1, void *a2, void *a3)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = *(a1 + 240);
  if (!v3)
  {
    return 79;
  }

  v4 = 0;
  *a2 = v3;
  *a3 = *(a1 + 280);
  return v4;
}

uint64_t ktrace_file_read(uint64_t a1, void *a2, size_t a3, unint64_t a4)
{
  *__error() = 0;
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v8 = *(a1 + 240);
  if (v8)
  {
    v9 = *(a1 + 248);
    if (v9 < a4 || a4 + a3 > v9)
    {
      v11 = __error();
      v12 = 22;
LABEL_12:
      *v11 = v12;
      return -1;
    }

    else
    {
      memcpy(a2, (v8 + a4), a3);
    }
  }

  else
  {
    while (1)
    {
      v10 = pread(*(a1 + 196), a2, a3, a4);
      if (v10 < a3)
      {
        v11 = __error();
        v12 = 79;
        goto LABEL_12;
      }

      if (v10 != -1)
      {
        return v10;
      }

      if (*__error() != 4)
      {
        return -1;
      }
    }
  }

  return a3;
}

uint64_t ktrace_file_ensure_space(void *a1, unint64_t a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a1[30])
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = a1[31];
  if (v3 >= a2)
  {
    return 0;
  }

  v4 = a1[31];
  while (v4 >= v3)
  {
    v4 = 2 * v4 - 1;
    if (v4 >= a2)
    {
      goto LABEL_11;
    }
  }

  v4 = a2;
LABEL_11:
  v6 = a1[32];
  v7 = (*(a1[32] + 16))();
  if (!v7)
  {
    return 12;
  }

  v8 = v7;
  result = 0;
  a1[30] = v8;
  a1[31] = v4;
  return result;
}

uint64_t ktrace_file_iterate_subfile(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (*(a1 + 16) == 4)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v23[0] = 0;
  v23[1] = v23;
  if (a3)
  {
    v4 = 32778;
  }

  else
  {
    v4 = 32779;
  }

  v23[2] = 0x2000000000;
  v24 = 1;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 0x40000000;
  v8[2] = __ktrace_file_iterate_subfile_block_invoke;
  v8[3] = &unk_27886E250;
  v9 = v4;
  v10 = a2;
  v8[6] = &v15;
  v8[7] = &v19;
  v8[8] = v23;
  v8[4] = a4;
  v8[5] = &v11;
  v5 = ktrace_file_iterate(a1, 0, v8);
  *(v12 + 6) = v5;
  v6 = *(v16 + 6);
  if (!v6)
  {
    *(v16 + 6) = v5;
    v6 = v5;
    if (!v5)
    {
      if (*(v20 + 24))
      {
        v6 = 0;
      }

      else
      {
        v6 = 2;
      }
    }
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(v23, 8);
  return v6;
}

void *ktrace_file_append_chunk(uint64_t a1, int a2, __int16 a3, __int16 a4, UInt8 *a5, CFIndex a6)
{
  if (a1 != -1)
  {
    if (!a1)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    if (*(a1 + 152))
    {
      v9 = 22;
LABEL_11:
      appended = 0;
      *__error() = v9;
      return appended;
    }
  }

  appended = ktrace_file_append_start(a1, a2, a3, a4);
  if (appended)
  {
    if (a5 && a6 && (v11 = ktrace_file_append_data(a1, appended, a5, a6)) != 0 || (v11 = ktrace_file_append_finish(a1, appended)) != 0)
    {
      v9 = v11;
      goto LABEL_11;
    }
  }

  return appended;
}

void *ktrace_file_append_file(uint64_t a1, int a2, __int16 a3, __int16 a4, char *a5, unint64_t a6, off_t a7)
{
  v33 = *MEMORY[0x277D85DE8];
  v13 = open(a5, 0);
  if ((v13 & 0x80000000) == 0)
  {
    v14 = v13;
    memset(&v26, 0, sizeof(v26));
    if (fstat(v13, &v26) == -1)
    {
      v21 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
      {
        ktrace_file_append_file_cold_3();
      }
    }

    else
    {
      st_size = v26.st_size;
      v16 = v26.st_size - a6;
      if (v26.st_size <= a6)
      {
        *__error() = 34;
        v21 = *__error();
        ktrace_log_init();
        v23 = ktrace_file_log;
        if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218496;
          v28 = a6;
          v29 = 2048;
          v30 = st_size;
          v31 = 1024;
          v32 = v21;
          _os_log_error_impl(&dword_22ED7A000, v23, OS_LOG_TYPE_ERROR, "invalid file size to append, offset = %jd, filesize = %jd (%{errno}d)", buf, 0x1Cu);
        }
      }

      else
      {
        v17 = mmap(0, v26.st_size - a6, 1, 1, v14, a6);
        if (v17 != -1)
        {
          v18 = v17;
          if (st_size >= a7)
          {
            v19 = a7;
          }

          else
          {
            v19 = st_size;
          }

          appended = ktrace_file_append_chunk(a1, a2, a3, a4, v17, v19);
          if (munmap(v18, v16) != -1)
          {
            goto LABEL_22;
          }

          v21 = *__error();
          ktrace_log_init();
          if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
          {
            ktrace_file_append_file_cold_1();
          }

LABEL_21:
          *__error() = v21;
LABEL_22:
          close(v14);
          goto LABEL_23;
        }

        v21 = *__error();
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
        {
          ktrace_file_append_file_cold_2();
        }
      }
    }

    appended = 0;
    goto LABEL_21;
  }

  v22 = *__error();
  ktrace_log_init();
  if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
  {
    ktrace_file_append_file_cold_4();
  }

  appended = 0;
  *__error() = v22;
LABEL_23:
  v24 = *MEMORY[0x277D85DE8];
  return appended;
}

void *ktrace_file_append_subchunk(uint64_t a1, uint64_t a2, int a3, __int16 a4, __int16 a5, UInt8 *a6, CFIndex a7)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (*(a1 + 152) == a2)
  {
    appended = ktrace_file_append_start_subchunk(a1, a2, a3, a4, a5);
    if (appended && (ktrace_file_append_data(a1, appended, a6, a7) || a1 != -1 && ktrace_file_append_finish(a1, appended)))
    {
      return 0;
    }
  }

  else
  {
    appended = 0;
    *__error() = 22;
  }

  return appended;
}

void *ktrace_file_append_start_subchunk(uint64_t a1, uint64_t a2, int a3, __int16 a4, __int16 a5)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (*(a1 + 152) == a2)
  {
    result = ktrace_file_append_start_internal(a1, a3, a4, a5);
    if (result)
    {
      *(a2 + 36) |= 0x8000u;
      result[5] = a2;
      *(a1 + 152) = result;
    }
  }

  else
  {
    v7 = __error();
    result = 0;
    *v7 = 22;
  }

  return result;
}

void *ktrace_file_append(uint64_t a1, void *a2)
{
  v4 = ktrace_chunk_size(a2);
  if (v4)
  {
    v5 = ktrace_chunk_map_data(a2, 0, v4);
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = ktrace_chunk_tag(a2);
  v8 = ktrace_chunk_version_major(a2);
  v9 = ktrace_chunk_version_minor(a2);
  appended = ktrace_file_append_chunk(a1, v7, v8, v9, v5, v4);
  if (v5)
  {
    ktrace_chunk_unmap_data(a2, v5, v4);
  }

  return appended;
}

uint64_t ktrace_file_header_iterate(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v5 = *(a1 + 200);
  if (v5)
  {
    v6 = *(a1 + 216);

    return ktrace_file_iterate_subfile(v5, v6, 1, a3);
  }

  else
  {
    v8 = ktrace_chunk_array_validate_chunk(a1, a1 + 80, &v11);
    if (v8)
    {
      v9 = v8;
      v10 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
      {
        ktrace_file_iterate_cold_1();
      }

      *__error() = v10;
    }

    else
    {
      if (v11)
      {
        while ((*(a3 + 16))(a3))
        {
          v9 = ktrace_chunk_array_next(a1, a1 + 80, &v11);
          if (v9 || !v11)
          {
            return v9;
          }
        }
      }

      else
      {
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_DEBUG))
        {
          ktrace_file_iterate_cold_3();
        }
      }

      return 0;
    }

    return v9;
  }
}

void *ktrace_file_header_append_live_cpu_map(uint64_t a1)
{
  v7 = 0;
  v8 = 0;
  v2 = kdebug_alloc_current_cpu_map(&v8, &v7);
  if (v2)
  {
    v3 = v2;
    v4 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_file_header_append_live_cpu_map_cold_1();
    }

    appended = 0;
    *__error() = v4;
  }

  else
  {
    appended = ktrace_file_header_append_chunk(a1, 7168, 1, 0, v8, v7);
    if (appended)
    {
      v3 = 0;
    }

    else
    {
      v3 = *__error();
    }
  }

  free(v8);
  *__error() = v3;
  return appended;
}

void *ktrace_file_append_live_thread_map(uint64_t a1)
{
  v7 = 0;
  v8 = 0;
  v2 = kdebug_alloc_thread_map(&v8, &v7);
  if (!v2)
  {
    appended = ktrace_file_append_chunk(a1, 7424, 0, 0, v8, v7);
    if (appended)
    {
      v3 = 0;
    }

    else
    {
      v3 = *__error();
    }

LABEL_10:
    free(v8);
    goto LABEL_11;
  }

  v3 = v2;
  if (v2 != 2)
  {
    v5 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_file_append_live_thread_map_cold_1();
    }

    appended = 0;
    *__error() = v5;
    goto LABEL_10;
  }

  v3 = 0;
  appended = 0;
LABEL_11:
  *__error() = v3;
  return appended;
}

uint64_t ktrace_file_append_live_ktrace_transformed(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int a4, void *a5, uint64_t a6)
{
  v49 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if ((*(a1 + 296) & 1) == 0)
  {
    *__error() = 22;
    v12 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_file_append_live_ktrace_cold_2();
    }

    goto LABEL_9;
  }

  bzero(v48, 0x388uLL);
  if (a4 <= 1 && !a6)
  {
    *__error() = 22;
    v12 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_file_append_live_ktrace_transformed_cold_2();
    }

LABEL_9:
    *__error() = v12;
    v13 = *__error();
    goto LABEL_10;
  }

  if (a4 < 2)
  {
    v37 = 0;
  }

  else
  {
    v37 = v48;
    ktrace_compressor_init(v48, a4);
  }

  v43 = 0;
  v40 = malloc_type_calloc(1uLL, 0x400000uLL, 0x57364E82uLL);
  if (!v40)
  {
    v12 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_file_append_live_ktrace_transformed_cold_7();
    }

    goto LABEL_9;
  }

  v38 = malloc_type_calloc(1uLL, 0x400000uLL, 0xE7EDE3B4uLL);
  if (!v38)
  {
    v13 = *__error();
    v26 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_file_append_live_ktrace_transformed_cold_6();
    }

    v19 = 0;
    *__error() = v26;
    goto LABEL_52;
  }

  v34 = a4;
  v35 = a5;
  v16 = 1000000 * a3;
  ktrace_log_init();
  if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_DEBUG))
  {
    ktrace_file_append_live_ktrace_transformed_cold_3();
  }

  v17 = mach_absolute_time();
  v18 = ktrace_current_timebase();
  v19 = 0;
  v20 = v18;
  v36 = v17 + v16 / v18 * HIDWORD(v18);
  v39 = HIDWORD(v18);
  while (1)
  {
    v42 = 0x400000;
    if (v16)
    {
      v21 = kdebug_wait_and_read_events(v40, &v42, v16 / 0xF4240);
    }

    else
    {
      v21 = kdebug_read_events(v40, &v42);
    }

    v13 = v21;
    if (v21)
    {
      *__error() = v21;
      v27 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
      {
        ktrace_file_append_live_ktrace_transformed_cold_4();
      }

      goto LABEL_46;
    }

    if (!v42)
    {
      break;
    }

    v22 = tracepoint_timestamp(v40 + v42 - 64, 1);
    v23 = v22;
    if (!a2 || v43 || v22 >= a2)
    {
      v41 = 0;
      appended = append_transformed_events_internal(a1, &v43, v40, v42, v38, 1, &v41, v37, a6);
      if (appended)
      {
        v13 = appended;
        *__error() = appended;
        v27 = *__error();
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
        {
          ktrace_file_append_live_ktrace_transformed_cold_5();
        }

LABEL_46:
        *__error() = v27;
        goto LABEL_51;
      }

      v19 += v41;
      if (v23 > v36)
      {
        ktrace_log_init();
        v32 = ktrace_file_log;
        if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          v45 = v36;
          v46 = 2048;
          v47 = v23;
          v29 = "ending transformed append: cutoff timestamp was %llu, newest event is %llu\n";
          v30 = v32;
          v31 = 22;
LABEL_49:
          _os_log_impl(&dword_22ED7A000, v30, OS_LOG_TYPE_INFO, v29, buf, v31);
        }

        goto LABEL_50;
      }
    }

    if (a3)
    {
LABEL_33:
      v25 = mach_absolute_time();
      v16 -= (v25 - v17) * v20 / v39;
      v17 = v25;
      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_50;
      }
    }

    else if ((v16 & 0x8000000000000000) != 0)
    {
      goto LABEL_50;
    }
  }

  if (a3)
  {
    goto LABEL_33;
  }

  ktrace_log_init();
  v28 = ktrace_file_log;
  if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    v29 = "ending transformed append: no more events";
    v30 = v28;
    v31 = 2;
    goto LABEL_49;
  }

LABEL_50:
  v13 = 0;
LABEL_51:
  a5 = v35;
  a4 = v34;
LABEL_52:
  free(v40);
  free(v38);
  if (v43)
  {
    v33 = finish_events_chunk(a1, v43, a4 > 1, v19);
    v13 = v33;
    if (a5)
    {
      if (!v33)
      {
        *a5 = v43;
      }
    }
  }

LABEL_10:
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t ktrace_file_append_live_filtered_ktrace(uint64_t a1, unsigned int a2, unsigned int a3, void *a4, uint64_t a5)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (a3 < 5)
  {

    return ktrace_file_append_live_ktrace_transformed(a1, 0, a2, a3, a4, a5);
  }

  else
  {
    v5 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_file_append_live_filtered_ktrace_cold_1();
    }

    *__error() = v5;
    return 22;
  }
}

void *ktrace_file_compress(uint64_t a1, unsigned int a2)
{
  v35 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (a2 <= 1 || *(a1 + 20) != 4)
  {
    v8 = 0;
    *__error() = 45;
    goto LABEL_10;
  }

  bzero(&__from, 0x400uLL);
  bzero(&__to, 0x400uLL);
  v4 = *(a1 + 196);
  if (v4 != -1)
  {
    if (fcntl(v4, 50, &__to) < 0)
    {
      v15 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
      {
        ktrace_file_compress_cold_3();
      }
    }

    else
    {
      __sprintf_chk(&__from, 0, 0x400uLL, "%s.XXXXXX", &__to);
      v5 = mkstemp(&__from);
      if (v5 < 0)
      {
        v15 = *__error();
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
        {
          ktrace_file_compress_cold_2();
        }
      }

      else
      {
        v6 = v5;
        if ((fcopyfile(v4, v5, 0, 7u) & 0x80000000) == 0)
        {
          fd = ktrace_file_create_fd(a1, v6);
          goto LABEL_12;
        }

        v17 = *__error();
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
        {
          ktrace_file_compress_cold_1();
        }

        *__error() = v17;
        v15 = *__error();
        close(v6);
      }
    }

    v8 = 0;
    *__error() = v15;
    goto LABEL_10;
  }

  fd = ktrace_file_create_memory(a1, *(a1 + 256), *(a1 + 264));
LABEL_12:
  v8 = fd;
  if (fd)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2000000000;
    v26 = 0;
    v11 = malloc_type_malloc(0x400000uLL, 0x97CDF27AuLL);
    if (v11)
    {
      v12 = v11;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 0x40000000;
      v21[2] = __ktrace_file_compress_block_invoke;
      v21[3] = &unk_27886DFB8;
      v21[5] = v8;
      v21[6] = v11;
      v22 = a2;
      v21[4] = &v23;
      v13 = ktrace_file_iterate(a1, 0, v21);
      if (v13)
      {
        *(v24 + 6) = v13;
      }

      else if (!*(v24 + 6) && (*(a1 + 196) & 0x80000000) == 0)
      {
        rename(&__from, &__to, v14);
        if (v18 < 0)
        {
          *(v24 + 6) = *__error();
          v19 = *__error();
          ktrace_log_init();
          v20 = ktrace_file_log;
          if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            p_from = &__from;
            v29 = 2080;
            p_to = &__to;
            v31 = 1024;
            v32 = v19;
            _os_log_error_impl(&dword_22ED7A000, v20, OS_LOG_TYPE_ERROR, "failed to rename %s to %s (%{errno}d)", buf, 0x1Cu);
          }

          *__error() = v19;
        }
      }

      free(v12);
      if (!*(v24 + 6))
      {
        ktrace_file_close(a1);
        goto LABEL_33;
      }

      if (v4 != -1)
      {
        unlink(&__from);
      }

      ktrace_file_close(v8);
      v16 = *(v24 + 6);
    }

    else
    {
      v16 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
      {
        ktrace_file_append_live_ktrace_transformed_cold_6();
      }
    }

    v8 = 0;
    *__error() = v16;
LABEL_33:
    _Block_object_dispose(&v23, 8);
  }

LABEL_10:
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t __ktrace_file_compress_block_invoke(uint64_t a1, void *a2)
{
  if (ktrace_chunk_tag(a2) == 7680)
  {
    if (ktrace_chunk_size(a2) >= 9 && !append_transformed_events(*(a1 + 40), a2, *(a1 + 48), *(a1 + 56), 0))
    {
      goto LABEL_4;
    }
  }

  else if (!ktrace_file_append(*(a1 + 40), a2))
  {
LABEL_4:
    v4 = __error();
    result = 0;
    *(*(*(a1 + 32) + 8) + 24) = *v4;
    return result;
  }

  return 1;
}

uint64_t append_transformed_events(uint64_t a1, void *a2, UInt8 *a3, unsigned int a4, uint64_t a5)
{
  v27 = *MEMORY[0x277D85DE8];
  v10 = ktrace_chunk_size(a2);
  v11 = v10 - 8;
  if (v10 > 8)
  {
    v14 = v10;
    v15 = ktrace_chunk_map_data(a2, 0, v10);
    if (v15)
    {
      v16 = v15;
      bzero(v26, 0x388uLL);
      ktrace_compressor_init(v26, a4);
      v24 = 0;
      v25 = 0;
      is_64_bit = ktrace_file_is_64_bit(a1);
      if (a4 <= 1)
      {
        v18 = 0;
      }

      else
      {
        v18 = v26;
      }

      appended = append_transformed_events_internal(a1, &v25, v16 + 8, v11, a3, is_64_bit, &v24, v18, a5);
      if (appended || (appended = finish_events_chunk(a1, v25, 1, v24)) != 0)
      {
        *__error() = appended;
      }

      v20 = *__error();
      ktrace_chunk_unmap_data(a2, v16, v14);
      *__error() = v20;
      result = v25;
    }

    else
    {
      v21 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
      {
        append_transformed_events_cold_1();
      }

      v22 = __error();
      result = 0;
      *v22 = v21;
    }
  }

  else
  {
    v12 = __error();
    result = 0;
    *v12 = 22;
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ktrace_file_append_filtered_kdebug_events(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v6 = ktrace_chunk_tag(a2);
  if (v6 == 7680)
  {
    v9 = malloc_type_malloc(0x400000uLL, 0xD06212E9uLL);
    if (!v9)
    {
      return 0;
    }

    v10 = v9;
    appended = append_transformed_events(a1, a2, v9, 1u, a3);
    v7 = *__error();
    free(v10);
  }

  else
  {
    if (v6 == 7936)
    {
      v7 = 45;
    }

    else
    {
      v7 = 22;
    }

    appended = 0;
  }

  *__error() = v7;
  return appended;
}

uint64_t ktrace_capture_live_stackshot()
{
  v0 = stackshot_config_create();
  if (!v0)
  {
    *__error() = 12;
    v3 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_capture_live_stackshot_cold_3();
    }

    goto LABEL_10;
  }

  v1 = v0;
  v2 = stackshot_config_set_flags();
  if (v2)
  {
    v3 = v2;
    stackshot_config_dealloc();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_capture_live_stackshot_cold_1();
    }

LABEL_10:
    v1 = 0;
    *__error() = v3;
    return v1;
  }

  v4 = stackshot_capture_with_config();
  if (v4)
  {
    v5 = v4;
    stackshot_config_dealloc();
    *__error() = v5;
    v3 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_capture_live_stackshot_cold_2();
    }

    goto LABEL_10;
  }

  return v1;
}

void *ktrace_file_append_stackshot(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  appended = ktrace_file_append_start(a1, 32770, 1, 0);
  if (appended)
  {
    stackshot_buffer = stackshot_config_get_stackshot_buffer();
    stackshot_size = stackshot_config_get_stackshot_size();
    v6 = ktrace_file_append_data(a1, appended, stackshot_buffer, stackshot_size);
    if (v6 || (v6 = ktrace_file_append_finish(a1, appended)) != 0)
    {
      appended = 0;
      *__error() = v6;
    }
  }

  return appended;
}

uint64_t ktrace_file_append_live_stackshot_internal(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  result = ktrace_capture_live_stackshot();
  if (result)
  {
    appended = ktrace_file_append_stackshot(a1, result);
    stackshot_config_dealloc();
    return appended;
  }

  return result;
}

uint64_t ktrace_file_walltime_offset(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (*(a1 + 20) != 5)
  {
    *a2 = *(a1 + 160);
    if (a3)
    {
      v7 = *(a1 + 168);
      if (!v7)
      {
        return 79;
      }

      *a3 = v7;
      *(a3 + 8) = *(a1 + 176);
    }

    if (a4)
    {
      if (*(a1 + 297) == 1)
      {
        v6 = 0;
        *a4 = *(a1 + 180);
        return v6;
      }

      ktrace_log_init();
      if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_DEBUG))
      {
        ktrace_file_walltime_offset_cold_1();
      }

      if (gettimeofday(0, a4))
      {
        return *__error();
      }
    }

    return 0;
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = __ktrace_file_walltime_offset_block_invoke;
  v9[3] = &unk_27886DFE0;
  v9[6] = a2;
  v9[7] = a3;
  v9[8] = a4;
  v9[4] = &v10;
  v9[5] = &v14;
  v5 = ktrace_file_iterate(a1, 0, v9);
  if (*(v11 + 24) == 1)
  {
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = *(v15 + 6) != 0;
    }
  }

  else
  {
    v6 = 79;
  }

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
  return v6;
}

uint64_t __ktrace_file_walltime_offset_block_invoke(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v9[1] = 0;
  if (*(a1 + 56))
  {
    v3 = v9;
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = ktariadne_read_times(a2, *(a1 + 48), 0, v3, *(a1 + 64), (*(*(a1 + 40) + 8) + 24));
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v4 = *(a1 + 56);
    if (v4)
    {
      timespec_to_timeval();
      *v4 = v5;
      v4[1] = v6;
      v7 = *(*(*(a1 + 32) + 8) + 24) ^ 1;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

uint64_t ktrace_file_machtime_to_walltime(uint64_t a1, void *a2, unint64_t a3)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v23[1] = 0;
  v24 = 0;
  v23[0] = 0;
  result = ktrace_file_walltime_offset(a1, &v24, v23, 0);
  if (!result)
  {
    v7 = *(a1 + 192);
    if (v7)
    {
      v22[0] = *(a1 + 188);
      v22[1] = v7;
      timeval_to_timespec();
      v9 = v8;
      v11 = v10;
      v12 = machtime_to_timespec(v22, v24);
      v14 = timespec_subtract(v9, v11, v12, v13);
      v16 = v15;
      v17 = machtime_to_timespec(v22, a3);
      timespec_add(v17, v18, v14, v16);
      timespec_to_timeval();
      v20 = v19;
      result = 0;
      *a2 = v20;
      a2[1] = v21;
    }

    else
    {
      return 79;
    }
  }

  return result;
}

uint64_t ktrace_file_timebase(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!*(a1 + 192))
  {
    return 79;
  }

  v3 = 0;
  *a2 = *(a1 + 188);
  *a3 = *(a1 + 192);
  return v3;
}

uint64_t ktrace_file_earliest_walltime(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  memset(v7, 0, sizeof(v7));
  result = ktrace_file_passive_interval(a1, v7);
  if (result)
  {
    v6 = 0;
    result = ktrace_file_earliest_timestamp(a1, &v6);
    if (!result)
    {
      result = ktrace_file_machtime_to_walltime(a1, a2, v6);
    }
  }

  else
  {
    *a2 = v7[0];
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ktrace_file_passive_interval(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = __ktrace_file_passive_interval_block_invoke;
  v4[3] = &unk_27886E2A0;
  v4[5] = &v9;
  v4[6] = a2;
  v4[4] = &v5;
  v2 = ktrace_file_iterate(a1, 0, v4);
  if (!v2)
  {
    v2 = *(v10 + 6);
    if (!v2)
    {
      if (*(v6 + 24))
      {
        v2 = 0;
      }

      else
      {
        v2 = 2;
      }
    }
  }

  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(&v9, 8);
  return v2;
}

uint64_t ktrace_file_earliest_timestamp(uint64_t a1, void *a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 0x40000000;
  v10[2] = __ktrace_file_earliest_timestamp_block_invoke;
  v10[3] = &unk_27886E008;
  v10[4] = &v19;
  v10[5] = &v11;
  v10[6] = &v15;
  v10[7] = a1;
  v3 = ktrace_file_iterate(a1, 0, v10);
  if (v3)
  {
    v4 = v3;
    *__error() = v3;
    v5 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_file_earliest_timestamp_cold_1();
    }

    *__error() = v5;
  }

  else
  {
    v6 = *(v20 + 6);
    if (v6)
    {
      *__error() = v6;
      v7 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
      {
        ktrace_file_earliest_timestamp_cold_2();
      }

      *__error() = v7;
      v4 = *(v20 + 6);
    }

    else if (v16[3])
    {
      v4 = 0;
      *a2 = v12[3];
    }

    else
    {
      *__error() = 22;
      v8 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
      {
        ktrace_file_earliest_timestamp_cold_3();
      }

      *__error() = v8;
      v4 = 22;
    }
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  return v4;
}

uint64_t __ktrace_file_earliest_timestamp_block_invoke(void *a1, uint64_t *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = ktrace_chunk_tag(a2);
  v5 = v4;
  if (v4 != 7680 && v4 != 20982 && v4 != 7936 || !ktrace_stream_estimate_events(a2))
  {
    goto LABEL_32;
  }

  is_64_bit = ktrace_file_is_64_bit(a1[7]);
  memset(v16, 0, sizeof(v16));
  if (is_64_bit)
  {
    v7 = 64;
  }

  else
  {
    v7 = 32;
  }

  if (v5 == 20982)
  {
    if (ktrace_chunk_size(a2) < 0x30)
    {
      goto LABEL_32;
    }

    memset(v17, 0, 48);
    *(*(a1[4] + 8) + 24) = ktrace_chunk_copy_data(a2, 0, v17, 0x30uLL);
    v12 = *&v17[0] & 0xFFFFFFFFFFFFFFLL;
    goto LABEL_21;
  }

  v8 = is_64_bit;
  if (v5 == 7936)
  {
    if (ktrace_chunk_size(a2) < 0xD)
    {
      goto LABEL_32;
    }

    v11 = (ktrace_chunk_size(a2) - 77) >= 0xFFFFFFFFFFFFFFBFLL ? ktrace_chunk_size(a2) - 12 : 64;
    *(*(a1[4] + 8) + 24) = ktrace_chunk_copy_data(a2, 12, v18, v11);
    if (*(*(a1[4] + 8) + 24))
    {
      goto LABEL_32;
    }

    bzero(v17, 0x388uLL);
    ktrace_compressor_reset(v17);
    v13 = decompress_32;
    if (v8)
    {
      v13 = decompress_64;
    }

    v15 = 64;
    if (v13(v17, v18, &v15, v16, v7) != v7)
    {
      *(*(a1[4] + 8) + 24) = 79;
      goto LABEL_32;
    }

    v12 = *&v16[0];
    if (!v8)
    {
      v12 = *&v16[0] & 0xFFFFFFFFFFFFFFLL;
    }

LABEL_21:
    *(*(a1[5] + 8) + 24) = v12;
    *(*(a1[6] + 8) + 24) = 1;
    goto LABEL_22;
  }

  if (v5 != 7680)
  {
LABEL_22:
    result = 0;
    goto LABEL_33;
  }

  if (ktrace_chunk_size(a2) < (v7 | 8))
  {
LABEL_32:
    result = 1;
    goto LABEL_33;
  }

  *(*(a1[4] + 8) + 24) = ktrace_chunk_copy_data(a2, 8, v16, v7);
  result = 1;
  if (!*(*(a1[4] + 8) + 24))
  {
    v10 = *&v16[0];
    if (!v8)
    {
      v10 = *&v16[0] & 0xFFFFFFFFFFFFFFLL;
    }

    *(*(a1[5] + 8) + 24) = v10;
    *(*(a1[6] + 8) + 24) = 1;
    goto LABEL_22;
  }

LABEL_33:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ktrace_file_latest_timestamp(uint64_t a1, void *a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x2000000000;
  v29 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 0x40000000;
  v17[2] = __ktrace_file_latest_timestamp_block_invoke;
  v17[3] = &unk_27886E030;
  v17[4] = &v26;
  v17[5] = &v18;
  v17[6] = &v22;
  v4 = ktrace_file_iterate(a1, 0, v17);
  v5 = v4;
  if (v4 || (v5 = *(v19 + 6)) != 0)
  {
    *__error() = v5;
    v6 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_file_latest_timestamp_cold_1();
    }

    *__error() = v6;
    if (!v4)
    {
LABEL_8:
      v4 = *(v19 + 6);
    }
  }

  else
  {
    v7 = v23[3];
    if (v7)
    {
      v4 = 0;
      *a2 = v7;
      goto LABEL_11;
    }

    if (!v27[3])
    {
      v4 = 45;
      goto LABEL_11;
    }

    v9 = ktrace_stream_create(0, *(a1 + 298), 1);
    if (!v9)
    {
      v4 = *__error();
      goto LABEL_11;
    }

    v10 = v9;
    v4 = ktrace_stream_add(v9, v27[3]);
    if (!v4)
    {
      if (ktrace_chunk_tag(v27[3]) == 7936)
      {
        v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v12 = dispatch_queue_create("com.apple.ktrace.latest_timestamp", v11);
        v13 = dispatch_group_create();
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 0x40000000;
        v16[2] = __ktrace_file_latest_timestamp_block_invoke_5;
        v16[3] = &unk_27886E080;
        v16[4] = &v22;
        v16[5] = a1;
        v4 = ktrace_stream_iterate_group(v10, 0x400000uLL, v12, v13, v16);
        dispatch_group_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
        dispatch_release(v12);
      }

      else
      {
        end_iterator = ktrace_stream_create_end_iterator(v10);
        if (end_iterator)
        {
          memset(v15, 0, sizeof(v15));
          ktrace_iter_get_event(end_iterator, v15);
          v4 = 0;
          v23[3] = *&v15[0];
        }

        else
        {
          v4 = *__error();
        }
      }

      ktrace_stream_destroy(v10);
      *a2 = v23[3];
      if (!v4)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_11:
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
  return v4;
}

uint64_t __ktrace_file_latest_timestamp_block_invoke(void *a1, uint64_t *a2)
{
  if ((ktrace_chunk_tag(a2) == 7680 || ktrace_chunk_tag(a2) == 7936 || ktrace_chunk_tag(a2) == 20982) && ktrace_stream_estimate_events(a2))
  {
    *(*(a1[4] + 8) + 24) = a2;
  }

  if (ktrace_chunk_tag(a2) == 32775 && !ktrace_chunk_version_major(a2) && ktrace_chunk_size(a2) >= 8)
  {
    v5 = 0;
    *(*(a1[5] + 8) + 24) = ktrace_chunk_copy_data(a2, 0, &v5, 8uLL);
    if (!*(*(a1[5] + 8) + 24))
    {
      *(*(a1[6] + 8) + 24) = v5;
    }
  }

  return 1;
}

BOOL __ktrace_file_latest_timestamp_block_invoke_5(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = *(a1 + 40);
  v5 = *(v4 + 298);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 0x40000000;
  v7[2] = __ktrace_file_latest_timestamp_block_invoke_2;
  v7[3] = &unk_27886E058;
  v7[4] = *(a1 + 32);
  v7[5] = v4;
  return trace_enumerate(a2, a3, v5, v7);
}

uint64_t ktrace_file_earliest_continuous_time(uint64_t a1, uint64_t *a2)
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v4 = kttimesync_init(v7, a1, 0);
  if (!v4)
  {
    v6 = 0;
    v4 = ktrace_file_earliest_timestamp(a1, &v6);
    if (!v4)
    {
      *a2 = kttimesync_cont_from_timestamp(v7, v6);
    }
  }

  return v4;
}

uint64_t ktrace_file_latest_continuous_time(uint64_t a1, uint64_t *a2)
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v4 = kttimesync_init(v7, a1, 0);
  if (!v4)
  {
    v6 = 0;
    v4 = ktrace_file_latest_timestamp(a1, &v6);
    if (!v4)
    {
      *a2 = kttimesync_cont_from_timestamp(v7, v6);
    }
  }

  return v4;
}

uint64_t ktrace_file_latest_walltime(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  result = ktrace_file_passive_interval(a1, &v7);
  if (result)
  {
    v6 = 0;
    result = ktrace_file_latest_timestamp(a1, &v6);
    if (!result)
    {
      result = ktrace_file_machtime_to_walltime(a1, a2, v6);
    }
  }

  else
  {
    *a2 = v8;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ktrace_file_supports_continuous_time(uint64_t a1)
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  v1 = kttimesync_init(v3, a1, 0);
  result = 0;
  if (!v1)
  {
    return kttimesync_can_convert_continuous(v3);
  }

  return result;
}

uint64_t ktrace_file_uuid(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = __ktrace_file_uuid_block_invoke;
  v5[3] = &unk_27886E0A8;
  v5[5] = &v10;
  v5[6] = a2;
  v5[4] = &v6;
  v2 = ktrace_file_header_iterate(a1, 0, v5);
  if (*(v11 + 24) == 1)
  {
    if (v2)
    {
      v3 = 1;
    }

    else
    {
      v3 = *(v7 + 6) != 0;
    }
  }

  else
  {
    v3 = 22;
  }

  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v10, 8);
  return v3;
}

uint64_t __ktrace_file_uuid_block_invoke(uint64_t a1, uint64_t *a2)
{
  if (ktrace_chunk_tag(a2) != 35841)
  {
    return 1;
  }

  v4 = 1;
  if (!ktrace_chunk_version_major(a2))
  {
    *(*(*(a1 + 32) + 8) + 24) = ktrace_chunk_copy_data(a2, 0, *(a1 + 48), 0x10uLL);
    *(*(*(a1 + 40) + 8) + 24) = 1;
    return 0;
  }

  return v4;
}

uint64_t ktrace_file_ktrace_event_count(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = __ktrace_file_ktrace_event_count_block_invoke;
  v4[3] = &unk_27886E0D0;
  v4[4] = &v5;
  v1 = ktrace_file_iterate(a1, 0, v4);
  if (v1)
  {
    *__error() = v1;
    v2 = -1;
  }

  else
  {
    v2 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __ktrace_file_ktrace_event_count_block_invoke(uint64_t a1, uint64_t *a2)
{
  v4 = ktrace_chunk_tag(a2);
  if (v4 == 7680 || v4 == 20982 || v4 == 7936)
  {
    *(*(*(a1 + 32) + 8) + 24) += ktrace_stream_estimate_events(a2);
  }

  return 1;
}

void *ktrace_file_create_iterator(uint64_t a1)
{
  v2 = ktrace_stream_create(0, *(a1 + 298), 0);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 0x40000000;
  v7[2] = __ktrace_file_create_iterator_block_invoke;
  v7[3] = &__block_descriptor_tmp_12;
  v7[4] = v2;
  v4 = ktrace_file_iterate(a1, 0, v7);
  iterator = 0;
  if (!v4)
  {
    iterator = ktrace_stream_create_iterator(v3);
  }

  ktrace_stream_destroy(v3);
  return iterator;
}

const __CFDictionary *ktrace_file_relationship_type(const __CFDictionary *result)
{
  if (result)
  {
    Value = CFDictionaryGetValue(result, @"type");
    return (Value && CFStringCompare(Value, @"bridge", 0) == kCFCompareEqualTo);
  }

  return result;
}

uint64_t ktrace_file_iterate_subfiles(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 0x40000000;
  v6[2] = __ktrace_file_iterate_subfiles_block_invoke;
  v6[3] = &unk_27886E140;
  v6[6] = &v11;
  v6[7] = a1;
  v6[4] = a2;
  v6[5] = &v7;
  v2 = ktrace_file_iterate(a1, 0, v6);
  *(v8 + 6) = v2;
  v3 = *(v12 + 6);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  *(v12 + 6) = v4;
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  return v4;
}

uint64_t __ktrace_file_iterate_subfiles_block_invoke(void *a1, uint64_t *a2)
{
  if (ktrace_chunk_tag(a2) == 32778)
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x2000000000;
    v38 = -1;
    v31 = 0;
    v32 = &v31;
    v33 = 0x2000000000;
    v34 = 0;
    v24 = 0;
    v25 = &v24;
    v26 = 0x5000000000;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x2000000000;
    v23 = 0;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 0x40000000;
    v19[2] = __ktrace_file_iterate_subfiles_block_invoke_2;
    v19[3] = &unk_27886E118;
    v19[4] = a1[6];
    v19[5] = &v35;
    v19[6] = &v20;
    v19[7] = &v24;
    v19[8] = &v31;
    *(*(a1[5] + 8) + 24) = ktrace_chunk_iterate_subchunks(a2, 0, v19);
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 24);
    if (!v5)
    {
      v5 = *(*(a1[5] + 8) + 24);
    }

    *(v4 + 24) = v5;
    if (*(*(a1[6] + 8) + 24))
    {
      goto LABEL_5;
    }

    if (v21[3])
    {
      v7 = *(v36 + 6);
      if (v7 != -1)
      {
        if (*(v25 + 14) == 1)
        {
          v8 = *(a1[7] + 208);
          if (!v8)
          {
            *(a1[7] + 208) = CFDictionaryCreateMutable(0, 1, &long_key_callbacks, MEMORY[0x277CBF150]);
            v8 = *(a1[7] + 208);
            if (!v8)
            {
              ktrace_postprocess_file_internal_cold_4();
            }

            v7 = *(v36 + 6);
          }

          Value = CFDictionaryGetValue(v8, v7);
          if (!Value)
          {
            ktrace_file_alloc();
            Value = v10;
            *(v10 + 196) = -1;
            *(v10 + 16) = 3;
            v11 = a1[7];
            *(v10 + 200) = v11;
            v12 = v36;
            *(v10 + 216) = *(v36 + 6);
            v13 = v25;
            *(v10 + 298) = *(v25 + 76) & 1;
            *&v14 = *(v13 + 68);
            *(&v14 + 1) = v13[5];
            *(v10 + 160) = v13[6];
            *(v10 + 180) = v14;
            *(v10 + 297) = 1;
            CFDictionarySetValue(*(v11 + 208), *(v12 + 6), v10);
            CFRelease(Value);
          }

          v15 = v32[3];
          if (!v15 || Value[28])
          {
            goto LABEL_19;
          }

          v16 = ktrace_chunk_copy_plist(v15);
          if (v16)
          {
            Value[28] = v16;
LABEL_19:
            (*(a1[4] + 16))();
LABEL_5:
            v6 = 1;
LABEL_28:
            _Block_object_dispose(&v20, 8);
            _Block_object_dispose(&v24, 8);
            _Block_object_dispose(&v31, 8);
            _Block_object_dispose(&v35, 8);
            return v6;
          }

          v6 = 0;
LABEL_27:
          *(*(a1[6] + 8) + 24) = 79;
          goto LABEL_28;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (!v32[3])
      {
        goto LABEL_5;
      }

      if (*(v36 + 6) != -1)
      {
LABEL_22:
        v17 = *__error();
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
        {
          __ktrace_file_iterate_subfiles_block_invoke_cold_1();
        }

LABEL_26:
        v6 = 0;
        *__error() = v17;
        goto LABEL_27;
      }
    }

    v17 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      __ktrace_file_iterate_subfiles_block_invoke_cold_3();
    }

    goto LABEL_26;
  }

  return 1;
}

BOOL __ktrace_file_iterate_subfiles_block_invoke_2(void *a1, uint64_t a2)
{
  v4 = ktrace_chunk_tag(a2);
  if (v4 == 32777)
  {
    if (*(*(a1[8] + 8) + 24) || ktrace_chunk_version_major(a2))
    {
      *(*(a1[4] + 8) + 24) = 79;
      v5 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        __ktrace_file_iterate_subfiles_block_invoke_2_cold_1();
      }

      goto LABEL_17;
    }

    *(*(a1[8] + 8) + 24) = a2;
    return 1;
  }

  if (v4 == 32781)
  {
    if ((*(*(a1[6] + 8) + 24) & 1) != 0 || ktrace_chunk_size(a2) < 0x38 || ktrace_chunk_version_major(a2))
    {
      *(*(a1[4] + 8) + 24) = 79;
      v5 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        __ktrace_file_iterate_subfiles_block_invoke_2_cold_2();
      }

      goto LABEL_17;
    }

    *(*(a1[6] + 8) + 24) = 1;
    v8 = (*(a1[7] + 8) + 24);
    v9 = a2;
    v10 = 56;
    goto LABEL_22;
  }

  if (v4 != 32780)
  {
    return 1;
  }

  if (ktrace_chunk_size(a2) < 4 || ktrace_chunk_version_major(a2))
  {
    *(*(a1[4] + 8) + 24) = 79;
    v5 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      __ktrace_file_iterate_subfiles_block_invoke_2_cold_3();
    }

LABEL_17:
    v6 = __error();
    result = 0;
    *v6 = v5;
    return result;
  }

  v8 = (*(a1[5] + 8) + 24);
  v9 = a2;
  v10 = 4;
LABEL_22:
  *(*(a1[4] + 8) + 24) = ktrace_chunk_copy_data(v9, 0, v8, v10);
  return *(*(a1[4] + 8) + 24) == 0;
}

uint64_t ktrace_file_create_subfile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, const void *a8)
{
  v32 = 0;
  v33 = &v32;
  v34 = 0x2000000000;
  v35 = 0;
  v36 = 1;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 0x40000000;
  v37[2] = __find_unused_subfile_id_block_invoke;
  v37[3] = &__block_descriptor_tmp_37;
  v37[4] = &v36;
  v16 = ktrace_file_iterate_subfiles(a1, v37);
  if (v16)
  {
    goto LABEL_2;
  }

  appended = ktrace_file_append_start(a1, 32778, 0, 0);
  if (!appended)
  {
    goto LABEL_14;
  }

  v19 = appended;
  if (!ktrace_file_append_subchunk(a1, appended, 32780, 0, 0, &v36, 4))
  {
    goto LABEL_14;
  }

  v28[0] = 0x155AA0300;
  v28[1] = 40;
  v28[2] = a2;
  v28[3] = a3;
  v28[4] = a4;
  v29 = a5;
  v30 = a6;
  v31 = a7;
  if (!ktrace_file_append_subchunk(a1, v19, 32781, 0, 0, v28, 56))
  {
    goto LABEL_14;
  }

  if (!a8)
  {
    goto LABEL_10;
  }

  Data = CFPropertyListCreateData(0, a8, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (!Data)
  {
LABEL_16:
    v17 = 5;
    goto LABEL_17;
  }

  v21 = Data;
  BytePtr = CFDataGetBytePtr(Data);
  Length = CFDataGetLength(v21);
  if (!ktrace_file_append_subchunk(a1, v19, 32777, 0, 0, BytePtr, Length))
  {
    __error();
    CFRelease(v21);
LABEL_14:
    if (*__error())
    {
      v17 = *__error();
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  CFRelease(v21);
LABEL_10:
  v16 = ktrace_file_append_finish(a1, v19);
  if (v16)
  {
LABEL_2:
    v17 = v16;
LABEL_17:
    v24 = 0;
    *__error() = v17;
    goto LABEL_18;
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 0x40000000;
  v26[2] = __ktrace_file_create_subfile_block_invoke;
  v26[3] = &unk_27886E168;
  v27 = v36;
  v26[4] = &v32;
  ktrace_file_iterate_subfiles(a1, v26);
  v24 = v33[3];
  if (!v24)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  *(v24 + 299) = 1;
LABEL_18:
  _Block_object_dispose(&v32, 8);
  return v24;
}

uint64_t __ktrace_file_create_subfile_block_invoke(uint64_t result, uint64_t a2)
{
  if (*(a2 + 216) == *(result + 40))
  {
    *(*(*(result + 32) + 8) + 24) = a2;
  }

  return result;
}

uint64_t ktrace_file_append_subfile(uint64_t a1, uint64_t a2, const void *a3)
{
  v30 = 0;
  v31 = &v30;
  v32 = 0x2000000000;
  v34 = 1;
  v19 = MEMORY[0x277D85DD0];
  v20 = 0x40000000;
  v21 = __find_unused_subfile_id_block_invoke;
  *&v22 = &__block_descriptor_tmp_37;
  *(&v22 + 1) = &v34;
  v33 = ktrace_file_iterate_subfiles(a1, &v19);
  v6 = *(v31 + 6);
  if (!v6)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2000000000;
    appended = ktrace_file_append_start(a1, 32778, 0, 0);
    v7 = v27[3];
    if (v7)
    {
      if (ktrace_file_append_subchunk(a1, v7, 32780, 0, 0, &v34, 4))
      {
        v19 = 0x155AA0300;
        v20 = 40;
        v21 = *(a2 + 188);
        v22 = *(a2 + 160);
        v23 = *(a2 + 176);
        v8 = *(a2 + 298);
        v24 = *(a2 + 184);
        v25 = v8;
        if (ktrace_file_append_subchunk(a1, v27[3], 32781, 0, 0, &v19, 56))
        {
          if (a3)
          {
            Data = CFPropertyListCreateData(0, a3, kCFPropertyListBinaryFormat_v1_0, 0, 0);
            if (!Data)
            {
              goto LABEL_20;
            }

            v10 = Data;
            v11 = v27[3];
            BytePtr = CFDataGetBytePtr(Data);
            Length = CFDataGetLength(v10);
            if (!ktrace_file_append_subchunk(a1, v11, 32777, 0, 0, BytePtr, Length))
            {
              *(v31 + 6) = *__error();
              CFRelease(v10);
              v17 = *(v31 + 6);
              if (v17)
              {
                v6 = v17;
              }

              else
              {
                v6 = 5;
              }

              goto LABEL_21;
            }

            CFRelease(v10);
          }

          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 0x40000000;
          v18[2] = __ktrace_file_append_subfile_block_invoke;
          v18[3] = &unk_27886E190;
          v18[4] = &v30;
          v18[5] = &v26;
          v18[6] = a1;
          v14 = ktrace_file_header_iterate(a2, 0, v18);
          if (v14)
          {
            goto LABEL_10;
          }

          v6 = *(v31 + 6);
          if (v6)
          {
            goto LABEL_21;
          }

          v14 = ktrace_file_append_finish(a1, v27[3]);
          *(v31 + 6) = v14;
          if (v14)
          {
LABEL_10:
            v6 = v14;
LABEL_21:
            _Block_object_dispose(&v26, 8);
            goto LABEL_22;
          }

          v15 = ktrace_file_append_start(a1, 32779, 0, 0);
          v27[3] = v15;
          if (v15 && ktrace_file_append_subchunk(a1, v15, 32780, 0, 0, &v34, 4))
          {
            v14 = ktrace_file_iterate(a2, 0, v18);
            if (!v14)
            {
              v6 = *(v31 + 6);
              if (!v6)
              {
                v6 = ktrace_file_append_finish(a1, v27[3]);
                *(v31 + 6) = v6;
              }

              goto LABEL_21;
            }

            goto LABEL_10;
          }
        }
      }
    }

    if (*__error())
    {
      v6 = *__error();
      goto LABEL_21;
    }

LABEL_20:
    v6 = 5;
    goto LABEL_21;
  }

LABEL_22:
  _Block_object_dispose(&v30, 8);
  return v6;
}

uint64_t __ktrace_file_append_subfile_block_invoke(void *a1, void *a2)
{
  v4 = ktrace_chunk_size_t(a2);
  v5 = ktrace_chunk_map_data(a2, 0, v4);
  if (v5)
  {
    v6 = v5;
    v7 = a1[6];
    v8 = *(*(a1[5] + 8) + 24);
    v9 = ktrace_chunk_tag(a2);
    v10 = ktrace_chunk_version_major(a2);
    v11 = ktrace_chunk_version_minor(a2);
    v12 = ktrace_chunk_size_t(a2);
    if (ktrace_file_append_subchunk(v7, v8, v9, v10, v11, v6, v12))
    {
      v13 = ktrace_chunk_size_t(a2);
      ktrace_chunk_unmap_data(a2, v6, v13);
      return 1;
    }

    *(*(a1[4] + 8) + 24) = *__error();
    v16 = ktrace_chunk_size_t(a2);
    ktrace_chunk_unmap_data(a2, v6, v16);
    v17 = *(a1[4] + 8);
    if (*(v17 + 24))
    {
      return 0;
    }

    result = 0;
    *(v17 + 24) = 5;
  }

  else
  {
    if (*(*(a1[4] + 8) + 24))
    {
      return 0;
    }

    if (*__error())
    {
      v15 = *__error();
    }

    else
    {
      v15 = 5;
    }

    result = 0;
    *(*(a1[4] + 8) + 24) = v15;
  }

  return result;
}

uint64_t __ktrace_file_write_header_template_block_invoke(uint64_t a1, void *a2)
{
  if (ktrace_chunk_tag(a2) == 35841)
  {
    return 1;
  }

  v4 = ktrace_chunk_size(a2);
  v5 = ktrace_chunk_map_data(a2, 0, v4);
  if (v5)
  {
    v6 = v5;
    v7 = *(a1 + 40);
    v8 = ktrace_chunk_tag(a2);
    v9 = ktrace_chunk_version_major(a2);
    v10 = ktrace_chunk_version_minor(a2);
    appended = ktrace_file_header_append_chunk(v7, v8, v9, v10, v6, v4);
    ktrace_chunk_unmap_data(a2, v6, v4);
    if (appended)
    {
      return 1;
    }
  }

  v13 = __error();
  result = 0;
  *(*(*(a1 + 32) + 8) + 24) = *v13;
  return result;
}

uint64_t parse_v1_file(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22 = 0;
  v23 = 0;
  ktrace_log_init();
  if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_DEBUG))
  {
    parse_v1_file_cold_1();
  }

  *(a1 + 296) = 0;
  if (ktrace_file_read(a1, &v21, 0x14uLL, 0) != 20)
  {
    v7 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      parse_v1_file_cold_2();
    }

    *__error() = v7;
    goto LABEL_37;
  }

  v2 = v22;
  *(a1 + 168) = v22;
  if (!v2)
  {
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_DEBUG))
    {
      parse_v1_file_cold_3();
    }

    *(a1 + 168) = *(a1 + 172);
  }

  v3 = SHIDWORD(v21);
  *(a1 + 176) = v23;
  if (!v3)
  {
    *(a1 + 298) = 1;
    v6 = 24;
    goto LABEL_17;
  }

  v4 = synthesize_thread_map_chunk(a1, 0x14uLL, v3);
  if (v4)
  {
    v5 = v4;
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_DEBUG))
    {
      parse_v1_file_cold_4();
    }

    v6 = v5[1] + v5[2];
    goto LABEL_17;
  }

  if (*__error())
  {
LABEL_37:
    result = *__error();
    goto LABEL_38;
  }

  v9 = 28 * v3;
  if (((28 * v3 + 4088) & 0xFFC) == 0)
  {
    v6 = v9 + 20;
LABEL_50:
    *(a1 + 298) = 0;
    goto LABEL_17;
  }

  if (((v9 + 4092) & 0xFFC) == 0)
  {
    v6 = v9 + 24;
    goto LABEL_50;
  }

  v6 = (32 * v3) | 0x18;
  if (v6 <= 0)
  {
    v10 = -(-v6 & 0xFFF);
  }

  else
  {
    v10 = (32 * v3) & 0xFE7 | 0x18;
  }

  if (v10 > 0x1F)
  {
    *__error() = 79;
    v20 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      parse_v1_file_cold_5();
    }

    *__error() = v20;
    result = 79;
    goto LABEL_38;
  }

  *(a1 + 298) = 1;
LABEL_17:
  v24 = 0;
  if (ktrace_file_read(a1, &v24, 4uLL, v6) <= 3)
  {
    v8 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      parse_v1_file_cold_12();
    }

LABEL_34:
    *__error() = v8;
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_DEBUG))
    {
      parse_v1_file_cold_13();
    }

    goto LABEL_36;
  }

  if (v24 != 1437204737)
  {
    *__error() = 79;
    v8 = *__error();
    ktrace_log_init();
    v11 = ktrace_file_log;
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218496;
      v26 = v6;
      v27 = 1024;
      v28 = v24;
      v29 = 1024;
      v30 = v8;
      _os_log_error_impl(&dword_22ED7A000, v11, OS_LOG_TYPE_ERROR, "value at CPU map magic number (offset %lld) was %#x (%{errno}d)", buf, 0x18u);
    }

    goto LABEL_34;
  }

  *buf = 0;
  if (ktrace_file_read(a1, buf, 4uLL, v6 + 4) <= 3)
  {
    v8 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      parse_v1_file_cold_11();
    }

    goto LABEL_34;
  }

  if (*buf >= 0x3E9u)
  {
    *__error() = 79;
    v8 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      parse_v1_file_cold_10(buf);
    }

    goto LABEL_34;
  }

  v15 = (16 * *buf) | 8;
  ktrace_log_init();
  if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_DEBUG))
  {
    parse_v1_file_cold_6(buf);
  }

  v16 = ktrace_chunk_create(a1, 7168, 1, 0, v15, v6);
  if (!v16)
  {
    v8 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      parse_v1_file_cold_9();
    }

    goto LABEL_34;
  }

  v17 = v16;
  appended = ktrace_chunk_array_append_internal(a1 + 80, v16);
  if (appended)
  {
    v19 = appended;
    free(v17);
    *__error() = v19;
    v8 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      parse_v1_file_cold_7();
    }

    goto LABEL_34;
  }

  *(a1 + 128) = *(a1 + 120);
  *(a1 + 88) = v17;
  v6 += v17[1];
  ktrace_log_init();
  if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_DEBUG))
  {
    parse_v1_file_cold_8();
  }

LABEL_36:
  v12 = synthesize_events_chunk(a1, (-v6 & 0xFFFLL) + v6);
  result = 0;
  if (!v12)
  {
    goto LABEL_37;
  }

LABEL_38:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t parse_v3_header(uint64_t a1, int a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  if (ktrace_file_read(a1, v15, 0x38uLL, 0) <= 0x37)
  {
    v4 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      parse_v3_header_cold_3();
    }

    *__error() = v4;
    result = *__error();
    goto LABEL_23;
  }

  if (a2)
  {
    v6 = 14;
  }

  else
  {
    v6 = 1;
  }

  if (v6 < WORD2(v15[0]))
  {
LABEL_22:
    result = 79;
    goto LABEL_23;
  }

  if (((WORD2(v15[0]) > 0xAu) & a2) != 0)
  {
    v7 = 8;
  }

  else
  {
    v7 = 16;
  }

  *(a1 + 184) = v16;
  *(a1 + 188) = *&v15[1];
  *(a1 + 160) = *(&v15[1] + 8);
  *(a1 + 176) = *(&v15[2] + 1);
  ktrace_log_init();
  if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_DEBUG))
  {
    parse_v3_header_cold_1(a1, (a1 + 184));
  }

  if ((v16 & 0x100000000) != 0)
  {
    *(a1 + 298) = 1;
  }

  *(a1 + 297) = 1;
  *(a1 + 288) = *(&v15[0] + 1) + 16;
  ktrace_log_init();
  if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_DEBUG))
  {
    parse_v3_header_cold_2(a1, (a1 + 288));
  }

  *(a1 + 112) = v7;
  *(a1 + 120) = 56;
  v9 = *(a1 + 280);
  v8 = *(a1 + 288);
  *(a1 + 128) = v8;
  *(a1 + 56) = 16;
  *(a1 + 64) = v8;
  *(a1 + 72) = v9;
  if (v8 > v9)
  {
    v10 = *__error();
    ktrace_log_init();
    v11 = ktrace_file_log;
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 280);
      v14 = *(a1 + 288);
      *buf = 134218496;
      v18 = v13;
      v19 = 2048;
      v20 = v14;
      v21 = 1024;
      v22 = v10;
      _os_log_error_impl(&dword_22ED7A000, v11, OS_LOG_TYPE_ERROR, "file is smaller (%lld) than indicated in the file header chunk (%lld) (%{errno}d)", buf, 0x1Cu);
    }

    *__error() = v10;
    goto LABEL_22;
  }

  result = 0;
  if (v8 == v9)
  {
    *(a1 + 299) = 1;
  }

LABEL_23:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __parse_artrace_file_block_invoke(uint64_t a1, uint64_t *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = ktrace_chunk_tag(a2);
  if (v4 == 20482)
  {
    v8 = *(a1 + 40);
    value[0] = 0;
    if (!v8)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    if (!a2)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    v9 = ktrace_chunk_size(a2);
    if (v9)
    {
      v10 = v9;
      v11 = malloc_type_malloc(v9, 0x96CFCB50uLL);
      if (v11)
      {
        v12 = v11;
        v13 = ktrace_chunk_copy_data(a2, 0, v11, v10);
        if (!v13)
        {
          dict = create_dict(v12, v10);
          if (dict)
          {
            v15 = dict;
            if (CFDictionaryGetValueIfPresent(dict, @"Kernel64bit", value))
            {
              v16 = CFGetTypeID(value[0]);
              if (v16 == CFNumberGetTypeID())
              {
                valuePtr = 0;
                if (CFNumberGetValue(value[0], kCFNumberSInt32Type, &valuePtr))
                {
                  v13 = 0;
                  v17 = valuePtr == 0;
LABEL_32:
                  v20 = !v17;
                  *(v8 + 298) = v20;
                  goto LABEL_41;
                }

                v19 = *__error();
                ktrace_log_init();
                if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
                {
                  __parse_artrace_file_block_invoke_cold_2();
                }
              }

              else
              {
                if (v16 == CFBooleanGetTypeID())
                {
                  v13 = 0;
                  v17 = CFBooleanGetValue(value[0]) == 0;
                  goto LABEL_32;
                }

                v19 = *__error();
                ktrace_log_init();
                if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
                {
                  __parse_artrace_file_block_invoke_cold_1();
                }
              }
            }

            else
            {
              v19 = *__error();
              ktrace_log_init();
              if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
              {
                __parse_artrace_file_block_invoke_cold_3();
              }
            }

            *__error() = v19;
            v13 = 79;
LABEL_41:
            CFRelease(v15);
            goto LABEL_42;
          }

          v13 = *__error();
        }

LABEL_42:
        free(v12);
        goto LABEL_43;
      }

      v18 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
      {
        __parse_artrace_file_block_invoke_cold_4();
      }
    }

    else
    {
      v18 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
      {
        __parse_artrace_file_block_invoke_cold_5();
      }
    }

    *__error() = v18;
    v13 = 79;
LABEL_43:
    *(*(*(a1 + 32) + 8) + 24) = v13;
    goto LABEL_44;
  }

  if (v4 != 20481)
  {
LABEL_46:
    result = 1;
    goto LABEL_47;
  }

  v5 = *(a1 + 40);
  *value = 0u;
  memset(v25, 0, sizeof(v25));
  if (!v5)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (ktrace_chunk_size(a2) > 0x2B)
  {
    v7 = ktrace_chunk_copy_data(a2, 0, value, 0x2CuLL);
    if (!v7)
    {
      *(v5 + 188) = *&v25[5];
    }
  }

  else
  {
    v6 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      __parse_artrace_file_block_invoke_cold_8();
    }

    *__error() = v6;
    v7 = 79;
  }

  *(*(*(a1 + 32) + 8) + 24) = v7;
LABEL_44:
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    goto LABEL_46;
  }

  result = 0;
LABEL_47:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void *synthesize_thread_map_chunk(uint64_t a1, unint64_t a2, int a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = (32 * a3) | 4;
  v7 = malloc_type_malloc(v6, 0xFB6FBCD2uLL);
  if (!v7)
  {
    v17 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      synthesize_thread_map_chunk_cold_7();
    }

    *__error() = v17;
    v15 = 0;
    v16 = 0;
    if (*__error())
    {
      goto LABEL_23;
    }

    goto LABEL_9;
  }

  v8 = v7;
  v9 = 28 * a3 + 4;
  v10 = ktrace_file_read(a1, v7, v9, a2);
  if (v10 < v9)
  {
    v11 = v10;
    v12 = *__error();
    v13 = *__error();
    ktrace_log_init();
    v14 = ktrace_file_log;
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      v34 = 134218496;
      v35 = v11;
      v36 = 2048;
      v37 = v9;
      v38 = 1024;
      v39 = v13;
      _os_log_error_impl(&dword_22ED7A000, v14, OS_LOG_TYPE_ERROR, "only read %zu bytes of expected %zu bytes for 32-bit V1 thread map (%{errno}d)", &v34, 0x1Cu);
    }

    v15 = 0;
    v16 = 0;
    *__error() = v13;
    goto LABEL_22;
  }

  if (thread_map_entries_valid(v8, a3, 0))
  {
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_DEBUG))
    {
      synthesize_thread_map_chunk_cold_6();
    }

    v21 = 0;
LABEL_21:
    v12 = 0;
    v15 = v21 + a2;
    v16 = v9 - v21;
    goto LABEL_22;
  }

  v22 = thread_map_entries_valid((v8 + 4), a3, 0);
  ktrace_log_init();
  v23 = os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_DEBUG);
  if (v22)
  {
    if (v23)
    {
      synthesize_thread_map_chunk_cold_5();
    }

    v21 = 4;
    goto LABEL_21;
  }

  if (v23)
  {
    synthesize_thread_map_chunk_cold_1();
  }

  v26 = v6 - v9;
  v27 = ktrace_file_read(a1, v8 + v9, v26, v9 + a2);
  if (v27 >= v26)
  {
    v31 = thread_map_entries_valid((v8 + 4), a3, 1);
    ktrace_log_init();
    v32 = os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_DEBUG);
    if (v31)
    {
      v16 = 32 * a3;
      if (v32)
      {
        synthesize_thread_map_chunk_cold_4();
      }

      v12 = 0;
      *(a1 + 298) = 1;
      v15 = a2 + 4;
    }

    else
    {
      if (v32)
      {
        synthesize_thread_map_chunk_cold_2();
      }

      v33 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
      {
        synthesize_thread_map_chunk_cold_3();
      }

      v15 = 0;
      v16 = 0;
      *__error() = v33;
      v12 = 22;
    }
  }

  else
  {
    v28 = v27;
    v12 = *__error();
    v29 = *__error();
    ktrace_log_init();
    v30 = ktrace_file_log;
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      v34 = 134218496;
      v35 = v28;
      v36 = 2048;
      v37 = v26;
      v38 = 1024;
      v39 = v29;
      _os_log_error_impl(&dword_22ED7A000, v30, OS_LOG_TYPE_ERROR, "only read %zu bytes of expected %zu bytes in 64-bit V1 thread map (%{errno}d)", &v34, 0x1Cu);
    }

    v15 = 0;
    v16 = 0;
    *__error() = v29;
  }

LABEL_22:
  free(v8);
  if (v12)
  {
LABEL_23:
    v18 = 0;
    *__error() = 0;
    goto LABEL_24;
  }

LABEL_9:
  v18 = ktrace_chunk_create(a1, 7424, 1, 0, v16, v15);
  v19 = ktrace_chunk_array_append((a1 + 24), v18);
  if (v19)
  {
    *__error() = v19;
    v20 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      synthesize_thread_map_chunk_cold_8();
    }

    *__error() = v20;
    free(v18);
    v18 = 0;
  }

LABEL_24:
  v24 = *MEMORY[0x277D85DE8];
  return v18;
}

void *synthesize_events_chunk(uint64_t a1, unint64_t a2)
{
  if (ktrace_file_read(a1, (a1 + 160), 8uLL, a2) <= 7)
  {
    v4 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      synthesize_events_chunk_cold_6();
    }

LABEL_21:
    v6 = 0;
    *__error() = v4;
    return v6;
  }

  if ((*(a1 + 298) & 1) == 0)
  {
    v10 = 0;
    if (ktrace_file_read(a1, &v10, 8uLL, a2 + 56) <= 7)
    {
      v4 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
      {
        synthesize_events_chunk_cold_1();
      }

      goto LABEL_21;
    }

    if (!v10)
    {
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_DEBUG))
      {
        synthesize_events_chunk_cold_2();
      }

      *(a1 + 298) = 1;
    }
  }

  ktrace_log_init();
  if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_DEBUG))
  {
    synthesize_events_chunk_cold_3(a1, a2);
  }

  v5 = ktrace_chunk_create(a1, 7680, 1, 0, *(a1 + 280) - (a2 - 8), a2 - 8);
  if (!v5)
  {
    v4 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      synthesize_events_chunk_cold_5();
    }

    goto LABEL_21;
  }

  v6 = v5;
  appended = ktrace_chunk_array_append_internal(a1 + 24, v5);
  if (appended)
  {
    v8 = appended;
    free(v6);
    *__error() = v8;
    v4 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      synthesize_events_chunk_cold_4();
    }

    goto LABEL_21;
  }

  *(a1 + 72) = *(a1 + 64);
  *(a1 + 32) = v6;
  return v6;
}

BOOL thread_map_entries_valid(void *a1, int a2, int a3)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (a2 >= 100)
  {
    v3 = 100;
  }

  else
  {
    v3 = a2;
  }

  if (a3)
  {
    v4 = 12;
  }

  else
  {
    v4 = 8;
  }

  if (a3)
  {
    if (*a1)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (!*a1)
  {
    return 0;
  }

LABEL_10:
  if (!a2)
  {
    return 1;
  }

  v5 = 0;
  v6 = a1 + v4;
  v7 = v4 + 20;
  do
  {
    v8 = 0;
    --v3;
    do
    {
      if (!v6[v8])
      {
        break;
      }

      if (v6[v8] < 32)
      {
        ++v5;
      }

      ++v8;
    }

    while (v8 != 20);
    v6 += v7;
  }

  while (v3);
  return v5 == 0;
}

BOOL __ktrace_file_iterate_subfile_block_invoke(uint64_t a1, uint64_t *a2)
{
  v4 = 1;
  if (ktrace_chunk_tag(a2) == *(a1 + 72))
  {
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x2000000000;
    v13 = 1;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 0x40000000;
    v8[2] = __ktrace_file_iterate_subfile_block_invoke_2;
    v8[3] = &unk_27886E228;
    v11 = *(a1 + 76);
    v9 = *(a1 + 48);
    v10 = *(a1 + 64);
    v8[4] = *(a1 + 32);
    v8[5] = v12;
    *(*(*(a1 + 40) + 8) + 24) = ktrace_chunk_iterate_subchunks(a2, 0, v8);
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 24);
    if (!v6)
    {
      v6 = *(*(*(a1 + 40) + 8) + 24);
    }

    *(v5 + 24) = v6;
    v4 = *(*(*(a1 + 64) + 8) + 24) == 1 && *(*(*(a1 + 48) + 8) + 24) == 0;
    _Block_object_dispose(v12, 8);
  }

  return v4;
}

uint64_t __ktrace_file_iterate_subfile_block_invoke_2(uint64_t a1, uint64_t *a2)
{
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 24);
  *(v4 + 24) = 0;
  v6 = ktrace_chunk_tag(a2);
  v7 = 1;
  if (v6 != 32777 && v6 != 32781)
  {
    if (v6 != 32780)
    {
      if (*(*(*(a1 + 40) + 8) + 24) != 1)
      {
        *(*(*(a1 + 64) + 8) + 24) = (*(*(a1 + 32) + 16))();
        v7 = *(*(*(a1 + 64) + 8) + 24);
        return v7 & 1;
      }

      *(*(*(a1 + 48) + 8) + 24) = 79;
      v8 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        __ktrace_file_iterate_subfile_block_invoke_2_cold_2();
      }

      goto LABEL_12;
    }

    if (!v5 || ktrace_chunk_size(a2) < 4 || ktrace_chunk_version_major(a2))
    {
      *(*(*(a1 + 48) + 8) + 24) = 79;
      v8 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        __ktrace_file_iterate_subfile_block_invoke_2_cold_1();
      }

LABEL_12:
      v9 = __error();
      v7 = 0;
      *v9 = v8;
      return v7 & 1;
    }

    v11 = 0;
    *(*(*(a1 + 48) + 8) + 24) = ktrace_chunk_copy_data(a2, 0, &v11, 4uLL);
    if (*(*(*(a1 + 48) + 8) + 24) || v11 != *(a1 + 72))
    {
      v7 = 0;
    }

    else
    {
      v7 = 1;
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

  return v7 & 1;
}