uint64_t sub_1000E323C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (atomic_load((a1 + 120)))
  {
    return 0xFFFFFFFFLL;
  }

  v46 = v8;
  v47 = v9;
  v16 = (a1 + 88);
  v15 = *(a1 + 88);
  if (v15)
  {
    if ((sub_1000E3A2C(a1, a2, a3, a4, a5, a6, a7, a8) & 0x80000000) != 0)
    {
      v29 = "flushing obuf";
      v30 = 884;
LABEL_42:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "afscStreamCloseWithState", v30, 55, 0, v29, a7, a8, v39);
      return 0xFFFFFFFFLL;
    }

    LODWORD(v15) = *v16;
  }

  v17 = *(a1 + 64);
  v39 = *(a1 + 8);
  v40 = *(a1 + 24);
  v18 = *(a1 + 40);
  v41 = *(a1 + 32);
  v42 = v18;
  v43 = *(a1 + 112);
  v44 = v17;
  v45 = v15;
  if (!a2[3])
  {
    goto LABEL_41;
  }

  v19 = 0;
  v20 = *(a1 + 44);
  v21 = &v39;
  v22 = 48;
  while (1)
  {
    v23 = (a2[3])(*a2, v21, v22);
    if (v23 < 1)
    {
      break;
    }

    v21 = (v21 + v23);
    v19 += v23;
    v22 -= v23;
    if (!v22)
    {
      if (v19 < 0)
      {
        goto LABEL_41;
      }

      goto LABEL_13;
    }
  }

  if (v23 < 0)
  {
    goto LABEL_41;
  }

LABEL_13:
  if (!a2[3])
  {
    goto LABEL_41;
  }

  v24 = v20 + 1;
  if (v20 != -1)
  {
    v25 = 0;
    v26 = 4 * v24;
    v27 = *(a1 + 48);
    while (1)
    {
      v28 = (a2[3])(*a2, v27, v26);
      if (v28 < 1)
      {
        break;
      }

      v27 += v28;
      v25 += v28;
      v26 -= v28;
      if (!v26)
      {
        goto LABEL_21;
      }
    }

    v25 = v28;
LABEL_21:
    if (v25 < 0 || !a2[3])
    {
      goto LABEL_41;
    }
  }

  v31 = *(a1 + 64);
  if (v31)
  {
    v32 = 0;
    v33 = *(a1 + 80);
    while (1)
    {
      v34 = (a2[3])(*a2, v33, v31);
      if (v34 < 1)
      {
        break;
      }

      v33 += v34;
      v32 += v34;
      v31 -= v34;
      if (!v31)
      {
        goto LABEL_29;
      }
    }

    v32 = v34;
LABEL_29:
    if (v32 < 0)
    {
      goto LABEL_41;
    }
  }

  if (!a2[3])
  {
    goto LABEL_41;
  }

  v35 = *v16;
  if (*v16)
  {
    v36 = 0;
    v37 = *(a1 + 104);
    while (1)
    {
      v38 = (a2[3])(*a2, v37, v35);
      if (v38 < 1)
      {
        break;
      }

      v37 += v38;
      v36 += v38;
      v35 -= v38;
      if (!v35)
      {
        goto LABEL_37;
      }
    }

    v36 = v38;
LABEL_37:
    if (v36 < 0)
    {
LABEL_41:
      v29 = "serializing state";
      v30 = 901;
      goto LABEL_42;
    }
  }

  if (a3)
  {
    *a3 = *(a1 + 24);
  }

  free(*(a1 + 48));
  free(*(a1 + 56));
  free(*(a1 + 80));
  memset_s((a1 + 64), 0x18uLL, 0, 0x18uLL);
  free(*(a1 + 104));
  memset_s(v16, 0x18uLL, 0, 0x18uLL);
  free(a1);
  return 0;
}

uint64_t sub_1000E34E8(int a1)
{
  memset(&v8, 0, sizeof(v8));
  if (fstat(a1, &v8))
  {
    v2 = *__error();
    v5 = "fstat";
    v6 = 115;
LABEL_3:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "setUFCompressedBit", v6, 55, v2, v5, v3, v4, v8.st_dev);
    return 0xFFFFFFFFLL;
  }

  if ((v8.st_flags & 0x20) == 0 && fchflags(a1, v8.st_flags | 0x20) < 0)
  {
    v2 = *__error();
    v5 = "fchflags UF_COMPRESSED";
    v6 = 120;
    goto LABEL_3;
  }

  return 0;
}

uint64_t sub_1000E35AC(int fd, int a2, unsigned int a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v46 = 0uLL;
  value = 0;
  if (a2 == 4)
  {
    v9 = 8 * a3 + 264;
  }

  else
  {
    v9 = 4 * a3 + 4;
  }

  if (v9 < 0xFFFFFFFF)
  {
    if (a2 == 4)
    {
      v17 = a3;
      if (fsetxattr(fd, "com.apple.ResourceFork", &unk_10037C020, 0x32uLL, a4[a3], 0) < 0)
      {
        v13 = *__error();
        v14 = "fsetxattr resource fork";
        v12 = 379;
        goto LABEL_41;
      }

      v18 = a4[a3];
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v48 = 0u;
      v19 = malloc(0x4000uLL);
      v22 = v19;
      if (!v19)
      {
        v46 = 0uLL;
        v43 = 399;
LABEL_45:
        value = 0;
LABEL_53:
        v45 = "prepare zlib header";
        v44 = 0;
LABEL_54:
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "storeChunkOffsets", v43, 55, v44, v45, v20, v21, v46);
        goto LABEL_42;
      }

      value = v19;
      *v19 = 0x10000;
      *(v19 + 1) = bswap32(v18);
      *(v19 + 2) = bswap32(v18 - 256);
      *(v19 + 3) = 838860800;
      v23 = v61;
      *(v19 + 13) = v60;
      *(v19 + 14) = v23;
      *(v19 + 15) = v62;
      v24 = v57;
      *(v19 + 9) = v56;
      *(v19 + 10) = v24;
      v25 = v59;
      *(v19 + 11) = v58;
      *(v19 + 12) = v25;
      v26 = v53;
      *(v19 + 5) = v52;
      *(v19 + 6) = v26;
      v27 = v55;
      *(v19 + 7) = v54;
      *(v19 + 8) = v27;
      v28 = v49;
      *(v19 + 1) = v48;
      *(v19 + 2) = v28;
      v29 = v51;
      *(v19 + 3) = v50;
      *(v19 + 4) = v29;
      *(v19 + 64) = bswap32(v18 - 260);
      *(v19 + 65) = a3;
      v46 = xmmword_10037C010;
      if (a3)
      {
        v30 = 0;
        v9 = 264;
        v31 = 0x4000;
        while (1)
        {
          v32 = v9 + 8;
          if (v9 >= 0xFFFFFFFFFFFFFFF8 || (v32 & 0x8000000000000000) != 0)
          {
            v43 = 406;
            v22 = value;
            goto LABEL_53;
          }

          v33 = a4[v30++];
          v34 = a4[v30];
          if (v31 < v32)
          {
            break;
          }

LABEL_24:
          *&v22[v9] = (v33 - 260) | ((v34 - v33) << 32);
          v9 = v46 + 8;
          *&v46 = v46 + 8;
          if (v30 == v17)
          {
            v22 = value;
            goto LABEL_49;
          }
        }

        do
        {
          while (!v31)
          {
            v31 = 0x4000;
            v36 = 0x4000;
            if (v32 <= 0x4000)
            {
              goto LABEL_22;
            }
          }

          v35 = v31 >> 1;
          if ((v31 & (v31 >> 1)) != 0)
          {
            v35 = v31 & (v31 >> 1);
          }

          v31 += v35;
        }

        while (v31 < v32);
        v36 = v31;
        if (v31 >= 0x2000000001)
        {
          *__error() = 12;
          goto LABEL_57;
        }

LABEL_22:
        v37 = realloc(v22, v36);
        if (v37)
        {
          *(&v46 + 1) = v36;
          value = v37;
          v22 = v37;
          v31 = v36;
          goto LABEL_24;
        }

        free(v22);
LABEL_57:
        v22 = 0;
        v46 = 0uLL;
        v43 = 406;
        goto LABEL_45;
      }

      v9 = 264;
    }

    else
    {
      v38 = 0;
      do
      {
        while (!v38)
        {
          v38 = 0x4000;
          if (v9 <= 0x4000)
          {
            v38 = 0x4000;
            goto LABEL_36;
          }
        }

        v39 = v38 >> 1;
        if ((v38 & (v38 >> 1)) != 0)
        {
          v39 = v38 & (v38 >> 1);
        }

        v38 += v39;
      }

      while (v38 < v9);
      if (v38 >= 0x2000000001)
      {
        *__error() = 12;
LABEL_39:
        value = 0;
        v46 = 0uLL;
        v14 = "prepare non zlib header";
        v12 = 411;
        v13 = 0;
        goto LABEL_41;
      }

LABEL_36:
      v40 = malloc(v38);
      if (!v40)
      {
        goto LABEL_39;
      }

      v22 = v40;
      *(&v46 + 1) = v38;
      value = v40;
      if (a4)
      {
        memcpy(v40, a4, v9);
      }

      else
      {
        memset_s(v40, v9, 0, v9);
      }

      *&v46 = v9;
    }

LABEL_49:
    if ((fsetxattr(fd, "com.apple.ResourceFork", v22, v9, 0, 0) & 0x80000000) == 0)
    {
      v41 = 0;
      goto LABEL_43;
    }

    v44 = *__error();
    v45 = "fsetxattr resource fork";
    v43 = 420;
    goto LABEL_54;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "resourceForkHeaderSize", 146, 55, 0, "invalid file size", a7, a8, v46);
  v12 = 373;
  v13 = 0;
  v14 = "invalid file size";
LABEL_41:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "storeChunkOffsets", v12, 55, v13, v14, v10, v11, v46);
  v22 = 0;
LABEL_42:
  v41 = 0xFFFFFFFFLL;
LABEL_43:
  free(v22);
  memset_s(&v46, 0x18uLL, 0, 0x18uLL);
  return v41;
}

uint64_t sub_1000E3A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (*(a1 + 8) & 2) != 0 && *(a1 + 32) != 10;
  v10 = *(a1 + 112);
  if (v10)
  {
    if (v10 > 0xD || ((1 << v10) & 0x2A88) == 0)
    {
      v13 = (a1 + 40);
      LODWORD(v12) = *(a1 + 40);
LABEL_15:
      v15 = v10 > 0xD;
      v16 = (1 << v10) & 0x2A88;
      if (!v15 && v16 != 0)
      {
        v18 = "requested compression type requests inline storage";
        v19 = 704;
        v20 = 0;
LABEL_20:
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "flushOBuf", v19, 55, v20, v18, a7, a8, v27);
        return 0xFFFFFFFFLL;
      }

LABEL_21:
      if (!v12)
      {
        v21 = *(a1 + 44);
        v22 = 8 * v21 + 264;
        v23 = 4 * v21 + 4;
        if (*(a1 + 32) == 4)
        {
          v12 = v22;
        }

        else
        {
          v12 = v23;
        }

        v14 = 0xFFFFFFFFLL;
        if (v12 >= 0xFFFFFFFF)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "resourceForkHeaderSize", 146, 55, 0, "invalid file size", a7, a8, v27);
          *v13 = -1;
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "flushOBuf", 714, 55, 0, "File too large for AFSC", v24, v25, v28);
          return v14;
        }

        *v13 = v12;
      }

      if ((fsetxattr(*a1, "com.apple.ResourceFork", *(a1 + 104), *(a1 + 88), v12, 0) & 0x80000000) == 0)
      {
        v14 = 0;
        *(a1 + 40) += *(a1 + 88);
        *(a1 + 88) = 0;
        return v14;
      }

      v20 = *__error();
      v18 = "fsetxattr resource fork";
      v19 = 723;
      goto LABEL_20;
    }
  }

  v13 = (a1 + 40);
  LODWORD(v12) = *(a1 + 40);
  if (v12 != 0 || v9 || *(a1 + 44) != 1 || *(a1 + 24) != *(a1 + 16) || (*(a1 + 88) + 16) >= 0xE01)
  {
    if (!v10)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  return 0;
}

uint64_t sub_1000E3C2C(int a1, int a2, unsigned int a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __s = 0;
  v31 = 0;
  v32 = 0;
  v9 = 4 * a3 + 4;
  if (a2 == 4)
  {
    v10 = 8 * a3 + 264;
  }

  else
  {
    v10 = 4 * a3 + 4;
  }

  if (v10 >= 0xFFFFFFFF)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "resourceForkHeaderSize", 146, 55, 0, "invalid file size", a7, a8, v29);
    v13 = 329;
    v14 = "invalid file size";
LABEL_24:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "loadChunkOffsets", v13, 55, 0, v14, v11, v12, v29);
    v22 = 0;
    goto LABEL_25;
  }

  v18 = 0;
  v19 = a3;
  do
  {
    while (!v18)
    {
      v18 = 0x4000;
      if (v10 <= 0x4000)
      {
        v18 = 0x4000;
        goto LABEL_16;
      }
    }

    v20 = v18 >> 1;
    if ((v18 & (v18 >> 1)) != 0)
    {
      v20 = v18 & (v18 >> 1);
    }

    v18 += v20;
  }

  while (v18 < v10);
  if (v18 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_23:
    v31 = 0;
    v32 = 0;
    __s = 0;
    v14 = "alloc buffer";
    v13 = 332;
    goto LABEL_24;
  }

LABEL_16:
  v21 = malloc(v18);
  if (!v21)
  {
    goto LABEL_23;
  }

  v22 = v21;
  v31 = v18;
  v32 = v21;
  if (fgetxattr(a1, "com.apple.ResourceFork", v21, v10, 0, 32) != v10)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "loadChunkOffsets", 335, 55, 0, "read resource fork header", v23, v24, v29);
LABEL_25:
    v27 = 0xFFFFFFFFLL;
    goto LABEL_26;
  }

  __s = v10;
  if (a2 == 4)
  {
    *a4 = v10;
    if (a3)
    {
      v25 = a4 + 1;
      v26 = 268;
      do
      {
        LODWORD(v10) = v10 + *&v22[v26];
        *v25++ = v10;
        v26 += 8;
        --v19;
      }

      while (v19);
    }
  }

  else
  {
    memcpy(a4, v22, v9);
  }

  v27 = 0;
LABEL_26:
  free(v22);
  memset_s(&__s, 0x18uLL, 0, 0x18uLL);
  return v27;
}

size_t sub_1000E3E68(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_encode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZ4);
  if (!result)
  {
    return -1;
  }

  return result;
}

size_t sub_1000E3E90(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_decode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZ4);
  if (!result)
  {
    return -1;
  }

  return result;
}

size_t sub_1000E3EB8(uint64_t a1, uint64_t a2, __int16 a3, int a4, int a5, const char *a6, uint64_t a7, uint64_t a8, char a9)
{
  bzero(__str, 0x400uLL);
  v13 = ((a3 & 0x3FFF) << 10) | (a4 << 24);
  if (a5 >= 1)
  {
    v14 = strerror(a5);
    snprintf(__str, 0x400uLL, "%s: ", v14);
  }

  v15 = v13 & 0xFFFFFC00 | a5 & 0x3FF;
  v16 = strlen(__str);
  vsnprintf(&__str[v16], 1024 - v16, a6, &a9);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000E43D4(__str, v15 | 0x80000000);
  }

  return ParallelCompressionUpdateError((v15 | 0x80000000), __str);
}

uint64_t sub_1000E3FC4(uint64_t a1, uint64_t a2, __int16 a3, int a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  bzero(__s, 0x400uLL);
  v12 = ((a3 & 0x3FFF) << 10) | (a4 << 24) | 0x80000000;
  v13 = strlen(__s);
  vsnprintf(&__s[v13], 1024 - v13, a5, &a9);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v16 = v12;
    v17 = 2082;
    v18 = __s;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "[0x%08x](warning) %{public}s", buf, 0x12u);
  }

  return ParallelCompressionUpdateWarning(v12, __s);
}

void sub_1000E40D8(uint64_t a1, uint64_t a2, __int16 a3, int a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  bzero(__s, 0x400uLL);
  v12 = strlen(__s);
  vsnprintf(&__s[v12], 1024 - v12, a5, &a9);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v14 = ((a3 & 0x3FFF) << 10) | (a4 << 24) | 0x80000000;
    v15 = 2082;
    v16 = __s;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "[0x%08x] %{public}s", buf, 0x12u);
  }
}

uint64_t sub_1000E41E0(const char *a1, const char *a2, int a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  bzero(__str, 0x400uLL);
  if (*a1)
  {
    v13 = a1;
    v14 = a1;
    do
    {
      if (v13 > a1 && *(v13 - 1) == 47)
      {
        v14 = v13;
      }
    }

    while (*++v13);
  }

  else
  {
    v14 = a1;
  }

  snprintf(__str, 0x400uLL, "%s:%s:%d: ", v14, a2, a3);
  v16 = strlen(__str);
  vsnprintf(&__str[v16], 1024 - v16, a5, &a9);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_1000E4460(__str);
  }

  return fputs(__str, __stderrp);
}

uint64_t sub_1000E430C(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v12 = 0;
  *__s = 0u;
  v14 = 0u;
  time(&v12);
  ctime_r(&v12, __s);
  v10 = strlen(__s);
  if (v10)
  {
    __s[v10 - 1] = 0;
  }

  fprintf(__stderrp, "[%s] ", __s);
  return vfprintf(__stderrp, a1, &a9);
}

void sub_1000E43D4(uint64_t a1, int a2)
{
  v2[0] = 67109378;
  v2[1] = a2;
  v3 = 2082;
  v4 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[0x%08x] %{public}s", v2, 0x12u);
}

void sub_1000E4460(uint64_t a1)
{
  v1 = 136446210;
  v2 = a1;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%{public}s", &v1, 0xCu);
}

uint64_t sub_1000E44E0(void *a1, void *__src, rsize_t __smax, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0;
  if ((__smax & 0x8000000000000000) != 0)
  {
LABEL_21:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "aaEntryYECBlobInitWithEncodedData", 22, 105, 0, "malloc", a7, a8, v17);
    return 0xFFFFFFFFLL;
  }

  v11 = a1[1];
  if (v11 < __smax)
  {
    do
    {
      while (!v11)
      {
        v11 = 0x4000;
        if (__smax <= 0x4000)
        {
          v11 = 0x4000;
          goto LABEL_12;
        }
      }

      v12 = v11 >> 1;
      if ((v11 & (v11 >> 1)) != 0)
      {
        v12 = v11 & (v11 >> 1);
      }

      v11 += v12;
    }

    while (v11 < __smax);
    if (v11 >= 0x2000000001)
    {
      *__error() = 12;
      goto LABEL_20;
    }

LABEL_12:
    v13 = a1[2];
    v14 = realloc(v13, v11);
    if (v14)
    {
      a1[1] = v11;
      a1[2] = v14;
      goto LABEL_14;
    }

    free(v13);
LABEL_20:
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    goto LABEL_21;
  }

LABEL_14:
  v15 = a1[2];
  if (__src)
  {
    memcpy((v15 + *a1), __src, __smax);
  }

  else if (v15)
  {
    memset_s((v15 + *a1), __smax, 0, __smax);
  }

  result = 0;
  *a1 += __smax;
  return result;
}

uint64_t sub_1000E4624(void *a1, int a2, char *a3, const char *a4)
{
  v4 = a3;
  if ((sub_1000F4680(v23, 0x800uLL, a3, a4) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "aaEntryYECBlobInitWithPath", 34, 105, 0, "invalid path %s/%s", v7, v8, v4);
    return 0xFFFFFFFFLL;
  }

  v9 = open(v23, 0);
  if (v9 < 0)
  {
    v19 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "aaEntryYECBlobInitWithPath", 38, 105, v19, "open: %s", v20, v21, v23);
    return 0xFFFFFFFFLL;
  }

  v15 = v9;
  if ((aaEntryYECBlobInitWithFD(a1, a2, v9, v10, v11, v12, v13, v14) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "aaEntryYECBlobInitWithPath", 40, 105, 0, "computing YEC blob: %s", v16, v17, v23);
    v18 = 0xFFFFFFFFLL;
  }

  else
  {
    v18 = 0;
  }

  close(v15);
  return v18;
}

uint64_t aaEntryYECBlobInitWithFD(void *a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 == 65552)
  {
    memset(&v39, 0, sizeof(v39));
    if (!fstat(a3, &v39) && (v39.st_mode & 0xF000) == 0x8000)
    {
      st_size = v39.st_size;
      v15 = sub_1000FE0F8(a3, 0, v39.st_size);
      if (v15)
      {
        v18 = sub_10011CA50(1, 0x4000u, st_size);
        if (v18)
        {
          v19 = sub_100120834(0x10000uLL);
          v22 = v19;
          if (v19)
          {
            v23 = sub_100120FD4(v19, st_size, sub_1000FE21C, v15, sub_10011CCD0, v18, v20, v21);
            if ((v23 & 0x8000000000000000) == 0 && v23 == st_size)
            {
              v24 = sub_10011CCB8(v18);
              v25 = sub_10011CCA0(v18);
              *a1 = 0;
              if ((v24 & 0x8000000000000000) != 0)
              {
LABEL_41:
                v29 = "alloc blob failed";
                v30 = 89;
                goto LABEL_19;
              }

              v26 = v25;
              v27 = a1[1];
              if (v27 < v24)
              {
                do
                {
                  while (!v27)
                  {
                    v27 = 0x4000;
                    if (v24 <= 0x4000)
                    {
                      v27 = 0x4000;
                      goto LABEL_32;
                    }
                  }

                  v28 = v27 >> 1;
                  if ((v27 & (v27 >> 1)) != 0)
                  {
                    v28 = v27 & (v27 >> 1);
                  }

                  v27 += v28;
                }

                while (v27 < v24);
                if (v27 >= 0x2000000001)
                {
                  *__error() = 12;
                  goto LABEL_40;
                }

LABEL_32:
                v35 = a1[2];
                v36 = realloc(v35, v27);
                if (v36)
                {
                  a1[1] = v27;
                  a1[2] = v36;
                  goto LABEL_34;
                }

                free(v35);
LABEL_40:
                a1[1] = 0;
                a1[2] = 0;
                *a1 = 0;
                goto LABEL_41;
              }

LABEL_34:
              v37 = a1[2];
              if (v26)
              {
                memcpy((v37 + *a1), v26, v24);
              }

              else if (v37)
              {
                memset_s((v37 + *a1), v24, 0, v24);
              }

              v31 = 0;
              *a1 += v24;
LABEL_22:
              sub_1000FE0A0(v15);
              sub_10011CC54(v18);
              sub_100120944(v22);
              return v31;
            }

            v33 = "reading file data for ECC";
            v34 = 84;
          }

          else
          {
            v33 = "allocating mem buffer";
            v34 = 80;
          }

          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "aaEntryYECBlobInitWithFD", v34, 105, 0, v33, v20, v21, v38);
LABEL_21:
          v31 = 0xFFFFFFFFLL;
          goto LABEL_22;
        }

        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "aaEntryYECBlobInitWithFD", 78, 105, 0, "creating the ECC stream", v16, v17, v38);
      }

      else
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "aaEntryYECBlobInitWithFD", 76, 105, 0, "opening file", v13, v14, v38);
        v18 = 0;
      }

      v22 = 0;
      goto LABEL_21;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "aaEntryYECBlobInitWithFD", 71, 105, 0, "entry not found, or not a regular file", v10, v11, v38);
    v18 = 0;
    v22 = 0;
    v15 = 0;
    goto LABEL_21;
  }

  v38 = a2;
  v29 = "invalid YEC variant: %u";
  v30 = 57;
LABEL_19:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "aaEntryYECBlobInitWithFD", v30, 105, 0, v29, a7, a8, v38);
  return 0xFFFFFFFFLL;
}

void *AAEntryYECBlobCreate()
{
  v0 = malloc(0x18uLL);
  v1 = v0;
  if (v0)
  {
    memset_s(v0, 0x18uLL, 0, 0x18uLL);
  }

  else
  {
    v2 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "AAEntryYECBlobCreate", 105, 105, *v2, "malloc", v3, v4, v6);
  }

  return v1;
}

void AAEntryYECBlobDestroy(void **a1)
{
  if (a1)
  {
    free(a1[2]);
    memset_s(a1, 0x18uLL, 0, 0x18uLL);

    free(a1);
  }
}

void **AAEntryYECBlobCreateWithEncodedData(void *a1, rsize_t a2)
{
  v4 = AAEntryYECBlobCreate();
  v10 = v4;
  if (v4 && (sub_1000E44E0(v4, a1, a2, v5, v6, v7, v8, v9) & 0x80000000) != 0)
  {
    AAEntryYECBlobDestroy(v10);
    return 0;
  }

  return v10;
}

void **AAEntryYECBlobCreateWithPath(int a1, char *a2, const char *a3)
{
  v6 = AAEntryYECBlobCreate();
  v7 = v6;
  if (v6 && (sub_1000E4624(v6, a1, a2, a3) & 0x80000000) != 0)
  {
    AAEntryYECBlobDestroy(v7);
    return 0;
  }

  return v7;
}

uint64_t AAEntryYECBlobApplyToPath(uint64_t a1, char *__s, const char *a3, int *a4, uint64_t a5, int a6)
{
  v8 = __s;
  memset(&v31, 0, sizeof(v31));
  __sa[0] = 0;
  __sa[1] = 0;
  v30 = 0;
  if ((sub_1000F4680(v32, 0x800uLL, __s, a3) & 0x80000000) != 0)
  {
    LOBYTE(v28) = v8;
    v22 = "invalid path %s/%s";
    v23 = 153;
    goto LABEL_12;
  }

  if (lstat(v32, &v31) || (v31.st_mode & 0xF000) != 0x8000)
  {
    v28 = v32;
    v22 = "entry not found, or not a regular file: %s";
    v23 = 156;
LABEL_12:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "AAEntryYECBlobApplyToPath", v23, 105, 0, v22, v10, v11, v28);
    goto LABEL_13;
  }

  st_size = v31.st_size;
  memset_s(__sa, 0x18uLL, 0, 0x18uLL);
  HIDWORD(__sa[0]) = a6;
  v13 = open(v32, 2);
  if ((v13 & 0x80000000) == 0)
  {
    v14 = v13;
    v15 = ParallelArchiveECCFixFileSegment(v13, 0, st_size, *(a1 + 16), *a1, __sa);
    v18 = HIDWORD(v30);
    if (v15 < 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "AAEntryYECBlobApplyToPath", 166, 105, 0, "file can't be fixed: %s", v16, v17, v32);
    }

    else
    {
      if (!v15 || !sub_1000F5A84(v31.st_flags) || (ParallelCompressionAFSCCompress(v32, 1) & 0x80000000) == 0)
      {
        v21 = 0;
        goto LABEL_19;
      }

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "AAEntryYECBlobApplyToPath", 171, 105, 0, "file can't be re-compressed: %s", v19, v20, v32);
    }

    v21 = 0xFFFFFFFFLL;
LABEL_19:
    close(v14);
    if (!a4)
    {
      return v21;
    }

    goto LABEL_14;
  }

  v25 = *__error();
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "AAEntryYECBlobApplyToPath", 163, 105, v25, "opening file RW: %s", v26, v27, v32);
LABEL_13:
  v21 = 0xFFFFFFFFLL;
  v18 = -1;
  if (a4)
  {
LABEL_14:
    *a4 = v18;
  }

  return v21;
}

AAFieldKeySet AAFieldKeySetCreate(void)
{
  v0 = malloc(0x10uLL);
  v1 = v0;
  if (v0)
  {
    memset_s(v0, 0x10uLL, 0, 0x10uLL);
  }

  else
  {
    v2 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "AAFieldKeySetCreate", 63, 103, *v2, "malloc", v3, v4, v6);
  }

  return v1;
}

