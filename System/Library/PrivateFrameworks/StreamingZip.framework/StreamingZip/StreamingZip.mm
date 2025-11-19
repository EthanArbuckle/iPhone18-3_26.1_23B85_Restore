void sub_26BC678C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

unint64_t _ReserveUpToBytes(unint64_t a1)
{
  v1 = a1;
  v10 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    pthread_mutex_lock(&_sAvailableExtractionMemoryMutex);
    v2 = _sAvailableExtractionMemory;
    if (!(_sAvailableExtractionMemory >> 17))
    {
      do
      {
        v3 = SZGetLoggingHandle();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218240;
          v7 = v1;
          v8 = 2048;
          v9 = _sAvailableExtractionMemory;
          _os_log_debug_impl(&dword_26BC65000, v3, OS_LOG_TYPE_DEBUG, "Waiting for at least %zu bytes to become available; %zu currently available", buf, 0x16u);
        }

        pthread_cond_wait(&_sAvailableExtractionMemoryCondition, &_sAvailableExtractionMemoryMutex);
        v2 = _sAvailableExtractionMemory;
      }

      while (_sAvailableExtractionMemory < 0x20000);
    }

    if (v2 < v1)
    {
      v1 = v2;
    }

    _sAvailableExtractionMemory = v2 - v1;
    pthread_mutex_unlock(&_sAvailableExtractionMemoryMutex);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_26BC69D6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id location)
{
  objc_destroyWeak((v38 + 32));
  objc_destroyWeak((v37 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26BC6AA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void SZThrowForSetupError(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = [v1 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCA450]];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"Unknown";
  }

  v8 = [v2 exceptionWithName:v3 reason:v7 userInfo:0];

  objc_exception_throw(v8);
}

void sub_26BC6BEEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

id _CreateError(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v14 = a3;
  v15 = a5;
  v16 = a7;
  v17 = objc_opt_new();
  if (v16)
  {
    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v16 arguments:&a9];
    [v17 setObject:v18 forKeyedSubscript:*MEMORY[0x277CCA450]];
  }

  if (v15)
  {
    [v17 setObject:v15 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
  [v17 setObject:v19 forKeyedSubscript:@"SZExtractorFunctionNameErrorKey"];

  v20 = [MEMORY[0x277CCABB0] numberWithInt:a2];
  [v17 setObject:v20 forKeyedSubscript:@"SZExtractorSourceFileLineErrorKey"];

  v21 = [MEMORY[0x277CCA9B8] errorWithDomain:v14 code:a4 userInfo:v17];

  return v21;
}

id SZGetLoggingHandle()
{
  if (SZGetLoggingHandle_onceToken != -1)
  {
    dispatch_once(&SZGetLoggingHandle_onceToken, &__block_literal_global_106);
  }

  v1 = SZGetLoggingHandle_logHandle;

  return v1;
}

uint64_t __SZGetLoggingHandle_block_invoke()
{
  SZGetLoggingHandle_logHandle = os_log_create("com.apple.streamingzip", "framework");

  return MEMORY[0x2821F96F8]();
}

id SZGetTraceHandle()
{
  if (SZGetTraceHandle_onceToken != -1)
  {
    dispatch_once(&SZGetTraceHandle_onceToken, &__block_literal_global_4);
  }

  v1 = SZGetTraceHandle_logHandle;

  return v1;
}

uint64_t __SZGetTraceHandle_block_invoke()
{
  SZGetTraceHandle_logHandle = os_log_create("com.apple.streamingzip.signposts", "framework");

  return MEMORY[0x2821F96F8]();
}

uint64_t UNIX2DOSTime(uint64_t a1)
{
  memset(&v4, 0, sizeof(v4));
  v5 = (a1 + 1) & 0xFFFFFFFFFFFFFFFELL;
  v1 = localtime_r(&v5, &v4);
  tm_year = v1->tm_year;
  if (tm_year >= 80)
  {
    return ((tm_year << 25) + 1610612736) | (v1->tm_sec >> 1) | (32 * v1->tm_min) | (v1->tm_hour << 11) | (v1->tm_mday << 16) | ((v1->tm_mon << 21) + 0x200000);
  }

  else
  {
    return 2162688;
  }
}

time_t DOS2UNIXTime(unsigned int a1)
{
  v6 = time(0);
  v3 = DOS2UNIXTime_t;
  if (!DOS2UNIXTime_t)
  {
    v3 = localtime_r(&v6, &DOS2UNIXTime_buf);
    DOS2UNIXTime_t = v3;
  }

  v3->tm_isdst = -1;
  v2.i32[0] = a1;
  v4 = vshlq_u32(vdupq_n_s32(a1), xmmword_26BC79420);
  v4.i32[0] = vshlq_u32(v2, xmmword_26BC79410).u32[0];
  *&v3->tm_sec = vandq_s8(v4, xmmword_26BC79430);
  v3->tm_mon = ((a1 >> 21) & 0xF) - 1;
  v3->tm_year = (a1 >> 25) + 80;
  return mktime(v3);
}

unsigned __int16 *GetExtraFieldWithSignature(uint64_t a1, unint64_t a2, unsigned __int16 *a3)
{
  if (a2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = v3 + 4;
      if (v3 + 4 > a2)
      {
        break;
      }

      v6 = (a1 + v3);
      v7 = v6[1];
      if (*v6 == *a3)
      {
        if (v5 + v7 <= a2)
        {
          return v6;
        }

        else
        {
          return 0;
        }
      }

      v4 += v7 + 4;
      v3 = v4;
    }

    while (v4 < a2);
  }

  return 0;
}

unsigned __int16 *OpenLocalFile(uint64_t a1, uint64_t a2, char *__s, unsigned __int16 a4, char a5, int *a6)
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 64) + strlen(__s) + a4 + 30;
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 28);
  v14 = *(a2 + 6);
  v15 = *(a2 + 72);
  v16 = malloc_type_calloc(1uLL, 0x78uLL, 0x10F00403766FA32uLL);
  *a6 = 0;
  v16[56] = v14;
  *(v16 + 114) = a5;
  *(v16 + 5) = v10;
  *(v16 + 6) = v11;
  *(v16 + 7) = v12;
  *(v16 + 8) = 0;
  *(v16 + 9) = a1;
  *(v16 + 10) = 0;
  *(v16 + 12) = crc32(0, 0, 0);
  *(v16 + 13) = v13;
  *(v16 + 11) = strdup(v15);
  if ((v16[57] & 1) == 0)
  {
    v17 = v16[56];
    if (v17 > 0xD)
    {
      if (v17 != 14 && v17 != 99)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (!v16[56])
      {
        goto LABEL_23;
      }

      if (v17 != 8)
      {
LABEL_12:
        v20 = SZGetLoggingHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v28 = *(v16 + 11);
          v30 = 67109378;
          v31 = v14;
          v32 = 2080;
          v33 = v28;
          _os_log_error_impl(&dword_26BC65000, v20, OS_LOG_TYPE_ERROR, "Unknown compression scheme (%d) found for file %s; must use raw mode.", &v30, 0x12u);
        }

        v21 = 5;
        goto LABEL_22;
      }
    }

    *(v16 + 10) = malloc_type_malloc(0x100000uLL, 0x100004077774924uLL);
    v18 = v16[56];
    switch(v18)
    {
      case 8:
        v19 = COMPRESSION_ZLIB;
        break;
      case 14:
        v19 = COMPRESSION_LZMA;
        break;
      case 99:
        v19 = COMPRESSION_LZFSE;
        break;
      default:
        v24 = SZGetLoggingHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v29 = v16[56];
          v30 = 67109120;
          v31 = v29;
          v25 = "Failed to get compression algorithm id for method %d";
          goto LABEL_25;
        }

LABEL_21:
        v21 = 3;
LABEL_22:
        *a6 = v21;
        free(*(v16 + 11));
        free(*(v16 + 10));
        free(v16);
        v16 = 0;
        goto LABEL_23;
    }

    v22 = compression_stream_init(v16, COMPRESSION_STREAM_DECODE, v19);
    if (v22)
    {
      v23 = v22;
      v24 = SZGetLoggingHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v30 = 67109120;
        v31 = v23;
        v25 = "Failed to initialize compression: %d";
LABEL_25:
        _os_log_error_impl(&dword_26BC65000, v24, OS_LOG_TYPE_ERROR, v25, &v30, 8u);
        goto LABEL_21;
      }

      goto LABEL_21;
    }
  }

LABEL_23:
  v26 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t ReadLocalFileData(compression_stream *stream, Bytef *a2, size_t a3, size_t *a4)
{
  dst_size = a3;
  v57 = *MEMORY[0x277D85DE8];
  state_low = LOWORD(stream[2].state);
  if (!LOWORD(stream[2].state) || BYTE2(stream[2].state) == 1)
  {
    if (stream[1].dst_size)
    {
      if (fseeko(*stream[1].state, stream[1].dst_ptr, 0))
      {
        v9 = SZGetLoggingHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_6;
        }

        goto LABEL_51;
      }

      if (stream[1].dst_size < dst_size)
      {
        dst_size = stream[1].dst_size;
      }

      if (dst_size == fread(a2, 1uLL, dst_size, *stream[1].state))
      {
        if (!LOWORD(stream[2].state))
        {
          stream[2].src_ptr = crc32(stream[2].src_ptr, a2, dst_size);
        }

        *a4 = dst_size;
        v32 = stream[1].dst_size - dst_size;
        v33 = stream[1].dst_size == dst_size;
        stream[1].dst_ptr += dst_size;
        stream[1].dst_size = v32;
        stream[1].src_size += dst_size;
        v31 = (2 * v33);
        goto LABEL_52;
      }

      v9 = SZGetLoggingHandle();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_51;
      }

      v49 = 134217984;
      v50 = dst_size;
      v12 = "Failed to read %ld bytes of local file data";
LABEL_37:
      v34 = v9;
      v35 = 12;
LABEL_38:
      _os_log_error_impl(&dword_26BC65000, v34, OS_LOG_TYPE_ERROR, v12, &v49, v35);
      goto LABEL_51;
    }

    v30 = SZGetLoggingHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v49) = 0;
      v31 = 2;
      _os_log_error_impl(&dword_26BC65000, v30, OS_LOG_TYPE_ERROR, "No data remaining!", &v49, 2u);
      goto LABEL_52;
    }

LABEL_28:
    v31 = 2;
    goto LABEL_52;
  }

  if (state_low != 8 && state_low != 99 && state_low != 14)
  {
    v36 = SZGetLoggingHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v45 = LOWORD(stream[2].state);
      v49 = 67109120;
      LODWORD(v50) = v45;
      _os_log_error_impl(&dword_26BC65000, v36, OS_LOG_TYPE_ERROR, "Unknown compression method: %d", &v49, 8u);
    }

    v31 = 5;
    goto LABEL_52;
  }

  stream->dst_ptr = a2;
  stream->dst_size = a3;
  *a4 = 0;
  while (1)
  {
    v14 = stream->dst_size;
    if (!v14)
    {
      v31 = 0;
      goto LABEL_52;
    }

    if (stream->src_size)
    {
      goto LABEL_22;
    }

    v15 = stream[1].dst_size;
    if (!v15)
    {
      goto LABEL_22;
    }

    if (v15 >= 0x100000)
    {
      v15 = 0x100000;
    }

    state = stream[1].state;
    stream->src_ptr = stream[2].dst_ptr;
    stream->src_size = v15;
    if (fseeko(*state, stream[1].dst_ptr, 0))
    {
      break;
    }

    v17 = fread(stream[2].dst_ptr, 1uLL, stream->src_size, *stream[1].state);
    v18 = v17;
    if (stream->src_size != v17)
    {
      v42 = SZGetLoggingHandle();
      if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_51;
      }

      src_size = stream->src_size;
      if (feof(*stream[1].state))
      {
        v47 = 121;
      }

      else
      {
        v47 = 110;
      }

      v48 = ferror(*stream[1].state);
      v49 = 134218752;
      v50 = src_size;
      v51 = 2048;
      v52 = v18;
      v53 = 1024;
      v54 = v47;
      v55 = 1024;
      v56 = v48;
      v12 = "Failed to read %zu bytes of local file data; read %lu bytes; isEOF=%c; ferror=%d";
      v34 = v42;
      v35 = 34;
      goto LABEL_38;
    }

    v19 = stream[1].dst_size - v17;
    stream[1].dst_ptr += v17;
    stream[1].dst_size = v19;
    v14 = stream->dst_size;
LABEL_22:
    dst_ptr = stream->dst_ptr;
    v21 = compression_stream_process(stream, 0);
    if (v21 == COMPRESSION_STATUS_ERROR)
    {
      v38 = SZGetLoggingHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v49 = 67109120;
        LODWORD(v50) = -1;
        v27 = "compression_stream_process returned %d";
        v28 = v38;
        v29 = 8;
        goto LABEL_55;
      }

      goto LABEL_44;
    }

    v22 = v21;
    v23 = v14 - stream->dst_size;
    stream[2].src_ptr = crc32(stream[2].src_ptr, dst_ptr, v23);
    *a4 += v23;
    v24 = (stream[1].src_size + v23);
    stream[1].src_size = v24;
    if (v22 == COMPRESSION_STATUS_END)
    {
      if (stream[1].dst_size)
      {
        v25 = SZGetLoggingHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = stream[1].dst_size;
          v49 = 134217984;
          v50 = v26;
          v27 = "Hit end with %llu remaining";
          v28 = v25;
          v29 = 12;
LABEL_55:
          _os_log_error_impl(&dword_26BC65000, v28, OS_LOG_TYPE_ERROR, v27, &v49, v29);
        }
      }

      else
      {
        if (stream[1].src_ptr == v24)
        {
          goto LABEL_28;
        }

        v39 = SZGetLoggingHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          src_ptr = stream[1].src_ptr;
          v40 = stream[1].src_size;
          v49 = 134218240;
          v50 = v40;
          v51 = 2048;
          v52 = src_ptr;
          v27 = "Hit end at %llu, before expected size %llu";
          v28 = v39;
          v29 = 22;
          goto LABEL_55;
        }
      }

LABEL_44:
      v31 = 3;
      goto LABEL_52;
    }
  }

  v9 = SZGetLoggingHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
LABEL_6:
    v10 = __error();
    v11 = strerror(*v10);
    v49 = 136315138;
    v50 = v11;
    v12 = "Failed to seek to local file data: %s";
    goto LABEL_37;
  }

LABEL_51:
  v31 = 4;
LABEL_52:
  v43 = *MEMORY[0x277D85DE8];
  return v31;
}

uint64_t CloseLocalFile(compression_stream *stream)
{
  v2 = 0;
  v22 = *MEMORY[0x277D85DE8];
  state_low = LOWORD(stream[2].state);
  if (state_low > 0xD)
  {
    if (state_low != 99 && state_low != 14)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  if (LOWORD(stream[2].state))
  {
    if (state_low != 8)
    {
      goto LABEL_17;
    }

LABEL_10:
    if (LOWORD(stream[2].state) && (BYTE2(stream[2].state) & 1) != 0)
    {
      goto LABEL_13;
    }
  }

  if (stream[2].src_ptr == stream[2].src_size)
  {
LABEL_13:
    v2 = 0;
    goto LABEL_17;
  }

  v5 = SZGetLoggingHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    src_ptr = stream[2].src_ptr;
    src_size = stream[2].src_size;
    dst_size = stream[2].dst_size;
    v16 = 136315650;
    v17 = dst_size;
    v18 = 2048;
    v19 = src_size;
    v20 = 2048;
    v21 = src_ptr;
    _os_log_error_impl(&dword_26BC65000, v5, OS_LOG_TYPE_ERROR, "CRC mismatch for %s; expected 0x%lx, actual 0x%lx", &v16, 0x20u);
  }

  v2 = 6;
LABEL_17:
  if ((BYTE2(stream[2].state) & 1) == 0)
  {
    v6 = LOWORD(stream[2].state);
    if (v6 == 8 || v6 == 99 || v6 == 14)
    {
      v7 = compression_stream_destroy(stream);
      if (v7)
      {
        v8 = v7;
        v9 = SZGetLoggingHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v16 = 67109120;
          LODWORD(v17) = v8;
          _os_log_error_impl(&dword_26BC65000, v9, OS_LOG_TYPE_ERROR, "compression_stream_destroy returned %d", &v16, 8u);
        }

        v2 = 3;
      }
    }
  }

  dst_ptr = stream[2].dst_ptr;
  if (dst_ptr)
  {
    free(dst_ptr);
  }

  free(stream[2].dst_size);
  free(stream);
  v11 = *MEMORY[0x277D85DE8];
  return v2;
}

_WORD *CopyLocalFileHeader(FILE **a1, uint64_t a2, int *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  if (fseeko(*a1, *(a2 + 64), 0))
  {
    v6 = SZGetLoggingHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v28[0]) = 0;
      _os_log_error_impl(&dword_26BC65000, v6, OS_LOG_TYPE_ERROR, "Failed to seek to local file record", v28, 2u);
    }

    goto LABEL_13;
  }

  v7 = malloc_type_malloc(0x1EuLL, 0x10000401E9FC43BuLL);
  if (!v7)
  {
    v18 = SZGetLoggingHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v28[0]) = 0;
      v27 = "Failed to malloc LocalFileRecord";
      goto LABEL_24;
    }

LABEL_10:
    MutableLocalFileRecord = 0;
    v20 = 3;
    goto LABEL_14;
  }

  v8 = v7;
  if (fread(v7, 1uLL, 0x1EuLL, *a1) != 30)
  {
    v21 = SZGetLoggingHandle();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    LOWORD(v28[0]) = 0;
    v15 = "Failed to read local file record";
LABEL_26:
    v16 = v21;
    v17 = 2;
    goto LABEL_27;
  }

  if (*v8 != 67324752)
  {
    v9 = SZGetLoggingHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *v8;
      v11 = *(v8 + 1);
      v12 = *(v8 + 2);
      v13 = *(v8 + 3);
      v14 = ftello(*a1);
      v28[0] = 67110144;
      v28[1] = v10;
      v29 = 1024;
      v30 = v11;
      v31 = 1024;
      v32 = v12;
      v33 = 1024;
      v34 = v13;
      v35 = 2048;
      v36 = v14 - 30;
      v15 = "Found invalid local file record with signature 0x%02hhx%02hhx%02hhx%02hhx at offset %lld";
      v16 = v9;
      v17 = 36;
LABEL_27:
      _os_log_error_impl(&dword_26BC65000, v16, OS_LOG_TYPE_ERROR, v15, v28, v17);
    }

LABEL_12:
    free(v8);
LABEL_13:
    MutableLocalFileRecord = 0;
    v20 = 4;
    goto LABEL_14;
  }

  v24 = *(v8 + 14) + *(v8 + 13);
  v25 = reallocf(v8, v24 + 30);
  if (!v25)
  {
    v18 = SZGetLoggingHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v28[0]) = 0;
      v27 = "Failed to allocate full local file record";
LABEL_24:
      _os_log_error_impl(&dword_26BC65000, v18, OS_LOG_TYPE_ERROR, v27, v28, 2u);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v8 = v25;
  if (v24 != fread(v25 + 30, 1uLL, v24, *a1))
  {
    v21 = SZGetLoggingHandle();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    LOWORD(v28[0]) = 0;
    v15 = "Failed to read in variable-length portion of central directory record";
    goto LABEL_26;
  }

  *a3 = 0;
  MutableLocalFileRecord = CreateMutableLocalFileRecord(v8);
  free(v8);
  v26 = MutableLocalFileRecord[1];
  v20 = 0;
  if ((v26 & 8) != 0)
  {
    *(MutableLocalFileRecord + 20) = *(a2 + 32);
    *(MutableLocalFileRecord + 8) = *(a2 + 28);
    MutableLocalFileRecord[1] = v26 & 0xFFF7;
  }

LABEL_14:
  *a3 = v20;
  v22 = *MEMORY[0x277D85DE8];
  return MutableLocalFileRecord;
}

void *OpenZipFile(const char *a1, char a2)
{
  v101 = *MEMORY[0x277D85DE8];
  v4 = malloc_type_calloc(1uLL, 0x60uLL, 0x10200406EBF9D83uLL);
  v5 = fopen(a1, "rb");
  *v4 = v5;
  if (v5)
  {
    if (a2)
    {
      v6 = fileno(v5);
      if (fcntl(v6, 48, 1))
      {
        v7 = SZGetLoggingHandle();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v34 = __error();
          v35 = strerror(*v34);
          *buf = 136315138;
          *v98 = v35;
          _os_log_error_impl(&dword_26BC65000, v7, OS_LOG_TYPE_ERROR, "Failed to set F_NOCACHE on zip file FD: %s", buf, 0xCu);
        }
      }
    }

    v4[6] = -1;
    v4[3] = 0;
    if (fseeko(*v4, -22, 2))
    {
      v8 = SZGetLoggingHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = __error();
        v10 = strerror(*v9);
        *buf = 136315138;
        *v98 = v10;
        v11 = "Failed to seek to end record: %s";
        v12 = v8;
        v13 = 12;
LABEL_25:
        _os_log_error_impl(&dword_26BC65000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
        goto LABEL_26;
      }

      goto LABEL_26;
    }

    v4[1] = ftello(*v4) + 22;
    v14 = fread(v4 + 7, 1uLL, 0x16uLL, *v4);
    if (v14 != 22)
    {
      v16 = v14;
      v17 = SZGetLoggingHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *v98 = 22;
        *&v98[8] = 2048;
        *v99 = v16;
        v11 = "Failed to read end record: expected to read %lu but actually read %lu";
        v12 = v17;
        v13 = 22;
        goto LABEL_25;
      }

LABEL_26:
      v23 = SZGetLoggingHandle();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      *buf = 0;
      v26 = "Failed to get end record";
      goto LABEL_32;
    }

    if (*(v4 + 14) != 101010256)
    {
      v15 = SZGetLoggingHandle();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      *buf = 0;
      v11 = "Failed to locate end record";
LABEL_24:
      v12 = v15;
      v13 = 2;
      goto LABEL_25;
    }

    if (*(v4 + 32) != -1)
    {
      v18 = *(v4 + 33);
      if (v18 != 0xFFFF && *(v4 + 17) != -1 && *(v4 + 18) != -1)
      {
LABEL_40:
        v32 = v4[10];
        if (v32)
        {
          if (v18 == 0xFFFF)
          {
            v33 = *(v32 + 32);
          }

          else
          {
            v33 = v18;
          }

          v4[2] = v33;
          LODWORD(v33) = *(v4 + 17);
          if (v33 == -1)
          {
            v42 = *(v32 + 40);
          }

          else
          {
            v42 = *(v4 + 17);
          }

          v4[5] = v42;
          v43 = *(v4 + 18);
          if (v43 == -1)
          {
            v43 = *(v32 + 48);
            LODWORD(v41) = -1;
          }

          else
          {
            LODWORD(v41) = *(v4 + 18);
          }

          v4[4] = v43;
          if (v4[11])
          {
            if (*(v32 + 16))
            {
              v44 = SZGetLoggingHandle();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                v45 = *(v4[10] + 16);
                *buf = 67109120;
                *v98 = v45;
                v26 = "Z64: Archive says it's disk number %d; must be 0";
LABEL_97:
                v27 = v44;
                v28 = 8;
                goto LABEL_33;
              }

              goto LABEL_27;
            }

            if (*(v32 + 20))
            {
              v44 = SZGetLoggingHandle();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                v51 = *(v4[10] + 20);
                *buf = 67109120;
                *v98 = v51;
                v26 = "Z64: Archive says central directory starts on disk disk number %d; must be 0";
                goto LABEL_97;
              }

LABEL_27:
              if (*v4)
              {
                fclose(*v4);
              }

              goto LABEL_29;
            }

            if (*(v32 + 24) != *(v32 + 32))
            {
              v23 = SZGetLoggingHandle();
              if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_27;
              }

              *buf = 0;
              v26 = "Z64: Archive must only span a single disk, but this disk does not have all of the central directory records.";
              goto LABEL_32;
            }

            v55 = *(v32 + 40);
            v56 = v4[1];
            if (v55 > v56)
            {
              v57 = SZGetLoggingHandle();
              if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_27;
              }

              v58 = *(v4[10] + 40);
              v59 = v4[1];
              *buf = 134218240;
              *v98 = v58;
              *&v98[8] = 2048;
              *v99 = v59;
              v26 = "Z64: Central directory says it's %ld bytes long, which is longer than file length %ld";
              goto LABEL_102;
            }

            if (*(v32 + 48) + v55 > v56)
            {
              v70 = SZGetLoggingHandle();
              if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
              {
                v71 = v4[10];
                v73 = *(v71 + 40);
                v72 = *(v71 + 48);
                v74 = v4[1];
                *buf = 134218496;
                *v98 = v73;
                *&v98[8] = 2048;
                *v99 = v72;
                *&v99[8] = 2048;
                v100 = v74;
                v26 = "Z64: Central directory length (%ld) + offset (%ld) > file length %ld";
                v27 = v70;
                v28 = 32;
                goto LABEL_33;
              }

              goto LABEL_27;
            }
          }
        }

        else
        {
          v4[2] = v18;
          v33 = *(v4 + 17);
          v41 = *(v4 + 18);
          v4[4] = v41;
          v4[5] = v33;
        }

        if (*(v4 + 30))
        {
          v44 = SZGetLoggingHandle();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            v75 = *(v4 + 30);
            *buf = 67109120;
            *v98 = v75;
            v26 = "Archive says it's disk number %hd; must be 0";
            goto LABEL_97;
          }

          goto LABEL_27;
        }

        if (*(v4 + 31))
        {
          v44 = SZGetLoggingHandle();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            v76 = *(v4 + 31);
            *buf = 67109120;
            *v98 = v76;
            v26 = "Archive says central directory starts on disk disk number %d; must be 0";
            goto LABEL_97;
          }

          goto LABEL_27;
        }

        if (*(v4 + 32) == v18)
        {
          v77 = v4[1];
          if (v77 >= v33)
          {
            if (v33 + v41 <= v77)
            {
              goto LABEL_30;
            }

            v80 = SZGetLoggingHandle();
            if (!os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_27;
            }

            v81 = *(v4 + 17);
            v82 = *(v4 + 18);
            v83 = v4[1];
            *buf = 67109632;
            *v98 = v81;
            *&v98[4] = 1024;
            *&v98[6] = v82;
            *v99 = 2048;
            *&v99[2] = v83;
            v26 = "Central directory length (%u) + offset (%u) > file length %ld";
            v27 = v80;
            v28 = 24;
            goto LABEL_33;
          }

          v57 = SZGetLoggingHandle();
          if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_27;
          }

          v78 = *(v4 + 17);
          v79 = v4[1];
          *buf = 134218240;
          *v98 = v78;
          *&v98[8] = 2048;
          *v99 = v79;
          v26 = "Central directory says it's %ld bytes long, which is longer than file length %ld";
LABEL_102:
          v27 = v57;
          v28 = 22;
          goto LABEL_33;
        }

        v23 = SZGetLoggingHandle();
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }

        *buf = 0;
        v26 = "Archive must only span a single disk, but this disk does not have all of the central directory records.";
LABEL_32:
        v27 = v23;
        v28 = 2;
