uint64_t uudecode_filter_close(uint64_t a1)
{
  v2 = *(a1 + 40);
  free(v2[1]);
  free(v2[4]);
  free(v2[7]);
  free(v2);
  return 0;
}

uint64_t uudecode_read_header(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (*(v3 + 48))
  {
    archive_entry_set_mode(a2, *(v3 + 44) | 0x8000);
  }

  if (*(v3 + 56))
  {
    archive_entry_set_pathname(a2, *(v3 + 56));
  }

  return 0;
}

uint64_t ensure_in_buff_size(uint64_t a1, uint64_t a2, size_t a3)
{
  if (a3 <= *(a2 + 24))
  {
    return 0;
  }

  size = *(a2 + 24);
  do
  {
    if (size >= 0x8000)
    {
      size += 1024;
    }

    else
    {
      size *= 2;
    }
  }

  while (a3 > size);
  v12 = malloc_type_malloc(size, 0x675A25FEuLL);
  if (v12)
  {
    if (*(a2 + 16))
    {
      v8 = *(a2 + 8);
      v9 = *(a2 + 16);
      __memmove_chk();
    }

    free(*(a2 + 8));
    *(a2 + 8) = v12;
    *(a2 + 24) = size;
    return 0;
  }

  free(0);
  archive_set_error(*(a1 + 24), 12, "Can't allocate data for uudecode", v3, v4, v5, v6, v7, size);
  return -30;
}

uint64_t blake2sp_init(uint64_t a1, unint64_t a2)
{
  if (a2 && a2 <= 0x20)
  {
    __memset_chk();
    *(a1 + 1736) = 0;
    *(a1 + 1744) = a2;
    if ((blake2sp_init_root(a1 + 1088, a2, 0) & 0x80000000) != 0)
    {
      return -1;
    }

    else
    {
      for (i = 0; i < 8; ++i)
      {
        if ((blake2sp_init_leaf(a1 + 136 * i, a2, 0, i) & 0x80000000) != 0)
        {
          return -1;
        }
      }

      *(a1 + 1216) = 1;
      *(a1 + 1080) = 1;
      return 0;
    }
  }

  else
  {
    return -1;
  }
}

uint64_t blake2sp_init_root(uint64_t a1, unsigned __int8 a2, unsigned __int8 a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v6[0] = a2;
  v6[1] = a3;
  v6[2] = 8;
  v6[3] = 2;
  store32_0(&v7, 0);
  store32_0(&v8, 0);
  store16(&v8 + 2, 0);
  HIWORD(v8) = 8193;
  v9 = 0;
  v10 = 0;
  inited = blake2s_init_param(a1, v6);
  *MEMORY[0x1E69E9840];
  return inited;
}

uint64_t blake2sp_init_leaf(uint64_t a1, unsigned __int8 a2, unsigned __int8 a3, unsigned int a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = 8;
  v8[3] = 2;
  store32_0(&v9, 0);
  store32_0(&v10, a4);
  store16(&v10 + 2, 0);
  HIWORD(v10) = 0x2000;
  v11 = 0;
  v12 = 0;
  inited = blake2sp_init_leaf_param(a1, v8);
  *MEMORY[0x1E69E9840];
  return inited;
}

uint64_t blake2sp_update(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v11 = a3;
  v9 = *(a1 + 1736);
  v8 = 512 - v9;
  if (v9 && a3 >= v8)
  {
    __memcpy_chk();
    for (i = 0; i < 8; ++i)
    {
      blake2s_update(a1 + 136 * i, a1 + 1224 + (i << 6), 0x40uLL);
    }

    a2 += v8;
    v11 -= v8;
    v9 = 0;
  }

  for (j = 0; j < 8; ++j)
  {
    v5 = v11;
    v4 = a2 + (j << 6);
    while (v5 >= 0x200)
    {
      blake2s_update(a1 + 136 * j, v4, 0x40uLL);
      v4 += 512;
      v5 -= 512;
    }
  }

  v12 = v11 % 0x200;
  if (v12)
  {
    __memcpy_chk();
  }

  *(a1 + 1736) = v9 + v12;
  return 0;
}

uint64_t blake2sp_final(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2 && a3 >= *(a1 + 1744))
  {
    for (i = 0; i < 8; ++i)
    {
      if (*(a1 + 1736) > i << 6)
      {
        v4 = *(a1 + 1736) - (i << 6);
        if (v4 > 0x40)
        {
          v4 = 64;
        }

        blake2s_update(a1 + 136 * i, a1 + 1224 + (i << 6), v4);
      }

      blake2s_final(a1 + 136 * i, &v10[2 * i], 0x20uLL);
    }

    for (j = 0; j < 8; ++j)
    {
      blake2s_update(a1 + 1088, &v10[2 * j], 0x20uLL);
    }

    v9 = blake2s_final(a1 + 1088, a2, *(a1 + 1744));
  }

  else
  {
    v9 = -1;
  }

  *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t store32_0(uint64_t result, unsigned int a2)
{
  *result = a2;
  *(result + 1) = a2 >> 8;
  *(result + 3) = HIBYTE(a2);
  return result;
}

uint64_t blake2sp_init_leaf_param(uint64_t a1, unsigned __int8 *a2)
{
  LODWORD(result) = blake2s_init_param(a1, a2);
  *(a1 + 120) = a2[15];
  return result;
}

uint64_t _warc_rdhdr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a1;
  v51 = a2;
  v50 = **(a1 + 2072);
  v49 = 0;
  v48 = 0;
  v47 = 0;
  do
  {
    v48 = __archive_read_ahead(v52, 0xCuLL, &v47, a4, a5, a6, a7, a8);
    if ((v47 & 0x8000000000000000) != 0)
    {
LABEL_3:
      archive_set_error(v52, -1, "Bad record header", v8, v9, v10, v11, v12, v38);
      return -30;
    }

    if (!v48)
    {
      return 1;
    }

    eoh = _warc_find_eoh(v48, v47);
    if (!eoh)
    {
      goto LABEL_3;
    }

    v49 = _warc_rdver(v48, eoh - v48);
    if (!v49)
    {
      archive_set_error(v52, -1, "Invalid record version", v13, v14, v15, v16, v17, v38);
      return -30;
    }

    if (v49 < 0x4B0 || v49 > 0x2710)
    {
      archive_set_error(v52, -1, "Unsupported record version: %u.%u", v13, v14, v15, v16, v17, v49 / 0x2710);
      return -30;
    }

    v18 = _warc_rdlen(v48, eoh - v48);
    v42 = v18;
    if (v18 < 0)
    {
      archive_set_error(v52, 22, "Bad content length", v19, v20, v21, v22, v23, v38);
      return -30;
    }

    v41 = _warc_rdrtm(v48, eoh - v48);
    if (v41 == -1)
    {
      archive_set_error(v52, 22, "Bad record time", v25, v26, v27, v28, v29, v38);
      return -30;
    }

    v52[4] = 983040;
    if (v49 != *(v50 + 40))
    {
      archive_string_sprintf((v50 + 48), "WARC/%u.%u", v24, v25, v26, v27, v28, v29, v49 / 0x2710);
      *(v50 + 40) = v49;
    }

    v43 = _warc_rdtyp(v48, eoh - v48);
    *v50 = v42;
    *(v50 + 8) = 0;
    v40 = 0;
    if (v43 > 2 && (v43 == 3 || v43 == 5))
    {
      v39 = _warc_rduri(v48, eoh - v48);
      *&v44 = v39;
      if (v39 && *(v30 + v39 - 1) != 47)
      {
        if (v39 + 1 > *(v50 + 24))
        {
          *(v50 + 24) = ((v39 + 64) / 0x40) << 6;
          v45 = malloc_type_realloc(*(v50 + 32), *(v50 + 24), 0x650DC80EuLL);
          if (!v45)
          {
            archive_set_error(v52, 12, "Out of memory", v31, v32, v33, v34, v35, v38);
            return -30;
          }

          *(v50 + 32) = v45;
        }

        v36 = *(v50 + 32);
        __memcpy_chk();
        *(*(v50 + 32) + v39) = 0;
        *(&v44 + 1) = *(v50 + 32);
        v40 = _warc_rdmtm(v48, eoh - v48);
        if (v40 == -1)
        {
          v40 = v41;
        }
      }

      else
      {
        v44 = 0uLL;
      }
    }

    else
    {
      v44 = 0uLL;
    }

    __archive_read_consume(v52, eoh - v48);
    if (v43 > 2 && (v43 == 3 || v43 == 5) && v44)
    {
      archive_entry_set_filetype(v51, 0x8000);
      archive_entry_copy_pathname(v51, *(&v44 + 1));
      archive_entry_set_size(v51, v42);
      archive_entry_set_perm(v51, 420);
      archive_entry_set_ctime(v51, v41, 0);
      archive_entry_set_mtime(v51, v40, 0);
      return 0;
    }
  }

  while ((_warc_skip(v52) & 0x80000000) == 0);
  return -30;
}

uint64_t _warc_read(uint64_t a1, uint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v11 = **(a1 + 2072);
  v10 = 0;
  v9 = 0;
  if (v11[1] >= *v11)
  {
    goto LABEL_2;
  }

  if (v11[2])
  {
    __archive_read_consume(v15, v11[2]);
    v11[2] = 0;
  }

  v10 = __archive_read_ahead(v15, 1uLL, &v9, a4, a5, a6, a7, a8);
  if ((v9 & 0x8000000000000000) != 0)
  {
    *v13 = 0;
    return v9;
  }

  if (v9)
  {
    if (v9 > *v11 - v11[1])
    {
      v9 = *v11 - v11[1];
    }

    *v12 = v11[1];
    *v13 = v9;
    *v14 = v10;
    v11[1] += v9;
    v11[2] = v9;
    return 0;
  }

  else
  {
LABEL_2:
    *v14 = 0;
    *v13 = 0;
    *v12 = v11[1] + 4;
    v11[2] = 0;
    return 1;
  }
}

uint64_t _warc_skip(uint64_t a1)
{
  v2 = **(a1 + 2072);
  if (__archive_read_consume(a1, *v2) < 0 || __archive_read_consume(a1, 4uLL) < 0)
  {
    return -30;
  }

  else
  {
    *v2 = 0;
    v2[1] = 0;
    return 0;
  }
}

uint64_t _warc_find_eoh(char *a1, size_t a2)
{
  v3 = xmemmem(a1, a2, "\r\n\r\n", 4);
  if (v3)
  {
    v3 += 4;
  }

  return v3;
}

uint64_t _warc_rdlen(char *a1, size_t a2)
{
  v10 = a1;
  v9 = a2;
  eol = 0;
  __endptr = 0;
  __str = xmemmem(a1, a2, "\r\nContent-Length:", 17);
  if (!__str)
  {
    return -1;
  }

  __str += 17;
  eol = _warc_find_eol(__str, &v10[v9] - __str);
  if (!eol)
  {
    return -1;
  }

  while (1)
  {
    v4 = 0;
    if (__str < eol)
    {
      v3 = 1;
      if (*__str != 32)
      {
        v3 = *__str == 9;
      }

      v4 = v3;
    }

    if (!v4)
    {
      break;
    }

    ++__str;
  }

  if (!isdigit(*__str))
  {
    return -1;
  }

  *__error() = 0;
  v5 = strtol(__str, &__endptr, 10);
  if (!*__error() && __endptr == eol)
  {
    return v5;
  }

  else
  {
    return -1;
  }
}

uint64_t _warc_rdrtm(char *a1, size_t a2)
{
  v8 = a1;
  v7 = a2;
  eol = 0;
  v4 = 0;
  v6 = xmemmem(a1, a2, "\r\nWARC-Date:", 12);
  if (!v6)
  {
    return -1;
  }

  v6 += 12;
  eol = _warc_find_eol(v6, &v8[v7] - v6);
  if (!eol)
  {
    return -1;
  }

  v3 = xstrpisotime(v6, &v4);
  if (v4 == eol)
  {
    return v3;
  }

  else
  {
    return -1;
  }
}

uint64_t _warc_rdtyp(char *a1, size_t a2)
{
  __s1 = xmemmem(a1, a2, "\r\nWARC-Type:", 12);
  if (__s1)
  {
    __s1a = __s1 + 12;
    eol = _warc_find_eol(__s1a, &a1[a2] - __s1a);
    if (eol)
    {
      while (1)
      {
        v4 = 0;
        if (__s1a < eol)
        {
          v3 = 1;
          if (*__s1a != 32)
          {
            v3 = *__s1a == 9;
          }

          v4 = v3;
        }

        if (!v4)
        {
          break;
        }

        ++__s1a;
      }

      if (__s1a + 8 == eol)
      {
        if (!memcmp(__s1a, "resource", 8uLL))
        {
          return 3;
        }

        if (!memcmp(__s1a, "response", 8uLL))
        {
          return 5;
        }
      }

      return 0;
    }

    return 0;
  }

  else
  {
    return 0;
  }
}

unint64_t _warc_rduri(char *a1, size_t a2)
{
  v15 = 0;
  __s1 = xmemmem(a1, a2, "\r\nWARC-Target-URI:", 18);
  if (__s1)
  {
    __s1a = __s1 + 18;
    eol = _warc_find_eol(__s1a, &a1[a2] - __s1a);
    if (eol)
    {
      while (1)
      {
        v6 = 0;
        if (__s1a < eol)
        {
          v5 = 1;
          if (*__s1a != 32)
          {
            v5 = *__s1a == 9;
          }

          v6 = v5;
        }

        if (!v6)
        {
          break;
        }

        ++__s1a;
      }

      v9 = xmemmem(__s1a, eol - __s1a, "://", 3);
      if (v9)
      {
        for (i = __s1a; i < eol; ++i)
        {
          if (isspace(*i))
          {
            return v15;
          }
        }

        if (v9 >= (__s1a + 3))
        {
          v10 = (v9 + 3);
          if (!memcmp(__s1a, "file", 4uLL))
          {
            return eol - v10;
          }

          if (!memcmp(__s1a, "http", 4uLL) || !memcmp(__s1a, "ftp", 3uLL))
          {
            do
            {
              v4 = 0;
              if (v10 < eol)
              {
                v2 = v10++;
                v4 = *v2 != 47;
              }
            }

            while (v4);
            return eol - v10;
          }
        }
      }
    }
  }

  return v15;
}

uint64_t _warc_rdmtm(char *a1, size_t a2)
{
  v8 = a1;
  v7 = a2;
  eol = 0;
  v4 = 0;
  v6 = xmemmem(a1, a2, "\r\nLast-Modified:", 16);
  if (!v6)
  {
    return -1;
  }

  v6 += 16;
  eol = _warc_find_eol(v6, &v8[v7] - v6);
  if (!eol)
  {
    return -1;
  }

  v3 = xstrpisotime(v6, &v4);
  if (v4 == eol)
  {
    return v3;
  }

  else
  {
    return -1;
  }
}

uint64_t xmemmem(char *a1, size_t a2, char *a3, uint64_t a4)
{
  v15 = &a1[a2];
  v14 = &a3[a4];
  if (!a4)
  {
    goto LABEL_17;
  }

  v18 = memchr(a1, *a3, a2);
  if (!v18)
  {
    return 0;
  }

  v13 = v18 + 1;
  v12 = a3 + 1;
  v10 = *v18;
  v9 = v10;
  for (i = 1; ; i = i & (*v13++ == *v12++))
  {
    v7 = 0;
    if (v13 < v15)
    {
      v7 = v12 < v14;
    }

    if (!v7)
    {
      break;
    }

    v10 ^= *v13;
    v9 ^= *v12;
  }

  if (v12 < v14)
  {
    return 0;
  }

  if (i)
  {
LABEL_17:
    deconst();
    return v5;
  }

  __s1 = v18;
  while (v13 < v15)
  {
    v4 = __s1++;
    v10 ^= *v4 ^ *v13;
    if (v10 == v9 && !memcmp(__s1, a3, a4 - 1))
    {
      goto LABEL_17;
    }

    ++v13;
  }

  return 0;
}