AAFieldKeySet AAFieldKeySetCreateWithString(const char *s)
{
  v2 = AAFieldKeySetCreate();
  if (!v2)
  {
    goto LABEL_43;
  }

  v3 = strlen(s);
  v6 = v3 + 1;
  if (((v3 + 1) & 3) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "AAFieldKeySetCreateWithString", 73, 103, 0, "Invalid KeySet string length: %zu", v4, v5, v3 + 1);
    return 0;
  }

  if (v6 >= 0x3FFFFFFFDLL)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "AAFieldKeySetCreateWithString", 75, 103, 0, "String too long: %zu", v4, v5, v3 + 1);
    return 0;
  }

  v7 = v6 >> 2;
  if (((v6 >> 2) & 0x80000000) != 0)
  {
LABEL_42:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "AAFieldKeySetCreateWithString", 77, 103, 0, "realloc_keys", v4, v5, v28);
LABEL_43:
    AAFieldKeySetDestroy(v2);
    return 0;
  }

  v8 = *(v2 + 1);
  if (v8 < v7)
  {
    do
    {
      if (v8)
      {
        v8 += v8 >> 1;
      }

      else
      {
        v8 = 16;
      }
    }

    while (v8 < v7);
    v9 = *(v2 + 1);
    v10 = realloc(v9, 4 * v8);
    if (v10)
    {
      v11 = v10;
      *(v2 + 1) = v10;
      *(v2 + 1) = v8;
      goto LABEL_15;
    }

    free(v9);
    *(v2 + 1) = 0;
    v24 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "realloc_keys", 17, 103, *v24, "malloc", v25, v26, v28);
    *v2 = 0;
    goto LABEL_42;
  }

  v11 = *(v2 + 1);
LABEL_15:
  memcpy(v11, s, v6);
  if (v6)
  {
    v12 = v6;
    do
    {
      *v11 = __toupper(*v11);
      ++v11;
      --v12;
    }

    while (v12);
    *v2 = v7;
    v15 = 0;
    if (v7 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v7;
    }

    while (1)
    {
      v17 = *(v2 + 1) + v15;
      if (*(v17 + 3))
      {
        if (*(v17 + 3) != 44)
        {
          break;
        }
      }

      *(v17 + 3) = 0;
      v18 = *(*(v2 + 1) + v15);
      if (v18 > 0x7F)
      {
        v19 = __maskrune(v18, 0x500uLL);
      }

      else
      {
        v19 = _DefaultRuneLocale.__runetype[v18] & 0x500;
      }

      if (!v19 || ((v20 = v18 >> 8, v20 > 0x7F) ? (v21 = __maskrune(v20, 0x500uLL)) : (v21 = _DefaultRuneLocale.__runetype[v20] & 0x500), !v21 || ((v22 = (v18 << 8) >> 24, v22 > 0x7F) ? (v23 = __maskrune(v22, 0x500uLL)) : (v23 = _DefaultRuneLocale.__runetype[v22] & 0x500), HIBYTE(v18) || !v23)))
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "AAFieldKeySetCreateWithString", 88, 103, 0, "invalid key set: %s", v13, v14, s);
        goto LABEL_43;
      }

      v15 += 4;
      if (!--v16)
      {
        goto LABEL_39;
      }
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "AAFieldKeySetCreateWithString", 86, 103, 0, "invalid key set: %s", v13, v14, s);
    goto LABEL_43;
  }

  *v2 = v7;
LABEL_39:
  qsort(*(v2 + 1), v7, 4uLL, sub_1000E5240);
  return v2;
}

void AAFieldKeySetDestroy(AAFieldKeySet key_set)
{
  if (key_set)
  {
    free(*(key_set + 1));

    free(key_set);
  }
}

AAFieldKeySet AAFieldKeySetClone(AAFieldKeySet key_set)
{
  v2 = AAFieldKeySetCreate();
  v5 = v2;
  if (!v2)
  {
    goto LABEL_15;
  }

  v6 = *key_set;
  if (v6)
  {
    if ((v6 & 0x80000000) == 0)
    {
      v7 = *(v2 + 1);
      if (v7 >= v6)
      {
        v9 = *(v2 + 1);
        goto LABEL_12;
      }

      do
      {
        if (v7)
        {
          v7 += v7 >> 1;
        }

        else
        {
          v7 = 16;
        }
      }

      while (v7 < v6);
      v8 = *(v2 + 1);
      v9 = realloc(v8, 4 * v7);
      if (v9)
      {
        *(v5 + 1) = v9;
        *(v5 + 1) = v7;
LABEL_12:
        *v5 = v6;
        memcpy(v9, *(key_set + 1), 4 * v6);
        return v5;
      }

      free(v8);
      *(v5 + 1) = 0;
      v10 = __error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "realloc_keys", 17, 103, *v10, "malloc", v11, v12, v14);
      *v5 = 0;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "AAFieldKeySetClone", 106, 103, 0, "realloc_keys", v3, v4, v14);
LABEL_15:
    AAFieldKeySetDestroy(v5);
    return 0;
  }

  return v5;
}

int AAFieldKeySetContainsKey(AAFieldKeySet key_set, AAFieldKey key)
{
  v3 = 0;
  v10 = key;
  v11 = 0;
  do
  {
    *(&v11 + v3) = __toupper(v10.skey[v3]);
    ++v3;
  }

  while (v3 != 3);
  v4 = *key_set;
  if (*key_set && (v5 = *(key_set + 1), *v5 < v11))
  {
    v6 = v4 - 1;
    v7 = v5[v4 - 1];
    if (v7 < v11)
    {
      return 0;
    }

    if (v4 < 3)
    {
      return v7 == v11;
    }

    v8 = 0;
    do
    {
      if (v5[(v8 + v6) >> 1] >= v11)
      {
        v6 = (v8 + v6) >> 1;
      }

      else
      {
        v8 = (v8 + v6) >> 1;
      }
    }

    while (v6 - v8 > 1);
  }

  else
  {
    v6 = 0;
  }

  if (v6 < v4)
  {
    v7 = *(*(key_set + 1) + 4 * v6);
    return v7 == v11;
  }

  return 0;
}

int AAFieldKeySetInsertKey(AAFieldKeySet key_set, AAFieldKey key)
{
  v3 = 0;
  v22 = key;
  v23 = 0;
  do
  {
    *(&v23 + v3) = __toupper(v22.skey[v3]);
    ++v3;
  }

  while (v3 != 3);
  v6 = *key_set;
  v7 = *key_set + 1;
  if (v7 < 0)
  {
    goto LABEL_21;
  }

  v8 = v23;
  v9 = *(key_set + 1);
  if (v9 < v7)
  {
    do
    {
      if (v9)
      {
        v9 += v9 >> 1;
      }

      else
      {
        v9 = 16;
      }
    }

    while (v9 < v7);
    v10 = *(key_set + 1);
    v11 = realloc(v10, 4 * v9);
    if (v11)
    {
      *(key_set + 1) = v11;
      *(key_set + 1) = v9;
      v6 = *key_set;
      goto LABEL_11;
    }

    free(v10);
    *(key_set + 1) = 0;
    v17 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "realloc_keys", 17, 103, *v17, "malloc", v18, v19, v21);
    *key_set = 0;
LABEL_21:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "AAFieldKeySetInsertKey", 139, 103, 0, "realloc_keys failed", v4, v5, v21);
    return -1;
  }

LABEL_11:
  if (!v6 || (v12 = *(key_set + 1), *v12 >= v8))
  {
    v13 = 0;
    goto LABEL_16;
  }

  v13 = v6 - 1;
  v14 = v12[v6 - 1];
  if (v14 >= v8)
  {
    if (v6 < 3)
    {
      v15 = v13;
      goto LABEL_18;
    }

    v20 = 0;
    do
    {
      if (v12[(v20 + v13) >> 1] >= v8)
      {
        v13 = (v20 + v13) >> 1;
      }

      else
      {
        v20 = (v20 + v13) >> 1;
      }
    }

    while (v13 - v20 > 1);
LABEL_16:
    if (v13 >= v6)
    {
      goto LABEL_23;
    }

    v12 = *(key_set + 1);
    v15 = v13;
    v14 = v12[v13];
LABEL_18:
    if (v14 == v8)
    {
      return 0;
    }

    memmove(&v12[v15 + 1], &v12[v15], 4 * (v6 - v13));
    goto LABEL_23;
  }

  v13 = v6;
LABEL_23:
  result = 0;
  *(*(key_set + 1) + 4 * v13) = v8;
  ++*key_set;
  return result;
}

int AAFieldKeySetRemoveKey(AAFieldKeySet key_set, AAFieldKey key)
{
  v3 = 0;
  v14 = key;
  v15 = 0;
  do
  {
    *(&v15 + v3) = __toupper(v14.skey[v3]);
    ++v3;
  }

  while (v3 != 3);
  v4 = *key_set;
  if (!v4 || (v5 = *(key_set + 1), *v5 >= v15))
  {
    v6 = 0;
LABEL_14:
    if (v6 == v4)
    {
      return 0;
    }

    v5 = *(key_set + 1);
    v9 = v6;
    v7 = v5[v6];
    goto LABEL_16;
  }

  v6 = v4 - 1;
  v7 = v5[v4 - 1];
  if (v7 < v15)
  {
    return 0;
  }

  if (v4 >= 3)
  {
    v8 = 0;
    do
    {
      if (v5[(v8 + v6) >> 1] >= v15)
      {
        v6 = (v8 + v6) >> 1;
      }

      else
      {
        v8 = (v8 + v6) >> 1;
      }
    }

    while (v6 - v8 > 1);
    goto LABEL_14;
  }

  v9 = v4 - 1;
LABEL_16:
  if (v7 == v15)
  {
    v10 = v4 - 1;
    *key_set = v10;
    v11 = __OFSUB__(v10, v6);
    v12 = v10 - v6;
    if (!((v12 < 0) ^ v11 | (v12 == 0)))
    {
      memmove(&v5[v9], &v5[v9 + 1], 4 * v12);
    }
  }

  return 0;
}

int AAFieldKeySetInsertKeySet(AAFieldKeySet key_set, AAFieldKeySet s)
{
  v4 = *s;
  if (v4)
  {
    v6 = *(s + 1);
    v7 = *key_set;
    v8 = *(key_set + 1);
    *key_set = 0;
    *(key_set + 1) = 0;
    v9 = v7 + v4;
    if (v7 + v4 >= 0)
    {
      if (!v9)
      {
LABEL_11:
        if (v7)
        {
          v12 = 0;
          v13 = 0;
          v14 = 0;
          while (1)
          {
            v15 = v8[v14];
            v16 = *(v6 + 4 * v13);
            if (v15 == v16)
            {
              *(*(key_set + 1) + 4 * v12) = v15;
              ++v14;
            }

            else
            {
              v17 = *(key_set + 1);
              if (v15 < v16)
              {
                *(v17 + 4 * v12) = v15;
                ++v14;
                goto LABEL_19;
              }

              *(v17 + 4 * v12) = v16;
            }

            ++v13;
LABEL_19:
            ++v12;
            if (v14 >= v7 || v13 >= v4)
            {
              goto LABEL_23;
            }
          }
        }

        v14 = 0;
        v13 = 0;
        v12 = 0;
LABEL_23:
        if (v14 >= v7)
        {
          v20 = v12;
        }

        else
        {
          v18 = &v8[v14];
          v19 = v7 - v14;
          do
          {
            v20 = v12 + 1;
            v21 = *v18++;
            *(*(key_set + 1) + 4 * v12++) = v21;
            --v19;
          }

          while (v19);
        }

        if (v13 >= v4)
        {
          v24 = v20;
        }

        else
        {
          v22 = (v6 + 4 * v13);
          v23 = v4 - v13;
          do
          {
            v24 = v20 + 1;
            v25 = *v22++;
            *(*(key_set + 1) + 4 * v20++) = v25;
            --v23;
          }

          while (v23);
        }

        LODWORD(v4) = 0;
        *key_set = v24;
        goto LABEL_36;
      }

      v10 = 0;
      do
      {
        if (v10)
        {
          v10 += v10 >> 1;
        }

        else
        {
          v10 = 16;
        }
      }

      while (v10 < v9);
      v11 = malloc(4 * v10);
      if (v11)
      {
        *(key_set + 1) = v11;
        *(key_set + 1) = v10;
        goto LABEL_11;
      }

      *(key_set + 1) = 0;
      v26 = __error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "realloc_keys", 17, 103, *v26, "malloc", v27, v28, v30);
      *key_set = 0;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "AAFieldKeySetInsertKeySet", 178, 103, 0, "realloc_keys", v2, v3, v30);
    LODWORD(v4) = -1;
LABEL_36:
    free(v8);
  }

  return v4;
}

int AAFieldKeySetRemoveKeySet(AAFieldKeySet key_set, AAFieldKeySet s)
{
  v2 = *s;
  if (v2)
  {
    v3 = *key_set;
    v4 = *(key_set + 1);
    if (v3)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = *(s + 1);
      while (1)
      {
        v9 = *(v4 + 4 * v7);
        v10 = *(v8 + 4 * v6);
        if (v9 == v10)
        {
          ++v7;
        }

        else if (v9 < v10)
        {
          *(*(key_set + 1) + 4 * v5++) = v9;
          ++v7;
          goto LABEL_9;
        }

        ++v6;
LABEL_9:
        if (v7 >= v3 || v6 >= v2)
        {
          goto LABEL_13;
        }
      }
    }

    v7 = 0;
    v5 = 0;
LABEL_13:
    if (v7 >= v3)
    {
      v13 = v5;
    }

    else
    {
      v11 = (v4 + 4 * v7);
      v12 = v3 - v7;
      do
      {
        v13 = v5 + 1;
        v14 = *v11++;
        *(*(key_set + 1) + 4 * v5++) = v14;
        --v12;
      }

      while (v12);
    }

    *key_set = v13;
  }

  return 0;
}

int AAFieldKeySetSelectKeySet(AAFieldKeySet key_set, AAFieldKeySet s)
{
  v2 = *s;
  if (v2 && (v3 = *key_set, v3))
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = *(s + 1);
    v8 = *(key_set + 1);
    do
    {
      v9 = *(v8 + 4 * v6);
      v10 = *(v7 + 4 * v5);
      if (v9 == v10)
      {
        *(*(key_set + 1) + 4 * v4++) = v9;
        ++v6;
        ++v5;
      }

      else if (v9 >= v10)
      {
        ++v5;
      }

      else
      {
        ++v6;
      }
    }

    while (v6 < v3 && v5 < v2);
  }

  else
  {
    v4 = 0;
  }

  *key_set = v4;
  return 0;
}

int AAFieldKeySetSerialize(AAFieldKeySet key_set, size_t capacity, char *s)
{
  v3 = *key_set;
  if (v3)
  {
    if (capacity >= 4 * v3)
    {
      if (v3 >= 1)
      {
        v4 = 0;
        v5 = s;
        do
        {
          *v5 = *(*(key_set + 1) + 4 * v4);
          if (v4)
          {
            *(v5 - 1) = 44;
          }

          ++v4;
          v5 += 4;
        }

        while (v4 < *key_set);
        LODWORD(v3) = *key_set;
      }

      s += (4 * v3 - 1);
      goto LABEL_11;
    }
  }

  else if (capacity)
  {
LABEL_11:
    result = 0;
    *s = 0;
    return result;
  }

  return -1;
}

uint64_t AEADecryptAndExtractChunk(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, unsigned int a11)
{
  v30[3] = a6;
  v31 = 0;
  v30[0] = a2;
  v30[1] = a5;
  v30[2] = a7;
  v32 = a10 >> 62;
  ChunkAsyncStreamOpen = AEADecryptAndExtractChunkAsyncStreamOpen(a3, a4, v30, sub_1000E5D3C, sub_1000E6018, sub_1000E6030, a8, a9, a10, a11);
  v15 = ChunkAsyncStreamOpen;
  if (!ChunkAsyncStreamOpen)
  {
    v19 = "AEADecryptAndExtractAsyncStreamOpen";
    v20 = 96;
LABEL_18:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtract.c", "AEADecryptAndExtractChunk", v20, 117, 0, v19, v13, v14, v27);
    v21 = 0;
    goto LABEL_19;
  }

  if (!a1[10])
  {
    if ((AAAsyncByteStreamProcessAllRanges(ChunkAsyncStreamOpen, a1, a10, a11) & 0x8000000000000000) == 0)
    {
      v21 = 1;
      goto LABEL_19;
    }

    v19 = "AAAsyncByteStreamProcessAllRanges";
    v20 = 124;
    goto LABEL_18;
  }

  while (1)
  {
    v28 = 0;
    v29 = 0;
    Range = AAAsyncByteStreamGetRange(v15, &v29, &v28);
    if (Range < 0)
    {
      break;
    }

    if (Range)
    {
      if (!v29)
      {
        v21 = 1;
        goto LABEL_16;
      }

      if ((AAByteStreamPReadAsync(a1) & 0x80000000) != 0)
      {
        v22 = "AAByteStreamPReadAsync";
        v23 = 113;
        goto LABEL_15;
      }
    }

    else
    {
      usleep(0x186A0u);
    }
  }

  v22 = "AAAsyncByteStreamGetRange";
  v23 = 108;
LABEL_15:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtract.c", "AEADecryptAndExtractChunk", v23, 117, 0, v22, v17, v18, v27);
  v21 = 0;
LABEL_16:
  if ((AAByteStreamPReadAsync(a1) & 0x80000000) != 0)
  {
    v19 = "AAByteStreamPReadAsync barrier";
    v20 = 118;
    goto LABEL_18;
  }

LABEL_19:
  if ((AAAsyncByteStreamClose(v15) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtract.c", "AEADecryptAndExtractChunk", 128, 117, 0, "AAAsyncByteStreamClose", v24, v25, v27);
    v21 = 0;
  }

  if (v21)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1000E5D3C(uint64_t result, _OWORD *context)
{
  v3 = result;
  v4 = *result;
  if (*(result + 32))
  {
    *v4 = *context;
    v5 = context[1];
    v6 = context[2];
    v7 = context[3];
    *(v4 + 64) = *(context + 8);
    *(v4 + 32) = v6;
    *(v4 + 48) = v7;
    *(v4 + 16) = v5;
    if (*(result + 36))
    {
      v8 = __stderrp;
      FieldUInt = AEAContextGetFieldUInt(context, 3u);
      if (FieldUInt <= 1284)
      {
        switch(FieldUInt)
        {
          case 0:
            v14 = "none";
            goto LABEL_25;
          case 256:
            v14 = "lz4";
            goto LABEL_25;
          case 774:
            v14 = "lzma";
LABEL_25:
            v15 = AEAContextGetFieldUInt(context, 4u);
            fprintf(v8, "  compression: %s %zu MB\n", v14, v15 >> 20);
            v16 = __stderrp;
            v17 = AEAContextGetFieldUInt(context, 2u);
            if (v17 > 2)
            {
              v18 = "???";
            }

            else
            {
              v18 = off_1004835E0[v17 & 3];
            }

            fprintf(v16, "  checksum: %s\n", v18);
            v19 = __stderrp;
            v20 = AEAContextGetFieldUInt(context, 0xEu);
            fprintf(v19, "  container size: %llu B\n", v20);
            v21 = __stderrp;
            v22 = AEAContextGetFieldUInt(context, 0xDu);
            fprintf(v21, "  raw size: %llu B\n", v22);
            return 0;
        }
      }

      else
      {
        if (FieldUInt <= 2048)
        {
          if (FieldUInt == 1285)
          {
            v14 = "zlib";
            goto LABEL_25;
          }

          if (FieldUInt != 1794)
          {
            goto LABEL_22;
          }

          goto LABEL_20;
        }

        if (FieldUInt == 2049)
        {
LABEL_20:
          v14 = "lzfse";
          goto LABEL_25;
        }

        if (FieldUInt == 2304)
        {
          v14 = "lzvn";
          goto LABEL_25;
        }
      }

LABEL_22:
      v14 = "???";
      goto LABEL_25;
    }

    return 0;
  }

  v10 = *(v4 + 1112);
  if (v10 < 0x101)
  {
    memcpy(context + 1116, (v4 + 1116), *(v4 + 1112));
    *(context + 278) = v10;
    result = memset_s(context + v10 + 1116, 256 - v10, 0, 256 - v10);
    v11 = *(*v3 + 72);
    if (v11 < 0x101)
    {
      memcpy(context + 76, (*v3 + 76), *(*v3 + 72));
      *(context + 18) = v11;
      result = memset_s(context + v11 + 76, 256 - v11, 0, 256 - v11);
      v12 = *(*v3 + 2152);
      if (v12 < 0x101)
      {
        memcpy(context + 2156, (*v3 + 2156), *(*v3 + 2152));
        *(context + 538) = v12;
        result = memset_s(context + v12 + 2156, 256 - v12, 0, 256 - v12);
        v13 = *(*v3 + 332);
        if (v13 < 0x101)
        {
          memcpy(context + 21, (*v3 + 336), *(*v3 + 332));
          *(context + 83) = v13;
          memset_s(context + v13 + 336, 256 - v13, 0, 256 - v13);
          v3[8] = 1;
          return 0;
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000E6018(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    return v1(*(a1 + 8));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000E6030(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return v1(*(a1 + 8));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000E6078(unsigned int a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 0x1FFE0)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = (a1 & 1) + a1;
  if (v4)
  {
    v5 = 0uLL;
    v6 = vmvnq_s8(vuzp1q_s16(vceqzq_s32(xmmword_10037C120), vceqzq_s32(qword_10037C130)));
    v7 = vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqzq_s32(xmmword_10037C100), vceqzq_s32(unk_10037C110))));
    v8.i64[0] = 0xFFFF0000FFFFLL;
    v8.i64[1] = 0xFFFF0000FFFFLL;
    v9.i64[0] = 0x1000100010001;
    v9.i64[1] = 0x1000100010001;
    v10.i64[0] = 0x1000100010001;
    v10.i64[1] = 0x1000100010001;
    v11.i64[0] = 0x100000001;
    v11.i64[1] = 0x100000001;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    do
    {
      v15 = v4 - 2;
      if (v4 <= a1)
      {
        v16 = *(a2 + v15);
      }

      else
      {
        v16 = *(a2 + v15);
      }

      v17 = vextq_s8(v5, v12, 0xCuLL);
      v18 = vextq_s8(v12, v13, 0xCuLL);
      v19 = vextq_s8(v13, v14, 0xCuLL);
      v20 = vdupq_laneq_s32(v14, 3);
      v21 = vextq_s8(qword_10037C130, v5, 0xCuLL);
      v21.i32[0] = v16;
      v22 = vmulq_laneq_s32(xmmword_10037C100, v14, 3);
      v23 = vmulq_laneq_s32(unk_10037C110, v14, 3);
      v24 = vmulq_laneq_s32(xmmword_10037C120, v14, 3);
      v25 = vmulq_laneq_s32(qword_10037C130, v14, 3);
      v26 = vceqzq_s32(v20);
      v27 = vuzp1q_s16(v26, v26);
      v28 = vuzp1q_s16(vceqzq_s32(v24), vceqzq_s32(v25));
      v29 = vmovn_s16(vuzp1q_s16(vceqzq_s32(v22), vceqzq_s32(v23)));
      v30 = vsubq_s32(vandq_s8(v25, v8), vshrq_n_u32(v25, 0x10uLL));
      v31 = vsubq_s32(vandq_s8(v24, v8), vshrq_n_u32(v24, 0x10uLL));
      v32 = vsubq_s32(vandq_s8(v23, v8), vshrq_n_u32(v23, 0x10uLL));
      v33 = vsubq_s32(vandq_s8(v22, v8), vshrq_n_u32(v22, 0x10uLL));
      v34 = vand_s8(vand_s8(v7, v29), vmovn_s16(vmvnq_s8(v27)));
      *v27.i8 = vmovn_s16(vandq_s8(vbicq_s8(v6, v27), v28));
      v35 = vsubq_s32(v19, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v27.i8, 0xB4200003C1CLL)), 0x1FuLL)), v11, vaddq_s32(v30, vandq_s8(vcgtq_u32(v30, v10), v9))));
      v36 = vsubq_s32(v18, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v27.i8, 0xB4200003C1CLL)), 0x1FuLL)), v11, vaddq_s32(v31, vandq_s8(vcgtq_u32(v31, v10), v9))));
      v37 = vsubq_s32(v17, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v34, 0xB4200003C1CLL)), 0x1FuLL)), v11, vaddq_s32(v32, vandq_s8(vcgtq_u32(v32, v10), v9))));
      v38 = vsubq_s32(v21, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v34, 0xB4200003C1CLL)), 0x1FuLL)), v11, vaddq_s32(v33, vandq_s8(vcgtq_u32(v33, v10), v9))));
      v14 = vaddq_s32(v35, vandq_s8(vcgtq_u32(v35, v10), v9));
      v13 = vaddq_s32(v36, vandq_s8(vcgtq_u32(v36, v10), v9));
      v12 = vaddq_s32(v37, vandq_s8(vcgtq_u32(v37, v10), v9));
      v5 = vaddq_s32(v38, vandq_s8(vcgtq_u32(v38, v10), v9));
      v4 = v15;
    }

    while (v15);
  }

  else
  {
    v5 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
  }

  v39 = 0;
  v40 = 0;
  v43[0] = v5;
  v43[1] = v12;
  v43[2] = v13;
  v43[3] = v14;
  do
  {
    v41 = *(v43 + v39);
    if (v41)
    {
      v42 = 65537 - v41;
    }

    else
    {
      v42 = 0;
    }

    v40 |= (1 << v39) & (v42 << 15 >> 31);
    *(a3 + 2 * v39++) = v42;
  }

  while (v39 != 16);
  result = 0;
  *(a3 + 32) = v40;
  return result;
}