LABEL_33:
        _os_log_error_impl(&dword_26BC65000, v27, OS_LOG_TYPE_ERROR, v26, buf, v28);
        goto LABEL_27;
      }
    }

    v19 = *v4;
    if (fseeko(*v4, -42, 2))
    {
      v20 = SZGetLoggingHandle();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
LABEL_21:
        v21 = 0;
        v22 = 0;
LABEL_22:
        free(v22);
        free(v21);
        v15 = SZGetLoggingHandle();
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_26;
        }

        *buf = 0;
        v11 = "Failed to read Zip64 end records";
        goto LABEL_24;
      }

      v49 = __error();
      v50 = strerror(*v49);
      *buf = 136315138;
      *v98 = v50;
      v38 = "Failed to seek to zip64 end record locator: %s";
LABEL_63:
      _os_log_error_impl(&dword_26BC65000, v20, OS_LOG_TYPE_ERROR, v38, buf, 0xCu);
      goto LABEL_21;
    }

    v29 = malloc_type_calloc(1uLL, 0x14uLL, 0x1000040A86A77D5uLL);
    if (!v29)
    {
      v20 = SZGetLoggingHandle();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      v36 = __error();
      v37 = strerror(*v36);
      *buf = 136315138;
      *v98 = v37;
      v38 = "Failed to allocate zip64 end record locator: %s";
      goto LABEL_63;
    }

    v22 = v29;
    v30 = fread(v29, 1uLL, 0x14uLL, v19);
    if (v30 != 20)
    {
      v39 = v30;
      v40 = SZGetLoggingHandle();
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_46;
      }

      *buf = 134218240;
      *v98 = 20;
      *&v98[8] = 2048;
      *v99 = v39;
      v48 = "Failed to read zip64 end record locator: expected to read %lu but actually read %lu";
LABEL_79:
      v61 = v40;
      v62 = 22;
      goto LABEL_80;
    }

    if (*v22 != 117853008)
    {
      v31 = SZGetLoggingHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_26BC65000, v31, OS_LOG_TYPE_ERROR, "Failed to locate zip64 end record locator; what we found doesn't have the right signature.", buf, 2u);
      }

      goto LABEL_39;
    }

    if (*(v22 + 1))
    {
      v46 = SZGetLoggingHandle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v47 = *(v22 + 1);
        *buf = 67109120;
        *v98 = v47;
        v48 = "Expected for end record to be on disk 0, but zip64 end record locator claimed disk %d";
LABEL_77:
        v61 = v46;
        v62 = 8;
LABEL_80:
        _os_log_error_impl(&dword_26BC65000, v61, OS_LOG_TYPE_ERROR, v48, buf, v62);
        goto LABEL_46;
      }

      goto LABEL_46;
    }

    if (*(v22 + 4) != 1)
    {
      v46 = SZGetLoggingHandle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v60 = *(v22 + 4);
        *buf = 67109120;
        *v98 = v60;
        v48 = "Expected total disks to be 1, but zip64 end record locator claimed %d disks";
        goto LABEL_77;
      }

LABEL_46:
      v21 = 0;
      goto LABEL_22;
    }

    if (fseeko(v19, v22[1], 0))
    {
      v40 = SZGetLoggingHandle();
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_46;
      }

      v52 = v22[1];
      v53 = __error();
      v54 = strerror(*v53);
      *buf = 134218242;
      *v98 = v52;
      *&v98[8] = 2080;
      *v99 = v54;
      v48 = "Failed to seek to zip64 end record at %lld: %s";
      goto LABEL_79;
    }

    __stream = v19;
    v63 = malloc_type_calloc(1uLL, 0x38uLL, 0x100004021716A34uLL);
    if (v63)
    {
      v21 = v63;
      v64 = fread(v63, 1uLL, 0x38uLL, __stream);
      if (v64 != 56)
      {
        v87 = v64;
        v88 = SZGetLoggingHandle();
        if (!os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_22;
        }

        *buf = 134218240;
        *v98 = 56;
        *&v98[8] = 2048;
        *v99 = v87;
        v67 = "Failed to read zip64 end record: expected to read %lu but actually read %lu";
        v68 = v88;
        goto LABEL_113;
      }

      if (*v21 != 101075792)
      {
        v65 = SZGetLoggingHandle();
        if (!os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_22;
        }

        v66 = v22[1];
        *buf = 134217984;
        *v98 = v66;
        v67 = "Failed to locate zip64 end record; what we found at offset %lld doesn't have the right signature.";
        v68 = v65;
        v69 = 12;
LABEL_114:
        _os_log_error_impl(&dword_26BC65000, v68, OS_LOG_TYPE_ERROR, v67, buf, v69);
        goto LABEL_22;
      }

      v89 = *(v21 + 1);
      v90 = v89 + 12;
      if ((v89 + 12) < 0x39)
      {
        if (v89 != 44)
        {
          v95 = SZGetLoggingHandle();
          if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_22;
          }

          *buf = 134218240;
          *v98 = v90;
          *&v98[8] = 2048;
          *v99 = 56;
          v67 = "Zip64 end record said it was %zu bytes; we expect at least %zu bytes";
LABEL_124:
          v68 = v95;
LABEL_113:
          v69 = 22;
          goto LABEL_114;
        }

LABEL_121:
        v4[10] = v21;
        v4[11] = v22;
        v22 = 0;
LABEL_39:
        free(v22);
        v18 = *(v4 + 33);
        goto LABEL_40;
      }

      v91 = reallocf(v21, v89 + 12);
      if (v91)
      {
        v21 = v91;
        v92 = v89 - 44;
        v93 = fread(v91 + 14, 1uLL, v89 - 44, __stream);
        if (v89 - 44 != v93)
        {
          v94 = v93;
          v95 = SZGetLoggingHandle();
          if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_22;
          }

          *buf = 134218240;
          *v98 = v92;
          *&v98[8] = 2048;
          *v99 = v94;
          v67 = "Failed to read extensible data in zip64 end record: expected to read %lu but actually read %lu";
          goto LABEL_124;
        }

        goto LABEL_121;
      }

      v84 = SZGetLoggingHandle();
      if (!os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_46;
      }

      *buf = 134217984;
      *v98 = v89 + 12;
      v48 = "Failed to grow zip64 end record allocation to %zu bytes";
    }

    else
    {
      v84 = SZGetLoggingHandle();
      if (!os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_46;
      }

      v85 = __error();
      v86 = strerror(*v85);
      *buf = 136315138;
      *v98 = v86;
      v48 = "Failed to allocate zip64 end record: %s";
    }

    v61 = v84;
    v62 = 12;
    goto LABEL_80;
  }

LABEL_29:
  free(v4);
  v4 = 0;
LABEL_30:
  v24 = *MEMORY[0x277D85DE8];
  return v4;
}

void CloseZipFile(uint64_t a1)
{
  if (a1)
  {
    free(*(a1 + 80));
    free(*(a1 + 88));
    fclose(*a1);

    free(a1);
  }
}

char *CreateLocalFileRecord(uint64_t a1)
{
  if (*(a1 + 20) == -1 || *(a1 + 24) == -1)
  {
    __assert_rtn("CreateLocalFileRecord", "ZipStructure.c", 41, "UREAD(cdRecord->thirty_two_bit_compressed_size) < UINT32_MAX && UREAD(cdRecord->thirty_two_bit_uncompressed_size) < UINT32_MAX");
  }

  v2 = malloc_type_calloc(1uLL, *(a1 + 28) + 46, 0x1000040451B5BE8uLL);
  *v2 = 67324752;
  *(v2 + 2) = *(a1 + 6);
  *(v2 + 3) = *(a1 + 8);
  *(v2 + 4) = *(a1 + 10);
  *(v2 + 10) = *(a1 + 12);
  *(v2 + 14) = *(a1 + 16);
  *(v2 + 18) = *(a1 + 20);
  *(v2 + 22) = *(a1 + 24);
  v3 = *(a1 + 28);
  *(v2 + 26) = v3;
  memcpy(v2 + 30, (a1 + 46), v3);
  v4 = *(a1 + 30);
  if (v4 >= 0xC)
  {
    ExtraFieldWithSignature = GetExtraFieldWithSignature(a1 + 46 + *(a1 + 28), v4, kInfoZipExtraFieldSignature);
    if (ExtraFieldWithSignature)
    {
      if (ExtraFieldWithSignature[1] >= 8u)
      {
        v6 = *ExtraFieldWithSignature;
        v7 = &v2[v3 + 30];
        v8 = *(ExtraFieldWithSignature + 2);
        *(v2 + 14) = 16;
        *v7 = v6;
        *(v7 + 1) = 12;
        *(v7 + 4) = v8;
        *(v7 + 3) = 32834037;
      }
    }
  }

  return v2;
}

_DWORD *CreateCDRecord(const char *a1, int a2)
{
  v4 = strlen(a1);
  if (v4 >> 16)
  {
    return 0;
  }

  v6 = v4;
  v5 = malloc_type_calloc(1uLL, v4 + 58, 0x10000403E1C8BA9uLL);
  *v5 = 0x14031E02014B50;
  v5[3] = UNIX2DOSTime(0);
  *(v5 + 14) = v6;
  *(v5 + 15) = 12;
  *(v5 + 38) = (a2 << 16) | 0x4000;
  memcpy(v5 + 46, a1, v6);
  v7 = (v5 + v6 + 46);
  v7[1] = 0;
  v7[2] = 0;
  *v7 = 546901;
  return v5;
}

void ZipStreamAddStatisticsForCDRecord(uint64_t a1, int a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 40);
  if (a3[17] < v6)
  {
    a3[17] = v6;
  }

  v7 = *(a1 + 32);
  if (a3[18] < v7)
  {
    a3[18] = v7;
  }

  v8 = a3[2] + v7;
  a3[1] += v6;
  a3[2] = v8;
  v9 = (v6 + 4095) & 0xFFFFFFFFFFFFF000 | 0x800;
  if (*(a1 + 26))
  {
    v10 = 1024;
  }

  else
  {
    v10 = v9;
  }

  v11 = SZGetLoggingHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v16 = *(a1 + 72);
    v19 = 134218242;
    v20 = v10;
    v21 = 2080;
    v22 = v16;
    _os_log_debug_impl(&dword_26BC65000, v11, OS_LOG_TYPE_DEBUG, "Counting size %llu for %s", &v19, 0x16u);
  }

  *a3 += v10;
  ++a3[4];
  if (*(a1 + 26))
  {
    v12 = 19;
LABEL_16:
    ++a3[v12];
    goto LABEL_17;
  }

  v13 = 20;
  if ((*(a1 + 24) & 0xF000) == 0xA000)
  {
    v13 = 21;
  }

  ++a3[v13];
  if (!*(a1 + 40))
  {
    v12 = 22;
    goto LABEL_16;
  }

LABEL_17:
  if (a2)
  {
    v14 = SZGetLoggingHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a1 + 72);
      v18 = *(a1 + 24);
      v19 = 136315394;
      v20 = v17;
      v21 = 1024;
      LODWORD(v22) = v18;
      _os_log_debug_impl(&dword_26BC65000, v14, OS_LOG_TYPE_DEBUG, "File %s has non-standard mode %o", &v19, 0x12u);
    }

    ++a3[14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t ZipStreamWriteLocalFile(uint64_t a1, uint64_t *a2, void ***a3, Bytef *a4, int a5, unsigned int a6, unsigned int a7, uint64_t a8, uint64_t a9)
{
  v212 = *MEMORY[0x277D85DE8];
  v13 = malloc_type_malloc(0x20000uLL, 0x100004077774924uLL);
  v14 = *a3;
  v15 = malloc_type_calloc(1uLL, 0x50uLL, 0x1010040BDAC2CBCuLL);
  *v15 = *v14;
  v16 = *(v14 + 4);
  v18 = *(v14 + 1);
  v17 = *(v14 + 2);
  v15[3] = *(v14 + 3);
  v15[4] = v16;
  v15[1] = v18;
  v15[2] = v17;
  *(v15 + 7) = strdup(v14[7]);
  v19 = malloc_type_malloc(*(v14 + 32), 0x100004077774924uLL);
  *(v15 + 9) = v19;
  memcpy(v19, v14[9], *(v14 + 32));
  v20 = *a2;
  v21 = malloc_type_calloc(1uLL, 0x68uLL, 0x1010040E435E96EuLL);
  v23 = *(v20 + 16);
  v22 = *(v20 + 32);
  *v21 = *v20;
  *(v21 + 1) = v23;
  *(v21 + 2) = v22;
  v25 = *(v20 + 64);
  v24 = *(v20 + 80);
  v26 = *(v20 + 48);
  *(v21 + 12) = *(v20 + 96);
  *(v21 + 4) = v25;
  *(v21 + 5) = v24;
  *(v21 + 3) = v26;
  *(v21 + 9) = strdup(*(v20 + 72));
  v27 = malloc_type_malloc(*(v20 + 48), 0x100004077774924uLL);
  *(v21 + 10) = v27;
  memcpy(v27, *(v20 + 80), *(v20 + 48));
  v28 = malloc_type_malloc(*(v20 + 88), 0x100004077774924uLL);
  *(v21 + 12) = v28;
  memcpy(v28, *(v20 + 96), *(v20 + 88));
  v202 = *(v15 + 5);
  v207 = *(v15 + 6);
  v29 = *(v15 + 2);
  v206 = *(v15 + 8);
  v30 = crc32(0, 0, 0);
  v31 = (*(*(a9 + 8) + 72))(*(*(a9 + 8) + 80));
  if (v31 < 0)
  {
    v38 = *__error();
    v39 = SZGetLoggingHandle();
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
LABEL_51:
      v54 = 0;
      v48 = 0;
      v55 = 0;
      goto LABEL_196;
    }

    *v211 = 136315138;
    *&v211[4] = strerror(v38);
    v40 = "Failed to get offset before writing LF record: %s";
LABEL_164:
    _os_log_error_impl(&dword_26BC65000, v39, OS_LOG_TYPE_ERROR, v40, v211, 0xCu);
    goto LABEL_51;
  }

  v195 = v29;
  v203 = v31;
  if (!a5)
  {
    if (v29 == 8 || v29 == 99 || v29 == 14)
    {
      if (*(a9 + 48) == 2)
      {
        a5 = 3;
      }

      else
      {
        a5 = 1;
        if (*(a9 + 61) == 1 && v202 > v207)
        {
          v57 = SZGetLoggingHandle();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
          {
            v150 = *(v21 + 9);
            *v211 = 136315394;
            *&v211[4] = v150;
            *&v211[12] = 2048;
            *&v211[14] = v202 - v207;
            _os_log_debug_impl(&dword_26BC65000, v57, OS_LOG_TYPE_DEBUG, "%s is %llu bytes larger compressed than uncompressed; converting.", v211, 0x16u);
          }

          v58 = vdupq_n_s64(1uLL);
          v58.i64[0] = v202 - v207;
          *(a8 + 40) = vaddq_s64(v58, *(a8 + 40));
          a5 = 2;
        }
      }
    }

    else
    {
      v66 = a8;
      v67 = *(v21 + 9);
      a5 = 2;
      if (strcmp(v67, "mimetype"))
      {
        if (!strcmp(v67, "META-INF/com.apple.FixedZipMetadata.bin"))
        {
          a5 = 2;
        }

        else
        {
          a5 = 3;
        }
      }

      a8 = v66;
    }
  }

  if (v207)
  {
    v32 = a5;
  }

  else
  {
    v32 = 2;
  }

  v33 = *(a9 + 48);
  if (v32 != 2 && v33 == 3)
  {
    v32 = 4;
  }

  if (v33)
  {
    v35 = v32;
  }

  else
  {
    v35 = 2;
  }

  v199 = v35 - 3;
  v194 = v35;
  if ((v35 - 3) >= 2)
  {
    v36 = v202;
    v37 = a1;
    if (v35 != 1)
    {
      *(v15 + 2) = 0;
      v36 = v207;
      *(v15 + 5) = v207;
    }
  }

  else
  {
    *(v15 + 2) = *(a9 + 52);
    v36 = v207;
    v37 = a1;
  }

  v41 = v21[12];
  if (*(v21 + 26) == 1)
  {
    v42 = a7;
  }

  else
  {
    v42 = a6;
  }

  if (v41 == v42)
  {
    v191 = 0;
    if (!v36)
    {
      goto LABEL_29;
    }
  }

  else
  {
    *(v15 + 14) = v41;
    v191 = 1;
    if (!v36)
    {
LABEL_29:
      v193 = 0;
      *(v15 + 1) &= ~8u;
      v21[2] &= ~8u;
      goto LABEL_39;
    }
  }

  if (v206 && v199 > 1)
  {
    goto LABEL_29;
  }

  v43 = *(v15 + 1);
  if (*(a9 + 63) == 1)
  {
    *(v15 + 1) = v43 | 8;
    v21[2] |= 8u;
    v44 = 1;
  }

  else
  {
    *(v15 + 1) = v43 & 0xFFF7;
    v21[2] &= ~8u;
    v44 = 2;
  }

  v193 = v44;
LABEL_39:
  v45 = *(a9 + 8);
  v46 = *(v45 + 24);
  if (v46)
  {
    v46(0, *(v15 + 7), 0, v36, *(v45 + 32));
    v45 = *(a9 + 8);
  }

  v47 = CreateAndWriteLocalFileRecord(v15, v203, v45);
  if (!v47)
  {
    v39 = SZGetLoggingHandle();
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_51;
    }

    v121 = *(v21 + 9);
    *v211 = 136315138;
    *&v211[4] = v121;
    v40 = "Failed to write local file record for file %s to output file";
    goto LABEL_164;
  }

  v48 = v47;
  v187 = *(v47 + 14);
  v188 = *(v47 + 13);
  if (!v36)
  {
    v196 = 0;
    v186 = a8;
    v183 = a2;
    v184 = a3;
    v54 = 0;
    v51 = 0;
    goto LABEL_53;
  }

  v209 = 0;
  if (a4)
  {
    v49 = 0;
  }

  else
  {
    v49 = OpenLocalFile(v37, *a2, (*a3)[7], *(*a3 + 32), v194 == 1, &v209);
    if (v209)
    {
      v56 = SZGetLoggingHandle();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        v148 = *(v21 + 9);
        *v211 = 136315138;
        *&v211[4] = v148;
        _os_log_error_impl(&dword_26BC65000, v56, OS_LOG_TYPE_ERROR, "Failed to open local file %s", v211, 0xCu);
      }

      v54 = 0;
      v51 = 0;
      goto LABEL_191;
    }
  }

  v186 = a8;
  v196 = v36;
  if (v199 > 1)
  {
    v184 = a3;
    stream = v49;
    v183 = a2;
    v180 = v48;
    v181 = v21;
    v54 = 0;
    v51 = 0;
  }

  else
  {
    v50 = malloc_type_calloc(1uLL, 0x28uLL, 0x10D00405C4BD7A1uLL);
    v51 = v50;
    v52 = *(a9 + 52);
    switch(v52)
    {
      case 8:
        v53 = COMPRESSION_ZLIB;
        break;
      case 14:
        v53 = COMPRESSION_LZMA;
        break;
      case 99:
        v53 = COMPRESSION_LZFSE;
        break;
      default:
        v53 = 0;
        break;
    }

    v78 = compression_stream_init(v50, COMPRESSION_STREAM_ENCODE, v53);
    if (v78)
    {
      v79 = v78;
      v80 = SZGetLoggingHandle();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        *v211 = 67109120;
        *&v211[4] = v79;
        _os_log_error_impl(&dword_26BC65000, v80, OS_LOG_TYPE_ERROR, "Failed to initialize compression stream: %d", v211, 8u);
      }

      v54 = 0;
      goto LABEL_191;
    }

    v184 = a3;
    stream = v49;
    v183 = a2;
    v180 = v48;
    v181 = v21;
    v54 = malloc_type_malloc(0x20000uLL, 0xE77A561CuLL);
  }

  v81 = 0;
  v198 = 0;
  v36 = 0;
  v82 = a4;
  if (a4)
  {
    v83 = a4;
  }

  else
  {
    v83 = v13;
  }

  buf = v83;
  v208 = v54;
  while (1)
  {
    *v210 = 0;
    if (v82)
    {
      if (v196 - v198 >= 0x20000)
      {
        v84 = 0x20000;
      }

      else
      {
        v84 = v196 - v198;
      }

      if (v84 + v198 >= v196)
      {
        v81 = 2;
      }

      v189 = v84;
    }

    else
    {
      LocalFileData = ReadLocalFileData(stream, buf, 0x20000uLL, v210);
      v81 = LocalFileData;
      if ((LocalFileData & 5) != 0)
      {
        v209 = LocalFileData;
        v147 = SZGetLoggingHandle();
        v48 = v180;
        v21 = v181;
        if (!os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_156;
        }

        *v211 = 67109120;
        *&v211[4] = v81;
        v126 = "ReadLocalFileData returned %d";
        v127 = v147;
        v128 = 8;
        goto LABEL_173;
      }

      v189 = 0;
      v84 = *v210;
    }

    v192 = v84;
    v190 = v81;
    if (!v206 && v84)
    {
      v86 = buf;
      do
      {
        if (v84 >= 0x7FFFFFFF)
        {
          v87 = 0x7FFFFFFFLL;
        }

        else
        {
          v87 = v84;
        }

        v30 = crc32(v30, v86, v87);
        v86 += v87;
        v84 -= v87;
      }

      while (v84);
    }

    v88 = v192;
    if (v192)
    {
      v198 += v192;
      v89 = *(a9 + 8);
      if (v51)
      {
        v179 = v13;
        v90 = buf;
LABEL_129:
        v91 = 0x7FFFFFFFFFFFFFFFLL;
        if (v88 < 0x7FFFFFFFFFFFFFFFLL)
        {
          v91 = v88;
        }

        v51->src_ptr = v90;
        v51->src_size = v91;
        v182 = v91;
        while (1)
        {
          v51->dst_ptr = v208;
          v51->dst_size = 0x20000;
          v92 = SZGetLoggingHandle();
          if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
          {
            src_ptr = v51->src_ptr;
            src_size = v51->src_size;
            dst_ptr = v51->dst_ptr;
            dst_size = v51->dst_size;
            *v211 = 134218752;
            *&v211[4] = src_ptr;
            *&v211[12] = 2048;
            *&v211[14] = src_size;
            *&v211[22] = 2048;
            *&v211[24] = dst_ptr;
            *&v211[32] = 2048;
            *&v211[34] = dst_size;
            _os_log_debug_impl(&dword_26BC65000, v92, OS_LOG_TYPE_DEBUG, "Calling compression_stream_process with src_ptr: %p, src_size: %zu, dst_ptr: %p, dst_size: %zu", v211, 0x2Au);
          }

          v93 = compression_stream_process(v51, 0);
          if (v93)
          {
            v108 = v93;
            v209 = v190;
            v109 = SZGetLoggingHandle();
            v13 = v179;
            if (!os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_155;
            }

            *v211 = 67109120;
            *&v211[4] = v108;
            v110 = "compression_stream_process returned error %d";
            v111 = v109;
            v112 = 8;
            goto LABEL_201;
          }

          v94 = SZGetLoggingHandle();
          if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
          {
            v101 = v51->src_ptr;
            v102 = v51->src_size;
            v103 = v51->dst_ptr;
            v104 = v51->dst_size;
            *v211 = 67110144;
            *&v211[8] = 2048;
            *&v211[10] = v101;
            *&v211[18] = 2048;
            *&v211[20] = v102;
            *&v211[28] = 2048;
            *&v211[30] = v103;
            *&v211[38] = 2048;
            *&v211[40] = v104;
            _os_log_debug_impl(&dword_26BC65000, v94, OS_LOG_TYPE_DEBUG, "After process ret %d: src_ptr: %p, src_size: %zu, dst_ptr: %p, dst_size: %zu", v211, 0x30u);
          }

          v95 = v51->dst_size;
          if (v95 == 0x20000)
          {
LABEL_140:
            v90 += v182;
            v88 -= v182;
            if (v88)
            {
              goto LABEL_129;
            }

            v13 = v179;
            goto LABEL_142;
          }

          v96 = 0x20000 - v95;
          if (0x20000 - v95 != (*(v89 + 48))(*(v89 + 80), v208, 0x20000 - v95))
          {
            break;
          }

          v36 += v96;
          if (v51->dst_size)
          {
            goto LABEL_140;
          }
        }

        v209 = v190;
        v113 = *__error();
        v114 = SZGetLoggingHandle();
        v13 = v179;
        if (!os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_155;
        }

        v149 = strerror(v113);
        *v211 = 136315138;
        *&v211[4] = v149;
        v110 = "fwrite failed to write out entire compressed buffer: %s";
        goto LABEL_200;
      }

      v82 = a4;
      if ((*(v89 + 48))(*(v89 + 80), buf, v192) != v192)
      {
        v209 = v190;
        v151 = *__error();
        v114 = SZGetLoggingHandle();
        if (!os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
        {
LABEL_155:
          v115 = SZGetLoggingHandle();
          v48 = v180;
          v21 = v181;
          v54 = v208;
          if (!os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
          {
LABEL_156:
            v55 = 0;
LABEL_157:
            v49 = stream;
            goto LABEL_192;
          }

          *v211 = 134217984;
          *&v211[4] = v192;
          v126 = "Failed to write %ld bytes of local file data to output file";
          goto LABEL_172;
        }

        v152 = strerror(v151);
        *v211 = 136315138;
        *&v211[4] = v152;
        v110 = "fwrite failed to write out entire buffer: %s";
LABEL_200:
        v111 = v114;
        v112 = 12;
LABEL_201:
        _os_log_error_impl(&dword_26BC65000, v111, OS_LOG_TYPE_ERROR, v110, v211, v112);
        goto LABEL_155;
      }

      v36 += v192;
    }

    else
    {
LABEL_142:
      v82 = a4;
    }

    v81 = v190;
    v105 = *(a9 + 8);
    v106 = *(v105 + 24);
    v54 = v208;
    if (v106)
    {
      v106(1, *(v15 + 7), v198, v196, *(v105 + 32));
    }

    if (v190 == 2)
    {
      break;
    }

    buf += v189;
    if (v196 <= v198)
    {
      v209 = v190;
      v107 = SZGetLoggingHandle();
      if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
      {
        *v211 = 67109120;
        *&v211[4] = v190;
        _os_log_error_impl(&dword_26BC65000, v107, OS_LOG_TYPE_ERROR, "Consumed all data to copy without getting end of data signal; got status: %d", v211, 8u);
      }

      v55 = 0;
      v48 = v180;
      v21 = v181;
      goto LABEL_157;
    }
  }

  v209 = 2;
  v48 = v180;
  v21 = v181;
  if (v196 != v198)
  {
    v115 = SZGetLoggingHandle();
    if (!os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_156;
    }

    *v211 = 134217984;
    *&v211[4] = v196 - v198;
    v126 = "Breaking read/write loop with %llu bytes remaining";
LABEL_172:
    v127 = v115;
    v128 = 12;
LABEL_173:
    _os_log_error_impl(&dword_26BC65000, v127, OS_LOG_TYPE_ERROR, v126, v211, v128);
    goto LABEL_156;
  }

  if (!v51)
  {
    v49 = stream;
LABEL_209:
    v153 = v194;
    if (v49)
    {
      v154 = CloseLocalFile(v49);
      v153 = v194;
      if (v154)
      {
        v155 = v154;
        v156 = SZGetLoggingHandle();
        if (!os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_190;
        }

        v157 = *(v21 + 9);
        *v211 = 136315394;
        *&v211[4] = v157;
        *&v211[12] = 1024;
        *&v211[14] = v155;
        v75 = "Failed to close local file %s: %d";
        v120 = v211;
        v124 = v156;
        v125 = 18;
        goto LABEL_169;
      }
    }

    if (v153 != 4 && v51 && (*(a9 + 63) & 1) == 0)
    {
      if ((v195 == 8 || v195 == 99 || v195 == 14) && v36 > v202 && v202 < v207 && *(a9 + 52) == v195)
      {
        v158 = SZGetLoggingHandle();
        if (os_log_type_enabled(v158, OS_LOG_TYPE_DEBUG))
        {
          v175 = *(v21 + 9);
          *v211 = 136315394;
          *&v211[4] = v175;
          *&v211[12] = 2048;
          *&v211[14] = v36 - v202;
          _os_log_debug_impl(&dword_26BC65000, v158, OS_LOG_TYPE_DEBUG, "%s is %llu bytes larger when we compressed it. Using original compressed data.", v211, 0x16u);
        }

        v159 = 1;
LABEL_247:
        if (v203 == (*(*(a9 + 8) + 64))(*(*(a9 + 8) + 80), v203, 0))
        {
          v55 = ZipStreamWriteLocalFile(a1, v183, v184, a4, v159, a6, a7, v186, a9);
          v49 = 0;
        }

        else
        {
          v171 = *__error();
          v172 = SZGetLoggingHandle();
          if (os_log_type_enabled(v172, OS_LOG_TYPE_ERROR))
          {
            v174 = strerror(v171);
            *v211 = 136315138;
            *&v211[4] = v174;
            _os_log_error_impl(&dword_26BC65000, v172, OS_LOG_TYPE_ERROR, "Failed to seek back to start of local file header: %s", v211, 0xCu);
          }

          v49 = 0;
          v55 = 0;
        }

        v54 = v208;
        goto LABEL_192;
      }

      v165 = v36 - v207;
      if (v36 >= v207)
      {
        if (v195 == 8 || v195 == 99 || v195 == 14)
        {
          v166 = *(a9 + 52);
          v167 = SZGetLoggingHandle();
          v168 = os_log_type_enabled(v167, OS_LOG_TYPE_DEBUG);
          if (v166 == v195)
          {
            if (v168)
            {
              v176 = *(v21 + 9);
              *v211 = 136315394;
              *&v211[4] = v176;
              *&v211[12] = 2048;
              *&v211[14] = v36 - v207;
              _os_log_debug_impl(&dword_26BC65000, v167, OS_LOG_TYPE_DEBUG, "%s is %llu bytes larger compressed than uncompressed; converting.", v211, 0x16u);
            }

            v169 = vdupq_n_s64(1uLL);
            v169.i64[0] = v36 - v207;
            *(v186 + 40) = vaddq_s64(v169, *(v186 + 40));
          }

          else
          {
            if (v168)
            {
              v177 = *(v21 + 9);
              *v211 = 136315650;
              *&v211[4] = v177;
              *&v211[12] = 2048;
              *&v211[14] = v36 - v202;
              *&v211[22] = 2048;
              *&v211[24] = v36 - v207;
              _os_log_debug_impl(&dword_26BC65000, v167, OS_LOG_TYPE_DEBUG, "%s is %llu bytes larger with the new compression method and is %llu bytes larger than uncompressed; storing uncompressed.", v211, 0x20u);
            }

            ++*(v186 + 56);
          }

          v159 = 2;
        }

        else
        {
          v170 = SZGetLoggingHandle();
          v159 = 2;
          if (os_log_type_enabled(v170, OS_LOG_TYPE_DEBUG))
          {
            v178 = *(v21 + 9);
            *v211 = 136315394;
            *&v211[4] = v178;
            *&v211[12] = 2048;
            *&v211[14] = v165;
            _os_log_debug_impl(&dword_26BC65000, v170, OS_LOG_TYPE_DEBUG, "%s was not compressed before, and was %llu bytes larger when compressed. Storing uncompressed.", v211, 0x16u);
          }
        }

        goto LABEL_247;
      }
    }

LABEL_53:
    *(v21 + 8) = v203;
    if (v199 >= 2)
    {
      if (v194 == 1)
      {
        goto LABEL_70;
      }

      v21[3] = 0;
      *(v21 + 4) = *(v21 + 5);
    }

    else
    {
      if (!v51)
      {
        __assert_rtn("ZipStreamWriteLocalFile", "ZipStream.c", 533, "cmpStreamPtr");
      }

      v21[3] = *(v15 + 2);
      *(v21 + 4) = v36;
    }

    if (!v206)
    {
      *(v21 + 7) = v30;
    }

LABEL_70:
    if (v193)
    {
      if (v193 == 1)
      {
        *&v211[4] = 0uLL;
        if (v48[14] && (ExtraFieldWithSignature = GetExtraFieldWithSignature(v48 + v48[13] + 30, v48[14], &kZip64ExtraFieldSignature)) != 0 && ExtraFieldWithSignature[1] >= 0x10u)
        {
          v60 = *(v21 + 7);
          *&v211[4] = *(v21 + 2);
          v61 = 20;
        }

        else
        {
          v60 = *(v21 + 7);
          *&v211[4] = vmovn_s64(*(v21 + 2));
          v61 = 12;
        }

        *v211 = v60;
        *__error() = 0;
        v62 = (*(*(a9 + 8) + 48))(*(*(a9 + 8) + 80), "PK\a\b", 4);
        v63 = __error();
        if (v62 == 4)
        {
          *v63 = 0;
          if (v61 == (*(*(a9 + 8) + 48))(*(*(a9 + 8) + 80), v211, v61))
          {
            goto LABEL_78;
          }

          v122 = *__error();
          v73 = SZGetLoggingHandle();
          if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
          {
            v123 = strerror(v122);
            *v210 = 136315138;
            *&v210[4] = v123;
            v75 = "Failed to write data descriptor: %s";
            goto LABEL_167;
          }
        }

        else
        {
          v76 = *v63;
          v73 = SZGetLoggingHandle();
          if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
          {
            v77 = strerror(v76);
            *v210 = 136315138;
            *&v210[4] = v77;
            v75 = "Failed to write data descriptor signature: %s";
LABEL_167:
            v120 = v210;
            goto LABEL_168;
          }
        }

LABEL_190:
        v49 = 0;
LABEL_191:
        v55 = 0;
        goto LABEL_192;
      }

      if ((*(v15 + 1) & 8) != 0)
      {
        __assert_rtn("ZipStreamWriteLocalFile", "ZipStream.c", 554, "!(newLFRecord->flags & ZIP_FLAGS_BIT_EXPECT_DATA_DESCRIPTOR)");
      }

      *(v15 + 5) = v36;
      if (!v206)
      {
        *(v15 + 8) = v30;
      }

      v68 = (*(*(a9 + 8) + 72))(*(*(a9 + 8) + 80));
      if (v68 < 0)
      {
        v116 = *__error();
        v73 = SZGetLoggingHandle();
        if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_190;
        }

        v117 = strerror(v116);
        *v211 = 136315138;
        *&v211[4] = v117;
        v75 = "Failed to get current offset to restore after writing local file record: %s";
        goto LABEL_162;
      }

      v69 = v68;
      if (v203 != (*(*(a9 + 8) + 64))(*(*(a9 + 8) + 80), v203, 0))
      {
        v118 = *__error();
        v73 = SZGetLoggingHandle();
        if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_190;
        }

        v119 = strerror(v118);
        *v211 = 136315138;
        *&v211[4] = v119;
        v75 = "Failed to seek to local compressed size offset in local file header: %s";
        goto LABEL_162;
      }

      free(v48);
      v70 = CreateAndWriteLocalFileRecord(v15, v203, *(a9 + 8));
      if (!v70)
      {
        v129 = SZGetLoggingHandle();
        if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
        {
          v163 = *(v21 + 9);
          *v211 = 136315138;
          *&v211[4] = v163;
          _os_log_error_impl(&dword_26BC65000, v129, OS_LOG_TYPE_ERROR, "Failed to write local file record for file %s to output file", v211, 0xCu);
        }

        v49 = 0;
        v48 = 0;
        goto LABEL_191;
      }

      v48 = v70;
      v71 = *(v70 + 13) + *(v70 + 14) + 30;
      if (v188 + v187 + 30 != v71)
      {
        v144 = SZGetLoggingHandle();
        if (!os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_190;
        }

        v164 = *(v21 + 9);
        *v211 = 136315650;
        *&v211[4] = v164;
        *&v211[12] = 2048;
        *&v211[14] = v188 + v187 + 30;
        *&v211[22] = 2048;
        *&v211[24] = v71;
        v75 = "LocalFileHeader for %s changed in size when we updated it! Originally wrote %zu bytes; it's now %zu bytes.";
        v120 = v211;
        v124 = v144;
        v125 = 32;
        goto LABEL_169;
      }

      if (v69 != (*(*(a9 + 8) + 64))(*(*(a9 + 8) + 80), v69, 0))
      {
        v72 = *__error();
        v73 = SZGetLoggingHandle();
        if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_190;
        }

        v74 = strerror(v72);
        *v211 = 136315138;
        *&v211[4] = v74;
        v75 = "Failed to seek to end of compressed data offset in local file header: %s";
LABEL_162:
        v120 = v211;
LABEL_168:
        v124 = v73;
        v125 = 12;
LABEL_169:
        _os_log_error_impl(&dword_26BC65000, v124, OS_LOG_TYPE_ERROR, v75, v120, v125);
        goto LABEL_190;
      }
    }