time_t xstrpisotime(char *a1, void *a2)
{
  v14 = a1;
  v13 = a2;
  v11 = -1;
  memset(&__b, 0, sizeof(__b));
  while (1)
  {
    v10 = 1;
    if (*v14 != 32)
    {
      v10 = *v14 == 9;
    }

    if (!v10)
    {
      break;
    }

    ++v14;
  }

  __b.tm_year = strtoi_lim(v14, &v14, 1583, 4095);
  if ((__b.tm_year & 0x80000000) == 0)
  {
    v2 = v14++;
    if (*v2 == 45)
    {
      __b.tm_mon = strtoi_lim(v14, &v14, 1, 12);
      if ((__b.tm_mon & 0x80000000) == 0)
      {
        v3 = v14++;
        if (*v3 == 45)
        {
          __b.tm_mday = strtoi_lim(v14, &v14, 1, 31);
          if ((__b.tm_mday & 0x80000000) == 0)
          {
            v4 = v14++;
            if (*v4 == 84)
            {
              __b.tm_hour = strtoi_lim(v14, &v14, 0, 23);
              if ((__b.tm_hour & 0x80000000) == 0)
              {
                v5 = v14++;
                if (*v5 == 58)
                {
                  __b.tm_min = strtoi_lim(v14, &v14, 0, 59);
                  if ((__b.tm_min & 0x80000000) == 0)
                  {
                    v6 = v14++;
                    if (*v6 == 58)
                    {
                      __b.tm_sec = strtoi_lim(v14, &v14, 0, 60);
                      if ((__b.tm_sec & 0x80000000) == 0)
                      {
                        v7 = v14++;
                        if (*v7 == 90)
                        {
                          __b.tm_year -= 1900;
                          --__b.tm_mon;
                          v11 = time_from_tm_1(&__b);
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

  if (v13)
  {
    deconst();
    *v13 = v8;
  }

  return v11;
}

uint64_t strtoi_lim(char *a1, char **a2, int a3, int a4)
{
  v9 = 0;
  v8 = a1;
  if (a4 <= 10)
  {
    v6 = 10;
  }

  else
  {
    v6 = a4;
  }

  for (i = v6; ; i /= 10)
  {
    v5 = 0;
    if (10 * v9 <= a4)
    {
      v5 = 0;
      if (i)
      {
        v5 = 0;
        if (*v8 >= 48)
        {
          v5 = *v8 <= 57;
        }
      }
    }

    if (!v5)
    {
      break;
    }

    v9 = 10 * v9 + *v8++ - 48;
  }

  if (v8 == a1)
  {
    v9 = -1;
  }

  else if (v9 < a3 || v9 > a4)
  {
    v9 = -2;
  }

  *a2 = v8;
  return v9;
}

uint64_t archive_version_details()
{
  v6 = archive_zlib_version();
  v5 = archive_liblzma_version();
  v4 = archive_bzlib_version();
  v3 = archive_liblz4_version();
  v2 = archive_libzstd_version();
  if (!archive_version_details_init)
  {
    archive_version_details_str = 0;
    qword_1EBDD7CA8 = 0;
    qword_1EBDD7CB0 = 0;
    archive_strcat(&archive_version_details_str, "libarchive 3.7.4");
    if (v6)
    {
      archive_strcat(&archive_version_details_str, " zlib/");
      archive_strcat(&archive_version_details_str, v6);
    }

    if (v5)
    {
      archive_strcat(&archive_version_details_str, " liblzma/");
      archive_strcat(&archive_version_details_str, v5);
    }

    if (v4)
    {
      v1 = strchr(v4, 44);
      if (!v1)
      {
        v1 = &v4[strlen(v4)];
      }

      archive_strcat(&archive_version_details_str, " bz2lib/");
      archive_strncat(&archive_version_details_str, v4, v1 - v4);
    }

    if (v3)
    {
      archive_strcat(&archive_version_details_str, " liblz4/");
      archive_strcat(&archive_version_details_str, v3);
    }

    if (v2)
    {
      archive_strcat(&archive_version_details_str, " libzstd/");
      archive_strcat(&archive_version_details_str, v2);
    }
  }

  return archive_version_details_str;
}

uint64_t archive_write_set_format_cpio_newc(uint64_t a1)
{
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_set_format_cpio_newc") == -30)
  {
    return -30;
  }

  else
  {
    if (*(a1 + 312))
    {
      (*(a1 + 312))(a1);
    }

    v8 = malloc_type_calloc(1uLL, 0x28uLL, 0x1020040FC537BA2uLL);
    if (v8)
    {
      *(a1 + 248) = v8;
      *(a1 + 256) = "cpio";
      *(a1 + 272) = archive_write_newc_options;
      *(a1 + 288) = archive_write_newc_header;
      *(a1 + 296) = archive_write_newc_data;
      *(a1 + 280) = archive_write_newc_finish_entry;
      *(a1 + 304) = archive_write_newc_close;
      *(a1 + 312) = archive_write_newc_free;
      *(a1 + 16) = 65540;
      *(a1 + 24) = "SVR4 cpio nocrc";
      return 0;
    }

    else
    {
      archive_set_error(a1, 12, "Can't allocate cpio data", v1, v2, v3, v4, v5, v7);
      return -30;
    }
  }
}

uint64_t archive_write_newc_options(uint64_t a1, const char *a2, const char *a3)
{
  v10 = *(a1 + 248);
  v9 = -25;
  if (!strcmp(a2, "hdrcharset"))
  {
    if (a3 && *a3)
    {
      *(v10 + 16) = archive_string_conversion_to_charset(a1, a3, 0);
      if (*(v10 + 16))
      {
        return 0;
      }

      else
      {
        return -30;
      }
    }

    else
    {
      archive_set_error(a1, -1, "%s: hdrcharset option needs a character-set name", v3, v4, v5, v6, v7, *(a1 + 256));
    }

    return v9;
  }

  else
  {
    return -20;
  }
}

uint64_t archive_write_newc_header(_DWORD *a1, _DWORD *a2)
{
  v24 = a1;
  v23 = a2;
  v22 = 0;
  v21 = 0;
  if (archive_entry_filetype(a2) || archive_entry_hardlink(v23))
  {
    v20 = v23;
    sconv_0 = get_sconv_0(v24);
    if (_archive_entry_pathname_l(v23, &v22, &v21, sconv_0) && *__error() == 12)
    {
      archive_set_error(v24, 12, "Can't allocate memory for Pathname", v8, v9, v10, v11, v12, v20);
      return -30;
    }

    else if (v21 && v22 && *v22)
    {
      if (archive_entry_hardlink(v23) || archive_entry_size_is_set(v23) && (archive_entry_size(v23) & 0x8000000000000000) == 0)
      {
        return write_header_0(v24, v23);
      }

      else
      {
        archive_set_error(v24, -1, "Size required", v13, v14, v15, v16, v17, v20);
        return -25;
      }
    }

    else
    {
      archive_set_error(v24, -1, "Pathname required", v8, v9, v10, v11, v12, v20);
      return -25;
    }
  }

  else
  {
    archive_set_error(v24, -1, "Filetype required", v2, v3, v4, v5, v6, v19);
    return -25;
  }
}

uint64_t archive_write_newc_data(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a3;
  v5 = *(a1 + 248);
  if (a3 > *v5)
  {
    v6 = *v5;
  }

  v4 = __archive_write_output(a1, a2, v6);
  *v5 -= v6;
  if (v4 < 0)
  {
    return v4;
  }

  else
  {
    return v6;
  }
}

uint64_t archive_write_newc_close(uint64_t a1)
{
  v2 = archive_entry_new();
  archive_entry_set_nlink(v2, 1);
  archive_entry_set_size(v2, 0);
  archive_entry_set_pathname(v2, "TRAILER!!!");
  v3 = write_header_0(a1, v2);
  archive_entry_free(v2);
  return v3;
}

uint64_t archive_write_newc_free(uint64_t a1)
{
  free(*(a1 + 248));
  *(a1 + 248) = 0;
  return 0;
}

uint64_t get_sconv_0(uint64_t a1)
{
  v3 = *(a1 + 248);
  v2 = *(v3 + 16);
  if (!v2)
  {
    if (!*(v3 + 32))
    {
      *(v3 + 24) = archive_string_default_conversion_for_write();
      *(v3 + 32) = 1;
    }

    return *(v3 + 24);
  }

  return v2;
}

uint64_t write_header_0(uint64_t a1, _DWORD *a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v64 = a1;
  v63 = a2;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  sconv_0 = 0;
  v54 = 0;
  v53 = 0;
  v61 = *(a1 + 248);
  v56 = 0;
  sconv_0 = get_sconv_0(a1);
  v54 = 0;
  v57 = _archive_entry_pathname_l(v63, &v59, &v53, sconv_0);
  if (v57)
  {
    if (*__error() == 12)
    {
      archive_set_error(v64, 12, "Can't allocate memory for Pathname", v2, v3, v4, v5, v6, v47);
      v56 = -30;
      goto LABEL_37;
    }

    v51 = v64;
    v50 = archive_entry_pathname(v63);
    archive_string_conversion_charset_name(sconv_0);
    archive_set_error(v51, 79, "Can't translate pathname '%s' to %s", v7, v8, v9, v10, v11, v50);
    v56 = -20;
  }

  v58 = v53 + 1;
  memset(__b, 0, sizeof(__b));
  format_hex(460545, __b, 6);
  v12 = archive_entry_devmajor(v63);
  format_hex(v12, &__b[62], 8);
  v13 = archive_entry_devminor(v63);
  format_hex(v13, &__b[70], 8);
  v62 = archive_entry_ino64(v63);
  if (v62 > 0xFFFFFFFFLL)
  {
    archive_set_error(v64, 34, "large inode number truncated", v14, v15, v16, v17, v18, v47);
    v56 = -20;
  }

  format_hex(v62, &__b[6], 8);
  v19 = archive_entry_mode(v63);
  format_hex(v19, &__b[14], 8);
  v20 = archive_entry_uid(v63);
  format_hex(v20, &__b[22], 8);
  v21 = archive_entry_gid(v63);
  format_hex(v21, &__b[30], 8);
  v22 = archive_entry_nlink(v63);
  format_hex(v22, &__b[38], 8);
  if (archive_entry_filetype(v63) == 24576 || archive_entry_filetype(v63) == 0x2000)
  {
    v23 = archive_entry_rdevmajor(v63);
    format_hex(v23, &__b[78], 8);
    v24 = archive_entry_rdevminor(v63);
    format_hex(v24, &__b[86], 8);
  }

  else
  {
    format_hex(0, &__b[78], 8);
    format_hex(0, &__b[86], 8);
  }

  v25 = archive_entry_mtime(v63);
  format_hex(v25, &__b[46], 8);
  format_hex(v58, &__b[94], 8);
  format_hex(0, &__b[102], 8);
  if (archive_entry_filetype(v63) != 0x8000)
  {
    archive_entry_set_size(v63, 0);
  }

  v57 = _archive_entry_symlink_l(v63, &v60, &v53, sconv_0);
  if (v57)
  {
    if (*__error() == 12)
    {
      archive_set_error(v64, 12, "Can't allocate memory for Likname", v26, v27, v28, v29, v30, v47);
      v56 = -30;
      goto LABEL_37;
    }

    v49 = v64;
    v48 = archive_entry_symlink(v63);
    archive_string_conversion_charset_name(sconv_0);
    archive_set_error(v49, 79, "Can't translate linkname '%s' to %s", v31, v32, v33, v34, v35, v48);
    v56 = -20;
  }

  if (v53 && v60 && *v60)
  {
    v36 = strlen(v60);
    v57 = format_hex(v36, &__b[54], 8);
  }

  else
  {
    v42 = archive_entry_size(v63);
    v57 = format_hex(v42, &__b[54], 8);
  }

  if (v57)
  {
    archive_set_error(v64, 34, "File is too large for this format.", v37, v38, v39, v40, v41, v47);
    v56 = -25;
  }

  else
  {
    v57 = __archive_write_output(v64, __b, 110);
    if (v57)
    {
      v56 = -30;
    }

    else
    {
      v57 = __archive_write_output(v64, v59, v58);
      if (v57)
      {
        v56 = -30;
      }

      else
      {
        v52 = -(v58 + 110) & 3;
        if (v52 && (v57 = __archive_write_output(v64, &unk_1BF342BB8, v52)) != 0)
        {
          v56 = -30;
        }

        else
        {
          v43 = archive_entry_size(v63);
          *v61 = v43;
          *(v61 + 8) = -*v61 & 3;
          if (v60 && *v60)
          {
            v44 = strlen(v60);
            v57 = __archive_write_output(v64, v60, v44);
            if (v57)
            {
              v56 = -30;
            }

            else
            {
              v45 = strlen(v60);
              v57 = __archive_write_output(v64, &unk_1BF342BB8, -v45 & 3);
              if (v57)
              {
                v56 = -30;
              }
            }
          }
        }
      }
    }
  }

LABEL_37:
  archive_entry_free(v54);
  *MEMORY[0x1E69E9840];
  return v56;
}

uint64_t format_hex(uint64_t a1, _BYTE *a2, char a3)
{
  v5 = (1 << (4 * a3)) - 1;
  if (a1 < 0 || a1 > v5)
  {
    format_hex_recursive(v5, a2, a3);
    return -1;
  }

  else
  {
    format_hex_recursive(a1, a2, a3);
    return 0;
  }
}

uint64_t format_hex_recursive(uint64_t a1, _BYTE *a2, int a3)
{
  if (!a3)
  {
    return a1;
  }

  v3 = format_hex_recursive(a1, a2 + 1, (a3 - 1));
  *a2 = a0123456789abcd[v3 & 0xF];
  return v3 >> 4;
}

uint64_t archive_write_set_format_mtree_default(uint64_t a1, const char *a2)
{
  if (__archive_check_magic(a1, -1329217314, 1, a2) == -30)
  {
    return -30;
  }

  else
  {
    if (*(a1 + 312))
    {
      (*(a1 + 312))(a1);
    }

    v8 = malloc_type_calloc(1uLL, 0x3C8uLL, 0x10B0040658C16C3uLL);
    if (v8)
    {
      *v8 = 0;
      v8[28] = 1;
      __memset_chk();
      v8[238] = 4032058;
      v8[239] = 0;
      v8[240] = 0;
      *(v8 + 8) = 0;
      *(v8 + 9) = 0;
      *(v8 + 10) = 0;
      *(v8 + 11) = 0;
      *(v8 + 12) = 0;
      *(v8 + 13) = 0;
      mtree_entry_register_init(v8);
      *(a1 + 248) = v8;
      *(a1 + 312) = archive_write_mtree_free;
      *(a1 + 256) = "mtree";
      *(a1 + 272) = archive_write_mtree_options;
      *(a1 + 288) = archive_write_mtree_header;
      *(a1 + 304) = archive_write_mtree_close;
      *(a1 + 296) = archive_write_mtree_data;
      *(a1 + 280) = archive_write_mtree_finish_entry;
      *(a1 + 16) = 0x80000;
      *(a1 + 24) = "mtree";
      return 0;
    }

    else
    {
      archive_set_error(a1, 12, "Can't allocate mtree data", v2, v3, v4, v5, v6, archive_write_mtree_free);
      return -30;
    }
  }
}

uint64_t archive_write_set_format_mtree_classic(uint64_t a1)
{
  v3 = archive_write_set_format_mtree_default(a1, "archive_write_set_format_mtree_classic");
  if (!v3)
  {
    v2 = *(a1 + 248);
    *(v2 + 216) = 1;
    *(v2 + 964) = 1;
  }

  return v3;
}

uint64_t mtree_entry_register_init(uint64_t result)
{
  *(result + 48) = 0;
  *(result + 56) = result + 48;
  return result;
}

uint64_t archive_write_mtree_free(uint64_t a1)
{
  v2 = *(a1 + 248);
  if (v2)
  {
    mtree_entry_register_free(v2);
    archive_string_free(v2 + 24);
    archive_string_free(v2 + 64);
    archive_string_free(v2 + 88);
    attr_counter_set_free(v2);
    free(v2);
    *(a1 + 248) = 0;
  }

  return 0;
}

uint64_t archive_write_mtree_options(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 248);
  v4 = 0;
  switch(*a2)
  {
    case 'a':
      if (!strcmp(a2, "all"))
      {
        v4 = -1;
      }

      goto LABEL_69;
    case 'c':
      v4 = strcmp(a2, "cksum") == 0;
      goto LABEL_69;
    case 'd':
      if (!strcmp(a2, "device"))
      {
        v4 = 2;
        goto LABEL_69;
      }

      if (strcmp(a2, "dironly"))
      {
        goto LABEL_69;
      }

      v5[239] = a3 != 0;
      return 0;
    case 'f':
      if (!strcmp(a2, "flags"))
      {
        v4 = 8;
      }

      goto LABEL_69;
    case 'g':
      if (!strcmp(a2, "gid"))
      {
        v4 = 16;
      }

      else if (!strcmp(a2, "gname"))
      {
        v4 = 32;
      }

      goto LABEL_69;
    case 'i':
      if (!strcmp(a2, "indent"))
      {
        v5[240] = a3 != 0;
        return 0;
      }

      if (!strcmp(a2, "inode"))
      {
        v4 = 0x4000000;
      }

      goto LABEL_69;
    case 'l':
      if (!strcmp(a2, "link"))
      {
        v4 = 0x10000;
      }

      goto LABEL_69;
    case 'm':
      if (!strcmp(a2, "md5") || !strcmp(a2, "md5digest"))
      {
        v4 = 256;
      }

      if (!strcmp(a2, "mode"))
      {
        v4 = 512;
      }

      goto LABEL_69;
    case 'n':
      if (!strcmp(a2, "nlink"))
      {
        v4 = 1024;
      }

      goto LABEL_69;
    case 'r':
      if (!strcmp(a2, "resdevice"))
      {
        v4 = 0x8000000;
      }

      else if (!strcmp(a2, "ripemd160digest") || !strcmp(a2, "rmd160") || !strcmp(a2, "rmd160digest"))
      {
        v4 = 0x2000;
      }

      goto LABEL_69;
    case 's':
      if (!strcmp(a2, "sha1") || !strcmp(a2, "sha1digest"))
      {
        v4 = 0x4000;
      }

      if (!strcmp(a2, "sha256") || !strcmp(a2, "sha256digest"))
      {
        v4 = 0x800000;
      }

      if (!strcmp(a2, "sha384") || !strcmp(a2, "sha384digest"))
      {
        v4 = 0x1000000;
      }

      if (!strcmp(a2, "sha512") || !strcmp(a2, "sha512digest"))
      {
        v4 = 0x2000000;
      }

      if (!strcmp(a2, "size"))
      {
        v4 = 0x8000;
      }

      goto LABEL_69;
    case 't':
      if (!strcmp(a2, "time"))
      {
        v4 = 0x40000;
      }

      else if (!strcmp(a2, "type"))
      {
        v4 = 0x80000;
      }

      goto LABEL_69;
    case 'u':
      if (!strcmp(a2, "uid"))
      {
        v4 = 0x100000;
      }

      else if (!strcmp(a2, "uname"))
      {
        v4 = 0x200000;
      }

      else if (!strcmp(a2, "use-set"))
      {
        v5[241] = a3 != 0;
        return 0;
      }

LABEL_69:
      if (v4)
      {
        if (a3)
        {
          v5[238] |= v4;
        }

        else
        {
          v5[238] &= ~v4;
        }

        return 0;
      }

      else
      {
        return -20;
      }

    default:
      goto LABEL_69;
  }
}

uint64_t archive_write_mtree_header(uint64_t a1, _DWORD **a2)
{
  v14 = a1;
  v13 = a2;
  v12 = *(a1 + 248);
  v11 = 0;
  if (*(v12 + 112))
  {
    *(v12 + 112) = 0;
    archive_strcat((v12 + 88), "#mtree\n");
    if ((*(v12 + 952) & 0x380238) == 0)
    {
      *(v12 + 964) = 0;
    }
  }

  *(v12 + 120) = archive_entry_size(v13);
  if (!*(v12 + 956) || archive_entry_filetype(v13) == 0x4000)
  {
    v9 = mtree_entry_new(v14, v13, &v11);
    if (v9 >= -20)
    {
      v10 = mtree_entry_tree_add(v14, &v11, v2, v3, v4, v5, v6, v7);
      if (v10 >= -20)
      {
        *v12 = v11;
        if (v11[6])
        {
          sum_init(v12);
        }

        return v9;
      }

      else
      {
        mtree_entry_free(v11);
        return v10;
      }
    }

    else
    {
      return v9;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t archive_write_mtree_close(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 248);
  if (v9[1] && write_mtree_entry_tree(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    return -30;
  }

  else
  {
    archive_write_set_bytes_in_last_block(a1, 1);
    return __archive_write_output(a1, v9[11], v9[12]);
  }
}

uint64_t archive_write_mtree_data(uint64_t a1, unsigned __int8 *a2, unint64_t a3)
{
  v6 = a3;
  v5 = *(a1 + 248);
  if (a3 > v5[15])
  {
    v6 = v5[15];
  }

  v3 = *(a1 + 248);
  v5[15] -= v6;
  if (!*v5)
  {
    return v6;
  }

  if (*(*v5 + 228) == 0x8000)
  {
    sum_update(v5, a2, v6);
  }

  return v6;
}

uint64_t archive_write_mtree_finish_entry(uint64_t a1)
{
  v3 = *(a1 + 248);
  v2 = *v3;
  if (*v3)
  {
    *v3 = 0;
    if (*(v2 + 48))
    {
      sum_final(v3, *(v2 + 48));
    }
  }

  return 0;
}

void mtree_entry_register_free(uint64_t a1)
{
  for (i = *(a1 + 48); i; i = v1)
  {
    v1 = *(i + 24);
    mtree_entry_free(i);
  }
}

void attr_counter_set_free(uint64_t a1)
{
  v1 = (a1 + 184);
  attr_counter_free((a1 + 184));
  attr_counter_free(v1 + 1);
  attr_counter_free(v1 + 2);
  attr_counter_free(v1 + 3);
}

void mtree_entry_free(void **a1)
{
  archive_string_free((a1 + 7));
  archive_string_free((a1 + 10));
  archive_string_free((a1 + 13));
  archive_string_free((a1 + 16));
  archive_string_free((a1 + 19));
  archive_string_free((a1 + 22));
  archive_string_free((a1 + 25));
  free(a1[5]);
  free(a1[6]);
  free(a1);
}

void attr_counter_free(void **a1)
{
  if (*a1)
  {
    for (i = *a1; i; i = v1)
    {
      v1 = i[1];
      free(i);
    }

    *a1 = 0;
  }
}

uint64_t mtree_entry_new(_DWORD *a1, _DWORD **a2, uint64_t **a3)
{
  v25 = malloc_type_calloc(1uLL, 0x138uLL, 0x1030040643B09EFuLL);
  if (v25)
  {
    v20 = mtree_entry_setup_filenames(a1, v25, a2);
    if (v20 < -20)
    {
      mtree_entry_free(v25);
      *a3 = 0;
      return v20;
    }

    v8 = archive_entry_symlink(a2);
    v21 = v8;
    if (v8)
    {
      v25[17] = 0;
      v19 = strlen(v8);
      archive_strncat(v25 + 16, v21, v19);
    }

    *(v25 + 56) = archive_entry_nlink(a2);
    *(v25 + 114) = archive_entry_filetype(a2);
    *(v25 + 115) = archive_entry_mode(a2) & 0xFFF;
    v25[30] = archive_entry_uid(a2);
    v25[31] = archive_entry_gid(a2);
    v22 = archive_entry_uname(a2);
    if (v22)
    {
      v25[20] = 0;
      v18 = strlen(v22);
      archive_strncat(v25 + 19, v22, v18);
    }

    v23 = archive_entry_gname(a2);
    if (v23)
    {
      v25[23] = 0;
      v17 = strlen(v23);
      archive_strncat(v25 + 22, v23, v17);
    }

    v24 = archive_entry_fflags_text(a2);
    if (v24)
    {
      v25[26] = 0;
      v16 = strlen(v24);
      archive_strncat(v25 + 25, v24, v16);
    }

    archive_entry_fflags(a2, v25 + 34, v25 + 35);
    v25[32] = archive_entry_mtime(a2);
    v25[33] = archive_entry_mtime_nsec(a2);
    *(v25 + 72) = archive_entry_rdevmajor(a2);
    *(v25 + 73) = archive_entry_rdevminor(a2);
    *(v25 + 74) = archive_entry_devmajor(a2);
    *(v25 + 75) = archive_entry_devminor(a2);
    v25[38] = archive_entry_ino(a2);
    v25[29] = archive_entry_size(a2);
    if (*(v25 + 114) == 0x4000)
    {
      v25[5] = malloc_type_calloc(1uLL, 0x30uLL, 0x10E004059D07AFEuLL);
      if (!v25[5])
      {
LABEL_16:
        mtree_entry_free(v25);
        archive_set_error(a1, 12, "Can't allocate memory for a mtree entry", v9, v10, v11, v12, v13, v15);
        *a3 = 0;
        return -30;
      }

      __archive_rb_tree_init(v25[5], mtree_entry_new_rb_ops);
      *(v25[5] + 16) = 0;
      *(v25[5] + 24) = v25[5] + 16;
      *(v25[5] + 32) = 0;
    }

    else if (*(v25 + 114) == 0x8000)
    {
      v25[6] = malloc_type_calloc(1uLL, 0xD0uLL, 0x10000400F93440CuLL);
      if (!v25[6])
      {
        goto LABEL_16;
      }

      *v25[6] = 0;
    }

    *a3 = v25;
    return 0;
  }

  archive_set_error(a1, 12, "Can't allocate memory for a mtree entry", v3, v4, v5, v6, v7, v15);
  *a3 = 0;
  return -30;
}

uint64_t mtree_entry_tree_add(uint64_t a1, void ***a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = *MEMORY[0x1E69E9840];
  v29 = a1;
  v28 = a2;
  v27 = *(a1 + 248);
  v26 = 0;
  v25 = 0;
  node = 0;
  __s2 = 0;
  v22 = 0;
  path_component_1 = 0;
  v20 = 0;
  v25 = *a2;
  if (!v25[8] && v25[11] == 1 && *v25[10] == 46)
  {
    v25[4] = v25;
    if (!v27[1])
    {
      v27[1] = v25;
      mtree_entry_register_add(v27, v25);
      v30 = 0;
      goto LABEL_61;
    }

    node = v27[1];
  }

  else
  {
    if (!v25[8])
    {
      archive_set_error(v29, -1, "Internal programming error in generating canonical name for %s", a4, a5, a6, a7, a8, v25[13]);
      v30 = -25;
      goto LABEL_61;
    }

    v22 = v25[7];
    __s2 = v22;
    if (v27[4] == v25[8] && !strcmp(v27[3], __s2))
    {
      if (__archive_rb_tree_insert_node(*(v27[2] + 40), v25))
      {
        v25[4] = v27[2];
        mtree_entry_register_add(v27, v25);
        v30 = 0;
        goto LABEL_61;
      }

      node = __archive_rb_tree_find_node(*(v27[2] + 40), v25[10]);
    }

    else
    {
      v26 = v27[1];
      while (1)
      {
        path_component_1 = get_path_component_1(v31, 256, __s2);
        if (!path_component_1)
        {
          break;
        }

        if (path_component_1 < 0)
        {
          archive_set_error(v29, -1, "A name buffer is too small", a4, a5, a6, a7, a8, v14);
          v30 = -30;
          goto LABEL_61;
        }

        if (path_component_1 == 1 && v31[0] == 46 && v26 && v26 == v27[1])
        {
          __s2 += path_component_1;
          if (*__s2 == 47)
          {
            ++__s2;
          }
        }

        else
        {
          node = mtree_entry_find_child(v26, v31);
          if (!node || !*__s2)
          {
            goto LABEL_34;
          }

          if (!node[5])
          {
            v15 = v25[13];
            v30 = -25;
            goto LABEL_61;
          }

          __s2 += path_component_1;
          if (*__s2 == 47)
          {
            ++__s2;
          }

          v26 = node;
        }
      }

      node = 0;
LABEL_34:
      if (!node)
      {
        while (*__s2)
        {
          v19 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          archive_strncat(&v16, v22, __s2 - v22 + path_component_1);
          if (v16[v17 - 1] == 47)
          {
            v16[--v17] = 0;
          }

          v20 = mtree_entry_create_virtual_dir(v29, v16, &v19);
          archive_string_free(&v16);
          if (v20 < -20)
          {
            v30 = v20;
            goto LABEL_61;
          }

          if (!strcmp(v19[13], "."))
          {
            v19[4] = v19;
            v27[1] = v19;
          }

          else
          {
            __archive_rb_tree_insert_node(v26[5], v19);
            v19[4] = v26;
          }

          mtree_entry_register_add(v27, v19);
          node = v19;
          __s2 += path_component_1;
          if (*__s2 == 47)
          {
            ++__s2;
          }

          path_component_1 = get_path_component_1(v31, 256, __s2);
          if (path_component_1 < 0)
          {
            archive_string_free(&v16);
            archive_set_error(v29, -1, "A name buffer is too small", v8, v9, v10, v11, v12, v14);
            v30 = -30;
            goto LABEL_61;
          }

          v26 = node;
        }

        v27[2] = v26;
        v27[4] = 0;
        archive_string_ensure((v27 + 3), v26[8] + v26[11] + 2);
        if (v26[8] + v26[11])
        {
          if (v26[8])
          {
            v27[4] = 0;
            archive_string_concat(v27 + 3, v26 + 7);
            archive_strappend_char(v27 + 3, 47);
          }

          archive_string_concat(v27 + 3, v26 + 10);
        }

        else
        {
          *v27[3] = 0;
        }

        if (__archive_rb_tree_insert_node(v26[5], v25))
        {
          v25[4] = v26;
          mtree_entry_register_add(v27, v25);
          v30 = 0;
          goto LABEL_61;
        }

        node = __archive_rb_tree_find_node(v26[5], v25[10]);
      }
    }
  }

  v20 = mtree_entry_exchange_same_entry(v29, node, v25, a4, a5, a6, a7, a8);
  if (v20 >= -20)
  {
    if (node[5])
    {
      *(node[5] + 40) = 0;
    }

    *v28 = node;
    mtree_entry_free(v25);
    v30 = -20;
  }

  else
  {
    v30 = v20;
  }

LABEL_61:
  *MEMORY[0x1E69E9840];
  return v30;
}

uint64_t sum_init(uint64_t result)
{
  v1 = result;
  *(result + 224) = 0;
  if (*(result + 952))
  {
    *(result + 224) |= 1u;
    *(result + 228) = 0;
    *(result + 232) = 0;
  }

  if ((*(result + 952) & 0x100) != 0)
  {
    result = __archive_digest((result + 240));
    if (result)
    {
      *(v1 + 952) &= ~0x100u;
    }

    else
    {
      *(v1 + 224) |= 0x100u;
    }
  }

  if ((*(v1 + 952) & 0x4000) != 0)
  {
    result = off_1F3DE4E10((v1 + 332));
    if (result)
    {
      *(v1 + 952) &= ~0x4000u;
    }

    else
    {
      *(v1 + 224) |= 0x4000u;
    }
  }

  if ((*(v1 + 952) & 0x800000) != 0)
  {
    result = off_1F3DE4E28((v1 + 428));
    if (result)
    {
      *(v1 + 952) &= ~0x800000u;
    }

    else
    {
      *(v1 + 224) |= 0x800000u;
    }
  }

  if ((*(v1 + 952) & 0x1000000) != 0)
  {
    result = off_1F3DE4E40((v1 + 536));
    if (result)
    {
      *(v1 + 952) &= ~0x1000000u;
    }

    else
    {
      *(v1 + 224) |= 0x1000000u;
    }
  }

  if ((*(v1 + 952) & 0x2000000) != 0)
  {
    result = off_1F3DE4E58((v1 + 744));
    if (result)
    {
      *(v1 + 952) &= ~0x2000000u;
    }

    else
    {
      *(v1 + 224) |= 0x2000000u;
    }
  }

  return result;
}

uint64_t mtree_entry_setup_filenames(uint64_t a1, uint64_t *a2, _DWORD **a3)
{
  v23 = a1;
  v22 = a2;
  v21 = a3;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  a2[14] = 0;
  v11 = archive_entry_pathname(v21);
  if (archive_entry_pathname(v21))
  {
    v3 = archive_entry_pathname(v21);
    v10 = strlen(v3);
    archive_strncat(v22 + 13, v11, v10);
  }

  else
  {
    archive_strncat(v22 + 13, v11, 0);
  }

  v20 = v22[13];
  if (!strcmp(v20, "."))
  {
    v22[11] = 0;
    archive_strncat(v22 + 10, ".", 1uLL);
    return 0;
  }

  else
  {
    v22[8] = 0;
    v9 = v22 + 7;
    if (v20)
    {
      v8 = strlen(v20);
      archive_strncat(v9, v20, v8);
    }

    else
    {
      archive_strncat(v9, 0, 0);
    }

    v16 = v22[8];
    v18 = v22[7];
    v19 = v18;
    while (*v19)
    {
      if (*v19 == 47)
      {
        ++v19;
        --v16;
      }

      else
      {
        if (*v19 != 46 || v19[1] != 46 || v19[2] != 47)
        {
          break;
        }

        v19 += 3;
        v16 -= 3;
      }
    }

    if (v19 != v18)
    {
      __memmove_chk();
      v19 = v18;
    }

    do
    {
      if (!v16)
      {
        break;
      }

      v14 = v16;
      if (v19[v16 - 1] == 47)
      {
        v19[--v16] = 0;
      }

      if (v16 > 1 && v19[v16 - 2] == 47 && v19[v16 - 1] == 46)
      {
        v19[v16 - 2] = 0;
        v16 -= 2;
      }

      if (v16 > 2 && v19[v16 - 3] == 47 && v19[v16 - 2] == 46 && v19[v16 - 1] == 46)
      {
        v19[v16 - 3] = 0;
        v16 -= 3;
      }
    }

    while (v14 != v16);
    while (*v19)
    {
      if (*v19 == 47)
      {
        if (v19[1] == 47)
        {
          strlen(v19 + 1);
          __memmove_chk();
        }

        else if (v19[1] == 46 && v19[2] == 47)
        {
          strlen(v19 + 2);
          __memmove_chk();
        }

        else if (v19[1] == 46 && v19[2] == 46 && v19[3] == 47)
        {
            ;
          }

          __strcpy_chk();
          if (i > v18)
          {
            v19 = i;
          }

          else
          {
            v19 = v18;
          }
        }

        else
        {
          ++v19;
        }
      }

      else
      {
        ++v19;
      }
    }

    v19 = v18;
    v16 = strlen(v18);
    if (strcmp(v18, ".") && strncmp(v19, "./", 2uLL))
    {
      memset(v12, 0, sizeof(v12));
      archive_strncat(v12, "./", 2uLL);
      archive_strncat(v12, v19, v16);
      v22[8] = 0;
      archive_string_concat(v22 + 7, v12);
      archive_string_free(v12);
      v19 = v22[7];
      v16 = v22[8];
    }

    v17 = 0;
    while (*v19)
    {
      if (*v19 == 47)
      {
        v17 = v19;
      }

      ++v19;
    }

    if (v17)
    {
      *v17 = 0;
      v22[8] = &v17[-v22[7]];
      v22[11] = 0;
      v6 = v22 + 10;
      v7 = (v17 + 1);
      if (v17 == -1)
      {
        archive_strncat(v6, v7, 0);
      }

      else
      {
        v5 = strlen(v17 + 1);
        archive_strncat(v6, v7, v5);
      }

      return v15;
    }

    else
    {
      v22[8] = v16;
      v22[11] = 0;
      archive_string_concat(v22 + 10, v22 + 7);
      v22[8] = 0;
      *v22[7] = 0;
      return v15;
    }
  }
}

uint64_t mtree_entry_register_add(uint64_t result, uint64_t a2)
{
  *(a2 + 24) = 0;
  **(result + 56) = a2;
  *(result + 56) = a2 + 24;
  return result;
}

uint64_t get_path_component_1(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = strchr(a3, 47);
  if (v5)
  {
    v4 = v5 - a3;
  }

  else
  {
    v4 = strlen(a3);
    if (!v4)
    {
      return 0;
    }
  }

  if (v4 <= a2 - 1)
  {
    __memcpy_chk();
    *(a1 + v4) = 0;
    return v4;
  }

  else
  {
    return -1;
  }
}

uint64_t mtree_entry_find_child(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    return __archive_rb_tree_find_node(*(a1 + 40), a2);
  }

  else
  {
    return 0;
  }
}

uint64_t mtree_entry_create_virtual_dir(_DWORD *a1, const char *a2, void *a3)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v18 = 0;
  v19 = archive_entry_new();
  if (v19)
  {
    archive_entry_copy_pathname(v19, v21);
    archive_entry_set_mode(v19, 16877);
    v16 = v19;
    v8 = time(0);
    archive_entry_set_mtime(v19, v8, 0);
    v17 = mtree_entry_new(v22, v19, &v18);
    archive_entry_free(v19);
    if (v17 >= -20)
    {
      *(v18[5] + 40) = 1;
      *v20 = v18;
      return 0;
    }

    else
    {
      *v20 = 0;
      archive_set_error(v22, 12, "Can't allocate memory", v9, v10, v11, v12, v13, v16);
      return -30;
    }
  }

  else
  {
    *v20 = 0;
    archive_set_error(v22, 12, "Can't allocate memory", v3, v4, v5, v6, v7, v15);
    return -30;
  }
}

uint64_t mtree_entry_exchange_same_entry(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a2 + 230) & 0xF000) == (*(a3 + 230) & 0xF000))
  {
    *(a2 + 136) = 0;
    archive_string_concat((a2 + 128), (a3 + 128));
    *(a2 + 160) = 0;
    archive_string_concat((a2 + 152), (a3 + 152));
    *(a2 + 184) = 0;
    archive_string_concat((a2 + 176), (a3 + 176));
    *(a2 + 208) = 0;
    archive_string_concat((a2 + 200), (a3 + 200));
    *(a2 + 224) = *(a3 + 224);
    *(a2 + 228) = *(a3 + 228);
    *(a2 + 230) = *(a3 + 230);
    *(a2 + 232) = *(a3 + 232);
    *(a2 + 240) = *(a3 + 240);
    *(a2 + 248) = *(a3 + 248);
    *(a2 + 272) = *(a3 + 272);
    *(a2 + 280) = *(a3 + 280);
    *(a2 + 256) = *(a3 + 256);
    *(a2 + 264) = *(a3 + 264);
    *(a2 + 288) = *(a3 + 288);
    *(a2 + 292) = *(a3 + 292);
    *(a2 + 296) = *(a3 + 296);
    *(a2 + 300) = *(a3 + 300);
    *(a2 + 304) = *(a3 + 304);
    return -20;
  }

  else
  {
    return -25;
  }
}

uint64_t write_mtree_entry_tree(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *(a1 + 248);
  v17 = *(v18 + 8);
  do
  {
    if (*(v18 + 964))
    {
      attr_counter_set_free(v18);
      for (i = __archive_rb_tree_iterate(*(v17 + 40), 0, 0); i; i = __archive_rb_tree_iterate(*(v17 + 40), i, 1u))
      {
        if ((attr_counter_set_collect(v18, i) & 0x80000000) != 0)
        {
          archive_set_error(a1, 12, "Can't allocate memory", v8, v9, v10, v11, v12, v14);
          return -30;
        }
      }
    }

    if (*(*(v17 + 40) + 40) && !*(v18 + 216))
    {
      if (*(v18 + 964))
      {
        write_global(v18, a2, a3, a4, a5, a6, a7, a8);
      }
    }

    else if (write_mtree_entry(a1, v17, a3, a4, a5, a6, a7, a8))
    {
      return -30;
    }

    ++*(v18 + 220);
    for (j = __archive_rb_tree_iterate(*(v17 + 40), 0, 0); j; j = __archive_rb_tree_iterate(*(v17 + 40), j, 1u))
    {
      v14 = j;
      if (*(j + 40))
      {
        mtree_entry_add_child_tail(v17, j);
      }

      else if (write_mtree_entry(a1, j, a3, a4, a5, a6, a7, a8))
      {
        return -30;
      }
    }

    --*(v18 + 220);
    if (*(*(v17 + 40) + 16))
    {
      v17 = *(*(v17 + 40) + 16);
      if (*(v18 + 960))
      {
        ++*(v18 + 220);
      }
    }

    else
    {
      if (*(v18 + 216) && write_dot_dot_entry(a1, v17, a3, a4, a5, a6, a7, a8))
      {
        return -30;
      }

      while (v17 != *(v17 + 32))
      {
        if (*(*(v17 + 40) + 32))
        {
          v17 = *(*(v17 + 40) + 32);
          break;
        }

        if (*(v18 + 960))
        {
          --*(v18 + 220);
        }

        if (*(v18 + 216) && write_dot_dot_entry(a1, *(v17 + 32), a3, a4, a5, a6, a7, a8))
        {
          return -30;
        }

        v17 = *(v17 + 32);
      }
    }
  }

  while (v17 != *(v17 + 32));
  return 0;
}

uint64_t attr_counter_set_collect(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 184);
  v3 = *(a1 + 952);
  if ((v3 & 0x300000) == 0)
  {
    goto LABEL_12;
  }

  if (*v4)
  {
    v5 = 0;
    for (i = *v4; i && *(i[2] + 240) != *(a2 + 240); i = i[1])
    {
      v5 = i;
    }

    if ((attr_counter_inc(v4, i, v5, a2) & 0x80000000) != 0)
    {
      return -1;
    }

LABEL_12:
    if ((v3 & 0x30) != 0)
    {
      if (v4[1])
      {
        v6 = 0;
        for (j = v4[1]; j && *(j[2] + 248) != *(a2 + 248); j = j[1])
        {
          v6 = j;
        }

        if ((attr_counter_inc(v4 + 1, j, v6, a2) & 0x80000000) != 0)
        {
          return -1;
        }
      }

      else
      {
        v4[1] = attr_counter_new(a2, 0);
        if (!v4[1])
        {
          return -1;
        }
      }
    }

    if ((v3 & 0x200) != 0)
    {
      if (v4[2])
      {
        v7 = 0;
        for (k = v4[2]; k && *(k[2] + 230) != *(a2 + 230); k = k[1])
        {
          v7 = k;
        }

        if ((attr_counter_inc(v4 + 2, k, v7, a2) & 0x80000000) != 0)
        {
          return -1;
        }
      }

      else
      {
        v4[2] = attr_counter_new(a2, 0);
        if (!v4[2])
        {
          return -1;
        }
      }
    }

    if ((v3 & 8) != 0)
    {
      if (v4[3])
      {
        v8 = 0;
        for (m = v4[3]; m && (*(m[2] + 272) != *(a2 + 272) || *(m[2] + 280) != *(a2 + 280)); m = m[1])
        {
          v8 = m;
        }

        if ((attr_counter_inc(v4 + 3, m, v8, a2) & 0x80000000) != 0)
        {
          return -1;
        }
      }

      else
      {
        v4[3] = attr_counter_new(a2, 0);
        if (!v4[3])
        {
          return -1;
        }
      }
    }

    return 0;
  }

  *v4 = attr_counter_new(a2, 0);
  if (*v4)
  {
    goto LABEL_12;
  }

  return -1;
}

uint64_t write_mtree_entry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = *(a1 + 248);
  if (*(a2 + 40))
  {
    if (*(v24 + 216))
    {
      if (!*(v24 + 956))
      {
        archive_strappend_char((v24 + 88), 10);
      }

      if (*(a2 + 56))
      {
        v15 = *(a2 + 80);
        archive_string_sprintf((v24 + 88), "# %s/%s\n", a3, a4, a5, a6, a7, a8, *(a2 + 56));
      }

      else
      {
        archive_string_sprintf((v24 + 88), "# %s\n", a3, a4, a5, a6, a7, a8, *(a2 + 80));
      }
    }

    if (*(v24 + 964))
    {
      write_global(v24, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  *(v24 + 72) = 0;
  if (*(v24 + 960) || *(v24 + 216))
  {
    v21 = (v24 + 64);
  }

  else
  {
    v21 = (v24 + 88);
  }

  if (!*(v24 + 216) && *(a2 + 56))
  {
    mtree_quote(v21, *(a2 + 56));
    archive_strappend_char(v21, 47);
  }

  mtree_quote(v21, *(a2 + 80));
  global_set_keys = get_global_set_keys(v24, a2);
  if ((global_set_keys & 0x400) != 0 && *(a2 + 224) != 1 && *(a2 + 228) != 0x4000)
  {
    archive_string_sprintf(v21, " nlink=%u", v8, v9, v10, v11, v12, v13, *(a2 + 224));
  }

  if ((global_set_keys & 0x20) != 0 && *(a2 + 184))
  {
    archive_strcat(v21, " gname=");
    mtree_quote(v21, *(a2 + 176));
  }

  if ((global_set_keys & 0x200000) != 0 && *(a2 + 160))
  {
    archive_strcat(v21, " uname=");
    mtree_quote(v21, *(a2 + 152));
  }

  if ((global_set_keys & 8) != 0)
  {
    if (*(a2 + 208))
    {
      archive_strcat(v21, " flags=");
      mtree_quote(v21, *(a2 + 200));
    }

    else if (*(v24 + 128) && (*(v24 + 136) & 8) != 0)
    {
      archive_strcat(v21, " flags=none");
    }
  }

  if ((global_set_keys & 0x40000) != 0)
  {
    v16 = *(a2 + 264);
    archive_string_sprintf(v21, " time=%jd.%jd", v8, v9, v10, v11, v12, v13, *(a2 + 256));
  }

  if ((global_set_keys & 0x200) != 0)
  {
    archive_string_sprintf(v21, " mode=%o", v8, v9, v10, v11, v12, v13, *(a2 + 230));
  }

  if ((global_set_keys & 0x10) != 0)
  {
    archive_string_sprintf(v21, " gid=%jd", v8, v9, v10, v11, v12, v13, *(a2 + 248));
  }

  if ((global_set_keys & 0x100000) != 0)
  {
    archive_string_sprintf(v21, " uid=%jd", v8, v9, v10, v11, v12, v13, *(a2 + 240));
  }

  if ((global_set_keys & 0x4000000) != 0)
  {
    archive_string_sprintf(v21, " inode=%jd", v8, v9, v10, v11, v12, v13, *(a2 + 304));
  }

  if ((global_set_keys & 0x8000000) != 0)
  {
    v17 = *(a2 + 300);
    archive_string_sprintf(v21, " resdevice=native,%ju,%ju", v8, v9, v10, v11, v12, v13, *(a2 + 296));
  }

  v20 = *(a2 + 228);
  switch(v20)
  {
    case 4096:
      if ((global_set_keys & 0x80000) != 0)
      {
        archive_strcat(v21, " type=fifo");
      }

      break;
    case 8192:
      if ((global_set_keys & 0x80000) != 0)
      {
        archive_strcat(v21, " type=char");
      }

      if ((global_set_keys & 2) != 0)
      {
        v18 = *(a2 + 292);
        archive_string_sprintf(v21, " device=native,%ju,%ju", v8, v9, v10, v11, v12, v13, *(a2 + 288));
      }

      break;
    case 16384:
      if ((global_set_keys & 0x80000) != 0)
      {
        archive_strcat(v21, " type=dir");
      }

      break;
    case 24576:
      if ((global_set_keys & 0x80000) != 0)
      {
        archive_strcat(v21, " type=block");
      }

      if ((global_set_keys & 2) != 0)
      {
        v19 = *(a2 + 292);
        archive_string_sprintf(v21, " device=native,%ju,%ju", v8, v9, v10, v11, v12, v13, *(a2 + 288));
      }

      break;
    case 32768:
LABEL_77:
      if ((global_set_keys & 0x80000) != 0)
      {
        archive_strcat(v21, " type=file");
      }

      if ((global_set_keys & 0x8000) != 0)
      {
        archive_string_sprintf(v21, " size=%jd", v8, v9, v10, v11, v12, v13, *(a2 + 232));
      }

      break;
    case 40960:
      if ((global_set_keys & 0x80000) != 0)
      {
        archive_strcat(v21, " type=link");
      }

      if ((global_set_keys & 0x10000) != 0)
      {
        archive_strcat(v21, " link=");
        mtree_quote(v21, *(a2 + 128));
      }

      break;
    case 49152:
      if ((global_set_keys & 0x80000) != 0)
      {
        archive_strcat(v21, " type=socket");
      }

      break;
    default:
      goto LABEL_77;
  }

  if (*(a2 + 48))
  {
    sum_write(v21, *(a2 + 48), v8, v9, v10, v11, v12, v13);
  }

  archive_strappend_char(v21, 10);
  if (*(v24 + 960) || *(v24 + 216))
  {
    mtree_indent(v24);
  }

  if (*(v24 + 96) > 0x8000uLL)
  {
    v22 = __archive_write_output(a1, *(v24 + 88), *(v24 + 96));
    *(v24 + 96) = 0;
  }

  else
  {
    return 0;
  }

  return v22;
}

void write_global(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a1;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v16 = *(a1 + 952) & 0x380238;
  v15 = *(a1 + 136);
  v14 = v16;
  v17 = (a1 + 184);
  if (*(a1 + 128))
  {
    v14 = *(a1 + 952) & 0x300238;
    if (*v17)
    {
      if ((v15 & 0x300000) != 0 && (*(*v17 + 24) < 2 || *(v24 + 144) == *(*(*v17 + 16) + 240)))
      {
        v14 = *(a1 + 952) & 0x238;
      }
    }

    else
    {
      v14 = *(a1 + 952) & 0x238;
    }

    if (*(a1 + 192))
    {
      if ((v15 & 0x30) != 0 && (*(*(a1 + 192) + 24) < 2 || *(v24 + 152) == *(*(*(a1 + 192) + 16) + 248)))
      {
        v14 &= 0xFFFFFFCF;
      }
    }

    else
    {
      v14 &= 0xFFFFFFCF;
    }

    if (*(a1 + 200))
    {
      if ((v15 & 0x200) != 0 && (*(*(a1 + 200) + 24) < 2 || *(v24 + 160) == *(*(*(a1 + 200) + 16) + 230)))
      {
        v14 &= ~0x200u;
      }
    }

    else
    {
      v14 &= ~0x200u;
    }

    if (*(a1 + 208))
    {
      if ((v15 & 8) != 0 && (*(*(a1 + 208) + 24) < 2 || *(*(*(a1 + 208) + 16) + 272) == *(v24 + 168) && *(*(*(a1 + 208) + 16) + 280) == *(v24 + 176)))
      {
        v14 &= ~8u;
      }
    }

    else
    {
      v14 &= ~8u;
    }
  }

  else
  {
    if (!*v17)
    {
      v16 = *(a1 + 952) & 0x80238;
    }

    if (!*(a1 + 192))
    {
      v16 &= 0xFFFFFFCF;
    }

    if (!*(a1 + 200))
    {
      v16 &= ~0x200u;
    }

    if (!*(a1 + 208))
    {
      v16 &= ~8u;
    }
  }

  if ((v16 & v14 & 0x80000) != 0)
  {
    if (*(v24 + 956))
    {
      archive_strcat(&v21, " type=dir");
      *(v24 + 132) = 0x4000;
    }

    else
    {
      archive_strcat(&v21, " type=file");
      *(v24 + 132) = 0x8000;
    }
  }

  if ((v16 & v14 & 0x200000) != 0)
  {
    if (*(*(*v17 + 16) + 160))
    {
      archive_strcat(&v21, " uname=");
      mtree_quote(&v21, *(*(*v17 + 16) + 152));
    }

    else
    {
      v16 &= ~0x200000u;
      if ((v15 & 0x200000) != 0)
      {
        archive_strcat(&v18, " uname");
      }
    }
  }

  if ((v16 & v14 & 0x100000) != 0)
  {
    *(v24 + 144) = *(*(*v17 + 16) + 240);
    archive_string_sprintf(&v21, " uid=%jd", a3, a4, a5, a6, a7, a8, *(v24 + 144));
  }

  if ((v16 & v14 & 0x20) != 0)
  {
    if (*(*(v17[1] + 16) + 184))
    {
      archive_strcat(&v21, " gname=");
      mtree_quote(&v21, *(*(v17[1] + 16) + 176));
    }

    else
    {
      v16 &= ~0x20u;
      if ((v15 & 0x20) != 0)
      {
        archive_strcat(&v18, " gname");
      }
    }
  }

  if ((v16 & v14 & 0x10) != 0)
  {
    *(v24 + 152) = *(*(v17[1] + 16) + 248);
    archive_string_sprintf(&v21, " gid=%jd", a3, a4, a5, a6, a7, a8, *(v24 + 152));
  }

  if ((v16 & v14 & 0x200) != 0)
  {
    *(v24 + 160) = *(*(v17[2] + 16) + 230);
    archive_string_sprintf(&v21, " mode=%o", a3, a4, a5, a6, a7, a8, *(v24 + 160));
  }

  if ((v16 & v14 & 8) != 0)
  {
    if (*(*(v17[3] + 16) + 208))
    {
      archive_strcat(&v21, " flags=");
      mtree_quote(&v21, *(*(v17[3] + 16) + 200));
      *(v24 + 168) = *(*(v17[3] + 16) + 272);
      *(v24 + 176) = *(*(v17[3] + 16) + 280);
    }

    else
    {
      v16 &= ~8u;
      if ((v15 & 8) != 0)
      {
        archive_strcat(&v18, " flags");
      }
    }
  }

  if (v19)
  {
    archive_string_sprintf((v24 + 88), "/unset%s\n", a3, a4, a5, a6, a7, a8, v18);
  }

  archive_string_free(&v18);
  if (v22)
  {
    archive_string_sprintf((v24 + 88), "/set%s\n", v8, v9, v10, v11, v12, v13, v21);
  }

  archive_string_free(&v21);
  *(v24 + 136) = v16;
  *(v24 + 128) = 1;
}

uint64_t mtree_entry_add_child_tail(uint64_t a1, uint64_t a2)
{
  *(*(a2 + 40) + 32) = 0;
  **(*(a1 + 40) + 24) = a2;
  *(*(a1 + 40) + 24) = *(a2 + 40) + 32;
  return 1;
}

uint64_t write_dot_dot_entry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a1 + 248);
  if (*(a2 + 56))
  {
    if (*(v15 + 960))
    {
      v12 = 4 * *(v15 + 220);
      for (i = 0; i < v12; ++i)
      {
        archive_strappend_char((v15 + 88), 32);
      }
    }

    v11 = *(a2 + 80);
    archive_string_sprintf((v15 + 88), "# %s/%s\n", a3, a4, a5, a6, a7, a8, *(a2 + 56));
  }

  if (*(v15 + 960))
  {
    *(v15 + 72) = 0;
    if (*(v15 + 956))
    {
      v8 = 3;
    }

    else
    {
      v8 = 4;
    }

    archive_strncat((v15 + 64), "..\n\n", v8);
    mtree_indent(v15);
  }

  else
  {
    if (*(v15 + 956))
    {
      v9 = 3;
    }

    else
    {
      v9 = 4;
    }

    archive_strncat((v15 + 88), "..\n\n", v9);
  }

  if (*(v15 + 96) > 0x8000uLL)
  {
    v14 = __archive_write_output(a1, *(v15 + 88), *(v15 + 96));
    *(v15 + 96) = 0;
  }

  else
  {
    return 0;
  }

  return v14;
}

void *attr_counter_new(uint64_t a1, uint64_t a2)
{
  v3 = malloc_type_malloc(0x20uLL, 0x102004055CCDE27uLL);
  if (v3)
  {
    *v3 = a2;
    v3[1] = 0;
    *(v3 + 6) = 1;
    v3[2] = a1;
  }

  return v3;
}

uint64_t attr_counter_inc(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    if (a3)
    {
      v7 = attr_counter_new(a4, a3);
      if (!v7)
      {
        return -1;
      }

      *(a3 + 8) = v7;
    }

    return 0;
  }

  ++*(a2 + 6);
  if (*a1 != a2 && *(*a2 + 24) < *(a2 + 6))
  {
      ;
    }

    *(*a2 + 8) = a2[1];
    if (a2[1])
    {
      *a2[1] = *a2;
    }

    if (i)
    {
      *a2 = i;
      a2[1] = i[1];
      i[1] = a2;
      if (a2[1])
      {
        *a2[1] = a2;
      }
    }

    else
    {
      *a2 = 0;
      a2[1] = *a1;
      *a1 = a2;
      *a2[1] = a2;
    }

    return 0;
  }

  return 0;
}

uint64_t *mtree_quote(uint64_t *result, uint64_t a2)
{
  v6 = result;
  v5 = a2;
  v4 = a2;
  while (*v5)
  {
    if (!safe_char[*v5])
    {
      if (v4 != v5)
      {
        archive_strncat(v6, v4, v5 - v4);
      }

      v2 = *v5;
      v3[0] = 92;
      v3[1] = v2 / 64 + 48;
      v3[2] = v2 / 8 % 8 + 48;
      v3[3] = v2 % 8 + 48;
      result = archive_strncat(v6, v3, 4uLL);
      v4 = v5 + 1;
    }

    ++v5;
  }

  if (v4 != v5)
  {
    return archive_strncat(v6, v4, v5 - v4);
  }

  return result;
}

uint64_t get_global_set_keys(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 952);
  if (*(a1 + 136))
  {
    if ((*(a1 + 136) & 0x30) != 0 && *(a1 + 152) == *(a2 + 248))
    {
      v4 &= 0xFFFFFFCF;
    }

    if ((*(a1 + 136) & 0x300000) != 0 && *(a1 + 144) == *(a2 + 240))
    {
      v4 &= 0xFFCFFFFF;
    }

    if ((*(a1 + 136) & 8) != 0 && *(a1 + 168) == *(a2 + 272) && *(a1 + 176) == *(a2 + 280))
    {
      v4 &= ~8u;
    }

    if ((*(a1 + 136) & 0x200) != 0 && *(a1 + 160) == *(a2 + 230))
    {
      v4 &= ~0x200u;
    }

    v3 = *(a2 + 228);
    if (v3 != 4096 && v3 != 0x2000)
    {
      if (v3 == 0x4000)
      {
        if ((*(a1 + 136) & 0x80000) != 0 && *(a1 + 132) == 0x4000)
        {
          v4 &= ~0x80000u;
        }
      }

      else if (v3 != 24576 && (v3 == 0x8000 || v3 != 40960 && v3 != 49152) && (*(a1 + 136) & 0x80000) != 0 && *(a1 + 132) == 0x8000)
      {
        v4 &= ~0x80000u;
      }
    }

    return v4;
  }

  else
  {
    return *(a1 + 952);
  }
}

uint64_t *sum_write(uint64_t *result, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*a2)
  {
    result = archive_string_sprintf(result, " cksum=%ju", a3, a4, a5, a6, a7, a8, a2[1]);
  }

  if ((*a2 & 0x100) != 0)
  {
    archive_strcat(v9, " md5digest=");
    result = strappend_bin(v9, (a2 + 2), 16);
  }

  if ((*a2 & 0x4000) != 0)
  {
    archive_strcat(v9, " sha1digest=");
    result = strappend_bin(v9, (a2 + 11), 20);
  }

  if ((*a2 & 0x800000) != 0)
  {
    archive_strcat(v9, " sha256digest=");
    result = strappend_bin(v9, (a2 + 16), 32);
  }

  if ((*a2 & 0x1000000) != 0)
  {
    archive_strcat(v9, " sha384digest=");
    result = strappend_bin(v9, (a2 + 24), 48);
  }

  if ((*a2 & 0x2000000) != 0)
  {
    archive_strcat(v9, " sha512digest=");
    return strappend_bin(v9, (a2 + 36), 64);
  }

  return result;
}

uint64_t *mtree_indent(uint64_t a1)
{
  if (*(a1 + 216))
  {
    if (*(a1 + 960))
    {
      v9 = 0;
      v8 = 4 * *(a1 + 220);
    }

    else
    {
      if (*(a1 + 220))
      {
        v1 = 4;
      }

      else
      {
        v1 = 0;
      }

      v9 = v1;
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = 1;
  __s = *(a1 + 64);
  v5 = __s;
  v4 = 0;
  while (*__s == 32)
  {
    ++__s;
  }

  while (1)
  {
    __sa = strchr(__s, 32);
    if (!__sa)
    {
      break;
    }

    if (v10)
    {
      v10 = 0;
      for (i = 0; i < v9 + v8; ++i)
      {
        archive_strappend_char((a1 + 88), 32);
      }

      archive_strncat((a1 + 88), v5, __sa - v5);
      if (v9 + __sa - v5 <= 15)
      {
        for (j = __sa - v5 + v9; j < 16; ++j)
        {
          archive_strappend_char((a1 + 88), 32);
        }
      }

      else
      {
        archive_strncat((a1 + 88), " \\\n", 3uLL);
        for (k = 0; k < v8 + 16; ++k)
        {
          archive_strappend_char((a1 + 88), 32);
        }
      }

      __s = __sa + 1;
      v5 = __s;
      v4 = 0;
    }

    else if (v8 + __sa - v5 > 62)
    {
      if (!v4)
      {
        v4 = __sa;
      }

      archive_strncat((a1 + 88), v5, v4 - v5);
      archive_strncat((a1 + 88), " \\\n", 3uLL);
      for (m = 0; m < v8 + 16; ++m)
      {
        archive_strappend_char((a1 + 88), 32);
      }

      __s = v4 + 1;
      v5 = v4 + 1;
      v4 = 0;
    }

    else
    {
      v2 = __sa;
      __s = __sa + 1;
      v4 = v2;
    }
  }

  if (v10)
  {
    for (n = 0; n < v9 + v8; ++n)
    {
      archive_strappend_char((a1 + 88), 32);
    }

    archive_strcat((a1 + 88), v5);
    v5 += strlen(v5);
  }

  if (v4 && v8 + strlen(v5) > 0x3E)
  {
    archive_strncat((a1 + 88), v5, v4 - v5);
    archive_strncat((a1 + 88), " \\\n", 3uLL);
    for (ii = 0; ii < v8 + 16; ++ii)
    {
      archive_strappend_char((a1 + 88), 32);
    }

    v5 = v4 + 1;
  }

  result = archive_strcat((a1 + 88), v5);
  *(a1 + 72) = 0;
  return result;
}

uint64_t *strappend_bin(uint64_t *result, uint64_t a2, int a3)
{
  v6 = result;
  for (i = 0; i < a3; ++i)
  {
    archive_strappend_char(v6, strappend_bin_hex[*(a2 + i) >> 4]);
    result = archive_strappend_char(v6, strappend_bin_hex[*(a2 + i) & 0xF]);
  }

  return result;
}

uint64_t sum_update(uint64_t result, unsigned __int8 *a2, uint64_t a3)
{
  v8 = result;
  v6 = a3;
  if (*(result + 224))
  {
    v4 = a3;
    for (i = a2; v4--; ++i)
    {
      *(result + 228) = crctab[*i ^ HIBYTE(*(result + 228))] ^ (*(result + 228) << 8);
    }

    *(result + 232) += a3;
  }

  if ((*(result + 224) & 0x100) != 0)
  {
    result = off_1F3DE4DE8((result + 240), a2, a3);
  }

  if ((*(v8 + 224) & 0x4000) != 0)
  {
    result = off_1F3DE4E18((v8 + 332), a2, v6);
  }

  if ((*(v8 + 224) & 0x800000) != 0)
  {
    result = off_1F3DE4E30((v8 + 428), a2, v6);
  }

  if ((*(v8 + 224) & 0x1000000) != 0)
  {
    result = off_1F3DE4E48((v8 + 536), a2, v6);
  }

  if ((*(v8 + 224) & 0x2000000) != 0)
  {
    return off_1F3DE4E60((v8 + 744), a2, v6);
  }

  return result;
}

uint64_t sum_final(uint64_t result, uint64_t a2)
{
  v4 = result;
  if (*(result + 224))
  {
    for (i = *(result + 232); i; i >>= 8)
    {
      *(result + 228) = crctab[HIBYTE(*(result + 228)) ^ i] ^ (*(result + 228) << 8);
    }

    *(a2 + 4) = ~*(result + 228);
  }

  if ((*(result + 224) & 0x100) != 0)
  {
    result = off_1F3DE4DF0((result + 240), (a2 + 8));
  }

  if ((*(v4 + 224) & 0x4000) != 0)
  {
    result = off_1F3DE4E20((v4 + 332), (a2 + 44));
  }

  if ((*(v4 + 224) & 0x800000) != 0)
  {
    result = off_1F3DE4E38((v4 + 428), (a2 + 64));
  }

  if ((*(v4 + 224) & 0x1000000) != 0)
  {
    result = off_1F3DE4E50((v4 + 536), (a2 + 96));
  }

  if ((*(v4 + 224) & 0x2000000) != 0)
  {
    result = off_1F3DE4E68((v4 + 744), (a2 + 144));
  }

  *a2 = *(v4 + 224);
  return result;
}

uint64_t archive_read_support_filter_all(int *a1)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_support_filter_all") == -30)
  {
    return -30;
  }

  else
  {
    archive_read_support_filter_bzip2(a1);
    archive_read_support_filter_compress(a1);
    archive_read_support_filter_gzip(a1);
    archive_read_support_filter_lzip(a1);
    archive_read_support_filter_lzma(a1);
    archive_read_support_filter_xz(a1);
    archive_read_support_filter_uu(a1);
    archive_read_support_filter_rpm(a1);
    archive_read_support_filter_lrzip(a1);
    archive_read_support_filter_lzop(a1);
    archive_read_support_filter_grzip(a1);
    archive_read_support_filter_lz4(a1);
    archive_read_support_filter_zstd(a1);
    archive_clear_error(a1);
    return 0;
  }
}

BOOL __archive_pathmatch(_BYTE *a1, char *a2, unsigned int a3)
{
  v7 = a1;
  __s = a2;
  v5 = a3;
  if (!a1 || !*a1)
  {
    v4 = 1;
    if (a2)
    {
      return *a2 == 0;
    }

    return v4;
  }

  if (!a2)
  {
    return 0;
  }

  if (*a1 == 94)
  {
    v7 = a1 + 1;
    v5 = a3 & 0xFFFFFFFE;
  }

  if (*v7 == 47 && *a2 != 47)
  {
    return 0;
  }

  if (*v7 == 42 || *v7 == 47)
  {
    while (*v7 == 47)
    {
      ++v7;
    }

    while (*__s == 47)
    {
      ++__s;
    }

    return pm(v7, __s, v5);
  }

  if ((v5 & 1) == 0)
  {
    return pm(v7, __s, v5);
  }

  while (__s)
  {
    if (*__s == 47)
    {
      ++__s;
    }

    if (pm(v7, __s, v5))
    {
      return 1;
    }

    __s = strchr(__s, 47);
  }

  return 0;
}

BOOL pm(_BYTE *a1, char *a2, unsigned int a3)
{
  v8 = a2;
  if (*a2 == 46 && a2[1] == 47)
  {
    v8 = pm_slashskip(a2 + 1);
  }

  if (*a1 == 46 && a1[1] == 47)
  {
    a1 = pm_slashskip(a1 + 1);
  }

  while (1)
  {
    v5 = *a1;
    if (!*a1)
    {
      break;
    }

    switch(v5)
    {
      case '$':
        if (!a1[1] && (a3 & 2) != 0)
        {
          return *pm_slashskip(v8) == 0;
        }

        break;
      case '*':
        while (*a1 == 42)
        {
          ++a1;
        }

        if (*a1)
        {
          while (*v8)
          {
            if (__archive_pathmatch(a1, v8, a3))
            {
              return 1;
            }

            ++v8;
          }

          return 0;
        }

        else
        {
          return 1;
        }

      case '/':
        if (*v8 != 47 && *v8)
        {
          return 0;
        }

        v11 = pm_slashskip(a1);
        v9 = pm_slashskip(v8);
        if (!*v11 && (a3 & 2) != 0)
        {
          return 1;
        }

        a1 = v11 - 1;
        v8 = v9 - 1;
        goto LABEL_66;
      case '?':
        if (!*v8)
        {
          return 0;
        }

        goto LABEL_66;
      case '[':
        for (i = a1 + 1; ; ++i)
        {
          v4 = 0;
          if (*i)
          {
            v4 = *i != 93;
          }

          if (!v4)
          {
            break;
          }

          if (*i == 92 && i[1])
          {
            ++i;
          }
        }

        if (*i == 93)
        {
          if (!pm_list(a1 + 1, i, *v8))
          {
            return 0;
          }

          a1 = i;
        }

        else if (*a1 != *v8)
        {
          return 0;
        }

        goto LABEL_66;
      case '\\':
        if (a1[1])
        {
          if (*++a1 != *v8)
          {
            return 0;
          }
        }

        else if (*v8 != 92)
        {
          return 0;
        }

        goto LABEL_66;
    }

    if (*a1 != *v8)
    {
      return 0;
    }

LABEL_66:
    ++a1;
    ++v8;
  }

  if (*v8 == 47)
  {
    if ((a3 & 2) != 0)
    {
      return 1;
    }

    v8 = pm_slashskip(v8);
  }

  return *v8 == 0;
}

BOOL __archive_pathmatch_w(int *a1, __int32 *a2, unsigned int a3)
{
  v7 = a1;
  __s = a2;
  v5 = a3;
  if (!a1 || !*a1)
  {
    v4 = 1;
    if (a2)
    {
      return *a2 == 0;
    }

    return v4;
  }

  if (!a2)
  {
    return 0;
  }

  if (*a1 == 94)
  {
    v7 = a1 + 1;
    v5 = a3 & 0xFFFFFFFE;
  }

  if (*v7 == 47 && *a2 != 47)
  {
    return 0;
  }

  if (*v7 == 42 || *v7 == 47)
  {
    while (*v7 == 47)
    {
      ++v7;
    }

    while (*__s == 47)
    {
      ++__s;
    }

    return pm_w(v7, __s, v5);
  }

  if ((v5 & 1) == 0)
  {
    return pm_w(v7, __s, v5);
  }

  while (__s)
  {
    if (*__s == 47)
    {
      ++__s;
    }

    if (pm_w(v7, __s, v5))
    {
      return 1;
    }

    __s = wcschr(__s, 47);
  }

  return 0;
}

BOOL pm_w(int *a1, int *a2, unsigned int a3)
{
  v8 = a2;
  if (*a2 == 46 && a2[1] == 47)
  {
    v8 = pm_slashskip_w(a2 + 1);
  }

  if (*a1 == 46 && a1[1] == 47)
  {
    a1 = pm_slashskip_w(a1 + 1);
  }

  while (1)
  {
    v5 = *a1;
    if (!*a1)
    {
      break;
    }

    switch(v5)
    {
      case '$':
        if (!a1[1] && (a3 & 2) != 0)
        {
          return *pm_slashskip_w(v8) == 0;
        }

        break;
      case '*':
        while (*a1 == 42)
        {
          ++a1;
        }

        if (*a1)
        {
          while (*v8)
          {
            if (__archive_pathmatch_w(a1, v8, a3))
            {
              return 1;
            }

            ++v8;
          }

          return 0;
        }

        else
        {
          return 1;
        }

      case '/':
        if (*v8 != 47 && *v8)
        {
          return 0;
        }

        v11 = pm_slashskip_w(a1);
        v9 = pm_slashskip_w(v8);
        if (!*v11 && (a3 & 2) != 0)
        {
          return 1;
        }

        a1 = v11 - 1;
        v8 = v9 - 1;
        goto LABEL_66;
      case '?':
        if (!*v8)
        {
          return 0;
        }

        goto LABEL_66;
      case '[':
        for (i = a1 + 1; ; ++i)
        {
          v4 = 0;
          if (*i)
          {
            v4 = *i != 93;
          }

          if (!v4)
          {
            break;
          }

          if (*i == 92 && i[1])
          {
            ++i;
          }
        }

        if (*i == 93)
        {
          if (!pm_list_w(a1 + 1, i, *v8))
          {
            return 0;
          }

          a1 = i;
        }

        else if (*a1 != *v8)
        {
          return 0;
        }

        goto LABEL_66;
      case '\\':
        if (a1[1])
        {
          if (*++a1 != *v8)
          {
            return 0;
          }
        }

        else if (*v8 != 92)
        {
          return 0;
        }

        goto LABEL_66;
    }

    if (*a1 != *v8)
    {
      return 0;
    }

LABEL_66:
    ++a1;
    ++v8;
  }

  if (*v8 == 47)
  {
    if ((a3 & 2) != 0)
    {
      return 1;
    }

    v8 = pm_slashskip_w(v8);
  }

  return *v8 == 0;
}

_BYTE *pm_slashskip(_BYTE *a1)
{
  while (1)
  {
    v3 = 1;
    if (*a1 != 47)
    {
      if (*a1 != 46 || (v3 = 1, a1[1] != 47))
      {
        v2 = 0;
        if (*a1 == 46)
        {
          v2 = a1[1] == 0;
        }

        v3 = v2;
      }
    }

    if ((v3 & 1) == 0)
    {
      break;
    }

    ++a1;
  }

  return a1;
}

uint64_t pm_list(char *a1, unint64_t a2, char a3)
{
  v10 = a1;
  v9 = 0;
  v7 = 1;
  v6 = 0;
  if ((*a1 == 33 || *a1 == 94) && a1 < a2)
  {
    v7 = 0;
    v6 = 1;
    v10 = a1 + 1;
  }

  while (v10 < a2)
  {
    v8 = 0;
    v4 = *v10;
    if (v4 == 45)
    {
      if (v9 && v10 != (a2 - 1))
      {
        v5 = *++v10;
        if (*v10 == 92)
        {
          v5 = *++v10;
        }

        if (v9 <= a3 && a3 <= v5)
        {
          return v7;
        }
      }

      else if (*v10 == a3)
      {
        return v7;
      }
    }

    else
    {
      if (v4 == 92)
      {
        ++v10;
      }

      if (*v10 == a3)
      {
        return v7;
      }

      v8 = *v10;
    }

    v9 = v8;
    ++v10;
  }

  return v6;
}

_DWORD *pm_slashskip_w(_DWORD *a1)
{
  while (1)
  {
    v3 = 1;
    if (*a1 != 47)
    {
      if (*a1 != 46 || (v3 = 1, a1[1] != 47))
      {
        v2 = 0;
        if (*a1 == 46)
        {
          v2 = a1[1] == 0;
        }

        v3 = v2;
      }
    }

    if ((v3 & 1) == 0)
    {
      break;
    }

    ++a1;
  }

  return a1;
}

uint64_t pm_list_w(int *a1, unint64_t a2, int a3)
{
  v9 = a1;
  v8 = 0;
  v6 = 1;
  v5 = 0;
  if ((*a1 == 33 || *a1 == 94) && a1 < a2)
  {
    v6 = 0;
    v5 = 1;
    v9 = a1 + 1;
  }

  while (v9 < a2)
  {
    v7 = 0;
    if (*v9 == 45)
    {
      if (v8 && v9 != (a2 - 4))
      {
        v4 = *++v9;
        if (*v9 == 92)
        {
          v4 = *++v9;
        }

        if (v8 <= a3 && a3 <= v4)
        {
          return v6;
        }
      }

      else if (*v9 == a3)
      {
        return v6;
      }
    }

    else
    {
      if (*v9 == 92)
      {
        ++v9;
      }

      if (*v9 == a3)
      {
        return v6;
      }

      v7 = *v9;
    }

    v8 = v7;
    ++v9;
  }

  return v5;
}

uint64_t archive_read_set_format(uint64_t a1, int a2)
{
  v29 = *MEMORY[0x1E69E9840];
  support_format_by_code = archive_read_support_format_by_code(a1, a2);
  if ((support_format_by_code & 0x80000000) != 0)
  {
    v27 = support_format_by_code;
  }

  else
  {
    v23 = 0;
    v25 = 0;
    if (*(a1 + 2072))
    {
      v23 = -20;
    }

    v20 = a2 & 0xFF0000;
    if ((a2 & 0xFF0000) == 0x10000 || v20 == 196608 || v20 == 0x40000 || v20 == 327680 || v20 == 393216 || v20 == 458752 || v20 == 0x80000 || v20 == 589824 || v20 == 655360 || v20 == 720896 || v20 == 786432 || v20 == 851968 || v20 == 917504 || v20 == 983040 || v20 == 0x100000)
    {
      __strcpy_chk();
      *(a1 + 2072) = a1 + 664;
      for (i = 0; i < 16 && *(*(a1 + 2072) + 8) && strcmp(*(*(a1 + 2072) + 8), __s2); ++i)
      {
        *(a1 + 2072) += 88;
      }

      if (!*(*(a1 + 2072) + 8) || strcmp(*(*(a1 + 2072) + 8), __s2))
      {
        archive_set_error(a1, 22, "Internal error: Unable to set format", v7, v8, v9, v10, v11, v18);
        v25 = -30;
      }

      if (!archive_allow_entitlement_format(*(*(a1 + 2072) + 8)))
      {
        archive_set_error(a1, -1, "Format not allow-listed in entitlements", v12, v13, v14, v15, v16, v18);
        v25 = -30;
      }

      if (v25 >= v23)
      {
        v19 = v23;
      }

      else
      {
        v19 = v25;
      }

      v27 = v19;
    }

    else
    {
      archive_set_error(a1, 22, "Invalid format code specified", v2, v3, v4, v5, v6, v18);
      v27 = -30;
    }
  }

  *MEMORY[0x1E69E9840];
  return v27;
}

uint64_t archive_read_disk_entry_setup_acls(unint64_t a1, _DWORD **a2, int *a3)
{
  path_p = 0;
  if ((*a3 & 0x80000000) == 0 || (path_p = archive_read_disk_entry_setup_path(a1, a2, a3)) != 0)
  {
    archive_entry_acl_clear(a2);
    if (*a3 < 0)
    {
      if (*(a1 + 153))
      {
        obj_p = acl_get_file(path_p, ACL_TYPE_EXTENDED);
      }

      else
      {
        obj_p = acl_get_link_np(path_p, ACL_TYPE_EXTENDED);
      }
    }

    else
    {
      obj_p = acl_get_fd_np(*a3, ACL_TYPE_EXTENDED);
    }

    if (obj_p)
    {
      v10 = translate_acl(a1, a2, obj_p);
      acl_free(obj_p);
      if (v10)
      {
        v3 = __error();
        archive_set_error(a1, *v3, "Couldn't translate NFSv4 ACLs", v4, v5, v6, v7, v8, a1);
      }

      if ((archive_entry_acl_types(a2) & 0x3C00) != 0)
      {
        add_trivial_nfs4_acl(a2);
      }

      return v10;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return -20;
  }
}

uint64_t translate_acl(uint64_t a1, uint64_t a2, _acl *a3)
{
  v61 = a1;
  v60 = a2;
  v59 = a3;
  tag_type_p = ACL_UNDEFINED_TAG;
  flagset_p = 0;
  entry_p = 0;
  permset_p = 0;
  i = 0;
  v53 = 0;
  flag_np = 0;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  entry = acl_get_entry(a3, 0, &entry_p);
  if (entry == -1)
  {
    v46 = v61;
    v3 = __error();
    archive_set_error(v46, *v3, "Failed to get first ACL entry", v4, v5, v6, v7, v8, v40);
    return -20;
  }

  while (1)
  {
LABEL_3:
    if (entry)
    {
      return 0;
    }

    v50 = -1;
    v47 = 0;
    v48 = 0;
    if (acl_get_tag_type(entry_p, &tag_type_p))
    {
      v45 = v61;
      v9 = __error();
      archive_set_error(v45, *v9, "Failed to get ACL tag type", v10, v11, v12, v13, v14, v40);
      return -20;
    }

    if (tag_type_p == ACL_EXTENDED_ALLOW)
    {
      v53 = 1024;
      flag_np = translate_guid(v61, entry_p, &v50, &v49, &v47);
    }

    else
    {
      if (tag_type_p != ACL_EXTENDED_DENY)
      {
        goto LABEL_8;
      }

      v53 = 2048;
      flag_np = translate_guid(v61, entry_p, &v50, &v49, &v47);
    }

    if (!flag_np)
    {
      break;
    }

LABEL_8:
    entry = acl_get_entry(v59, -1, &entry_p);
  }

  if (acl_get_flagset_np(entry_p, &flagset_p))
  {
    v44 = v61;
    v15 = __error();
    archive_set_error(v44, *v15, "Failed to get flagset from a NFSv4 ACL entry", v16, v17, v18, v19, v20, v40);
    return -20;
  }

  else
  {
    for (i = 0; i < 5; ++i)
    {
      flag_np = acl_get_flag_np(flagset_p, acl_nfs4_flag_map[2 * i + 1]);
      if (flag_np == -1)
      {
        v43 = v61;
        v21 = __error();
        archive_set_error(v43, *v21, "Failed to check flag in a NFSv4 ACL flagset", v22, v23, v24, v25, v26, v40);
        return -20;
      }

      if (flag_np)
      {
        v48 |= acl_nfs4_flag_map[2 * i];
      }
    }

    if (acl_get_permset(entry_p, &permset_p))
    {
      v42 = v61;
      v27 = __error();
      archive_set_error(v42, *v27, "Failed to get ACL permission set", v28, v29, v30, v31, v32, v40);
      return -20;
    }

    else
    {
      for (i = 0; ; ++i)
      {
        if (i >= 17)
        {
          archive_entry_acl_add_entry(v60, v53, v48, v49, v50, v47);
          entry = acl_get_entry(v59, -1, &entry_p);
          goto LABEL_3;
        }

        flag_np = acl_get_perm_np(permset_p, acl_nfs4_perm_map[2 * i + 1]);
        if (flag_np == -1)
        {
          break;
        }

        if (flag_np)
        {
          v48 |= acl_nfs4_perm_map[2 * i];
        }
      }

      v41 = v61;
      v33 = __error();
      archive_set_error(v41, *v33, "Failed to check permission in an ACL permission set", v34, v35, v36, v37, v38, v41);
      return -20;
    }
  }
}

uint64_t add_trivial_nfs4_acl(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  memcpy(__dst, &unk_1BF343180, sizeof(__dst));
  result = archive_entry_mode(a1);
  if ((result & 4) != 0)
  {
    __dst[17] |= 8u;
  }

  if ((result & 2) != 0)
  {
    __dst[17] |= 0x30u;
  }

  if (result)
  {
    __dst[17] |= 1u;
  }

  if ((result & 0x20) != 0)
  {
    __dst[14] |= 8u;
  }

  else if ((result & 4) != 0)
  {
    __dst[8] |= 8u;
  }

  if ((result & 0x10) != 0)
  {
    __dst[14] |= 0x30u;
  }

  else if ((result & 2) != 0)
  {
    __dst[8] |= 0x30u;
  }

  if ((result & 8) != 0)
  {
    __dst[14] |= 1u;
  }

  else if (result)
  {
    __dst[8] |= 1u;
  }

  if ((result & 0x100) != 0)
  {
    __dst[11] |= 8u;
    if ((result & 0x20) == 0 && (result & 4) != 0)
    {
      __dst[2] |= 8u;
    }
  }

  else if ((result & 0x20) != 0 || (result & 4) != 0)
  {
    __dst[5] |= 8u;
  }

  if ((result & 0x80) != 0)
  {
    __dst[11] |= 0x30u;
    if ((result & 0x10) == 0 && (result & 2) != 0)
    {
      __dst[2] |= 0x30u;
    }
  }

  else if ((result & 0x10) != 0 || (result & 2) != 0)
  {
    __dst[5] |= 0x30u;
  }

  if ((result & 0x40) != 0)
  {
    __dst[11] |= 1u;
    if (result & 8) == 0 && (result)
    {
      __dst[2] |= 1u;
    }
  }

  else if (result & 8) != 0 || (result)
  {
    __dst[5] |= 1u;
  }

  for (i = 0; i < 6; ++i)
  {
    if (__dst[3 * i + 2])
    {
      result = archive_entry_acl_add_entry(a1, __dst[3 * i], __dst[3 * i + 2], __dst[3 * i + 1], -1, 0);
    }
  }

  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t archive_write_disk_set_acls(_DWORD *a1, int a2, const char *a3, unsigned __int16 *a4)
{
  v5 = 0;
  if ((archive_acl_types(a4) & 0x3C00) != 0)
  {
    return set_acl(a1, a2, a3, a4, 15360, "nfs4");
  }

  return v5;
}

uint64_t set_acl(_DWORD *a1, int a2, const char *a3, unsigned __int16 *a4, int a5, unint64_t a6)
{
  v110 = *MEMORY[0x1E69E9840];
  v107 = a1;
  v106 = a2;
  v105 = a3;
  v104 = a4;
  v103 = a5;
  v102 = a6;
  acl_p = 0;
  entry_p = 0;
  permset_p = 0;
  flagset_p = 0;
  v96 = 0;
  v95 = 0;
  v94 = 0;
  v93 = 0;
  memset(uu, 0, sizeof(uu));
  uid = 0;
  gid = 0;
  *&count[8] = 0;
  v97 = 0;
  *count = archive_acl_reset(a4, a5);
  if (!*count)
  {
    v108 = 0;
    goto LABEL_59;
  }

  if (v103 != 15360)
  {
    *__error() = 2;
    v6 = __error();
    archive_set_error(v107, *v6, "Unsupported ACL type", v7, v8, v9, v10, v11, v78);
    v108 = -25;
    goto LABEL_59;
  }

  acl_p = acl_init(*count);
  if (!acl_p)
  {
    v12 = __error();
    archive_set_error(v107, *v12, "Failed to initialize ACL working storage", v13, v14, v15, v16, v17, v78);
    v108 = -25;
    goto LABEL_59;
  }

  while (!archive_acl_next(v107, v104, v103, &v96, &v95, &v94, &v93, &count[4]))
  {
    if (v94 != 10002 && v94 != 10004 && v94 != 10107)
    {
      if (acl_create_entry(&acl_p, &entry_p))
      {
        v87 = v107;
        v18 = __error();
        archive_set_error(v87, *v18, "Failed to create a new ACL entry", v19, v20, v21, v22, v23, v78);
        v97 = -25;
        goto LABEL_58;
      }

      if (v96 == 1024)
      {
        acl_set_tag_type(entry_p, ACL_EXTENDED_ALLOW);
LABEL_19:
        if (v94 == 10001)
        {
          uid = archive_write_disk_uid(v107, *&count[4], v93);
          if (!mbr_uid_to_uuid(uid, uu) && !acl_set_qualifier(entry_p, uu))
          {
            goto LABEL_27;
          }
        }

        else
        {
          if (v94 != 10003)
          {
            archive_set_error(v107, -1, "Unsupported ACL tag", v24, v25, v26, v27, v28, v78);
            v97 = -25;
            goto LABEL_58;
          }

          gid = archive_write_disk_gid(v107, *&count[4], v93);
          if (!mbr_gid_to_uuid(gid, uu) && !acl_set_qualifier(entry_p, uu))
          {
LABEL_27:
            if (acl_get_permset(entry_p, &permset_p))
            {
              v86 = v107;
              v29 = __error();
              archive_set_error(v86, *v29, "Failed to get ACL permission set", v30, v31, v32, v33, v34, v78);
              v97 = -25;
              goto LABEL_58;
            }

            if (acl_clear_perms(permset_p))
            {
              v85 = v107;
              v35 = __error();
              archive_set_error(v85, *v35, "Failed to clear ACL permissions", v36, v37, v38, v39, v40, v78);
              v97 = -25;
              goto LABEL_58;
            }

            for (i = 0; i < 17; ++i)
            {
              if ((v95 & acl_nfs4_perm_map[2 * i]) != 0 && acl_add_perm(permset_p, acl_nfs4_perm_map[2 * i + 1]))
              {
                v84 = v107;
                v41 = __error();
                archive_set_error(v84, *v41, "Failed to add ACL permission", v42, v43, v44, v45, v46, v78);
                v97 = -25;
                goto LABEL_58;
              }
            }

            if (acl_get_flagset_np(entry_p, &flagset_p))
            {
              v83 = v107;
              v47 = __error();
              archive_set_error(v83, *v47, "Failed to get flagset from an NFSv4 ACL entry", v48, v49, v50, v51, v52, v78);
              v97 = -25;
              goto LABEL_58;
            }

            if (acl_clear_flags_np(flagset_p))
            {
              v82 = v107;
              v53 = __error();
              archive_set_error(v82, *v53, "Failed to clear flags from an NFSv4 ACL flagset", v54, v55, v56, v57, v58, v78);
              v97 = -25;
              goto LABEL_58;
            }

            for (j = 0; j < 5; ++j)
            {
              if ((v95 & acl_nfs4_flag_map[2 * j]) != 0 && acl_add_flag_np(flagset_p, acl_nfs4_flag_map[2 * j + 1]))
              {
                v81 = v107;
                v59 = __error();
                archive_set_error(v81, *v59, "Failed to add flag to NFSv4 ACL flagset", v60, v61, v62, v63, v64, v78);
                v97 = -25;
                goto LABEL_58;
              }
            }
          }
        }
      }

      else if (v96 == 2048)
      {
        acl_set_tag_type(entry_p, ACL_EXTENDED_DENY);
        goto LABEL_19;
      }
    }
  }

  if (v106 < 0)
  {
    if (acl_set_link_np(v105, ACL_TYPE_EXTENDED, acl_p))
    {
      if (*__error() == 102)
      {
        v97 = 0;
      }

      else
      {
        v79 = v107;
        v71 = __error();
        archive_set_error(v79, *v71, "Failed to set acl: %s", v72, v73, v74, v75, v76, v102);
        v97 = -20;
      }
    }
  }

  else if (acl_set_fd_np(v106, acl_p, ACL_TYPE_EXTENDED))
  {
    if (*__error() == 102)
    {
      v97 = 0;
    }

    else
    {
      v80 = v107;
      v65 = __error();
      archive_set_error(v80, *v65, "Failed to set acl on fd: %s", v66, v67, v68, v69, v70, v102);
      v97 = -20;
    }
  }

  else
  {
    v97 = 0;
  }

LABEL_58:
  acl_free(acl_p);
  v108 = v97;
LABEL_59:
  *MEMORY[0x1E69E9840];
  return v108;
}

uint64_t translate_guid(uint64_t a1, _acl_entry *a2, id_t *a3, _DWORD *a4, uint64_t *a5)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = a5;
  uid_or_gid = 0;
  v9 = 0;
  id_type = 0;
  uu = acl_get_qualifier(a2);
  if (uu)
  {
    v9 = mbr_uuid_to_id(uu, &uid_or_gid, &id_type);
    if (v9)
    {
      acl_free(uu);
      return 1;
    }

    else
    {
      if (id_type)
      {
        if (id_type == 1)
        {
          *v13 = 10003;
          *v14 = uid_or_gid;
          disk_gname = archive_read_disk_gname(v16, *v14);
          *v12 = disk_gname;
        }

        else
        {
          v9 = 1;
        }
      }

      else
      {
        *v13 = 10001;
        *v14 = uid_or_gid;
        disk_uname = archive_read_disk_uname(v16, *v14);
        *v12 = disk_uname;
      }

      acl_free(uu);
      return v9;
    }
  }

  else
  {
    return 1;
  }
}

uint64_t archive_write_set_format_pax_restricted(uint64_t a1)
{
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_set_format_pax_restricted") == -30)
  {
    return -30;
  }

  else
  {
    v1 = archive_write_set_format_pax(a1);
    *(a1 + 16) = 196611;
    *(a1 + 24) = "restricted POSIX pax interchange";
    return v1;
  }
}

uint64_t archive_write_set_format_pax(uint64_t a1)
{
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_set_format_pax") == -30)
  {
    return -30;
  }

  else
  {
    if (*(a1 + 312))
    {
      (*(a1 + 312))(a1);
    }

    v8 = malloc_type_calloc(1uLL, 0x80uLL, 0x103004090A86EF5uLL);
    if (v8)
    {
      v8[31] = 3;
      *(a1 + 248) = v8;
      *(a1 + 256) = "pax";
      *(a1 + 272) = archive_write_pax_options;
      *(a1 + 288) = archive_write_pax_header;
      *(a1 + 296) = archive_write_pax_data;
      *(a1 + 304) = archive_write_pax_close;
      *(a1 + 312) = archive_write_pax_free;
      *(a1 + 280) = archive_write_pax_finish_entry;
      *(a1 + 16) = 196610;
      *(a1 + 24) = "POSIX pax interchange";
      return 0;
    }

    else
    {
      archive_set_error(a1, 12, "Can't allocate pax data", v1, v2, v3, v4, v5, v7);
      return -30;
    }
  }
}

uint64_t archive_write_pax_options(uint64_t a1, const char *a2, const char *a3)
{
  v27 = *(a1 + 248);
  HIDWORD(v24) = -25;
  if (!strcmp(a2, "hdrcharset"))
  {
    if (a3 && *a3)
    {
      if (!strcmp(a3, "BINARY") || !strcmp(a3, "binary"))
      {
        *(v27 + 120) = 1;
        return 0;
      }

      else if (!strcmp(a3, "UTF-8"))
      {
        *(v27 + 112) = archive_string_conversion_to_charset(a1, "UTF-8", 0);
        if (*(v27 + 112))
        {
          return 0;
        }

        else
        {
          return -30;
        }
      }

      else
      {
        archive_set_error(a1, -1, "pax: invalid charset name", v8, v9, v10, v11, v12, v24);
      }
    }

    else
    {
      archive_set_error(a1, -1, "pax: hdrcharset option needs a character-set name", v3, v4, v5, v6, v7, v24);
    }

    return v25;
  }

  else if (!strcmp(a2, "xattrheader"))
  {
    if (a3 && *a3)
    {
      if (!strcmp(a3, "ALL") || !strcmp(a3, "all"))
      {
        *(v27 + 124) |= 3u;
        return 0;
      }

      else if (!strcmp(a3, "SCHILY") || !strcmp(a3, "schily"))
      {
        *(v27 + 124) |= 1u;
        *(v27 + 124) &= ~2u;
        return 0;
      }

      else if (!strcmp(a3, "LIBARCHIVE") || !strcmp(a3, "libarchive"))
      {
        *(v27 + 124) |= 2u;
        *(v27 + 124) &= ~1u;
        return 0;
      }

      else
      {
        archive_set_error(a1, -1, "pax: invalid xattr header name", v18, v19, v20, v21, v22, v24);
      }
    }

    else
    {
      archive_set_error(a1, -1, "pax: xattrheader requires a value", v13, v14, v15, v16, v17, v24);
    }

    return v26;
  }

  else
  {
    return -20;
  }
}

uint64_t archive_write_pax_header(uint64_t a1, uint64_t *a2)
{
  v177 = *MEMORY[0x1E69E9840];
  v170 = a1;
  v169 = a2;
  v168 = 0;
  v167 = 0;
  v166 = 0;
  entry_hardlink = 0;
  v162 = 0;
  v161 = 0;
  v160 = 0;
  v159 = 0;
  v158 = 0;
  v157 = 0;
  v156 = 0;
  v155 = 0;
  v154 = 0;
  v153 = 0;
  v152 = 0;
  v151 = 0;
  v150 = 0;
  v149 = 0;
  v148 = 0;
  v147 = 0;
  v146 = 0;
  v145 = 0;
  v142 = 0;
  v143 = 0;
  v144 = 0;
  v163 = 0;
  v165 = 0;
  v158 = *(a1 + 248);
  ustar_max_mtime = get_ustar_max_mtime();
  if (!archive_entry_pathname(v169))
  {
    archive_set_error(v170, -1, "Can't record entry in tar file without pathname", v2, v3, v4, v5, v6, v88);
    v171 = -25;
    goto LABEL_231;
  }

  if (*(v158 + 120))
  {
    v150 = 0;
  }

  else
  {
    if (!*(v158 + 112))
    {
      *(v158 + 112) = archive_string_conversion_to_charset(v170, "UTF-8", 1);
      if (!*(v158 + 112))
      {
        v171 = -25;
        goto LABEL_231;
      }
    }

    v150 = *(v158 + 112);
  }

  entry_hardlink = get_entry_hardlink(v170, v169, &v157, &v149, v150);
  if (entry_hardlink == -30)
  {
    v171 = -30;
    goto LABEL_231;
  }

  if (entry_hardlink)
  {
    entry_hardlink = get_entry_hardlink(v170, v169, &v157, &v149, 0);
    if (entry_hardlink == -30)
    {
      v171 = -30;
      goto LABEL_231;
    }

    v120 = v170;
    v119 = v157;
    archive_string_conversion_charset_name(v150);
    archive_set_error(v120, 79, "Can't translate linkname '%s' to %s", v7, v8, v9, v10, v11, v119);
    v163 = -20;
    v150 = 0;
  }

  if (!v157)
  {
    v118 = archive_entry_filetype(v169);
    if (v118 != 4096 && v118 != 0x2000)
    {
      if (v118 == 0x4000)
      {
        v167 = archive_entry_pathname(v169);
        if (v167 && *v167 && v167[strlen(v167) - 1] != 47)
        {
          v138 = 0;
          v139 = 0;
          v140 = 0;
          v148 = strlen(v167);
          if (!archive_string_ensure(&v138, v148 + 2))
          {
            archive_set_error(v170, 12, "Can't allocate pax data", v12, v13, v14, v15, v16, v88);
            archive_string_free(&v138);
            v171 = -30;
            goto LABEL_231;
          }

          v139 = 0;
          archive_strncat(&v138, v167, v148);
          archive_strappend_char(&v138, 47);
          archive_entry_copy_pathname(v169, v138);
          archive_string_free(&v138);
        }
      }

      else if (v118 != 24576 && v118 != 0x8000 && v118 != 40960)
      {
        __archive_write_entry_filetype_unsupported(v170, v169);
        v171 = -25;
        goto LABEL_231;
      }
    }
  }

  v152 = archive_entry_mac_metadata(v169, &v151);
  if (v152)
  {
    i = 0;
    v133 = archive_entry_new2(v170);
    __s = archive_entry_pathname(v169);
    v134 = strlen(__s);
    v136 = malloc_type_malloc(v134 + 3, 0x3275888FuLL);
    if (!v136 || !v133)
    {
      archive_entry_free(v133);
      free(v136);
      v171 = -25;
      goto LABEL_231;
    }

    __strcpy_chk();
    for (i = strrchr(v136, 47); ; i = strrchr(v136, 47))
    {
      v117 = 0;
      if (i)
      {
        v117 = i[1] == 0;
      }

      if (!v117)
      {
        break;
      }

      *i = 0;
    }

    if (i)
    {
      strlen(++i);
    }

    __memmove_chk();
    __memmove_chk();
    archive_entry_copy_pathname(v133, v136);
    free(v136);
    archive_entry_set_size(v133, v151);
    archive_entry_set_filetype(v133, 0x8000);
    v17 = archive_entry_perm(v169);
    archive_entry_set_perm(v133, v17);
    v116 = archive_entry_mtime(v169);
    v18 = archive_entry_mtime_nsec(v169);
    archive_entry_set_mtime(v133, v116, v18);
    v19 = archive_entry_gid(v169);
    archive_entry_set_gid(v133, v19);
    v20 = archive_entry_gname(v169);
    archive_entry_set_gname(v133, v20);
    v21 = archive_entry_uid(v169);
    archive_entry_set_uid(v133, v21);
    v22 = archive_entry_uname(v169);
    archive_entry_set_uname(v133, v22);
    entry_hardlink = archive_write_pax_header(v170, v133);
    archive_entry_free(v133);
    if (entry_hardlink < -20)
    {
      v171 = entry_hardlink;
      goto LABEL_231;
    }

    if (entry_hardlink < v163)
    {
      v163 = entry_hardlink;
    }

    entry_hardlink = archive_write_pax_data(v170, v152, v151);
    if (entry_hardlink < -20)
    {
      v171 = entry_hardlink;
      goto LABEL_231;
    }

    if (entry_hardlink < v163)
    {
      v163 = entry_hardlink;
    }

    entry_hardlink = archive_write_pax_finish_entry(v170);
    if (entry_hardlink < -20)
    {
      v171 = entry_hardlink;
      goto LABEL_231;
    }

    if (entry_hardlink < v163)
    {
      v163 = entry_hardlink;
    }
  }

  v168 = archive_entry_clone(v169);
  if (!v168)
  {
    archive_set_error(v170, 12, "Can't allocate pax data", v23, v24, v25, v26, v27, v88);
    v171 = -30;
    goto LABEL_231;
  }

  *(v158 + 48) = 0;
  *(v158 + 72) = 0;
  v160 = 0;
  sparse_list_clear(v158);
  if (v157 || archive_entry_filetype(v168) != 0x8000)
  {
    v161 = 0;
  }

  else
  {
    v161 = archive_entry_sparse_reset(v168);
  }

  if (v161)
  {
    v132 = 0;
    v131 = 0;
    v130 = 0;
    while (!archive_entry_sparse_next(v168, &v132, &v131))
    {
      v130 = v132 + v131;
    }

    if (v130 < archive_entry_size(v168))
    {
      v115 = v168;
      v28 = archive_entry_size(v168);
      archive_entry_sparse_add_entry(v115, v28, 0);
    }

    v161 = archive_entry_sparse_reset(v168);
  }

  entry_hardlink = get_entry_pathname(v170, v168, &v156, &v148, v150);
  if (entry_hardlink == -30)
  {
LABEL_97:
    archive_entry_free(v168);
    v171 = entry_hardlink;
    goto LABEL_231;
  }

  if (entry_hardlink)
  {
    entry_hardlink = get_entry_pathname(v170, v168, &v156, &v148, 0);
    if (entry_hardlink == -30)
    {
      goto LABEL_97;
    }

    v114 = v170;
    v113 = v156;
    archive_string_conversion_charset_name(v150);
    archive_set_error(v114, 79, "Can't translate pathname '%s' to %s", v29, v30, v31, v32, v33, v113);
    v163 = -20;
    v150 = 0;
  }

  entry_hardlink = get_entry_uname(v170, v168, &v154, &v146, v150);
  if (entry_hardlink == -30)
  {
    goto LABEL_97;
  }

  if (entry_hardlink)
  {
    entry_hardlink = get_entry_uname(v170, v168, &v154, &v146, 0);
    if (entry_hardlink == -30)
    {
      goto LABEL_97;
    }

    v112 = v170;
    v111 = v154;
    archive_string_conversion_charset_name(v150);
    archive_set_error(v112, 79, "Can't translate uname '%s' to %s", v34, v35, v36, v37, v38, v111);
    v163 = -20;
    v150 = 0;
  }

  entry_hardlink = get_entry_gname(v170, v168, &v153, &v145, v150);
  if (entry_hardlink == -30)
  {
    goto LABEL_97;
  }

  if (entry_hardlink)
  {
    entry_hardlink = get_entry_gname(v170, v168, &v153, &v145, 0);
    if (entry_hardlink == -30)
    {
      goto LABEL_97;
    }

    v110 = v170;
    v109 = v153;
    archive_string_conversion_charset_name(v150);
    archive_set_error(v110, 79, "Can't translate gname '%s' to %s", v39, v40, v41, v42, v43, v109);
    v163 = -20;
    v150 = 0;
  }

  v155 = v157;
  v147 = v149;
  if (!v157)
  {
    entry_hardlink = get_entry_symlink(v170, v168, &v155, &v147, v150);
    if (entry_hardlink == -30)
    {
      goto LABEL_97;
    }

    if (entry_hardlink)
    {
      entry_hardlink = get_entry_symlink(v170, v168, &v155, &v147, 0);
      if (entry_hardlink == -30)
      {
        goto LABEL_97;
      }

      v108 = v170;
      v107 = v155;
      archive_string_conversion_charset_name(v150);
      archive_set_error(v108, 79, "Can't translate linkname '%s' to %s", v44, v45, v46, v47, v48, v107);
      v163 = -20;
      v150 = 0;
    }
  }

  if (!v150 && !*(v158 + 120))
  {
    if (v157)
    {
      entry_hardlink = get_entry_hardlink(v170, v168, &v157, &v149, 0);
      if (entry_hardlink == -30)
      {
        goto LABEL_97;
      }

      v155 = v157;
      v147 = v149;
    }

    entry_hardlink = get_entry_pathname(v170, v168, &v156, &v148, 0);
    if (entry_hardlink == -30)
    {
      goto LABEL_97;
    }

    entry_hardlink = get_entry_uname(v170, v168, &v154, &v146, 0);
    if (entry_hardlink == -30)
    {
      goto LABEL_97;
    }

    entry_hardlink = get_entry_gname(v170, v168, &v153, &v145, 0);
    if (entry_hardlink == -30)
    {
      goto LABEL_97;
    }
  }

  if (!v150)
  {
    add_pax_attr((v158 + 40), "hdrcharset", "BINARY");
  }

  if (has_non_ASCII(v156))
  {
    add_pax_attr((v158 + 40), "path", v156);
    v106 = v168;
    v49 = build_ustar_entry_name(v174, v156, v148, 0);
    archive_entry_set_pathname(v106, v49);
    v165 = 1;
  }

  else if (v148 > 0x64)
  {
    v166 = strchr(&v156[v148 - 101], 47);
    if (v166 == v156)
    {
      v166 = strchr(v166 + 1, 47);
    }

    if (!v166 || !v166[1] || v166 - v156 > 155)
    {
      add_pax_attr((v158 + 40), "path", v156);
      v105 = v168;
      v50 = build_ustar_entry_name(v174, v156, v148, 0);
      archive_entry_set_pathname(v105, v50);
      v165 = 1;
    }
  }

  if (v155 && (v147 > 0x64 || has_non_ASCII(v155)))
  {
    add_pax_attr((v158 + 40), "linkpath", v155);
    if (v147 > 0x64)
    {
      if (v157)
      {
        archive_entry_set_hardlink(v168, "././@LongHardLink");
      }

      else
      {
        archive_entry_set_symlink(v168, "././@LongSymLink");
      }
    }

    v165 = 1;
  }

  v142 = 0;
  v144 = 0;
  v143 = 0;
  v104 = archive_entry_pathname(v168);
  if (archive_entry_pathname(v168))
  {
    v51 = archive_entry_pathname(v168);
    v103 = strlen(v51);
    archive_strncat(&v142, v104, v103);
  }

  else
  {
    archive_strncat(&v142, v104, 0);
  }

  if (archive_entry_size(v168) >= 0x200000000)
  {
    v165 = 1;
  }

  if (archive_entry_gid(v168) >= 0x40000)
  {
    v102 = (v158 + 40);
    v52 = archive_entry_gid(v168);
    add_pax_attr_int(v102, "gid", v52);
    v165 = 1;
  }

  if (v153 && (v145 > 0x1F || has_non_ASCII(v153)))
  {
    add_pax_attr((v158 + 40), "gname", v153);
    v165 = 1;
  }

  if (archive_entry_uid(v168) >= 0x40000)
  {
    v101 = (v158 + 40);
    v53 = archive_entry_uid(v168);
    add_pax_attr_int(v101, "uid", v53);
    v165 = 1;
  }

  if (v154 && (v146 > 0x1F || has_non_ASCII(v154)))
  {
    add_pax_attr((v158 + 40), "uname", v154);
    v165 = 1;
  }

  if (archive_entry_filetype(v168) == 24576 || archive_entry_filetype(v168) == 0x2000)
  {
    v129 = archive_entry_rdevmajor(v168);
    v128 = archive_entry_rdevminor(v168);
    if (v129 >= 0x40000)
    {
      add_pax_attr_int((v158 + 40), "SCHILY.devmajor", v129);
      v165 = 1;
    }

    if (v128 >= 0x40000)
    {
      add_pax_attr_int((v158 + 40), "SCHILY.devminor", v128);
      v165 = 1;
    }
  }

  if (!v165 && (archive_entry_mtime(v168) < 0 || archive_entry_mtime(v168) >= ustar_max_mtime))
  {
    v165 = 1;
  }

  v167 = archive_entry_fflags_text(v168);
  if (!v165 && v167)
  {
    v165 = *v167 != 0;
  }

  if (!v165)
  {
    v165 = archive_entry_xattr_count(v169) > 0;
  }

  if (!v165)
  {
    v165 = v161 > 0;
  }

  v162 = archive_entry_acl_types(v169);
  if (!v165)
  {
    v165 = v162 != 0;
  }

  if (!v165)
  {
    v165 = archive_entry_symlink_type(v168) > 0;
  }

  if (v170[4] != 196611)
  {
    if (archive_entry_ctime(v168) || archive_entry_ctime_nsec(v168))
    {
      v100 = (v158 + 40);
      v99 = archive_entry_ctime(v168);
      v54 = archive_entry_ctime_nsec(v168);
      add_pax_attr_time(v100, "ctime", v99, v54);
    }

    if (archive_entry_atime(v168) || archive_entry_atime_nsec(v168))
    {
      v98 = (v158 + 40);
      v97 = archive_entry_atime(v168);
      v55 = archive_entry_atime_nsec(v168);
      add_pax_attr_time(v98, "atime", v97, v55);
    }

    if (archive_entry_birthtime_is_set(v168))
    {
      v96 = archive_entry_birthtime(v168);
      if (v96 < archive_entry_mtime(v168))
      {
        v95 = (v158 + 40);
        v94 = archive_entry_birthtime(v168);
        v56 = archive_entry_birthtime_nsec(v168);
        add_pax_attr_time(v95, "LIBARCHIVE.creationtime", v94, v56);
      }
    }
  }

  if (v170[4] != 196611 || v165)
  {
    if (archive_entry_mtime(v168) < 0 || archive_entry_mtime(v168) >= ustar_max_mtime || archive_entry_mtime_nsec(v168))
    {
      v93 = (v158 + 40);
      v92 = archive_entry_mtime(v168);
      v57 = archive_entry_mtime_nsec(v168);
      add_pax_attr_time(v93, "mtime", v92, v57);
    }

    v167 = archive_entry_fflags_text(v168);
    if (v167 && *v167)
    {
      add_pax_attr((v158 + 40), "SCHILY.fflags", v167);
    }

    if ((v162 & 0x3C00) != 0 && (v163 = add_pax_acl(v170, v169, v158, 25), v163 == -30) || (v162 & 0x100) != 0 && (v163 = add_pax_acl(v170, v169, v158, 265), v163 == -30) || (v162 & 0x200) != 0 && (v163 = add_pax_acl(v170, v169, v158, 521), v163 == -30))
    {
      archive_entry_free(v168);
      archive_string_free(&v142);
      v171 = -30;
      goto LABEL_231;
    }

    if (v161 > 0)
    {
      v127 = 0;
      v126 = 0;
      add_pax_attr_int((v158 + 40), "GNU.sparse.major", 1uLL);
      add_pax_attr_int((v158 + 40), "GNU.sparse.minor", 0);
      add_pax_attr((v158 + 40), "GNU.sparse.name", v156);
      v90 = (v158 + 40);
      v58 = archive_entry_size(v168);
      add_pax_attr_int(v90, "GNU.sparse.realsize", v58);
      v91 = v168;
      v59 = build_gnu_sparse_name(v172, v142);
      archive_entry_set_pathname(v91, v59);
      archive_string_sprintf((v158 + 64), "%d\n", v60, v61, v62, v63, v64, v65, v161);
      while (!archive_entry_sparse_next(v168, &v127, &v126))
      {
        archive_string_sprintf((v158 + 64), "%jd\n%jd\n", v66, v67, v68, v69, v70, v71, v127);
        v160 += v126;
        if (sparse_list_add(v158, v127, v126))
        {
          archive_set_error(v170, 12, "Can't allocate memory", v72, v73, v74, v75, v76, v88);
          archive_entry_free(v168);
          archive_string_free(&v142);
          v171 = -30;
          goto LABEL_231;
        }
      }
    }

    if (archive_write_pax_header_xattrs(v170, v158, v169) == -30)
    {
LABEL_223:
      archive_entry_free(v168);
      archive_string_free(&v142);
      v171 = -30;
      goto LABEL_231;
    }

    if (archive_entry_symlink_type(v168) == 1)
    {
      add_pax_attr((v158 + 40), "LIBARCHIVE.symlinktype", "file");
    }

    else if (archive_entry_symlink_type(v168) == 2)
    {
      add_pax_attr((v158 + 40), "LIBARCHIVE.symlinktype", "dir");
    }
  }

  if (archive_entry_filetype(v168) != 0x8000)
  {
    archive_entry_set_size(v168, 0);
  }

  if (v170[4] != 196610 && v157)
  {
    archive_entry_set_size(v168, 0);
  }

  if (v157)
  {
    archive_entry_set_size(v168, 0);
  }

  v159 = archive_entry_size(v168);
  if (*(v158 + 72))
  {
    v125 = *(v158 + 72);
    *(v158 + 88) = -v125 & 0x1FF;
    archive_entry_set_size(v168, v125 + *(v158 + 88) + v160);
  }

  if (archive_entry_size(v168) >= 0x200000000)
  {
    v89 = (v158 + 40);
    v77 = archive_entry_size(v168);
    add_pax_attr_int(v89, "size", v77);
  }

  if (__archive_write_format_header_ustar(v170, v175, v168, -1, 0, 0) == -30)
  {
    goto LABEL_223;
  }

  if (*(v158 + 48))
  {
    v124 = archive_entry_new2(v170);
    v167 = v142;
    v78 = build_pax_attribute_name(v173, v142);
    archive_entry_set_pathname(v124, v78);
    archive_entry_set_size(v124, *(v158 + 48));
    v122 = archive_entry_uid(v168);
    if (v122 >= 0x40000)
    {
      v122 = 0x3FFFFLL;
    }

    archive_entry_set_uid(v124, v122);
    v121 = archive_entry_gid(v168);
    if (v121 >= 0x40000)
    {
      v121 = 0x3FFFFLL;
    }

    archive_entry_set_gid(v124, v121);
    v79 = archive_entry_mode(v168);
    archive_entry_set_mode(v124, v79 & 0xF1FF);
    v80 = archive_entry_uname(v168);
    archive_entry_set_uname(v124, v80);
    v81 = archive_entry_gname(v168);
    archive_entry_set_gname(v124, v81);
    v123 = archive_entry_mtime(v168);
    if (v123 < 0)
    {
      v123 = 0;
    }

    if (v123 > ustar_max_mtime)
    {
      v123 = ustar_max_mtime;
    }

    archive_entry_set_mtime(v124, v123, 0);
    archive_entry_set_atime(v124, 0, 0);
    archive_entry_set_ctime(v124, 0, 0);
    entry_hardlink = __archive_write_format_header_ustar(v170, v176, v124, 120, 1, 0);
    archive_entry_free(v124);
    if (entry_hardlink < -20)
    {
      archive_set_error(v170, -1, "archive_write_pax_header: 'x' header failed?!  This can't happen.\n", v82, v83, v84, v85, v86, v88);
      archive_entry_free(v168);
      archive_string_free(&v142);
      v171 = -30;
      goto LABEL_231;
    }

    if (entry_hardlink < v163)
    {
      v163 = entry_hardlink;
    }

    entry_hardlink = __archive_write_output(v170, v176, 512);
    if (entry_hardlink)
    {
      sparse_list_clear(v158);
      *v158 = 0;
      *(v158 + 8) = 0;
      archive_entry_free(v168);
      archive_string_free(&v142);
      v171 = -30;
      goto LABEL_231;
    }

    *v158 = *(v158 + 48);
    *(v158 + 8) = -*v158 & 0x1FFLL;
    entry_hardlink = __archive_write_output(v170, *(v158 + 40), *(v158 + 48));
    if (entry_hardlink)
    {
      goto LABEL_223;
    }

    entry_hardlink = __archive_write_nulls(v170, *(v158 + 8));
    if (entry_hardlink)
    {
      goto LABEL_223;
    }

    *(v158 + 8) = 0;
    *v158 = 0;
  }

  entry_hardlink = __archive_write_output(v170, v175, 512);
  if (entry_hardlink)
  {
    archive_entry_free(v168);
    archive_string_free(&v142);
    v171 = entry_hardlink;
  }

  else
  {
    archive_entry_set_size(v169, v159);
    if (!*(v158 + 96) && v159)
    {
      sparse_list_add(v158, 0, v159);
      v160 = v159;
    }

    *(v158 + 8) = -v160 & 0x1FF;
    archive_entry_free(v168);
    archive_string_free(&v142);
    v171 = v163;
  }

LABEL_231:
  *MEMORY[0x1E69E9840];
  return v171;
}

unint64_t archive_write_pax_data(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v11 = *(a1 + 248);
  if (*(v11 + 72))
  {
    v6 = __archive_write_output(a1, *(v11 + 64), *(v11 + 72));
    if (v6)
    {
      return v6;
    }

    v7 = __archive_write_nulls(a1, *(v11 + 88));
    if (v7)
    {
      return v7;
    }

    *(v11 + 72) = 0;
  }

  v9 = 0;
  while (v9 < a3)
  {
    while (1)
    {
      v4 = 0;
      if (*(v11 + 96))
      {
        v4 = *(*(v11 + 96) + 24) == 0;
      }

      if (!v4)
      {
        break;
      }

      v5 = **(v11 + 96);
      free(*(v11 + 96));
      *(v11 + 96) = v5;
    }

    if (!*(v11 + 96))
    {
      return v9;
    }

    v10 = a3 - v9;
    if (a3 - v9 > *(*(v11 + 96) + 24))
    {
      v10 = *(*(v11 + 96) + 24);
    }

    if (*(*(v11 + 96) + 8))
    {
      *(*(v11 + 96) + 24) -= v10;
      v9 += v10;
    }

    else
    {
      v8 = __archive_write_output(a1, a2 + v9, v10);
      *(*(v11 + 96) + 24) -= v10;
      v9 += v10;
      if (v8)
      {
        return v8;
      }
    }
  }

  return v9;
}

uint64_t archive_write_pax_free(uint64_t a1)
{
  v2 = *(a1 + 248);
  if (v2)
  {
    archive_string_free(v2 + 40);
    archive_string_free(v2 + 64);
    archive_string_free(v2 + 16);
    sparse_list_clear(v2);
    free(v2);
    *(a1 + 248) = 0;
  }

  return 0;
}

uint64_t archive_write_pax_finish_entry(uint64_t a1)
{
  v4 = *(a1 + 248);
  v3 = *v4;
  if (!*v4)
  {
    while (v4[12])
    {
      if (!*(v4[12] + 8))
      {
        v3 += *(v4[12] + 24);
      }

      v2 = *v4[12];
      free(v4[12]);
      v4[12] = v2;
    }
  }

  LODWORD(result) = __archive_write_nulls(a1, v3 + v4[1]);
  v4[1] = 0;
  *v4 = 0;
  return result;
}

uint64_t get_entry_hardlink(_DWORD *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  if (_archive_entry_hardlink_l(a2, a3, a4, a5))
  {
    if (*__error() == 12)
    {
      archive_set_error(a1, 12, "Can't allocate memory for Linkname", v5, v6, v7, v8, v9, v11);
      return -30;
    }

    else
    {
      return -20;
    }
  }

  else
  {
    return 0;
  }
}

void sparse_list_clear(uint64_t a1)
{
  while (*(a1 + 96))
  {
    v1 = *(a1 + 96);
    *(a1 + 96) = *v1;
    free(v1);
  }

  *(a1 + 104) = 0;
}

uint64_t get_entry_pathname(_DWORD *a1, _DWORD **a2, void *a3, void *a4, uint64_t a5)
{
  if (_archive_entry_pathname_l(a2, a3, a4, a5))
  {
    if (*__error() == 12)
    {
      archive_set_error(a1, 12, "Can't allocate memory for Pathname", v5, v6, v7, v8, v9, v11);
      return -30;
    }

    else
    {
      return -20;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t get_entry_uname(_DWORD *a1, _DWORD **a2, void *a3, void *a4, uint64_t a5)
{
  if (_archive_entry_uname_l(a2, a3, a4, a5))
  {
    if (*__error() == 12)
    {
      archive_set_error(a1, 12, "Can't allocate memory for Uname", v5, v6, v7, v8, v9, v11);
      return -30;
    }

    else
    {
      return -20;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t get_entry_gname(_DWORD *a1, _DWORD **a2, void *a3, void *a4, uint64_t a5)
{
  if (_archive_entry_gname_l(a2, a3, a4, a5))
  {
    if (*__error() == 12)
    {
      archive_set_error(a1, 12, "Can't allocate memory for Gname", v5, v6, v7, v8, v9, v11);
      return -30;
    }

    else
    {
      return -20;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t get_entry_symlink(_DWORD *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  if (_archive_entry_symlink_l(a2, a3, a4, a5))
  {
    if (*__error() == 12)
    {
      archive_set_error(a1, 12, "Can't allocate memory for Linkname", v5, v6, v7, v8, v9, v11);
      return -30;
    }

    else
    {
      return -20;
    }
  }

  else
  {
    return 0;
  }
}

BOOL has_non_ASCII(_BYTE *a1)
{
  v3 = a1;
  if (a1)
  {
    while (1)
    {
      v2 = 0;
      if (*v3)
      {
        v2 = *v3 < 0x80u;
      }

      if (!v2)
      {
        break;
      }

      ++v3;
    }

    return *v3 != 0;
  }

  else
  {
    return 1;
  }
}

_BYTE *build_ustar_entry_name(_BYTE *a1, unint64_t a2, unint64_t a3, const char *a4)
{
  v14 = 0;
  v11 = 98;
  if (a4)
  {
    v10 = strlen(a4) + 2;
  }

  else
  {
    v10 = 0;
  }

  if (a3 >= 0x64 || a4)
  {
    for (i = a2 + a3; ; i -= 2)
    {
      while (i > a2 && *(i - 1) == 47)
      {
        --i;
        v14 = 1;
      }

      if (i <= a2 + 1 || *(i - 1) != 46 || *(i - 2) != 47)
      {
        break;
      }

      v14 = 1;
    }

    if (v14)
    {
      v11 = 97;
    }

    for (j = (i - 1); ; --j)
    {
      v9 = 0;
      if (j > a2)
      {
        v9 = *j != 47;
      }

      if (!v9)
      {
        break;
      }
    }

    if (*j == 47 && j < i - 1)
    {
      ++j;
    }

    v12 = v11 - v10;
    if (i > &j[v12])
    {
      i = &j[v12];
    }

    v13 = v12 - (i - j);
    v20 = (a2 + 154);
    if (a2 + 154 > j)
    {
      v20 = j;
    }

    while (1)
    {
      v8 = 0;
      if (v20 > a2)
      {
        v8 = *v20 != 47;
      }

      if (!v8)
      {
        break;
      }

      --v20;
    }

    if (v20 < j && *v20 == 47)
    {
      ++v20;
    }

    v19 = &v20[v13];
    if (&v20[v13] > j)
    {
      v19 = j;
    }

    if (v19 < v20)
    {
      v19 = v20;
    }

    while (1)
    {
      v7 = 0;
      if (v19 > v20)
      {
        v7 = *v19 != 47;
      }

      if (!v7)
      {
        break;
      }

      --v19;
    }

    if (v19 < j && *v19 == 47)
    {
      ++v19;
    }

    v15 = a1;
    if (v20 > a2)
    {
      __strncpy_chk();
      v15 = &v20[a1 - a2];
    }

    if (v19 > v20)
    {
      __strncpy_chk();
      v15 += v19 - v20;
    }

    if (a4)
    {
      __strcpy_chk();
      v4 = &v15[strlen(a4)];
      v15 = v4 + 1;
      *v4 = 47;
    }

    __strncpy_chk();
    v16 = &v15[i - j];
    if (v14)
    {
      v5 = v16++;
      *v5 = 47;
    }

    *v16 = 0;
    return a1;
  }

  else
  {
    __strncpy_chk();
    a1[a3] = 0;
    return a1;
  }
}

uint64_t *add_pax_attr_int(uint64_t *a1, const char *a2, unint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v3 = format_int(&v7, a3);
  result = add_pax_attr(a1, a2, v3);
  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *add_pax_attr_time(uint64_t *a1, const char *a2, unint64_t a3, unint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v7 = &v13;
  v9 = 0;
  for (i = 10; ; --i)
  {
    v6 = 0;
    if (i > 0)
    {
      v6 = v9 == 0;
    }

    if (!v6)
    {
      break;
    }

    v9 = a4 % 0xA;
    a4 /= 0xAuLL;
  }

  if (i > 0)
  {
    while (i > 0)
    {
      *--v7 = a0123456789[v9];
      v9 = a4 % 0xA;
      a4 /= 0xAuLL;
      --i;
    }

    *--v7 = 46;
  }

  v4 = format_int(v7, a3);
  result = add_pax_attr(a1, a2, v4);
  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t add_pax_acl(_DWORD *a1, uint64_t a2, uint64_t a3, int a4)
{
  if ((archive_entry_acl_types(a2) & 0x3C00) != 0)
  {
    v10 = "SCHILY.acl.ace";
  }

  else if ((a4 & 0x100) != 0)
  {
    v10 = "SCHILY.acl.access";
  }

  else
  {
    if ((a4 & 0x200) == 0)
    {
      return -30;
    }

    v10 = "SCHILY.acl.default";
  }

  v11 = _archive_entry_acl_to_text_l(a2, 0, a4, *(a3 + 112));
  if (v11)
  {
    if (*v11)
    {
      add_pax_attr((a3 + 40), v10, v11);
    }

    free(v11);
    return 0;
  }

  else if (*__error() == 12)
  {
    archive_set_error(a1, 12, "%s %s", v4, v5, v6, v7, v8, "Can't allocate memory for ");
    return -30;
  }

  else
  {
    archive_set_error(a1, 79, "%s %s %s", v4, v5, v6, v7, v8, "Can't translate ");
    return -20;
  }
}

_BYTE *build_gnu_sparse_name(_BYTE *a1, const char *a2)
{
  if (a2 && *a2)
  {
    for (i = &a2[strlen(a2)]; ; --i)
    {
      while (i > a2 && *(i - 1) == 47)
      {
        --i;
      }

      if (i <= (a2 + 1) || *(i - 1) != 46 || *(i - 2) != 47)
      {
        break;
      }
    }

    build_ustar_entry_name(a1, a2, i - a2, "GNUSparseFile.0");
    return a1;
  }

  else
  {
    __strcpy_chk();
    return a1;
  }
}

uint64_t sparse_list_add(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 104))
  {
    v5 = *(*(a1 + 104) + 16) + *(*(a1 + 104) + 24);
  }

  else
  {
    v5 = 0;
  }

  if (v5 < a2 && (v4 = _sparse_list_add_block(a1, v5, a2 - v5, 1)) != 0)
  {
    return v4;
  }

  else
  {
    return _sparse_list_add_block(a1, a2, a3, 0);
  }
}

uint64_t archive_write_pax_header_xattrs(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = archive_entry_xattr_reset(a3);
  while (1)
  {
    if (!v17--)
    {
      return 0;
    }

    v16 = 0;
    v15 = 0;
    __s = 0;
    v13 = 0;
    v12 = 0;
    archive_entry_xattr_next(v18, &v16, &v15, &v12);
    __s = url_encode(v16);
    if (!__s)
    {
      break;
    }

    v10 = strlen(__s);
    v11 = archive_strncpy_l((v19 + 16), __s, v10, *(v19 + 112));
    free(__s);
    if (v11)
    {
      if (v11 != -1)
      {
        archive_set_error(v20, -1, "Error encoding pax extended attribute", v4, v5, v6, v7, v8, v10);
        return -25;
      }

      break;
    }

    v13 = *(v19 + 16);
    archive_write_pax_header_xattr(v19, v13, v15, v12);
  }

  archive_set_error(v20, 12, "Can't allocate memory", v4, v5, v6, v7, v8, v10);
  return -30;
}

_BYTE *build_pax_attribute_name(_BYTE *a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!a2 || !*a2)
  {
    goto LABEL_15;
  }

  for (i = &a2[strlen(a2)]; ; --i)
  {
    while (i > a2 && *(i - 1) == 47)
    {
      --i;
    }

    if (i <= (a2 + 1) || *(i - 1) != 46 || *(i - 2) != 47)
    {
      break;
    }
  }

  if (i == a2 || *a2 == 46 && i == a2 + 1)
  {
LABEL_15:
    __strcpy_chk();
    v6 = a1;
  }

  else
  {
    __strcpy_chk();
    build_ustar_entry_name(a1, a2, i - a2, v7);
    v6 = a1;
  }

  *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t *add_pax_attr_binary(uint64_t *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = strlen(a2) + 2 + a4 + 1;
  v6 = 1;
  v9 = 0;
  for (i = v7; i > 0; i /= 10)
  {
    ++v9;
    v6 *= 10;
  }

  if (v7 + v9 >= v6)
  {
    ++v9;
  }

  v14 = 0;
  v4 = format_int(&v14, v7 + v9);
  archive_strcat(a1, v4);
  archive_strappend_char(a1, 32);
  archive_strcat(a1, a2);
  archive_strappend_char(a1, 61);
  archive_array_append(a1, a3, a4);
  result = archive_strappend_char(a1, 10);
  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t format_int(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    if (a2 == 0x8000000000000000)
    {
      v3 = 0x8000000000000000;
    }

    else
    {
      v3 = -a2;
    }

    v4 = v3;
  }

  else
  {
    v4 = a2;
  }

  do
  {
    *--a1 = a0123456789[v4 % 0xA];
    v4 /= 0xAuLL;
  }

  while (v4);
  if ((a2 & 0x8000000000000000) != 0)
  {
    *--a1 = 45;
  }

  return a1;
}

uint64_t _sparse_list_add_block(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = malloc_type_malloc(0x20uLL, 0x1020040A02120EAuLL);
  if (v5)
  {
    *v5 = 0;
    v5[2] = a4;
    *(v5 + 2) = a2;
    *(v5 + 3) = a3;
    if (*(a1 + 96) && *(a1 + 104))
    {
      **(a1 + 104) = v5;
      *(a1 + 104) = v5;
    }

    else
    {
      *(a1 + 104) = v5;
      *(a1 + 96) = v5;
    }

    return 0;
  }

  else
  {
    return -30;
  }
}

_BYTE *url_encode(_BYTE *a1)
{
  v5 = 0;
  for (i = a1; *i; ++i)
  {
    if (*i < 33 || *i == 127 || *i == 37 || *i == 61)
    {
      if ((-1 - v5) < 4)
      {
        return 0;
      }

      v5 += 3;
    }

    else
    {
      if ((-1 - v5) < 2)
      {
        return 0;
      }

      ++v5;
    }
  }

  v4 = malloc_type_malloc(v5 + 1, 0x100004077774924uLL);
  if (!v4)
  {
    return 0;
  }

  v8 = a1;
  v6 = v4;
  while (*v8)
  {
    if (*v8 < 33 || *v8 == 127 || *v8 == 37 || *v8 == 61)
    {
      *v6 = 37;
      v6[1] = a0123456789abcd_0[(*v8 >> 4) & 0xF];
      v1 = v6 + 2;
      v6 += 3;
      *v1 = a0123456789abcd_0[*v8 & 0xF];
    }

    else
    {
      v2 = v6++;
      *v2 = *v8;
    }

    ++v8;
  }

  *v6 = 0;
  return v4;
}

void archive_write_pax_header_xattr(uint64_t a1, uint64_t a2, char *a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (a2)
  {
    if ((*(v11 + 124) & 2) != 0)
    {
      v4 = base64_encode(v9, v8);
      if (v4)
      {
        v5 = 0;
        v7 = 0;
        v6 = 0;
        archive_strncat(&v5, "LIBARCHIVE.xattr.", 0x11uLL);
        archive_strcat(&v5, v10);
        add_pax_attr((v11 + 40), v5, v4);
        archive_string_free(&v5);
      }

      free(v4);
    }

    if (*(v11 + 124))
    {
      v5 = 0;
      v7 = 0;
      v6 = 0;
      archive_strncat(&v5, "SCHILY.xattr.", 0xDuLL);
      archive_strcat(&v5, v10);
      add_pax_attr_binary((v11 + 40), v5, v9, v8);
      archive_string_free(&v5);
    }
  }
}

_BYTE *base64_encode(char *a1, unint64_t a2)
{
  v11 = a2;
  v6 = malloc_type_malloc((4 * a2 + 2) / 3 + 1, 0x100004077774924uLL);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  while (v11 >= 3)
  {
    v8 = (*a1 << 16) & 0xFF0000 | (a1[1] << 8) & 0xFF00 | a1[2];
    a1 += 3;
    v11 -= 3;
    *v7 = base64_encode_digits[(v8 >> 18) & 0x3F];
    v7[1] = base64_encode_digits[(v8 >> 12) & 0x3F];
    v7[2] = base64_encode_digits[(v8 >> 6) & 0x3F];
    v2 = v7 + 3;
    v7 += 4;
    *v2 = base64_encode_digits[v8 & 0x3F];
  }

  if (v11)
  {
    if (v11 == 1)
    {
      v9 = (*a1 << 16) & 0xFF0000;
      *v7 = base64_encode_digits[(v9 >> 18) & 0x3F];
      v3 = v7 + 1;
      v7 += 2;
      *v3 = base64_encode_digits[(v9 >> 12) & 0x3F];
    }

    else
    {
      v10 = (*a1 << 16) & 0xFF0000 | (a1[1] << 8) & 0xFF00;
      *v7 = base64_encode_digits[(v10 >> 18) & 0x3F];
      v7[1] = base64_encode_digits[(v10 >> 12) & 0x3F];
      v4 = v7 + 2;
      v7 += 3;
      *v4 = base64_encode_digits[(v10 >> 6) & 0x3F];
    }
  }

  *v7 = 0;
  return v6;
}

uint64_t archive_read_format_lha_options(uint64_t a1, const char *a2, const char *a3)
{
  HIDWORD(v9) = -25;
  v11 = **(a1 + 2072);
  if (!strcmp(a2, "hdrcharset"))
  {
    if (a3 && *a3)
    {
      *(v11 + 216) = archive_string_conversion_from_charset(a1, a3, 0);
      if (*(v11 + 216))
      {
        return 0;
      }

      else
      {
        return -30;
      }
    }

    else
    {
      archive_set_error(a1, -1, "lha: hdrcharset option needs a character-set name", v3, v4, v5, v6, v7, v9);
    }

    return v10;
  }

  else
  {
    return -20;
  }
}

uint64_t archive_read_format_lha_read_header(_DWORD *a1, _DWORD **a2)
{
  v80 = a1;
  v79 = a2;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v72 = 0;
  ahead = 0;
  v70 = 0;
  file_header_1 = 0;
  memset(__b, 0, sizeof(__b));
  v67 = 0;
  lha_crc16_init();
  v80[4] = 720896;
  if (!*(v80 + 3))
  {
    *(v80 + 3) = "lha";
  }

  v72 = **(v80 + 259);
  *(v72 + 299) = 0;
  *(v72 + 300) = 0;
  *(v72 + 301) = 0;
  *(v72 + 16) = 0;
  ahead = __archive_read_ahead(v80, 0x16uLL, 0, v2, v3, v4, v5, v6);
  if (!ahead)
  {
    v70 = __archive_read_ahead(v80, 1uLL, 0, v9, v10, v11, v12, v13);
    if (!v70 || !*v70)
    {
      return 1;
    }

    return truncated_error_0(v80, v14, v15, v16, v17, v18, v19, v20);
  }

  v70 = ahead;
  if (!*(v72 + 297) && *v70 == 77 && v70[1] == 90)
  {
    file_header_1 = lha_skip_sfx(v80, v7, v8, v9, v10, v11, v12, v13);
    if (file_header_1 < -20)
    {
      return file_header_1;
    }

    v26 = __archive_read_ahead(v80, 1uLL, 0, v21, v22, v23, v24, v25);
    ahead = v26;
    if (!v26)
    {
      return truncated_error_0(v80, v14, v15, v16, v17, v18, v19, v20);
    }

    v70 = ahead;
  }

  if (!*v70)
  {
    return 1;
  }

  if (lha_check_header_format(ahead))
  {
    archive_set_error(v80, 79, "Bad LHa file", v27, v28, v29, v30, v31, v63);
    return -30;
  }

  *(v72 + 297) = 1;
  *(v72 + 32) = 0;
  *(v72 + 40) = ahead[20];
  *(v72 + 41) = ahead[3];
  *(v72 + 42) = ahead[4];
  *(v72 + 43) = ahead[5];
  *(v72 + 298) = !memcmp((v72 + 41), "lhd", 3uLL);
  *(v72 + 302) = memcmp((v72 + 41), "lh0", 3uLL) && memcmp((v72 + 41), "lz4", 3uLL);
  *(v72 + 48) = 0;
  *(v72 + 56) = 0;
  *(v72 + 64) = 0;
  *(v72 + 72) = 0;
  *(v72 + 80) = 0;
  *(v72 + 88) = 0;
  *(v72 + 96) = 0;
  *(v72 + 104) = 0;
  *(v72 + 112) = 0;
  if (*(v72 + 298))
  {
    v38 = 511;
  }

  else
  {
    v38 = 438;
  }

  *(v72 + 120) = v38;
  *(v72 + 128) = 0;
  *(v72 + 136) = 0;
  *(v72 + 232) = 0;
  *(v72 + 256) = 0;
  *(v72 + 296) = 0;
  if (*(v72 + 216))
  {
    *(v72 + 200) = *(v72 + 216);
    *(v72 + 208) = *(v72 + 216);
  }

  else
  {
    *(v72 + 200) = 0;
    *(v72 + 208) = 0;
  }

  v66 = ahead[20];
  if (ahead[20])
  {
    switch(v66)
    {
      case 1:
        file_header_1 = lha_read_file_header_1(v80, v72, v32, v33, v34, v35, v36, v37);
        break;
      case 2:
        file_header_1 = lha_read_file_header_2(v80, v72, v32, v33, v34, v35, v36, v37);
        break;
      case 3:
        file_header_1 = lha_read_file_header_3(v80, v72, v32, v33, v34, v35, v36, v37);
        break;
      default:
        archive_set_error(v80, 79, "Unsupported LHa header level %d", v33, v34, v35, v36, v37, ahead[20]);
        file_header_1 = -30;
        break;
    }
  }

  else
  {
    file_header_1 = lha_read_file_header_0(v80, v72, v32, v33, v34, v35, v36, v37);
  }

  if (file_header_1 < -20)
  {
    return file_header_1;
  }

  if (!*(v72 + 298) && !*(v72 + 256))
  {
    return truncated_error_0(v80, v14, v15, v16, v17, v18, v19, v20);
  }

  v73 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  memset(__b, 0, 96);
  if (archive_mstring_copy_mbs_len_l(__b, *(v72 + 224), *(v72 + 232), *(v72 + 200)))
  {
    v65 = v80;
    v39 = archive_string_conversion_charset_name(*(v72 + 200));
    archive_set_error(v65, 79, "Pathname cannot be converted from %s to Unicode.", v40, v41, v42, v43, v44, v39);
    file_header_1 = -30;
  }

  else if (archive_mstring_get_wcs(v80, __b, &v67))
  {
    file_header_1 = -30;
  }

  if (file_header_1 == -30)
  {
    goto LABEL_52;
  }

  v74 = 0;
  archive_wstring_concat(&v73, &__b[6]);
  __b[1] = 0;
  __b[10] = 0;
  __b[4] = 0;
  __b[7] = 0;
  if (archive_mstring_copy_mbs_len_l(__b, *(v72 + 248), *(v72 + 256), *(v72 + 208)))
  {
    v64 = v80;
    v45 = archive_string_conversion_charset_name(*(v72 + 208));
    archive_set_error(v64, 79, "Pathname cannot be converted from %s to Unicode.", v46, v47, v48, v49, v50, v45);
    file_header_1 = -30;
  }

  else if (archive_mstring_get_wcs(v80, __b, &v67))
  {
    file_header_1 = -30;
  }

  if (file_header_1 == -30)
  {
LABEL_52:
    archive_mstring_clean(__b);
    archive_wstring_free(&v73);
    archive_wstring_free(&v76);
    return file_header_1;
  }

  else
  {
    archive_wstring_concat(&v73, &__b[6]);
    archive_mstring_clean(__b);
    if ((*(v72 + 120) & 0xF000) == 0xA000)
    {
      if (!lha_parse_linkname(&v76, &v73))
      {
        archive_set_error(v80, 79, "Unknown symlink-name", v51, v52, v53, v54, v55, v63);
        archive_wstring_free(&v73);
        archive_wstring_free(&v76);
        return -25;
      }
    }

    else
    {
      if (*(v72 + 298))
      {
        v56 = 0x4000;
      }

      else
      {
        v56 = 0x8000;
      }

      *(v72 + 120) = *(v72 + 120) & 0xFFF | v56;
    }

    if (*(v72 + 64) & 4) == 0 && (*(v72 + 296))
    {
      *(v72 + 120) &= 0xFF6Du;
    }

    archive_entry_copy_pathname_w(v79, v73);
    archive_wstring_free(&v73);
    if (v77)
    {
      archive_entry_copy_symlink_w(v79, v76);
    }

    else
    {
      archive_entry_set_symlink(v79, 0);
    }

    archive_wstring_free(&v76);
    if (!ahead[20])
    {
      lha_replace_path_separator(v72, v79);
    }

    archive_entry_set_mode(v79, *(v72 + 120));
    archive_entry_set_uid(v79, *(v72 + 128));
    archive_entry_set_gid(v79, *(v72 + 136));
    if (*(v72 + 152))
    {
      archive_entry_set_uname(v79, *(v72 + 144));
    }

    if (*(v72 + 176))
    {
      archive_entry_set_gname(v79, *(v72 + 168));
    }

    if (*(v72 + 64))
    {
      archive_entry_set_birthtime(v79, *(v72 + 72), *(v72 + 80));
      archive_entry_set_ctime(v79, *(v72 + 72), *(v72 + 80));
    }

    else
    {
      archive_entry_unset_birthtime(v79);
      archive_entry_unset_ctime(v79);
    }

    archive_entry_set_mtime(v79, *(v72 + 88), *(v72 + 96));
    if ((*(v72 + 64) & 2) != 0)
    {
      archive_entry_set_atime(v79, *(v72 + 104), *(v72 + 112));
    }

    else
    {
      archive_entry_unset_atime(v79);
    }

    if (*(v72 + 298) || archive_entry_symlink(v79))
    {
      archive_entry_unset_size(v79);
    }

    else
    {
      archive_entry_set_size(v79, *(v72 + 56));
    }

    *(v72 + 8) = *(v72 + 48);
    if ((*(v72 + 8) & 0x8000000000000000) != 0)
    {
      archive_set_error(v80, 79, "Invalid LHa entry size", v57, v58, v59, v60, v61, v63);
      return -30;
    }

    else
    {
      *v72 = 0;
      *(v72 + 24) = 0;
      if (*(v72 + 298) || !*(v72 + 48))
      {
        *(v72 + 300) = 1;
      }

      __snprintf_chk((v72 + 303), 0x40uLL, 0, 0x40uLL, "lha -%c%c%c-", *(v72 + 41), *(v72 + 42), *(v72 + 43));
      *(v80 + 3) = v72 + 303;
      return file_header_1;
    }
  }
}

uint64_t archive_read_format_lha_read_data(uint64_t a1, uint64_t *a2, unint64_t *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = **(a1 + 2072);
  if (*(v10 + 16))
  {
    __archive_read_consume(a1, *(v10 + 16));
    *(v10 + 16) = 0;
  }

  if (*(v10 + 300))
  {
    *a4 = *v10;
    *a3 = 0;
    *a2 = 0;
    return lha_end_of_entry(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else if (*(v10 + 302))
  {
    return lha_read_data_lzh(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    return lha_read_data_none(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t archive_read_format_lha_read_data_skip(uint64_t a1)
{
  v2 = **(a1 + 2072);
  if (*(v2 + 16))
  {
    __archive_read_consume(a1, *(v2 + 16));
    *(v2 + 16) = 0;
  }

  if (*(v2 + 301))
  {
    return 0;
  }

  else if (__archive_read_consume(a1, *(v2 + 8)) < 0)
  {
    return -30;
  }

  else
  {
    *(v2 + 300) = 1;
    *(v2 + 301) = 1;
    return 0;
  }
}

void lha_crc16_init()
{
  if (!lha_crc16_init_crc16init)
  {
    lha_crc16_init_crc16init = 1;
    for (i = 0; i < 0x100; ++i)
    {
      v0 = i;
      for (j = 8; j; --j)
      {
        v0 = (-24575 * (v0 & 1)) ^ (v0 >> 1);
      }

      crc16tbl[i] = v0;
    }

    for (k = 0; k < 0x100; ++k)
    {
      crc16tbl[k + 256] = crc16tbl[LOBYTE(crc16tbl[k])] ^ (crc16tbl[k] >> 8);
    }
  }
}

uint64_t lha_skip_sfx(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = a1;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 4096;
  while (1)
  {
    while (1)
    {
      v16 = __archive_read_ahead(v17, v10, &v11, a4, a5, a6, a7, a8);
      if (v16)
      {
        break;
      }

      v10 >>= 1;
      if (v10 < 25)
      {
        goto LABEL_12;
      }
    }

    if (v11 < 22)
    {
      break;
    }

    v15 = v16;
    v14 = v16 + v11;
    while ((v15 + 22) < v14)
    {
      v13 = lha_check_header_format(v15);
      if (!v13)
      {
        v12 = &v15[-v16];
        __archive_read_consume(v17, &v15[-v16]);
        return 0;
      }

      v15 += v13;
    }

    v12 = &v15[-v16];
    __archive_read_consume(v17, &v15[-v16]);
  }

LABEL_12:
  archive_set_error(v17, 79, "Couldn't find out LHa header", a4, a5, a6, a7, a8, v9);
  return -30;
}

uint64_t lha_read_file_header_0(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  BYTE6(v26) = 0;
  ahead = __archive_read_ahead(a1, 0x18uLL, 0, a4, a5, a6, a7, a8);
  if (!ahead)
  {
    return truncated_error_0(a1, v8, v9, v10, v11, v12, v13, v14);
  }

  *(a2 + 32) = *ahead + 2;
  HIBYTE(v26) = ahead[1];
  *(a2 + 48) = archive_le32dec_8(ahead + 7);
  *(a2 + 56) = archive_le32dec_8(ahead + 11);
  *(a2 + 88) = lha_dos_time(ahead + 15);
  v27 = ahead[21];
  v28 = *(a2 + 32) - 24 - v27;
  if ((v27 > 0xDD || v28 < 0) && v28 != -2)
  {
    archive_set_error(a1, 79, "Invalid LHa header", v15, v16, v17, v18, v19, v26);
    return -30;
  }

  v30 = __archive_read_ahead(a1, *(a2 + 32), 0, v15, v16, v17, v18, v19);
  if (v30)
  {
    *(a2 + 256) = 0;
    archive_strncat((a2 + 248), v30 + 22, v27);
    if ((v28 & 0x80000000) == 0)
    {
      *(a2 + 194) = archive_le16dec_5((v30 + 22 + v27));
      *(a2 + 64) |= 8u;
    }

    BYTE6(v26) = lha_calcsum(0, v30, 2, *(a2 + 32) - 2);
    if (v28 > 0)
    {
      v31 = (v30 + v27 + 24);
      if (*v31 == 85 && v28 == 12)
      {
        *(a2 + 88) = archive_le32dec_8(v31 + 2);
        *(a2 + 120) = archive_le16dec_5(v31 + 6);
        *(a2 + 128) = archive_le16dec_5(v31 + 8);
        *(a2 + 136) = archive_le16dec_5(v31 + 10);
        *(a2 + 64) |= 4u;
      }
    }

    __archive_read_consume(a1, *(a2 + 32));
    if (BYTE6(v26) == HIBYTE(v26))
    {
      return 0;
    }

    else
    {
      archive_set_error(a1, -1, "LHa header sum error", v20, v21, v22, v23, v24, v26);
      return -30;
    }
  }

  else
  {
    return truncated_error_0(a1, v8, v9, v10, v11, v12, v13, v14);
  }
}

uint64_t lha_read_file_header_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a1;
  v27 = a2;
  v25 = 0;
  v23 = 0;
  ahead = __archive_read_ahead(a1, 0x1BuLL, 0, a4, a5, a6, a7, a8);
  if (!ahead)
  {
    return truncated_error_0(v28, v8, v9, v10, v11, v12, v13, v14);
  }

  *(v27 + 32) = *ahead + 2;
  v20 = ahead[1];
  *(v27 + 48) = archive_le32dec_8(ahead + 7);
  *(v27 + 56) = archive_le32dec_8(ahead + 11);
  *(v27 + 88) = lha_dos_time(ahead + 15);
  v21 = ahead[21];
  if (v21 > 0xE6 || ((*(v27 + 32) - 27 - v21) & 0x80000000) != 0)
  {
    goto LABEL_19;
  }

  ahead = __archive_read_ahead(v28, *(v27 + 32), 0, v10, v11, v12, v13, v14);
  if (!ahead)
  {
    return truncated_error_0(v28, v8, v9, v10, v11, v12, v13, v14);
  }

  for (i = 0; i < v21; ++i)
  {
    if (ahead[i + 22] == 255)
    {
      goto LABEL_19;
    }
  }

  *(v27 + 256) = 0;
  archive_strncat((v27 + 248), (ahead + 22), v21);
  *(v27 + 194) = archive_le16dec_5(&ahead[v21 + 22]);
  *(v27 + 64) |= 8u;
  v19 = lha_calcsum(0, ahead, 2, *(v27 + 32) - 2);
  __archive_read_consume(v28, *(v27 + 32) - 2);
  v22 = lha_read_file_extended_header(v28, v27, 0, 2, *(v27 + 48) + 2, &v25, v15, v16);
  if (v22 < -20)
  {
    return v22;
  }

  if (v22 < 0)
  {
    v23 = v22;
  }

  *(v27 + 48) -= v25 - 2;
  if ((*(v27 + 48) & 0x8000000000000000) != 0)
  {
LABEL_19:
    archive_set_error(v28, 79, "Invalid LHa header", v10, v11, v12, v13, v14, v18);
    return -30;
  }

  if (v19 == v20)
  {
    return v23;
  }

  else
  {
    archive_set_error(v28, -1, "LHa header sum error", v10, v11, v12, v13, v14, v18);
    return -30;
  }
}

uint64_t lha_read_file_header_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = a1;
  v41 = a2;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  ahead = __archive_read_ahead(a1, 0x18uLL, 0, a4, a5, a6, a7, a8);
  if (ahead)
  {
    *(v41 + 32) = archive_le16dec_5(ahead);
    *(v41 + 48) = archive_le32dec_8(ahead + 7);
    *(v41 + 56) = archive_le32dec_8(ahead + 11);
    *(v41 + 88) = archive_le32dec_8(ahead + 15);
    *(v41 + 194) = archive_le16dec_5(ahead + 21);
    *(v41 + 64) |= 8u;
    if (*(v41 + 32) >= 0x18uLL)
    {
      v36 = lha_crc16(0, ahead, 0x18uLL);
      __archive_read_consume(v42, 0x18uLL);
      v38 = lha_read_file_extended_header(v42, v41, &v36, 2, *(v41 + 32) - 24, &v39, v20, v21);
      if (v38 >= -20)
      {
        v37 = *(v41 + 32) - (v39 + 24);
        if (v37 > 0)
        {
          ahead = __archive_read_ahead(v42, v37, 0, v22, v23, v24, v25, v26);
          if (!ahead)
          {
            return truncated_error_0(v42, v27, v28, v29, v30, v31, v32, v33);
          }

          v36 = lha_crc16(v36, ahead, v37);
          __archive_read_consume(v42, v37);
        }

        if (v36 == *(v41 + 192))
        {
          return v38;
        }

        else
        {
          archive_set_error(v42, 79, "LHa header CRC error", v22, v23, v24, v25, v26, v35);
          return -30;
        }
      }

      else
      {
        return v38;
      }
    }

    else
    {
      archive_set_error(v42, 79, "Invalid LHa header size", v15, v16, v17, v18, v19, v35);
      return -30;
    }
  }

  else
  {
    return truncated_error_0(v42, v8, v9, v10, v11, v12, v13, v14);
  }
}

uint64_t lha_read_file_header_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a1;
  v33 = a2;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  ahead = __archive_read_ahead(a1, 0x1CuLL, 0, a4, a5, a6, a7, a8);
  if (ahead)
  {
    if (archive_le16dec_5(ahead) == 4 && (*(v33 + 32) = archive_le32dec_8(ahead + 24), *(v33 + 48) = archive_le32dec_8(ahead + 7), *(v33 + 56) = archive_le32dec_8(ahead + 11), *(v33 + 88) = archive_le32dec_8(ahead + 15), *(v33 + 194) = archive_le16dec_5(ahead + 21), *(v33 + 64) |= 8u, *(v33 + 32) >= 0x20uLL))
    {
      v29 = lha_crc16(0, ahead, 0x1CuLL);
      __archive_read_consume(v34, 0x1CuLL);
      v30 = lha_read_file_extended_header(v34, v33, &v29, 4, *(v33 + 32) - 28, &v31, v20, v21);
      if (v30 >= -20)
      {
        if (v29 == *(v33 + 192))
        {
          return v30;
        }

        else
        {
          archive_set_error(v34, 79, "LHa header CRC error", v22, v23, v24, v25, v26, 0x1CuLL);
          return -30;
        }
      }

      else
      {
        return v30;
      }
    }

    else
    {
      archive_set_error(v34, 79, "Invalid LHa header", v15, v16, v17, v18, v19, v28);
      return -30;
    }
  }

  else
  {
    return truncated_error_0(v34, v8, v9, v10, v11, v12, v13, v14);
  }
}

uint64_t lha_parse_linkname(void *a1, uint64_t a2)
{
  v4 = wcschr(*a2, 124);
  if (v4)
  {
    v3 = wcslen(v4 + 1);
    a1[1] = 0;
    archive_wstrncat(a1, v4 + 1, v3);
    *v4 = 0;
    *(a2 + 8) = wcslen(*a2);
    return 1;
  }

  else
  {
    return 0;
  }
}

const __int32 *lha_replace_path_separator(uint64_t a1, _DWORD **a2)
{
  v7 = archive_entry_pathname_w(a2);
  if (v7)
  {
    *(a1 + 280) = 0;
    v4 = wcslen(v7);
    archive_wstrncat((a1 + 272), v7, v4);
    for (i = 0; i < *(a1 + 280); ++i)
    {
      if (*(*(a1 + 272) + 4 * i) == 92)
      {
        *(*(a1 + 272) + 4 * i) = 47;
      }
    }

    archive_entry_copy_pathname_w(a2, *(a1 + 272));
  }

  result = archive_entry_symlink_w(a2);
  v8 = result;
  if (result)
  {
    *(a1 + 280) = 0;
    v3 = wcslen(result);
    archive_wstrncat((a1 + 272), v8, v3);
    for (j = 0; j < *(a1 + 280); ++j)
    {
      if (*(*(a1 + 272) + 4 * j) == 92)
      {
        *(*(a1 + 272) + 4 * j) = 47;
      }
    }

    return archive_entry_copy_symlink_w(a2, *(a1 + 272));
  }

  return result;
}

time_t lha_dos_time(unsigned __int8 *a1)
{
  v5 = a1;
  v4 = 0;
  v3 = 0;
  memset(&__b, 0, sizeof(__b));
  v4 = archive_le16dec_5(v5);
  v3 = archive_le16dec_5(v5 + 2);
  memset(&__b, 0, sizeof(__b));
  __b.tm_year = ((v3 >> 9) & 0x7F) + 80;
  __b.tm_mon = ((v3 >> 5) & 0xF) - 1;
  __b.tm_mday = v3 & 0x1F;
  __b.tm_hour = (v4 >> 11) & 0x1F;
  __b.tm_min = (v4 >> 5) & 0x3F;
  __b.tm_sec = (2 * v4) & 0x3E;
  __b.tm_isdst = -1;
  return mktime(&__b);
}

uint64_t lha_calcsum(unsigned __int8 a1, uint64_t a2, int a3, uint64_t a4)
{
  v6 = (a2 + a3);
  while (a4)
  {
    v4 = v6++;
    a1 += *v4;
    --a4;
  }

  return a1;
}

uint64_t lha_read_file_extended_header(_DWORD *a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v74 = a1;
  v73 = a2;
  v72 = a3;
  v71 = a4;
  v70 = a5;
  v69 = a6;
  ahead = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  i = 0;
  v63 = 0;
  *a6 = a4;
  while (1)
  {
    ahead = __archive_read_ahead(v74, v71, 0, a4, a5, a6, a7, a8);
    if (!ahead)
    {
      return truncated_error_0(v74, v8, v9, v10, v11, v12, v13, v14);
    }

    v66 = v71 == 2 ? archive_le16dec_5(ahead) : archive_le32dec_8(ahead);
    if (!v66)
    {
      break;
    }

    if (*v69 + v66 > v70 || v66 <= v71)
    {
      goto LABEL_116;
    }

    ahead = __archive_read_ahead(v74, v66, 0, v10, v11, v12, v13, v14);
    if (!ahead)
    {
      return truncated_error_0(v74, v8, v9, v10, v11, v12, v13, v14);
    }

    *v69 += v66;
    v67 = ahead;
    v63 = ahead[v71];
    v65 = v66 - (v71 + 1);
    v67 = &ahead[v71 + 1];
    if (v72 && v63)
    {
      v16 = lha_crc16(*v72, ahead, v66);
      *v72 = v16;
    }

    if (v63)
    {
      switch(v63)
      {
        case 1u:
          if (v65)
          {
            if (!*v67)
            {
              goto LABEL_116;
            }

            *(v73 + 256) = 0;
            archive_strncat((v73 + 248), v67, v65);
          }

          else
          {
            *(v73 + 256) = 0;
          }

          break;
        case 2u:
          if (!v65 || !*v67)
          {
            goto LABEL_116;
          }

          *(v73 + 232) = 0;
          archive_strncat((v73 + 224), v67, v65);
          for (i = 0; i < *(v73 + 232); ++i)
          {
            if (*(*(v73 + 224) + i) == 255)
            {
              *(*(v73 + 224) + i) = 47;
            }
          }

          if (*(*(v73 + 224) + *(v73 + 232) - 1) != 47)
          {
            goto LABEL_116;
          }

          break;
        case 0x40u:
          if (v65 == 2)
          {
            v23 = archive_le16dec_5(v67);
            *(v73 + 296) = v23;
          }

          break;
        case 0x41u:
          if (v65 == 24)
          {
            v24 = archive_le64dec_3(v67);
            v25 = lha_win_time(v24, (v73 + 80));
            *(v73 + 72) = v25;
            v67 += 8;
            v26 = archive_le64dec_3(v67);
            v27 = lha_win_time(v26, (v73 + 96));
            *(v73 + 88) = v27;
            v67 += 8;
            v28 = archive_le64dec_3(v67);
            v29 = lha_win_time(v28, (v73 + 112));
            *(v73 + 104) = v29;
            *(v73 + 64) |= 3u;
          }

          break;
        case 0x42u:
          if (v65 == 16)
          {
            v30 = archive_le64dec_3(v67);
            *(v73 + 48) = v30;
            v67 += 8;
            v31 = archive_le64dec_3(v67);
            *(v73 + 56) = v31;
          }

          break;
        default:
          if (v63 != 67)
          {
            switch(v63)
            {
              case 'D':
                if (v65)
                {
                  if ((v65 & 1) != 0 || !*v67)
                  {
                    goto LABEL_116;
                  }

                  *(v73 + 256) = 0;
                  archive_array_append((v73 + 248), v67, v65);
                  v21 = archive_string_conversion_from_charset(v74, "UTF-16LE", 1);
                  *(v73 + 208) = v21;
                  if (!*(v73 + 208))
                  {
                    return -30;
                  }
                }

                else
                {
                  *(v73 + 256) = 0;
                }

                break;
              case 'E':
                if (!v65 || (v65 & 1) != 0 || !*v67)
                {
                  goto LABEL_116;
                }

                *(v73 + 232) = 0;
                archive_array_append((v73 + 224), v67, v65);
                v22 = archive_string_conversion_from_charset(v74, "UTF-16LE", 1);
                *(v73 + 200) = v22;
                if (!*(v73 + 200))
                {
                  return -30;
                }

                v62 = 0;
                v61 = 1;
                v62 = archive_be16dec_1(&v61) == 1 ? 12032 : 47;
                v60 = *(v73 + 224);
                for (i = 0; i < *(v73 + 232) / 2uLL; ++i)
                {
                  if (*(v60 + 2 * i) == 0xFFFF)
                  {
                    *(v60 + 2 * i) = v62;
                  }
                }

                if (*(v60 + 2 * (*(v73 + 232) / 2uLL - 1)) != v62)
                {
LABEL_116:
                  archive_set_error(v74, 79, "Invalid extended LHa header", v10, v11, v12, v13, v14, v57);
                  return -30;
                }

                break;
              case 'F':
                if (v65 == 4)
                {
                  memset(v59, 0, sizeof(v59));
                  if (archive_le32dec_8(v67) == 65001)
                  {
                    v58 = "UTF-8";
                  }

                  else
                  {
                    v32 = archive_le32dec_8(v67);
                    archive_string_sprintf(v59, "CP%d", v33, v34, v35, v36, v37, v38, v32);
                    v58 = v59[0];
                  }

                  v39 = archive_string_conversion_from_charset(v74, v58, 1);
                  *(v73 + 200) = v39;
                  v40 = archive_string_conversion_from_charset(v74, v58, 1);
                  *(v73 + 208) = v40;
                  archive_string_free(v59);
                  if (!*(v73 + 200))
                  {
                    return -30;
                  }

                  if (!*(v73 + 208))
                  {
                    return -30;
                  }
                }

                break;
              case 'P':
                if (v65 == 2)
                {
                  v41 = archive_le16dec_5(v67);
                  *(v73 + 120) = v41;
                  *(v73 + 64) |= 4u;
                }

                break;
              case 'Q':
                if (v65 == 4)
                {
                  v42 = archive_le16dec_5(v67);
                  *(v73 + 136) = v42;
                  v43 = archive_le16dec_5(v67 + 2);
                  *(v73 + 128) = v43;
                }

                break;
              case 'R':
                if (v65)
                {
                  *(v73 + 176) = 0;
                  archive_strncat((v73 + 168), v67, v65);
                }

                break;
              case 'S':
                if (v65)
                {
                  *(v73 + 152) = 0;
                  archive_strncat((v73 + 144), v67, v65);
                }

                break;
              case 'T':
                if (v65 == 4)
                {
                  v44 = archive_le32dec_8(v67);
                  *(v73 + 88) = v44;
                }

                break;
              case '\x7F':
                if (v65 == 16)
                {
                  v45 = archive_le16dec_5(v67);
                  *(v73 + 296) = v45;
                  v46 = archive_le16dec_5(v67 + 2);
                  *(v73 + 120) = v46;
                  v47 = archive_le16dec_5(v67 + 4);
                  *(v73 + 136) = v47;
                  v48 = archive_le16dec_5(v67 + 6);
                  *(v73 + 128) = v48;
                  v49 = archive_le32dec_8(v67 + 8);
                  *(v73 + 72) = v49;
                  v50 = archive_le32dec_8(v67 + 12);
                  *(v73 + 104) = v50;
                  *(v73 + 64) |= 7u;
                }

                break;
              default:
                if (v63 == 255 && v65 == 20)
                {
                  v51 = archive_le32dec_8(v67);
                  *(v73 + 120) = v51;
                  v52 = archive_le32dec_8(v67 + 4);
                  *(v73 + 136) = v52;
                  v53 = archive_le32dec_8(v67 + 8);
                  *(v73 + 128) = v53;
                  v54 = archive_le32dec_8(v67 + 12);
                  *(v73 + 72) = v54;
                  v55 = archive_le32dec_8(v67 + 16);
                  *(v73 + 104) = v55;
                  *(v73 + 64) |= 7u;
                }

                break;
            }
          }

          break;
      }
    }

    else if (v65 >= 2)
    {
      v17 = archive_le16dec_5(v67);
      *(v73 + 192) = v17;
      if (v72)
      {
        v18 = lha_crc16(*v72, ahead, v66 - v65);
        *v72 = v18;
        v19 = lha_crc16(*v72, lha_read_file_extended_header_zeros, 2uLL);
        *v72 = v19;
        v20 = lha_crc16(*v72, v67 + 2, v65 - 2);
        *v72 = v20;
      }
    }

    __archive_read_consume(v74, v66);
  }

  if (v72)
  {
    v15 = lha_crc16(*v72, ahead, v71);
    *v72 = v15;
  }

  __archive_read_consume(v74, v71);
  return 0;
}

uint64_t lha_crc16(unsigned __int16 a1, _BYTE *a2, unint64_t a3)
{
  v10 = a1;
  v9 = a3;
  v7 = a2;
  if (a3)
  {
    if (a2)
    {
      v7 = a2 + 1;
      v10 = crc16tbl[(a1 ^ *a2)] ^ (a1 >> 8);
      v9 = a3 - 1;
    }

    v6 = v7;
    while (v9 >= 8)
    {
      v11 = crc16tbl[(v10 ^ *v6) + 256] ^ crc16tbl[(v10 ^ *v6) >> 8] ^ *(v6 + 1);
      v12 = crc16tbl[v11 + 256] ^ crc16tbl[v11 >> 8] ^ *(v6 + 2);
      v3 = v6 + 6;
      v6 += 8;
      v13 = crc16tbl[v12 + 256] ^ crc16tbl[v12 >> 8] ^ *v3;
      v10 = crc16tbl[v13 + 256] ^ crc16tbl[v13 >> 8];
      v9 -= 8;
    }

    v8 = v6;
    while (v9)
    {
      v4 = v8++;
      v10 = crc16tbl[(v10 ^ *v4)] ^ (v10 >> 8);
      --v9;
    }

    return v10;
  }

  else
  {
    return a1;
  }
}

unint64_t lha_win_time(unint64_t a1, void *a2)
{
  if (a1 < 0x19DB1DED53E8000)
  {
    if (a2)
    {
      *a2 = 0;
    }

    return 0;
  }

  else
  {
    v3 = a1 - 116444736000000000;
    if (a2)
    {
      *a2 = 100 * (v3 % 0x989680);
    }

    return v3 / 0x989680;
  }
}

uint64_t lha_end_of_entry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = **(a1 + 2072);
  v10 = 1;
  if (!*(v11 + 301))
  {
    if ((*(v11 + 64) & 8) != 0 && *(v11 + 194) != *(v11 + 24))
    {
      archive_set_error(a1, -1, "LHa data CRC error", a4, a5, a6, a7, a8, v9);
      v10 = -20;
    }

    *(v11 + 301) = 1;
  }

  return v10;
}

uint64_t lha_read_data_lzh(uint64_t a1, _BYTE **a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a1;
  v32 = a2;
  v31 = a3;
  v30 = a4;
  v29 = **(a1 + 2072);
  v28 = 0;
  if (!*(v29 + 299))
  {
    v27 = lzh_decode_init(v29 + 368, (v29 + 41));
    if (v27 == -25)
    {
      *v32 = 0;
      *v31 = 0;
      *v30 = 0;
      v24 = *(v29 + 42);
      v25 = *(v29 + 43);
      archive_set_error(v33, 79, "Unsupported lzh compression method -%c%c%c-", a4, a5, a6, a7, a8, *(v29 + 41));
      archive_read_format_lha_read_data_skip(v33);
      return -20;
    }

    if (v27)
    {
      archive_set_error(v33, 12, "Couldn't allocate memory for lzh decompression", a4, a5, a6, a7, a8, v23);
      return -30;
    }

    *(v29 + 299) = 1;
    *(v29 + 400) = 0;
    *(v29 + 408) = 0;
  }

  v8 = __archive_read_ahead(v33, 1uLL, &v28, a4, a5, a6, a7, a8);
  *(v29 + 368) = v8;
  if (v28 > 0)
  {
    if (v28 > *(v29 + 8))
    {
      v28 = *(v29 + 8);
    }

    *(v29 + 376) = v28;
    *(v29 + 384) = 0;
    *(v29 + 400) = 0;
    v26 = lzh_decode(v29 + 368, v28 == *(v29 + 8));
    if (v26)
    {
      if (v26 != 1)
      {
        archive_set_error(v33, -1, "Bad lzh data", v16, v17, v18, v19, v20, v23);
        return -25;
      }

      *(v29 + 300) = 1;
    }

    *(v29 + 16) = *(v29 + 384);
    *(v29 + 8) -= *(v29 + 384);
    if (*(v29 + 400))
    {
      *v30 = *v29;
      *v31 = *(v29 + 400);
      *v32 = *(v29 + 392);
      v21 = lha_crc16(*(v29 + 24), *v32, *v31);
      *(v29 + 24) = v21;
      *v29 += *v31;
    }

    else
    {
      *v30 = *v29;
      *v31 = 0;
      *v32 = 0;
      if (*(v29 + 300))
      {
        return lha_end_of_entry(v33, v14, v15, v16, v17, v18, v19, v20);
      }
    }

    return 0;
  }

  archive_set_error(v33, 79, "Truncated LHa file body", v9, v10, v11, v12, v13, v23);
  return -30;
}

uint64_t lha_read_data_none(uint64_t a1, uint64_t *a2, int64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v18 = **(a1 + 2072);
  v17 = 0;
  if (*(v18 + 8))
  {
    v8 = __archive_read_ahead(v22, 1uLL, &v17, a4, a5, a6, a7, a8);
    *v21 = v8;
    if (v17 > 0)
    {
      if (v17 > *(v18 + 8))
      {
        v17 = *(v18 + 8);
      }

      v14 = lha_crc16(*(v18 + 24), *v21, v17);
      *(v18 + 24) = v14;
      *v20 = v17;
      *v19 = *v18;
      *v18 += v17;
      *(v18 + 8) -= v17;
      if (!*(v18 + 8))
      {
        *(v18 + 300) = 1;
      }

      *(v18 + 16) = v17;
      return 0;
    }

    else
    {
      archive_set_error(v22, 79, "Truncated LHa file data", v9, v10, v11, v12, v13, v16);
      return -30;
    }
  }

  else
  {
    *v21 = 0;
    *v20 = 0;
    *v19 = *v18;
    *(v18 + 300) = 1;
    return 0;
  }
}

uint64_t lzh_decode_init(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 48) || (*(a1 + 48) = malloc_type_calloc(1uLL, 0x158uLL, 0x103004074F3FEA5uLL)) != 0)
  {
    v8 = *(a1 + 48);
    *(v8 + 340) = -25;
    if (a2 && *a2 == 108 && a2[1] == 104)
    {
      v6 = a2[2];
      switch(v6)
      {
        case '5':
          v7 = 13;
          break;
        case '6':
          v7 = 15;
          break;
        case '7':
          v7 = 16;
          break;
        default:
          return -25;
      }

      *(v8 + 340) = -30;
      *(v8 + 4) = 0x20000;
      *(v8 + 8) = *(v8 + 4) - 1;
      if (*(v8 + 16) || (*(v8 + 16) = malloc_type_malloc(*(v8 + 4), 0xCAA4F8B8uLL)) != 0)
      {
        v2 = *(v8 + 16) + *(v8 + 4);
        __memset_chk();
        *(v8 + 24) = 0;
        *v8 = 0;
        *(v8 + 316) = v7 + 1;
        v5 = 1;
        if (v7 != 15)
        {
          v5 = v7 == 16;
        }

        if (v5)
        {
          v3 = 5;
        }

        else
        {
          v3 = 4;
        }

        *(v8 + 320) = v3;
        *(v8 + 324) = 19;
        *(v8 + 328) = 5;
        *(v8 + 40) = 0;
        *(v8 + 48) = 0;
        if (lzh_huffman_init(v8 + 56, 0x1FEuLL, 16))
        {
          return -30;
        }

        else
        {
          *(v8 + 64) = 9;
          if (lzh_huffman_init(v8 + 184, 0x13uLL, 16))
          {
            return -30;
          }

          else
          {
            *(v8 + 340) = 0;
            return 0;
          }
        }
      }

      else
      {
        return -30;
      }
    }

    else
    {
      return -25;
    }
  }

  else
  {
    return -30;
  }
}

uint64_t lzh_decode(uint64_t a1, int a2)
{
  v5 = *(a1 + 48);
  if (*(v5 + 340))
  {
    return *(v5 + 340);
  }

  else
  {
    v4 = *(a1 + 8);
    do
    {
      if (*v5 >= 9)
      {
        blocks = lzh_decode_blocks(a1, a2);
      }

      else
      {
        blocks = lzh_read_blocks(a1, a2);
      }
    }

    while (blocks == 100);
    *(a1 + 16) += v4 - *(a1 + 8);
    return blocks;
  }
}

uint64_t lzh_huffman_init(uint64_t a1, size_t a2, int a3)
{
  v6 = a2;
  if (*(a1 + 80) || (*(a1 + 80) = malloc_type_malloc(a2, 0x100004077774924uLL)) != 0)
  {
    if (*(a1 + 112) || (a3 >= 10 ? (v4 = 10) : (v4 = a3), (*(a1 + 112) = malloc_type_malloc(2 * (1 << v4), 0x1000040BDFB0063uLL)) != 0))
    {
      if (*(a1 + 120) || a3 <= 10 || (*(a1 + 104) = 1 << (a3 - 6), (*(a1 + 120) = malloc_type_malloc(4 * *(a1 + 104), 0x100004052888210uLL)) != 0))
      {
        *a1 = v6;
        *(a1 + 96) = a3;
        return 0;
      }

      else
      {
        return -30;
      }
    }

    else
    {
      return -30;
    }
  }

  else
  {
    return -30;
  }
}

uint64_t lzh_read_blocks(uint64_t a1, int a2)
{
  v21 = *(a1 + 48);
  v20 = (v21 + 10);
  while (1)
  {
    v11 = *v21;
    if (!*v21)
    {
      break;
    }

    switch(v11)
    {
      case 1:
        goto LABEL_23;
      case 2:
LABEL_29:
        if (v21[47])
        {
          if (v21[47] > v21[46])
          {
            goto LABEL_112;
          }

          v21[84] = 0;
          __memset_chk();
          if (v21[47] >= 3 && v21[46] != v21[79])
          {
            goto LABEL_43;
          }

          *v21 = 4;
        }

        else
        {
          if (v21[12] < v21[48] && !lzh_br_fillup(a1, v20) && v21[12] < v21[48])
          {
            if (!a2)
            {
              *v21 = 2;
              return 0;
            }

            goto LABEL_112;
          }

          if (!lzh_make_fake_table((v21 + 46), (*(v21 + 5) >> (v21[12] - v21[48])) & cache_masks_0[v21[48]]))
          {
            goto LABEL_112;
          }

          v21[12] -= v21[48];
          if (v21[83])
          {
            *v21 = 9;
          }

          else
          {
            *v21 = 5;
          }
        }

        break;
      case 3:
LABEL_43:
        v21[84] = lzh_read_pt_bitlen(a1, v21[84], 3);
        if (v21[84] < 3)
        {
          if ((v21[84] & 0x80000000) == 0 && !a2)
          {
            *v21 = 3;
            return 0;
          }

          goto LABEL_112;
        }

        if (v21[12] < 2 && !lzh_br_fillup(a1, v20) && v21[12] < 2)
        {
          if (!a2)
          {
            *v21 = 3;
            return 0;
          }

          goto LABEL_112;
        }

        v15 = (*(v21 + 5) >> (v21[12] - 2)) & 3;
        v21[12] -= 2;
        if (v15 > v21[47] - 3)
        {
          goto LABEL_112;
        }

        for (i = 3; ; ++i)
        {
          v2 = v15--;
          if (v2 <= 0)
          {
            break;
          }

          v3 = i;
          *(*(v21 + 33) + v3) = 0;
        }

        v21[84] = i;
LABEL_58:
        v21[84] = lzh_read_pt_bitlen(a1, v21[84], v21[47]);
        if (v21[84] < v21[47])
        {
          if ((v21[84] & 0x80000000) == 0 && !a2)
          {
            *v21 = 4;
            return 0;
          }

          goto LABEL_112;
        }

        if (!lzh_make_huffman_table((v21 + 46)))
        {
          goto LABEL_112;
        }

        if (!v21[83])
        {
          goto LABEL_67;
        }

        *v21 = 9;
        break;
      case 4:
        goto LABEL_58;
      case 5:
LABEL_67:
        if (v21[12] < v21[16] && !lzh_br_fillup(a1, v20) && v21[12] < v21[16])
        {
          if (!a2)
          {
            *v21 = 5;
            return 0;
          }

          goto LABEL_112;
        }

        v21[15] = ((*(v21 + 5) >> (v21[12] - v21[16])) & cache_masks_0[v21[16]]);
        v21[12] -= v21[16];
LABEL_73:
        if (v21[15])
        {
          if (v21[15] <= v21[14])
          {
            v21[84] = 0;
            __memset_chk();
LABEL_83:
            v14 = v21[84];
            while (v14 < v21[15])
            {
              if (v21[12] < v21[68] && !lzh_br_fillup(a1, v20) && v21[12] < v21[68])
              {
                if (a2)
                {
                  goto LABEL_112;
                }

                v21[84] = v14;
                *v21 = 7;
                return 0;
              }

              v16 = lzh_decode_huffman((v21 + 46), ((*(v21 + 5) >> (v21[12] - v21[68])) & cache_masks_0[v21[68]]));
              if (v16 <= 2)
              {
                if (v16)
                {
                  if (v16 == 1)
                  {
                    v7 = 4;
                  }

                  else
                  {
                    v7 = 9;
                  }

                  v12 = v7;
                  if (v21[12] < *(*(v21 + 33) + v16) + v7 && !lzh_br_fillup(a1, v20) && v21[12] < *(*(v21 + 33) + v16) + v12)
                  {
                    if (a2)
                    {
                      goto LABEL_112;
                    }

                    v21[84] = v14;
                    *v21 = 7;
                    return 0;
                  }

                  v21[12] -= *(*(v21 + 33) + v16);
                  v18 = ((*(v21 + 5) >> (v21[12] - v12)) & cache_masks_0[v12]);
                  v21[12] -= v12;
                  if (v12 == 4)
                  {
                    v8 = 3;
                  }

                  else
                  {
                    v8 = 20;
                  }

                  v19 = v18 + v8;
                  if (v14 + v19 > v21[15])
                  {
                    goto LABEL_112;
                  }

                  v9 = *(v21 + 17);
                  __memset_chk();
                  v14 += v19;
                }

                else
                {
                  v21[12] -= **(v21 + 33);
                  v6 = v14++;
                  *(*(v21 + 17) + v6) = 0;
                }
              }

              else
              {
                v21[12] -= *(*(v21 + 33) + v16);
                v17 = v16 - 2;
                ++v21[v17 + 17];
                v5 = v14++;
                *(*(v21 + 17) + v5) = v17;
              }
            }

            if (v14 <= v21[15] && lzh_make_huffman_table((v21 + 14)))
            {
              goto LABEL_110;
            }
          }

LABEL_112:
          v21[85] = -25;
          return -25;
        }

        if (v21[12] < v21[16] && !lzh_br_fillup(a1, v20) && v21[12] < v21[16])
        {
          if (!a2)
          {
            *v21 = 6;
            return 0;
          }

          goto LABEL_112;
        }

        if (!lzh_make_fake_table((v21 + 14), (*(v21 + 5) >> (v21[12] - v21[16])) & cache_masks_0[v21[16]]))
        {
          goto LABEL_112;
        }

        v21[12] -= v21[16];
        *v21 = 8;
        break;
      case 6:
        goto LABEL_73;
      case 7:
        goto LABEL_83;
      case 8:
LABEL_110:
        v21[46] = v21[79];
        v21[48] = v21[80];
        v21[83] = 1;
        *v21 = 1;
        break;
      case 9:
        return 100;
    }
  }

  if (v21[12] >= 16 || lzh_br_fillup(a1, v20))
  {
    v21[78] = (*(v21 + 5) >> (v21[12] - 16));
    if (!v21[78])
    {
      goto LABEL_112;
    }

    v21[12] -= 16;
    v21[46] = v21[81];
    v21[48] = v21[82];
    v21[83] = 0;
LABEL_23:
    if (v21[12] < v21[48] && !lzh_br_fillup(a1, v20) && v21[12] < v21[48])
    {
      if (!a2)
      {
        *v21 = 1;
        return 0;
      }

      goto LABEL_112;
    }

    v21[47] = ((*(v21 + 5) >> (v21[12] - v21[48])) & cache_masks_0[v21[48]]);
    v21[12] -= v21[48];
    goto LABEL_29;
  }

  if (!a2)
  {
    return 0;
  }

  if (v21[12] >= 8)
  {
    goto LABEL_112;
  }

  if (v21[6] <= 0)
  {
    return 1;
  }

  else
  {
    lzh_emit_window(a1, v21[6]);
    v21[6] = 0;
    return 0;
  }
}

uint64_t lzh_decode_blocks(uint64_t a1, int a2)
{
  v27 = a1;
  v26 = a2;
  v25 = *(a1 + 48);
  v24 = 0uLL;
  v24 = *(v25 + 40);
  v23 = v25 + 56;
  v22 = v25 + 184;
  v21 = *(v25 + 16);
  v20 = *(v25 + 136);
  v19 = *(v25 + 264);
  v18 = *(v25 + 312);
  v16 = *(v25 + 32);
  i = *(v25 + 28);
  v14 = *(v25 + 24);
  v13 = *(v25 + 8);
  v12 = *(v25 + 4);
  v11 = *(v25 + 144);
  v10 = *(v25 + 272);
  v9 = *v25;
  while (1)
  {
LABEL_2:
    if (v9 == 9)
    {
      do
      {
        if (!v18)
        {
          *v25 = 0;
          *(v25 + 40) = v24;
          *(v25 + 312) = 0;
          *(v25 + 24) = v14;
          *(v25 + 28) = 0;
          return 100;
        }

        if (SDWORD2(v24) >= v11 || lzh_br_fillup(v27, &v24) || SDWORD2(v24) >= v11)
        {
          v17 = lzh_decode_huffman(v23, (v24 >> (BYTE8(v24) - v11)) & cache_masks_0[v11]);
          DWORD2(v24) -= *(v20 + v17);
        }

        else
        {
          if (!v26)
          {
            goto LABEL_59;
          }

          v17 = lzh_decode_huffman(v23, ((v24 << (v11 - BYTE8(v24))) & cache_masks_0[v11]));
          DWORD2(v24) -= *(v20 + v17);
          if ((DWORD2(v24) & 0x80000000) != 0)
          {
            goto LABEL_58;
          }
        }

        --v18;
        if (v17 > 255)
        {
          v16 = v17 - 253;
          goto LABEL_21;
        }

        *(v21 + v14++) = v17;
      }

      while (v14 < v12);
      v14 = 0;
      lzh_emit_window(v27, v12);
      goto LABEL_59;
    }

    if (v9 == 10)
    {
      break;
    }

    if (v9 == 11)
    {
      goto LABEL_29;
    }

    if (v9 == 12)
    {
      goto LABEL_37;
    }
  }

LABEL_21:
  if (SDWORD2(v24) >= v10 || lzh_br_fillup(v27, &v24) || SDWORD2(v24) >= v10)
  {
    i = lzh_decode_huffman(v22, (v24 >> (BYTE8(v24) - v10)) & cache_masks_0[v10]);
    DWORD2(v24) -= *(v19 + i);
    goto LABEL_29;
  }

  if (v26)
  {
    i = lzh_decode_huffman(v22, ((v24 << (v10 - BYTE8(v24))) & cache_masks_0[v10]));
    DWORD2(v24) -= *(v19 + i);
    if ((DWORD2(v24) & 0x80000000) != 0)
    {
      goto LABEL_58;
    }

LABEL_29:
    if (i > 1)
    {
      v8 = i - 1;
      if (SDWORD2(v24) < i - 1 && !lzh_br_fillup(v27, &v24) && SDWORD2(v24) < v8)
      {
        if (!v26)
        {
          v9 = 11;
          *(v25 + 32) = v16;
          *(v25 + 28) = i;
          goto LABEL_59;
        }

LABEL_58:
        *(v25 + 340) = -25;
        return -25;
      }

      i = (1 << v8) + ((v24 >> (BYTE8(v24) - v8)) & cache_masks_0[v8]);
      DWORD2(v24) -= v8;
    }

    for (i = (v14 - i - 1) & v13; ; i = (i + v7) & v13)
    {
LABEL_37:
      v7 = v16;
      if (i <= v14)
      {
        if (v16 > v12 - v14)
        {
          v7 = v12 - v14;
        }
      }

      else if (v16 > v12 - i)
      {
        v7 = v12 - i;
      }

      if (i + v7 >= v14 && v14 + v7 >= i)
      {
        v5 = v21 + v14;
        v6 = v21 + i;
        for (j = 0; j < v7 - 1; j = v4 + 1)
        {
          *(v5 + j) = *(v6 + j);
          v4 = j + 1;
          *(v5 + v4) = *(v6 + v4);
        }

        if (j < v7)
        {
          *(v5 + j) = *(v6 + j);
        }
      }

      else
      {
        __memcpy_chk();
      }

      v14 += v7;
      if (v14 == v12)
      {
        break;
      }

      if (v16 <= v7)
      {
        v9 = 9;
        goto LABEL_2;
      }

      v16 -= v7;
    }

    v14 = 0;
    lzh_emit_window(v27, v12);
    if (v16 > v7)
    {
      v9 = 12;
      *(v25 + 32) = v16 - v7;
      *(v25 + 28) = (i + v7) & v13;
    }

    else
    {
      v9 = 9;
    }

    goto LABEL_59;
  }

  v9 = 10;
  *(v25 + 32) = v16;
LABEL_59:
  *(v25 + 40) = v24;
  *(v25 + 312) = v18;
  *v25 = v9;
  *(v25 + 24) = v14;
  return 0;
}

uint64_t lzh_br_fillup(_DWORD *a1, unint64_t *a2)
{
  for (i = 64 - *(a2 + 2); ; i -= 8)
  {
    v5 = i >> 3;
    if (a1[2] >= i >> 3)
    {
      switch(v5)
      {
        case 0:
          return 1;
        case 6:
          *a2 = (**a1 << 40) | (*a2 << 48) | (*(*a1 + 1) << 32) | (*(*a1 + 2) << 24) | (*(*a1 + 3) << 16) | (*(*a1 + 4) << 8) | *(*a1 + 5);
          *a1 += 6;
          a1[2] -= 6;
          *(a2 + 2) += 48;
          return 1;
        case 7:
          *a2 = (**a1 << 48) | (*a2 << 56) | (*(*a1 + 1) << 40) | (*(*a1 + 2) << 32) | (*(*a1 + 3) << 24) | (*(*a1 + 4) << 16) | (*(*a1 + 5) << 8) | *(*a1 + 6);
          *a1 += 7;
          a1[2] -= 7;
          *(a2 + 2) += 56;
          return 1;
        case 8:
          *a2 = _byteswap_uint64(**a1);
          *a1 += 8;
          a1[2] -= 8;
          *(a2 + 2) += 64;
          return 1;
      }
    }

    if (!a1[2])
    {
      break;
    }

    v2 = *a2;
    v3 = (*a1)++;
    *a2 = *v3 | (v2 << 8);
    --a1[2];
    *(a2 + 2) += 8;
  }

  return 0;
}

uint64_t lzh_emit_window(uint64_t result, uint64_t a2)
{
  *(result + 24) = *(*(result + 48) + 16);
  *(result + 32) = a2;
  *(result + 40) += a2;
  return result;
}

uint64_t lzh_make_fake_table(uint64_t a1, unsigned __int16 a2)
{
  if (a2 < *a1)
  {
    **(a1 + 112) = a2;
    *(a1 + 88) = 0;
    *(a1 + 92) = 0;
    *(*(a1 + 80) + **(a1 + 112)) = 0;
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t lzh_read_pt_bitlen(uint64_t a1, unsigned int a2, int a3)
{
  v9 = *(a1 + 48);
  v8 = (v9 + 40);
  while (a2 < a3)
  {
    if (*(v9 + 48) < 3 && !lzh_br_fillup(a1, v8) && *(v9 + 48) < 3)
    {
      return a2;
    }

    v7 = (*(v9 + 40) >> (*(v9 + 48) - 3)) & 7;
    if (v7 == 7)
    {
      if (*(v9 + 48) < 13 && !lzh_br_fillup(a1, v8) && *(v9 + 48) < 13)
      {
        return a2;
      }

      v3 = *(v9 + 48) - 13;
      v7 = bitlen_tbl[(*v8 >> v3) & 0x3FF];
      if (!bitlen_tbl[(*v8 >> v3) & 0x3FF])
      {
        return -1;
      }

      *(v9 + 48) -= v7 - 3;
    }

    else
    {
      *(v9 + 48) -= 3;
    }

    v4 = a2++;
    *(*(v9 + 264) + v4) = v7;
    ++*(v9 + 196 + 4 * v7);
  }

  return a2;
}

uint64_t lzh_make_huffman_table(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v24 = 0;
  v27 = 1;
  v23 = 0x8000;
  while (v27 <= 16)
  {
    v35[v27 + 17] = v24;
    v35[v27] = v23;
    if (*(a1 + 12 + 4 * v27))
    {
      v24 += *(a1 + 12 + 4 * v27) * v23;
      v26 = v27;
    }

    ++v27;
    v23 >>= 1;
  }

  if (v24 != 0x10000 || v26 > *(a1 + 96))
  {
    v34 = 0;
    goto LABEL_71;
  }

  *(a1 + 88) = v26;
  if (v26 < 16)
  {
    v20 = 16 - v26;
    for (i = 1; i <= v26; ++i)
    {
      v35[i + 17] = v35[i + 17] >> v20;
      v35[i] = v35[i] >> v20;
    }
  }

  if (v26 <= 10)
  {
    v22 = 0;
  }

  else
  {
    v22 = v26 - 10;
    for (j = 1; j <= 10; ++j)
    {
      v35[j + 17] = v35[j + 17] >> v22;
      v35[j] = v35[j] >> v22;
    }

    for (k = *(a1 + 112) + 2 * (v35[27] + v35[10] * *(a1 + 52)); k < *(a1 + 112) + 2048; k += 2)
    {
      v1 = k;
      *v1 = 0;
    }
  }

  *(a1 + 92) = v22;
  v32 = *(a1 + 112);
  v31 = *(a1 + 80);
  v21 = *(a1 + 4);
  *(a1 + 100) = 0;
  for (m = 0; ; ++m)
  {
    if (m >= v21)
    {
      v34 = 1;
      goto LABEL_71;
    }

    if (*(v31 + m))
    {
      break;
    }

LABEL_69:
    ;
  }

  v16 = *(v31 + m);
  v25 = v35[*(v31 + m) + 17];
  v13 = v35[*(v31 + m)];
  if (v16 <= 0xA)
  {
    v35[*(v31 + m) + 17] = v25 + v13;
    if (v25 + v13 > 1024)
    {
      v34 = 0;
      goto LABEL_71;
    }

    v17 = v32 + 2 * v25;
    if (v13 <= 7)
    {
      while (v13 > 1)
      {
        v15 = v13 - 1;
        *(v17 + 2 * v15) = m;
        v13 = v15 - 1;
        *(v17 + 2 * v13) = m;
      }

      if (v13)
      {
        *(v17 + 2 * (v13 - 1)) = m;
      }
    }

    else
    {
      v14 = v13 - 8;
      v9 = (v17 + 2 * v14);
      *v9 = m;
      v9[1] = m;
      v9[2] = m;
      v9[3] = m;
      v9[4] = m;
      v9[5] = m;
      v9[6] = m;
      v9[7] = m;
      if (v14 > 7)
      {
        v14 -= 8;
        __memcpy_chk();
        while (v14 > 15)
        {
          v14 -= 16;
          __memcpy_chk();
        }
      }

      if (v14)
      {
        __memcpy_chk();
      }
    }

    goto LABEL_69;
  }

  v35[*(v31 + m) + 17] = v25 + v13;
  v12 = 1 << (v22 - 1);
  v11 = v16 - 10;
  v18 = (v32 + 2 * (v25 >> v22));
  if (*v18)
  {
    if (*v18 < v21 || *v18 >= v21 + *(a1 + 100))
    {
      v34 = 0;
      goto LABEL_71;
    }

    v10 = (*(a1 + 120) + 4 * (*v18 - v21));
LABEL_49:
    while (--v11 > 0)
    {
      if ((v25 & v12) != 0)
      {
        if (*v10 < v21)
        {
          *v10 = v21 + *(a1 + 100);
          v4 = *(a1 + 120);
          v5 = (*(a1 + 100))++;
          v10 = (v4 + 4 * v5);
          if (*(a1 + 100) > *(a1 + 104))
          {
            v34 = 0;
            goto LABEL_71;
          }

          *v10 = 0;
          v10[1] = 0;
        }

        else
        {
          v10 = (*(a1 + 120) + 4 * (*v10 - v21));
        }
      }

      else if (v10[1] < v21)
      {
        v10[1] = v21 + *(a1 + 100);
        v6 = *(a1 + 120);
        v7 = (*(a1 + 100))++;
        v10 = (v6 + 4 * v7);
        if (*(a1 + 100) > *(a1 + 104))
        {
          v34 = 0;
          goto LABEL_71;
        }

        *v10 = 0;
        v10[1] = 0;
      }

      else
      {
        v10 = (*(a1 + 120) + 4 * (v10[1] - v21));
      }

      v12 = v12 >> 1;
    }

    if ((v25 & v12) != 0)
    {
      if (*v10)
      {
        v34 = 0;
        goto LABEL_71;
      }

      *v10 = m;
    }

    else
    {
      if (v10[1])
      {
        v34 = 0;
        goto LABEL_71;
      }

      v10[1] = m;
    }

    goto LABEL_69;
  }

  *v18 = v21 + *(a1 + 100);
  v2 = *(a1 + 120);
  v3 = (*(a1 + 100))++;
  v10 = (v2 + 4 * v3);
  if (*(a1 + 100) <= *(a1 + 104))
  {
    *v10 = 0;
    v10[1] = 0;
    goto LABEL_49;
  }

  v34 = 0;
LABEL_71:
  *MEMORY[0x1E69E9840];
  return v34;
}

uint64_t lzh_decode_huffman(uint64_t a1, unsigned int a2)
{
  v3 = *(*(a1 + 112) + 2 * (a2 >> *(a1 + 92)));
  if (v3 >= *(a1 + 4) && *(a1 + 4))
  {
    return lzh_decode_huffman_tree(a1, a2, v3);
  }

  else
  {
    return *(*(a1 + 112) + 2 * (a2 >> *(a1 + 92)));
  }
}

uint64_t lzh_decode_huffman_tree(uint64_t a1, int a2, unsigned int a3)
{
  v6 = *(a1 + 120);
  v5 = *(a1 + 92);
  while (a3 >= *(a1 + 4))
  {
    v8 = a3 - *(a1 + 4);
    v3 = v5--;
    if (v3 <= 0 || v8 >= *(a1 + 100))
    {
      return 0;
    }

    if ((a2 & (1 << v5)) != 0)
    {
      a3 = *(v6 + 4 * v8);
    }

    else
    {
      a3 = *(v6 + 4 * v8 + 2);
    }
  }

  return a3;
}

void lzh_huffman_free(void **a1)
{
  free(a1[10]);
  free(a1[14]);
  free(a1[15]);
}

uint64_t archive_write_set_format_shar(uint64_t a1)
{
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_set_format_shar") == -30)
  {
    return -30;
  }

  else
  {
    if (*(a1 + 312))
    {
      (*(a1 + 312))(a1);
    }

    v7 = malloc_type_calloc(1uLL, 0x90uLL, 0x10300409387678EuLL);
    if (v7)
    {
      v7[12] = 0;
      v7[13] = 0;
      v7[14] = 0;
      v7[15] = 0;
      v7[16] = 0;
      v7[17] = 0;
      *(a1 + 248) = v7;
      *(a1 + 256) = "shar";
      *(a1 + 288) = archive_write_shar_header;
      *(a1 + 304) = archive_write_shar_close;
      *(a1 + 312) = archive_write_shar_free;
      *(a1 + 296) = archive_write_shar_data_sed;
      *(a1 + 280) = archive_write_shar_finish_entry;
      *(a1 + 16) = 131073;
      *(a1 + 24) = "shar";
      return 0;
    }

    else
    {
      archive_set_error(a1, 12, "Can't allocate shar data", v1, v2, v3, v4, v5, archive_write_shar_header);
      return -30;
    }
  }
}

uint64_t archive_write_shar_header(uint64_t a1, uint64_t *a2)
{
  v64 = *(a1 + 248);
  if (!*(v64 + 88))
  {
    archive_strcat((v64 + 96), "#!/bin/sh\n");
    archive_strcat((v64 + 96), "# This is a shell archive\n");
    *(v64 + 88) = 1;
  }

  archive_entry_free(*(v64 + 8));
  *(v64 + 8) = archive_entry_clone(a2);
  v68 = archive_entry_pathname(a2);
  v62 = archive_entry_filetype(a2);
  if (v62 == 4096 || v62 == 0x2000)
  {
    goto LABEL_13;
  }

  if (v62 != 0x4000)
  {
    if (v62 != 24576)
    {
      if (v62 != 0x8000)
      {
        archive_entry_set_size(a2, 0);
        if (!archive_entry_hardlink(a2) && !archive_entry_symlink(a2))
        {
          __archive_write_entry_filetype_unsupported(a1, a2);
          return -20;
        }
      }

LABEL_17:
      *(v64 + 128) = 0;
      shar_quote((v64 + 120), v68, 1);
      archive_string_sprintf((v64 + 96), "echo x %s\n", v2, v3, v4, v5, v6, v7, *(v64 + 120));
      if (archive_entry_filetype(a2) != 0x4000)
      {
        v67 = strdup(v68);
        v65 = strrchr(v67, 47);
        if (!v65 || (*v65 = 0, !strcmp(v67, ".")) || *(v64 + 24) && (!strcmp(v67, *(v64 + 24)) || (v61 = strlen(v67), v61 < strlen(*(v64 + 24))) && (v8 = strlen(v67), !strncmp(v67, *(v64 + 24), v8))))
        {
          free(v67);
        }

        else
        {
          archive_strcat((v64 + 96), "mkdir -p ");
          shar_quote((v64 + 96), v67, 1);
          archive_strcat((v64 + 96), " > /dev/null 2>&1\n");
          *(v64 + 24) = v67;
        }
      }

      *(v64 + 16) = 0;
      v69 = archive_entry_hardlink(a2);
      if (v69)
      {
        archive_strcat((v64 + 96), "ln -f ");
        shar_quote((v64 + 96), v69, 1);
        archive_string_sprintf((v64 + 96), " %s\n", v9, v10, v11, v12, v13, v14, *(v64 + 120));
      }

      else
      {
        v70 = archive_entry_symlink(a2);
        if (v70)
        {
          archive_strcat((v64 + 96), "ln -fs ");
          shar_quote((v64 + 96), v70, 1);
          archive_string_sprintf((v64 + 96), " %s\n", v15, v16, v17, v18, v19, v20, *(v64 + 120));
        }

        else
        {
          v60 = archive_entry_filetype(a2);
          switch(v60)
          {
            case 0x1000:
              archive_string_sprintf((v64 + 96), "mkfifo %s\n", v21, v22, v23, v24, v25, v26, *(v64 + 120));
              break;
            case 0x2000:
              v59 = *(v64 + 120);
              archive_entry_rdevmajor(a2);
              archive_entry_rdevminor(a2);
              archive_string_sprintf((v64 + 96), "mknod %s c %ju %ju\n", v45, v46, v47, v48, v49, v50, v59);
              break;
            case 0x4000:
              archive_string_sprintf((v64 + 96), "mkdir -p %s > /dev/null 2>&1\n", v21, v22, v23, v24, v25, v26, *(v64 + 120));
              free(*(v64 + 24));
              *(v64 + 24) = strdup(v68);
              v66 = strrchr(*(v64 + 24), 47);
              if (v66 && !v66[1])
              {
                *v66 = 0;
              }

              break;
            case 0x6000:
              v58 = *(v64 + 120);
              archive_entry_rdevmajor(a2);
              archive_entry_rdevminor(a2);
              archive_string_sprintf((v64 + 96), "mknod %s b %ju %ju\n", v51, v52, v53, v54, v55, v56, v58);
              break;
            case 0x8000:
              if (archive_entry_size(a2))
              {
                if (*v64)
                {
                  v63 = archive_entry_mode(a2) & 0x1FF;
                  archive_string_sprintf((v64 + 96), "uudecode -p > %s << 'SHAR_END'\n", v33, v34, v35, v36, v37, v38, *(v64 + 120));
                  archive_string_sprintf((v64 + 96), "begin %o ", v39, v40, v41, v42, v43, v44, v63);
                  shar_quote((v64 + 96), v68, 0);
                  archive_strcat((v64 + 96), "\n");
                }

                else
                {
                  archive_string_sprintf((v64 + 96), "sed 's/^X//' > %s << 'SHAR_END'\n", v27, v28, v29, v30, v31, v32, *(v64 + 120));
                }

                *(v64 + 16) = 1;
                *(v64 + 4) = 1;
                *(v64 + 80) = 0;
              }

              else
              {
                archive_string_sprintf((v64 + 96), "test -e %s || :> %s\n", v27, v28, v29, v30, v31, v32, *(v64 + 120));
              }

              break;
            default:
              return -20;
          }
        }
      }

      return 0;
    }

LABEL_13:
    archive_entry_set_size(a2, 0);
    goto LABEL_17;
  }

  archive_entry_set_size(a2, 0);
  if (strcmp(v68, ".") && strcmp(v68, "./"))
  {
    goto LABEL_17;
  }

  return 0;
}

uint64_t archive_write_shar_close(uint64_t a1)
{
  v2 = *(a1 + 248);
  if (*(v2 + 88))
  {
    archive_strcat((v2 + 96), "exit\n");
    if (__archive_write_output(a1, *(v2 + 96), *(v2 + 104)))
    {
      return -30;
    }

    else
    {
      archive_write_set_bytes_in_last_block(a1, 1);
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t archive_write_shar_free(uint64_t a1)
{
  v2 = *(a1 + 248);
  if (v2)
  {
    archive_entry_free(v2[1]);
    free(v2[3]);
    archive_string_free((v2 + 12));
    archive_string_free((v2 + 15));
    free(v2);
    *(a1 + 248) = 0;
  }

  return 0;
}

uint64_t archive_write_shar_data_sed(uint64_t a1, char *a2, unint64_t a3)
{
  v18 = a3;
  v17 = *(a1 + 248);
  if (!*(v17 + 16) || !a3)
  {
    return 0;
  }

  if (archive_string_ensure(v17 + 96, 0x10000uLL))
  {
    if (*(v17 + 104) > 0xFFFDuLL)
    {
      if (__archive_write_output(a1, *(v17 + 96), *(v17 + 104)))
      {
        return -30;
      }

      *(v17 + 104) = 0;
    }

    v15 = (*(v17 + 96) + *(v17 + 104));
    v14 = *(v17 + 96) + 65533;
    if (*(v17 + 4))
    {
      ++v15;
      *(*(v17 + 96) + *(v17 + 104)) = 88;
      *(v17 + 4) = 0;
    }

    while (v18--)
    {
      v9 = a2++;
      LODWORD(v9) = *v9;
      v10 = v15++;
      *v10 = v9;
      if (v9 == 10)
      {
        if (v18)
        {
          v11 = v15++;
          *v11 = 88;
        }

        else
        {
          *(v17 + 4) = 1;
        }
      }

      if (v15 >= v14)
      {
        *(v17 + 104) = &v15[-*(v17 + 96)];
        if (__archive_write_output(a1, *(v17 + 96), *(v17 + 104)))
        {
          return -30;
        }

        *(v17 + 104) = 0;
        v15 = *(v17 + 96);
      }
    }

    *(v17 + 104) = &v15[-*(v17 + 96)];
    return a3;
  }

  else
  {
    archive_set_error(a1, 12, "Out of memory", v3, v4, v5, v6, v7, a3);
    return -30;
  }
}

uint64_t archive_write_shar_finish_entry(uint64_t a1)
{
  v18 = *(a1 + 248);
  if (*(v18 + 8))
  {
    if (*v18)
    {
      if (*(v18 + 16))
      {
        if (*(v18 + 80) && _uuencode_line(a1, v18, (v18 + 32), *(v18 + 80)))
        {
          return -30;
        }

        archive_strcat((v18 + 96), "SHAR_END\n");
      }

      v1 = archive_entry_mode(*(v18 + 8));
      archive_string_sprintf((v18 + 96), "chmod %o ", v2, v3, v4, v5, v6, v7, v1 & 0xFFF);
      v8 = archive_entry_pathname(*(v18 + 8));
      shar_quote((v18 + 96), v8, 1);
      archive_strcat((v18 + 96), "\n");
      v19 = archive_entry_uname(*(v18 + 8));
      v21 = archive_entry_gname(*(v18 + 8));
      if (v19 || v21)
      {
        archive_strcat((v18 + 96), "chown ");
        if (v19)
        {
          shar_quote((v18 + 96), v19, 1);
        }

        if (v21)
        {
          archive_strcat((v18 + 96), ":");
          shar_quote((v18 + 96), v21, 1);
        }

        archive_strcat((v18 + 96), " ");
        v9 = archive_entry_pathname(*(v18 + 8));
        shar_quote((v18 + 96), v9, 1);
        archive_strcat((v18 + 96), "\n");
      }

      v20 = archive_entry_fflags_text(*(v18 + 8));
      if (v20)
      {
        archive_string_sprintf((v18 + 96), "chflags %s ", v10, v11, v12, v13, v14, v15, v20);
        v16 = archive_entry_pathname(*(v18 + 8));
        shar_quote((v18 + 96), v16, 1);
        archive_strcat((v18 + 96), "\n");
      }
    }

    else if (*(v18 + 16))
    {
      if (!*(v18 + 4))
      {
        archive_strappend_char((v18 + 96), 10);
      }

      archive_strcat((v18 + 96), "SHAR_END\n");
    }

    archive_entry_free(*(v18 + 8));
    *(v18 + 8) = 0;
    if (*(v18 + 104) >= 0x10000uLL)
    {
      if (__archive_write_output(a1, *(v18 + 96), *(v18 + 104)))
      {
        return -30;
      }

      else
      {
        *(v18 + 104) = 0;
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t archive_write_set_format_shar_dump(uint64_t a1)
{
  archive_write_set_format_shar(a1);
  **(a1 + 248) = 1;
  *(a1 + 296) = archive_write_shar_data_uuencode;
  *(a1 + 16) = 131074;
  *(a1 + 24) = "shar dump";
  return 0;
}

uint64_t archive_write_shar_data_uuencode(uint64_t a1, unsigned __int8 *a2, unint64_t a3)
{
  v8 = *(a1 + 248);
  if (!*(v8 + 16))
  {
    return 0;
  }

  v7 = a2;
  if (*(v8 + 80))
  {
    v5 = 45 - *(v8 + 80);
    if (v5 > a3)
    {
      v5 = a3;
    }

    v3 = *(v8 + 80);
    __memcpy_chk();
    if (*(v8 + 80) + v5 >= 0x2D)
    {
      if (!_uuencode_line(a1, v8, (v8 + 32), 0x2DuLL))
      {
        v7 = &a2[v5];
        v6 = a3 - v5;
        goto LABEL_12;
      }

      return -30;
    }

    else
    {
      *(v8 + 80) += v5;
      return a3;
    }
  }

  else
  {
    v6 = a3;
LABEL_12:
    while (v6 >= 0x2D)
    {
      if (_uuencode_line(a1, v8, v7, 0x2DuLL))
      {
        return -30;
      }

      v7 += 45;
      v6 -= 45;
      if (*(v8 + 104) >= 0x10000uLL)
      {
        if (__archive_write_output(a1, *(v8 + 96), *(v8 + 104)))
        {
          return -30;
        }

        *(v8 + 104) = 0;
      }
    }

    if (v6)
    {
      __memcpy_chk();
      *(v8 + 80) = v6;
    }

    return a3;
  }
}