uint64_t sub_1000E6324(unsigned int a1, uint64_t a2, uint16x8_t *a3, _DWORD *a4)
{
  v7 = 0uLL;
  v8 = (a1 & 1) + a1;
  if (v8)
  {
    v9 = 0uLL;
    v10 = vmvnq_s8(vuzp1q_s16(vceqzq_s32(xmmword_10037C120), vceqzq_s32(qword_10037C130)));
    v11 = vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqzq_s32(xmmword_10037C100), vceqzq_s32(unk_10037C110))));
    v12.i64[0] = 0xFFFF0000FFFFLL;
    v12.i64[1] = 0xFFFF0000FFFFLL;
    v13.i64[0] = 0x1000100010001;
    v13.i64[1] = 0x1000100010001;
    v14.i64[0] = 0x1000100010001;
    v14.i64[1] = 0x1000100010001;
    v15.i64[0] = 0x100000001;
    v15.i64[1] = 0x100000001;
    v16 = (a1 & 1) + a1;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    do
    {
      v20 = v16 - 2;
      if (v16 <= a1)
      {
        v21 = *(a2 + v20);
      }

      else
      {
        v21 = *(a2 + v20);
      }

      v22 = vextq_s8(v9, v17, 0xCuLL);
      v23 = vextq_s8(v17, v18, 0xCuLL);
      v24 = vextq_s8(v18, v19, 0xCuLL);
      v25 = vdupq_laneq_s32(v19, 3);
      v26 = vextq_s8(0, v9, 0xCuLL);
      v26.i32[0] = v21;
      v27 = vmulq_laneq_s32(xmmword_10037C100, v19, 3);
      v28 = vmulq_laneq_s32(unk_10037C110, v19, 3);
      v29 = vmulq_laneq_s32(xmmword_10037C120, v19, 3);
      v30 = vmulq_laneq_s32(qword_10037C130, v19, 3);
      v31 = vceqzq_s32(v25);
      v32 = vuzp1q_s16(v31, v31);
      v33 = vuzp1q_s16(vceqzq_s32(v29), vceqzq_s32(v30));
      v34 = vmovn_s16(vuzp1q_s16(vceqzq_s32(v27), vceqzq_s32(v28)));
      v35 = vsubq_s32(vandq_s8(v30, v12), vshrq_n_u32(v30, 0x10uLL));
      v36 = vsubq_s32(vandq_s8(v29, v12), vshrq_n_u32(v29, 0x10uLL));
      v37 = vsubq_s32(vandq_s8(v28, v12), vshrq_n_u32(v28, 0x10uLL));
      v38 = vsubq_s32(vandq_s8(v27, v12), vshrq_n_u32(v27, 0x10uLL));
      v39 = vand_s8(vand_s8(v11, v34), vmovn_s16(vmvnq_s8(v32)));
      *v32.i8 = vmovn_s16(vandq_s8(vbicq_s8(v10, v32), v33));
      v40 = vsubq_s32(v24, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v32.i8, 0)), 0x1FuLL)), v15, vaddq_s32(v35, vandq_s8(vcgtq_u32(v35, v14), v13))));
      v41 = vsubq_s32(v23, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v32.i8, 0)), 0x1FuLL)), v15, vaddq_s32(v36, vandq_s8(vcgtq_u32(v36, v14), v13))));
      v42 = vsubq_s32(v22, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v39, 0)), 0x1FuLL)), v15, vaddq_s32(v37, vandq_s8(vcgtq_u32(v37, v14), v13))));
      v43 = vsubq_s32(v26, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v39, 0)), 0x1FuLL)), v15, vaddq_s32(v38, vandq_s8(vcgtq_u32(v38, v14), v13))));
      v19 = vaddq_s32(v40, vandq_s8(vcgtq_u32(v40, v14), v13));
      v18 = vaddq_s32(v41, vandq_s8(vcgtq_u32(v41, v14), v13));
      v17 = vaddq_s32(v42, vandq_s8(vcgtq_u32(v42, v14), v13));
      v9 = vaddq_s32(v43, vandq_s8(vcgtq_u32(v43, v14), v13));
      v16 = v20;
    }

    while (v20);
  }

  else
  {
    v9 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
  }

  v44 = 0;
  v113[0] = v9;
  v113[1] = v17;
  v113[2] = v18;
  v113[3] = v19;
  v45 = xmmword_10037C0E0;
  v46 = vdupq_n_s32(a3[2].u16[0]);
  v47 = xmmword_10037C0F0;
  v48.i64[0] = 0x100000001;
  v48.i64[1] = 0x100000001;
  v49.i64[0] = 0x1000000010000;
  v49.i64[1] = 0x1000000010000;
  v50.i64[0] = 0x800000008;
  v50.i64[1] = 0x800000008;
  v51 = 0uLL;
  do
  {
    v52 = *a3++;
    v53 = vmovl_u16(*v52.i8);
    v54 = vmovl_high_u16(v52);
    v55 = &v113[v44];
    v56 = vaddq_s32(vbslq_s8(vceqzq_s32(vandq_s8(vshlq_u32(v48, v45), v46)), v54, (*&v54 | __PAIR128__(0x1000000010000, 0x1000000010000))), v113[v44 + 1]);
    v57 = vaddq_s32(vbslq_s8(vceqzq_s32(vandq_s8(vshlq_u32(v48, v47), v46)), v53, (*&v53 | __PAIR128__(0x1000000010000, 0x1000000010000))), v113[v44]);
    v58 = vminq_u32(vaddq_s32(v56, v49), v56);
    v59 = vminq_u32(vaddq_s32(v57, v49), v57);
    *v55 = v59;
    v55[1] = v58;
    v51 = vorrq_s8(v58, v51);
    v7 = vorrq_s8(v59, v7);
    v47 = vaddq_s32(v47, v50);
    v45 = vaddq_s32(v45, v50);
    v44 += 2;
  }

  while (v44 != 4);
  v60 = vorrq_s8(v7, v51);
  if (!*&vorr_s8(*v60.i8, *&vextq_s8(v60, v60, 8uLL)))
  {
    return 0;
  }

  v61 = calloc(1uLL, 0x4C0uLL);
  if (!v61)
  {
    v105 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection_ECC65537.c", "ECC65537CheckAndFix", 423, 63, *v105, "malloc", v106, v107, v109);
    return 0xFFFFFFFFLL;
  }

  v62 = v61;
  v111 = a1;
  v112 = a2;
  v63 = 0;
  v64 = v8 >> 1;
  v65 = 1;
  do
  {
    v62[v63] = sub_1000E69E8(16, v113, v65);
    v66 = (3 * v65) - ((3 * v65) >> 16);
    if (v66 + 65537 >= v66)
    {
      v65 = (3 * v65) - ((3 * v65) >> 16);
    }

    else
    {
      v65 = v66 + 65537;
    }

    ++v63;
  }

  while (v63 != 16);
  v67 = 0;
  v68 = v62 + 48;
  v69 = 48;
  do
  {
    v70 = &v62[v69];
    v71 = *&v62[v67];
    v72 = *&v62[v67 + 4];
    v70[8] = v62[v67 + 8];
    *v70 = v71;
    *(v70 + 1) = v72;
    v69 += 16;
    ++v67;
  }

  while (v67 != 8);
  v73 = sub_1000E6A68(8, 9, (v62 + 48));
  if (v73 < 1)
  {
    goto LABEL_84;
  }

  LODWORD(v74) = v73;
  if ((sub_1000E6C94(v73, v62 + 48, (v62 + 16)) & 0x80000000) != 0)
  {
    goto LABEL_84;
  }

  v75 = 0;
  v76 = 0;
  v77 = v62 + 32;
  v78 = v64 + 16;
  v79 = 1;
  do
  {
    if (!sub_1000E69E8(v74 + 1, (v62 + 16), v79) && v76 <= 7)
    {
      v77[v76++] = v75;
    }

    v80 = (3 * v79) - ((3 * v79) >> 16);
    if (v80 + 65537 >= v80)
    {
      v79 = (3 * v79) - ((3 * v79) >> 16);
    }

    else
    {
      v79 = v80 + 65537;
    }

    ++v75;
  }

  while (v78 != v75);
  if (v76 != v74)
  {
    goto LABEL_84;
  }

  v110 = a4;
  v81 = 0;
  v74 = v74;
  do
  {
    v82 = 0;
    do
    {
      v83 = v77[v82] * v81;
      if (v83)
      {
        v84 = 3;
        if (v83 < 0)
        {
          v84 = sub_1000E6E2C(3);
          v83 = -v83;
        }

        v85 = v83;
        v86 = 1;
        while (1)
        {
          if (v85)
          {
            if (v84 && v86 && !(v86 * v84))
            {
              v86 = 1;
            }

            else
            {
              v86 = (v86 * v84) - ((v86 * v84) >> 16);
              if (v86 + 65537 < v86)
              {
                v86 += 65537;
              }
            }
          }

          if (v85 < 2)
          {
            break;
          }

          v85 >>= 1;
          v87 = v84 * v84;
          if (v84)
          {
            v84 = 1;
            if (!v87)
            {
              continue;
            }
          }

          v88 = v87 - HIWORD(v87);
          if (v88 + 65537 >= v88)
          {
            v84 = v88;
          }

          else
          {
            v84 = v88 + 65537;
          }
        }
      }

      else
      {
        v86 = 1;
      }

      v68[v82 + (16 * v81)] = v86;
      ++v82;
    }

    while (v82 != v74);
    v89 = v62[v81];
    if (v89)
    {
      v90 = 65537 - v89;
    }

    else
    {
      v90 = 0;
    }

    v68[16 * v81++ + v74] = v90;
  }

  while (v81 != v74);
  if (sub_1000E6A68(v74, v74 + 1, (v62 + 48)) == v74)
  {
    v91 = v62 + 40;
    a4 = v110;
    if ((sub_1000E6C94(v74, v62 + 48, (v62 + 40)) & 0x80000000) == 0)
    {
      v93 = 0;
      v94 = 0;
      while (1)
      {
        v95 = *(v91 - 8);
        if (v111 > 2 * v95)
        {
          v96 = 2 * v95;
          v97 = v96 + 2 <= v111 || v111 - v96 == 2;
          v98 = v97;
          if (v97)
          {
            v99 = *(v112 + v96);
          }

          else
          {
            v99 = *(v112 + v96);
          }

          v100 = v99 - *v91;
          if (v100 + 65537 < v100)
          {
            v100 += 65537;
          }

          if (HIWORD(v100))
          {
            goto LABEL_85;
          }

          v101 = v100 ^ v99;
          v92.i32[0] = v101;
          v92 = vcnt_s8(v92);
          v92.i16[0] = vaddlv_u8(v92);
          v94 += v92.i32[0];
          if (v101 <= 0xFF)
          {
            v102 = v93;
          }

          else
          {
            v102 = v93 + 1;
          }

          if (v101)
          {
            v93 = v102 + 1;
          }

          else
          {
            v93 = v102;
          }

          if (v98)
          {
            *(v112 + v96) = v100;
          }

          else
          {
            *(v112 + v96) = v100;
          }
        }

        ++v91;
        v103 = v93;
        if (!--v74)
        {
          goto LABEL_86;
        }
      }
    }

LABEL_84:
    v94 = 0;
    LODWORD(v93) = 0;
LABEL_85:
    v103 = 0xFFFFFFFFLL;
    goto LABEL_86;
  }

  v94 = 0;
  LODWORD(v93) = 0;
  v103 = 0xFFFFFFFFLL;
  a4 = v110;
LABEL_86:
  free(v62);
  if (a4 && (v103 & 0x80000000) == 0)
  {
    v104 = a4[1] + v93;
    *a4 += v94;
    a4[1] = v104;
  }

  return v103;
}

uint64_t sub_1000E69E8(int a1, uint64_t a2, int a3)
{
  if (a1 < 1)
  {
    return 0;
  }

  LODWORD(result) = 0;
  v5 = a1 + 1;
  v6 = (a2 + 4 * a1 - 4);
  do
  {
    if (a3 && result && !(result * a3))
    {
      v7 = 1;
    }

    else
    {
      v7 = (result * a3) - ((result * a3) >> 16);
      if (v7 + 65537 < v7)
      {
        v7 += 65537;
      }
    }

    v8 = *v6--;
    v9 = v7 + v8;
    if (v9 - 65537 >= v9)
    {
      result = v9;
    }

    else
    {
      result = v9 - 65537;
    }

    --v5;
  }

  while (v5 > 1);
  return result;
}

uint64_t sub_1000E6A68(int a1, int a2, uint64_t a3)
{
  if (a1 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  LODWORD(v5) = 0;
  v6 = a3 + 64;
  v7 = a3;
  v8 = 1;
  while (v4 >= a2)
  {
    LODWORD(v12) = v5;
LABEL_12:
    v5 = v3;
    if (v4 == a2)
    {
      return v5;
    }

    v14 = 16 * v3;
    if (v3 != v12 && a2 > 0)
    {
      v15 = 0;
      v16 = a3 + 64 * v12;
      do
      {
        v17 = *(v16 + v15);
        *(v16 + v15) = *(v7 + v15);
        *(v7 + v15) = v17;
        v15 += 4;
      }

      while (4 * a2 != v15);
    }

    if (++v3 < a1)
    {
      v18 = *(a3 + 4 * v14 + 4 * v4);
      v19 = a3 + 4 * v4;
      v20 = (a3 + 4 * v14 + 4 * (v4 + 1));
      v21 = v8;
      v22 = (v6 + 4 * (v4 + 1));
      do
      {
        v23 = *(v19 + (v21 << 6));
        if (v23)
        {
          *(v19 + (v21 << 6)) = 0;
          if (v4 + 1 < a2)
          {
            v24 = a2 - 1 - v4;
            v25 = v22;
            v26 = v20;
            do
            {
              if (v18 && (*v25 ? (v27 = *v25 * v18 == 0) : (v27 = 0), v27))
              {
                v28 = 1;
              }

              else
              {
                v28 = (*v25 * v18) - ((*v25 * v18) >> 16);
                if (v28 + 65537 < v28)
                {
                  v28 += 65537;
                }
              }

              v30 = *v26++;
              v29 = v30;
              v31 = v30 * v23;
              v32 = (v30 * v23) - ((v30 * v23) >> 16);
              v33 = v32 + 65537;
              if (v32 + 65537 >= v32)
              {
                v33 = v32;
              }

              if (v29)
              {
                v34 = v31 == 0;
              }

              else
              {
                v34 = 0;
              }

              if (v34)
              {
                v33 = 1;
              }

              v35 = v28 - v33;
              if (v35 + 65537 < v35)
              {
                v35 += 65537;
              }

              *v25 = v35;
              v25 += 2;
              --v24;
            }

            while (v24);
          }
        }

        ++v21;
        v22 += 32;
      }

      while (v21 != a1);
    }

    ++v8;
    v7 += 64;
    v6 += 64;
    if (v3 == a1)
    {
      return a1;
    }
  }

  v9 = v4;
  v10 = (v7 + 4 * v4);
  while (2)
  {
    v11 = v10;
    v12 = v3;
    do
    {
      v13 = *v11;
      v11 += 16;
      if (v13)
      {
        v4 = v9;
        goto LABEL_12;
      }

      ++v12;
    }

    while (a1 != v12);
    ++v9;
    ++v10;
    if (v9 != a2)
    {
      continue;
    }

    return v3;
  }
}

uint64_t sub_1000E6C94(int a1, int *a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  if (a1 <= 0)
  {
    v26 = 0;
    *(a3 + 4 * a1) = 1;
  }

  else
  {
    v5 = a1;
    v6 = a1;
    v7 = a2;
    do
    {
      v8 = *v7;
      v7 += 17;
      if (!v8)
      {
        return 0xFFFFFFFFLL;
      }

      --v6;
    }

    while (v6);
    *(a3 + 4 * a1) = 1;
    v9 = a1;
    v10 = 17 * a1 - 16;
    v11 = a1;
    do
    {
      if (v11 <= v5)
      {
        v12 = 0;
        v13 = v10;
        v14 = v9;
        do
        {
          v15 = *(a3 + 4 * v14);
          v16 = a2[v13];
          if (v15)
          {
            v17 = v16 == 0;
          }

          else
          {
            v17 = 1;
          }

          if (!v17 && v16 * v15 == 0)
          {
            v19 = 1;
          }

          else
          {
            v19 = (v16 * v15) - ((v16 * v15) >> 16);
            if (v19 + 65537 < v19)
            {
              v19 += 65537;
            }
          }

          v20 = v19 + v12;
          if (v20 - 65537 >= v20)
          {
            v12 = v20;
          }

          else
          {
            v12 = v20 - 65537;
          }

          --v13;
          v21 = v11 < v14--;
        }

        while (v21);
      }

      else
      {
        v12 = 0;
      }

      v22 = sub_1000E6E2C(a2[17 * v11 - 17]);
      if (v12 && (v22 ? (v23 = v22 * v12 == 0) : (v23 = 0), v23))
      {
        v24 = 1;
      }

      else
      {
        v24 = (v22 * v12) - ((v22 * v12) >> 16);
        if (v24 + 65537 < v24)
        {
          v24 += 65537;
        }
      }

      if (65537 - v24 >= -v24)
      {
        v25 = -v24;
      }

      else
      {
        v25 = 65537 - v24;
      }

      *(a3 + 4 * (v11 - 1)) = v25;
      v10 -= 16;
      v21 = v11-- <= 1;
    }

    while (!v21);
    return 0;
  }

  return v26;
}

uint64_t sub_1000E6E2C(uint64_t a1)
{
  if (a1 == 1)
  {
    LODWORD(v1) = 1;
  }

  else
  {
    v2 = 0;
    v3 = 1;
    v4 = 65537;
    do
    {
      if (a1 <= v4)
      {
        v5 = -1;
        do
        {
          v6 = a1 << (v5 + 2);
          ++v5;
        }

        while (v6 <= v4);
        v4 = (v4 - (a1 << v5));
        v2 = (v2 - (v3 << v5));
      }

      v1 = v2;
      v7 = v4;
      v2 = v3;
      v3 = v1;
      v4 = a1;
      a1 = v7;
    }

    while (v7 != 1);
  }

  v8 = v1 + 65537 * (((v1 & ~(v1 >> 31)) - (v1 + (v1 >> 31))) / 0x10001 + (v1 >> 31));
  if (v8 <= 0x10000)
  {
    v9 = 0x10000;
  }

  else
  {
    v9 = v1 + 65537 * (((v1 & ~(v1 >> 31)) - (v1 + (v1 >> 31))) / 0x10001 + (v1 >> 31));
  }

  return v8 - ((((2147450881 * v9) >> 32) >> 15) | (((2147450881 * v9) >> 32) >> 15 << 16));
}

_WORD *ParallelCompressionEnterThreadErrorContext_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = sub_1000E7BB8();
  result = pthread_getspecific(v9);
  if (result)
  {
    ++result[2];
  }

  else
  {
    v11 = calloc(1uLL, 0x2000uLL);
    if (v11)
    {
      v11[2] = 1;
      *(v11 + 18) = 531890176;

      return sub_1000E6FA4(v11, v12, v13, v14, v15, v16, v17, v18, a9);
    }

    else
    {
      v19 = *__error();

      return sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThreadErrorContext", 76, 5, v19, "malloc", v20, v21, a9);
    }
  }

  return result;
}

size_t sub_1000E6FA4(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = sub_1000E7BB8();
  result = pthread_setspecific(v10, a1);
  if (result)
  {
    v12 = *__error();

    return sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "setThreadErrorContext", 65, 5, v12, "pthread_setspecific", v13, v14, a9);
  }

  return result;
}

uint64_t ParallelCompressionLeaveThreadErrorContext_0(__CFError **a1, const __CFString **a2, int a3)
{
  v6 = sub_1000E7BB8();
  v7 = pthread_getspecific(v6);
  if (v7)
  {
    v15 = v7;
    v16 = v7[2] - 1;
    v7[2] = v16;
    if (!v16)
    {
      v18 = v7[36];
      v17 = *v7;
      if (!v7[36] && (v17 & 0x80000000) == 0)
      {
        if (!v7[3] || !a2 && !a3)
        {
          goto LABEL_46;
        }

        bzero(userInfoKeys, 0x400uLL);
        v33 = 0;
        do
        {
          v34 = strlen(userInfoKeys);
          if (v34 + 20 > 0x3FF)
          {
            break;
          }

          if (v34)
          {
            snprintf(userInfoKeys + v34, 1024 - v34, ",0x%08x");
          }

          else
          {
            snprintf(userInfoKeys, 0x400uLL, "Warnings:0x%08x");
          }

          ++v33;
        }

        while (v33 < v15[3]);
        v35 = CFStringCreateWithCString(kCFAllocatorDefault, userInfoKeys, 0x600u);
        if (!v35)
        {
          goto LABEL_46;
        }

        v36 = v35;
        if (a2)
        {
          *a2 = v35;
          goto LABEL_46;
        }

        Length = CFStringGetLength(v35);
        v44 = calloc(1uLL, Length + 1);
        if (v44)
        {
          v45 = v44;
          CFStringGetCString(v36, v44, Length + 1, 0x600u);
          fprintf(__stderrp, "%s\n", v45);
          free(v45);
        }

        v42 = v36;
LABEL_45:
        CFRelease(v42);
        goto LABEL_46;
      }

      if (!a1 && !a3)
      {
        goto LABEL_46;
      }

      v19 = calloc(v18 + 32, 1uLL);
      if (!v19)
      {
        goto LABEL_46;
      }

      v20 = v19;
      v21 = v19;
      if ((v17 & 0x80000000) != 0)
      {
        snprintf(v19, v18 + 32, "Error 0x%08x\n", v17);
        v21 = &v20[strlen(v20)];
      }

      v22 = v15[36];
      if (v15[36])
      {
        v23 = 0;
        do
        {
          v24 = (v15 + v23 + 76);
          v25 = *v24;
          v26 = v25 + v23;
          if (v25 < 4 || v26 > v22)
          {
            break;
          }

          v28 = v25 - 3;
          memcpy(v21, v24 + 1, v28);
          v29 = &v21[v28];
          *v29 = 10;
          v21 = v29 + 1;
          v23 = v26;
          v22 = v15[36];
        }

        while (v22 > v26);
      }

      if (v21 > v20)
      {
        *(v21 - 1) = 0;
      }

      v30 = CFStringCreateWithCString(kCFAllocatorDefault, v20, 0x600u);
      if (!v30)
      {
        free(v20);
        goto LABEL_46;
      }

      v31 = v30;
      userInfoKeys[0] = kCFErrorLocalizedDescriptionKey;
      userInfoValues = v30;
      v32 = CFErrorCreateWithUserInfoKeysAndValues(kCFAllocatorDefault, @"com.apple.ParallelCompression", 1, userInfoKeys, &userInfoValues, 1);
      CFRelease(v31);
      free(v20);
      if (v32)
      {
        if (!a1)
        {
          v37 = CFErrorCopyDescription(v32);
          if (v37)
          {
            v38 = v37;
            v39 = CFStringGetLength(v37);
            v40 = calloc(1uLL, v39 + 1);
            if (v40)
            {
              v41 = v40;
              CFStringGetCString(v38, v40, v39 + 1, 0x600u);
              fprintf(__stderrp, "%s\n", v41);
              free(v41);
            }

            CFRelease(v38);
          }

          v42 = v32;
          goto LABEL_45;
        }

        *a1 = v32;
      }

LABEL_46:
      sub_1000E6FA4(0, v8, v9, v10, v11, v12, v13, v14, v47);
      free(v15);
      return v17;
    }
  }

  return 0;
}

size_t sub_1000E73AC(size_t result)
{
  if (result)
  {
    v1 = result;
    result = strlen(result);
    if (result - 8193 >= 0xFFFFFFFFFFFFE000)
    {
      v2 = result;
      v3 = sub_1000E7BB8();
      result = pthread_getspecific(v3);
      if (result)
      {
        v4 = result;
        v5 = v2 + 3;
        v6 = *(result + 72);
        if (v6 + (v2 + 3) <= *(result + 74))
        {
          v7 = result + v6;
          *(v7 + 76) = v5;
          v8 = v7 + 78;
          result = memcpy((v7 + 78), v1, v2);
          *(v8 + v2) = 0;
          *(v4 + 72) += v5;
        }
      }
    }
  }

  return result;
}

_WORD *sub_1000E7450(_WORD *result)
{
  if ((result & 0x80000000) != 0)
  {
    v1 = result;
    v2 = sub_1000E7BB8();
    result = pthread_getspecific(v2);
    if (result)
    {
      if ((*result & 0x80000000) == 0)
      {
        *result = v1;
        result[3] = 0;
      }
    }
  }

  return result;
}

_DWORD *sub_1000E7498(_DWORD *result)
{
  if ((result & 0x80000000) != 0)
  {
    v1 = result;
    v2 = sub_1000E7BB8();
    result = pthread_getspecific(v2);
    if (result)
    {
      if ((*result & 0x80000000) == 0)
      {
        v3 = *(result + 3);
        if (v3 <= 0xF)
        {
          result[v3 + 2] = v1;
          *(result + 3) = v3 + 1;
        }
      }
    }
  }

  return result;
}

unsigned __int16 *sub_1000E74F4(void *a1)
{
  v2 = sub_1000E7BB8();
  result = pthread_getspecific(v2);
  if (result)
  {
    v4 = result;
    bzero(a1, 0x2000uLL);
    v5 = v4[36];
    if (v5 <= 0x1FB4)
    {
      v6 = v5 + 76;
    }

    else
    {
      v6 = 0;
    }

    return memcpy(a1, v4, v6);
  }

  return result;
}

unsigned __int16 *sub_1000E7568(__int128 *a1)
{
  v2 = sub_1000E7BB8();
  result = pthread_getspecific(v2);
  if (result)
  {
    v4 = a1[1];
    v12 = *a1;
    v13 = v4;
    v5 = a1[3];
    v14 = a1[2];
    *v15 = v5;
    *&v15[12] = *(a1 + 60);
    if ((v12 & 0x80000000) == 0)
    {
      v6 = WORD3(v12);
      if ((*result & 0x80000000) != 0 && WORD3(v12) <= 0xFu)
      {
        v6 = WORD3(v12) + 1;
        *(&v12 + WORD3(v12) + 2) = *result;
      }

      v7 = result[3];
      if (result[3] && v6 <= 0xF)
      {
        v8 = 0;
        do
        {
          v9 = *&result[2 * v8 + 4];
          if (v8 >= v6 || *(&v12 + v8 + 2) != v9)
          {
            *(&v12 + v6++ + 2) = v9;
          }

          ++v8;
        }

        while (v8 < v7 && v6 < 0x10);
      }

      WORD3(v12) = v6;
    }

    v10 = *v15;
    *(result + 2) = v14;
    *(result + 3) = v10;
    *(result + 30) = *&v15[12];
    v11 = v13;
    *result = v12;
    *(result + 1) = v11;
    if (*&v15[24] <= 0x1FB4uLL)
    {
      return memcpy(result + 38, a1 + 76, *&v15[24]);
    }
  }

  return result;
}

uint64_t sub_1000E766C(pthread_t *a1, uint64_t a2, uint64_t a3, size_t a4)
{
  *__relative_priority = 0;
  v8 = calloc(1uLL, 0x2000uLL);
  if (!v8)
  {
    v19 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 552, 5, *v19, "malloc", v20, v21, v36[0]);
    return -*__error();
  }

  v9 = v8;
  v10 = calloc(1uLL, 0x40uLL);
  if (!v10)
  {
    v22 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 555, 5, *v22, "malloc", v23, v24, v36[0]);
    v25 = __error();
    v13 = -*v25;
    if (!*v25)
    {
      return v13;
    }

    goto LABEL_10;
  }

  v11 = v10;
  v12 = pthread_attr_init(v10);
  if (v12)
  {
    v13 = v12;
    v14 = *__error();
    v17 = "pthread_attr_init";
    v18 = 558;
LABEL_5:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", v18, 5, v14, v17, v15, v16, v36[0]);
    goto LABEL_6;
  }

  if (a4)
  {
    v28 = pthread_attr_setstacksize(v11, a4);
    if (v28)
    {
      v13 = v28;
      v14 = *__error();
      v17 = "pthread_attr_setstacksize";
      v18 = 564;
      goto LABEL_5;
    }
  }

  v29 = pthread_self();
  qos_class_np = pthread_get_qos_class_np(v29, &__relative_priority[1], __relative_priority);
  if (qos_class_np)
  {
    v13 = qos_class_np;
    v14 = *__error();
    v17 = "pthread_get_qos_class_np";
    v18 = 570;
    goto LABEL_5;
  }

  v31 = pthread_attr_set_qos_class_np(v11, __relative_priority[1], __relative_priority[0]);
  if (v31)
  {
    v13 = v31;
    v14 = *__error();
    v17 = "pthread_attr_set_qos_class_np";
    v18 = 572;
    goto LABEL_5;
  }

  v36[0] = _NSConcreteStackBlock;
  v36[1] = 0x40000000;
  v36[2] = sub_1000E797C;
  v36[3] = &unk_1004835F8;
  v36[4] = v9;
  v32 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, v36);
  v9[2] = v32;
  if (v32)
  {
    *v9 = a2;
    v9[1] = a3;
    *(v9 + 7) = 1;
    *(v9 + 24) = 530317312;
    v13 = pthread_create(a1, v11, sub_1000E7988, v9);
    if (v13)
    {
      v14 = *__error();
      v17 = "pthread_create";
      v18 = 591;
      goto LABEL_5;
    }
  }

  else
  {
    v33 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 578, 5, *v33, "dispatch_block_create", v34, v35, v36[0]);
    v13 = -*__error();
  }

LABEL_6:
  pthread_attr_destroy(v11);
  free(v11);
  if (!v13)
  {
    return v13;
  }

LABEL_10:
  v26 = v9[2];
  if (v26)
  {
    _Block_release(v26);
  }

  free(v9);
  return v13;
}

uint64_t sub_1000E7988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1000E6FA4((a1 + 24), a2, a3, a4, a5, a6, a7, a8, v17);
  (*(*(a1 + 16) + 16))();
  sub_1000E6FA4(0, v9, v10, v11, v12, v13, v14, v15, v18);
  return a1;
}