LABEL_78:
    ZipStreamAddStatisticsForCDRecord(v21, v191, v186);
    v64 = *(a9 + 8);
    v65 = *(v64 + 24);
    if (v65)
    {
      v65(2, *(v15 + 7), *(v21 + 5), v196, *(v64 + 32));
    }

    DestroyMutableCDRecord(*v183);
    *v183 = v21;
    DestroyMutableLocalFileRecord(*v184);
    v49 = 0;
    v21 = 0;
    *v184 = v15;
    v55 = 1;
    v15 = 0;
    goto LABEL_192;
  }

  v130 = v13;
  do
  {
    v51->dst_ptr = v208;
    v51->dst_size = 0x20000;
    v131 = SZGetLoggingHandle();
    if (os_log_type_enabled(v131, OS_LOG_TYPE_DEBUG))
    {
      v136 = v51->src_ptr;
      v137 = v51->src_size;
      v138 = v51->dst_ptr;
      v139 = v51->dst_size;
      *v211 = 134218752;
      *&v211[4] = v136;
      *&v211[12] = 2048;
      *&v211[14] = v137;
      *&v211[22] = 2048;
      *&v211[24] = v138;
      *&v211[32] = 2048;
      *&v211[34] = v139;
      _os_log_debug_impl(&dword_26BC65000, v131, OS_LOG_TYPE_DEBUG, "Calling compression_stream_process with src_ptr: %p, src_size: %zu, dst_ptr: %p, dst_size: %zu", v211, 0x2Au);
    }

    v132 = compression_stream_process(v51, 1);
    v133 = SZGetLoggingHandle();
    if (os_log_type_enabled(v133, OS_LOG_TYPE_DEBUG))
    {
      v140 = v51->src_ptr;
      v141 = v51->src_size;
      v142 = v51->dst_ptr;
      v143 = v51->dst_size;
      *v211 = 67110144;
      *&v211[4] = v132;
      *&v211[8] = 2048;
      *&v211[10] = v140;
      *&v211[18] = 2048;
      *&v211[20] = v141;
      *&v211[28] = 2048;
      *&v211[30] = v142;
      *&v211[38] = 2048;
      *&v211[40] = v143;
      _os_log_debug_impl(&dword_26BC65000, v133, OS_LOG_TYPE_DEBUG, "After process ret %d: src_ptr: %p, src_size: %zu, dst_ptr: %p, dst_size: %zu", v211, 0x30u);
    }

    v134 = v51->dst_size;
    if (!(v134 >> 17))
    {
      v135 = 0x20000 - v134;
      *__error() = 0;
      if (v135 != (*(*(a9 + 8) + 48))(*(*(a9 + 8) + 80), v208, v135))
      {
        v161 = *__error();
        v162 = SZGetLoggingHandle();
        if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
        {
          v173 = strerror(v161);
          *v211 = 136315138;
          *&v211[4] = v173;
          _os_log_error_impl(&dword_26BC65000, v162, OS_LOG_TYPE_ERROR, "Failed to write final compressed data: %s", v211, 0xCu);
        }

        v55 = 0;
        v13 = v130;
        v48 = v180;
        v21 = v181;
        v54 = v208;
        goto LABEL_157;
      }

      v36 += v135;
    }
  }

  while (v132 == COMPRESSION_STATUS_OK);
  v49 = stream;
  if (v132 == COMPRESSION_STATUS_END)
  {
    v13 = v130;
    v48 = v180;
    v21 = v181;
    v54 = v208;
    goto LABEL_209;
  }

  v160 = SZGetLoggingHandle();
  v54 = v208;
  if (os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
  {
    *v211 = 67109120;
    *&v211[4] = v132;
    _os_log_error_impl(&dword_26BC65000, v160, OS_LOG_TYPE_ERROR, "compression_stream_process with finalize did not return compression_status_end: %d", v211, 8u);
  }

  v55 = 0;
  v13 = v130;
  v48 = v180;
  v21 = v181;
LABEL_192:
  if (v51)
  {
    compression_stream_destroy(v51);
    free(v51);
  }

  if (v49)
  {
    CloseLocalFile(v49);
  }

LABEL_196:
  DestroyMutableCDRecord(v21);
  DestroyMutableLocalFileRecord(v15);
  free(v48);
  free(v54);
  free(v13);
  v145 = *MEMORY[0x277D85DE8];
  return v55;
}

BOOL ZipStreamConcoctStreamData(uint64_t a1, uint64_t a2, __int16 a3, __int16 a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v37 = a2;
  valuePtr = a1;
  v36 = a3;
  v35 = a4;
  CDRecord = CreateCDRecord("META-INF/com.apple.ZipMetadata.plist", 33188);
  v13 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v15 = CFNumberCreate(v13, kCFNumberSInt64Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"RecordCount", v15);
  CFRelease(v15);
  v16 = CFNumberCreate(v13, kCFNumberSInt64Type, &v37);
  CFDictionaryAddValue(Mutable, @"TotalUncompressedBytes", v16);
  CFRelease(v16);
  v34 = 2;
  v17 = CFNumberCreate(v13, kCFNumberIntType, &v34);
  CFDictionaryAddValue(Mutable, @"Version", v17);
  CFRelease(v17);
  v18 = CFNumberCreate(v13, kCFNumberSInt16Type, &v36);
  CFDictionarySetValue(Mutable, @"StandardFilePerms", v18);
  CFRelease(v18);
  v19 = CFNumberCreate(v13, kCFNumberSInt16Type, &v35);
  CFDictionarySetValue(Mutable, @"StandardDirectoryPerms", v19);
  CFRelease(v19);
  v20 = *(a5 + 16);
  if (v20)
  {
    CFDictionarySetValue(Mutable, @"CreatorToolCommandLine", v20);
  }

  v21 = *(a5 + 24);
  if (v21)
  {
    CFDictionarySetValue(Mutable, @"CreatorToolUUID", v21);
  }

  if (*(a5 + 68) == 1)
  {
    CFDictionarySetValue(Mutable, @"IncludesAppleDouble", *MEMORY[0x277CBED28]);
  }

  Data = CFPropertyListCreateData(v13, Mutable, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  v23 = Data;
  if (Data)
  {
    Length = CFDataGetLength(Data);
    if (Length >= 0xFFFFFFFF)
    {
      __assert_rtn("ZipStreamConcoctStreamData", "ZipStream.c", 723, "dataLength < UINT32_MAX");
    }

    v25 = Length;
    v26 = malloc_type_malloc(Length, 0x60241409uLL);
    BytePtr = CFDataGetBytePtr(v23);
    v28 = CFDataGetLength(v23);
    memcpy(v26, BytePtr, v28);
    CFRelease(v23);
    *(CDRecord + 5) = 0;
    CDRecord[5] = v25;
    CDRecord[6] = v25;
    v29 = crc32(0, 0, 0);
    CDRecord[4] = crc32(v29, v26, v25);
    *a6 = CreateMutableCDRecord(CDRecord);
    LocalFileRecord = CreateLocalFileRecord(CDRecord);
    *a7 = CreateMutableLocalFileRecord(LocalFileRecord);
    free(CDRecord);
    free(LocalFileRecord);
    *a8 = v26;
  }

  else
  {
    v31 = SZGetLoggingHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *v33 = 0;
      _os_log_error_impl(&dword_26BC65000, v31, OS_LOG_TYPE_ERROR, "Failed to serialize stream data", v33, 2u);
    }

    free(CDRecord);
  }

  CFRelease(Mutable);
  return v23 != 0;
}

BOOL ZipStreamConcoctFixedStreamData(uint64_t a1, void *a2, void *a3, const Bytef **a4)
{
  CDRecord = CreateCDRecord("META-INF/com.apple.FixedZipMetadata.bin", 33188);
  v9 = gHashDigestSizes[*(a1 + 60)];
  v10 = v9 + 7;
  v11 = malloc_type_malloc(v9 + 7, 0x3D1363E9uLL);
  v12 = v11;
  if (v11)
  {
    *v11 = 2017879117;
    v11[4] = *(a1 + 60) + 1;
    *(v11 + 5) = v9;
    bzero(v11 + 7, v9);
    *(CDRecord + 5) = 0;
    CDRecord[5] = v10;
    CDRecord[6] = v10;
    v13 = crc32(0, 0, 0);
    CDRecord[4] = crc32(v13, v12, v9 + 7);
    *a2 = CreateMutableCDRecord(CDRecord);
    LocalFileRecord = CreateLocalFileRecord(CDRecord);
    *a3 = CreateMutableLocalFileRecord(LocalFileRecord);
    free(LocalFileRecord);
    *a4 = v12;
  }

  free(CDRecord);
  return v12 != 0;
}

uint64_t ZipStreamShouldOrderFileEarly(const char *a1, _BYTE *a2)
{
  *a2 = 0;
  if (!strncmp(a1, "com.apple.deltainstallcommands.", 0x1FuLL) || !strncmp(a1, "com.apple.parallelpatcharchive.", 0x1FuLL) || !strncmp(a1, "com.apple.parallelpatchinfo.", 0x1CuLL) || !strncmp(a1, "com.apple.installmetadata.", 0x1AuLL))
  {
    return 1;
  }

  if (!strncmp(a1, "Payload/", 8uLL))
  {
    if (strcmp(a1, "Payload/"))
    {
      v5 = strdup(a1 + 8);
      v6 = strchr(v5, 47);
      if (v6)
      {
        v7 = v6;
        *v6 = 0;
        v8 = rindex(v5, 46);
        if (!v8)
        {
LABEL_14:
          v4 = 0;
          *v7 = 47;
LABEL_28:
          free(v5);
          return v4;
        }

        v9 = v8;
        v10 = strlen(v8);
        v11 = 0;
        while (strlen(bundle_extensions[v11]) != v10 || strcasecmp(v9, bundle_extensions[v11]))
        {
          if (++v11 == 3)
          {
            goto LABEL_14;
          }
        }

        *v7 = 47;
        v14 = v7[1];
        v13 = v7 + 1;
        if (v14 && !_StringHasPrefix(v13, "_CodeSignature/") && !_StringHasPrefix(v13, "Contents/_CodeSignature/") && strcmp(v13, "Contents/") && strcmp(v13, "embedded.mobileprovision") && strcmp(v13, "ResourceRules.plist"))
        {
          if (strcmp(v13, "Info.plist") && strcmp(v13, "Contents/Info.plist"))
          {
            goto LABEL_25;
          }

          *a2 = 1;
        }

        v4 = 1;
        goto LABEL_28;
      }

LABEL_25:
      v4 = 0;
      goto LABEL_28;
    }

    return 1;
  }

  return 0;
}

uint64_t ZipStreamWriteCentralDirectoryAndEndRecords(const __CFArray *a1, CFIndex a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v171 = *MEMORY[0x277D85DE8];
  v152[0] = 0;
  v152[1] = 0;
  *(&v152[1] + 6) = 0;
  v5 = *(a5 + 8);
  v6 = *(v5 + 80);
  if (*(a5 + 65) != 1)
  {
    v9 = a5;
    v13 = (*(v5 + 72))(v6);
    if (v13 < 0)
    {
      v63 = *__error();
      v64 = SZGetLoggingHandle();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = strerror(v63);
        v65 = "ftello before writing central directory failed: %s";
        goto LABEL_99;
      }

      goto LABEL_100;
    }

    v14 = v13;
    v144 = v13;
    v145 = a4;
    v150 = v9;
    if (!*v9 || (*(v9 + 63) & 1) != 0)
    {
      v15 = 0;
LABEL_10:
      v143 = v15;
      v16 = SZGetLoggingHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_26BC65000, v16, OS_LOG_TYPE_DEBUG, "Writing Central Directory", buf, 2u);
      }

      Count = CFArrayGetCount(a1);
      if (Count >= 1)
      {
        for (i = 0; Count != i; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
          v20 = ValueAtIndex;
          v21 = ValueAtIndex[3];
          if (v21 > 0xD)
          {
            v22 = (v145 + 88);
            if (v21 != 14)
            {
              v22 = (v145 + 80);
              if (v21 != 99)
              {
LABEL_20:
                v22 = (v145 + 96);
              }
            }
          }

          else
          {
            v22 = (v145 + 64);
            if (ValueAtIndex[3])
            {
              v22 = (v145 + 72);
              if (v21 != 8)
              {
                goto LABEL_20;
              }
            }
          }

          ++*v22;
          v23 = *(v9 + 8);
          *buf = 0;
          v24 = 8 * (*(ValueAtIndex + 5) > 0xFFFFFFFEuLL);
          if (*(ValueAtIndex + 4) > 0xFFFFFFFEuLL)
          {
            v24 += 8;
          }

          if (*(ValueAtIndex + 8) > 0xFFFFFFFEuLL)
          {
            v24 += 8;
          }

          if (*(ValueAtIndex + 13) <= 0xFFFEu)
          {
            v25 = v24;
          }

          else
          {
            v25 = v24 | 4;
          }

          if (!_GetExtraFieldOfLength(ValueAtIndex + 44, &kZip64ExtraFieldSignature, v25, buf))
          {
            goto LABEL_49;
          }

          v26 = *buf;
          if (*buf)
          {
            v27 = *(v20 + 5);
            if (v27 < 0xFFFFFFFF)
            {
              v28 = (*buf + 4);
            }

            else
            {
              *(*buf + 4) = v27;
              v28 = (v26 + 12);
            }

            v29 = *(v20 + 4);
            if (v29 >= 0xFFFFFFFF)
            {
              *v28++ = v29;
            }

            v30 = *(v20 + 8);
            if (v30 >= 0xFFFFFFFF)
            {
              *v28++ = v30;
            }

            v31 = *(v20 + 13);
            if (v31 >= 0xFFFF)
            {
              *v28 = v31;
            }
          }

          *buf = 0;
          if (_GetExtraFieldOfLength(v20 + 44, kInfoZipExtraFieldSignature, 8 * (*(v20 + 2) != *(v20 + 1)), buf))
          {
            v32 = *buf;
            if (*buf)
            {
              v33 = *(v20 + 1);
              if (v33 > 0xFFFFFFFE)
              {
                LODWORD(v33) = -1;
              }

              *(*buf + 4) = v33;
              v34 = *(v20 + 2);
              if (v34 > 0xFFFFFFFE)
              {
                LODWORD(v34) = -1;
              }

              *(v32 + 8) = v34;
            }

            v35 = strlen(*(v20 + 9));
            if (v35 >= 0x10000)
            {
              __assert_rtn("CreateCDRecordFromMutable", "MutableZipStructure.c", 384, "file_name_length <= UINT16_MAX");
            }

            v36 = v35;
            v37 = malloc_type_malloc(v35 + v20[44] + v20[24] + 46, 0x10000401E1C372CuLL);
            v38 = v37;
            *v37 = 33639248;
            v37[2] = *v20;
            if (v25)
            {
              v39 = 45;
            }

            else
            {
              v39 = v20[1];
            }

            v37[3] = v39;
            v37[4] = v20[2];
            v37[5] = v20[3];
            *(v37 + 3) = UNIX2DOSTime(*(v20 + 2));
            v38[4] = *(v20 + 7);
            v40 = *(v20 + 4);
            if (v40 >= 0xFFFFFFFF)
            {
              LODWORD(v40) = -1;
            }

            v38[5] = v40;
            v41 = *(v20 + 5);
            if (v41 >= 0xFFFFFFFF)
            {
              LODWORD(v41) = -1;
            }

            v38[6] = v41;
            *(v38 + 14) = v36;
            *(v38 + 15) = v20[44];
            *(v38 + 16) = v20[24];
            v42 = *(v20 + 13);
            if (v42 >= 0xFFFF)
            {
              LOWORD(v42) = -1;
            }

            *(v38 + 17) = v42;
            *(v38 + 18) = v20[28];
            *(v38 + 38) = (v20[12] << 16) | 0x4000;
            v43 = *(v20 + 8);
            if (v43 >= 0xFFFFFFFF)
            {
              LODWORD(v43) = -1;
            }

            *(v38 + 42) = v43;
            memcpy(v38 + 46, *(v20 + 9), v36);
            v44 = v38 + v36 + 46;
            memcpy(v44, *(v20 + 12), v20[44]);
            memcpy(&v44[v20[44]], *(v20 + 10), v20[24]);
          }

          else
          {
LABEL_49:
            v38 = 0;
          }

          v45 = *(v38 + 14) + *(v38 + 15) + *(v38 + 16) + 46;
          v46 = (*(v23 + 48))(*(v23 + 80), v38, v45);
          if (v46 == v45)
          {
            v47 = 0;
          }

          else
          {
            v47 = v38;
          }

          free(v47);
          if (v46 != v45 || v38 == 0)
          {
            v64 = SZGetLoggingHandle();
            if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
            {
              v76 = __error();
              v77 = strerror(*v76);
              *buf = 136315138;
              *&buf[4] = v77;
              v65 = "Failed to write central directory record: %s";
              goto LABEL_99;
            }

            goto LABEL_100;
          }

          free(v38);
          v9 = v150;
        }
      }

      v49 = SZGetLoggingHandle();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_26BC65000, v49, OS_LOG_TYPE_DEBUG, "Writing end of central directory records", buf, 2u);
      }

      v50 = (*(*(v9 + 8) + 72))(*(*(v9 + 8) + 80));
      if ((v50 & 0x8000000000000000) == 0)
      {
        v51 = v50;
        v52 = v50 - v144;
        v53 = SZGetLoggingHandle();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          v104 = *(v145 + 136);
          v103 = *(v145 + 144);
          *buf = 134219008;
          *&buf[4] = Count;
          *&buf[12] = 2048;
          *&buf[14] = v144;
          *&buf[22] = 2048;
          *&buf[24] = v52;
          LOWORD(v160[0]) = 2048;
          *(v160 + 2) = v103;
          WORD5(v160[0]) = 2048;
          *(v160 + 12) = v104;
          _os_log_debug_impl(&dword_26BC65000, v53, OS_LOG_TYPE_DEBUG, "Zip64 triggers: total_cd_records %lu; cd_offset %lld; cd_length %llu; max compressed_size %llu; max uncompressed_size %llu", buf, 0x34u);
        }

        if (v144 > 4294967294 || Count > 65534 || v52 > 4294967294 || *(v145 + 136) > 0xFFFFFFFEuLL || *(v145 + 144) > 0xFFFFFFFEuLL)
        {
          v54 = SZGetLoggingHandle();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_26BC65000, v54, OS_LOG_TYPE_DEBUG, "Writing Zip64 records", buf, 2u);
          }

          *(v145 + 208) = 1;
          v55 = malloc_type_calloc(1uLL, 0x14uLL, 0x1000040A86A77D5uLL);
          v55[4] = 1;
          *v55 = 117853008;
          v56 = malloc_type_calloc(1uLL, 0x38uLL, 0x100004021716A34uLL);
          *v56 = 101075792;
          *(v56 + 4) = 44;
          *(v56 + 3) = 2949918;
          *(v55 + 1) = v51;
          *(v56 + 3) = Count;
          *(v56 + 4) = Count;
          *(v56 + 5) = v52;
          *(v56 + 6) = v144;
          v57 = *(v56 + 4) + 12;
          if (v57 >= 0x7FFFFFFFFFFFFFFFLL)
          {
            __assert_rtn("ZipStreamWriteCentralDirectoryAndEndRecords", "ZipStream.c", 1174, "writeSize < INTPTR_MAX");
          }

          v58 = v56;
          *__error() = 0;
          v59 = (*(*(v9 + 8) + 48))(*(*(v9 + 8) + 80), v58, v57);
          v60 = __error();
          if (v57 == v59)
          {
            *v60 = 0;
            if ((*(*(v9 + 8) + 48))(*(*(v9 + 8) + 80), v55, 20) == 20)
            {
              memset(v152 + 4, 0, 18);
              LODWORD(v152[0]) = 101010256;
              if (Count >= 0x10000)
              {
                LOWORD(Count) = -1;
              }

LABEL_118:
              LOWORD(v152[1]) = Count;
              WORD1(v152[1]) = Count;
              v91 = -1;
              if (v52 >= 0xFFFFFFFFLL)
              {
                v92 = -1;
              }

              else
              {
                v92 = v52;
              }

              if (v144 < 0xFFFFFFFFLL)
              {
                v91 = v144;
              }

              HIDWORD(v152[1]) = v92;
              LODWORD(v152[2]) = v91;
              *__error() = 0;
              if ((*(*(v9 + 8) + 48))(*(*(v9 + 8) + 80), v152, 22) == 22)
              {
                v93 = (*(*(v9 + 8) + 72))(*(*(v9 + 8) + 80));
                if ((v93 & 0x8000000000000000) == 0)
                {
                  v94 = v143 ^ 1;
                  if (!*v9)
                  {
                    v94 = 0;
                  }

                  if (v94)
                  {
                    v95 = v144;
                    v96 = *v9 + v144 / *v9 * *v9;
                    if (v96 >= v93)
                    {
                      v96 = v93;
                    }
                  }

                  else
                  {
                    v95 = v144;
                    v96 = v144 + 4;
                  }

                  *(v145 + 128) = v96;
                  *(v145 + 104) = v93 - v95;
                  v8 = 1;
                  goto LABEL_139;
                }

                v99 = *__error();
                v81 = SZGetLoggingHandle();
                if (!os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_138;
                }

                v100 = strerror(v99);
                *buf = 136315138;
                *&buf[4] = v100;
                v83 = "Failed to determine offset of output file: %s";
                goto LABEL_137;
              }

              v97 = *__error();
              v81 = SZGetLoggingHandle();
              if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
              {
                v98 = strerror(v97);
                *buf = 136315138;
                *&buf[4] = v98;
                v83 = "Failed to write end record: %s";
                goto LABEL_137;
              }

LABEL_138:
              v8 = 0;
              goto LABEL_139;
            }

            v86 = *__error();
            v81 = SZGetLoggingHandle();
            if (!os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_138;
            }

            v87 = strerror(v86);
            *buf = 136315138;
            *&buf[4] = v87;
            v83 = "Failed to write zip64 end record locator: %s";
          }

          else
          {
            v80 = *v60;
            v81 = SZGetLoggingHandle();
            if (!os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_138;
            }

            v82 = strerror(v80);
            *buf = 136315138;
            *&buf[4] = v82;
            v83 = "Failed to write zip64 end record: %s";
          }