uint64_t sub_1000E79CC(_opaque_pthread_t *a1)
{
  v23 = 0;
  if (pthread_join(a1, &v23))
  {
    sub_1000E7C88();
  }

  v3 = v23;
  if (*(v23 + 14) != 1)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "joinThread", 627, 5, 0, "expected ref_count=1 for terminating thread", v1, v2, v22);
    v13 = 0xFFFFFFFFLL;
    goto LABEL_26;
  }

  v4 = sub_1000E7BB8();
  v5 = pthread_getspecific(v4);
  if (!v5)
  {
    goto LABEL_25;
  }

  v6 = v5;
  v7 = *v5;
  if ((*v5 & 0x80000000) == 0)
  {
    v8 = v3[6];
    if (v8 < 0)
    {
      *v5 = v8;
      v7 = v8;
    }
  }

  v9 = *(v3 + 48);
  if (!*(v3 + 48))
  {
LABEL_14:
    if (v7)
    {
      v13 = 0;
      *(v6 + 3) = 0;
      goto LABEL_26;
    }

    if (*(v3 + 15))
    {
      v15 = 0;
      v16 = *(v6 + 3);
      LODWORD(v17) = 16 - v16;
      if (v16 <= 0x10)
      {
        v17 = v17;
      }

      else
      {
        v17 = 0;
      }

      v18 = &v6[v16 + 2];
      v19 = v16 + 1;
      while (v17 != v15)
      {
        v13 = 0;
        *(v18 + 4 * v15) = v3[v15 + 8];
        *(v6 + 3) = v19 + v15++;
        if (v15 >= *(v3 + 15))
        {
          goto LABEL_26;
        }
      }
    }

LABEL_25:
    v13 = 0;
    goto LABEL_26;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = (v3 + v11 + 100);
    v13 = *v12;
    if (!*v12)
    {
      break;
    }

    v10 += v13;
    if (v10 > v9)
    {
      goto LABEL_25;
    }

    v14 = *(v6 + 36);
    if (v14 + v13 <= *(v6 + 37))
    {
      memcpy(v6 + v14 + 76, v12, *v12);
      *(v6 + 36) += v13;
      v11 = v10;
      v9 = *(v3 + 48);
      if (v9 > v10)
      {
        continue;
      }
    }

    v7 = *v6;
    goto LABEL_14;
  }

LABEL_26:
  v20 = *(v3 + 2);
  if (v20)
  {
    _Block_release(v20);
  }

  free(v3);
  return v13;
}

size_t ParallelCompressionUpdateError(_WORD *a1, size_t a2)
{
  sub_1000E7450(a1);

  return sub_1000E73AC(a2);
}

uint64_t sub_1000E7BB8()
{
  if (pthread_once(&stru_1004A9D28, sub_1000E7C20))
  {
    v0 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "getErrorContextKey", 53, 5, *v0, "pthread_once");
  }

  return qword_1004B9FB0;
}

uint64_t sub_1000E7C20()
{
  result = pthread_key_create(&qword_1004B9FB0, 0);
  if (result)
  {
    v1 = *__error();

    return sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createErrorContextKey", 42, 5, v1, "pthread_key_create");
  }

  return result;
}

void sub_1000E7C88()
{
  v0 = __error();
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "joinThread", 623, 5, *v0, "pthread_join", v1, v2, vars0);
  __break(1u);
}

size_t sub_1000E7CC4(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_encode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZMA);
  if (!result)
  {
    return -1;
  }

  return result;
}

size_t sub_1000E7CEC(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_decode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZMA);
  if (!result)
  {
    return -1;
  }

  return result;
}

void *sub_1000E7D14(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  snprintf(__str, 0x1000uLL, "1 0x%x %u", *v1, v1[1]);
  if (v1[1])
  {
    v2 = strlen(__str);
    v3 = 0;
    v4 = v1 + 10;
    while (1)
    {
      snprintf(&__str[v2], 4096 - v2, " (0x%x %i %i %u %llu %llu %u)", *(v4 - 8), *(v4 - 7), *(v4 - 6), *(v4 - 5), *v4, *(v4 + 1), v4[4]);
      v2 += strlen(&__str[v2]);
      if (v2 + 1 >= 0x1000)
      {
        break;
      }

      v4 += 14;
      if (++v3 >= v1[1])
      {
        goto LABEL_5;
      }
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldMCO.c", "aaCreateArchString", 476, 148, 0, "String overflow", v5, v6, v12);
    return 0;
  }

  else
  {
LABEL_5:
    v7 = strlen(__str);
    v8 = v7 + 1;
    if (v7 + 1 < 0x2000000001)
    {
      v10 = malloc(v7 + 1);
      v9 = v10;
      if (v10)
      {
        memcpy(v10, __str, v8);
      }
    }

    else
    {
      v9 = 0;
      *__error() = 12;
    }
  }

  return v9;
}

uint64_t sub_1000E7EC0(void *a1, const char *a2, unint64_t a3)
{
  bzero(&v76, 0xE08uLL);
  *a1 = 0;
  v6 = open(a2, 0);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = v6;
    memset(&v79, 0, sizeof(v79));
    v10 = fstat(v6, &v79);
    if (v10)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldMCO.c", "AAEntryMCOBlobInitWithFD", 492, 148, 0, "fstat failed", v8, v9, v66);
      goto LABEL_4;
    }

    st_size = v79.st_size;
    v20 = sub_1000E8628(v7, 0, v79.st_size);
    v13 = v20;
    v76 = v20 | 0x100000000;
    if (v20 <= -822415875)
    {
      if (v20 > -889275715)
      {
        if ((v20 + 889275714) < 2)
        {
          goto LABEL_21;
        }

        v21 = -872498498;
      }

      else
      {
        if ((v20 + 1095041334) < 2)
        {
          goto LABEL_21;
        }

        v21 = -1078264118;
      }

      if (v20 != v21)
      {
        goto LABEL_4;
      }

LABEL_21:
      v23 = v20 == -1078264118 || v20 == -889275713;
      v24 = (v20 | 0x1000000) == 0xBFBAFECA || v20 == -1095041333;
      v88 = 0;
      v85 = 0;
      v86 = 0;
      v87 = 0;
      memset(v84, 0, sizeof(v84));
      if (v23)
      {
        v25 = 32;
      }

      else
      {
        v25 = 20;
      }

      if ((sub_1000E8A2C(v7, &v88, 8uLL, 0, st_size) & 0x80000000) == 0)
      {
        v27 = HIDWORD(v88);
        v28 = bswap32(HIDWORD(v88));
        if (v24)
        {
          v27 = v28;
        }

        HIDWORD(v76) = v27;
        if (v27 > 0x40)
        {
          sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldMCO.c", "aaParseFatFile", 302, 148, "Too many arches", v26, v11, v12, v66);
          goto LABEL_4;
        }

        v74 = v24;
        v67 = a3;
        v68 = a2;
        v69 = a1;
        if (v27)
        {
          v44 = 0;
          v45 = 0;
          v46 = bswap32(v13);
          v47 = vdup_n_s32(!v74);
          if (v74)
          {
            v48 = v46;
          }

          else
          {
            v48 = v13;
          }

          v72 = v48;
          v71 = 56 * v27;
          v49 = 8;
          v50 = vcltz_s32(vshl_n_s32(v47, 0x1FuLL));
          v51.i64[0] = v47.u32[0];
          v51.i64[1] = v47.u32[1];
          v70 = vcltzq_s64(vshlq_n_s64(v51, 0x3FuLL));
          v73 = v25;
          do
          {
            v83 = 0;
            v81 = 0u;
            v82 = 0u;
            v80 = 0u;
            if (v13 == -889275713 || v13 == -1078264118)
            {
              if ((sub_1000E8A2C(v7, v84, v25, v49, st_size) & 0x80000000) != 0)
              {
                goto LABEL_99;
              }

              *&v77[v44 + 4] = vbsl_s8(v50, v84[0], vrev32_s8(v84[0]));
              v52 = &v78[56 * v45 + 20];
              v53 = vbslq_s8(v70, *v84[1].i8, vrev64q_s8(*v84[1].i8));
            }

            else
            {
              if ((sub_1000E8A2C(v7, &v85, v25, v49, st_size) & 0x80000000) != 0)
              {
LABEL_99:
                a2 = v68;
                a1 = v69;
                a3 = v67;
                v10 = 0;
                goto LABEL_4;
              }

              v54 = v86;
              *&v77[v44 + 4] = vbsl_s8(v50, v85, vrev32_s8(v85));
              v52 = &v78[v44 + 20];
              v55 = vbsl_s8(v50, v54, vrev32_s8(v54));
              v56.i64[0] = v55.u32[0];
              v56.i64[1] = v55.u32[1];
              v53 = v56;
            }

            v57 = v53.i64[0];
            v58 = &v77[v44 - 8];
            *(v58 + 6) = v53.i64[1];
            *v52 = v53.i64[0];
            *&v77[v44] = v72;
            *(v58 + 14) = v74;
            v59 = vaddvq_s64(v53);
            if (v59 <= st_size)
            {
              v60 = v59;
              v61 = sub_1000E8628(v7, v57, v59);
              if (v61 <= -17958195)
              {
                if (v61 != -822415874 && v61 != -805638658)
                {
                  goto LABEL_97;
                }
              }

              else if ((v61 + 17958194) >= 2)
              {
                v62 = v61 == 1918975009 || v61 == 557605234;
                if (!v62 || (sub_1000E8710(&v80, v7, v57, v60) & 0x80000000) != 0)
                {
                  goto LABEL_97;
                }

LABEL_96:
                *&v77[v44] = v80;
                v64 = &v77[v44 - 8];
                *(v64 + 3) = v81;
                v65 = v83;
                *(v64 + 8) = DWORD2(v81);
                *(v58 + 14) = v65;
                goto LABEL_97;
              }

              if ((sub_1000E88EC(&v80, v7, v61, v57, v60) & 0x80000000) == 0)
              {
                goto LABEL_96;
              }
            }

LABEL_97:
            ++v45;
            v44 += 56;
            v25 = v73;
            v49 += v73;
          }

          while (v71 != v44);
        }

        a2 = v68;
        a1 = v69;
        a3 = v67;
        goto LABEL_42;
      }

LABEL_4:
      v13 = 0;
      v76 = 0;
      if (v10)
      {
        v14 = "Can't init MCO";
        v15 = 545;
        goto LABEL_6;
      }

LABEL_42:
      if (!v13)
      {
        goto LABEL_65;
      }

      if (a3 >> 62 == 3)
      {
        v29 = __stderrp;
        v30 = sub_1000E8AA8(v13);
        v31 = HIDWORD(v76);
        fprintf(v29, "%s (N=%u)", v30, HIDWORD(v76));
        if (v31)
        {
          v32 = v78;
          do
          {
            v33 = __stderrp;
            v34 = sub_1000E8AA8(*(v32 - 3));
            v35 = *(v32 - 2);
            if (v35 <= 16777222)
            {
              v38 = "x86";
              if (v35 != 7)
              {
                if (v35 != 12)
                {
                  goto LABEL_59;
                }

                v38 = "arm";
              }
            }

            else
            {
              if (v35 != 33554444)
              {
                v36 = *(v32 - 1) & 0xFFFFFF;
                if (v35 == 16777228)
                {
                  v37 = v36 == 2;
                  v38 = "arm64";
                  v39 = "arm64e";
LABEL_56:
                  if (v37)
                  {
                    v38 = v39;
                  }

                  goto LABEL_60;
                }

                if (v35 == 16777223)
                {
                  v37 = v36 == 8;
                  v38 = "x86_64";
                  v39 = "x86_64h";
                  goto LABEL_56;
                }

LABEL_59:
                v38 = "?";
                goto LABEL_60;
              }

              v38 = "arm64_32";
            }

LABEL_60:
            v40 = *v32 - 1;
            v41 = "?";
            if (v40 <= 0xD)
            {
              v41 = off_100483618[v40];
            }

            fprintf(v33, " [%s, %s, %s]", v34, v38, v41);
            v32 += 14;
            --v31;
          }

          while (v31);
        }

        fprintf(__stderrp, "\t<%s>\n", a2);
      }

      v42 = sub_1000E7D14(&v76);
      *a1 = v42;
      if (v42)
      {
LABEL_65:
        v16 = 0;
        goto LABEL_66;
      }

      v14 = "MCO creation failed";
      v15 = 555;
LABEL_6:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldMCO.c", "aaEntryMCOStringCreateWithPath", v15, 148, 0, v14, v11, v12, v66);
      v16 = 0xFFFFFFFFLL;
LABEL_66:
      close(v7);
      return v16;
    }

    if (v20 <= -17958195)
    {
      if (v20 != -822415874 && v20 != -805638658)
      {
        goto LABEL_4;
      }
    }

    else if ((v20 + 17958194) >= 2)
    {
      if (v20 != 1918975009 && v20 != 557605234 || sub_1000E8710(v77, v7, 0, st_size))
      {
        goto LABEL_4;
      }

LABEL_41:
      v13 = v76;
      goto LABEL_42;
    }

    if (sub_1000E88EC(v77, v7, v20, 0, st_size))
    {
      goto LABEL_4;
    }

    goto LABEL_41;
  }

  v17 = __error();
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldMCO.c", "aaEntryMCOStringCreateWithPath", 542, 148, *v17, "%s", v18, v19, a2);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1000E8628(int a1, off_t a2, size_t a3)
{
  v8 = 0;
  if ((sub_1000E8A2C(a1, &v8, 4uLL, a2, a3) & 0x80000000) != 0)
  {
    return 0;
  }

  result = v8;
  if (v8 == 1918975009 || v8 == 557605234)
  {
    v9 = 0;
    if ((sub_1000E8A2C(a1, &v9, 8uLL, a2, a3) & 0x80000000) == 0)
    {
      if (v9 == 0xA3E686372613C21)
      {
        return v8;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1000E8710(uint64_t a1, int a2, uint64_t a3, size_t a4)
{
  v4 = a3 + 8;
  if (a3 + 8 < a4)
  {
    v8 = a3 + 68;
    while (1)
    {
      v19 = 0u;
      memset(v20, 0, 28);
      v18 = 0u;
      if ((sub_1000E8A2C(a2, &v18, 0x3CuLL, v4, a4) & 0x80000000) != 0)
      {
        break;
      }

      if (v18 != 12579 || BYTE2(v18) != 47)
      {
        break;
      }

      if (HIWORD(v20[6]) != 2656)
      {
        break;
      }

      LOBYTE(v19) = 0;
      BYTE2(v20[6]) = 0;
      v10 = strtoull(&v18 + 3, 0, 10);
      v11 = strtoull(&v20[4], 0, 10);
      v12 = v11 + v8;
      if (v11 + v8 > a4)
      {
        break;
      }

      v13 = v11;
      if (v10 > v11 || v12 < v4)
      {
        break;
      }

      v14 = sub_1000E8628(a2, v10 + v8, v12);
      v15 = v14;
      v16 = v14 + 17958194;
      if ((v14 + 17958194) < 2 || v14 == -822415874 || v14 == -805638658)
      {
        result = sub_1000E88EC(a1, a2, v14, v10 + v8, v12);
        if (v16 < 2 || v15 == -805638658 || v15 == -822415874)
        {
          return result;
        }
      }

      else
      {
        v4 = v12 + (v13 & 1);
        v8 = v4 + 60;
        result = 0xFFFFFFFFLL;
        if (v4 >= a4)
        {
          return result;
        }
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1000E88EC(uint64_t a1, int a2, int a3, off_t a4, size_t a5)
{
  v8 = a3 & 0xFEFFFFFF;
  v9 = (a3 & 0xFEFFFFFF) == -822415874;
  if (a3 == -17958193 || a3 == -805638658)
  {
    v17 = 0u;
    v18 = 0u;
    v10 = a2;
    v11 = 32;
  }

  else
  {
    v17 = 0uLL;
    DWORD2(v18) = 0;
    *&v18 = 0;
    v10 = a2;
    v11 = 28;
  }

  if ((sub_1000E8A2C(v10, &v17, v11, a4, a5) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = v8 == -822415874;
  v13 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v12)), 0x1FuLL)), vrev32q_s8(v17), v17);
  *a1 = v13;
  *(a1 + 16) = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v12), 0x1FuLL)), vrev32_s8(*&v18), *&v18);
  v14 = DWORD2(v18);
  v15 = bswap32(DWORD2(v18));
  if (v8 == -822415874)
  {
    v14 = v15;
  }

  *(a1 + 24) = v14;
  *(a1 + 32) = a4;
  *(a1 + 40) = a5 - a4;
  *(a1 + 48) = v9;
  if ((v13.i32[0] + 17958192) >= 0xFFFFFFFE)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1000E8A2C(int a1, void *a2, size_t a3, off_t a4, size_t a5)
{
  if (a4 + a3 > a5)
  {
    return 0xFFFFFFFFLL;
  }

  if (pread(a1, a2, a3, a4) == a3)
  {
    return 0;
  }

  v7 = __error();
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldMCO.c", "aaPReadExpected", 181, 148, *v7, "pread failed", v8, v9, v5);
  return 0xFFFFFFFFLL;
}

const char *sub_1000E8AA8(int a1)
{
  if (a1 > -822415875)
  {
    if (a1 > -17958194)
    {
      switch(a1)
      {
        case -17958193:
          return "Mach-O 64-bit";
        case 1918975009:
          return "Object archive BE";
        case 557605234:
          return "Object archive";
      }
    }

    else
    {
      switch(a1)
      {
        case -822415874:
          return "Mach-O BE";
        case -805638658:
          return "Mach-O 64-bit BE";
        case -17958194:
          return "Mach-O";
      }
    }
  }

  else if (a1 > -889275715)
  {
    switch(a1)
    {
      case -889275714:
        return "Fat binary";
      case -889275713:
        return "Fat binary 64-bit";
      case -872498498:
        return "Fat GPU binary";
    }
  }

  else
  {
    switch(a1)
    {
      case -1095041334:
        return "Fat binary BE";
      case -1095041333:
        return "Fat GPU binary BE";
      case -1078264118:
        return "Fat binary 64-bit BE";
    }
  }

  return "?";
}

int AAArchiveStreamReadHeader(AAArchiveStream s, AAHeader *header)
{
  v2 = *(s + 5);
  if (v2)
  {
    return v2(*s, header);
  }

  else
  {
    return -1;
  }
}

int AAArchiveStreamReadBlob(AAArchiveStream s, AAFieldKey key, void *buf, size_t nbyte)
{
  v4 = *(s + 6);
  if (v4)
  {
    return v4(*s, key.ikey, buf, nbyte);
  }

  else
  {
    return -1;
  }
}

int AAArchiveStreamWriteHeader(AAArchiveStream s, AAHeader header)
{
  v2 = *(s + 3);
  if (v2)
  {
    return v2(*s, header);
  }

  else
  {
    return -1;
  }
}

int AAArchiveStreamWriteBlob(AAArchiveStream s, AAFieldKey key, const void *buf, size_t nbyte)
{
  v4 = *(s + 4);
  if (v4)
  {
    return v4(*s, key.ikey, buf, nbyte);
  }

  else
  {
    return -1;
  }
}

int AAArchiveStreamClose(AAArchiveStream s)
{
  if (!s)
  {
    return 0;
  }

  if (*s)
  {
    v2 = (*(s + 1))();
  }

  else
  {
    v2 = 0;
  }

  free(s);
  return v2;
}

void AAArchiveStreamCancel(AAArchiveStream s)
{
  v1 = *(s + 2);
  if (v1)
  {
    v1(*s);
  }
}

AAArchiveStream AACustomArchiveStreamOpen(void)
{
  v0 = malloc(0x38uLL);
  v1 = v0;
  if (v0)
  {
    memset_s(v0, 0x38uLL, 0, 0x38uLL);
  }

  else
  {
    v2 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AACustomArchiveStreamOpen", 49, 14, *v2, "malloc", v3, v4, v6);
  }

  return v1;
}

uint64_t sub_1000E8DB0(uint64_t a1)
{
  v2 = *a1;
  v3 = **a1;
  bzero(path, 0x400uLL);
  bzero(v167, 0x800uLL);
  v6 = AAHeaderCreate();
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 168, 14, 0, "creating header", v4, v5, v143);
    v7 = 0;
  }

  v10 = AAEntryXATBlobCreate();
  if (!v10)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 170, 14, 0, "creating XAT field", v8, v9, v143);
    v7 = 0;
  }

  v13 = AAEntryACLBlobCreate();
  if (!v13)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 172, 14, 0, "creating XAT field", v11, v12, v143);
    v7 = 0;
  }

  v16 = AAEntryYECBlobCreate();
  if (!v16)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 174, 14, 0, "creating YEC field", v14, v15, v143);
    v7 = 0;
  }

  memset(&v164, 0, sizeof(v164));
  size[0] = 0;
  size[1] = 0;
  v163 = 0;
  v17 = (v2[136] + 40 * *(a1 + 8));
  v18 = *v17;
  if (*v17 < v17[1])
  {
    v19 = *(v2 + 280) != 0;
    do
    {
      v20 = v2[144] + (v18 << 7);
      if (v19 || *(v2 + 280))
      {
        v7 = 0;
        v21 = 1;
        v19 = 1;
      }

      else
      {
        path_length = 0;
        if (AAPathListNodeGetPath(v2[1], *(v20 + 24), 0x400uLL, path, &path_length) < 0)
        {
          v39 = 192;
          v40 = "AAPathListNodeGetPath";
          goto LABEL_41;
        }

        if ((sub_1000F4680(v167, 0x800uLL, v2 + 24, path) & 0x80000000) != 0)
        {
          v39 = 193;
          v40 = "invalid path";
          goto LABEL_41;
        }

        v24 = v2[132];
        if (!v24 || (v24(v2[131], 30, path, 0) & 0x80000000) == 0)
        {
          if (lstat(v167, &v164) < 0)
          {
            v41 = *__error();
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 202, 14, v41, "lstat %s", v42, v43, v167);
            goto LABEL_42;
          }

          if ((sub_1000EC174(v6, v2[2], v2 + 24, path, v3) & 0x80000000) != 0)
          {
            v39 = 203;
            v40 = "initializing header from path";
          }

          else
          {
            v28.ikey = 5521732;
            if (AAFieldKeySetContainsKey(v2[2], v28))
            {
              if ((v164.st_mode & 0xF000) == 0x8000)
              {
                v29.ikey = 5521732;
                if (AAHeaderSetFieldBlob(v6, 0xFFFFFFFF, v29, v164.st_size) < 0)
                {
                  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 209, 14, 0, "inserting DAT: %s", v30, v31, v167);
                  goto LABEL_42;
                }
              }
            }

            v32.ikey = 5521752;
            if (AAFieldKeySetContainsKey(v2[2], v32) && (v164.st_mode & 0xF000) != 0xC000)
            {
              if ((sub_10010E2A0(v10, v2 + 24, path) & 0x80000000) == 0)
              {
                if (!AAEntryXATBlobGetEntryCount(v10))
                {
                  goto LABEL_28;
                }

                EncodedSize = AAEntryXATBlobGetEncodedSize(v10);
                v51.ikey = 5521752;
                if ((AAHeaderSetFieldBlob(v6, 0xFFFFFFFF, v51, EncodedSize) & 0x80000000) == 0)
                {
                  __src = 0;
                  goto LABEL_29;
                }

                sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 220, 14, 0, "inserting XAT: %s", v52, v53, v167);
                goto LABEL_42;
              }

              v39 = 216;
              v40 = "initializing XAT field from path";
            }

            else
            {
LABEL_28:
              __src = 1;
LABEL_29:
              v33.ikey = 4997953;
              if (!AAFieldKeySetContainsKey(v2[2], v33))
              {
                goto LABEL_43;
              }

              v34 = v164.st_mode & 0xF000;
              if (v34 != 0x8000 && v34 != 0x4000)
              {
                goto LABEL_43;
              }

              if ((sub_100111C50(v13, v2 + 24, path, v3) & 0x80000000) != 0)
              {
                v39 = 228;
                v40 = "initializing ACL field from path";
              }

              else
              {
                if (AAEntryACLBlobGetEntryCount(v13))
                {
                  v35 = AAEntryACLBlobGetEncodedSize(v13);
                  v36.ikey = 4997953;
                  if ((AAHeaderSetFieldBlob(v6, 0xFFFFFFFF, v36, v35) & 0x80000000) == 0)
                  {
                    v150 = 0;
                    goto LABEL_44;
                  }

                  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 232, 14, 0, "inserting ACL: %s", v37, v38, v167);
LABEL_42:
                  v19 = 0;
                  v7 = 0;
                  v21 = 1;
                  goto LABEL_15;
                }

LABEL_43:
                v150 = 1;
LABEL_44:
                v45.ikey = 4408665;
                if (!AAFieldKeySetContainsKey(v2[2], v45))
                {
                  v152 = 1;
                  goto LABEL_55;
                }

                v152 = 1;
                if ((v164.st_mode & 0xF000) == 0x8000 && v164.st_size >= 1)
                {
                  if ((sub_1000E4624(v16, 65552, v2 + 24, path) & 0x80000000) == 0)
                  {
                    v46 = AAEntryYECBlobGetEncodedSize(v16);
                    v47.ikey = 4408665;
                    if (AAHeaderSetFieldBlob(v6, 0xFFFFFFFF, v47, v46) < 0)
                    {
                      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 242, 14, 0, "inserting YEC: %s", v48, v49, v167);
                      goto LABEL_42;
                    }

                    v152 = 0;
                    goto LABEL_55;
                  }

                  v39 = 240;
                  v40 = "initializing YEC field from path";
                }

                else
                {
LABEL_55:
                  v54.ikey = 5260889;
                  if (!AAFieldKeySetContainsKey(v2[2], v54))
                  {
                    v149 = 1;
                    goto LABEL_62;
                  }

                  v149 = 1;
                  if ((v164.st_mode & 0xF000) != 0x8000 || v164.st_size < 1)
                  {
                    goto LABEL_62;
                  }

                  if ((sub_1000DE384(size, v2 + 24, path) & 0x80000000) == 0)
                  {
                    v55.ikey = 5260889;
                    if ((AAHeaderSetFieldBlob(v6, 0xFFFFFFFF, v55, size[0]) & 0x80000000) == 0)
                    {
                      v149 = 0;
LABEL_62:
                      v58.ikey = 4410440;
                      if (AAFieldKeySetContainsKey(v2[2], v58) && (v164.st_mode & 0xF000) == 0x8000 && v164.st_nlink >= 2u)
                      {
                        *(v20 + 32) = v164.st_ino;
                      }

                      v59.ikey = 4410435;
                      v60 = AAFieldKeySetContainsKey(v2[2], v59);
                      st_mode = v164.st_mode;
                      xat = v10;
                      if (v60 && (v164.st_mode & 0xF000) == 0x8000)
                      {
                        v165 = 0uLL;
                        if (!fsctl(v167, 0x40104A0EuLL, &v165, 0) && v165 == 2)
                        {
                          *(v20 + 40) = *(&v165 + 1);
                        }

                        st_mode = v164.st_mode;
                      }

                      if ((st_mode & 0xF000) == 0x8000)
                      {
                        v62.ikey = 4410451;
                        if (AAFieldKeySetContainsKey(v2[2], v62))
                        {
                          if ((*(v20 + 48) = 0, memset_s((v20 + 56), 0x40uLL, 0, 0x40uLL), hash_function = 0, v63.ikey = 3491923, !AAFieldKeySetContainsKey(v2[2], v63)) || (v64.ikey = 3491923, v65 = AAHeaderGetKeyIndex(v6, v64), (v65 & 0x80000000) != 0) || ((v66 = AAHeaderGetFieldHash(v6, v65, 0x40uLL, &hash_function, (v20 + 56)), v66 <= 1) ? (v67 = 1) : (v67 = v66), v67 <= 0))
                          {
                            if ((v68.ikey = 3360851, !AAFieldKeySetContainsKey(v2[2], v68)) || (v69.ikey = 3360851, v70 = AAHeaderGetKeyIndex(v6, v69), (v70 & 0x80000000) != 0) || ((v71 = AAHeaderGetFieldHash(v6, v70, 0x40uLL, &hash_function, (v20 + 56)), v71 <= 1) ? (v72 = 1) : (v72 = v71), v72 <= 0))
                            {
                              if ((v73.ikey = 3295315, !AAFieldKeySetContainsKey(v2[2], v73)) || (v74.ikey = 3295315, v75 = AAHeaderGetKeyIndex(v6, v74), (v75 & 0x80000000) != 0) || ((v76 = AAHeaderGetFieldHash(v6, v75, 0x40uLL, &hash_function, (v20 + 56)), v76 <= 1) ? (v77 = 1) : (v77 = v76), v77 <= 0))
                              {
                                if ((v78.ikey = 3229779, !AAFieldKeySetContainsKey(v2[2], v78)) || (v79.ikey = 3229779, KeyIndex = AAHeaderGetKeyIndex(v6, v79), (KeyIndex & 0x80000000) != 0) || ((FieldHash = AAHeaderGetFieldHash(v6, KeyIndex, 0x40uLL, &hash_function, (v20 + 56)), FieldHash <= 1) ? (v82 = 1) : (v82 = FieldHash), v82 <= 0))
                                {
                                  v165 = 0uLL;
                                  v166 = 0;
                                  if ((sub_1000F64C8(v167, &v165) & 0x80000000) == 0)
                                  {
                                    v85 = v165;
                                    *(v20 + 72) = v166;
                                    *(v20 + 56) = v85;
                                    goto LABEL_100;
                                  }

                                  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 282, 14, 0, "hashing file: %s", v83, v84, v167);
                                  v19 = 0;
                                  v7 = 0;
                                  v21 = 1;
LABEL_237:
                                  v10 = xat;
                                  goto LABEL_15;
                                }
                              }
                            }
                          }
                        }
                      }

LABEL_100:
                      v147 = v3;
                      v86 = AAHeaderGetEncodedSize(v6);
                      if ((__src & 1) == 0)
                      {
                        v86 += AAEntryXATBlobGetEncodedSize(xat);
                      }

                      if ((v150 & 1) == 0)
                      {
                        v86 += AAEntryACLBlobGetEncodedSize(v13);
                      }

                      if ((v152 & 1) == 0)
                      {
                        v86 += AAEntryYECBlobGetEncodedSize(v16);
                      }

                      v87 = size[0];
                      if (v149)
                      {
                        v87 = 0;
                      }

                      v88 = v87 + v86;
                      *v20 = v17[2];
                      *(v20 + 8) = v87 + v86;
                      *(v20 + 16) = AAHeaderGetEncodedSize(v6);
                      v91 = v17[2] + v88;
                      if ((v91 & 0x8000000000000000) != 0)
                      {
LABEL_143:
                        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 300, 14, 0, "reallocating block blob", v89, v90, v143);
                        v19 = 0;
                        v7 = 0;
                        v21 = 1;
                      }

                      else
                      {
                        v92 = v17[3];
                        if (v92 < v91)
                        {
                          do
                          {
                            while (!v92)
                            {
                              v92 = 0x4000;
                              v94 = 0x4000;
                              if (v91 <= 0x4000)
                              {
                                goto LABEL_122;
                              }
                            }

                            v93 = v92 >> 1;
                            if ((v92 & (v92 >> 1)) != 0)
                            {
                              v93 = v92 & (v92 >> 1);
                            }

                            v92 += v93;
                          }

                          while (v92 < v91);
                          v94 = v92;
                          if (v92 >= 0x2000000001)
                          {
                            *__error() = 12;
                            goto LABEL_142;
                          }

LABEL_122:
                          v95 = v17[4];
                          v96 = realloc(v95, v94);
                          if (v96)
                          {
                            v17[3] = v94;
                            v17[4] = v96;
                            goto LABEL_124;
                          }

                          free(v95);
LABEL_142:
                          v17[2] = 0;
                          v17[3] = 0;
                          v17[4] = 0;
                          goto LABEL_143;
                        }

LABEL_124:
                        EncodedData = AAHeaderGetEncodedData(v6);
                        v98 = AAHeaderGetEncodedSize(v6);
                        v99 = v17[2];
                        v100 = v99 + v98;
                        if (!__CFADD__(v99, v98) && (v100 & 0x8000000000000000) == 0)
                        {
                          v101 = v98;
                          v102 = v17[3];
                          if (v102 >= v100)
                          {
LABEL_148:
                            v106 = v17[4];
                            if (EncodedData)
                            {
                              memcpy((v106 + v17[2]), EncodedData, v101);
                            }

                            else if (v106)
                            {
                              memset_s((v106 + v17[2]), v101, 0, v101);
                            }

                            v99 = v17[2] + v101;
                            v17[2] = v99;
                          }

                          else
                          {
                            v145 = EncodedData;
                            do
                            {
                              while (!v102)
                              {
                                v102 = 0x4000;
                                v104 = 0x4000;
                                if (v100 <= 0x4000)
                                {
                                  goto LABEL_146;
                                }
                              }

                              v103 = v102 >> 1;
                              if ((v102 & (v102 >> 1)) != 0)
                              {
                                v103 = v102 & (v102 >> 1);
                              }

                              v102 += v103;
                            }

                            while (v102 < v100);
                            v104 = v102;
                            if (v102 >= 0x2000000001)
                            {
                              *__error() = 12;
                              goto LABEL_155;
                            }

LABEL_146:
                            v144 = v17[4];
                            v105 = realloc(v144, v104);
                            if (v105)
                            {
                              v17[3] = v104;
                              v17[4] = v105;
                              EncodedData = v145;
                              goto LABEL_148;
                            }

                            free(v144);
LABEL_155:
                            v99 = 0;
                            v17[2] = 0;
                            v17[3] = 0;
                            v17[4] = 0;
                          }
                        }

                        if ((__src & 1) == 0)
                        {
                          __srca = AAEntryXATBlobGetEncodedData(xat);
                          v107 = AAEntryXATBlobGetEncodedSize(xat);
                          v99 = v17[2];
                          v108 = v99 + v107;
                          if (!__CFADD__(v99, v107) && (v108 & 0x8000000000000000) == 0)
                          {
                            v109 = v107;
                            v110 = v17[3];
                            if (v110 >= v108)
                            {
LABEL_171:
                              v114 = v17[4];
                              if (__srca)
                              {
                                memcpy((v114 + v17[2]), __srca, v109);
                              }

                              else if (v114)
                              {
                                memset_s((v114 + v17[2]), v109, 0, v109);
                              }

                              v99 = v17[2] + v109;
                              v17[2] = v99;
                            }

                            else
                            {
                              do
                              {
                                while (!v110)
                                {
                                  v110 = 0x4000;
                                  v112 = 0x4000;
                                  if (v108 <= 0x4000)
                                  {
                                    goto LABEL_169;
                                  }
                                }

                                v111 = v110 >> 1;
                                if ((v110 & (v110 >> 1)) != 0)
                                {
                                  v111 = v110 & (v110 >> 1);
                                }

                                v110 += v111;
                              }

                              while (v110 < v108);
                              v112 = v110;
                              if (v110 >= 0x2000000001)
                              {
                                *__error() = 12;
                                goto LABEL_177;
                              }

LABEL_169:
                              v146 = v17[4];
                              v113 = realloc(v146, v112);
                              if (v113)
                              {
                                v17[3] = v112;
                                v17[4] = v113;
                                goto LABEL_171;
                              }

                              free(v146);
LABEL_177:
                              v99 = 0;
                              v17[2] = 0;
                              v17[3] = 0;
                              v17[4] = 0;
                            }
                          }
                        }

                        if ((v150 & 1) == 0)
                        {
                          v115 = AAEntryACLBlobGetEncodedData(v13);
                          v116 = AAEntryACLBlobGetEncodedSize(v13);
                          v99 = v17[2];
                          v117 = v99 + v116;
                          if (!__CFADD__(v99, v116) && (v117 & 0x8000000000000000) == 0)
                          {
                            v118 = v116;
                            v119 = v17[3];
                            if (v119 >= v117)
                            {
LABEL_194:
                              v123 = v17[4];
                              if (v115)
                              {
                                memcpy((v123 + v17[2]), v115, v118);
                              }

                              else if (v123)
                              {
                                memset_s((v123 + v17[2]), v118, 0, v118);
                              }

                              v99 = v17[2] + v118;
                              v17[2] = v99;
                            }

                            else
                            {
                              __srcb = v115;
                              do
                              {
                                while (!v119)
                                {
                                  v119 = 0x4000;
                                  v121 = 0x4000;
                                  if (v117 <= 0x4000)
                                  {
                                    goto LABEL_192;
                                  }
                                }

                                v120 = v119 >> 1;
                                if ((v119 & (v119 >> 1)) != 0)
                                {
                                  v120 = v119 & (v119 >> 1);
                                }

                                v119 += v120;
                              }

                              while (v119 < v117);
                              v121 = v119;
                              if (v119 >= 0x2000000001)
                              {
                                *__error() = 12;
                                goto LABEL_200;
                              }

LABEL_192:
                              v151 = v17[4];
                              v122 = realloc(v151, v121);
                              if (v122)
                              {
                                v17[3] = v121;
                                v17[4] = v122;
                                v115 = __srcb;
                                goto LABEL_194;
                              }

                              free(v151);
LABEL_200:
                              v99 = 0;
                              v17[2] = 0;
                              v17[3] = 0;
                              v17[4] = 0;
                            }
                          }
                        }

                        if ((v152 & 1) == 0)
                        {
                          v124 = AAEntryYECBlobGetEncodedData(v16);
                          v125 = AAEntryYECBlobGetEncodedSize(v16);
                          v99 = v17[2];
                          v126 = v99 + v125;
                          if (!__CFADD__(v99, v125) && (v126 & 0x8000000000000000) == 0)
                          {
                            v127 = v125;
                            v128 = v17[3];
                            if (v128 >= v126)
                            {
LABEL_217:
                              v132 = v17[4];
                              if (v124)
                              {
                                memcpy((v132 + v17[2]), v124, v127);
                              }

                              else if (v132)
                              {
                                memset_s((v132 + v17[2]), v127, 0, v127);
                              }

                              v99 = v17[2] + v127;
                              v17[2] = v99;
                            }

                            else
                            {
                              __srcc = v124;
                              do
                              {
                                while (!v128)
                                {
                                  v128 = 0x4000;
                                  v130 = 0x4000;
                                  if (v126 <= 0x4000)
                                  {
                                    goto LABEL_215;
                                  }
                                }

                                v129 = v128 >> 1;
                                if ((v128 & (v128 >> 1)) != 0)
                                {
                                  v129 = v128 & (v128 >> 1);
                                }

                                v128 += v129;
                              }

                              while (v128 < v126);
                              v130 = v128;
                              if (v128 >= 0x2000000001)
                              {
                                *__error() = 12;
                                goto LABEL_223;
                              }

LABEL_215:
                              v153 = v17[4];
                              v131 = realloc(v153, v130);
                              if (v131)
                              {
                                v17[3] = v130;
                                v17[4] = v131;
                                v124 = __srcc;
                                goto LABEL_217;
                              }

                              free(v153);
LABEL_223:
                              v99 = 0;
                              v17[2] = 0;
                              v17[3] = 0;
                              v17[4] = 0;
                            }
                          }
                        }

                        if ((v149 & 1) != 0 || (v133 = size[0], v134 = __CFADD__(v99, size[0]), v135 = v99 + size[0], v134) || (v135 & 0x8000000000000000) != 0)
                        {
                          v21 = 0;
                          v19 = 0;
                        }

                        else
                        {
                          v136 = v163;
                          v137 = v17[3];
                          if (v137 >= v135)
                          {
LABEL_242:
                            v141 = v17[4];
                            if (v136)
                            {
                              memcpy((v141 + v17[2]), v136, v133);
                            }

                            else if (v141)
                            {
                              memset_s((v141 + v17[2]), v133, 0, v133);
                            }

                            v21 = 0;
                            v19 = 0;
                            v17[2] += v133;
                          }

                          else
                          {
                            do
                            {
                              while (!v137)
                              {
                                v137 = 0x4000;
                                v139 = 0x4000;
                                if (v135 <= 0x4000)
                                {
                                  goto LABEL_240;
                                }
                              }

                              v138 = v137 >> 1;
                              if ((v137 & (v137 >> 1)) != 0)
                              {
                                v138 = v137 & (v137 >> 1);
                              }

                              v137 += v138;
                            }

                            while (v137 < v135);
                            v139 = v137;
                            if (v137 >= 0x2000000001)
                            {
                              *__error() = 12;
                              goto LABEL_248;
                            }

LABEL_240:
                            v154 = v17[4];
                            __srcd = v163;
                            v140 = realloc(v154, v139);
                            if (v140)
                            {
                              v17[3] = v139;
                              v17[4] = v140;
                              v136 = __srcd;
                              goto LABEL_242;
                            }

                            free(v154);
LABEL_248:
                            v21 = 0;
                            v19 = 0;
                            v17[2] = 0;
                            v17[3] = 0;
                            v17[4] = 0;
                          }
                        }
                      }

                      v3 = v147;
                      goto LABEL_237;
                    }

                    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 251, 14, 0, "inserting YFP: %s", v56, v57, v167);
                    goto LABEL_42;
                  }

                  v39 = 249;
                  v40 = "initializing YFP field from path";
                }
              }
            }
          }

LABEL_41:
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", v39, 14, 0, v40, v22, v23, v143);
          goto LABEL_42;
        }

        sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 199, 14, "operation aborted", v25, v26, v27, v143);
        v44 = 0;
        v19 = 0;
        v7 = 0;
        v21 = 1;
        atomic_compare_exchange_strong(v2 + 280, &v44, 1u);
      }

LABEL_15:
      *(v20 + 120) = v21;
      ++v18;
    }

    while (v18 < v17[1]);
  }

  AAHeaderDestroy(v6);
  AAEntryXATBlobDestroy(v10);
  AAEntryACLBlobDestroy(v13);
  AAEntryYECBlobDestroy(v16);
  free(v163);
  memset_s(size, 0x18uLL, 0, 0x18uLL);
  if (v7)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

int AAArchiveStreamWritePathList(AAArchiveStream s, AAPathList path_list, AAFieldKeySet key_set, const char *dir, void *msg_data, AAEntryMessageProc msg_proc, AAFlagSet flags, int n_threads)
{
  v8 = __chkstk_darwin(s);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = v8;
  bzero(v281, 0x470uLL);
  v24 = sub_1000F4248();
  if (!v10)
  {
    v10 = sub_1000F4290();
  }

  v279 = v22;
  v280 = v20;
  v285 = 1024;
  LODWORD(__count) = v10;
  v278 = v12;
  v282 = v16;
  v283 = v14;
  if (!realpath_DARWIN_EXTSN(v18, v281))
  {
    v28 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", 373, 14, v28, "%s", v29, v30, v18);
LABEL_19:
    v42 = 0;
    v43 = 0;
    v44 = 0;
LABEL_20:
    v45 = 0;
    v46 = 0;
    goto LABEL_21;
  }

  v25 = AAPathListNodeFirst(v22);
  if (v25 != -1)
  {
    for (i = v25; i != -1; i = AAPathListNodeNext(v22, i))
    {
      ++v284;
    }
  }

  v286 = (v284 + v285 - 1) / v285;
  v27 = v284 << 7;
  if (v284 << 7 >= 0x2000000001)
  {
    *__error() = 12;
    v295 = 0;
LABEL_17:
    v37 = *__error();
    v40 = "malloc";
    v41 = 379;
LABEL_18:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", v41, 14, v37, v40, v38, v39, v239);
    goto LABEL_19;
  }

  v31 = malloc(v27);
  v295 = v31;
  if (!v31)
  {
    goto LABEL_17;
  }

  memset(v31, 255, v27);
  v32 = AAPathListNodeFirst(v22);
  if (v32 != -1)
  {
    v33 = v32;
    v34 = 24;
    do
    {
      *&v295[v34] = v33;
      v33 = AAPathListNodeNext(v22, v33);
      v34 += 128;
    }

    while (v33 != -1);
  }

  if (is_mul_ok(v286, 0x28uLL) && 40 * v286 < 0x2000000001)
  {
    v36 = calloc(v286, 0x28uLL);
  }

  else
  {
    v35 = __error();
    v36 = 0;
    *v35 = 12;
  }

  v287 = v36;
  v289 = calloc(__count, 0x10uLL);
  v54 = calloc(__count, 8uLL);
  v290 = v54;
  if (!v287 || !v289 || (v55 = v54) == 0)
  {
    v37 = *__error();
    v40 = "malloc";
    v41 = 387;
    goto LABEL_18;
  }

  v56 = __count;
  if (__count)
  {
    v57 = 0;
    do
    {
      v58 = &v289[16 * v57];
      *v58 = &v278;
      v290[v57++] = v58;
    }

    while (v57 != v56);
    v55 = v290;
  }

  v44 = sub_1001021B4(v56, v55, sub_1000E8DB0);
  if (!v44)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", 396, 14, 0, "ThreadPoolCreate", v64, v65, v239);
    v42 = 0;
    v43 = 0;
    goto LABEL_20;
  }

  if (v286)
  {
    v271 = v23;
    v66 = 0;
    v67 = 1;
    while (1)
    {
      if (v291)
      {
LABEL_50:
        v79 = 0;
        goto LABEL_57;
      }

      v68 = v285;
      v69 = v285 * v66;
      v70 = &v287[40 * v66];
      *v70 = v285 * v66;
      v71 = v68 * v66 + v68;
      *(v70 + 1) = v71;
      v72 = v284;
      if (v69 >= v284)
      {
        *v70 = v284;
      }

      if (v71 >= v72)
      {
        *(v70 + 1) = v72;
      }

      v73 = sub_100102924(v44, v59, v60, v61, v62, v63, v64, v65);
      if (!v73)
      {
        v80 = "ThreadPoolGetWorker";
        v81 = 408;
        goto LABEL_56;
      }

      *(v73 + 8) = v66;
      if ((sub_100102A58(v44, v73, v74, v75, v76, v77, v64, v65) & 0x80000000) != 0)
      {
        break;
      }

      v66 = v67;
      v78 = v286 > v67++;
      if (!v78)
      {
        goto LABEL_50;
      }
    }

    v80 = "ThreadPoolRunWorker";
    v81 = 410;
LABEL_56:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", v81, 14, 0, v80, v64, v65, v239);
    v79 = 1;
LABEL_57:
    v23 = v271;
  }

  else
  {
    v79 = 0;
  }

  if ((sub_100102638(v44) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", 414, 14, 0, "ThreadPoolDestroy", v38, v39, v239);
    if (!atomic_load(&v291))
    {
      goto LABEL_19;
    }

LABEL_78:
    v97 = v23[2];
    if (v97)
    {
      v97(*v23);
    }

    goto LABEL_19;
  }

  if (atomic_load(&v291))
  {
    goto LABEL_78;
  }

  if (v79)
  {
    goto LABEL_19;
  }

  v272 = v23;
  v255 = v12;
  v83 = v286;
  if (v286)
  {
    v84 = 0;
    v85 = 0;
    v86 = v287;
    v87 = v295;
    do
    {
      v88 = &v86[40 * v85];
      v90 = *v88;
      v89 = *(v88 + 1);
      v78 = v89 > v90;
      v91 = v89 - v90;
      if (v78)
      {
        v92 = &v87[128 * v90];
        do
        {
          *v92 += v84;
          v92 += 128;
          --v91;
        }

        while (v91);
      }

      v84 += *&v86[40 * v85++ + 16];
    }

    while (v85 != v83);
    if ((v84 & 0x8000000000000000) == 0)
    {
      v93 = v293;
      if (v293 >= v84)
      {
LABEL_85:
        v99 = 0;
        do
        {
          v100 = &v287[40 * v99];
          v101 = *(v100 + 2);
          v102 = v292 + v101;
          if (!__CFADD__(v292, v101) && (v102 & 0x8000000000000000) == 0)
          {
            v103 = *(v100 + 4);
            v104 = v293;
            if (v293 >= v102)
            {
LABEL_101:
              if (v103)
              {
                memcpy(&v294[v292], v103, v101);
              }

              else if (v294)
              {
                memset_s(&v294[v292], v101, 0, v101);
              }

              v292 += v101;
            }

            else
            {
              do
              {
                while (!v104)
                {
                  v104 = 0x4000;
                  if (v102 <= 0x4000)
                  {
                    v106 = v294;
                    v104 = 0x4000;
                    goto LABEL_99;
                  }
                }

                v105 = v104 >> 1;
                if ((v104 & (v104 >> 1)) != 0)
                {
                  v105 = v104 & (v104 >> 1);
                }

                v104 += v105;
              }

              while (v104 < v102);
              if (v104 >= 0x2000000001)
              {
                *__error() = 12;
                goto LABEL_107;
              }

              v106 = v294;
LABEL_99:
              v107 = realloc(v106, v104);
              if (v107)
              {
                v294 = v107;
                v293 = v104;
                goto LABEL_101;
              }

              free(v106);
LABEL_107:
              v292 = 0;
              v293 = 0;
              v294 = 0;
            }
          }

          v108 = &v287[40 * v99];
          free(v108[4]);
          memset_s(v108 + 2, 0x18uLL, 0, 0x18uLL);
          ++v99;
        }

        while (v99 < v286);
        goto LABEL_109;
      }

      do
      {
        while (!v93)
        {
          v93 = 0x4000;
          if (v84 <= 0x4000)
          {
            v95 = v294;
            v93 = 0x4000;
            goto LABEL_83;
          }
        }

        v94 = v93 >> 1;
        if ((v93 & (v93 >> 1)) != 0)
        {
          v94 = v93 & (v93 >> 1);
        }

        v93 += v94;
      }

      while (v93 < v84);
      if (v93 >= 0x2000000001)
      {
        *__error() = 12;
        goto LABEL_287;
      }

      v95 = v294;
LABEL_83:
      v98 = realloc(v95, v93);
      if (v98)
      {
        v294 = v98;
        v293 = v93;
        if (!v286)
        {
          goto LABEL_109;
        }

        goto LABEL_85;
      }

      free(v95);
LABEL_287:
      v294 = 0;
      v292 = 0;
      v293 = 0;
    }

    v40 = "allocating final blob";
    v41 = 428;
    v37 = 0;
    goto LABEL_18;
  }

LABEL_109:
  v109.ikey = 4410440;
  if (AAFieldKeySetContainsKey(v20, v109))
  {
    qsort(v295, v284, 0x80uLL, sub_1000EB63C);
    v110 = v284;
    if (v284)
    {
      v111 = 0;
      v112 = 0;
      v113 = 0;
      v114 = v295;
      v115 = v295 + 160;
      v116 = vdupq_n_s64(2uLL);
      while (1)
      {
        v117 = &v114[128 * v113];
        v120 = *(v117 + 4);
        v119 = v117 + 32;
        v118 = v120;
        if (v120 == -1)
        {
LABEL_130:
          v250 = v112;
          v257 = v111;
          goto LABEL_133;
        }

        v121 = v113 + 1;
        if (v113 + 1 < v110)
        {
          v122 = &v115[128 * v113];
          v123 = v122;
          v124 = 1;
          while (1)
          {
            v125 = *v123;
            v123 += 128;
            if (v125 != v118)
            {
              break;
            }

            ++v124;
            if (!(v113 - v110 + v124))
            {
              v124 = v110 - v113;
              v121 = v110;
              goto LABEL_119;
            }
          }

          v121 = v113 + v124;
LABEL_119:
          if (!v124)
          {
            goto LABEL_128;
          }

          if (v124 != 1)
          {
            break;
          }
        }

        *v119 = -1;
LABEL_129:
        v113 = v121;
        if (v121 >= v110)
        {
          goto LABEL_130;
        }
      }

      v126 = (v124 + 1) & 0xFFFFFFFFFFFFFFFELL;
      v127 = vdupq_n_s64(v124 - 1);
      v128 = xmmword_1003772E0;
      do
      {
        v129 = vmovn_s64(vcgeq_u64(v127, v128));
        if (v129.i8[0])
        {
          *(v122 - 16) = v111;
        }

        if (v129.i8[4])
        {
          *v122 = v111;
        }

        v128 = vaddq_s64(v128, v116);
        v122 += 256;
        v126 -= 2;
      }

      while (v126);
LABEL_128:
      ++v111;
      v112 += v124;
      goto LABEL_129;
    }

    v257 = 0;
    v250 = 0;
LABEL_133:
    v130 = 1;
  }

  else
  {
    v257 = 0;
    v250 = 0;
    v130 = 0;
  }

  v131.ikey = 4410435;
  if (AAFieldKeySetContainsKey(v20, v131))
  {
    qsort(v295, v284, 0x80uLL, sub_1000EB670);
    v132 = v284;
    if (v284)
    {
      v133 = 0;
      v134 = 0;
      v135 = 0;
      v136 = v295;
      v137 = v295 + 168;
      v138 = vdupq_n_s64(2uLL);
      while (1)
      {
        v139 = &v136[128 * v135];
        v142 = *(v139 + 5);
        v141 = v139 + 40;
        v140 = v142;
        if (v142 == -1)
        {
LABEL_155:
          v249 = v134;
          v256 = v133;
          goto LABEL_158;
        }

        v143 = v135 + 1;
        if (v135 + 1 < v132)
        {
          v144 = &v137[128 * v135];
          v145 = v144;
          v146 = 1;
          while (1)
          {
            v147 = *v145;
            v145 += 128;
            if (v147 != v140)
            {
              break;
            }

            ++v146;
            if (!(v135 - v132 + v146))
            {
              v146 = v132 - v135;
              v143 = v132;
              goto LABEL_144;
            }
          }

          v143 = v135 + v146;
LABEL_144:
          if (!v146)
          {
            goto LABEL_153;
          }

          if (v146 != 1)
          {
            break;
          }
        }

        *v141 = -1;
LABEL_154:
        v135 = v143;
        if (v143 >= v132)
        {
          goto LABEL_155;
        }
      }

      v148 = (v146 + 1) & 0xFFFFFFFFFFFFFFFELL;
      v149 = vdupq_n_s64(v146 - 1);
      v150 = xmmword_1003772E0;
      do
      {
        v151 = vmovn_s64(vcgeq_u64(v149, v150));
        if (v151.i8[0])
        {
          *(v144 - 16) = v133;
        }

        if (v151.i8[4])
        {
          *v144 = v133;
        }

        v150 = vaddq_s64(v150, v138);
        v144 += 256;
        v148 -= 2;
      }

      while (v148);
LABEL_153:
      ++v133;
      v134 += v146;
      goto LABEL_154;
    }

    v256 = 0;
    v249 = 0;
LABEL_158:
    v130 = 1;
  }

  else
  {
    v256 = 0;
    v249 = 0;
  }

  v152.ikey = 4410451;
  if (AAFieldKeySetContainsKey(v20, v152))
  {
    qsort(v295, v284, 0x80uLL, sub_1000EB6A4);
    v153.ikey = 3295315;
    v258 = 1;
    if (!AAFieldKeySetContainsKey(v20, v153))
    {
      v154.ikey = 3360851;
      if (!AAFieldKeySetContainsKey(v20, v154))
      {
        v155.ikey = 3491923;
        if (!AAFieldKeySetContainsKey(v20, v155))
        {
          v258 = 0;
        }
      }
    }

    v156 = v284;
    if (v284)
    {
      v264 = 0;
      v157 = 0;
      v260 = 0;
      v47 = 1;
      v252 = vdupq_n_s64(2uLL);
      v261 = v20;
      while (1)
      {
        v158 = &v295[128 * v157];
        if (v158[6] == -1)
        {
          goto LABEL_201;
        }

        v159 = v157 + 1;
        if (v157 + 1 >= v156)
        {
          goto LABEL_174;
        }

        *v265 = v156 - v157;
        v267 = v156;
        v262 = v157 << 7;
        v160 = (v158 + 23);
        v269 = v157;
        v161 = v157 - v156;
        v162 = 1;
        while (!memcmp(v158 + 7, v160, 0x40uLL))
        {
          ++v162;
          v160 += 128;
          if (!(v161 + v162))
          {
            v162 = *v265;
            v163 = v267;
            goto LABEL_173;
          }
        }

        v163 = v269 + v162;
LABEL_173:
        v164 = v162 - 1;
        v20 = v261;
        if (v162 == 1)
        {
LABEL_174:
          v158[6] = -1;
          v157 = v159;
        }

        else
        {
          v165 = v163;
          if (v258)
          {
            goto LABEL_176;
          }

          if ((AAPathListNodeGetPath(v22, v158[3], 0x400uLL, path, 0) & 0x80000000) == 0)
          {
            if (v162)
            {
              v175 = v262 + 152;
              v166 = v162 - 1;
              while (1)
              {
                if (AAPathListNodeGetPath(v22, *&v295[v175], 0x400uLL, v277, 0) < 0)
                {
                  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", 526, 14, 0, "AAPathListNodeGetPath", v176, v177, v239);
                  v47 = 0;
                }

                else if (sub_1000F5D8C(v18) < 1)
                {
                  sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", 527, 14, "Hash collision detected: %s != %s", v178, v179, v180, path);
                  v167 = -1;
                  goto LABEL_178;
                }

                v175 += 128;
                if (!--v164)
                {
                  goto LABEL_177;
                }
              }
            }

LABEL_176:
            v166 = v162 - 1;
LABEL_177:
            v167 = v264;
            v260 += v162;
            ++v264;
LABEL_178:
            if (v162)
            {
              v168 = (v162 + 1) & 0xFFFFFFFFFFFFFFFELL;
              v169 = vdupq_n_s64(v166);
              v170 = &v295[v262 + 176];
              v171 = xmmword_1003772E0;
              do
              {
                v172 = vmovn_s64(vcgeq_u64(v169, v171));
                if (v172.i8[0])
                {
                  *(v170 - 16) = v167;
                }

                if (v172.i8[4])
                {
                  *v170 = v167;
                }

                v171 = vaddq_s64(v171, v252);
                v170 += 32;
                v168 -= 2;
              }

              while (v168);
            }

            v157 = v165;
            goto LABEL_186;
          }

          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", 523, 14, 0, "AAPathListNodeGetPath", v173, v174, v239);
          v47 = 0;
          v157 = v269;
        }

LABEL_186:
        v156 = v284;
        if (v157 >= v284)
        {
          goto LABEL_201;
        }
      }
    }

    v260 = 0;
    v264 = 0;
    v47 = 1;
  }

  else
  {
    if (!v130)
    {
      v260 = 0;
      v264 = 0;
      v47 = 1;
      goto LABEL_202;
    }

    v260 = 0;
    v264 = 0;
    v47 = 1;
    v156 = v284;
  }

LABEL_201:
  qsort(v295, v156, 0x80uLL, sub_1000EB708);
LABEL_202:
  if ((v257 + 1) < 0x2000000001)
  {
    v46 = calloc(v257 + 1, 1uLL);
  }

  else
  {
    v46 = 0;
    *__error() = 12;
  }

  if ((v256 + 1) < 0x2000000001)
  {
    v45 = calloc(v256 + 1, 1uLL);
  }

  else
  {
    v45 = 0;
    *__error() = 12;
  }

  if ((v264 + 1) >= 0x2000000001)
  {
    v44 = 0;
    *__error() = 12;
LABEL_210:
    v181 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", 554, 14, *v181, "malloc", v182, v183, v239);
    v42 = 0;
    v43 = 0;
    goto LABEL_21;
  }

  v184 = calloc(v264 + 1, 1uLL);
  v44 = v184;
  if (!v46 || !v45 || !v184)
  {
    goto LABEL_210;
  }

  v43 = AAHeaderCreate();
  if (!v43)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", 558, 14, 0, "Header creation", v185, v186, v239);
    v42 = 0;
    goto LABEL_21;
  }

  v42 = malloc(0x40000uLL);
  if (!v42)
  {
    v228 = *__error();
    v229 = "malloc";
    v230 = 560;
LABEL_328:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", v230, 14, v228, v229, v187, v188, v239);
    goto LABEL_21;
  }

  v189 = v284;
  v241 = 1;
  if (!v284)
  {
    LODWORD(v253) = 0;
    v268 = 0;
LABEL_291:
    v244 = v189;
    v231 = sub_1000F4248();
    if (v255 >> 62)
    {
      v232 = v231;
      fwrite("Archive path list\n", 0x12uLL, 1uLL, __stderrp);
      bzero(path, 0x400uLL);
      if (!AAFieldKeySetSerialize(v20, 0x400uLL, path))
      {
        fprintf(__stderrp, "%12s %s\n", "fields", path);
      }

      fprintf(__stderrp, "%12llu entries\n", v284);
      if (v257)
      {
        fprintf(__stderrp, "%12llu entries in %llu hard link clusters (HLC)\n", v250, v257);
      }

      if (v256)
      {
        fprintf(__stderrp, "%12llu entries in %llu clone clusters (CLC)\n", v249, v256);
      }

      if (v264)
      {
        fprintf(__stderrp, "%12llu entries in %llu same data clusters (SLC)\n", v260, v264);
      }

      if (v253)
      {
        fprintf(__stderrp, "%12u entries with XAT field\n", v253);
      }

      if (v268)
      {
        fprintf(__stderrp, "%12u entries with ACL field\n", v268);
      }

      v233 = v232 - v24;
      if (!v241)
      {
        fprintf(__stderrp, "%12u entries with YEC field\n", v268);
      }

      fprintf(__stderrp, "%12llu bytes in regular files DAT\n", v244);
      fprintf(__stderrp, "%12.2f time (s)\n", v233);
    }

    goto LABEL_22;
  }

  v190 = 0;
  v243 = 0;
  v268 = 0;
  v253 = 0;
  v248 = 0;
  v191 = 0;
  while (1)
  {
    v242 = v191;
    v192 = &v295[128 * v190];
    v194 = *v192;
    v193 = v192[1];
    v270 = v192;
    v195 = v192[2];
    v251 = v193 - v195;
    if (v193 < v195 || v194 >= v292)
    {
      v229 = "invalid header blob size";
      v230 = 568;
LABEL_327:
      v228 = 0;
      goto LABEL_328;
    }

    v197 = v192[2];
    if ((sub_1000EB968(v43, &v294[v194], v195) & 0x80000000) != 0)
    {
      v229 = "parse stored header";
      v230 = 569;
      goto LABEL_327;
    }

    if ((v255 & 2) != 0)
    {
      v198 = v270[4];
      if (v198 == -1)
      {
        v199 = v270[5];
        if (v199 == -1)
        {
          v200 = v270[6];
          if (v200 == -1)
          {
            goto LABEL_234;
          }

          if (!*(v44 + v200))
          {
            *(v44 + v200) = 1;
            goto LABEL_234;
          }
        }

        else if (!v45[v199])
        {
          v45[v199] = 1;
          goto LABEL_234;
        }
      }

      else if (!v46[v198])
      {
        v46[v198] = 1;
        goto LABEL_234;
      }

      v201.ikey = 5521732;
      KeyIndex = AAHeaderGetKeyIndex(v43, v201);
      if ((KeyIndex & 0x80000000) == 0)
      {
        AAHeaderRemoveField(v43, KeyIndex);
      }
    }

LABEL_234:
    v203 = v270[4];
    if (v203 != -1)
    {
      v204.ikey = 4410440;
      if (AAHeaderSetFieldUInt(v43, 0xFFFFFFFF, v204, v203) < 0)
      {
        v229 = "add HLC field";
        v230 = 603;
        goto LABEL_327;
      }
    }

    v205 = v270[5];
    if (v205 != -1)
    {
      v206.ikey = 4410435;
      if (AAHeaderSetFieldUInt(v43, 0xFFFFFFFF, v206, v205) < 0)
      {
        v229 = "add CLC field";
        v230 = 604;
        goto LABEL_327;
      }
    }

    v207 = v270[6];
    if (v207 != -1)
    {
      v208.ikey = 4410451;
      if (AAHeaderSetFieldUInt(v43, 0xFFFFFFFF, v208, v207) < 0)
      {
        v229 = "add SLC field";
        v230 = 605;
        goto LABEL_327;
      }
    }

    v209 = v272[3];
    if (!v209 || (v209(*v272, v43) & 0x80000000) != 0)
    {
      v229 = "encoding header";
      v230 = 608;
      goto LABEL_327;
    }

    FieldCount = AAHeaderGetFieldCount(v43);
    if (FieldCount)
    {
      break;
    }

    v211 = v253;
LABEL_280:
    if (v251)
    {
      v229 = "blob byte count mismatch";
      v230 = 679;
      goto LABEL_327;
    }

    v253 = v211;
    v190 = (v242 + 1);
    v191 = v242 + 1;
    if (v284 <= v190)
    {
      v241 = v248 == 0;
      v189 = v243;
      goto LABEL_291;
    }
  }

  v210 = 0;
  v263 = 0;
  v246 = v197 + v194;
  v211 = v253;
  while (1)
  {
    v212 = v210;
    if (AAHeaderGetFieldType(v43, v210) == 5)
    {
      break;
    }

    v226 = v212;
LABEL_277:
    v210 = v226 + 1;
    if (v210 == FieldCount)
    {
      goto LABEL_280;
    }
  }

  size = 0;
  offset = 0;
  FieldKey = AAHeaderGetFieldKey(v43, v212);
  v273 = FieldKey;
  v245 = v212;
  if (AAHeaderGetFieldBlob(v43, v212, &size, &offset) < 0)
  {
    v229 = "get blob location";
    v230 = 620;
    goto LABEL_327;
  }

  if (v263 != offset)
  {
    v229 = "blob segment mismatch";
    v230 = 621;
    goto LABEL_327;
  }

  v213 = FieldKey.ikey & 0xFFFFFF;
  if ((FieldKey.ikey & 0xFFFFFF) == 0x4C4341)
  {
    v214 = v268 + 1;
  }

  else
  {
    v214 = v268;
  }

  v268 = v214;
  if (v213 == 5521752)
  {
    v211 = (v211 + 1);
  }

  else
  {
    v211 = v211;
  }

  v215 = v248;
  if (v213 == 4408665)
  {
    v215 = v248 + 1;
  }

  v248 = v215;
  if (v213 != 5521732)
  {
    if (size > v251)
    {
      v239 = &v273;
      v229 = "Blob segment out of range, key=%s";
      v230 = 665;
      goto LABEL_327;
    }

    v227 = v272[4];
    if (!v227 || (v227(*v272, FieldKey.ikey, &v294[v246]) & 0x80000000) != 0)
    {
      v229 = "sending blob data";
      v230 = 666;
      goto LABEL_327;
    }

    v225 = size;
    v246 += size;
    v251 -= size;
    goto LABEL_276;
  }

  v216 = size;
  if (AAPathListNodeGetPath(v279, v270[3], 0x400uLL, v277, 0) < 0)
  {
    v229 = "getting entry path";
    v230 = 636;
    goto LABEL_327;
  }

  if ((sub_1000F4680(path, 0x800uLL, v281, v277) & 0x80000000) != 0)
  {
    v229 = "getting entry full path";
    v230 = 637;
    goto LABEL_327;
  }

  v240 = v216;
  v254 = v211;
  v266 = open(path, 0);
  if (v266 < 0)
  {
    v228 = *__error();
    v239 = path;
    v229 = "%s";
    v230 = 639;
    goto LABEL_328;
  }

  v217 = size;
  if (!size)
  {
LABEL_269:
    close(v266);
    if (!v47)
    {
      goto LABEL_21;
    }

    v243 += v240;
    v47 = 1;
    v225 = size;
    v211 = v254;
LABEL_276:
    v226 = v245;
    v263 += v225;
    goto LABEL_277;
  }

  v218 = 0;
  while (1)
  {
    if (v218 + 0x40000 <= v217)
    {
      v219 = 0x40000;
    }

    else
    {
      v219 = v217 - v218;
    }

    v220 = read(v266, v42, v219);
    if (v220 < 0)
    {
      v236 = *__error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", 649, 14, v236, "read: %s", v237, v238, path);
      goto LABEL_312;
    }

    v223 = v220;
    if (!v220)
    {
      break;
    }

    v224 = v272[4];
    if (!v224 || (v224(*v272, FieldKey.ikey, v42, v220) & 0x80000000) != 0)
    {
      v234 = "sending blob data";
      v235 = 651;
      goto LABEL_311;
    }

    v218 += v223;
    v217 = size;
    if (v218 >= size)
    {
      goto LABEL_269;
    }
  }

  v239 = path;
  v234 = "truncated: %s";
  v235 = 650;