LABEL_137:
          _os_log_error_impl(&dword_26BC65000, v81, OS_LOG_TYPE_ERROR, v83, buf, 0xCu);
          goto LABEL_138;
        }

        v58 = 0;
        v55 = 0;
        memset(v152 + 4, 0, 18);
        LODWORD(v152[0]) = 101010256;
        goto LABEL_118;
      }

      v78 = *__error();
      v64 = SZGetLoggingHandle();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        v79 = strerror(v78);
        *buf = 136315138;
        *&buf[4] = v79;
        v65 = "ftello after writing central directory failed: %s";
LABEL_99:
        _os_log_error_impl(&dword_26BC65000, v64, OS_LOG_TYPE_ERROR, v65, buf, 0xCu);
      }

LABEL_100:
      v8 = 0;
LABEL_101:
      v55 = 0;
      v58 = 0;
LABEL_139:
      free(v58);
      free(v55);
      goto LABEL_140;
    }

    v66 = SZGetLoggingHandle();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_26BC65000, v66, OS_LOG_TYPE_DEBUG, "Writing partial hash", buf, 2u);
    }

    v67 = CFArrayGetValueAtIndex(a1, a2);
    v68 = malloc_type_malloc(0x400000uLL, 0xBB50E9AFuLL);
    v170 = 0;
    v168 = 0u;
    v169 = 0u;
    v166 = 0u;
    v167 = 0u;
    v164 = 0u;
    v165 = 0u;
    v162 = 0u;
    v163 = 0u;
    v161 = 0u;
    memset(v160, 0, sizeof(v160));
    memset(buf, 0, sizeof(buf));
    v69 = gHashDigestSizes[*(v9 + 60)];
    v149 = malloc_type_malloc(v69, 0x100004077774924uLL);
    v70 = v14 + 4;
    v71 = (v14 + 4) / *v9 * *v9;
    v147 = v67;
    v148 = v67[8];
    v72 = v148 + strlen(*(a3 + 56)) + *(a3 + 64);
    v73 = (v72 + 37);
    if (v71 < (v72 + 37 + v69))
    {
      v74 = SZGetLoggingHandle();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
      {
        *v153 = 0;
        v75 = "Not computing partial hash for last chunk because last chunk includes metadata digest";
LABEL_192:
        _os_log_debug_impl(&dword_26BC65000, v74, OS_LOG_TYPE_DEBUG, v75, v153, 2u);
        goto LABEL_114;
      }

      goto LABEL_114;
    }

    v84 = v70 - v71;
    if (!v84)
    {
      v74 = SZGetLoggingHandle();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
      {
        *v153 = 0;
        v75 = "Not computing partial hash for last chunk because central directory signature ends at a chunk boundary.";
        goto LABEL_192;
      }

LABEL_114:
      v15 = 0;
      v8 = 1;
LABEL_177:
      v110 = v149;
      goto LABEL_178;
    }

    *__error() = 0;
    if ((*(*(v9 + 8) + 48))(*(*(v9 + 8) + 80), &kCDRecordSignature, 4) == 4)
    {
      v85 = *(v9 + 60);
      memset(buf, 0, sizeof(buf));
      memset(v160, 0, sizeof(v160));
      v161 = 0u;
      v162 = 0u;
      v163 = 0u;
      v164 = 0u;
      v165 = 0u;
      v166 = 0u;
      v167 = 0u;
      v168 = 0u;
      v169 = 0u;
      v170 = 0;
      *buf = v85;
      if (v85 > 4)
      {
        switch(v85)
        {
          case 5:
            CC_SHA256_Init(&buf[8]);
            break;
          case 6:
            CC_SHA384_Init(&buf[8]);
            break;
          case 7:
            CC_SHA512_Init(&buf[8]);
            break;
        }
      }

      else if (v85)
      {
        if (v85 == 1)
        {
          CC_SHA1_Init(&buf[8]);
        }

        else if (v85 == 4)
        {
          CC_SHA224_Init(&buf[8]);
        }
      }

      else
      {
        CC_MD5_Init(&buf[8]);
      }

      if (v71 == (*(*(v9 + 8) + 64))(*(*(v9 + 8) + 80), v71, 0))
      {
        v146 = (v72 + 30);
        while (v84)
        {
          if (v84 >= 0x400000)
          {
            v105 = 0x400000;
          }

          else
          {
            v105 = v84;
          }

          v106 = (*(*(v9 + 8) + 56))(*(*(v9 + 8) + 80), v68, v105);
          if (v106 != v105)
          {
            v111 = v106;
            v112 = *__error();
            v113 = SZGetLoggingHandle();
            if (!os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
            {
LABEL_186:
              v15 = 0;
              v8 = 0;
              goto LABEL_177;
            }

            *v153 = 134218498;
            v154 = v105;
            v155 = 2048;
            v156 = v111;
            v157 = 2080;
            v158 = strerror(v112);
            v135 = "Expected to read %ld bytes, but only got %ld bytes from outfile: %s";
            v136 = v113;
            v137 = 32;
LABEL_227:
            _os_log_error_impl(&dword_26BC65000, v136, OS_LOG_TYPE_ERROR, v135, v153, v137);
            goto LABEL_186;
          }

          v107 = v105;
          do
          {
            if (v107 >= 0xFFFFFFFF)
            {
              v108 = 0xFFFFFFFFLL;
            }

            else
            {
              v108 = v107;
            }

            if (*buf > 4)
            {
              switch(*buf)
              {
                case 5:
                  CC_SHA256_Update(&buf[8], v68, v108);
                  break;
                case 6:
                  CC_SHA384_Update(&buf[8], v68, v108);
                  break;
                case 7:
                  CC_SHA512_Update(&buf[8], v68, v108);
                  break;
              }
            }

            else if (*buf)
            {
              if (*buf == 1)
              {
                CC_SHA1_Update(&buf[8], v68, v108);
              }

              else if (*buf == 4)
              {
                CC_SHA224_Update(&buf[8], v68, v108);
              }
            }

            else
            {
              CC_MD5_Update(&buf[8], v68, v108);
            }

            v107 -= v108;
          }

          while (v107);
          v84 -= v105;
          if (v84 < 0)
          {
            __assert_rtn("ZipStreamWritePartialHashForLastChunk", "ZipStream.c", 980, "remaining >= 0");
          }
        }

        if (*buf > 4)
        {
          v110 = v149;
          switch(*buf)
          {
            case 5:
              CC_SHA256_Final(v149, &buf[8]);
              break;
            case 6:
              CC_SHA384_Final(v149, &buf[8]);
              break;
            case 7:
              CC_SHA512_Final(v149, &buf[8]);
              break;
          }
        }

        else
        {
          v110 = v149;
          if (*buf)
          {
            if (*buf == 1)
            {
              CC_SHA1_Final(v149, &buf[8]);
            }

            else if (*buf == 4)
            {
              CC_SHA224_Final(v149, &buf[8]);
            }
          }

          else
          {
            CC_MD5_Final(v149, &buf[8]);
          }
        }

        v114 = (*(*(v9 + 8) + 64))(*(*(v9 + 8) + 80), v73, 0);
        v115 = __error();
        if (v73 == v114)
        {
          *v115 = 0;
          if (v69 != (*(*(v9 + 8) + 48))(*(*(v9 + 8) + 80), v110, v69))
          {
            v126 = *__error();
            v127 = SZGetLoggingHandle();
            if (!os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_215;
            }

            *v153 = 136315138;
            v154 = strerror(v126);
            v123 = "Failed to write digest to fixed metadata: %s";
            v124 = v127;
            v125 = 12;
LABEL_213:
            _os_log_error_impl(&dword_26BC65000, v124, OS_LOG_TYPE_ERROR, v123, v153, v125);
            goto LABEL_215;
          }

          v116 = v144;
          if (v146 == (*(*(v9 + 8) + 64))(*(*(v9 + 8) + 80), v146, 0))
          {
            v117 = crc32(0, 0, 0);
            v118 = *(a3 + 48);
            while (v118 >= 1)
            {
              if (v118 >= 0x400000)
              {
                v119 = 0x400000;
              }

              else
              {
                v119 = v118;
              }

              v120 = (*(*(v9 + 8) + 56))(*(*(v9 + 8) + 80), v68, v119);
              if (v120 != v119)
              {
                v132 = v120;
                v133 = *__error();
                v134 = SZGetLoggingHandle();
                if (!os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_176;
                }

                *v153 = 134218498;
                v154 = v119;
                v155 = 2048;
                v156 = v132;
                v157 = 2080;
                v158 = strerror(v133);
                v90 = "Expected to read %ld bytes, but only got %ld bytes from outfile: %s";
                v129 = v134;
                v130 = 32;
                goto LABEL_218;
              }

              v117 = crc32(v117, v68, v119);
              v118 -= v119;
              v116 = v144;
              if (v118 < 0)
              {
                __assert_rtn("ZipStreamWritePartialHashForLastChunk", "ZipStream.c", 1021, "remaining >= 0");
              }
            }

            *(a3 + 32) = v117;
            if (v148 == (*(*(v9 + 8) + 64))(*(*(v9 + 8) + 80), v148, 0))
            {
              v131 = CreateAndWriteLocalFileRecord(a3, v148, *(v9 + 8));
              if (v131)
              {
                free(v131);
                *(v147 + 7) = *(a3 + 32);
                if ((*(*(v9 + 8) + 64))(*(*(v9 + 8) + 80), v116, 0) == v116)
                {
                  v15 = 1;
                  v8 = 1;
                  goto LABEL_177;
                }

                v141 = *__error();
                v142 = SZGetLoggingHandle();
                if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
                {
                  *v153 = 136315138;
                  v154 = strerror(v141);
                  v135 = "Failed to seek to the beginning of the central directory: %s";
                  v136 = v142;
                  v137 = 12;
                  goto LABEL_227;
                }

                goto LABEL_186;
              }

              v140 = SZGetLoggingHandle();
              if (!os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_186;
              }

              *v153 = 0;
              v135 = "Failed to write updated fixed metadata LF record";
              v136 = v140;
              v137 = 2;
              goto LABEL_227;
            }

            v138 = *__error();
            v139 = SZGetLoggingHandle();
            if (!os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_176;
            }

            *v153 = 134218242;
            v154 = v148;
            v155 = 2080;
            v156 = strerror(v138);
            v90 = "Failed to seek to fixed metadata LF header at offset %llu: %s";
            v129 = v139;
            v130 = 22;
            goto LABEL_218;
          }

          v128 = *__error();
          v122 = SZGetLoggingHandle();
          if (!os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
          {
LABEL_215:
            v15 = 0;
            v8 = 0;
LABEL_178:
            free(v68);
            free(v110);
            if (!v8)
            {
              goto LABEL_101;
            }

            goto LABEL_10;
          }

          *v153 = 134218242;
          v154 = v146;
          v155 = 2080;
          v156 = strerror(v128);
          v123 = "Failed to seek to beginning of fixed metadata file data %llu: %s";
        }

        else
        {
          v121 = *v115;
          v122 = SZGetLoggingHandle();
          if (!os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_215;
          }

          *v153 = 134218242;
          v154 = v73;
          v155 = 2080;
          v156 = strerror(v121);
          v123 = "Failed to seek to digest offset %llu in fixed metadata: %s";
        }

        v124 = v122;
        v125 = 22;
        goto LABEL_213;
      }

      v109 = *__error();
      v89 = SZGetLoggingHandle();
      if (!os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
      {
LABEL_176:
        v15 = 0;
        v8 = 0;
        goto LABEL_177;
      }

      *v153 = 136315138;
      v154 = strerror(v109);
      v90 = "Failed to seek to start of last partial chunk before CD: %s";
    }

    else
    {
      v88 = *__error();
      v89 = SZGetLoggingHandle();
      if (!os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_176;
      }

      *v153 = 136315138;
      v154 = strerror(v88);
      v90 = "Failed to write out first CD record signature: %s";
    }

    v129 = v89;
    v130 = 12;
LABEL_218:
    _os_log_error_impl(&dword_26BC65000, v129, OS_LOG_TYPE_ERROR, v90, v153, v130);
    goto LABEL_176;
  }

  if ((*(v5 + 48))(v6, &kCDRecordSignature, 4) == 4)
  {
    v7 = SZGetLoggingHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_26BC65000, v7, OS_LOG_TYPE_DEBUG, "Wrote central directory header to trigger stream end", buf, 2u);
    }

    v8 = 1;
  }

  else
  {
    v61 = *__error();
    v62 = SZGetLoggingHandle();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = strerror(v61);
      _os_log_error_impl(&dword_26BC65000, v62, OS_LOG_TYPE_ERROR, "Failed to write central directory record signature: %s", buf, 0xCu);
    }

    v8 = 0;
  }

LABEL_140:
  v101 = *MEMORY[0x277D85DE8];
  return v8;
}

BOOL ZipStreamConfigureOutput(void *a1, char a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if (v2 != 1)
  {
    v5 = SZGetLoggingHandle();
    result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_16;
    }

    v11[0] = 67109120;
    v11[1] = v2;
    v6 = "Only version 1 of callbacks struct is supported; you specified %hhu";
    v7 = v5;
    v8 = 8;
    goto LABEL_15;
  }

  v3 = a1[5];
  if (!v3)
  {
    if (a1[6] && (a1[7] && a1[8] && a1[12] || a2) && a1[9])
    {
      goto LABEL_4;
    }

    v9 = SZGetLoggingHandle();
    result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_16;
    }

    LOWORD(v11[0]) = 0;
    v6 = "Must specify either outFILE or appropriate output contexts in configuration struct. HINT: you must specify write and tell callbacks for non-seakable output; you must specify all for seekable output.";
    v7 = v9;
    v8 = 2;
LABEL_15:
    _os_log_error_impl(&dword_26BC65000, v7, OS_LOG_TYPE_ERROR, v6, v11, v8);
    result = 0;
    goto LABEL_16;
  }

  a1[6] = ZipStreamFILEWriteCallback;
  a1[7] = ZipStreamFILEReadCallback;
  a1[8] = ZipStreamFILESeekCallback;
  a1[9] = ZipStreamFILETellCallback;
  a1[10] = v3;
  a1[11] = ZipStreamFILEFlushCallback;
  a1[12] = ZipStreamFILETruncateCallback;
LABEL_4:
  result = 1;
LABEL_16:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ZipStreamFILETruncateCallback(FILE *a1, off_t a2)
{
  v3 = fileno(a1);

  return ftruncate(v3, a2);
}

off_t ZipStreamFILESeekCallback(FILE *__stream, off_t a2, int a3)
{
  if ((a2 || a3 != 1) && fseeko(__stream, a2, a3) == -1)
  {
    return -1;
  }

  return ftello(__stream);
}

size_t ZipStreamFILEReadCallback(FILE *__stream, void *__ptr, size_t a3)
{
  v3 = a3;
  if (fread(__ptr, 1uLL, a3, __stream) != a3)
  {
    return -1;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = SZGetLoggingHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6[0] = 0;
      _os_log_error_impl(&dword_26BC65000, v4, OS_LOG_TYPE_ERROR, "fread returned result > INTPTR_MAX and so is not representable as a ssize_t", v6, 2u);
    }

    return -1;
  }

  return v3;
}

size_t ZipStreamFILEWriteCallback(FILE *__stream, void *__ptr, size_t a3)
{
  v3 = a3;
  if (fwrite(__ptr, 1uLL, a3, __stream) != a3)
  {
    return -1;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = SZGetLoggingHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6[0] = 0;
      _os_log_error_impl(&dword_26BC65000, v4, OS_LOG_TYPE_ERROR, "fwrite returned result > INTPTR_MAX and so is not representable as a ssize_t", v6, 2u);
    }

    return -1;
  }

  return v3;
}

void ZipStreamCallPreflightResultCallback(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  keys[3] = *MEMORY[0x277D85DE8];
  v12 = a3;
  valuePtr = a2;
  v11 = a4;
  if (*(a1 + 8))
  {
    v5 = *MEMORY[0x277CBECE8];
    v6 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &valuePtr);
    v7 = CFNumberCreate(v5, kCFNumberSInt64Type, &v12);
    v8 = CFNumberCreate(v5, kCFNumberSInt16Type, &v11);
    keys[0] = @"PreflightResultTotalFileCount";
    keys[1] = @"PreflightResultTotalFileSize";
    keys[2] = @"PreflightTargetPathMode";
    values[0] = v6;
    values[1] = v7;
    values[2] = v8;
    v9 = CFDictionaryCreate(v5, keys, values, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    (*(a1 + 8))(v9, *(a1 + 16));
    CFRelease(v6);
    CFRelease(v7);
    CFRelease(v8);
    CFRelease(v9);
  }

  v10 = *MEMORY[0x277D85DE8];
}

_WORD *CreateMutableLocalFileRecord(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x50uLL, 0x1010040BDAC2CBCuLL);
  *v2 = *(a1 + 4);
  v2[1] = *(a1 + 6);
  v2[2] = *(a1 + 8);
  if (!*(a1 + 28) || (ExtraFieldWithSignature = GetExtraFieldWithSignature(a1 + *(a1 + 26) + 30, *(a1 + 28), kInfoZipExtraFieldSignature)) == 0 || ExtraFieldWithSignature[1] < 8u)
  {
    v4 = DOS2UNIXTime(*(a1 + 10));
    *(v2 + 1) = v4;
    *(v2 + 2) = v4;
LABEL_5:
    *(v2 + 6) = -1;
    goto LABEL_6;
  }

  *(v2 + 1) = *(ExtraFieldWithSignature + 1);
  *(v2 + 2) = *(ExtraFieldWithSignature + 2);
  if (ExtraFieldWithSignature[1] < 0xCu)
  {
    goto LABEL_5;
  }

  v2[12] = ExtraFieldWithSignature[6];
  v2[13] = ExtraFieldWithSignature[7];
LABEL_6:
  v5 = a1 + 30;
  *(v2 + 30) = *(*(a1 + 26) + a1 + 30 - 1) == 47;
  *(v2 + 8) = *(a1 + 14);
  v6 = *(a1 + 18);
  if ((v6 == -1 || *(a1 + 22) == -1) && *(a1 + 28) && (v7 = GetExtraFieldWithSignature(v5 + *(a1 + 26), *(a1 + 28), &kZip64ExtraFieldSignature)) != 0 && v7[1] == 16)
  {
    v8 = *(v7 + 2);
    v6 = *(v7 + 6);
  }

  else
  {
    v8 = *(a1 + 22);
  }

  *(v2 + 5) = v6;
  *(v2 + 6) = v8;
  v2[32] = *(a1 + 28);
  v9 = *(a1 + 26);
  v10 = malloc_type_calloc(v9 + 1, 1uLL, 0x100004077774924uLL);
  memcpy(v10, (a1 + 30), v9);
  *(v2 + 7) = v10;
  v11 = malloc_type_malloc(*(a1 + 28), 0x100004077774924uLL);
  *(v2 + 9) = v11;
  memcpy(v11, (v5 + *(a1 + 26)), *(a1 + 28));
  return v2;
}

void DestroyMutableLocalFileRecord(void **a1)
{
  if (a1)
  {
    free(a1[7]);
    free(a1[9]);

    free(a1);
  }
}

uint64_t _GetExtraFieldOfLength(unsigned __int16 *a1, unsigned __int16 *a2, unsigned int a3, void *a4)
{
  v8 = *a1;
  ExtraFieldWithSignature = GetExtraFieldWithSignature(*(a1 + 1), *a1, a2);
  if (ExtraFieldWithSignature)
  {
    v10 = ExtraFieldWithSignature[1];
    if ((a3 - 1) < v10)
    {
      goto LABEL_13;
    }

    v11 = v10 + 4;
    if (v8 > (v10 + 4))
    {
      memmove(ExtraFieldWithSignature, ExtraFieldWithSignature + (v10 + 4), (v10 + 4));
      v8 = *a1;
    }

    if (v8 < v11)
    {
      __assert_rtn("_RemoveExtraField", "MutableZipStructure.c", 81, "fieldLength <= extraInfo->length");
    }

    LOWORD(v8) = v8 - v11;
    *a1 = v8;
  }

  if (a3)
  {
    v12 = a3 + v8 + 4;
    if (v12 >> 16)
    {
      ExtraFieldWithSignature = 0;
LABEL_14:
      v13 = 0;
      goto LABEL_15;
    }

    ExtraFieldWithSignature = reallocf(*(a1 + 1), v12);
    *(a1 + 1) = ExtraFieldWithSignature;
    if (!ExtraFieldWithSignature)
    {
      goto LABEL_14;
    }

    ExtraFieldWithSignature = (ExtraFieldWithSignature + *a1);
    *a1 = v12;
    *ExtraFieldWithSignature = *a2;
    ExtraFieldWithSignature[1] = a3;
  }

  else
  {
    ExtraFieldWithSignature = 0;
  }

LABEL_13:
  v13 = 1;
LABEL_15:
  *a4 = ExtraFieldWithSignature;
  return v13;
}