LABEL_311:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", v235, 14, 0, v234, v221, v222, v239);
LABEL_312:
  close(v266);
LABEL_21:
  v47 = 0;
LABEL_22:
  if ((sub_100102638(0) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", 703, 14, 0, "ThreadPoolDestroy", v48, v49, v239);
    v47 = 0;
  }

  if (v287 && v286)
  {
    v50 = 0;
    v51 = 32;
    do
    {
      v52 = &v287[v51 - 16];
      free(*&v287[v51]);
      memset_s(v52, 0x18uLL, 0, 0x18uLL);
      ++v50;
      v51 += 40;
    }

    while (v50 < v286);
  }

  free(v290);
  free(v289);
  free(v287);
  free(v295);
  free(v42);
  free(v46);
  free(v45);
  free(v44);
  AAHeaderDestroy(v43);
  free(v294);
  memset_s(&v292, 0x18uLL, 0, 0x18uLL);
  if (v47)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

uint64_t sub_1000EB63C(void *a1, void *a2)
{
  v4 = a1[4];
  v2 = a2[4];
  v3 = v4 >= v2;
  LODWORD(v4) = v4 != v2;
  if (v3)
  {
    v4 = v4;
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  if (!v4)
  {
    if (*a1 < *a2)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return *a1 != *a2;
    }
  }

  return v4;
}

uint64_t sub_1000EB670(void *a1, void *a2)
{
  v4 = a1[5];
  v2 = a2[5];
  v3 = v4 >= v2;
  LODWORD(v4) = v4 != v2;
  if (v3)
  {
    v4 = v4;
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  if (!v4)
  {
    if (*a1 < *a2)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return *a1 != *a2;
    }
  }

  return v4;
}

uint64_t sub_1000EB6A4(void *a1, void *a2)
{
  v3 = a1[6];
  v4 = a2[6];
  v5 = v3 >= v4;
  v6 = v3 != v4;
  if (v5)
  {
    result = v6;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  if (!result)
  {
    result = memcmp(a1 + 7, a2 + 7, 0x40uLL);
    if (!result)
    {
      if (*a1 < *a2)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return *a1 != *a2;
      }
    }
  }

  return result;
}

uint64_t sub_1000EB708(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 != *a2;
  }
}

void *sub_1000EB720(uint64_t a1, int a2, uint64_t a3)
{
  v6 = calloc(1uLL, 0x68uLL);
  v7 = malloc(0x20uLL);
  v8 = v7;
  if (v7 && (memset_s(v7, 0x20uLL, 0, 0x20uLL), v6))
  {
    *v8 = a1;
    v8[2] = a2;
    *(v8 + 2) = a3;
    *v6 = v8;
    v6[1] = sub_1000EB810;
    v6[7] = sub_1000EB848;
    v6[2] = sub_1000EB85C;
  }

  else
  {
    v9 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "aaArchiveBlobInputStreamOpen", 769, 14, *v9, "malloc", v10, v11, v13);
    free(v6);
    free(v8);
  }

  return v6;
}

unsigned int *sub_1000EB810(unsigned int *result)
{
  if (result)
  {
    v1 = atomic_load(result + 6);
    free(result);
    if (v1)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000EB85C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (atomic_load((a1 + 24)))
  {
    return -1;
  }

  v7 = *(a1 + 16);
  if (!v7)
  {
    return 0;
  }

  v4 = v7 >= a3 ? a3 : *(a1 + 16);
  v8 = *(*a1 + 48);
  if (!v8 || (v8(**a1, *(a1 + 8), a2, v4) & 0x80000000) != 0)
  {
    return -1;
  }

  *(a1 + 16) -= v4;
  return v4;
}

uint64_t sub_1000EB8E0(uint64_t a1, unint64_t a2, const uint8_t *a3, size_t a4)
{
  v4 = a2 >= 2;
  v5 = a2 - 2;
  if (!v4)
  {
    return -1;
  }

  *a1 = 24184;
  v7 = compression_encode_buffer((a1 + 2), v5, a3, a4, 0, COMPRESSION_ZLIB);
  if (v7)
  {
    return v7 + 2;
  }

  else
  {
    return -1;
  }
}

size_t sub_1000EB928(uint8_t *a1, size_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >= 2;
  v5 = a4 - 2;
  if (!v4)
  {
    return -1;
  }

  result = compression_decode_buffer(a1, a2, (a3 + 2), v5, 0, COMPRESSION_ZLIB);
  if (!result)
  {
    return -1;
  }

  return result;
}

uint64_t sub_1000EB968(uint64_t a1, unsigned __int16 *a2, unint64_t a3)
{
  sub_1000EBED0(a1);
  *a1 = 0;
  *(a1 + 40) = 0;
  if (a3 <= 5)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderInitWithEncodedData", 113, 101, 0, "invalid header size: %llu", v6, v7, a3);
    goto LABEL_67;
  }

  if (*a2 != 826360153 && *a2 != 825246017)
  {
    v8 = "invalid header magic";
    v9 = 114;
    goto LABEL_66;
  }

  if (a2[2] != a3)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderInitWithEncodedData", 116, 101, 0, "header size mismatch: stored %u, got %llu", v6, v7, a2[2]);
    goto LABEL_67;
  }

  *(a1 + 16) = 0;
  v10 = (a1 + 16);
  v11 = *(a1 + 24);
  if (v11 >= a3)
  {
    v14 = 0;
    v15 = *(a1 + 32);
  }

  else
  {
    do
    {
      while (!v11)
      {
        v11 = 0x4000;
        if (a3 <= 0x4000)
        {
          v13 = (a1 + 32);
          v11 = 0x4000;
          goto LABEL_19;
        }
      }

      v12 = v11 >> 1;
      if ((v11 & (v11 >> 1)) != 0)
      {
        v12 = v11 & (v11 >> 1);
      }

      v11 += v12;
    }

    while (v11 < a3);
    v13 = (a1 + 32);
    if (v11 >= 0x2000000001)
    {
      *__error() = 12;
      goto LABEL_64;
    }

LABEL_19:
    v16 = *v13;
    v15 = realloc(*v13, v11);
    if (!v15)
    {
      free(v16);
LABEL_64:
      *v13 = 0;
      *v10 = 0;
      *(a1 + 24) = 0;
LABEL_65:
      v8 = "realloc blob";
      v9 = 121;
      goto LABEL_66;
    }

    *(a1 + 24) = v11;
    *(a1 + 32) = v15;
    v14 = *(a1 + 16);
    if (!a2)
    {
      memset_s(&v15[v14], a3, 0, a3);
      goto LABEL_22;
    }
  }

  memcpy(&v15[v14], a2, a3);
LABEL_22:
  v17 = *v10 + a3;
  *v10 = v17;
  if ((a3 & 0x8000000000000000) != 0 || v17 < 4)
  {
    goto LABEL_65;
  }

  **(a1 + 32) = 825246017;
  if (a3 == 6)
  {
    return 0;
  }

  v19 = 0;
  v20 = 6;
  while (2)
  {
    if ((sub_1000EC074(a1, *a1 + 1) & 0x80000000) != 0)
    {
      v8 = "realloc_fields";
      v9 = 127;
      goto LABEL_66;
    }

    v21 = *(a1 + 8);
    v22 = (*a1)++;
    if (v20 + 4 > a3)
    {
      v8 = "truncated header";
      v9 = 130;
      goto LABEL_66;
    }

    v23 = v21 + 48 * v22;
    v24 = a2 + v20;
    v25 = *(a2 + v20);
    *v23 = v25;
    v26 = HIBYTE(v25);
    v27 = SHIBYTE(v25);
    *(v23 + 8) = v27;
    *(v23 + 3) = 0;
    switch(v26)
    {
      case '1':
        v28 = 1;
        v29 = 1;
        goto LABEL_51;
      case '2':
        v28 = 1;
        goto LABEL_43;
      case '3':
      case '5':
      case '6':
      case '7':
      case '9':
      case ':':
      case ';':
      case '<':
      case '=':
      case '>':
      case '?':
      case '@':
      case 'D':
      case 'E':
      case 'K':
      case 'L':
      case 'M':
      case 'N':
      case 'O':
      case 'Q':
      case 'R':
        goto LABEL_72;
      case '4':
        v28 = 1;
        goto LABEL_41;
      case '8':
        v28 = 1;
        goto LABEL_46;
      case 'A':
        v28 = 5;
LABEL_43:
        v29 = 2;
        goto LABEL_51;
      case 'B':
        v28 = 5;
        goto LABEL_41;
      case 'C':
        v28 = 5;
        goto LABEL_46;
      case 'F':
        v28 = 3;
LABEL_41:
        v29 = 4;
        goto LABEL_51;
      case 'G':
        v28 = 3;
        v29 = 20;
        goto LABEL_51;
      case 'H':
        v28 = 3;
        v29 = 32;
        goto LABEL_51;
      case 'I':
        v28 = 3;
        v29 = 48;
        goto LABEL_51;
      case 'J':
        v28 = 3;
        v29 = 64;
        goto LABEL_51;
      case 'P':
        if (v20 + 6 <= a3)
        {
          v19 = *(v24 + 2);
          v29 = v19 + 2;
          v28 = 2;
LABEL_51:
          *(v23 + 4) = v28;
          if (v20 + 4 + v29 > a3)
          {
            v8 = "truncated header";
            v9 = 161;
            goto LABEL_66;
          }

          v30 = 0;
          *(v23 + 40) = 0;
          v31 = (v23 + 40);
          v32 = v29 + 4;
          *(v23 + 12) = v20;
          *(v23 + 16) = v29 + 4;
          *(v23 + 24) = 0;
          *(v23 + 32) = 0;
          if (v28 > 2)
          {
            if (v28 == 3)
            {
              v30 = 0;
              *v31 = v29;
            }

            else if (v28 == 5)
            {
              memcpy((v23 + 32), v24 + 4, v29);
              *(v23 + 24) = *(a1 + 40);
              v30 = *(v23 + 32);
            }
          }

          else if (v28 == 1)
          {
            memcpy(v31, v24 + 4, v29);
            v30 = 0;
          }

          else if (v28 == 2)
          {
            v30 = 0;
            *v31 = v19;
          }

          result = 0;
          *(a1 + 40) += v30;
          v20 += v32;
          if (v20 >= a3)
          {
            return result;
          }

          continue;
        }

        v8 = "truncated header";
        v9 = 153;
LABEL_66:
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderInitWithEncodedData", v9, 101, 0, v8, v6, v7, v33);
LABEL_67:
        *a1 = 0;
        *(a1 + 16) = 0;
        result = 0xFFFFFFFFLL;
        *(a1 + 40) = 0;
        return result;
      case 'S':
        v28 = 4;
LABEL_46:
        v29 = 8;
        goto LABEL_51;
      case 'T':
        v28 = 4;
        v29 = 12;
        goto LABEL_51;
      default:
        if (v26 != 42)
        {
LABEL_72:
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderInitWithEncodedData", 159, 101, 0, "invalid field subtype: %d", v6, v7, v27);
          goto LABEL_67;
        }

        v28 = 0;
        v29 = 0;
        goto LABEL_51;
    }
  }
}