char *CreateAndWriteLocalFileRecord(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = 0;
  if (*(a1 + 40) <= 0xFFFFFFFEuLL && *(a1 + 48) < 0xFFFFFFFFuLL)
  {
    v7 = 0;
    v6 = 1;
  }

  else
  {
    v6 = 0;
    v7 = 16;
  }

  if (!_GetExtraFieldOfLength((a1 + 64), &kZip64ExtraFieldSignature, v7, &v28))
  {
    goto LABEL_28;
  }

  v8 = v28;
  if (v28)
  {
    *(v28 + 4) = *(a1 + 48);
    *(v8 + 12) = *(a1 + 40);
  }

  v28 = 0;
  if (!_GetExtraFieldOfLength((a1 + 64), &kStreamingZipLFExtraFieldSignature, 2 * (*(a1 + 28) != 0), &v28))
  {
    goto LABEL_28;
  }

  if (v28)
  {
    *(v28 + 4) = *(a1 + 28);
  }

  v9 = 8 * (*(a1 + 16) != *(a1 + 8));
  if (*(a1 + 24) != -1 && *(a1 + 26) != 0xFFFF)
  {
    v9 = 12;
  }

  v28 = 0;
  if (_GetExtraFieldOfLength((a1 + 64), kInfoZipExtraFieldSignature, v9, &v28))
  {
    v10 = v28;
    if (v28)
    {
      v11 = *(a1 + 8);
      if (v11 > 0xFFFFFFFE)
      {
        LODWORD(v11) = -1;
      }

      *(v28 + 4) = v11;
      v12 = *(a1 + 16);
      if (v12 > 0xFFFFFFFE)
      {
        LODWORD(v12) = -1;
      }

      *(v10 + 8) = v12;
      if (v9 == 12)
      {
        *(v10 + 12) = *(a1 + 24);
        *(v10 + 14) = *(a1 + 26);
      }
    }

    v13 = strlen(*(a1 + 56));
    if (v13 >= 0x10000)
    {
      __assert_rtn("CreateLocalFileRecordFromMutable", "MutableZipStructure.c", 188, "file_name_length <= UINT16_MAX");
    }

    v14 = v13;
    v15 = malloc_type_malloc(v13 + *(a1 + 64) + 30, 0x10000401E9FC43BuLL);
    v16 = v15;
    *v15 = 67324752;
    if (a2 > 4294967294)
    {
      v17 = 1;
    }

    else
    {
      v17 = v6 ^ 1;
    }

    if (v17)
    {
      v18 = 45;
    }

    else
    {
      v18 = *a1;
    }

    *(v15 + 2) = v18;
    *(v15 + 3) = *(a1 + 2);
    *(v15 + 4) = *(a1 + 4);
    *(v15 + 10) = UNIX2DOSTime(*(a1 + 16));
    if ((*(a1 + 2) & 8) != 0)
    {
      v25 = v6 ^ 1;
    }

    else
    {
      v25 = 1;
    }

    if ((v25 & 1) != 0 || !*(a1 + 4))
    {
      *(v16 + 14) = *(a1 + 32);
      v27 = *(a1 + 40);
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      *(v16 + 18) = v27;
      v26 = *(a1 + 48);
      if (v26 >= 0xFFFFFFFF)
      {
        LODWORD(v26) = -1;
      }
    }

    else
    {
      LODWORD(v26) = 0;
      *(v16 + 14) = 0;
    }

    *(v16 + 22) = v26;
    *(v16 + 13) = v14;
    memcpy(v16 + 30, *(a1 + 56), v14);
    if (!strcmp(*(a1 + 56), "mimetype"))
    {
      *(v16 + 14) = 0;
    }

    else
    {
      *(v16 + 14) = *(a1 + 64);
      memcpy(&v16[v14 + 30], *(a1 + 72), *(a1 + 64));
    }
  }

  else
  {
LABEL_28:
    v16 = 0;
  }

  v19 = *(v16 + 13) + *(v16 + 14) + 30;
  v20 = (*(a3 + 48))(*(a3 + 80), v16, v19);
  v21 = v20 == v19;
  if (v20 == v19)
  {
    v22 = 0;
  }

  else
  {
    v22 = v16;
  }

  if (v21)
  {
    v23 = v16;
  }

  else
  {
    v23 = 0;
  }

  free(v22);
  return v23;
}

_WORD *CreateMutableCDRecord(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x68uLL, 0x1010040E435E96EuLL);
  *v2 = *(a1 + 4);
  v2[1] = *(a1 + 6);
  v2[2] = *(a1 + 8);
  v2[3] = *(a1 + 10);
  if (*(a1 + 30) && (ExtraFieldWithSignature = GetExtraFieldWithSignature(a1 + *(a1 + 28) + 46, *(a1 + 30), kInfoZipExtraFieldSignature)) != 0 && ExtraFieldWithSignature[1] >= 8u)
  {
    *(v2 + 2) = *(ExtraFieldWithSignature + 2);
    v4 = *(ExtraFieldWithSignature + 1);
  }

  else
  {
    v4 = DOS2UNIXTime(*(a1 + 12));
    *(v2 + 2) = v4;
  }

  *(v2 + 1) = v4;
  if (*(a1 + 5) != 3 && *(a1 + 5) || (v5 = HIWORD(*(a1 + 38)), v6 = v5 & 0xF000, v6 != 0x4000) && v6 != 40960 && v6 != 0x8000 || !v5)
  {
    if (*(*(a1 + 28) + a1 + 45) == 47)
    {
      LOWORD(v5) = 16893;
    }

    else
    {
      LOWORD(v5) = -32332;
    }
  }

  v2[12] = v5 & 0xF1FF;
  v7 = a1 + 46;
  *(v2 + 26) = *(*(a1 + 28) + a1 + 46 - 1) == 47;
  *(v2 + 7) = *(a1 + 16);
  v8 = *(a1 + 20);
  if (v8 == -1)
  {
    if (*(a1 + 30) && (v9 = GetExtraFieldWithSignature(v7 + *(a1 + 28), *(a1 + 30), &kZip64ExtraFieldSignature)) != 0 && ((v10 = *(a1 + 24), v10 != -1) ? (v11 = 8) : (v11 = 16), v11 <= v9[1]))
    {
      v8 = *&v9[4 * (v10 == -1) + 2];
    }

    else
    {
      v8 = 0xFFFFFFFFLL;
    }
  }

  *(v2 + 4) = v8;
  v12 = *(a1 + 24);
  if (v12 == -1)
  {
    if (*(a1 + 30) && (v13 = GetExtraFieldWithSignature(v7 + *(a1 + 28), *(a1 + 30), &kZip64ExtraFieldSignature)) != 0 && v13[1] >= 8u)
    {
      v12 = *(v13 + 2);
    }

    else
    {
      v12 = 0xFFFFFFFFLL;
    }
  }

  *(v2 + 5) = v12;
  v2[44] = *(a1 + 30);
  v2[24] = *(a1 + 32);
  *(v2 + 13) = *(a1 + 34);
  v2[28] = *(a1 + 36);
  v14 = *(a1 + 42);
  if (v14 == -1)
  {
    if (!*(a1 + 30))
    {
      goto LABEL_37;
    }

    v15 = GetExtraFieldWithSignature(v7 + *(a1 + 28), *(a1 + 30), &kZip64ExtraFieldSignature);
    if (!v15)
    {
      goto LABEL_37;
    }

    v17 = *(a1 + 20);
    v16 = *(a1 + 24);
    if (v16 == -1)
    {
      v18 = 16;
    }

    else
    {
      v18 = 8;
    }

    if (v17 == -1)
    {
      v18 += 8;
    }

    if (v15[1] >= v18)
    {
      LODWORD(v23) = 8 * (v16 == -1);
      if (v17 == -1)
      {
        v23 = (v23 + 8);
      }

      else
      {
        v23 = v23;
      }

      v14 = *(v15 + v23 + 4);
    }

    else
    {
LABEL_37:
      v14 = 0xFFFFFFFFLL;
    }
  }

  *(v2 + 8) = v14;
  v19 = malloc_type_calloc(*(a1 + 28) + 1, 1uLL, 0x100004077774924uLL);
  memcpy(v19, (a1 + 46), *(a1 + 28));
  *(v2 + 9) = v19;
  v20 = malloc_type_malloc(*(a1 + 30), 0x100004077774924uLL);
  *(v2 + 12) = v20;
  memcpy(v20, (v7 + *(a1 + 28)), *(a1 + 30));
  v21 = malloc_type_malloc(*(a1 + 32), 0x100004077774924uLL);
  *(v2 + 10) = v21;
  memcpy(v21, (v7 + *(a1 + 32) + *(a1 + 30)), *(a1 + 32));
  return v2;
}

void DestroyMutableCDRecord(void **a1)
{
  if (a1)
  {
    free(a1[9]);
    free(a1[12]);
    free(a1[10]);

    free(a1);
  }
}

uint64_t _ReadOriginalCentralDirectory(uint64_t a1, void ****a2, size_t *a3, void *a4, size_t *a5, size_t *a6, _WORD *a7, _WORD *a8)
{
  v69 = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 16);
  v63 = malloc_type_calloc(v11, 8uLL, 0x2004093837F09uLL);
  v12 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, 0);
  theDict = CFDictionaryCreateMutable(v12, 0, 0, 0);
  v14 = 0;
  v15 = 0;
  *a5 = -1;
  *a6 = -1;
  do
  {
    while (1)
    {
      if (v14 >= v11)
      {
        v39 = SZGetLoggingHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          LODWORD(context) = 134217984;
          *(&context + 4) = v11;
          _os_log_error_impl(&dword_26BC65000, v39, OS_LOG_TYPE_ERROR, "Too many CD records found in file; expected %llu", &context, 0xCu);
        }

        v40 = v63;
        if (v11)
        {
          goto LABEL_51;
        }

        goto LABEL_55;
      }

      v16 = *(a1 + 48);
      if (v16 == -1)
      {
        v16 = *(a1 + 32);
        *(a1 + 48) = v16;
        *(a1 + 24) = 0;
      }

      if (fseeko(*a1, v16, 0))
      {
        v41 = SZGetLoggingHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          LOWORD(context) = 0;
          _os_log_error_impl(&dword_26BC65000, v41, OS_LOG_TYPE_ERROR, "Failed to seek to central directory record", &context, 2u);
        }

        v18 = 0;
LABEL_37:
        v42 = 4;
LABEL_46:
        v40 = v63;
LABEL_49:
        *(a1 + 48) = -1;
        *(a1 + 24) = 0;
        free(v18);
        v53 = SZGetLoggingHandle();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          LODWORD(context) = 67109120;
          DWORD1(context) = v42;
          _os_log_error_impl(&dword_26BC65000, v53, OS_LOG_TYPE_ERROR, "CopyNextCDRecord returned error %d", &context, 8u);
        }

LABEL_51:
        v54 = v40;
        do
        {
          if (*v54)
          {
            DestroyMutableCDRecord(*v54);
          }

          ++v54;
          --v11;
        }

        while (v11);
LABEL_55:
        free(v40);
        v38 = 0;
        goto LABEL_56;
      }

      v17 = malloc_type_malloc(0x2EuLL, 0x10000401E1C372CuLL);
      if (!v17)
      {
        v43 = SZGetLoggingHandle();
        if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
LABEL_45:
          v18 = 0;
          v42 = 3;
          goto LABEL_46;
        }

        LOWORD(context) = 0;
        v44 = "Failed to allocate record";
LABEL_58:
        _os_log_error_impl(&dword_26BC65000, v43, OS_LOG_TYPE_ERROR, v44, &context, 2u);
        goto LABEL_45;
      }

      v18 = v17;
      if (fread(v17, 1uLL, 0x2EuLL, *a1) != 46)
      {
        v45 = SZGetLoggingHandle();
        v40 = v63;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          LOWORD(context) = 0;
          v46 = "Failed to read central directory record";
LABEL_60:
          v51 = v45;
          v52 = 2;
          goto LABEL_61;
        }

LABEL_48:
        free(v18);
        v18 = 0;
        v42 = 4;
        goto LABEL_49;
      }

      if (*v18 != 33639248)
      {
        v47 = SZGetLoggingHandle();
        v40 = v63;
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v48 = *(v18 + 1);
          v49 = *(v18 + 2);
          v50 = *(v18 + 3);
          *&context = __PAIR64__(*v18, 67109888);
          WORD4(context) = 1024;
          *(&context + 10) = v48;
          HIWORD(context) = 1024;
          v66 = v49;
          v67 = 1024;
          v68 = v50;
          v46 = "Found invalid central directory record with signature 0x%02hhx%02hhx%02hhx%02hhx";
          v51 = v47;
          v52 = 26;
LABEL_61:
          _os_log_error_impl(&dword_26BC65000, v51, OS_LOG_TYPE_ERROR, v46, &context, v52);
          goto LABEL_48;
        }

        goto LABEL_48;
      }

      v19 = *(v18 + 15) + *(v18 + 14) + *(v18 + 16);
      v20 = reallocf(v18, v19 + 46);
      if (!v20)
      {
        v43 = SZGetLoggingHandle();
        if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_45;
        }

        LOWORD(context) = 0;
        v44 = "Failed to allocate full central directory record";
        goto LABEL_58;
      }

      v18 = v20;
      if (v19 != fread(v20 + 46, 1uLL, v19, *a1))
      {
        v45 = SZGetLoggingHandle();
        v40 = v63;
        if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_48;
        }

        LOWORD(context) = 0;
        v46 = "Failed to read in variable-length portion of central directory record";
        goto LABEL_60;
      }

      v21 = ftello(*a1);
      *(a1 + 48) = v21;
      v22 = *(a1 + 40) + *(a1 + 32);
      if (v22 == v21)
      {
        *(a1 + 48) = -1;
        *(a1 + 24) = 0;
        MutableCDRecord = CreateMutableCDRecord(v18);
        v24 = 1;
      }

      else
      {
        if (v21 > v22)
        {
          goto LABEL_37;
        }

        v25 = *(a1 + 16);
        v26 = *(a1 + 24) + 1;
        *(a1 + 24) = v26;
        if (v26 > v25)
        {
          __assert_rtn("CopyNextCDRecord", "ParseZipFile.c", 400, "ctx->cd_records_processed <= ctx->total_cd_records");
        }

        MutableCDRecord = CreateMutableCDRecord(v18);
        v24 = 0;
      }

      free(v18);
      v27 = *(MutableCDRecord + 9);
      if (!strcmp("META-INF/", v27))
      {
        v28 = a5;
LABEL_24:
        *v28 = v14;
        break;
      }

      if (!strcmp("mimetype", v27))
      {
        v28 = a6;
        goto LABEL_24;
      }

      if (strcmp("META-INF/com.apple.ZipMetadata.plist", v27) && strcmp("META-INF/com.apple.FixedZipMetadata.bin", v27))
      {
        break;
      }

      DestroyMutableCDRecord(MutableCDRecord);
      --v11;
      if (v24)
      {
        goto LABEL_28;
      }
    }

    v63[v14++] = MutableCDRecord;
    v29 = MutableCDRecord[12];
    v57 = a5;
    v30 = a6;
    v31 = v15;
    v32 = Mutable;
    if (*(MutableCDRecord + 26))
    {
      Mutable = theDict;
    }

    v33 = CFDictionaryGetValue(Mutable, v29) + 1;
    v34 = Mutable;
    Mutable = v32;
    v35 = v31;
    a6 = v30;
    a5 = v57;
    CFDictionarySetValue(v34, v29, v33);
    v15 = *(MutableCDRecord + 5) + v35;
  }

  while ((v24 & 1) == 0);
LABEL_28:
  if (v14 != v11)
  {
    __assert_rtn("_ReadOriginalCentralDirectory", "ConvertZipToStream.c", 245, "cdIndex == origCDRecordCount");
  }

  context = 0uLL;
  CFDictionaryApplyFunction(Mutable, _FindHighestCount, &context);
  v36 = WORD4(context);
  context = 0uLL;
  CFDictionaryApplyFunction(theDict, _FindHighestCount, &context);
  v37 = WORD4(context);
  *a2 = v63;
  *a3 = v11;
  *a4 = v15;
  *a7 = v36;
  *a8 = v37;
  v38 = 1;
LABEL_56:
  CFRelease(Mutable);
  CFRelease(theDict);
  v55 = *MEMORY[0x277D85DE8];
  return v38;
}

uint64_t _GetCDIndexOfBundleExecutableForInfoPlist(FILE **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v75 = *MEMORY[0x277D85DE8];
  v5 = *(a4 + 72);
  v68 = 0;
  error = 0;
  v6 = *(a4 + 40);
  if (v6 >= 0x40000001)
  {
    v7 = SZGetLoggingHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v70 = v5;
      _os_log_error_impl(&dword_26BC65000, v7, OS_LOG_TYPE_ERROR, "Found plist at %s greater than 1 GB in size; something must be wrong.", buf, 0xCu);
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_43;
  }

  v14 = malloc_type_malloc(*(a4 + 40), 0x100004077774924uLL);
  v20 = CopyLocalFileHeader(a1, a4, &v68);
  if (!v20)
  {
    v27 = SZGetLoggingHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v70 = v5;
      v71 = 1024;
      LODWORD(v72) = v68;
      _os_log_error_impl(&dword_26BC65000, v27, OS_LOG_TYPE_ERROR, "Failed to get local file record for info plist %s: %d", buf, 0x12u);
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    goto LABEL_42;
  }

  v12 = v20;
  v21 = OpenLocalFile(a1, a4, *(v20 + 7), v20[32], 0, &v68);
  v13 = v21;
  if (v21)
  {
    v22 = v68 == 0;
  }

  else
  {
    v22 = 0;
  }

  if (!v22)
  {
    v23 = SZGetLoggingHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v24 = "Failed to open plist file in zip archive";
      v25 = v23;
      v26 = 2;
LABEL_58:
      _os_log_error_impl(&dword_26BC65000, v25, OS_LOG_TYPE_ERROR, v24, buf, v26);
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  v66 = 0;
  v28 = ReadLocalFileData(v21, v14, v6, &v66);
  if (v28 != 2)
  {
    v35 = v28;
    v36 = SZGetLoggingHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v70 = v5;
      v71 = 1024;
      LODWORD(v72) = v35;
      v24 = "Failed to read file data for info plist %s: %d";
      v25 = v36;
      v26 = 18;
      goto LABEL_58;
    }

LABEL_20:
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
LABEL_43:
    v49 = 0;
    goto LABEL_44;
  }

  v29 = CloseLocalFile(v13);
  if (v29)
  {
    v30 = v29;
    v31 = SZGetLoggingHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v70) = v30;
      v32 = "Failed to close local file: %d";
      v33 = v31;
      v34 = 8;
LABEL_40:
      _os_log_error_impl(&dword_26BC65000, v33, OS_LOG_TYPE_ERROR, v32, buf, v34);
      goto LABEL_41;
    }

    goto LABEL_41;
  }

  v37 = v66;
  if (v66 != v6)
  {
    v47 = SZGetLoggingHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v70 = v5;
      v71 = 2048;
      v72 = v37;
      v73 = 2048;
      v74 = v6;
      v32 = "Failed to read full info plist %s; read %ld bytes; expected %lld bytes";
      v33 = v47;
      v34 = 32;
      goto LABEL_40;
    }

LABEL_41:
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
LABEL_42:
    v13 = 0;
    goto LABEL_43;
  }

  v38 = *MEMORY[0x277CBECE8];
  v39 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v14, v6, *MEMORY[0x277CBED00]);
  if (!v39)
  {
    v48 = SZGetLoggingHandle();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v32 = "Failed to create data from uncompressed bytes";
      v33 = v48;
      v34 = 2;
      goto LABEL_40;
    }

    goto LABEL_41;
  }

  v11 = v39;
  v40 = CFPropertyListCreateWithData(v38, v39, 0, 0, &error);
  if (!v40)
  {
    v52 = SZGetLoggingHandle();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v70 = v5;
      _os_log_error_impl(&dword_26BC65000, v52, OS_LOG_TYPE_ERROR, "Failed to deserialize Info plist %s", buf, 0xCu);
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    goto LABEL_42;
  }

  v10 = v40;
  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(v10))
  {
    v53 = SZGetLoggingHandle();
    if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_69;
    }

    *buf = 136315138;
    v70 = v5;
    v54 = "Plist %s did not contain a dictionary";
LABEL_68:
    _os_log_error_impl(&dword_26BC65000, v53, OS_LOG_TYPE_ERROR, v54, buf, 0xCu);
    goto LABEL_69;
  }

  v42 = strrchr(v5, 47);
  if (!v42)
  {
    v53 = SZGetLoggingHandle();
    if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_69;
    }

    *buf = 136315138;
    v70 = v5;
    v54 = "Failed to find last slash in plist path %s";
    goto LABEL_68;
  }

  *v42 = 0;
  cfa = v42;
  v43 = CFStringCreateWithFileSystemRepresentation(v38, v5);
  *cfa = 47;
  if (!v43)
  {
    v53 = SZGetLoggingHandle();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v70 = v5;
      v54 = "Failed to create CF string from plist path %s";
      goto LABEL_68;
    }

LABEL_69:
    v8 = 0;
    goto LABEL_70;
  }

  v8 = v43;
  cf = CFDictionaryGetValue(v10, *MEMORY[0x277CBED30]);
  if (!cf)
  {
    v55 = SZGetLoggingHandle();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v70 = v5;
      v56 = "Plist %s did not contain a value for kCFBundleExecutableKey";
LABEL_75:
      v57 = v55;
      v58 = 12;
LABEL_76:
      _os_log_error_impl(&dword_26BC65000, v57, OS_LOG_TYPE_ERROR, v56, buf, v58);
    }

LABEL_70:
    v9 = 0;
    goto LABEL_42;
  }

  v62 = CFStringGetTypeID();
  if (v62 != CFGetTypeID(cf))
  {
    v55 = SZGetLoggingHandle();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v70 = v5;
      v56 = "CFBundleExecutable was not a CFString for plist %s";
      goto LABEL_75;
    }

    goto LABEL_70;
  }

  v44 = CFStringCreateWithFormat(v38, 0, @"%@/%@", v8, cf);
  if (!v44)
  {
    v59 = SZGetLoggingHandle();
    if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_70;
    }

    *buf = 0;
    v56 = "Failed to construct path to bundle executable";
    v57 = v59;
    v58 = 2;
    goto LABEL_76;
  }

  v9 = v44;
  if (!CFStringGetFileSystemRepresentation(v44, buf, 1024))
  {
    v60 = SZGetLoggingHandle();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      *v65 = 0;
      _os_log_error_impl(&dword_26BC65000, v60, OS_LOG_TYPE_ERROR, "Failed to convert CF executable path string to C string", v65, 2u);
    }

    goto LABEL_42;
  }

  v45 = 0;
  while (1)
  {
    v46 = *(a2 + 8 * v45);
    if (v46)
    {
      if (!strcmp(*(v46 + 72), buf))
      {
        break;
      }
    }

    if (a3 == ++v45)
    {
      goto LABEL_42;
    }
  }

  v61 = v45;
  v13 = 0;
  *a5 = v61;
  v49 = 1;
LABEL_44:
  free(v14);
  DestroyMutableLocalFileRecord(v12);
  if (v11)
  {
    CFRelease(v11);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (error)
  {
    CFRelease(error);
  }

  error = 0;
  if (v8)
  {
    CFRelease(v8);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v13)
  {
    CloseLocalFile(v13);
  }

  v50 = *MEMORY[0x277D85DE8];
  return v49;
}

uint64_t _SortZipEntries(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!(*a1 | *a2))
  {
    return 0;
  }

  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    return 1;
  }

  v6 = *(v2 + 72);
  v7 = *(v3 + 72);
  result = _SortLateIfPrefix(v6, v7, "__MACOSX/", 9uLL);
  if (!result)
  {
    v8 = rindex(v6, 47);
    v9 = rindex(v7, 47);
    v10 = v9;
    if (v8)
    {
      *v8 = 0;
    }

    if (v9)
    {
      *v9 = 0;
    }

    if (strcmp(v6, v7) || (v8 ? (v12 = v8 + 1) : (v12 = v6), v10 ? (v13 = v10 + 1) : (v13 = v7), result = _SortLateIfPrefix(v12, v13, "._", 2uLL), !result))
    {
      if (v8)
      {
        *v8 = 47;
      }

      if (v10)
      {
        *v10 = 47;
      }

      return strcmp(v6, v7);
    }
  }

  return result;
}

uint64_t _SortLateIfPrefix(const char *a1, const char *a2, char *__s2, size_t __n)
{
  v7 = strncmp(a1, __s2, __n) == 0;
  v8 = strncmp(a2, __s2, __n);
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7;
  }

  v10 = v9 - 1;
  if (v7 && v8 != 0)
  {
    return 1;
  }

  else
  {
    return v10;
  }
}

void _AddIndexToDictionary(const void *a1, uint64_t a2, __CFDictionary *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2 != -1)
  {
    if (a2 < 0)
    {
      v7 = SZGetLoggingHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v9 = 134217984;
        *&v9[4] = a2;
        _os_log_error_impl(&dword_26BC65000, v7, OS_LOG_TYPE_ERROR, "can't represent index %llu as an SInt64\n", v9, 0xCu);
      }
    }

    else
    {
      *v9 = a2;
      v6 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, v9);
      CFDictionarySetValue(a3, a1, v6);
      CFRelease(v6);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t _Prescan(uint64_t a1, char *a2, const __CFArray *a3, __int16 *a4, __int16 *a5, void *a6, void *a7)
{
  v124 = *MEMORY[0x277D85DE8];
  v116[0] = a2;
  v116[1] = 0;
  v12 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, 0);
  v14 = CFDictionaryCreateMutable(v12, 0, 0, 0);
  v111 = strlen(a2);
  v15 = fts_open(v116, 84, 0);
  if (v15)
  {
    v107 = a4;
    v108 = 0;
    v109 = 0;
    key = *MEMORY[0x277CBED30];
    bytesDeallocator = *MEMORY[0x277CBED00];
    while (1)
    {
      do
      {
        while (1)
        {
          v16 = fts_read(v15);
          if (!v16)
          {
            if (*__error())
            {
              v78 = SZGetLoggingHandle();
              if (!os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_115;
              }

              v79 = __error();
              v80 = strerror(*v79);
              *__str = 136315138;
              *&__str[4] = v80;
              v77 = "fts_read returned NULL and set errno: %s";
              v81 = v78;
              v82 = 12;
              goto LABEL_111;
            }

            if (CFDictionaryGetCount(Mutable) < 1)
            {
              v85 = -32348;
            }

            else
            {
              *__str = 0;
              *&__str[8] = 0;
              CFDictionaryApplyFunction(Mutable, _FindHighestCount, __str);
              v85 = *&__str[8];
            }

            if (CFDictionaryGetCount(v14) < 1)
            {
              v90 = 16877;
            }

            else
            {
              *__str = 0;
              *&__str[8] = 0;
              CFDictionaryApplyFunction(v14, _FindHighestCount, __str);
              v90 = *&__str[8];
            }

            *v107 = v85;
            *a5 = v90;
            *a6 = v109;
            *a7 = v108;
            v91 = SZGetLoggingHandle();
            if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
            {
              *__str = 134217984;
              *&__str[4] = v109;
              _os_log_debug_impl(&dword_26BC65000, v91, OS_LOG_TYPE_DEBUG, "Prescan says record count should be %llu", __str, 0xCu);
            }

            v87 = 1;
            if (Mutable)
            {
              goto LABEL_116;
            }

            goto LABEL_117;
          }

          v17 = v16;
          fts_info = v16->fts_info;
          if (fts_info > 0xD)
          {
            goto LABEL_114;
          }

          if (((1 << fts_info) & 0x3102) != 0)
          {
            break;
          }

          if (fts_info != 6)
          {
            if (((1 << fts_info) & 0x490) != 0)
            {
              v74 = SZGetLoggingHandle();
              if (!os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_115;
              }

              fts_path = v17->fts_path;
              v84 = strerror(v17->fts_errno);
              *__str = 136315394;
              *&__str[4] = fts_path;
              *&__str[12] = 2080;
              *&__str[14] = v84;
              v77 = "fts_read gave error for file %s: %s";
              goto LABEL_110;
            }

LABEL_114:
            v86 = SZGetLoggingHandle();
            if (!os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_115;
            }

            v92 = v17->fts_info;
            *__str = 67109120;
            *&__str[4] = v92;
            v77 = "fts_read returned unhandled fts_info value %d";
            v81 = v86;
            v82 = 8;
            goto LABEL_111;
          }
        }
      }

      while (!v16->fts_level);
      buffer = _CopyArchivePath(v16->fts_path, v111, v16->fts_statp->st_mode);
      if ((_IsExcludedFileName(a1, buffer) & 1) == 0)
      {
        break;
      }

LABEL_51:
      free(buffer);
    }

    v101 = a7;
    v102 = a6;
    v19 = v17->fts_info;
    if (v19 == 8)
    {
      v20 = Mutable;
    }

    else
    {
      v20 = 0;
    }

    if (v19 == 1)
    {
      v21 = v14;
    }

    else
    {
      v21 = v20;
    }

    if (v21)
    {
      v22 = v14;
      v23 = Mutable;
      st_mode = v17->fts_statp->st_mode;
      Value = CFDictionaryGetValue(v21, st_mode);
      v26 = st_mode;
      Mutable = v23;
      v14 = v22;
      CFDictionarySetValue(v21, v26, Value + 1);
    }

    if (v19 != 1)
    {
      v108 += v17->fts_statp->st_size;
    }

    a6 = v102;
    v27 = CFStringCreateWithFileSystemRepresentation(v12, buffer);
    v125.length = CFArrayGetCount(a3);
    v28 = v27;
    v125.location = 0;
    if (CFArrayContainsValue(a3, v125, v27) || (v113 = 0, !ZipStreamShouldOrderFileEarly(buffer, &v113)) || (CFArrayAppendValue(a3, v27), v113 != 1))
    {
LABEL_48:
      if (v28)
      {
        CFRelease(v28);
      }

      ++v109;
      a7 = v101;
      goto LABEL_51;
    }

    bzero(__str, 0x400uLL);
    v29 = strdup(buffer);
    memset(&v115, 0, sizeof(v115));
    v114 = 0;
    __s = v29;
    snprintf(__str, 0x400uLL, "%s/%s", a2, v29);
    v30 = open(__str, 0, 0);
    if (v30 < 0)
    {
      v103 = v27;
      v39 = SZGetLoggingHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v53 = __error();
        v54 = strerror(*v53);
        buf = 136315394;
        st_size = __str;
        v119 = 2080;
        v120 = v54;
        _os_log_error_impl(&dword_26BC65000, v39, OS_LOG_TYPE_ERROR, "Failed to open Info.plist at path %s: %s", &buf, 0x16u);
      }

      v40 = 0;
      cf = 0;
      v96 = 0;
      v97 = 0;
      theDict = 0;
      v99 = 0;
      v28 = v103;
      goto LABEL_36;
    }

    v31 = v30;
    v93 = v30;
    if (fstat(v30, &v115))
    {
      v32 = v28;
      v33 = SZGetLoggingHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = __error();
        v35 = strerror(*v34);
        buf = 136315394;
        st_size = __str;
        v119 = 2080;
        v120 = v35;
        v36 = v33;
        v37 = "Failed to stat Info.plist at path %s: %s";
        v38 = 22;
LABEL_33:
        _os_log_error_impl(&dword_26BC65000, v36, OS_LOG_TYPE_ERROR, v37, &buf, v38);
        goto LABEL_34;
      }

      goto LABEL_34;
    }

    if (v115.st_size >= 524288000)
    {
      v32 = v28;
      v41 = SZGetLoggingHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        buf = 134217984;
        st_size = v115.st_size;
        v36 = v41;
        v37 = "Found Info.plist but it was too big (larger than 500 MB): was %lld bytes";
        v38 = 12;
        goto LABEL_33;
      }

LABEL_34:
      theDict = 0;
      v99 = 0;
      v96 = 0;
      v97 = 0;
      bytes = 0;
      cf = 0;
LABEL_35:
      close(v93);
      v28 = v32;
      v40 = bytes;
LABEL_36:
      free(__s);
      free(v40);
      if (cf)
      {
        CFRelease(cf);
      }

      if (theDict)
      {
        CFRelease(theDict);
      }

      if (v114)
      {
        CFRelease(v114);
      }

      v114 = 0;
      if (v97)
      {
        CFRelease(v97);
      }

      if (v96)
      {
        CFRelease(v96);
      }

      if (v99)
      {
        CFRelease(v99);
      }

      goto LABEL_48;
    }

    v42 = malloc_type_malloc(v115.st_size, 0xB16220CEuLL);
    v43 = v115.st_size;
    bytes = v42;
    if (v43 != read(v31, v42, v115.st_size))
    {
      v32 = v28;
      v52 = SZGetLoggingHandle();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v61 = v115.st_size;
        v62 = __error();
        v63 = strerror(*v62);
        buf = 134218498;
        st_size = v61;
        v119 = 2080;
        v120 = __str;
        v121 = 2080;
        v122 = v63;
        _os_log_error_impl(&dword_26BC65000, v52, OS_LOG_TYPE_ERROR, "Failed to read %lld bytes from Info.plist at path %s: %s", &buf, 0x20u);
      }

      theDict = 0;
      v99 = 0;
      v96 = 0;
      v97 = 0;
      cf = 0;
      goto LABEL_63;
    }

    v44 = CFDataCreateWithBytesNoCopy(v12, bytes, v115.st_size, bytesDeallocator);
    if (!v44)
    {
      v32 = v28;
      v55 = SZGetLoggingHandle();
      a6 = v102;
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&dword_26BC65000, v55, OS_LOG_TYPE_ERROR, "Failed to create data from malloc allocation", &buf, 2u);
      }

      theDict = 0;
      v99 = 0;
      v96 = 0;
      v97 = 0;
      cf = 0;
      goto LABEL_35;
    }

    cf = v44;
    v45 = CFPropertyListCreateWithData(v12, v44, 0, 0, &v114);
    if (v45)
    {
      v46 = v45;
      TypeID = CFDictionaryGetTypeID();
      theDict = v46;
      v48 = CFGetTypeID(v46);
      v32 = v28;
      if (TypeID == v48)
      {
        v49 = strrchr(__s, 47);
        if (v49)
        {
          *v49 = 0;
          v97 = CFStringCreateWithFileSystemRepresentation(v12, __s);
          if (v97)
          {
            v50 = rindex(__s, 47);
            v51 = strcmp(v50 + 1, "Contents");
            v99 = CFDictionaryGetValue(theDict, key);
            if (v99)
            {
              CFRetain(v99);
            }

            else
            {
              v99 = _CopyAppBundleNameInPath(__s);
              if (!v99)
              {
                v72 = SZGetLoggingHandle();
                if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
                {
                  buf = 136315394;
                  st_size = __str;
                  v119 = 2080;
                  v120 = __s;
                  _os_log_error_impl(&dword_26BC65000, v72, OS_LOG_TYPE_ERROR, "Plist %s did not contain a value for kCFBundleExecutableKey and we could not locate the .app bundle in %s", &buf, 0x16u);
                  v99 = 0;
                  goto LABEL_86;
                }

                v99 = 0;
                goto LABEL_93;
              }
            }

            v65 = CFStringGetTypeID();
            if (v65 != CFGetTypeID(v99))
            {
              v70 = SZGetLoggingHandle();
              if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
              {
                buf = 136315138;
                st_size = __str;
                v67 = v70;
                v68 = "CFBundleExecutable value was not a CFString for plist %s";
                v69 = 12;
                goto LABEL_85;
              }

LABEL_93:
              v96 = 0;
              goto LABEL_63;
            }

            v126.length = CFStringGetLength(v99);
            v126.location = 0;
            if (CFStringFindWithOptions(v99, @"/", v126, 0, 0))
            {
              v66 = SZGetLoggingHandle();
              if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
              {
                buf = 136315394;
                st_size = __str;
                v119 = 2112;
                v120 = v99;
                v67 = v66;
                v68 = "CFBundleExecutable value in %s contained a slash ('/'), which is not allowed: %@";
                v69 = 22;
LABEL_85:
                _os_log_error_impl(&dword_26BC65000, v67, OS_LOG_TYPE_ERROR, v68, &buf, v69);
LABEL_86:
                v96 = 0;
                goto LABEL_63;
              }

              goto LABEL_93;
            }

            if (v51)
            {
              v96 = CFStringCreateWithFormat(v12, 0, @"%@/%@", v97, v99);
              if (!v96)
              {
                v71 = SZGetLoggingHandle();
                if (!os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_93;
                }

                LOWORD(buf) = 0;
                v67 = v71;
                v68 = "Failed to construct path to bundle executable";
LABEL_100:
                v69 = 2;
                goto LABEL_85;
              }
            }

            else
            {
              v96 = CFStringCreateWithFormat(v12, 0, @"%@/MacOS/%@", v97, v99);
              if (!v96)
              {
                v73 = SZGetLoggingHandle();
                if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_93;
                }

                LOWORD(buf) = 0;
                v67 = v73;
                v68 = "Failed to construct path to macOS bundle executable";
                goto LABEL_100;
              }
            }

            CFArrayAppendValue(a3, v96);
            goto LABEL_63;
          }

          v64 = SZGetLoggingHandle();
          if (!os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
LABEL_77:
            v99 = 0;
            v96 = 0;
            v97 = 0;
LABEL_63:
            a6 = v102;
            goto LABEL_35;
          }

          buf = 136315138;
          st_size = __str;
          v59 = v64;
          v60 = "Failed to create CF string from plist path %s";
        }

        else
        {
          v58 = SZGetLoggingHandle();
          if (!os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_77;
          }

          buf = 136315138;
          st_size = __s;
          v59 = v58;
          v60 = "Failed to find last slash in plist path %s";
        }

        _os_log_error_impl(&dword_26BC65000, v59, OS_LOG_TYPE_ERROR, v60, &buf, 0xCu);
        v99 = 0;
        v96 = 0;
        v97 = 0;
        goto LABEL_63;
      }

      v57 = SZGetLoggingHandle();
      a6 = v102;
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        buf = 136315138;
        st_size = __str;
        _os_log_error_impl(&dword_26BC65000, v57, OS_LOG_TYPE_ERROR, "Plist %s did not contain a dictionary", &buf, 0xCu);
      }

      v99 = 0;
    }

    else
    {
      v32 = v28;
      v56 = SZGetLoggingHandle();
      a6 = v102;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        buf = 136315138;
        st_size = __str;
        _os_log_error_impl(&dword_26BC65000, v56, OS_LOG_TYPE_ERROR, "Failed to deserialize Info plist %s", &buf, 0xCu);
      }

      theDict = 0;
      v99 = 0;
    }

    v96 = 0;
    v97 = 0;
    goto LABEL_35;
  }

  v74 = SZGetLoggingHandle();
  if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
  {
    v75 = __error();
    v76 = strerror(*v75);
    *__str = 136315394;
    *&__str[4] = a2;
    *&__str[12] = 2080;
    *&__str[14] = v76;
    v77 = "fts_open failed for path %s: %s";
LABEL_110:
    v81 = v74;
    v82 = 22;
LABEL_111:
    _os_log_error_impl(&dword_26BC65000, v81, OS_LOG_TYPE_ERROR, v77, __str, v82);
  }

LABEL_115:
  v87 = 0;
  if (Mutable)
  {
LABEL_116:
    CFRelease(Mutable);
  }

LABEL_117:
  if (v14)
  {
    CFRelease(v14);
  }

  if (v15)
  {
    fts_close(v15);
  }

  v88 = *MEMORY[0x277D85DE8];
  return v87;
}

uint64_t _WriteLocalFile(const char *a1, const char *a2, size_t a3, int a4, void *a5, void *a6, __int16 a7, __int16 a8, uint64_t a9, uint64_t a10, int a11, CFMutableArrayRef theArray)
{
  v67 = *MEMORY[0x277D85DE8];
  if (!_WriteLocalFileData(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, HIWORD(a11), theArray, 0))
  {
LABEL_16:
    v23 = 0;
    goto LABEL_17;
  }

  if (*(a10 + 68) != 1)
  {
LABEL_13:
    v23 = 1;
    goto LABEL_17;
  }

  v60 = a8;
  if (*(a10 + 67))
  {
    v18 = 5;
  }

  else
  {
    v18 = 786437;
  }

  v61 = v18;
  v19 = copyfile(a1, 0, 0, v18 | 0x10000);
  if (v19 < 0)
  {
    v24 = *__error();
    v25 = SZGetLoggingHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      buf[0].st_dev = 136315650;
      *&buf[0].st_mode = a1;
      WORD2(buf[0].st_ino) = 2080;
      *(&buf[0].st_ino + 6) = strerror(v24);
      HIWORD(buf[0].st_gid) = 1024;
      buf[0].st_rdev = v24;
      _os_log_error_impl(&dword_26BC65000, v25, OS_LOG_TYPE_ERROR, "copyfile check for %s returned error %s (%d)", buf, 0x1Cu);
    }

    goto LABEL_16;
  }

  if ((v19 & 5) == 0)
  {
    goto LABEL_13;
  }

  *&buf[0].st_dev = 0;
  v20 = strdup(a2);
  v21 = strlen(v20);
  if (!v21)
  {
    free(v20);
    v28 = 0;
    goto LABEL_44;
  }

  if (v20[v21 - 1] == 47)
  {
    v20[v21 - 1] = 0;
  }

  v22 = rindex(v20, 47);
  if (v22)
  {
    *v22 = 0;
    asprintf(buf, "%s/._%s");
  }

  else
  {
    asprintf(buf, "._%s");
  }

  v28 = *&buf[0].st_dev;
  free(v20);
  if (!v28)
  {
    goto LABEL_44;
  }

  bzero(buf, 0x400uLL);
  v29 = *(a10 + 40);
  if (v29)
  {
    if (!CFStringGetFileSystemRepresentation(*(a10 + 40), buf, 1024))
    {
      v30 = SZGetLoggingHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *v63 = 138412290;
        *v64 = v29;
        v31 = "CFString failed to get filesystem representation for %@";
LABEL_40:
        v35 = v30;
        v36 = 12;
        goto LABEL_43;
      }

      goto LABEL_44;
    }
  }

  else
  {
    v32 = getenv("TMPDIR");
    if (v32)
    {
      v33 = v32;
    }

    else
    {
      v33 = "/tmp";
    }

    if (__strlcpy_chk() >= 0x400)
    {
      v30 = SZGetLoggingHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *v63 = 136315138;
        *v64 = v33;
        v31 = "Temp dir path %s was too long";
        goto LABEL_40;
      }

LABEL_44:
      v37 = 0;
      v23 = 0;
      v47 = -1;
      goto LABEL_45;
    }
  }

  if (__strlcat_chk() >= 0x400)
  {
    v34 = SZGetLoggingHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *v63 = 0;
      v31 = "Temp dir path was too long";
      v35 = v34;
      v36 = 2;
LABEL_43:
      _os_log_error_impl(&dword_26BC65000, v35, OS_LOG_TYPE_ERROR, v31, v63, v36);
      goto LABEL_44;
    }

    goto LABEL_44;
  }

  v59 = mkstemp(buf);
  if (v59 == -1)
  {
    v45 = *__error();
    v46 = SZGetLoggingHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *v63 = 136315650;
      *v64 = buf;
      *&v64[8] = 2080;
      *&v64[10] = strerror(v45);
      *&v64[18] = 1024;
      v65 = v45;
      v31 = "Failed to make temp file at %s : %s (%d)";
      v35 = v46;
      v36 = 28;
      goto LABEL_43;
    }

    goto LABEL_44;
  }

  v37 = strdup(buf);
  if (!v37)
  {
    goto LABEL_65;
  }

  if (copyfile(a1, v37, 0, v61 | 0x400000) == -1)
  {
    v38 = v28;
    v48 = *__error();
    v49 = SZGetLoggingHandle();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v50 = strerror(v48);
      buf[0].st_dev = 136315906;
      *&buf[0].st_mode = a1;
      WORD2(buf[0].st_ino) = 2080;
      *(&buf[0].st_ino + 6) = v37;
      HIWORD(buf[0].st_gid) = 2080;
      *&buf[0].st_rdev = v50;
      LOWORD(buf[0].st_atimespec.tv_sec) = 1024;
      *(&buf[0].st_atimespec.tv_sec + 2) = v48;
      v42 = "Failed to pack AppleDouble for %s to %s : %s (%d)";
      v43 = v49;
      v44 = 38;
      goto LABEL_51;
    }

LABEL_55:
    v23 = 0;
LABEL_56:
    v28 = v38;
LABEL_66:
    v47 = v59;
    goto LABEL_45;
  }

  if (unlink(v37))
  {
    v38 = v28;
    v39 = *__error();
    v40 = SZGetLoggingHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = strerror(v39);
      buf[0].st_dev = 136315650;
      *&buf[0].st_mode = v37;
      WORD2(buf[0].st_ino) = 2080;
      *(&buf[0].st_ino + 6) = v41;
      HIWORD(buf[0].st_gid) = 1024;
      buf[0].st_rdev = v39;
      v42 = "Failed to unlink temp path %s : %s (%d)";
      v43 = v40;
      v44 = 28;
LABEL_51:
      _os_log_error_impl(&dword_26BC65000, v43, OS_LOG_TYPE_ERROR, v42, buf, v44);
      goto LABEL_55;
    }

    goto LABEL_55;
  }

  free(v37);
  memset(buf, 0, 144);
  if (fstat(v59, buf))
  {
    v38 = v28;
    v51 = *__error();
    v52 = SZGetLoggingHandle();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      *v63 = 67109634;
      v47 = v59;
      *v64 = v59;
      *&v64[4] = 2080;
      *&v64[6] = strerror(v51);
      *&v64[14] = 1024;
      *&v64[16] = v51;
      _os_log_error_impl(&dword_26BC65000, v52, OS_LOG_TYPE_ERROR, "Failed to stat temp file FD %d : %s (%d)", v63, 0x18u);
      v37 = 0;
      v23 = 0;
      v28 = v38;
LABEL_45:
      free(v28);
      if (v47 < 0)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    goto LABEL_54;
  }

  st_size = buf[0].st_size;
  if (buf[0].st_size == -1)
  {
    v55 = SZGetLoggingHandle();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      *v63 = 134217984;
      *v64 = -1;
      _os_log_error_impl(&dword_26BC65000, v55, OS_LOG_TYPE_ERROR, "Temp AppleDouble file with size %lld is too big to map", v63, 0xCu);
    }

    v37 = 0;
LABEL_65:
    v23 = 0;
    goto LABEL_66;
  }

  if (!buf[0].st_size)
  {
    v38 = v28;
    v54 = SZGetLoggingHandle();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      *v63 = 136315138;
      *v64 = a1;
      _os_log_impl(&dword_26BC65000, v54, OS_LOG_TYPE_DEFAULT, "Thought we had content to pack for %s but the packed file had zero length.", v63, 0xCu);
    }

    v37 = 0;
    v23 = 1;
    goto LABEL_56;
  }

  v56 = mmap(0, buf[0].st_size, 1, 1026, v59, 0);
  if (v56 == -1)
  {
    v38 = v28;
    v57 = *__error();
    v58 = SZGetLoggingHandle();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      *v63 = 134218498;
      *v64 = st_size;
      *&v64[8] = 2080;
      *&v64[10] = strerror(v57);
      *&v64[18] = 1024;
      v65 = v57;
      _os_log_error_impl(&dword_26BC65000, v58, OS_LOG_TYPE_ERROR, "Failed to map AppleDouble file of size %lu: %s (%d)", v63, 0x1Cu);
    }

LABEL_54:
    v37 = 0;
    goto LABEL_55;
  }

  v62 = v56;
  v23 = _WriteLocalFileData(0, v28, st_size, 33152, a5, a6, a7, v60, a9, a10, a11, HIWORD(a11), theArray, v56);
  if (v23)
  {
    ++*(a9 + 184);
  }

  free(v28);
  munmap(v62, st_size);
  v37 = 0;
  v47 = v59;
  if (v59 < 0)
  {
    goto LABEL_47;
  }

LABEL_46:
  close(v47);
LABEL_47:
  if (v37)
  {
    unlink(v37);
    free(v37);
  }

LABEL_17:
  v26 = *MEMORY[0x277D85DE8];
  return v23;
}

char *_CopyArchivePath(uint64_t a1, uint64_t a2, __int16 a3)
{
  v3 = *(a1 + a2) == 47;
  v6 = 0;
  if (v3)
  {
    v4 = (a1 + a2 + 1);
  }

  else
  {
    v4 = (a1 + a2);
  }

  if ((a3 & 0xF000) == 0x4000)
  {
    asprintf(&v6, "%s/", v4);
    return v6;
  }

  else
  {

    return strdup(v4);
  }
}

uint64_t _IsExcludedFileName(uint64_t a1, const char *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!strcmp("META-INF/", a2) || !strcmp("META-INF/com.apple.ZipMetadata.plist", a2) || !strcmp("META-INF/com.apple.FixedZipMetadata.bin", a2) || !strcmp("mimetype", a2))
  {
    v6 = SZGetLoggingHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136315138;
      v10 = a2;
      goto LABEL_18;
    }
  }

  else
  {
    if (*(a1 + 68) != 1 || ((v4 = rindex(a2, 47)) != 0 ? (v5 = v4 + 1) : (v5 = a2), *v5 != 46 || v5[1] != 95))
    {
      result = 0;
      goto LABEL_15;
    }

    v6 = SZGetLoggingHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136315138;
      v10 = a2;
LABEL_18:
      _os_log_debug_impl(&dword_26BC65000, v6, OS_LOG_TYPE_DEBUG, "Path %s is excluded", &v9, 0xCu);
    }
  }

  result = 1;
LABEL_15:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _IsOrderedEarly(char *buffer, const __CFArray *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2 && (v2 = a2, v4 = CFStringCreateWithFileSystemRepresentation(*MEMORY[0x277CBECE8], buffer), v11.length = CFArrayGetCount(v2), v11.location = 0, LODWORD(v2) = CFArrayContainsValue(v2, v11, v4), CFRelease(v4), v2))
  {
    v5 = SZGetLoggingHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315138;
      v9 = buffer;
      _os_log_debug_impl(&dword_26BC65000, v5, OS_LOG_TYPE_DEBUG, "Path %s was ordered early", &v8, 0xCu);
    }

    result = 1;
  }

  else
  {
    result = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _WriteLocalFileData(const char *a1, const char *a2, size_t a3, int a4, void *a5, void *a6, __int16 a7, __int16 a8, uint64_t a9, uint64_t a10, unsigned __int16 a11, unsigned __int16 a12, CFMutableArrayRef theArray, char *a14)
{
  v65 = *MEMORY[0x277D85DE8];
  value = 0;
  v20 = malloc_type_calloc(1uLL, 0x50uLL, 0x1010040BDAC2CBCuLL);
  v21 = v20;
  v55 = v20;
  *v20 = 20;
  v20[1] = a5;
  v20[2] = a6;
  v22 = a4 & 0xF000;
  *(v20 + 12) = a7;
  *(v20 + 13) = a8;
  *(v20 + 30) = v22 == 0x4000;
  if (v22 == 0x4000)
  {
    if (a4 != a12)
    {
      *(v20 + 14) = a4;
    }
  }

  else
  {
    if (a4 != a11)
    {
      *(v20 + 14) = a4;
    }

    if (v22 == 0x8000)
    {
      v20[5] = a3;
      v20[6] = a3;
    }

    else
    {
      v20[5] = 0;
      v20[6] = 0;
    }
  }

  *(v20 + 2) = 0;
  *(v20 + 8) = 0;
  *(v20 + 1) |= 0x800u;
  v23 = CFStringCreateWithFileSystemRepresentation(*MEMORY[0x277CBECE8], a2);
  if (!CFStringGetCString(v23, buffer, 1024, 0x8000100u))
  {
    v30 = SZGetLoggingHandle();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 136315138;
    v57 = a2;
    v31 = "Failed to get path %s as UTF8 string";
    v32 = v30;
    v33 = 12;
LABEL_50:
    _os_log_error_impl(&dword_26BC65000, v32, OS_LOG_TYPE_ERROR, v31, buf, v33);
    goto LABEL_19;
  }

  v21[7] = strdup(buffer);
  v24 = malloc_type_calloc(1uLL, 0x68uLL, 0x1010040E435E96EuLL);
  if (!v24)
  {
    value = 0;
    v34 = SZGetLoggingHandle();
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 0;
    v31 = "Failed to create mutable CD record from LF record";
    v32 = v34;
    v33 = 2;
    goto LABEL_50;
  }

  v25 = v24;
  v26 = a14;
  *v24 = 798;
  *(v24 + 1) = *v21;
  *(v24 + 1) = *(v21 + 2);
  *(v24 + 8) = *(v21 + 1);
  *(v24 + 12) = *(v21 + 14);
  v24[26] = *(v21 + 30);
  *(v24 + 7) = *(v21 + 8);
  *(v24 + 2) = *(v21 + 5);
  *(v24 + 9) = strdup(v21[7]);
  value = v25;
  *(v25 + 12) = a4;
  if (a14)
  {
LABEL_12:
    v27 = -1;
    v28 = -1;
    goto LABEL_13;
  }

  if (v22 != 40960)
  {
    if (v22 != 0x8000)
    {
      v26 = 0;
      goto LABEL_12;
    }

    if (!a3)
    {
      buffer[0] = 0;
      v26 = buffer;
      goto LABEL_12;
    }

    if (*(a10 + 67))
    {
      v37 = open(a1, 0, 0);
    }

    else
    {
      v37 = open(a1, 256, 0);
    }

    if ((v37 & 0x80000000) == 0)
    {
      v28 = v37;
      if (a3 == -1)
      {
        v46 = SZGetLoggingHandle();
        if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
LABEL_57:
          close(v28);
          goto LABEL_19;
        }

        *buf = 134218242;
        v57 = -1;
        v58 = 2080;
        v59 = a1;
        v47 = "File with size %lld is too big to map: %s";
        v48 = v46;
        v49 = 22;
      }

      else
      {
        v38 = mmap(0, a3, 1, 1026, v37, 0);
        if (v38 != -1)
        {
          v27 = v38;
          v26 = v38;
          goto LABEL_13;
        }

        v50 = *__error();
        v51 = SZGetLoggingHandle();
        if (!os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_57;
        }

        *buf = 136315906;
        v57 = a1;
        v58 = 2048;
        v59 = a3;
        v60 = 2080;
        v61 = strerror(v50);
        v62 = 1024;
        v63 = v50;
        v47 = "Failed to map file %s of size %llu: %s (%d)";
        v48 = v51;
        v49 = 38;
      }

      _os_log_error_impl(&dword_26BC65000, v48, OS_LOG_TYPE_ERROR, v47, buf, v49);
      goto LABEL_57;
    }

    v45 = *__error();
    v44 = SZGetLoggingHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v57 = a1;
      v58 = 2080;
      v59 = strerror(v45);
      v60 = 1024;
      LODWORD(v61) = v45;
      v31 = "Failed to open file: %s : %s (%d)";
      goto LABEL_53;
    }

    goto LABEL_19;
  }

  v42 = readlink(a1, buffer, 0x400uLL);
  if (v42 < 0)
  {
    v43 = *__error();
    v44 = SZGetLoggingHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v57 = a1;
      v58 = 2080;
      v59 = strerror(v43);
      v60 = 1024;
      LODWORD(v61) = v43;
      v31 = "Failed to read symlink destination for file %s: %s (%d)";
LABEL_53:
      v32 = v44;
      v33 = 28;
      goto LABEL_50;
    }

LABEL_19:
    DestroyMutableLocalFileRecord(v21);
    goto LABEL_40;
  }

  v21[5] = v42;
  v21[6] = v42;
  v26 = buffer;
  v27 = -1;
  v28 = -1;
  *(v25 + 4) = v42;
  *(v25 + 5) = v42;