uint64_t sub_1000EBED0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 <= 5)
  {
    while (v2)
    {
      v3 = v2 >> 1;
      if ((v2 & (v2 >> 1)) != 0)
      {
        v3 = v2 & (v2 >> 1);
      }

      v2 += v3;
      if (v2 >= 6)
      {
        goto LABEL_8;
      }
    }

    v2 = 0x4000;
LABEL_8:
    v4 = *(a1 + 32);
    v5 = realloc(v4, v2);
    if (!v5)
    {
      free(v4);
      *a1 = 0;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 16) = 0;
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "init_blob_with_magic", 61, 101, 0, "realloc_blob failed", v12, v13, v17);
      return 0xFFFFFFFFLL;
    }

    *(a1 + 24) = v2;
    *(a1 + 32) = v5;
  }

  *(a1 + 16) = 0;
  **(a1 + 32) = 825246017;
  v6 = *(a1 + 16) + 4;
  *(a1 + 16) = v6;
  v7 = v6 + 2;
  if (v6 >= 0xFFFFFFFFFFFFFFFELL || (v7 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v8 = *(a1 + 24);
  if (v8 >= v7)
  {
    v14 = *(a1 + 32);
LABEL_28:
    result = 0;
    *&v14[v6] = 6;
    *(a1 + 16) += 2;
  }

  else
  {
    v9 = 0x4000;
    do
    {
      while (!v8)
      {
        v8 = 0x4000;
        if (v7 <= 0x4000)
        {
          goto LABEL_26;
        }
      }

      v10 = v8 >> 1;
      if ((v8 & (v8 >> 1)) != 0)
      {
        v10 = v8 & (v8 >> 1);
      }

      v8 += v10;
    }

    while (v8 < v7);
    v9 = v8;
    if (v8 >= 0x2000000001)
    {
      *__error() = 12;
      goto LABEL_30;
    }

LABEL_26:
    v15 = *(a1 + 32);
    v16 = realloc(v15, v9);
    if (v16)
    {
      v14 = v16;
      *(a1 + 24) = v9;
      *(a1 + 32) = v16;
      v6 = *(a1 + 16);
      goto LABEL_28;
    }

    free(v15);
LABEL_30:
    result = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = 0;
  }

  return result;
}

uint64_t sub_1000EC074(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 4);
  if (v3 >= a2)
  {
    return 0;
  }

  v4 = *(a1 + 4);
  do
  {
    if (v4)
    {
      v4 += v4 >> 1;
    }

    else
    {
      v4 = 16;
    }
  }

  while (v4 < a2);
  if (v3 >= v4)
  {
    return 0;
  }

  if (v4 < 0xAAAAAAAB)
  {
    v6 = *(a1 + 8);
    v7 = realloc(v6, 48 * v4);
    if (v7)
    {
      v8 = v7;
      result = 0;
      *(a1 + 8) = v8;
      *(a1 + 4) = v4;
      return result;
    }

    free(v6);
  }

  else
  {
    *__error() = 12;
  }

  *(a1 + 8) = 0;
  v9 = __error();
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "realloc_fields", 35, 101, *v9, "malloc", v10, v11, v12);
  *a1 = 0;
  result = 0xFFFFFFFFLL;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_1000EC174(AAHeader_impl *a1, AAFieldKeySet_impl *a2, char *a3, const char *a4, unint64_t a5)
{
  memset(&v86, 0, sizeof(v86));
  sub_1000EBED0(a1);
  *a1 = 0;
  *(a1 + 5) = 0;
  if ((sub_1000F4680(v88, 0x800uLL, a3, a4) & 0x80000000) != 0)
  {
    LOBYTE(v83) = a3;
    v13 = "invalid path %s/%s";
    v14 = 196;
    goto LABEL_7;
  }

  if ((sub_1000EBED0(a1) & 0x80000000) != 0)
  {
    v13 = "init_blob_with_magic";
    v14 = 199;
    goto LABEL_7;
  }

  *a1 = 0;
  *(a1 + 5) = 0;
  if (lstat(v88, &v86))
  {
    v12 = *__error();
    v83 = v88;
    v13 = "lstat %s";
    v14 = 204;
LABEL_8:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderInitWithPath", v14, 101, v12, v13, v10, v11, v83);
    *a1 = 0;
    *(a1 + 2) = 0;
    result = 0xFFFFFFFFLL;
    *(a1 + 5) = 0;
    return result;
  }

  v16 = sub_10010AB90(v86.st_mode);
  if (!v16)
  {
    v83 = v88;
    v13 = "could not determine entry type: %s";
    v14 = 210;
    goto LABEL_7;
  }

  v17.ikey = 5265748;
  if (AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v17, v16) < 0)
  {
    v83 = v88;
    v13 = "inserting TYP: %s";
    v14 = 211;
    goto LABEL_7;
  }

  v18 = strlen(a4);
  v19.ikey = 5521744;
  if (AAHeaderSetFieldString(a1, 0xFFFFFFFF, v19, a4, v18) < 0)
  {
    v83 = v88;
    v13 = "inserting PAT: %s";
    v14 = 217;
    goto LABEL_7;
  }

  v20 = v86.st_mode & 0xF000;
  if (v20 == 40960)
  {
    v21 = readlink(v88, value, 0x3FFuLL);
    if (v21 < 0)
    {
      v12 = *__error();
      v83 = v88;
      v13 = "readlink: %s";
      v14 = 225;
      goto LABEL_8;
    }

    value[v21] = 0;
    v22.ikey = 4935244;
    if (AAHeaderSetFieldString(a1, 0xFFFFFFFF, v22, value, v21) < 0)
    {
      v83 = v88;
      v13 = "inserting LNK: %s";
      v14 = 227;
      goto LABEL_7;
    }

    v20 = v86.st_mode & 0xF000;
  }

  if ((v20 | 0x4000) == 0x6000)
  {
    v23.ikey = 5653828;
    if (AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v23, v86.st_rdev) < 0)
    {
      v83 = v88;
      v13 = "inserting DEV: %s";
      v14 = 233;
      goto LABEL_7;
    }
  }

  v24.ikey = 4475221;
  if (AAFieldKeySetContainsKey(a2, v24))
  {
    v25.ikey = 4475221;
    if (AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v25, v86.st_uid) < 0)
    {
      v83 = v88;
      v13 = "inserting UID: %s";
      v14 = 239;
      goto LABEL_7;
    }
  }

  v26.ikey = 4475207;
  if (AAFieldKeySetContainsKey(a2, v26))
  {
    v27.ikey = 4475207;
    if (AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v27, v86.st_gid) < 0)
    {
      v83 = v88;
      v13 = "inserting GID: %s";
      v14 = 245;
      goto LABEL_7;
    }
  }

  v28.ikey = 4476749;
  if (AAFieldKeySetContainsKey(a2, v28))
  {
    v29.ikey = 4476749;
    if (AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v29, v86.st_mode & 0xFFF) < 0)
    {
      v83 = v88;
      v13 = "inserting MOD: %s";
      v14 = 251;
      goto LABEL_7;
    }
  }

  v30.ikey = 4672582;
  if (AAFieldKeySetContainsKey(a2, v30))
  {
    v31.ikey = 4672582;
    if (AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v31, v86.st_flags) < 0)
    {
      v83 = v88;
      v13 = "inserting FLG: %s";
      v14 = 259;
      goto LABEL_7;
    }
  }

  v32.ikey = 5067843;
  if (AAFieldKeySetContainsKey(a2, v32) || (v33.ikey = 5067842, AAFieldKeySetContainsKey(a2, v33)))
  {
    v85[1] = 0;
    v85[2] = 0;
    memset(value, 0, 64);
    v85[0] = 0x220000000005;
    if (!getattrlist(v88, v85, value, 0x40uLL, 1u) && *value == 36)
    {
      v84 = *&value[4];
      v34.ikey = 5067843;
      if (AAFieldKeySetContainsKey(a2, v34))
      {
        if (v84.tv_sec)
        {
          v35.ikey = 5067843;
          if (AAHeaderSetFieldTimespec(a1, 0xFFFFFFFF, v35, &v84) < 0)
          {
            v83 = v88;
            v13 = "inserting CTM: %s";
            v14 = 277;
            goto LABEL_7;
          }
        }
      }

      v84 = *&value[20];
      v36.ikey = 5067842;
      if (AAFieldKeySetContainsKey(a2, v36))
      {
        if (v84.tv_sec)
        {
          v37.ikey = 5067842;
          if (AAHeaderSetFieldTimespec(a1, 0xFFFFFFFF, v37, &v84) < 0)
          {
            v83 = v88;
            v13 = "inserting BTM: %s";
            v14 = 283;
            goto LABEL_7;
          }
        }
      }
    }
  }

  v38.ikey = 5067853;
  if (AAFieldKeySetContainsKey(a2, v38))
  {
    v39.ikey = 5067853;
    if (AAHeaderSetFieldTimespec(a1, 0xFFFFFFFF, v39, &v86.st_mtimespec) < 0)
    {
      v83 = v88;
      v13 = "inserting MTM: %s";
      v14 = 291;
      goto LABEL_7;
    }
  }

  if ((v86.st_mode & 0xF000) == 0x8000)
  {
    v40.ikey = 5523009;
    if (AAFieldKeySetContainsKey(a2, v40) > 0 || (v41.ikey = 5391937, AAFieldKeySetContainsKey(a2, v41) >= 1))
    {
      *value = 0;
      LODWORD(v85[0]) = 0;
      LODWORD(v84.tv_sec) = 0;
      if ((ParallelCompressionAFSCGetMetadata(v88, value, v85, &v84) & 0x80000000) != 0)
      {
        v13 = "querying AFSC metadata";
        v14 = 306;
        goto LABEL_7;
      }

      if (LODWORD(v85[0]) != -1)
      {
        v42.ikey = 5523009;
        if (AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v42, SLODWORD(v85[0])) < 0)
        {
          v83 = v88;
          v13 = "inserting AFT: %s";
          v14 = 309;
          goto LABEL_7;
        }

        v43.ikey = 5391937;
        if (AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v43, LODWORD(v84.tv_sec)) < 0)
        {
          v83 = v88;
          v13 = "inserting AFR: %s";
          v14 = 310;
          goto LABEL_7;
        }
      }
    }
  }

  v44 = v86.st_mode & 0xF000;
  if (v44 == 0x8000 || v44 == 0x4000)
  {
    v45.ikey = 4803654;
    if (AAFieldKeySetContainsKey(a2, v45) >= 1)
    {
      v46 = default argument 0 of DownloadConfiguration.init(downloadRetries:networkServiceType:alternateCDNHost:maxActiveTasks:chunkSize:)();
      if (v46)
      {
        v47.ikey = 4803654;
        if (AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v47, v46) < 0)
        {
          v83 = v88;
          v13 = "inserting FLI: %s";
          v14 = 322;
          goto LABEL_7;
        }
      }
    }
  }

  if ((v86.st_mode & 0xF000) == 0x8000)
  {
    v48.ikey = 4411984;
    if (AAFieldKeySetContainsKey(a2, v48) >= 1)
    {
      v49 = sub_1000F5FF4(v88);
      if ((v49 - 1) <= 5)
      {
        v50.ikey = 4411984;
        if (AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v50, v49 | 0x40u) < 0)
        {
          v83 = v88;
          v13 = "inserting PRC: %s";
          v14 = 342;
          goto LABEL_7;
        }
      }
    }
  }

  v51.ikey = 5197385;
  if (AAFieldKeySetContainsKey(a2, v51))
  {
    v52.ikey = 5197385;
    if (AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v52, v86.st_ino) < 0)
    {
      v83 = v88;
      v13 = "inserting INO: %s";
      v14 = 359;
      goto LABEL_7;
    }
  }

  v53.ikey = 4934734;
  if (AAFieldKeySetContainsKey(a2, v53))
  {
    v54.ikey = 4934734;
    if (AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v54, v86.st_nlink) < 0)
    {
      v83 = v88;
      v13 = "inserting LNK: %s";
      v14 = 365;
      goto LABEL_7;
    }
  }

  if ((v86.st_mode & 0xF000) == 0x8000)
  {
    v55.ikey = 5917011;
    if (AAFieldKeySetContainsKey(a2, v55))
    {
      v56.ikey = 5917011;
      if (AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v56, v86.st_size) < 0)
      {
        v83 = v88;
        v13 = "inserting SIZ: %s";
        v14 = 371;
        goto LABEL_7;
      }
    }
  }

  v57 = v86.st_mode & 0xF000;
  if (v57 == 0x4000 || v57 == 40960 || v57 == 0x8000)
  {
    v58.ikey = 5920068;
    if (AAFieldKeySetContainsKey(a2, v58))
    {
      v59 = sub_1000F5E4C(a3);
      v60 = sub_1000ECEA4(a3, a4, v59);
      if ((v60 & 0x8000000000000000) == 0)
      {
        v61.ikey = 5920068;
        if (AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v61, v60) < 0)
        {
          v83 = v88;
          v13 = "inserting DUZ: %s";
          v14 = 381;
          goto LABEL_7;
        }
      }
    }
  }

  if ((v86.st_mode & 0xF000) == 0x8000)
  {
    v62.ikey = 5194573;
    if (AAFieldKeySetContainsKey(a2, v62))
    {
      *value = 0;
      if ((sub_1000E7EC0(value, v88, a5) & 0x80000000) != 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderInitWithPath", 389, 101, 0, "fetching Mach-O information: %s", v63, v64, v88);
      }

      if (*value)
      {
        v65 = strlen(*value);
        v66.ikey = 5194573;
        if ((AAHeaderSetFieldString(a1, 0xFFFFFFFF, v66, *value, v65) & 0x80000000) == 0)
        {
          free(*value);
          goto LABEL_75;
        }

        v83 = v88;
        v13 = "inserting MCO: %s";
        v14 = 392;
LABEL_7:
        v12 = 0;
        goto LABEL_8;
      }
    }
  }

LABEL_75:
  v67.ikey = 5458755;
  v68 = AAFieldKeySetContainsKey(a2, v67);
  v69.ikey = 3229779;
  v70 = AAFieldKeySetContainsKey(a2, v69);
  v71.ikey = 3295315;
  v72 = AAFieldKeySetContainsKey(a2, v71);
  v73.ikey = 3360851;
  v74 = AAFieldKeySetContainsKey(a2, v73);
  v75.ikey = 3491923;
  v76 = AAFieldKeySetContainsKey(a2, v75);
  result = 0;
  if ((v86.st_mode & 0xF000) == 0x8000)
  {
    v77 = ((v68 & 1) << 11) & 0xFFF | ((v70 & 1) << 12) & 0x1FFF | ((v72 & 1) << 13) & 0x3FFF | ((v74 & 1) << 14) & 0x7FFF | ((v76 & 1) << 15);
    if (v77)
    {
      memset(value, 0, 172);
      if ((sub_10010A8A4(value, v77, a3, a4) & 0x80000000) != 0)
      {
        v83 = v88;
        v13 = "computing file hashes: %s";
        v14 = 407;
      }

      else if ((v68 & 1) != 0 && (v78.ikey = 5458755, AAHeaderSetFieldHash(a1, 0xFFFFFFFF, v78, 1u, &value[4]) < 0))
      {
        v83 = v88;
        v13 = "inserting CKS: %s";
        v14 = 409;
      }

      else if ((v70 & 1) != 0 && (v79.ikey = 3229779, AAHeaderSetFieldHash(a1, 0xFFFFFFFF, v79, 2u, &value[8]) < 0))
      {
        v83 = v88;
        v13 = "inserting SH1: %s";
        v14 = 411;
      }

      else if ((v72 & 1) != 0 && (v80.ikey = 3295315, AAHeaderSetFieldHash(a1, 0xFFFFFFFF, v80, 3u, &value[28]) < 0))
      {
        v83 = v88;
        v13 = "inserting SH2: %s";
        v14 = 413;
      }

      else if ((v74 & 1) != 0 && (v81.ikey = 3360851, AAHeaderSetFieldHash(a1, 0xFFFFFFFF, v81, 4u, &value[60]) < 0))
      {
        v83 = v88;
        v13 = "inserting SH3: %s";
        v14 = 415;
      }

      else
      {
        if ((v76 & 1) == 0)
        {
          return 0;
        }

        v82.ikey = 3491923;
        if ((AAHeaderSetFieldHash(a1, 0xFFFFFFFF, v82, 5u, &value[108]) & 0x80000000) == 0)
        {
          return 0;
        }

        v83 = v88;
        v13 = "inserting SH5: %s";
        v14 = 417;
      }

      goto LABEL_7;
    }
  }

  return result;
}

uint64_t sub_1000ECEA4(char *a1, const char *a2, unsigned int a3)
{
  bzero(v7, 0x800uLL);
  if (sub_1000F4680(v7, 0x800uLL, a1, a2))
  {
    return -1;
  }

  result = sub_1000F5F24(v7);
  if (result >= 0)
  {
    return (result + a3 - 1) & -a3;
  }

  return result;
}

uint64_t sub_1000ECF58(AAHeader header, char *a2, char *a3)
{
  v6 = *a2;
  if (*a2)
  {
    v7.ikey = 4475221;
    if (AAHeaderSetFieldUInt(header, 0xFFFFFFFF, v7, *(a2 + 1)) < 0)
    {
      v22 = "append UID";
      v23 = 428;
      goto LABEL_44;
    }

    v6 = *a2;
  }

  if ((v6 & 2) != 0)
  {
    v10.ikey = 4475207;
    if (AAHeaderSetFieldUInt(header, 0xFFFFFFFF, v10, *(a2 + 2)) < 0)
    {
      v22 = "append GID";
      v23 = 429;
      goto LABEL_44;
    }

    v6 = *a2;
  }

  if ((v6 & 8) != 0)
  {
    v11.ikey = 4476749;
    if (AAHeaderSetFieldUInt(header, 0xFFFFFFFF, v11, *(a2 + 4)) < 0)
    {
      v22 = "append MOD";
      v23 = 430;
      goto LABEL_44;
    }

    v6 = *a2;
  }

  if ((v6 & 4) != 0)
  {
    v12.ikey = 4672582;
    if (AAHeaderSetFieldUInt(header, 0xFFFFFFFF, v12, *(a2 + 3)) < 0)
    {
      v22 = "append FLG";
      v23 = 431;
      goto LABEL_44;
    }

    v6 = *a2;
  }

  if ((v6 & 0x40) != 0)
  {
    v13.ikey = 5067853;
    if (AAHeaderSetFieldTimespec(header, 0xFFFFFFFF, v13, (a2 + 56)) < 0)
    {
      v22 = "append MTM";
      v23 = 432;
      goto LABEL_44;
    }

    v6 = *a2;
  }

  if ((v6 & 0x20) != 0)
  {
    v14.ikey = 5067843;
    if (AAHeaderSetFieldTimespec(header, 0xFFFFFFFF, v14, (a2 + 40)) < 0)
    {
      v22 = "append CTM";
      v23 = 433;
      goto LABEL_44;
    }

    v6 = *a2;
  }

  if ((v6 & 0x10) != 0 && (v15.ikey = 5067842, AAHeaderSetFieldTimespec(header, 0xFFFFFFFF, v15, (a2 + 24)) < 0))
  {
    v22 = "append BTM";
    v23 = 434;
  }

  else
  {
    v16 = *a3;
    if (*a3)
    {
      v17.ikey = 5523009;
      if (AAHeaderSetFieldUInt(header, 0xFFFFFFFF, v17, *(a3 + 2)) < 0)
      {
        v22 = "append AFT";
        v23 = 435;
        goto LABEL_44;
      }

      v16 = *a3;
    }

    if ((v16 & 2) != 0)
    {
      v18.ikey = 5391937;
      if (AAHeaderSetFieldUInt(header, 0xFFFFFFFF, v18, *(a3 + 3)) < 0)
      {
        v22 = "append AFR";
        v23 = 436;
        goto LABEL_44;
      }

      v16 = *a3;
    }

    if ((v16 & 4) != 0)
    {
      v19.ikey = 4803654;
      if (AAHeaderSetFieldUInt(header, 0xFFFFFFFF, v19, *(a3 + 2)) < 0)
      {
        v22 = "append FLI";
        v23 = 437;
        goto LABEL_44;
      }

      v16 = *a3;
    }

    if ((v16 & 8) == 0)
    {
      return 0;
    }

    v20.ikey = 4411984;
    if ((AAHeaderSetFieldUInt(header, 0xFFFFFFFF, v20, *(a3 + 1)) & 0x80000000) == 0)
    {
      return 0;
    }

    v22 = "append PRC";
    v23 = 438;
  }

LABEL_44:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderAppendEntryAttributes", v23, 101, 0, v22, v8, v9, v24);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1000ED290(uint64_t a1, AAHeader_impl *a2)
{
  *a1 = 0;
  v4 = *a2;
  if (v4 <= *(a1 + 4))
  {
    if (v4)
    {
      goto LABEL_5;
    }

    v8 = 0;
LABEL_15:
    result = 0;
    *a1 = v8;
  }

  else
  {
    *(a1 + 4) = v4;
    v5 = *(a1 + 8);
    v6 = realloc(v5, 24 * v4);
    if (v6)
    {
      *(a1 + 8) = v6;
LABEL_5:
      v7 = 0;
      v8 = 0;
      while (1)
      {
        if (AAHeaderGetFieldType(a2, v7) == 5)
        {
          size = 0;
          if (AAHeaderGetFieldBlob(a2, v7, &size, &v16) < 0)
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderBlobArrayInitWithHeader", 460, 101, 0, "get field blob failed", v9, v10, v16);
            return 0xFFFFFFFFLL;
          }

          v11 = *(a1 + 8);
          *(v11 + 24 * v8) = AAHeaderGetFieldKey(a2, v7);
          *(*(a1 + 8) + 24 * v8++ + 8) = vdupq_lane_s64(size, 0);
        }

        if (v4 == ++v7)
        {
          goto LABEL_15;
        }
      }
    }

    free(v5);
    *(a1 + 8) = 0;
    v12 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderBlobArrayInitWithHeader", 453, 101, *v12, "malloc", v13, v14, v16);
    *a1 = 0;
    return 0xFFFFFFFFLL;
  }

  return result;
}

int AAHeaderGetFieldType(AAHeader header, uint32_t i)
{
  if (*header > i)
  {
    return *(*(header + 1) + 48 * i + 4);
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldType", 592, 101, 0, "invalid field index %u", v2, v3, i);
  return -1;
}

int AAHeaderGetFieldBlob(AAHeader header, uint32_t i, uint64_t *size, uint64_t *offset)
{
  if (*header <= i)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldBlob", 670, 101, 0, "invalid field index %u", v4, v5, i);
  }

  else
  {
    v6 = *(header + 1) + 48 * i;
    if (*(v6 + 4) == 5)
    {
      result = 0;
      *size = *(v6 + 32);
      *offset = *(v6 + 24);
      return result;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldBlob", 672, 101, 0, "invalid type %d, expected BLOB", v4, v5, *(v6 + 4));
  }

  return -1;
}

AAFieldKey AAHeaderGetFieldKey(AAHeader header, uint32_t i)
{
  if (*header <= i)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldKey", 598, 101, 0, "invalid field index %u", v2, v3, i);
    return 0;
  }

  else
  {
    return *(*(header + 1) + 48 * i);
  }
}

uint64_t sub_1000ED59C(unsigned int *a1)
{
  v1 = *a1;
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (*(a1 + 1) + 8);
  do
  {
    v5 = *v4;
    v4 += 3;
    result += v5;
    --v1;
  }

  while (v1);
  return result;
}

AAHeader AAHeaderCreate(void)
{
  v0 = malloc(0x30uLL);
  v1 = v0;
  if (v0)
  {
    memset_s(v0, 0x30uLL, 0, 0x30uLL);
    if ((sub_1000EBED0(v1) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderCreate", 485, 101, 0, "init_blob_with_magic", v2, v3, v8);
      AAHeaderDestroy(v1);
      return 0;
    }
  }

  else
  {
    v4 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderCreate", 482, 101, *v4, "malloc", v5, v6, v8);
  }

  return v1;
}

void AAHeaderDestroy(AAHeader header)
{
  if (header)
  {
    free(*(header + 1));
    free(*(header + 4));
    memset_s(header + 16, 0x18uLL, 0, 0x18uLL);

    free(header);
  }
}

AAHeader AAHeaderClone(AAHeader header)
{
  v2 = malloc(0x30uLL);
  v3 = v2;
  if (v2)
  {
    memset_s(v2, 0x30uLL, 0, 0x30uLL);
    if (AAHeaderAssign(v3, header) < 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderClone", 507, 101, 0, "header copy", v4, v5, v10);
      AAHeaderDestroy(v3);
      return 0;
    }
  }

  else
  {
    v6 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderClone", 504, 101, *v6, "malloc", v7, v8, v10);
  }

  return v3;
}

int AAHeaderAssign(AAHeader header, AAHeader from_header)
{
  if ((sub_1000EC074(header, *from_header) & 0x80000000) != 0)
  {
    v12 = "realloc_fields";
    v13 = 519;
  }

  else
  {
    memcpy(*(header + 1), *(from_header + 1), 48 * *from_header);
    *header = *from_header;
    *(header + 2) = 0;
    v6 = (header + 16);
    v7 = *(from_header + 2);
    if ((v7 & 0x8000000000000000) == 0)
    {
      v8 = *(from_header + 4);
      v9 = *(header + 3);
      if (v9 >= v7)
      {
LABEL_16:
        v16 = *(header + 4);
        if (v8)
        {
          memcpy((v16 + *v6), v8, v7);
        }

        else if (v16)
        {
          memset_s((v16 + *v6), v7, 0, v7);
        }

        v17 = *v6 + v7;
        *v6 = v17;
        if (v17 > 3)
        {
          result = 0;
          **(header + 4) = 825246017;
          *(header + 5) = *(from_header + 5);
          return result;
        }
      }

      else
      {
        do
        {
          while (!v9)
          {
            v9 = 0x4000;
            if (v7 <= 0x4000)
            {
              v11 = (header + 32);
              v9 = 0x4000;
              goto LABEL_14;
            }
          }

          v10 = v9 >> 1;
          if ((v9 & (v9 >> 1)) != 0)
          {
            v10 = v9 & (v9 >> 1);
          }

          v9 += v10;
        }

        while (v9 < v7);
        v11 = (header + 32);
        if (v9 >= 0x2000000001)
        {
          *__error() = 12;
          goto LABEL_23;
        }

LABEL_14:
        v14 = *v11;
        v15 = realloc(*v11, v9);
        if (v15)
        {
          *(header + 3) = v9;
          *(header + 4) = v15;
          goto LABEL_16;
        }

        free(v14);
LABEL_23:
        *v11 = 0;
        *v6 = 0;
        *(header + 3) = 0;
      }
    }

    v12 = "realloc blob";
    v13 = 526;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderAssign", v13, 101, 0, v12, v4, v5, v19);
  return -1;
}

AAHeader AAHeaderCreateWithEncodedData(size_t data_size, const uint8_t *data)
{
  v4 = AAHeaderCreate();
  v5 = v4;
  if (v4 && (sub_1000EB968(v4, data, data_size) & 0x80000000) != 0)
  {
    AAHeaderDestroy(v5);
    return 0;
  }

  return v5;
}

AAHeader AAHeaderCreateWithPath(AAFieldKeySet key_set, const char *dir, const char *path, AAFlagSet flags)
{
  v8 = AAHeaderCreate();
  v9 = v8;
  if (v8 && (sub_1000EC174(v8, key_set, dir, path, flags) & 0x80000000) != 0)
  {
    AAHeaderDestroy(v9);
    return 0;
  }

  return v9;
}

int AAHeaderRemoveField(AAHeader header, uint32_t i)
{
  if ((sub_1000EDAD8(header, i, 0, 0, v2, v3, v4, v5) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderRemoveField", 558, 101, 0, "update_field_sizes failed", v8, v9, v12);
    return -1;
  }

  else
  {
    v10 = *header;
    if (*header + ~i)
    {
      memmove((*(header + 1) + 48 * i), (*(header + 1) + 48 * (i + 1)), 48 * (*header + ~i));
      v10 = *header;
    }

    result = 0;
    *header = v10 - 1;
  }

  return result;
}

uint64_t sub_1000EDAD8(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a1 <= a2)
  {
    v15 = "invalid field index";
    v16 = 74;
    goto LABEL_5;
  }

  v8 = a2;
  v10 = (a1 + 16);
  v11 = *(a1 + 16);
  v12 = *(a1 + 8) + 48 * a2;
  v13 = *(v12 + 16);
  v14 = *(v12 + 12) + v13;
  if (v11 < v14)
  {
LABEL_3:
    v15 = "realloc blob";
    v16 = 78;
LABEL_5:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "update_field_sizes", v16, 101, 0, v15, a7, a8, v33);
    return 0xFFFFFFFFLL;
  }

  if (v13 >= a3)
  {
    if (v13 <= a3)
    {
      goto LABEL_29;
    }

    v25 = v13 - a3;
    if (v11 != v14)
    {
      memmove((*(a1 + 32) + v14 - v25), (*(a1 + 32) + v14), v11 - v14);
      v14 = *(a1 + 16);
    }

    v11 = v14 - v25;
  }

  else
  {
    v20 = a3 - v13;
    v21 = v11 + v20;
    if ((v11 + v20) < 0)
    {
      goto LABEL_3;
    }

    v22 = *(a1 + 24);
    if (v22 < v21)
    {
      do
      {
        while (!v22)
        {
          v22 = 0x4000;
          if (v21 <= 0x4000)
          {
            v36 = v20;
            v24 = (a1 + 32);
            v22 = 0x4000;
            goto LABEL_23;
          }
        }

        v23 = v22 >> 1;
        if ((v22 & (v22 >> 1)) != 0)
        {
          v23 = v22 & (v22 >> 1);
        }

        v22 += v23;
      }

      while (v22 < v21);
      v24 = (a1 + 32);
      if (v22 >= 0x2000000001)
      {
        v26 = (a1 + 32);
        *__error() = 12;
        goto LABEL_36;
      }

      v36 = v20;
LABEL_23:
      v34 = v24;
      v35 = *v24;
      v27 = realloc(*v24, v22);
      if (v27)
      {
        *(a1 + 24) = v22;
        *(a1 + 32) = v27;
        v20 = v36;
        goto LABEL_25;
      }

      v26 = v34;
      free(v35);
LABEL_36:
      *v26 = 0;
      *v10 = 0;
      v10[1] = 0;
      goto LABEL_3;
    }

LABEL_25:
    if (v11 != v14)
    {
      v28 = v20;
      memmove((*(a1 + 32) + v14 + v20), (*(a1 + 32) + v14), v11 - v14);
      v20 = v28;
    }

    v11 = *v10 + v20;
  }

  *v10 = v11;
LABEL_29:
  *(a1 + 40) = *(a1 + 40) + a4 - *(v12 + 32);
  if (v11 <= 5)
  {
    v15 = "copy header size";
    v16 = 85;
    goto LABEL_5;
  }

  *(*(a1 + 32) + 4) = v11;
  *(v12 + 16) = a3;
  *(v12 + 32) = a4;
  if (v8 + 1 < *a1)
  {
    v29 = *(a1 + 8);
    v30 = (v29 + 48 * (v8 + 1) + 24);
    v31 = *a1 - 1;
    do
    {
      v32 = v29 + 48 * v8;
      *(v30 - 3) = *(v32 + 16) + *(v32 + 12);
      *v30 = *(v32 + 32) + *(v32 + 24);
      v30 += 6;
      ++v8;
    }

    while (v31 != v8);
  }

  return 0;
}

int AAHeaderClear(AAHeader header)
{
  sub_1000EBED0(header);
  *header = 0;
  *(header + 5) = 0;
  return 0;
}

int AAHeaderGetKeyIndex(AAHeader header, AAFieldKey key)
{
  v2 = *header;
  if (v2)
  {
    v4 = 0;
    v5 = *(header + 1);
    while (1)
    {
      v6 = *v5;
      v5 += 12;
      if (((v6 ^ key.ikey) & 0xFFFFFF) == 0)
      {
        break;
      }

      if (v2 == ++v4)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    LODWORD(v4) = -1;
  }

  return v4;
}

int AAHeaderGetFieldUInt(AAHeader header, uint32_t i, uint64_t *value)
{
  if (*header <= i)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldUInt", 604, 101, 0, "invalid field index %u", v3, v4, i);
  }

  else
  {
    v5 = *(header + 1) + 48 * i;
    if (*(v5 + 4) == 1)
    {
      result = 0;
      *value = *(v5 + 40);
      return result;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldUInt", 606, 101, 0, "invalid type %d, expected UINT", v3, v4, *(v5 + 4));
  }

  return -1;
}

int AAHeaderGetFieldString(AAHeader header, uint32_t i, size_t capacity, char *value, size_t *length)
{
  if (*header <= i)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldString", 614, 101, 0, "invalid field index %u", v5, v6, i);
    return -1;
  }

  v7 = (*(header + 1) + 48 * i);
  if (v7[1] != 2)
  {
    v14 = v7[1];
    v11 = "invalid type %d, expected STRING";
    v12 = 616;
    goto LABEL_11;
  }

  v9 = v7[10];
  if (length)
  {
    *length = v9;
  }

  if (!capacity)
  {
    return 0;
  }

  if (v9 >= capacity)
  {
    return -1;
  }

  v10 = (v7[3] + 6);
  if (v9 + v10 > *(header + 2))
  {
    v11 = "invalid blob segment";
    v12 = 624;
LABEL_11:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldString", v12, 101, 0, v11, v5, v6, v14);
    return -1;
  }

  memcpy(value, (*(header + 4) + v10), v9);
  result = 0;
  value[v9] = 0;
  return result;
}

int AAHeaderGetFieldHash(AAHeader header, uint32_t i, size_t capacity, AAHashFunction *hash_function, uint8_t *value)
{
  if (*header <= i)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldHash", 634, 101, 0, "invalid field index %u", v5, v6, i);
    return -1;
  }

  v7 = (*(header + 1) + 48 * i);
  if (v7[1] != 3)
  {
    v18 = v7[1];
    v10 = "invalid type %d, expected HASH";
    v11 = 636;
    goto LABEL_7;
  }

  v9 = v7[10];
  if (v9 > capacity)
  {
    v10 = "not enough capacity to store HASH";
    v11 = 639;
LABEL_7:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldHash", v11, 101, 0, v10, v5, v6, v18);
    return -1;
  }

  v13 = (v7[3] + 4);
  if (v9 + v13 > *(header + 2))
  {
    v10 = "invalid blob segment";
    v11 = 640;
    goto LABEL_7;
  }

  memcpy(value, (*(header + 4) + v13), v9);
  result = 0;
  if (hash_function)
  {
    v15 = v7[2];
    v16 = v15 - 70;
    v17 = v15 - 69;
    if (v16 >= 5)
    {
      v17 = -1;
    }

    *hash_function = v17;
  }

  return result;
}