LABEL_13:
  v29 = ZipStreamWriteLocalFile(0, &value, &v55, v26, 0, a11, a12, a9, a10);
  if (v29)
  {
    if (*(a10 + 65) == 1)
    {
      DestroyMutableCDRecord(value);
    }

    else
    {
      CFArrayAppendValue(theArray, value);
    }
  }

  else
  {
    v35 = SZGetLoggingHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = v55[7];
      *buf = 136315138;
      v57 = v36;
      _os_log_error_impl(&dword_26BC65000, v35, OS_LOG_TYPE_ERROR, "Failed to write local file named %s to archive", buf, 0xCu);
    }
  }

  if (v27 != -1)
  {
    munmap(v27, a3);
  }

  if ((v28 & 0x80000000) == 0)
  {
    close(v28);
  }

  DestroyMutableLocalFileRecord(v55);
  if (v29)
  {
    v39 = 1;
    if (!v23)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_40:
  DestroyMutableCDRecord(value);
  v39 = 0;
  if (v23)
  {
LABEL_41:
    CFRelease(v23);
  }

LABEL_42:
  v40 = *MEMORY[0x277D85DE8];
  return v39;
}

CFStringRef _CopyAppBundleNameInPath(const char *a1)
{
  v1 = strdup(a1);
  while (1)
  {
    v2 = rindex(v1, 47);
    if (!v2)
    {
      v6 = 0;
      goto LABEL_8;
    }

    v3 = v2;
    v4 = rindex(v2 + 1, 46);
    if (v4)
    {
      v5 = v4;
      if (!strcmp(v4, ".app"))
      {
        break;
      }
    }

    *v3 = 0;
  }

  *v5 = 0;
  v6 = CFStringCreateWithFileSystemRepresentation(*MEMORY[0x277CBECE8], v3 + 1);
LABEL_8:
  free(v1);
  return v6;
}

unint64_t _FindHighestCount(unint64_t result, unint64_t a2, unint64_t *a3)
{
  if (*a3 < a2)
  {
    *a3 = a2;
    a3[1] = result;
  }

  return result;
}

CFArrayRef SZArchiverCopyStatsKeys()
{
  v0 = 0;
  v7 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v1 = &sStatsData;
  memset(v5, 0, sizeof(v5));
  do
  {
    v2 = *v1;
    v1 += 5;
    *(v5 + v0) = *v2;
    v0 += 8;
  }

  while (v0 != 216);
  result = CFArrayCreate(*MEMORY[0x277CBECE8], v5, 27, MEMORY[0x277CBF128]);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

CFArrayRef SZArchiverCopyStatsDescriptions()
{
  v0 = 0;
  v1 = 0;
  v29 = *MEMORY[0x277D85DE8];
  do
  {
    Length = CFStringGetLength(*(&sStatsData)[v0]);
    if (Length > v1)
    {
      v1 = Length;
    }

    v0 += 5;
  }

  while (v0 != 135);
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  *values = 0u;
  v3 = malloc_type_malloc(v1 + 4, 0x100004077774924uLL);
  v4 = 0;
  v5 = &byte_279D265C8;
  v6 = *MEMORY[0x277CBECE8];
  do
  {
    v7 = *(v5 - 2);
    v8 = v1 - CFStringGetLength(*v7) + 4;
    memset(v3, 32, v8);
    *(v3 + v8) = 0;
    v9 = "CFBoolean     ";
    if ((*v5 & 1) == 0)
    {
      v10 = *(v5 - 1);
      if (v10 == 13)
      {
        v9 = "CFNumber:double";
      }

      else
      {
        v9 = "UNKNOWN";
        if (v10 == 4)
        {
          v9 = "CFNumber:uint64_t";
          if (v5[1])
          {
            v9 = "CFNumber:int64_t";
          }
        }
      }
    }

    values[v4++] = CFStringCreateWithFormat(v6, 0, @"       %@%s%s\t%s", *v7, v3, v9, *(v5 + 2), values[0], values[1], v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
    v5 += 40;
  }

  while (v4 != 27);
  v11 = CFArrayCreate(v6, values, 27, MEMORY[0x277CBF128]);
  for (i = 0; i != 27; ++i)
  {
    CFRelease(values[i]);
  }

  free(v3);
  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t SZArchiverConvertZipArchiveToStreamable(const char *a1, unsigned __int8 *a2, const __CFDictionary *a3, CFDictionaryRef *a4)
{
  v128 = *MEMORY[0x277D85DE8];
  v89 = 0;
  memset(v88, 0, sizeof(v88));
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0;
  v92 = 0;
  v91 = 0u;
  memset(v90, 0, sizeof(v90));
  result = _UpgradeCallbacksToCurrent(a2, v88);
  if (!result)
  {
    goto LABEL_31;
  }

  result = _ConvertOptionsToConfiguration(a3, v90);
  if (!result)
  {
    goto LABEL_31;
  }

  *(&v90[0] + 1) = v88;
  memset(&v107, 0, sizeof(v107));
  if (!ZipStreamConfigureOutput(v88, SHIBYTE(v91)))
  {
    goto LABEL_29;
  }

  if (*&v90[0] && HIBYTE(v91) == 1)
  {
    v8 = SZGetLoggingHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26BC65000, v8, OS_LOG_TYPE_ERROR, "Ignoring hashed chunk size supplied because output seeking is disallowed.", buf, 2u);
    }

    *&v90[0] = 0;
  }

  if (lstat(a1, &v107))
  {
    v9 = SZGetLoggingHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = __error();
      v11 = strerror(*v10);
      *buf = 136315394;
      v125 = a1;
      v126 = 2080;
      v127 = v11;
      v12 = "Failed to stat %s : %s";
      v13 = v9;
      v14 = 22;
LABEL_28:
      _os_log_error_impl(&dword_26BC65000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
      goto LABEL_29;
    }

    goto LABEL_29;
  }

  if ((v107.st_mode & 0xF000) != 0x8000)
  {
    v28 = SZGetLoggingHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v125 = a1;
      v126 = 1024;
      LODWORD(v127) = v107.st_mode;
      v12 = "Object at input path %s was not a file; mode 0%ho";
      v13 = v28;
      v14 = 18;
      goto LABEL_28;
    }

LABEL_29:
    v16 = 0;
LABEL_30:
    CloseZipFile(v16);
    result = 0;
    goto LABEL_31;
  }

  v15 = OpenZipFile(a1, SBYTE14(v91));
  if (!v15)
  {
    v29 = SZGetLoggingHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v125 = a1;
      v12 = "Failed to open zip file %s";
      v13 = v29;
      v14 = 12;
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  v16 = v15;
  ZipStreamCallPreflightResultCallback(*(&v90[0] + 1), *(v16 + 16), *(v16 + 8), v107.st_mode);
  v122 = 0;
  v123 = 0;
  v120 = 0;
  v121 = 0;
  v118 = 0;
  v119 = 0;
  v116 = 0;
  v117 = 0;
  MutableLocalFileRecord = 0;
  v115 = 0;
  v112 = -1;
  v113 = -1;
  v111 = 0;
  if (!_ReadOriginalCentralDirectory(v16, &v121, &v123, &v122, &v113, &v112, &v111 + 1, &v111))
  {
    v23 = 0;
    v21 = 0;
    goto LABEL_87;
  }

  v17 = v123;
  v18 = v113;
  v19 = 1;
  if (v113 == -1)
  {
    v19 = 2;
  }

  v20 = v19 + v123;
  if (*&v90[0])
  {
    v21 = v20 + 1;
  }

  else
  {
    v21 = v20;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], v123 + 3, 0);
  v23 = Mutable;
  v24 = v112;
  if (v112 != -1)
  {
    v25 = v121;
    CFArrayAppendValue(Mutable, v121[v112]);
    v25[v24] = 0;
  }

  if (v18 == -1)
  {
    Count = CFArrayGetCount(v23);
    CDRecord = CreateCDRecord("META-INF/", 16877);
    MutableCDRecord = CreateMutableCDRecord(CDRecord);
    CFArrayAppendValue(v23, MutableCDRecord);
    LocalFileRecord = CreateLocalFileRecord(CDRecord);
    MutableLocalFileRecord = CreateMutableLocalFileRecord(LocalFileRecord);
    v35 = LocalFileRecord;
    v27 = Count;
    free(v35);
    free(CDRecord);
  }

  else
  {
    v26 = v121;
    CFArrayAppendValue(v23, v121[v18]);
    v26[v18] = 0;
    v27 = -1;
  }

  v86 = v111;
  v87 = HIWORD(v111);
  if (!ZipStreamConcoctStreamData(v21, v122, SHIWORD(v111), v111, v90, &v120, &v119, &v118))
  {
    v44 = SZGetLoggingHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v45 = "Failed to concoct stream data";
LABEL_51:
      v46 = v44;
      v47 = 2;
LABEL_79:
      _os_log_error_impl(&dword_26BC65000, v46, OS_LOG_TYPE_ERROR, v45, buf, v47);
    }

LABEL_87:
    v58 = 0;
    goto LABEL_88;
  }

  v85 = CFArrayGetCount(v23);
  CFArrayAppendValue(v23, v120);
  v120 = 0;
  if (*&v90[0] && (HIBYTE(v91) & 1) == 0)
  {
    if (!ZipStreamConcoctFixedStreamData(v90, &v117, &v116, &v115))
    {
      v44 = SZGetLoggingHandle();
      if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_87;
      }

      *buf = 0;
      v45 = "Failed to concoct fixed stream data";
      goto LABEL_51;
    }

    v84 = CFArrayGetCount(v23);
    CFArrayAppendValue(v23, v117);
    v117 = 0;
  }

  else
  {
    v84 = -1;
  }

  v36 = v121;
  if (v17)
  {
    v82 = v27;
    for (i = 0; i != v17; ++i)
    {
      v38 = v36[i];
      if (v38)
      {
        v39 = *(v38 + 9);
        LOBYTE(v109) = 0;
        if (ZipStreamShouldOrderFileEarly(v39, &v109))
        {
          CFArrayAppendValue(v23, v36[i]);
          v40 = v36[i];
          v36[i] = 0;
          if (v109 == 1)
          {
            v110 = 0;
            if (_GetCDIndexOfBundleExecutableForInfoPlist(v16, v36, v17, v40, &v110))
            {
              v41 = v110;
              v42 = v36[v110];
              *(&v100 + 1) = v42[5];
              CFArrayAppendValue(v23, v42);
              v36[v41] = 0;
            }

            else
            {
              v43 = SZGetLoggingHandle();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315138;
                v125 = v39;
                _os_log_debug_impl(&dword_26BC65000, v43, OS_LOG_TYPE_DEBUG, "Failed to find executable for bundle Info.plist %s", buf, 0xCu);
              }
            }
          }
        }
      }
    }

    qsort(v36, v17, 8uLL, _SortZipEntries);
    v27 = v82;
    do
    {
      if (*v36)
      {
        CFArrayAppendValue(v23, *v36);
        *v36 = 0;
      }

      ++v36;
      --v17;
    }

    while (v17);
  }

  else
  {
    qsort(v121, 0, 8uLL, _SortZipEntries);
  }

  v48 = SZGetLoggingHandle();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_26BC65000, v48, OS_LOG_TYPE_DEBUG, "Writing local files", buf, 2u);
  }

  if (v21 != CFArrayGetCount(v23))
  {
    v56 = SZGetLoggingHandle();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      v57 = CFArrayGetCount(v23);
      *buf = 134218240;
      v125 = v21;
      v126 = 2048;
      v127 = v57;
      v45 = "Mismatched record count: expected %llu records, but we have %ld records";
      v46 = v56;
      v47 = 22;
      goto LABEL_79;
    }

    goto LABEL_87;
  }

  if (!v21)
  {
LABEL_82:
    if (ZipStreamWriteCentralDirectoryAndEndRecords(v23, v84, v116, &v93, v90))
    {
      v58 = 1;
      goto LABEL_88;
    }

    v44 = SZGetLoggingHandle();
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    *buf = 0;
    v45 = "Failed to finish writing archive.";
    goto LABEL_51;
  }

  v49 = 0;
  v81 = v115;
  v83 = v118;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v23, v49);
    v109 = 0;
    v110 = ValueAtIndex;
    v108 = 0;
    v51 = ValueAtIndex[9];
    v52 = SZGetLoggingHandle();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v125 = v51;
      _os_log_debug_impl(&dword_26BC65000, v52, OS_LOG_TYPE_DEBUG, "Processing file %s", buf, 0xCu);
    }

    if (v85 == v49)
    {
      v53 = 0;
      p_MutableLocalFileRecord = &v119;
      v55 = v83;
    }

    else if (v84 == v49)
    {
      v53 = 0;
      p_MutableLocalFileRecord = &v116;
      v55 = v81;
    }

    else if (v27 == v49)
    {
      v55 = 0;
      v53 = 0;
      p_MutableLocalFileRecord = &MutableLocalFileRecord;
    }

    else
    {
      v109 = CopyLocalFileHeader(v16, ValueAtIndex, &v108);
      if (!v109)
      {
        v80 = SZGetLoggingHandle();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v125) = v108;
          _os_log_error_impl(&dword_26BC65000, v80, OS_LOG_TYPE_ERROR, "CopyLocalFileHeader returned error %d", buf, 8u);
        }

        goto LABEL_123;
      }

      v55 = 0;
      p_MutableLocalFileRecord = &v109;
      v53 = 1;
    }

    if ((ZipStreamWriteLocalFile(v16, &v110, p_MutableLocalFileRecord, v55, 0, v87, v86, &v93, v90) & 1) == 0)
    {
      break;
    }

    CFArraySetValueAtIndex(v23, v49, v110);
    if (v53)
    {
      DestroyMutableLocalFileRecord(v109);
    }

    if (v21 == ++v49)
    {
      goto LABEL_82;
    }
  }

  v79 = SZGetLoggingHandle();
  if (!os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
  {
    if (!v53)
    {
      goto LABEL_123;
    }

    goto LABEL_122;
  }

  *buf = 136315138;
  v125 = v51;
  _os_log_error_impl(&dword_26BC65000, v79, OS_LOG_TYPE_ERROR, "Failed to write local file %s", buf, 0xCu);
  if (v53)
  {
LABEL_122:
    free(v109);
  }

LABEL_123:
  v58 = 0;
LABEL_88:
  v59 = v121;
  if (v121)
  {
    v60 = v123;
    if (v123)
    {
      v61 = v121;
      do
      {
        if (*v61)
        {
          DestroyMutableCDRecord(*v61);
        }

        ++v61;
        --v60;
      }

      while (v60);
    }

    free(v59);
  }

  if (v23)
  {
    if (v21)
    {
      for (j = 0; j != v21; ++j)
      {
        v63 = CFArrayGetValueAtIndex(v23, j);
        DestroyMutableCDRecord(v63);
      }
    }

    CFRelease(v23);
  }

  DestroyMutableCDRecord(v120);
  DestroyMutableLocalFileRecord(v119);
  free(v118);
  DestroyMutableCDRecord(v117);
  DestroyMutableLocalFileRecord(v116);
  free(v115);
  DestroyMutableLocalFileRecord(MutableLocalFileRecord);
  if ((v58 & 1) == 0)
  {
    v72 = SZGetLoggingHandle();
    if (!os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    *buf = 136315138;
    v125 = a1;
    v71 = "Failed to process file %s";
    v73 = v72;
LABEL_119:
    _os_log_error_impl(&dword_26BC65000, v73, OS_LOG_TYPE_ERROR, v71, buf, 0xCu);
    goto LABEL_30;
  }

  v64 = *(&v90[0] + 1);
  v65 = *(*(&v90[0] + 1) + 88);
  if (v65)
  {
    if (v65(*(*(&v90[0] + 1) + 80)) == -1)
    {
      v77 = *__error();
      v69 = SZGetLoggingHandle();
      if (!os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }

      v78 = strerror(v77);
      *buf = 136315138;
      v125 = v78;
      v71 = "Failed to flush output: %s";
LABEL_118:
      v73 = v69;
      goto LABEL_119;
    }

    v64 = *(&v90[0] + 1);
  }

  v66 = (*(v64 + 72))(*(v64 + 80));
  if (v66 < 0)
  {
    v75 = *__error();
    v69 = SZGetLoggingHandle();
    if (!os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    v76 = strerror(v75);
    *buf = 136315138;
    v125 = v76;
    v71 = "Failed to get offset in file at end of writing: %s";
    goto LABEL_118;
  }

  v67 = v66;
  if ((HIBYTE(v91) & 1) == 0 && (*(*(&v90[0] + 1) + 96))(*(*(&v90[0] + 1) + 80), v66))
  {
    v68 = *__error();
    v69 = SZGetLoggingHandle();
    if (!os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    v70 = strerror(v68);
    *buf = 136315138;
    v125 = v70;
    v71 = "Failed to truncate output: %s";
    goto LABEL_118;
  }

  *(&v94 + 1) = v67;
  v74 = *(v16 + 8);
  *&v105 = v67 - v74;
  *(&v105 + 1) = v67 / v74 * 100.0;
  CloseZipFile(v16);
  if (a4)
  {
    *a4 = _ConvertStatsToDict(&v93);
  }

  result = 1;
LABEL_31:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL _UpgradeCallbacksToCurrent(unsigned __int8 *a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*a1 == 1)
  {
    v8 = *a1;
    v9 = *(a1 + 2);
    *(a2 + 16) = *(a1 + 1);
    *(a2 + 32) = v9;
    *a2 = v8;
    v10 = *(a1 + 3);
    v11 = *(a1 + 4);
    v12 = *(a1 + 5);
    *(a2 + 96) = *(a1 + 12);
    *(a2 + 64) = v11;
    *(a2 + 80) = v12;
    *(a2 + 48) = v10;
    result = 1;
  }

  else if (*a1)
  {
    v13 = SZGetLoggingHandle();
    result = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v15 = *a1;
      v16[0] = 67109120;
      v16[1] = v15;
      _os_log_error_impl(&dword_26BC65000, v13, OS_LOG_TYPE_ERROR, "Don't know how to handle callbacks struct version %hhu", v16, 8u);
      result = 0;
    }
  }

  else
  {
    v3 = *(a1 + 1);
    *a2 = *a1;
    *(a2 + 16) = v3;
    v4 = *(a1 + 2);
    v5 = *(a1 + 4);
    v6 = *(a1 + 10);
    *(a2 + 48) = *(a1 + 3);
    *(a2 + 64) = v5;
    *(a2 + 32) = v4;
    result = 1;
    *a2 = 1;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0;
    *(a2 + 80) = v6;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _ConvertOptionsToConfiguration(const __CFDictionary *a1, uint64_t a2)
{
  Value = CFDictionaryGetValue(a1, @"HashedChunkSize");
  if (Value)
  {
    result = CFNumberGetValue(Value, kCFNumberLongLongType, a2);
    if (!result)
    {
      return result;
    }
  }

  *(a2 + 16) = CFDictionaryGetValue(a1, @"CommandLineString");
  *(a2 + 24) = CFDictionaryGetValue(a1, @"ExecutableUUID");
  v6 = CFDictionaryGetValue(a1, @"CompressionOptions");
  if (v6 && (v7 = v6, CFStringCompare(v6, @"ForceUncompressed", 0)))
  {
    if (CFStringCompare(v7, @"PreserveCompression", 0))
    {
      if (CFStringCompare(v7, @"TryRecompress", 0))
      {
        if (CFStringCompare(v7, @"ForceCompressed", 0))
        {
          return 0;
        }

        v8 = 3;
      }

      else
      {
        v8 = 2;
      }
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  *(a2 + 48) = v8;
  v9 = CFDictionaryGetValue(a1, @"ZlibCompressionLevel");
  if (v9)
  {
    result = CFNumberGetValue(v9, kCFNumberIntType, (a2 + 56));
    if (!result)
    {
      return result;
    }

    if (*(a2 + 56) > 9u)
    {
      return 0;
    }
  }

  else
  {
    *(a2 + 56) = 9;
  }

  v10 = CFDictionaryGetValue(a1, @"HashType");
  if (!v10)
  {
    goto LABEL_31;
  }

  v11 = v10;
  if (CFStringCompare(v10, @"MD5", 0) == kCFCompareEqualTo)
  {
    v12 = 0;
    goto LABEL_30;
  }

  if (CFStringCompare(v11, @"SHA1", 0) == kCFCompareEqualTo)
  {
    v12 = 1;
    goto LABEL_30;
  }

  if (CFStringCompare(v11, @"SHA224", 0) == kCFCompareEqualTo)
  {
    v12 = 4;
    goto LABEL_30;
  }

  if (CFStringCompare(v11, @"SHA256", 0) == kCFCompareEqualTo)
  {
    v12 = 5;
    goto LABEL_30;
  }

  if (CFStringCompare(v11, @"SHA384", 0) == kCFCompareEqualTo)
  {
    v12 = 6;
    goto LABEL_30;
  }

  if (CFStringCompare(v11, @"SHA512", 0))
  {
    return 0;
  }

  v12 = 7;
LABEL_30:
  *(a2 + 60) = v12;
LABEL_31:
  v13 = CFDictionaryGetValue(a1, @"CompressionMethod");
  if (v13 && (v14 = v13, CFStringCompare(v13, @"DEFLATE", 0)))
  {
    if (CFStringCompare(v14, @"LZFSE", 0))
    {
      if (CFStringCompare(v14, @"LZMA", 0))
      {
        return 0;
      }

      v15 = 14;
    }

    else
    {
      v15 = 99;
    }
  }

  else
  {
    v15 = 8;
  }

  *(a2 + 52) = v15;
  _FetchAndSetBoolean(a1, @"UncompressBloatedFiles", (a2 + 61), 1);
  _FetchAndSetBoolean(a1, @"NoCache", (a2 + 62), 0);
  _FetchAndSetBoolean(a1, @"NoSeekOutput", (a2 + 63), 0);
  _FetchAndSetBoolean(a1, @"SkipPrescan", (a2 + 64), 0);
  _FetchAndSetBoolean(a1, @"NoCentralDirectory", (a2 + 65), 0);
  v16 = CFDictionaryGetValue(a1, @"CustomPathOrdering");
  if (v16)
  {
    *(a2 + 64) = 1;
  }

  *(a2 + 32) = v16;
  _FetchAndSetBoolean(a1, @"IncludeContainingDirectory", (a2 + 66), 0);
  _FetchAndSetBoolean(a1, @"FollowAllSymlinks", (a2 + 67), 0);
  _FetchAndSetBoolean(a1, @"IncludeAppleDoubleContent", (a2 + 68), 0);
  v17 = CFDictionaryGetValue(a1, @"TempDirPath");
  if (v17)
  {
    *(a2 + 40) = v17;
  }

  return 1;
}

CFDictionaryRef _ConvertStatsToDict(uint64_t a1)
{
  v2 = 0;
  v28 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *keys = 0u;
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v3 = *MEMORY[0x277CBECE8];
  v4 = *MEMORY[0x277CBED28];
  v5 = &qword_279D265D0;
  v6 = *MEMORY[0x277CBED10];
  do
  {
    keys[v2] = **(v5 - 3);
    if (*(v5 - 8) == 1)
    {
      if (*(a1 + *v5))
      {
        v7 = v4;
      }

      else
      {
        v7 = v6;
      }

      CFRetain(v7);
    }

    else
    {
      v7 = CFNumberCreate(v3, *(v5 - 2), (a1 + *v5));
    }

    *(v12 + v2 * 8) = v7;
    ++v2;
    v5 += 5;
  }

  while (v2 != 27);
  v8 = CFDictionaryCreate(v3, keys, v12, 27, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  for (i = 0; i != 216; i += 8)
  {
    CFRelease(*(v12 + i));
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

const void *_FetchAndSetBoolean(const __CFDictionary *a1, const void *a2, BOOL *a3, BOOL a4)
{
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    result = CFEqual(result, *MEMORY[0x277CBED28]);
    a4 = result != 0;
  }

  *a3 = a4;
  return result;
}

uint64_t SZArchiverCreateStreamableZip(const char *a1, unsigned __int8 *a2, const __CFDictionary *a3, CFDictionaryRef *a4)
{
  v166 = *MEMORY[0x277D85DE8];
  v127 = 0;
  memset(v126, 0, sizeof(v126));
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  v143 = 0u;
  v144 = 0u;
  v145 = 0;
  v131 = 0;
  *theArray = 0u;
  v130 = 0u;
  memset(v128, 0, sizeof(v128));
  result = _UpgradeCallbacksToCurrent(a2, v126);
  if (!result)
  {
    goto LABEL_36;
  }

  result = _ConvertOptionsToConfiguration(a3, v128);
  if (!result)
  {
    goto LABEL_36;
  }

  *(&v128[0] + 1) = v126;
  *v155 = 0;
  v154 = 0;
  v153 = 0;
  value = 0;
  v151 = 0;
  v150 = 0;
  v8 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v149 = 0;
  bzero(__str, 0x400uLL);
  memset(&v148, 0, sizeof(v148));
  memset(&v147, 0, sizeof(v147));
  bzero(__s, 0x400uLL);
  v163[0] = __s;
  v163[1] = 0;
  if (!realpath_DARWIN_EXTSN(a1, __s))
  {
    v18 = *__error();
    v19 = SZGetLoggingHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = strerror(v18);
      buf[0].st_dev = 136315906;
      *&buf[0].st_mode = a1;
      WORD2(buf[0].st_ino) = 2080;
      *(&buf[0].st_ino + 6) = __s;
      HIWORD(buf[0].st_gid) = 2080;
      *&buf[0].st_rdev = v20;
      LOWORD(buf[0].st_atimespec.tv_sec) = 1024;
      *(&buf[0].st_atimespec.tv_sec + 2) = v18;
      v15 = "Realpath for %s failed at %s : %s (%d)";
      v16 = v19;
      v17 = 38;
      goto LABEL_48;
    }

LABEL_12:
    v22 = 0;
    v23 = 0;
    v24 = 0;
LABEL_13:
    v25 = 0;
LABEL_14:
    v26 = 0;
    goto LABEL_15;
  }

  v10 = strlen(__s);
  if (!v10)
  {
    v21 = SZGetLoggingHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0].st_dev) = 0;
      v15 = "Source path supplied was an empty string";
      v16 = v21;
      v17 = 2;
      goto LABEL_48;
    }

    goto LABEL_12;
  }

  v11 = v10;
  if (!ZipStreamConfigureOutput(*(&v128[0] + 1), SHIBYTE(v130)))
  {
    goto LABEL_12;
  }

  if (lstat(__s, &v148))
  {
    v12 = SZGetLoggingHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = __error();
      v14 = strerror(*v13);
      buf[0].st_dev = 136315394;
      *&buf[0].st_mode = __s;
      WORD2(buf[0].st_ino) = 2080;
      *(&buf[0].st_ino + 6) = v14;
      v15 = "Failed to stat source path %s : %s";
      v16 = v12;
      v17 = 22;
LABEL_48:
      _os_log_error_impl(&dword_26BC65000, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  st_mode = v148.st_mode;
  v37 = v148.st_mode & 0xF000;
  if (v37 == 0x4000)
  {
    if (BYTE2(v131) == 1)
    {
      v11 = strrchr(__s, 47) - __s;
    }

    if ((v131 & 1) == 0)
    {
      if (!_Prescan(v128, __s, Mutable, &v155[1], v155, &v154, &v153))
      {
        goto LABEL_12;
      }

      v38 = v154;
      st_size = v153;
      st_mode = v148.st_mode;
      goto LABEL_51;
    }

LABEL_44:
    st_size = 0;
    v38 = 16;
    v154 = 16;
    v155[0] = 16877;
    v155[1] = -32348;
    goto LABEL_54;
  }

  if (v37 != 0x8000)
  {
    v40 = SZGetLoggingHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      buf[0].st_dev = 67109120;
      *&buf[0].st_mode = v148.st_mode;
      v15 = "Unsupported type for source path: mode = 0%ho";
      v16 = v40;
      v17 = 8;
      goto LABEL_48;
    }

    goto LABEL_12;
  }

  if (v131)
  {
    goto LABEL_44;
  }

  v155[1] = v148.st_mode;
  v155[0] = 16877;
  v38 = 1;
  v154 = 1;
  st_size = v148.st_size;
  v153 = v148.st_size;
LABEL_51:
  v41 = 2;
  if (!HIBYTE(v130))
  {
    v41 = 3;
  }

  ZipStreamCallPreflightResultCallback(*(&v128[0] + 1), v41 + v38, st_size, st_mode);
LABEL_54:
  v24 = CFArrayCreateMutable(v8, v38, 0);
  snprintf(__str, 0x400uLL, "%s/mimetype", __s);
  if (!lstat(__str, &v147))
  {
    HIWORD(v117) = v155[0];
    LOWORD(v117) = v155[1];
    if ((_WriteLocalFile(__str, "mimetype", v147.st_size, v147.st_mode, v147.st_atimespec.tv_sec, v147.st_mtimespec.tv_sec, v147.st_uid, v147.st_gid, &v132, v128, v117, v24) & 1) == 0)
    {
      v63 = SZGetLoggingHandle();
      if (!os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_149;
      }

      LOWORD(buf[0].st_dev) = 0;
      v64 = "Failed to write mimetype file out to archive";
      goto LABEL_146;
    }
  }

  snprintf(__str, 0x400uLL, "%s/%s", __s, "META-INF/");
  if (lstat(__str, &v147))
  {
    v42 = 0;
    tv_sec = 0;
    v44 = 0;
    *&v147.st_dev = 0u;
    memset(&v147.st_rdev, 0, 120);
    v45 = 16877;
    v147.st_mode = 16877;
    st_gid = 501;
    *&v147.st_uid = vdup_n_s32(0x1F5u);
    st_uid = 501;
  }

  else
  {
    v44 = v147.st_size;
    v45 = v147.st_mode;
    tv_sec = v147.st_atimespec.tv_sec;
    v42 = v147.st_mtimespec.tv_sec;
    st_uid = v147.st_uid;
    st_gid = v147.st_gid;
  }

  v48 = v155[1];
  v49 = v155[0];
  HIWORD(v118) = v155[0];
  LOWORD(v118) = v155[1];
  if ((_WriteLocalFile(__str, "META-INF/", v44, v45, tv_sec, v42, st_uid, st_gid, &v132, v128, v118, v24) & 1) == 0)
  {
    v63 = SZGetLoggingHandle();
    if (!os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_149;
    }

    LOWORD(buf[0].st_dev) = 0;
    v64 = "Failed to write metadata directory to archive";
    goto LABEL_146;
  }

  if (!ZipStreamConcoctStreamData(v38, st_size, v48, v49, v128, &value, &v151, &v149))
  {
    v63 = SZGetLoggingHandle();
    if (!os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_149;
    }

    LOWORD(buf[0].st_dev) = 0;
    v64 = "failed to create stream metadata";
    goto LABEL_146;
  }

  v27 = v149;
  if ((ZipStreamWriteLocalFile(0, &value, &v151, v149, 0, v48, v49, &v132, v128) & 1) == 0)
  {
    v63 = SZGetLoggingHandle();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0].st_dev) = 0;
      v64 = "Failed to write stream metadata";
      goto LABEL_146;
    }

    goto LABEL_91;
  }

  CFArrayAppendValue(v24, value);
  value = 0;
  free(v27);
  v149 = 0;
  DestroyMutableLocalFileRecord(v151);
  v151 = 0;
  if (*&v128[0] && (HIBYTE(v130) & 1) == 0)
  {
    if (ZipStreamConcoctFixedStreamData(v128, &value, &v150, &v149))
    {
      v27 = v149;
      if (ZipStreamWriteLocalFile(0, &value, &v150, v149, 0, v48, v49, &v132, v128))
      {
        Count = CFArrayGetCount(v24);
        CFArrayAppendValue(v24, value);
        value = 0;
        free(v27);
        v149 = 0;
        goto LABEL_65;
      }

      v63 = SZGetLoggingHandle();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf[0].st_dev) = 0;
        v64 = "Failed to write stream metadata";
        goto LABEL_146;
      }

LABEL_91:
      v22 = 0;
      v23 = 0;
      v25 = 0;
      v26 = 0;
      if (!v27)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v63 = SZGetLoggingHandle();
    if (!os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_149;
    }

    LOWORD(buf[0].st_dev) = 0;
    v64 = "Failed to concoct fixed stream data";
LABEL_146:
    v87 = buf;
    goto LABEL_147;
  }

  Count = -1;
LABEL_65:
  v124 = v49;
  v125 = v48;
  if (Mutable)
  {
    v123 = CFArrayGetCount(Mutable);
    if (v123 >= 1)
    {
      v50 = 0;
      while (1)
      {
        bzero(buf, 0x400uLL);
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v50);
        v52 = CFStringCreateWithFileSystemRepresentation(0, __s);
        if (!v52)
        {
          v86 = SZGetLoggingHandle();
          if (!os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_149;
          }

          *v156 = 136315138;
          v157 = __s;
          v64 = "unable to create dirPathStr from: %s";
          v87 = v156;
          v88 = v86;
          v89 = 12;
          goto LABEL_148;
        }

        v53 = v52;
        v54 = CFStringCreateWithFormat(v8, 0, @"%@/%@", v52, ValueAtIndex);
        if (!v54)
        {
          v90 = SZGetLoggingHandle();
          if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
          {
            *v156 = 138412546;
            v157 = v53;
            v158 = 2112;
            v159 = ValueAtIndex;
            _os_log_error_impl(&dword_26BC65000, v90, OS_LOG_TYPE_ERROR, "unable to create fullPath from: %@ and %@", v156, 0x16u);
          }

          CFRelease(v53);
          goto LABEL_149;
        }

        v55 = v54;
        FileSystemRepresentation = CFStringGetFileSystemRepresentation(v54, __str, 1024);
        CFRelease(v53);
        CFRelease(v55);
        if (!FileSystemRepresentation)
        {
          v63 = SZGetLoggingHandle();
          if (!os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_149;
          }

          *v156 = 0;
          v64 = "Failed to convert full path to C string";
          goto LABEL_178;
        }

        if (!CFStringGetFileSystemRepresentation(ValueAtIndex, buf, 1024))
        {
          v63 = SZGetLoggingHandle();
          if (!os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_149;
          }

          *v156 = 0;
          v64 = "Failed to convert archive path to C string";
          goto LABEL_178;
        }

        LOWORD(v49) = v124;
        LOWORD(v48) = v125;
        if (!lstat(__str, &v147))
        {
          HIWORD(v119) = v124;
          LOWORD(v119) = v125;
          if ((_WriteLocalFile(__str, buf, v147.st_size, v147.st_mode, v147.st_atimespec.tv_sec, v147.st_mtimespec.tv_sec, v147.st_uid, v147.st_gid, &v132, v128, v119, v24) & 1) == 0)
          {
            break;
          }
        }

        if (v123 == ++v50)
        {
          goto LABEL_75;
        }
      }

      v63 = SZGetLoggingHandle();
      if (!os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_149;
      }

      *v156 = 0;
      v64 = "Failed to write mimetype file out to archive";
      goto LABEL_178;
    }
  }

LABEL_75:
  v57 = v148.st_mode;
  if ((v148.st_mode & 0xF000) == 0x4000)
  {
    if (theArray[0])
    {
      v58 = CFArrayGetCount(theArray[0]);
      bzero(buf, 0x400uLL);
      if (v58 <= 0)
      {
        v63 = SZGetLoggingHandle();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          *v156 = 0;
          v64 = "The custom path ordering array is empty";
LABEL_178:
          v87 = v156;
LABEL_147:
          v88 = v63;
          v89 = 2;
LABEL_148:
          _os_log_error_impl(&dword_26BC65000, v88, OS_LOG_TYPE_ERROR, v64, v87, v89);
        }
      }

      else
      {
        v59 = malloc_type_calloc(v58 + 1, 8uLL, 0x10040436913F5uLL);
        if (v59)
        {
          v22 = v59;
          v60 = 0;
          while (1)
          {
            v61 = CFArrayGetValueAtIndex(theArray[0], v60);
            if (!CFStringGetFileSystemRepresentation(v61, buf, 1024))
            {
              v103 = SZGetLoggingHandle();
              if (!os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_150;
              }

              *v156 = 0;
              v94 = "Failed to convert path to C string";
              v95 = v156;
              v96 = v103;
              v97 = 2;
              goto LABEL_173;
            }

            v146 = 0;
            if (asprintf(&v146, "%s/%s", __s, buf) < 0)
            {
              break;
            }

            v22[v60++] = v146;
            if (v58 == v60)
            {
              v22[v58] = 0;
              v62 = v22;
              goto LABEL_114;
            }
          }

          v104 = *__error();
          v105 = SZGetLoggingHandle();
          if (!os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_150;
          }

          v106 = strerror(v104);
          *v156 = 136315650;
          v157 = __s;
          v158 = 2080;
          v159 = buf;
          v160 = 2080;
          v161 = v106;
          v94 = "Failed to create path from %s/%s : %s";
          v95 = v156;
          v96 = v105;
          v97 = 32;
          goto LABEL_173;
        }

        v63 = SZGetLoggingHandle();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          *v156 = 0;
          v64 = "Malloc failed for path buffer array";
          goto LABEL_178;
        }
      }

LABEL_149:
      v22 = 0;
LABEL_150:
      v23 = 0;
      goto LABEL_13;
    }

    v22 = 0;
    v62 = v163;
LABEL_114:
    v76 = fts_open(v62, 84, 0);
    if (!v76)
    {
      v91 = SZGetLoggingHandle();
      if (!os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_150;
      }

      v92 = __error();
      v93 = strerror(*v92);
      buf[0].st_dev = 136315394;
      *&buf[0].st_mode = __s;
      WORD2(buf[0].st_ino) = 2080;
      *(&buf[0].st_ino + 6) = v93;
      v94 = "fts_open failed for path %s: %s";
      v95 = buf;
      v96 = v91;
      v97 = 22;
LABEL_173:
      _os_log_error_impl(&dword_26BC65000, v96, OS_LOG_TYPE_ERROR, v94, v95, v97);
      goto LABEL_150;
    }

    v25 = v76;
    while (1)
    {
      v77 = fts_read(v25);
      if (!v77)
      {
        if (!*__error())
        {
          goto LABEL_101;
        }

        v73 = SZGetLoggingHandle();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          v98 = __error();
          v99 = strerror(*v98);
          buf[0].st_dev = 136315138;
          *&buf[0].st_mode = v99;
          v75 = "fts_read returned NULL and set errno: %s";
          goto LABEL_181;
        }

        goto LABEL_184;
      }

      v78 = v77;
      fts_info = v77->fts_info;
      if (fts_info > 0xD)
      {
        break;
      }

      if (((1 << fts_info) & 0x3102) != 0)
      {
        if (v77->fts_level)
        {
          v80 = 0;
        }

        else
        {
          v80 = theArray[0] == 0;
        }

        if (!v80 || BYTE2(v131) == 1)
        {
          v23 = _CopyArchivePath(v77->fts_path, v11, v77->fts_statp->st_mode);
          if ((_IsExcludedFileName(v128, v23) & 1) == 0 && (_IsOrderedEarly(v23, Mutable) & 1) == 0)
          {
            memset(buf, 0, 144);
            if (v78->fts_info != 12 || BYTE3(v131) != 1)
            {
              goto LABEL_134;
            }

            if (stat(v78->fts_path, buf))
            {
              v112 = SZGetLoggingHandle();
              if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
              {
                fts_path = v78->fts_path;
                v114 = __error();
                v115 = strerror(*v114);
                *v156 = 136315394;
                v157 = fts_path;
                v158 = 2080;
                v159 = v115;
                _os_log_error_impl(&dword_26BC65000, v112, OS_LOG_TYPE_ERROR, "stat failed for path %s: %s", v156, 0x16u);
              }

              goto LABEL_14;
            }

            v81 = buf[0].st_mode;
            if ((buf[0].st_mode & 0xF000) == 0x8000)
            {
              fts_statp = buf;
            }

            else
            {
LABEL_134:
              fts_statp = v78->fts_statp;
              v81 = fts_statp->st_mode;
            }

            HIWORD(v121) = v124;
            LOWORD(v121) = v125;
            if ((_WriteLocalFile(v78->fts_path, v23, fts_statp->st_size, v81, fts_statp->st_atimespec.tv_sec, fts_statp->st_mtimespec.tv_sec, fts_statp->st_uid, fts_statp->st_gid, &v132, v128, v121, v24) & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          free(v23);
        }
      }

      else if (fts_info != 6)
      {
        if (((1 << fts_info) & 0x490) != 0)
        {
          v100 = SZGetLoggingHandle();
          if (!os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_184;
          }

          v101 = v78->fts_path;
          v102 = strerror(v78->fts_errno);
          buf[0].st_dev = 136315394;
          *&buf[0].st_mode = v101;
          WORD2(buf[0].st_ino) = 2080;
          *(&buf[0].st_ino + 6) = v102;
          v75 = "fts_read gave error for file %s: %s";
          v84 = v100;
          v85 = 22;
          goto LABEL_182;
        }

        break;
      }
    }

    v111 = SZGetLoggingHandle();
    if (!os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_184;
    }

    v116 = v78->fts_info;
    buf[0].st_dev = 67109120;
    *&buf[0].st_mode = v116;
    v75 = "fts_read returned unhandled fts_info value %d";
    v84 = v111;
    v85 = 8;
    goto LABEL_182;
  }

  v65 = strrchr(__s, 47);
  if (v65)
  {
    v66 = v65;
  }

  else
  {
    v66 = __s;
  }

  HIWORD(v120) = v49;
  LOWORD(v120) = v48;
  v67 = _WriteLocalFile(__s, v66, v148.st_size, v57, v148.st_atimespec.tv_sec, v148.st_mtimespec.tv_sec, v148.st_uid, v148.st_gid, &v132, v128, v120, v24);
  v22 = 0;
  if (v67)
  {
    v25 = 0;
LABEL_101:
    if ((ZipStreamWriteCentralDirectoryAndEndRecords(v24, Count, v150, &v132, v128) & 1) == 0)
    {
      v83 = SZGetLoggingHandle();
      if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf[0].st_dev) = 0;
        v75 = "Failed to write end of archive.";
        v84 = v83;
        v85 = 2;
LABEL_182:
        _os_log_error_impl(&dword_26BC65000, v84, OS_LOG_TYPE_ERROR, v75, buf, v85);
        goto LABEL_184;
      }

      goto LABEL_184;
    }

    v68 = *(&v128[0] + 1);
    v69 = *(*(&v128[0] + 1) + 88);
    if (v69)
    {
      if (v69(*(*(&v128[0] + 1) + 80)) == -1)
      {
        v109 = *__error();
        v73 = SZGetLoggingHandle();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          v110 = strerror(v109);
          buf[0].st_dev = 136315138;
          *&buf[0].st_mode = v110;
          v75 = "Failed to flush output: %s";
          goto LABEL_181;
        }

        goto LABEL_184;
      }

      v68 = *(&v128[0] + 1);
    }

    v70 = (*(v68 + 72))(*(v68 + 80));
    if (v70 < 0)
    {
      v107 = *__error();
      v73 = SZGetLoggingHandle();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        v108 = strerror(v107);
        buf[0].st_dev = 136315138;
        *&buf[0].st_mode = v108;
        v75 = "Failed to get offset in file at end of writing: %s";
        goto LABEL_181;
      }

LABEL_184:
      v23 = 0;
      goto LABEL_14;
    }

    v71 = v70;
    if ((HIBYTE(v130) & 1) == 0 && (*(*(&v128[0] + 1) + 96))(*(*(&v128[0] + 1) + 80), v70))
    {
      v72 = *__error();
      v73 = SZGetLoggingHandle();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        v74 = strerror(v72);
        buf[0].st_dev = 136315138;
        *&buf[0].st_mode = v74;
        v75 = "Failed to truncate output: %s";
LABEL_181:
        v84 = v73;
        v85 = 12;
        goto LABEL_182;
      }

      goto LABEL_184;
    }

    v23 = 0;
    *(&v133 + 1) = v71;
    v26 = 1;
  }

  else
  {
    v26 = 0;
    v23 = 0;
    v25 = 0;
  }

LABEL_15:
  v27 = v149;
  if (v149)
  {
LABEL_16:
    free(v27);
  }

LABEL_17:
  DestroyMutableCDRecord(value);
  DestroyMutableLocalFileRecord(v151);
  DestroyMutableLocalFileRecord(v150);
  if (v24)
  {
    v28 = CFArrayGetCount(v24);
    if (v28)
    {
      v29 = v28;
      for (i = 0; i != v29; ++i)
      {
        v31 = CFArrayGetValueAtIndex(v24, i);
        DestroyMutableCDRecord(v31);
      }
    }

    CFRelease(v24);
  }

  free(v23);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v25)
  {
    fts_close(v25);
  }

  if (v22)
  {
    v32 = *v22;
    if (*v22)
    {
      v33 = v22 + 1;
      do
      {
        free(v32);
        *(v33 - 1) = 0;
        v34 = *v33++;
        v32 = v34;
      }

      while (v34);
    }

    free(v22);
  }

  if (v26)
  {
    if (a4)
    {
      *a4 = _ConvertStatsToDict(&v132);
    }

    result = 1;
  }

  else
  {
    result = 0;
  }

LABEL_36:
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SZArchiverExtractFile()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v90 = *MEMORY[0x277D85DE8];
  v69 = 0;
  memset(v68, 0, sizeof(v68));
  memset(v73, 0, sizeof(v73));
  v74 = 0;
  v72 = 0;
  v71 = 0u;
  memset(v70, 0, sizeof(v70));
  result = _UpgradeCallbacksToCurrent(v8, v68);
  if (!result)
  {
    goto LABEL_17;
  }

  result = _ConvertOptionsToConfiguration(v4, v70);
  if (!result)
  {
    goto LABEL_17;
  }

  *(&v70[0] + 1) = v68;
  if (!ZipStreamConfigureOutput(v68, SHIBYTE(v71)))
  {
    goto LABEL_15;
  }

  v10 = OpenZipFile(v7, SBYTE14(v71));
  if (!v10)
  {
    v20 = SZGetLoggingHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v87 = v7;
      _os_log_error_impl(&dword_26BC65000, v20, OS_LOG_TYPE_ERROR, "Failed to open zip file %s", buf, 0xCu);
    }

LABEL_15:
    v11 = 0;
LABEL_16:
    CloseZipFile(v11);
    result = 0;
    goto LABEL_17;
  }

  v11 = v10;
  v80 = 0;
  v81 = 0;
  v78 = -1;
  v79 = 0;
  v76 = -1;
  v77 = -1;
  v75 = 0;
  if (!_ReadOriginalCentralDirectory(v10, &v79, &v81, &v80, &v78, &v77, &v75 + 1, &v75))
  {
    goto LABEL_50;
  }

  if (v6 != -1)
  {
    v12 = v81;
    if (v81 <= v6)
    {
      v35 = SZGetLoggingHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v87 = v6;
        v88 = 2048;
        v89 = v12 - 1;
        _os_log_error_impl(&dword_26BC65000, v35, OS_LOG_TYPE_ERROR, "Central directory index %llu is out of range, must be between 0 and %llu", buf, 0x16u);
      }

      v19 = 0;
    }

    else
    {
      v13 = *(v79 + v6);
      v14 = *(&v70[0] + 1);
      v83 = 2;
      printf("Extracting %s\n", *(v13 + 72));
      v15 = CopyLocalFileHeader(v11, v13, &v83);
      v16 = v15;
      if (v15)
      {
        v17 = OpenLocalFile(v11, v13, *(v15 + 7), v15[32], 0, &v83);
        if (v83)
        {
          v18 = SZGetLoggingHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_26BC65000, v18, OS_LOG_TYPE_ERROR, "Failed to open local file", buf, 2u);
          }

          v19 = 0;
        }

        else
        {
          v67 = v16;
          v51 = v16[6];
          if (v51)
          {
            v52 = 0;
            while (1)
            {
              v82 = 0;
              v53 = v17;
              v54 = ReadLocalFileData(v17, buf, 0x1000uLL, &v82);
              if ((v54 & 5) != 0)
              {
                break;
              }

              v55 = v82;
              if (v82)
              {
                if (v55 != (*(v14 + 48))(*(v14 + 80), buf, v82))
                {
                  v61 = *__error();
                  v62 = SZGetLoggingHandle();
                  if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_84;
                  }

                  v65 = strerror(v61);
                  *v84 = 136315138;
                  v85 = v65;
                  v58 = "fwrite failed to write out entire buffer: %s";
                  v59 = v62;
                  v60 = 12;
                  goto LABEL_94;
                }

                v52 += v55;
              }

              v17 = v53;
              if (v52 >= v51)
              {
                if (v54 != 2)
                {
                  goto LABEL_78;
                }

                if (v52 == v51)
                {
                  v19 = 1;
                }

                else
                {
                  v64 = SZGetLoggingHandle();
                  if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 134218240;
                    v87 = v52;
                    v88 = 2048;
                    v89 = v51;
                    _os_log_error_impl(&dword_26BC65000, v64, OS_LOG_TYPE_ERROR, "Failed to read entire file size; expected %llu, got %llu", buf, 0x16u);
                  }

                  v19 = 0;
                }

                goto LABEL_86;
              }
            }

            v57 = SZGetLoggingHandle();
            if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
LABEL_84:
              v19 = 0;
              goto LABEL_85;
            }

            *v84 = 67109120;
            LODWORD(v85) = v54;
            v58 = "ReadLocalFileData returned %d";
            v59 = v57;
            v60 = 8;
LABEL_94:
            _os_log_error_impl(&dword_26BC65000, v59, OS_LOG_TYPE_ERROR, v58, v84, v60);
            goto LABEL_84;
          }

          v54 = 0;
LABEL_78:
          v53 = v17;
          v56 = SZGetLoggingHandle();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            LODWORD(v87) = v54;
            _os_log_error_impl(&dword_26BC65000, v56, OS_LOG_TYPE_ERROR, "Failed to read file data: %d", buf, 8u);
          }

          v19 = 0;
LABEL_85:
          v17 = v53;
LABEL_86:
          v16 = v67;
        }

        if (v17)
        {
          CloseLocalFile(v17);
        }
      }

      else
      {
        v50 = SZGetLoggingHandle();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v87) = v83;
          _os_log_error_impl(&dword_26BC65000, v50, OS_LOG_TYPE_ERROR, "Failed to get local file record: %d", buf, 8u);
        }

        v19 = 0;
      }

      free(v16);
    }

    goto LABEL_51;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v23 = v81;
  if (!v81)
  {
    v26 = -1;
    goto LABEL_41;
  }

  v24 = 0;
  v25 = v79;
  v66 = HIWORD(v75);
  v26 = -1;
  v27 = v75;
  do
  {
    v28 = v25[v24];
    if (!v28)
    {
      goto LABEL_32;
    }

    if (v26 == -1)
    {
      buf[0] = 0;
      ShouldOrderFileEarly = ZipStreamShouldOrderFileEarly(*(v28 + 72), buf);
      if ((ShouldOrderFileEarly & buf[0]) != 0)
      {
        v26 = v24;
      }

      else
      {
        v26 = -1;
      }

      v28 = v25[v24];
    }

    v30 = CFStringCreateWithFileSystemRepresentation(0, *(v28 + 72));
    CFArrayAppendValue(Mutable, v30);
    CFRelease(v30);
    v31 = v25[v24];
    v32 = *(v31 + 24);
    if (*(v31 + 26) == 1)
    {
      if (v32 == v27)
      {
        goto LABEL_30;
      }
    }

    else if (v32 == v66)
    {
LABEL_30:
      v33 = 0;
      goto LABEL_31;
    }

    v33 = 1;
LABEL_31:
    ZipStreamAddStatisticsForCDRecord(v31, v33, v73);
LABEL_32:
    ++v24;
  }

  while (v23 != v24);
  if (v26 == -1)
  {
LABEL_41:
    v34 = -1;
    goto LABEL_42;
  }

  if (_GetCDIndexOfBundleExecutableForInfoPlist(v11, v25, v23, v25[v26], &v76))
  {
    v34 = v76;
  }

  else
  {
    v34 = -1;
  }

LABEL_42:
  v36 = *MEMORY[0x277CBECE8];
  v37 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(v37, @"paths", Mutable);
  _AddIndexToDictionary(@"META-INF", v78, v37);
  _AddIndexToDictionary(@"mimetype", v77, v37);
  _AddIndexToDictionary(@"Info.plist", v26, v37);
  _AddIndexToDictionary(@"Executable", v34, v37);
  Data = CFPropertyListCreateData(v36, v37, kCFPropertyListXMLFormat_v1_0, 0, 0);
  if (Data)
  {
    v39 = Data;
    Length = CFDataGetLength(Data);
    *__error() = 0;
    v41 = *(&v70[0] + 1);
    BytePtr = CFDataGetBytePtr(v39);
    if (Length != (*(v41 + 48))(*(v41 + 80), BytePtr, Length))
    {
      v43 = *__error();
      v44 = SZGetLoggingHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v63 = strerror(v43);
        *buf = 136315138;
        v87 = v63;
        _os_log_error_impl(&dword_26BC65000, v44, OS_LOG_TYPE_ERROR, "Failed to write entire output dictionary: %s", buf, 0xCu);
      }
    }

    CFRelease(v39);
  }

  else
  {
    v45 = SZGetLoggingHandle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26BC65000, v45, OS_LOG_TYPE_ERROR, "Failed to create output dictionary", buf, 2u);
    }
  }

  CFRelease(v37);
LABEL_50:
  v19 = 1;
LABEL_51:
  v46 = v79;
  if (v79)
  {
    v47 = v81;
    if (v81)
    {
      v48 = v79;
      do
      {
        if (*v48)
        {
          free(*v48);
        }

        ++v48;
        --v47;
      }

      while (v47);
    }

    free(v46);
  }

  if ((v19 & 1) == 0)
  {
    v49 = SZGetLoggingHandle();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v87 = v7;
      _os_log_error_impl(&dword_26BC65000, v49, OS_LOG_TYPE_ERROR, "Failed to process file %s", buf, 0xCu);
    }

    goto LABEL_16;
  }

  CloseZipFile(v11);
  if (v2)
  {
    *v2 = _ConvertStatsToDict(v73);
  }

  result = 1;
LABEL_17:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}