int AAHeaderGetFieldTimespec(AAHeader header, uint32_t i, timespec *value)
{
  if (*header > i)
  {
    v5 = (*(header + 1) + 48 * i);
    if (v5[1] == 4)
    {
      v6 = v5[2];
      if (v6 == 84)
      {
        v11 = v5[3];
        v12 = (v11 + 4);
        v13 = *(header + 2);
        v14 = (v11 + 12);
        if (v12 + 8 > v13 || v14 + 4 > v13)
        {
          v8 = "invalid blob segment";
          v9 = 661;
          goto LABEL_9;
        }

        v16 = *(header + 4);
        v17 = *(v16 + v12);
        v18 = *(v16 + v14);
      }

      else if (v6 == 83)
      {
        v7 = (v5[3] + 4);
        if ((v7 + 8) > *(header + 2))
        {
          v8 = "invalid blob segment";
          v9 = 655;
LABEL_9:
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldTimespec", v9, 101, 0, v8, v3, v4, v19);
          return -1;
        }

        v18 = 0;
        v17 = *(*(header + 4) + v7);
      }

      else
      {
        v17 = 0;
        v18 = 0;
      }

      result = 0;
      value->tv_sec = v17;
      value->tv_nsec = v18;
      return result;
    }

    v19 = v5[1];
    v8 = "invalid type %d, expected TIMESPEC";
    v9 = 649;
    goto LABEL_9;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldTimespec", 647, 101, 0, "invalid field index %u", v3, v4, i);
  return -1;
}

int AAHeaderSetFieldFlag(AAHeader header, uint32_t i, AAFieldKey key)
{
  if (key.skey[0] > 0x7F)
  {
    if (!__maskrune(key.skey[0], 0x500uLL))
    {
      goto LABEL_19;
    }
  }

  else if ((_DefaultRuneLocale.__runetype[key.skey[0]] & 0x500) == 0)
  {
    goto LABEL_19;
  }

  v10 = *key.skey >> 8;
  if (v10 > 0x7F)
  {
    if (__maskrune(v10, 0x500uLL))
    {
      goto LABEL_9;
    }

LABEL_19:
    v17 = "invalid key";
    v18 = 681;
    goto LABEL_20;
  }

  if ((_DefaultRuneLocale.__runetype[v10] & 0x500) == 0)
  {
    goto LABEL_19;
  }

LABEL_9:
  v11 = (key.ikey << 8) >> 24;
  if (v11 > 0x7F)
  {
    v12 = __maskrune(v11, 0x500uLL);
  }

  else
  {
    v12 = _DefaultRuneLocale.__runetype[v11] & 0x500;
  }

  if ((key.ikey & 0xFF000000) != 0 || !v12)
  {
    goto LABEL_19;
  }

  if (i == -1)
  {
    i = sub_1000EE3F8(header);
  }

  if ((sub_1000EDAD8(header, i, 4u, 0, v3, v4, v5, v6) & 0x80000000) != 0)
  {
    v17 = "update_field_sizes failed";
    v18 = 685;
  }

  else
  {
    v13 = *(header + 1) + 48 * i;
    *v13 = key;
    *(v13 + 4) = 0x2A00000000;
    *(v13 + 40) = 0;
    v22 = 0;
    v23 = 0;
    __src = key;
    __src.skey[3] = 42;
    v16 = v13 + 12;
    v15 = *(v13 + 12);
    v14 = *(v16 + 4);
    if (v15 + v14 <= *(header + 2))
    {
      memcpy((*(header + 4) + v15), &__src, v14);
      return 0;
    }

    v17 = "invalid blob segment";
    v18 = 696;
  }

LABEL_20:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldFlag", v18, 101, 0, v17, v5, v6, v20);
  return -1;
}

uint64_t sub_1000EE3F8(unsigned int *a1)
{
  v2 = *a1;
  if ((sub_1000EC074(a1, v2 + 1) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "append_field", 46, 101, 0, "realloc_fields failed", v3, v4, v8);
    return 0xFFFFFFFFLL;
  }

  else
  {
    ++*a1;
    v5 = *(a1 + 1);
    v6 = v5 + 48 * v2;
    if (v5)
    {
      memset_s((v5 + 48 * v2), 0x30uLL, 0, 0x30uLL);
    }

    *(v6 + 12) = *(a1 + 2);
    *(v6 + 24) = *(a1 + 5);
  }

  return v2;
}

int AAHeaderSetFieldUInt(AAHeader header, uint32_t i, AAFieldKey key, uint64_t value)
{
  if (key.skey[0] > 0x7F)
  {
    if (!__maskrune(key.skey[0], 0x500uLL))
    {
      goto LABEL_16;
    }
  }

  else if ((_DefaultRuneLocale.__runetype[key.skey[0]] & 0x500) == 0)
  {
    goto LABEL_16;
  }

  v12 = *key.skey >> 8;
  if (v12 > 0x7F)
  {
    if (__maskrune(v12, 0x500uLL))
    {
      goto LABEL_9;
    }

LABEL_16:
    v17 = "invalid key";
    v18 = 703;
    goto LABEL_17;
  }

  if ((_DefaultRuneLocale.__runetype[v12] & 0x500) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  v13 = (key.ikey << 8) >> 24;
  if (v13 > 0x7F)
  {
    v14 = __maskrune(v13, 0x500uLL);
  }

  else
  {
    v14 = _DefaultRuneLocale.__runetype[v13] & 0x500;
  }

  if ((key.ikey & 0xFF000000) != 0 || !v14)
  {
    goto LABEL_16;
  }

  if (value >= 0x100)
  {
    if (value >= 0x10000)
    {
      if (HIDWORD(value))
      {
        v16 = 12;
      }

      else
      {
        v16 = 8;
      }

      if (HIDWORD(value))
      {
        v15 = 56;
      }

      else
      {
        v15 = 52;
      }
    }

    else
    {
      v15 = 50;
      v16 = 6;
    }
  }

  else
  {
    v15 = 49;
    v16 = 5;
  }

  if (i == -1)
  {
    i = sub_1000EE3F8(header);
  }

  if ((sub_1000EDAD8(header, i, v16, 0, v4, v5, v6, v7) & 0x80000000) != 0)
  {
    v17 = "update_field_sizes failed";
    v18 = 713;
  }

  else
  {
    v20 = *(header + 1) + 48 * i;
    *v20 = key;
    *(v20 + 4) = 1;
    *(v20 + 8) = v15;
    *(v20 + 40) = value;
    v26 = value;
    v27 = 0;
    __src = key;
    __src.skey[3] = v15;
    v23 = v20 + 12;
    v22 = *(v20 + 12);
    v21 = *(v23 + 4);
    if (v22 + v21 <= *(header + 2))
    {
      memcpy((*(header + 4) + v22), &__src, v21);
      return 0;
    }

    v17 = "invalid blob segment";
    v18 = 725;
  }

LABEL_17:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldUInt", v18, 101, 0, v17, v6, v7, v24);
  return -1;
}

int AAHeaderSetFieldString(AAHeader header, uint32_t i, AAFieldKey key, const char *value, size_t length)
{
  if (key.skey[0] > 0x7F)
  {
    if (!__maskrune(key.skey[0], 0x500uLL))
    {
      goto LABEL_16;
    }
  }

  else if ((_DefaultRuneLocale.__runetype[key.skey[0]] & 0x500) == 0)
  {
    goto LABEL_16;
  }

  v13 = *key.skey >> 8;
  if (v13 > 0x7F)
  {
    if (__maskrune(v13, 0x500uLL))
    {
      goto LABEL_9;
    }

LABEL_16:
    v16 = "invalid key";
    v17 = 732;
    goto LABEL_17;
  }

  if ((_DefaultRuneLocale.__runetype[v13] & 0x500) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  v14 = (key.ikey << 8) >> 24;
  if (v14 > 0x7F)
  {
    v15 = __maskrune(v14, 0x500uLL);
  }

  else
  {
    v15 = _DefaultRuneLocale.__runetype[v14] & 0x500;
  }

  if ((key.ikey & 0xFF000000) != 0 || !v15)
  {
    goto LABEL_16;
  }

  if (length >= 0x10000)
  {
    v16 = "string too long";
    v17 = 733;
LABEL_17:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldString", v17, 101, 0, v16, v6, v7, v24);
    return -1;
  }

  if (i == -1)
  {
    i = sub_1000EE3F8(header);
  }

  if ((sub_1000EDAD8(header, i, length + 6, 0, length, v5, v6, v7) & 0x80000000) != 0)
  {
    v16 = "update_field_sizes failed";
    v17 = 737;
    goto LABEL_17;
  }

  v19 = *(header + 1) + 48 * i;
  *v19 = key;
  *(v19 + 4) = 0x5000000002;
  *(v19 + 40) = length;
  v20 = *(v19 + 12);
  if ((v20 + 6) > *(header + 2) || (v21 = *(header + 4) + v20, *v21 = key.ikey | 0x50000000, *(v21 + 4) = length, v22 = (*(v19 + 12) + 6), v22 + length > *(header + 2)))
  {
    v16 = "invalid blob segment";
    v17 = 750;
    goto LABEL_17;
  }

  v23 = *(header + 4);
  if (value)
  {
    memcpy((v23 + v22), value, length);
  }

  else if (v23)
  {
    memset_s((v23 + v22), length, 0, length);
  }

  return 0;
}

int AAHeaderSetFieldHash(AAHeader header, uint32_t i, AAFieldKey key, AAHashFunction hash_function, const uint8_t *value)
{
  if (key.skey[0] > 0x7F)
  {
    if (!__maskrune(key.skey[0], 0x500uLL))
    {
      goto LABEL_21;
    }
  }

  else if ((_DefaultRuneLocale.__runetype[key.skey[0]] & 0x500) == 0)
  {
    goto LABEL_21;
  }

  v13 = *key.skey >> 8;
  if (v13 > 0x7F)
  {
    if (__maskrune(v13, 0x500uLL))
    {
      goto LABEL_9;
    }

LABEL_21:
    v20 = "invalid key";
    v21 = 757;
    goto LABEL_22;
  }

  if ((_DefaultRuneLocale.__runetype[v13] & 0x500) == 0)
  {
    goto LABEL_21;
  }

LABEL_9:
  v14 = (key.ikey << 8) >> 24;
  if (v14 > 0x7F)
  {
    v15 = __maskrune(v14, 0x500uLL);
  }

  else
  {
    v15 = _DefaultRuneLocale.__runetype[v14] & 0x500;
  }

  if ((key.ikey & 0xFF000000) != 0 || !v15)
  {
    goto LABEL_21;
  }

  if (hash_function - 1 >= 5)
  {
    v22 = -1;
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldHash", 760, 101, 0, "invalid HASH subtype: %d", v6, v7, -1);
    return v22;
  }

  v16 = dword_10037C150[hash_function - 1];
  if (i == -1)
  {
    i = sub_1000EE3F8(header);
  }

  if ((sub_1000EDAD8(header, i, v16 + 4, 0, value, v5, v6, v7) & 0x80000000) != 0)
  {
    v20 = "update_field_sizes failed";
    v21 = 764;
    goto LABEL_22;
  }

  v17 = *(header + 1) + 48 * i;
  *v17 = key;
  *(v17 + 4) = 3;
  *(v17 + 8) = hash_function + 69;
  *(v17 + 40) = v16;
  v18 = *(v17 + 12);
  if ((v18 + 4) > *(header + 2) || (*(*(header + 4) + v18) = key.ikey | ((hash_function + 69) << 24), v19 = (*(v17 + 12) + 4), v19 + v16 > *(header + 2)))
  {
    v20 = "invalid blob segment";
    v21 = 776;
LABEL_22:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldHash", v21, 101, 0, v20, v6, v7, v25);
    return -1;
  }

  v24 = *(header + 4);
  if (value)
  {
    memcpy((v24 + v19), value, v16);
  }

  else if (v24)
  {
    memset_s((v24 + v19), v16, 0, v16);
  }

  return 0;
}

int AAHeaderSetFieldTimespec(AAHeader header, uint32_t i, AAFieldKey key, const timespec *value)
{
  if (key.skey[0] > 0x7F)
  {
    if (!__maskrune(key.skey[0], 0x500uLL))
    {
      goto LABEL_25;
    }
  }

  else if ((_DefaultRuneLocale.__runetype[key.skey[0]] & 0x500) == 0)
  {
    goto LABEL_25;
  }

  v12 = *key.skey >> 8;
  if (v12 > 0x7F)
  {
    if (__maskrune(v12, 0x500uLL))
    {
      goto LABEL_9;
    }

LABEL_25:
    v22 = "invalid key";
    v23 = 783;
    goto LABEL_26;
  }

  if ((_DefaultRuneLocale.__runetype[v12] & 0x500) == 0)
  {
    goto LABEL_25;
  }

LABEL_9:
  v13 = (key.ikey << 8) >> 24;
  if (v13 > 0x7F)
  {
    v14 = __maskrune(v13, 0x500uLL);
  }

  else
  {
    v14 = _DefaultRuneLocale.__runetype[v13] & 0x500;
  }

  if ((key.ikey & 0xFF000000) != 0 || !v14)
  {
    goto LABEL_25;
  }

  if (value->tv_nsec)
  {
    v15 = 16;
  }

  else
  {
    v15 = 12;
  }

  if (value->tv_nsec)
  {
    v16 = 84;
  }

  else
  {
    v16 = 83;
  }

  if (i == -1)
  {
    i = sub_1000EE3F8(header);
  }

  if ((sub_1000EDAD8(header, i, v15, 0, v4, v5, v6, v7) & 0x80000000) != 0)
  {
    v22 = "update_field_sizes failed";
    v23 = 791;
  }

  else
  {
    v17 = *(header + 1) + 48 * i;
    *v17 = key;
    *(v17 + 4) = 4;
    *(v17 + 8) = v16;
    *(v17 + 40) = 0;
    __src = key;
    __src.skey[3] = v16;
    tv_nsec = value->tv_nsec;
    tv_sec = value->tv_sec;
    v28 = tv_nsec;
    v29 = 0;
    v21 = v17 + 12;
    v20 = *(v17 + 12);
    v19 = *(v21 + 4);
    if (v20 + v19 <= *(header + 2))
    {
      memcpy((*(header + 4) + v20), &__src, v19);
      return 0;
    }

    v22 = "invalid blob segment";
    v23 = 804;
  }

LABEL_26:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldTimespec", v23, 101, 0, v22, v6, v7, v25);
  return -1;
}

int AAHeaderSetFieldBlob(AAHeader header, uint32_t i, AAFieldKey key, uint64_t size)
{
  if (key.skey[0] > 0x7F)
  {
    if (!__maskrune(key.skey[0], 0x500uLL))
    {
      goto LABEL_31;
    }
  }

  else if ((_DefaultRuneLocale.__runetype[key.skey[0]] & 0x500) == 0)
  {
    goto LABEL_31;
  }

  v12 = *key.skey >> 8;
  if (v12 > 0x7F)
  {
    if (__maskrune(v12, 0x500uLL))
    {
      goto LABEL_9;
    }

LABEL_31:
    v23 = "invalid key";
    v24 = 811;
    goto LABEL_32;
  }

  if ((_DefaultRuneLocale.__runetype[v12] & 0x500) == 0)
  {
    goto LABEL_31;
  }

LABEL_9:
  v13 = (key.ikey << 8) >> 24;
  if (v13 > 0x7F)
  {
    v14 = __maskrune(v13, 0x500uLL);
  }

  else
  {
    v14 = _DefaultRuneLocale.__runetype[v13] & 0x500;
  }

  if ((key.ikey & 0xFF000000) != 0 || !v14)
  {
    goto LABEL_31;
  }

  if (HIDWORD(size))
  {
    v15 = 12;
  }

  else
  {
    v15 = 8;
  }

  if (HIDWORD(size))
  {
    v16 = 67;
  }

  else
  {
    v16 = 66;
  }

  if (size >= 0x10000)
  {
    v17 = v15;
  }

  else
  {
    v17 = 6;
  }

  if (size >= 0x10000)
  {
    v18 = v16;
  }

  else
  {
    v18 = 65;
  }

  if (i == -1)
  {
    i = sub_1000EE3F8(header);
  }

  if ((sub_1000EDAD8(header, i, v17, size, v4, v5, v6, v7) & 0x80000000) != 0)
  {
    v23 = "update_field_sizes failed";
    v24 = 820;
  }

  else
  {
    v19 = *(header + 1) + 48 * i;
    *v19 = key;
    *(v19 + 4) = 5;
    *(v19 + 8) = v18;
    *(v19 + 40) = 0;
    v28 = size;
    v29 = 0;
    __src = key;
    __src.skey[3] = v18;
    v22 = v19 + 12;
    v21 = *(v19 + 12);
    v20 = *(v22 + 4);
    if (v21 + v20 <= *(header + 2))
    {
      memcpy((*(header + 4) + v21), &__src, v20);
      return 0;
    }

    v23 = "invalid blob segment";
    v24 = 832;
  }

LABEL_32:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldBlob", v24, 101, 0, v23, v6, v7, v26);
  return -1;
}

AEAAuthData AEAAuthDataCreate(void)
{
  v0 = malloc(0x30uLL);
  v1 = v0;
  if (v0)
  {
    memset_s(v0, 0x30uLL, 0, 0x30uLL);
  }

  else
  {
    v2 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAAuthData.c", "AEAAuthDataCreate", 19, 95, *v2, "malloc", v3, v4, v6);
  }

  return v1;
}

void AEAAuthDataDestroy(AEAAuthData auth_data)
{
  if (auth_data)
  {
    free(*(auth_data + 2));
    free(*(auth_data + 5));
    memset_s(auth_data + 24, 0x18uLL, 0, 0x18uLL);
    memset_s(auth_data, 0x30uLL, 0, 0x30uLL);

    free(auth_data);
  }
}

AEAAuthData AEAAuthDataCreateWithContext(AEAContext context)
{
  __s = 0;
  v48 = 0;
  __ptr = 0;
  v46 = 0;
  v2 = AEAAuthDataCreate();
  if (!v2)
  {
    return v2;
  }

  if (AEAContextGetFieldBlob(context, 5u, 0, 0, 0, &v46) < 0)
  {
    v8 = "AEAContextGetFieldBlob";
    v9 = 46;
    goto LABEL_31;
  }

  if (!v46)
  {
    goto LABEL_97;
  }

  if ((v46 & 0x8000000000000000) != 0)
  {
    goto LABEL_30;
  }

  v5 = v48;
  if (v48 >= v46)
  {
    v10 = __ptr;
  }

  else
  {
    do
    {
      while (!v5)
      {
        v5 = 0x4000;
        if (v46 <= 0x4000)
        {
          v7 = __ptr;
          v5 = 0x4000;
          goto LABEL_18;
        }
      }

      v6 = v5 >> 1;
      if ((v5 & (v5 >> 1)) != 0)
      {
        v6 = v5 & (v5 >> 1);
      }

      v5 += v6;
    }

    while (v5 < v46);
    if (v5 >= 0x2000000001)
    {
      *__error() = 12;
      goto LABEL_29;
    }

    v7 = __ptr;
LABEL_18:
    v10 = realloc(v7, v5);
    if (!v10)
    {
      free(v7);
LABEL_29:
      v48 = 0;
      __ptr = 0;
      __s = 0;
      goto LABEL_30;
    }

    v48 = v5;
    __ptr = v10;
  }

  if (AEAContextGetFieldBlob(context, 5u, 0, v5 - __s, v10 + __s, &v46) < 0)
  {
    goto LABEL_30;
  }

  v11 = __s;
  if (v46)
  {
    v11 = __s + v46;
    if (!__CFADD__(__s, v46) && v11 <= v48)
    {
      __s += v46;
      goto LABEL_25;
    }

LABEL_30:
    v8 = "AEAContextGetFieldBlob";
    v9 = 59;
    goto LABEL_31;
  }

LABEL_25:
  v12 = __ptr;
  *v2 = 0;
  *(v2 + 3) = 0;
  v13 = (v2 + 24);
  if (!v11)
  {
    goto LABEL_97;
  }

  if (v11 < 4)
  {
    goto LABEL_27;
  }

  v14 = 0;
  v15 = 1;
  while (2)
  {
    v16 = 0;
    v17 = 0;
    while (1)
    {
      v18 = *&v12[v17];
      if (v18 < 4)
      {
        goto LABEL_27;
      }

      v19 = __CFADD__(v18, v17);
      v20 = v18 + v17;
      if (v19 || v20 > v11)
      {
        goto LABEL_27;
      }

      if (v14)
      {
        v21 = *(v2 + 2);
        v22 = (*v2)++;
        *(v21 + 8 * v22) = v17;
        if (v20 >= v11)
        {
          goto LABEL_68;
        }

        ++v16;
        goto LABEL_41;
      }

      ++v16;
      if (v20 >= v11)
      {
        break;
      }

LABEL_41:
      v17 = v20;
      if (v20 + 4 > v11)
      {
        goto LABEL_27;
      }
    }

    if (v15)
    {
      if (v16 > 0xFFFFFFFE)
      {
        goto LABEL_27;
      }

      v23 = *(v2 + 1);
      if (v23 >= v16)
      {
        goto LABEL_55;
      }

      v24 = *(v2 + 1);
      do
      {
        if (v24)
        {
          v24 *= 2;
        }

        else
        {
          v24 = 16;
        }
      }

      while (v24 < v16);
      if (v24 <= v23)
      {
        goto LABEL_55;
      }

      *(v2 + 1) = v24;
      if (8 * v24 >= 0x2000000001)
      {
        *__error() = 12;
      }

      else
      {
        v25 = *(v2 + 2);
        v26 = realloc(v25, 8 * v24);
        if (v26)
        {
          *(v2 + 2) = v26;
LABEL_55:
          if ((v11 & 0x8000000000000000) == 0)
          {
            v27 = *(v2 + 4);
            if (v27 >= v11)
            {
              goto LABEL_67;
            }

            do
            {
              while (!v27)
              {
                v27 = 0x4000;
                v29 = 0x4000;
                if (v11 <= 0x4000)
                {
                  goto LABEL_65;
                }
              }

              v28 = v27 >> 1;
              if ((v27 & (v27 >> 1)) != 0)
              {
                v28 = v27 & (v27 >> 1);
              }

              v27 += v28;
            }

            while (v27 < v11);
            v29 = v27;
            if (v27 >= 0x2000000001)
            {
              *__error() = 12;
            }

            else
            {
LABEL_65:
              v30 = *(v2 + 5);
              v31 = realloc(v30, v29);
              if (v31)
              {
                *(v2 + 4) = v29;
                *(v2 + 5) = v31;
LABEL_67:
                v15 = 0;
                v14 = 1;
                continue;
              }

              free(v30);
            }

            *v13 = 0;
            *(v2 + 4) = 0;
            *(v2 + 5) = 0;
          }

LABEL_27:
          *v2 = 0;
          *(v2 + 3) = 0;
          v8 = "invalid auth data blob";
          v9 = 62;
          goto LABEL_31;
        }

        free(v25);
      }

      *(v2 + 2) = 0;
      goto LABEL_27;
    }

    break;
  }

LABEL_68:
  *v13 = 0;
  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_27;
  }

  v32 = *(v2 + 4);
  if (v32 < v11)
  {
    v33 = 0x4000;
    do
    {
      while (!v32)
      {
        v32 = 0x4000;
        if (v11 <= 0x4000)
        {
          goto LABEL_80;
        }
      }

      v34 = v32 >> 1;
      if ((v32 & (v32 >> 1)) != 0)
      {
        v34 = v32 & (v32 >> 1);
      }

      v32 += v34;
    }

    while (v32 < v11);
    v33 = v32;
    if (v32 >= 0x2000000001)
    {
      *__error() = 12;
LABEL_101:
      *(v2 + 4) = 0;
      *(v2 + 5) = 0;
      goto LABEL_27;
    }

LABEL_80:
    v35 = *(v2 + 5);
    v36 = realloc(v35, v33);
    if (!v36)
    {
      free(v35);
      goto LABEL_101;
    }

    *(v2 + 4) = v33;
    *(v2 + 5) = v36;
  }

  v37 = *(v2 + 5);
  if (v12)
  {
    memcpy((v37 + *v13), v12, v11);
  }

  else if (v37)
  {
    memset_s((v37 + *v13), v11, 0, v11);
  }

  *(v2 + 3) += v11;
  v38 = *v2;
  if (!*v2)
  {
LABEL_97:
    free(__ptr);
    memset_s(&__s, 0x18uLL, 0, 0x18uLL);
    return v2;
  }

  v39 = 0;
  while (v38 <= v39)
  {
    v40 = 0;
    v41 = 0xFFFFFFFFLL;
LABEL_92:
    v42 = (v40 + 1);
    v43 = v41 - 4;
    while (*v42++)
    {
      if (!--v43)
      {
        goto LABEL_99;
      }
    }

    if (++v39 == v38)
    {
      goto LABEL_97;
    }
  }

  v40 = (*(v2 + 5) + *(*(v2 + 2) + 8 * v39));
  v41 = *v40;
  if (v41 >= 5)
  {
    goto LABEL_92;
  }

LABEL_99:
  v8 = "invalid auth_data key";
  v9 = 74;
LABEL_31:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAAuthData.c", "AEAAuthDataCreateWithContext", v9, 95, 0, v8, v3, v4, v46);
  free(__ptr);
  memset_s(&__s, 0x18uLL, 0, 0x18uLL);
  AEAAuthDataDestroy(v2);
  return 0;
}