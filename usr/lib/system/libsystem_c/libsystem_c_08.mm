_BYTE *__fix_nogrouping(_BYTE *a1)
{
  result = &__nogrouping;
  if (a1)
  {
    if (*a1)
    {
      return a1;
    }
  }

  return result;
}

uint64_t _GB18030_init(void *a1)
{
  a1[9] = _GB18030_mbrtowc;
  a1[12] = _GB18030_wcrtomb;
  a1[10] = _GB18030_mbsinit;
  a1[8] = 0x8000000004;
  return 0;
}

uint64_t _GB18030_mbrtowc(unsigned int *a1, char **a2, unint64_t a3, const char *a4)
{
  v4 = *a4;
  if (v4 >= 5)
  {
    v5 = __error();
    v6 = 22;
LABEL_3:
    *v5 = v6;
    return -1;
  }

  if (a3 >= 4)
  {
    v9 = 4;
  }

  else
  {
    v9 = a3;
  }

  v10 = a2 == 0;
  if (a2)
  {
    v11 = a1;
  }

  else
  {
    a2 = "";
    v11 = 0;
  }

  if (v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = v9;
  }

  if (v12 >= 4 - v4)
  {
    v13 = 4 - v4;
  }

  else
  {
    v13 = v12;
  }

  j__strtod(&a4[v4 + 4], a2);
  v14 = *a4;
  v15 = v14 + v13;
  *a4 += v13;
  if (!(v14 + v13))
  {
    return -2;
  }

  v16 = *(a4 + 4);
  if (a4[4] < 0)
  {
    if (v16 == 128 || v16 == 255)
    {
      goto LABEL_26;
    }

    if (v15 == 1)
    {
      return -2;
    }

    v19 = *(a4 + 5);
    if (a4[5] < -1 || (v19 - 64) <= 0x3E)
    {
      v16 = v19 | (v16 << 8);
      v17 = 2;
      goto LABEL_19;
    }

    if ((v19 - 48) <= 9)
    {
      if (v15 < 3)
      {
        return -2;
      }

      v20 = *(a4 + 6);
      if ((v20 - 255) >= 0xFFFFFF82)
      {
        if (v15 == 3)
        {
          return -2;
        }

        v21 = *(a4 + 7);
        if ((v21 - 58) >= 0xFFFFFFF6)
        {
          v16 = ((v19 & 0xFFFF80FF | ((v16 & 0x7F) << 8)) << 16) | (v20 << 8) | v21;
          v17 = 4;
          goto LABEL_19;
        }
      }
    }

LABEL_26:
    v5 = __error();
    v6 = 92;
    goto LABEL_3;
  }

  v17 = 1;
LABEL_19:
  if (v11)
  {
    *v11 = v16;
  }

  *a4 = 0;
  v18 = v17 - v14;
  if (!v16)
  {
    return 0;
  }

  return v18;
}

uint64_t _GB18030_wcrtomb(_BYTE *a1, unsigned int a2, _DWORD *a3)
{
  if (!*a3)
  {
    if (a1)
    {
      if ((a2 & 0x80000000) == 0)
      {
        if (HIBYTE(a2))
        {
          if (HIBYTE(a2) != 127)
          {
            *a1 = HIBYTE(a2) | 0x80;
            if ((HIWORD(a2) & 0xFE) - 58 >= 0xFFFFFFF6)
            {
              a1[1] = BYTE2(a2);
              if (BYTE1(a2) >= 0x81u && BYTE1(a2) != 255)
              {
                a1[2] = BYTE1(a2);
                if ((a2 & 0xFE) - 58 >= 0xFFFFFFF6)
                {
                  a1[3] = a2;
                  return 4;
                }
              }
            }
          }
        }

        else if (!HIWORD(a2))
        {
          if (a2 >= 0x100)
          {
            if (a2 - 65280 >= 0xFFFF8200)
            {
              *a1 = BYTE1(a2);
              if ((a2 & 0xC0) != 0 && (a2 & 0x7F) != 0x7F)
              {
                a1[1] = a2;
                return 2;
              }
            }
          }

          else if (a2 <= 0x7F)
          {
            *a1 = a2;
            return 1;
          }
        }
      }

      v3 = __error();
      v4 = 92;
      goto LABEL_19;
    }

    return 1;
  }

  v3 = __error();
  v4 = 22;
LABEL_19:
  *v3 = v4;
  return -1;
}

uint64_t _GB2312_init(void *a1)
{
  a1[9] = _GB2312_mbrtowc;
  a1[12] = _GB2312_wcrtomb;
  a1[10] = _GB2312_mbsinit;
  a1[8] = 0x8000000002;
  return 0;
}

uint64_t _GB2312_mbrtowc(int *a1, char **a2, unint64_t a3, unsigned int *a4)
{
  v4 = *a4;
  if (v4 >= 3)
  {
    *__error() = 22;
    return -1;
  }

  if (a3 >= 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = a3;
  }

  v8 = a2 == 0;
  if (a2)
  {
    v9 = a1;
  }

  else
  {
    a2 = "";
    v9 = 0;
  }

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v7;
  }

  if (v10 >= 2 - v4)
  {
    v11 = 2 - v4;
  }

  else
  {
    v11 = v10;
  }

  v12 = (a4 + 1);
  j__strtod(a4 + v4 + 4, a2);
  v13 = *a4;
  *a4 += v11;
  if (!(v13 + v11))
  {
    return -2;
  }

  v14 = *v12;
  if ((v14 - 255) < 0xFFFFFFA2)
  {
    if ((v14 & 0x80) != 0)
    {
      return -1;
    }

    v15 = 1;
    goto LABEL_24;
  }

  if (v13 + v11 == 1)
  {
    return -2;
  }

  if (*(a4 + 5) - 255 < 0xFFFFFFA2)
  {
    return -1;
  }

  v15 = 2;
LABEL_24:
  v16 = 0;
  v17 = v15 + 1;
  v18 = 4;
  do
  {
    v16 = *(a4 + v18) | (v16 << 8);
    --v17;
    ++v18;
  }

  while (v17 > 1);
  if (v9)
  {
    *v9 = v16;
  }

  *a4 = 0;
  v19 = v15 - v13;
  if (!v16)
  {
    return 0;
  }

  return v19;
}

uint64_t _GB2312_wcrtomb(_BYTE *a1, unsigned int a2, _DWORD *a3)
{
  if (*a3)
  {
    *__error() = 22;
    return -1;
  }

  if (!a1)
  {
    return 1;
  }

  if ((a2 & 0x8000) == 0)
  {
    *a1 = a2;
    return 1;
  }

  *a1 = bswap32(a2) >> 16;
  return 2;
}

uint64_t _GBK_init(void *a1)
{
  a1[9] = _GBK_mbrtowc;
  a1[12] = _GBK_wcrtomb;
  a1[10] = _GBK_mbsinit;
  a1[8] = 0x8000000002;
  return 0;
}

uint64_t _GBK_mbrtowc(int *a1, const char *a2, uint64_t a3, int *a4)
{
  v4 = *a4;
  if (*a4 >= 0x100)
  {
    v10 = __error();
    v11 = 22;
LABEL_18:
    *v10 = v11;
    return -1;
  }

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = "";
  }

  if (!a2)
  {
    a3 = 1;
  }

  if (a2)
  {
    v7 = a1;
  }

  else
  {
    v7 = 0;
  }

  if (!a3)
  {
    return -2;
  }

  v8 = *v5;
  if (v4)
  {
    if (*v5)
    {
      if (v7)
      {
        *v7 = v8 | (v4 << 8);
      }

      *a4 = 0;
      return 1;
    }

    goto LABEL_31;
  }

  if ((v8 - 129) > 0x7D)
  {
    if (v7)
    {
      *v7 = v8;
    }

    return v8 != 0;
  }

  else
  {
    if (a3 == 1)
    {
      *a4 = v8;
      return -2;
    }

    if (!v5[1])
    {
LABEL_31:
      v10 = __error();
      v11 = 92;
      goto LABEL_18;
    }

    if (v7)
    {
      *v7 = *(v5 + 1) | (v8 << 8);
    }

    return 2;
  }
}

uint64_t _GBK_wcrtomb(_BYTE *a1, unsigned int a2, _DWORD *a3)
{
  if (*a3)
  {
    *__error() = 22;
    return -1;
  }

  if (!a1)
  {
    return 1;
  }

  if ((a2 & 0x8000) == 0)
  {
    *a1 = a2;
    return 1;
  }

  *a1 = bswap32(a2) >> 16;
  return 2;
}

uint64_t __part_load_locale(const char *a1, char *a2, void **a3, const char *a4, int a5, int a6, char **a7)
{
  memset(&v37, 0, sizeof(v37));
  v14 = j__strsignal_r(a1, a2, a3);
  j__strnstr(__big, a1, v15);
  *&__big[j__strsignal_r(__big, v16, v17)] = 47;
  strcat(__big, a4);
  v20 = __open_path_locale(__big, v18, v19);
  if (v20 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (fstat(v20, &v37))
  {
LABEL_21:
    v30 = *__error();
    close_NOCANCEL();
    *__error() = v30;
    return 0xFFFFFFFFLL;
  }

  if (v37.st_size < 1)
  {
    v28 = 79;
LABEL_20:
    *__error() = v28;
    goto LABEL_21;
  }

  v21 = v14 + 1;
  v22 = malloc_type_malloc(v37.st_size + v14 + 1, 0x30411ED1uLL);
  if (!v22)
  {
    v28 = 12;
    goto LABEL_20;
  }

  v24 = v22;
  v25 = &j__strnstr(v22, a1, v23)[v21];
  st_size = v37.st_size;
  if (read_NOCANCEL() != v37.st_size)
  {
LABEL_19:
    v28 = *__error();
    free(v24);
    goto LABEL_20;
  }

  if (v25[st_size - 1] != 10)
  {
    goto LABEL_18;
  }

  if (st_size < 1)
  {
    v27 = 0;
  }

  else
  {
    v27 = 0;
    do
    {
      if (*v25 == 10)
      {
        *v25 = 0;
        ++v27;
      }

      ++v25;
      --st_size;
    }

    while (st_size);
  }

  v29 = a5;
  if (v27 < a5)
  {
    v29 = v27;
    if (v27 < a6)
    {
LABEL_18:
      *__error() = 79;
      goto LABEL_19;
    }
  }

  close_NOCANCEL();
  if (*a3)
  {
    free(*a3);
  }

  *a3 = v24;
  if (v29 >= 1)
  {
    v34 = v29;
    v35 = a7;
    do
    {
      v24 += j__strsignal_r(v24, v32, v33) + 1;
      *v35++ = v24;
      --v34;
    }

    while (v34);
  }

  if (v29 < a5)
  {
    if (v27 >= a5)
    {
      v36 = a5;
    }

    else
    {
      v36 = v27;
    }

    MEMORY[0x193AD5FD0](&a7[v36], 8 * (~v29 + a5) + 8);
  }

  result = 0;
  *a2 = 1;
  return result;
}

void destruct_ldpart(void **a1)
{
  if (a1)
  {
    free(a1[8]);
  }

  free(a1);
}

uint64_t __messages_load_locale(char *a1, uint64_t a2, size_t a3, _xlocale *a4)
{
  if (*a1 == 67)
  {
    v6 = a1[1];
    if (!a1[1] || !j__strncasecmp_l(a1, "POSIX", a3, a4) || v6 == 46)
    {
      goto LABEL_5;
    }
  }

  else if (!j__strncasecmp_l(a1, "POSIX", a3, a4))
  {
LABEL_5:
    *(a2 + 1312) = 0;
    v9 = *(a2 + 1360);
    if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
    {
      v10 = *(v9 + 8);
      if (v10)
      {
        v10();
      }
    }

    *(a2 + 1360) = 0;
    return 1;
  }

  if (!__messages_load_locale_cache || (v12 = *(__messages_load_locale_cache + 64)) == 0 || j__strncasecmp_l(a1, v12, v7, v8))
  {
    v13 = malloc_type_malloc(0x68uLL, 0x10D0040B9A2EC5AuLL);
    if (v13)
    {
      v14 = v13;
      *v13 = 1;
      *(v13 + 1) = destruct_ldpart;
      *(v13 + 8) = 0;
      result = __part_load_locale(a1, (a2 + 1312), v13 + 8, "LC_MESSAGES/LC_MESSAGES", 4, 2, v13 + 9);
      if (result != -1)
      {
        if (!result)
        {
          if (!*(v14 + 88))
          {
            *(v14 + 88) = &empty;
          }

          if (!*(v14 + 96))
          {
            *(v14 + 96) = &empty;
          }

          v15 = *(a2 + 1360);
          if (v15)
          {
            if (atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
            {
              v16 = *(v15 + 8);
              if (v16)
              {
                v16();
              }
            }
          }

          *(a2 + 1360) = v14;
          v17 = __messages_load_locale_cache;
          if (__messages_load_locale_cache)
          {
            if (atomic_fetch_add(__messages_load_locale_cache, 0xFFFFFFFF) == 1)
            {
              v18 = *(v17 + 8);
              if (v18)
              {
                v18();
              }
            }
          }

          result = 0;
          __messages_load_locale_cache = v14;
          atomic_fetch_add(v14, 1u);
        }

        return result;
      }

      free(v14);
    }

    return 0xFFFFFFFFLL;
  }

  *(a2 + 1312) = 1;
  v19 = *(a2 + 1360);
  if (v19)
  {
    if (atomic_fetch_add(v19, 0xFFFFFFFF) == 1)
    {
      v20 = *(v19 + 8);
      if (v20)
      {
        v20();
      }
    }
  }

  v21 = __messages_load_locale_cache;
  *(a2 + 1360) = __messages_load_locale_cache;
  result = 1;
  if (v21)
  {
    atomic_fetch_add(v21, 1u);
  }

  return result;
}

char **__get_current_messages_locale(uint64_t a1)
{
  if (*(a1 + 1312))
  {
    return (*(a1 + 1360) + 72);
  }

  else
  {
    return _C_messages_locale;
  }
}

uint64_t __monetary_load_locale(char *a1, uint64_t a2, size_t a3, _xlocale *a4)
{
  if (*a1 == 67)
  {
    v6 = a1[1];
    if (!a1[1] || !j__strncasecmp_l(a1, "POSIX", a3, a4) || v6 == 46)
    {
LABEL_5:
      if (*(a2 + 1313))
      {
        *(a2 + 1313) = 0;
        v9 = *(a2 + 1336);
        if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
        {
          v10 = *(v9 + 8);
          if (v10)
          {
            v10();
          }
        }

        *(a2 + 1336) = 0;
LABEL_11:
        result = 1;
        *(a2 + 1316) = 1;
        return result;
      }

      return 1;
    }
  }

  else if (!j__strncasecmp_l(a1, "POSIX", a3, a4))
  {
    goto LABEL_5;
  }

  if (*(a2 + 1313) && !j__strncasecmp_l(a1, *(*(a2 + 1336) + 64), v7, v8))
  {
    return 1;
  }

  if (__monetary_load_locale_cache)
  {
    v12 = *(__monetary_load_locale_cache + 64);
    if (v12)
    {
      if (!j__strncasecmp_l(a1, v12, v7, v8))
      {
        *(a2 + 1313) = 1;
        v34 = *(a2 + 1336);
        if (v34)
        {
          if (atomic_fetch_add(v34, 0xFFFFFFFF) == 1)
          {
            v35 = *(v34 + 8);
            if (v35)
            {
              v35();
            }
          }
        }

        v36 = __monetary_load_locale_cache;
        *(a2 + 1336) = __monetary_load_locale_cache;
        if (v36)
        {
          atomic_fetch_add(v36, 1u);
        }

        goto LABEL_11;
      }
    }
  }

  v13 = malloc_type_malloc(0xF0uLL, 0x10D0040AB25FCE3uLL);
  if (!v13)
  {
    return 0xFFFFFFFFLL;
  }

  v14 = v13;
  *v13 = 1;
  *(v13 + 1) = destruct_ldpart;
  *(v13 + 8) = 0;
  result = __part_load_locale(a1, (a2 + 1313), v13 + 8, "LC_MONETARY", 21, 15, v13 + 9);
  if (result == -1)
  {
    free(v14);
    return 0xFFFFFFFFLL;
  }

  *(a2 + 1316) = 1;
  if (!result)
  {
    *(v14 + 104) = __fix_locale_grouping_str(*(v14 + 104));
    v15 = strtol(*(v14 + 128), 0, 10);
    if (v15 == -1)
    {
      v16 = 127;
    }

    else
    {
      v16 = v15;
    }

    **(v14 + 128) = v16;
    v17 = strtol(*(v14 + 136), 0, 10);
    if (v17 == -1)
    {
      v18 = 127;
    }

    else
    {
      v18 = v17;
    }

    **(v14 + 136) = v18;
    v19 = strtol(*(v14 + 144), 0, 10);
    if (v19 == -1)
    {
      v20 = 127;
    }

    else
    {
      v20 = v19;
    }

    **(v14 + 144) = v20;
    v21 = strtol(*(v14 + 152), 0, 10);
    if (v21 == -1)
    {
      v22 = 127;
    }

    else
    {
      v22 = v21;
    }

    **(v14 + 152) = v22;
    v23 = strtol(*(v14 + 160), 0, 10);
    if (v23 == -1)
    {
      v24 = 127;
    }

    else
    {
      v24 = v23;
    }

    **(v14 + 160) = v24;
    v25 = strtol(*(v14 + 168), 0, 10);
    if (v25 == -1)
    {
      v26 = 127;
    }

    else
    {
      v26 = v25;
    }

    **(v14 + 168) = v26;
    v27 = strtol(*(v14 + 176), 0, 10);
    if (v27 == -1)
    {
      v28 = 127;
    }

    else
    {
      v28 = v27;
    }

    **(v14 + 176) = v28;
    v29 = strtol(*(v14 + 184), 0, 10);
    if (v29 == -1)
    {
      v30 = 127;
    }

    else
    {
      v30 = v29;
    }

    **(v14 + 184) = v30;
    v31 = *(v14 + 192);
    if (v31)
    {
      v32 = strtol(v31, 0, 10);
      if (v32 == -1)
      {
        v33 = 127;
      }

      else
      {
        v33 = v32;
      }

      **(v14 + 192) = v33;
    }

    else
    {
      *(v14 + 192) = *(v14 + 144);
    }

    v37 = *(v14 + 200);
    if (v37)
    {
      v38 = strtol(v37, 0, 10);
      if (v38 == -1)
      {
        v39 = 127;
      }

      else
      {
        v39 = v38;
      }

      **(v14 + 200) = v39;
    }

    else
    {
      *(v14 + 200) = *(v14 + 160);
    }

    v40 = *(v14 + 208);
    if (v40)
    {
      v41 = strtol(v40, 0, 10);
      if (v41 == -1)
      {
        v42 = 127;
      }

      else
      {
        v42 = v41;
      }

      **(v14 + 208) = v42;
    }

    else
    {
      *(v14 + 208) = *(v14 + 152);
    }

    v43 = *(v14 + 216);
    if (v43)
    {
      v44 = strtol(v43, 0, 10);
      if (v44 == -1)
      {
        v45 = 127;
      }

      else
      {
        v45 = v44;
      }

      **(v14 + 216) = v45;
    }

    else
    {
      *(v14 + 216) = *(v14 + 168);
    }

    v46 = *(v14 + 224);
    if (v46)
    {
      v47 = strtol(v46, 0, 10);
      if (v47 == -1)
      {
        v48 = 127;
      }

      else
      {
        v48 = v47;
      }

      **(v14 + 224) = v48;
    }

    else
    {
      *(v14 + 224) = *(v14 + 176);
    }

    v49 = *(v14 + 232);
    if (v49)
    {
      v50 = strtol(v49, 0, 10);
      if (v50 == -1)
      {
        v51 = 127;
      }

      else
      {
        v51 = v50;
      }

      **(v14 + 232) = v51;
    }

    else
    {
      *(v14 + 232) = *(v14 + 184);
    }

    v52 = *(a2 + 1336);
    if (v52)
    {
      if (atomic_fetch_add(v52, 0xFFFFFFFF) == 1)
      {
        v53 = *(v52 + 8);
        if (v53)
        {
          v53();
        }
      }
    }

    *(a2 + 1336) = v14;
    v54 = __monetary_load_locale_cache;
    if (__monetary_load_locale_cache)
    {
      if (atomic_fetch_add(__monetary_load_locale_cache, 0xFFFFFFFF) == 1)
      {
        v55 = *(v54 + 8);
        if (v55)
        {
          v55();
        }
      }
    }

    result = 0;
    __monetary_load_locale_cache = v14;
    atomic_fetch_add(v14, 1u);
  }

  return result;
}

uint64_t __numeric_load_locale(char *a1, uint64_t a2, size_t a3, _xlocale *a4)
{
  if (*a1 == 67)
  {
    v6 = a1[1];
    if (!a1[1] || !j__strncasecmp_l(a1, "POSIX", a3, a4) || v6 == 46)
    {
LABEL_5:
      if (*(a2 + 1314))
      {
        *(a2 + 1314) = 0;
        v9 = *(a2 + 1344);
        if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
        {
          v10 = *(v9 + 8);
          if (v10)
          {
            v10();
          }
        }

        *(a2 + 1344) = 0;
LABEL_11:
        result = 1;
        *(a2 + 1317) = 1;
        return result;
      }

      return 1;
    }
  }

  else if (!j__strncasecmp_l(a1, "POSIX", a3, a4))
  {
    goto LABEL_5;
  }

  if (*(a2 + 1314) && !j__strncasecmp_l(a1, *(*(a2 + 1344) + 64), v7, v8))
  {
    return 1;
  }

  if (__numeric_load_locale_cache)
  {
    v12 = *(__numeric_load_locale_cache + 64);
    if (v12)
    {
      if (!j__strncasecmp_l(a1, v12, v7, v8))
      {
        *(a2 + 1314) = 1;
        v19 = *(a2 + 1344);
        if (v19)
        {
          if (atomic_fetch_add(v19, 0xFFFFFFFF) == 1)
          {
            v20 = *(v19 + 8);
            if (v20)
            {
              v20();
            }
          }
        }

        v21 = __numeric_load_locale_cache;
        *(a2 + 1344) = __numeric_load_locale_cache;
        if (v21)
        {
          atomic_fetch_add(v21, 1u);
        }

        goto LABEL_11;
      }
    }
  }

  v13 = malloc_type_malloc(0x60uLL, 0x10D0040E5D34ACFuLL);
  if (!v13)
  {
    return 0xFFFFFFFFLL;
  }

  v14 = v13;
  *v13 = 1;
  *(v13 + 1) = destruct_ldpart;
  *(v13 + 8) = 0;
  result = __part_load_locale(a1, (a2 + 1314), v13 + 8, "LC_NUMERIC", 3, 3, v13 + 9);
  if (result == -1)
  {
    free(v14);
    return 0xFFFFFFFFLL;
  }

  *(a2 + 1317) = 1;
  if (!result)
  {
    if (!**(v14 + 72))
    {
      *(v14 + 72) = ".";
    }

    *(v14 + 88) = __fix_locale_grouping_str(*(v14 + 88));
    v15 = *(a2 + 1344);
    if (v15)
    {
      if (atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
      {
        v16 = *(v15 + 8);
        if (v16)
        {
          v16();
        }
      }
    }

    *(a2 + 1344) = v14;
    v17 = __numeric_load_locale_cache;
    if (__numeric_load_locale_cache)
    {
      if (atomic_fetch_add(__numeric_load_locale_cache, 0xFFFFFFFF) == 1)
      {
        v18 = *(v17 + 8);
        if (v18)
        {
          v18();
        }
      }
    }

    result = 0;
    __numeric_load_locale_cache = v14;
    atomic_fetch_add(v14, 1u);
  }

  return result;
}

void _locale_lock_fork_prepare()
{
  v0 = __locale_key;
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v0);
  if (!v1)
  {
    v1 = &__global_locale;
  }

  os_unfair_lock_lock(v1 + 324);
}

void _locale_lock_fork_parent()
{
  v0 = __locale_key;
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v0);
  if (!v1)
  {
    v1 = &__global_locale;
  }

  os_unfair_lock_unlock(v1 + 324);
}

void _locale_lock_fork_child()
{
  v0 = __locale_key;
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v0);
  if (!v1)
  {
    v1 = &__global_locale;
  }

  v1[324] = 0;
}

int mblen_l(const char *a1, size_t a2, locale_t a3)
{
  v3 = &__global_locale;
  if (a3 != -1)
  {
    v3 = a3;
  }

  if (a3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &__c_locale;
  }

  if (a1)
  {
    a1 = (*(*(v4 + 166) + 72))(0, a1, a2, v4 + 16);
    if (a1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      LODWORD(a1) = -1;
    }
  }

  else
  {
    *(v4 + 7) = 0u;
    *(v4 + 8) = 0u;
    *(v4 + 5) = 0u;
    *(v4 + 6) = 0u;
    *(v4 + 3) = 0u;
    *(v4 + 4) = 0u;
    *(v4 + 1) = 0u;
    *(v4 + 2) = 0u;
  }

  return a1;
}

int mblen(const char *__s, size_t __n)
{
  v2 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v2);
  if (!v3)
  {
    v3 = &__global_locale;
  }

  if (v3 == -1)
  {
    v4 = &__global_locale;
  }

  else
  {
    v4 = v3;
  }

  if (__s)
  {
    __s = (*(v4[166] + 72))(0, __s, __n, v4 + 2);
    if (__s > 0xFFFFFFFFFFFFFFFDLL)
    {
      LODWORD(__s) = -1;
    }
  }

  else
  {
    *(v4 + 7) = 0u;
    *(v4 + 8) = 0u;
    *(v4 + 5) = 0u;
    *(v4 + 6) = 0u;
    *(v4 + 3) = 0u;
    *(v4 + 4) = 0u;
    *(v4 + 1) = 0u;
    *(v4 + 2) = 0u;
  }

  return __s;
}

size_t mbrlen_l(const char *a1, size_t a2, mbstate_t *a3, locale_t a4)
{
  v4 = &__global_locale;
  if (a4 != -1)
  {
    v4 = a4;
  }

  if (a4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &__c_locale;
  }

  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = (v5 + 144);
  }

  return (*(*(v5 + 166) + 72))(0, a1, a2, v6);
}

size_t mbrlen(const char *a1, size_t a2, mbstate_t *a3)
{
  v3 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if (!v4)
  {
    v4 = &__global_locale;
  }

  if (v4 == -1)
  {
    v5 = &__global_locale;
  }

  else
  {
    v5 = v4;
  }

  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = (v5 + 144);
  }

  return (*(*(v5 + 166) + 72))(0, a1, a2, v6);
}

int mbsinit_l(const mbstate_t *a1, locale_t a2)
{
  v2 = &__global_locale;
  if (a2 != -1)
  {
    v2 = a2;
  }

  if (a2)
  {
    v3 = v2;
  }

  else
  {
    v3 = &__c_locale;
  }

  return (*(*(v3 + 166) + 80))(a1);
}

int mbsinit(const mbstate_t *a1)
{
  v1 = __locale_key;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v1);
  if (!v2)
  {
    v2 = &__global_locale;
  }

  if (v2 == -1)
  {
    v3 = &__global_locale;
  }

  else
  {
    v3 = v2;
  }

  return (*(v3[166] + 80))(a1);
}

size_t mbsnrtowcs_l(__int32 *a1, const char **a2, size_t a3, size_t a4, mbstate_t *a5, locale_t a6)
{
  v6 = &__global_locale;
  if (a6 != -1)
  {
    v6 = a6;
  }

  if (a6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &__c_locale;
  }

  if (!a5)
  {
    a5 = (v7 + 400);
  }

  return (*(*(v7 + 166) + 88))(a1, a2, a3, a4, a5);
}

size_t mbsnrtowcs(__int32 *a1, const char **a2, size_t a3, size_t a4, mbstate_t *a5)
{
  v5 = __locale_key;
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (!v6)
  {
    v6 = &__global_locale;
  }

  if (v6 == -1)
  {
    v7 = &__global_locale;
  }

  else
  {
    v7 = v6;
  }

  if (!a5)
  {
    a5 = (v7 + 400);
  }

  return (*(*(v7 + 166) + 88))(a1, a2, a3, a4, a5);
}

uint64_t __mbsnrtowcs_std(int *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(*(a6 + 1328) + 72);
  v10 = *a2;
  if (a1)
  {
    v11 = a4;
    if (a4)
    {
      v13 = a1;
      v14 = 0;
      while (1)
      {
        v15 = v9(v13, v10, a3, a5, a6);
        if (v15 == -2)
        {
          break;
        }

        if (!v15)
        {
          *a2 = 0;
          return v14;
        }

        if (v15 == -1)
        {
          *a2 = v10;
          return -1;
        }

        v10 += v15;
        a3 -= v15;
        ++v14;
        ++v13;
        if (v11 == v14)
        {
          goto LABEL_8;
        }
      }

      *a2 = v10 + a3;
      return v14;
    }

LABEL_8:
    *a2 = v10;
  }

  else
  {
    v11 = 0;
    v18 = 0;
    while (1)
    {
      v16 = v9(&v18, v10, a3, a5, a6);
      if (v16 == -2)
      {
        break;
      }

      if (v16 == -1)
      {
        return -1;
      }

      if (!v16)
      {
        return v11;
      }

      v10 += v16;
      a3 -= v16;
      ++v11;
    }
  }

  return v11;
}

size_t mbstowcs_l(__int32 *a1, const char *a2, size_t a3, locale_t a4)
{
  v4 = &__global_locale;
  if (a4 != -1)
  {
    v4 = a4;
  }

  if (a4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &__c_locale;
  }

  memset(v8, 0, sizeof(v8));
  v7 = a2;
  return (*(*(v5 + 166) + 88))(a1, &v7, -1, a3, v8);
}

size_t mbstowcs(__int32 *a1, const char *a2, size_t a3)
{
  v3 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if (!v4)
  {
    v4 = &__global_locale;
  }

  if (v4 == -1)
  {
    v5 = &__global_locale;
  }

  else
  {
    v5 = v4;
  }

  memset(v8, 0, sizeof(v8));
  v7 = a2;
  return (*(v5[166] + 88))(a1, &v7, -1, a3, v8);
}

int mbtowc_l(__int32 *a1, const char *a2, size_t a3, locale_t a4)
{
  v4 = &__global_locale;
  if (a4 != -1)
  {
    v4 = a4;
  }

  if (a4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &__c_locale;
  }

  if (a2)
  {
    v6 = (*(*(v5 + 166) + 72))(a1, a2, a3, v5 + 656);
    if (v6 > 0xFFFFFFFFFFFFFFFDLL)
    {
      LODWORD(v6) = -1;
    }
  }

  else
  {
    LODWORD(v6) = 0;
    *(v5 + 47) = 0u;
    *(v5 + 48) = 0u;
    *(v5 + 45) = 0u;
    *(v5 + 46) = 0u;
    *(v5 + 43) = 0u;
    *(v5 + 44) = 0u;
    *(v5 + 41) = 0u;
    *(v5 + 42) = 0u;
  }

  return v6;
}

int mbtowc(__int32 *a1, const char *a2, size_t a3)
{
  v3 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if (!v4)
  {
    v4 = &__global_locale;
  }

  if (v4 == -1)
  {
    v5 = &__global_locale;
  }

  else
  {
    v5 = v4;
  }

  if (a2)
  {
    v6 = (*(v5[166] + 72))(a1, a2, a3, v5 + 82);
    if (v6 > 0xFFFFFFFFFFFFFFFDLL)
    {
      LODWORD(v6) = -1;
    }
  }

  else
  {
    LODWORD(v6) = 0;
    *(v5 + 47) = 0u;
    *(v5 + 48) = 0u;
    *(v5 + 45) = 0u;
    *(v5 + 46) = 0u;
    *(v5 + 43) = 0u;
    *(v5 + 44) = 0u;
    *(v5 + 41) = 0u;
    *(v5 + 42) = 0u;
  }

  return v6;
}

uint64_t _MSKanji_init(void *a1)
{
  a1[9] = _MSKanji_mbrtowc;
  a1[12] = _MSKanji_wcrtomb;
  a1[10] = _MSKanji_mbsinit;
  a1[8] = 0x10000000002;
  return 0;
}

uint64_t _MSKanji_mbrtowc(int *a1, const char *a2, uint64_t a3, int *a4)
{
  v4 = *a4;
  if (*a4 >= 0x100)
  {
    v10 = __error();
    v11 = 22;
LABEL_18:
    *v10 = v11;
    return -1;
  }

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = "";
  }

  if (!a2)
  {
    a3 = 1;
  }

  if (a2)
  {
    v7 = a1;
  }

  else
  {
    v7 = 0;
  }

  if (!a3)
  {
    return -2;
  }

  if (v4)
  {
    v8 = *v5;
    if (v8)
    {
      if (v7)
      {
        *v7 = v8 | (v4 << 8);
      }

      *a4 = 0;
      return 1;
    }

    goto LABEL_34;
  }

  v12 = *v5;
  if ((v12 - 129) >= 0x1F && (v12 - 224) > 0x1C)
  {
    if (v7)
    {
      *v7 = v12;
    }

    return v12 != 0;
  }

  else
  {
    if (a3 == 1)
    {
      *a4 = v12;
      return -2;
    }

    v14 = *(v5 + 1);
    if (!v14)
    {
LABEL_34:
      v10 = __error();
      v11 = 92;
      goto LABEL_18;
    }

    if (v7)
    {
      *v7 = v14 | (v12 << 8);
    }

    return 2;
  }
}

int32x4_t _MSKanji_wcrtomb(uint64_t a1, int a2, _DWORD *a3, int32x4_t result)
{
  if (*a3)
  {
    *__error() = 22;
  }

  else if (a1)
  {
    v5 = 0;
    if (a2 <= 256)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    result = vaddq_s32(vdupq_n_s32(v6), xmmword_18E98AD00);
    v7 = vdupq_n_s64(v6 - 1);
    v8 = (a1 + 3);
    v9.i64[0] = -1;
    v9.i64[1] = -1;
    v10.i64[0] = 0x300000003;
    v10.i64[1] = 0x300000003;
    do
    {
      v11 = vdupq_n_s64(v5);
      v12 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(v11, xmmword_18E98AD20)));
      v13 = vaddq_s32(result, v9);
      if (vuzp1_s16(v12, *result.i8).u8[0])
      {
        *(v8 - 3) = a2 >> (8 * v13.i8[0]);
      }

      if (vuzp1_s16(v12, *&result).i8[2])
      {
        *(v8 - 2) = a2 >> (8 * v13.i8[4]);
      }

      if (vuzp1_s16(*&result, vmovn_s64(vcgeq_u64(v7, vorrq_s8(v11, xmmword_18E98AD10)))).i32[1])
      {
        *(v8 - 1) = a2 >> (8 * v13.i8[8]);
        *v8 = a2 >> (8 * v13.i8[12]);
      }

      v5 += 4;
      result = vaddq_s32(result, v10);
      v8 += 4;
    }

    while (((v6 + 3) & 4) != v5);
  }

  return result;
}

wint_t nextwctype_l(wint_t a1, wctype_t a2, locale_t a3)
{
  v3 = *(*(a3 + 166) + 120);
  if (a1 <= 255)
  {
    v4 = a1;
    while (v4 != 255)
    {
      result = v4 + 1;
      v6 = *(v3 + 64 + 4 * v4++);
      if ((v6 & a2) != 0)
      {
        return result;
      }
    }

    a1 = 255;
  }

  v7 = *(v3 + 3144);
  if (v7)
  {
    v8 = a1 >= *v7;
    if (a1 <= *v7)
    {
      a1 = *v7;
    }
  }

  else
  {
    v8 = 1;
  }

  v9 = *(v3 + 3136);
  if (!v9)
  {
    return -1;
  }

  v10 = *(v3 + 3144);
  v11 = *(v3 + 3136);
  while (1)
  {
    v12 = &v10[6 * (v11 >> 1)];
    v13 = v12[1];
    v14 = *v12;
    if (v14 <= a1 && a1 <= v13)
    {
      break;
    }

    v16 = a1 > v13;
    v17 = v12 + 6;
    if (a1 > v13)
    {
      v10 = v17;
    }

    v18 = v11 - v16;
    v11 = (v11 - v16) >> 1;
    if (v18 < 2)
    {
      return -1;
    }
  }

  result = v8 + a1;
  if (v14 <= result && result <= v13)
  {
    v20 = *(v12 + 2);
    if (v20)
    {
      v21 = (v20 + 4 * result - 4 * v14);
      do
      {
        v22 = *v21++;
        if ((v22 & a2) != 0)
        {
          return result;
        }

        ++result;
      }

      while (v13 + 1 != result);
    }

    else if ((v12[2] & a2) != 0)
    {
      return result;
    }
  }

  v23 = &v7[6 * v9];
  v24 = v12 + 6;
  if ((v12 + 6) >= v23)
  {
    return -1;
  }

  while (1)
  {
    v25 = v12;
    v12 = v24;
    result = v25[6];
    v26 = *(v25 + 5);
    if (!v26)
    {
      if ((v25[8] & a2) != 0)
      {
        return result;
      }

      goto LABEL_40;
    }

    v27 = v25[7];
    if (result <= v27)
    {
      break;
    }

LABEL_40:
    v24 = v12 + 6;
    result = -1;
    if ((v12 + 6) >= v23)
    {
      return result;
    }
  }

  v28 = v27 + 1;
  while (1)
  {
    v29 = *v26++;
    if ((v29 & a2) != 0)
    {
      return result;
    }

    if (v28 == ++result)
    {
      goto LABEL_40;
    }
  }
}

wint_t nextwctype(wint_t a1, wctype_t a2)
{
  v2 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v2);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &__global_locale;
  }

  return nextwctype_l(a1, a2, v4);
}

char *__cdecl nl_langinfo_l(nl_item a1, locale_t a2)
{
  v2 = "";
  if (a1 <= 0x39)
  {
    v4 = (a1 - 33);
    v5 = (a1 - 21);
    v6 = (a1 - 14);
    v33 = (a1 - 7);
    while (1)
    {
      if (a2 == -1)
      {
        v7 = &__global_locale;
      }

      else
      {
        v7 = a2;
      }

      if (a2)
      {
        v8 = v7;
      }

      else
      {
        v8 = __c_locale;
      }

      v2 = "";
      switch(a1)
      {
        case 0:
          v32 = v6;
          v19 = querylocale(2, v8);
          if (!v19)
          {
            goto LABEL_54;
          }

          v20 = v19;
          j__strmode(v19, 0x2E);
          if (v21)
          {
            v2 = (v21 + 1);
          }

          else if ((*v20 != 67 || v20[1]) && j__strncasecmp_l(v20, "POSIX", v22, v23))
          {
            if (j__strncasecmp_l(v20, "UTF-8", v25, v26))
            {
              v2 = "";
            }

            else
            {
              v2 = "UTF-8";
            }
          }

          else
          {
            v2 = "US-ASCII";
          }

          goto LABEL_55;
        case 1:
          current_numeric_locale = __get_current_time_locale(v8) + 40;
          goto LABEL_36;
        case 2:
          current_numeric_locale = __get_current_time_locale(v8) + 39;
          goto LABEL_36;
        case 3:
          current_numeric_locale = __get_current_time_locale(v8) + 38;
          goto LABEL_36;
        case 4:
          current_numeric_locale = __get_current_time_locale(v8) + 57;
          goto LABEL_36;
        case 5:
          current_numeric_locale = __get_current_time_locale(v8) + 41;
          goto LABEL_36;
        case 6:
          current_numeric_locale = __get_current_time_locale(v8) + 42;
          goto LABEL_36;
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        case 13:
          current_numeric_locale = &__get_current_time_locale(v8)[v33 + 31];
          goto LABEL_36;
        case 14:
        case 15:
        case 16:
        case 17:
        case 18:
        case 19:
        case 20:
          current_numeric_locale = &__get_current_time_locale(v8)[v6 + 24];
          goto LABEL_36;
        case 21:
        case 22:
        case 23:
        case 24:
        case 25:
        case 26:
        case 27:
        case 28:
        case 29:
        case 30:
        case 31:
        case 32:
          current_numeric_locale = &__get_current_time_locale(v8)[v5 + 12];
          goto LABEL_36;
        case 33:
        case 34:
        case 35:
        case 36:
        case 37:
        case 38:
        case 39:
        case 40:
        case 41:
        case 42:
        case 43:
        case 44:
          current_numeric_locale = &__get_current_time_locale(v8)[v4];
          goto LABEL_36;
        case 45:
        case 46:
        case 47:
        case 48:
        case 49:
          goto LABEL_37;
        case 50:
          current_numeric_locale = __get_current_numeric_locale(v8);
          goto LABEL_36;
        case 51:
          current_messages_locale = __get_current_numeric_locale(v8);
          goto LABEL_18;
        case 52:
          current_numeric_locale = __get_current_messages_locale(v8);
          goto LABEL_36;
        case 53:
          current_messages_locale = __get_current_messages_locale(v8);
LABEL_18:
          current_numeric_locale = current_messages_locale + 1;
          goto LABEL_36;
        case 54:
          current_numeric_locale = __get_current_messages_locale(v8) + 2;
          goto LABEL_36;
        case 55:
          current_numeric_locale = __get_current_messages_locale(v8) + 3;
          goto LABEL_36;
        case 56:
          v32 = v6;
          v11 = __get_current_monetary_locale(v8)[1];
          if (!*v11)
          {
            goto LABEL_54;
          }

          p_cs_precedes = localeconv_l(v8)->p_cs_precedes;
          if (p_cs_precedes != localeconv_l(v8)->n_cs_precedes)
          {
            goto LABEL_54;
          }

          if (p_cs_precedes == 127)
          {
            current_monetary_locale = __get_current_monetary_locale(v8);
            if (j__strncasecmp_l(v11, current_monetary_locale[2], v16, v17))
            {
              goto LABEL_54;
            }

            v18 = 46;
          }

          else if (p_cs_precedes)
          {
            v18 = 45;
          }

          else
          {
            v18 = 43;
          }

          v31 = v18;
          v27 = j__strsignal_r(v11, v13, v14);
          v28 = reallocf(nl_langinfo_l_csym, v27 + 2);
          nl_langinfo_l_csym = v28;
          if (v28)
          {
            v2 = v28;
            *v28 = v31;
            j__strnstr(v28 + 1, v11, v29);
            return v2;
          }

LABEL_54:
          v2 = "";
LABEL_55:
          v6 = v32;
LABEL_37:
          if (*v2)
          {
            v24 = 1;
          }

          else
          {
            v24 = a1 == 0;
          }

          if (v24)
          {
            return v2;
          }

          if (a1 == 57)
          {
            return v2;
          }

          a2 = __c_locale;
          if (v8 == __c_locale)
          {
            return v2;
          }

          break;
        default:
          current_numeric_locale = __get_current_time_locale(v8) + 56;
LABEL_36:
          v2 = *current_numeric_locale;
          if (*current_numeric_locale)
          {
            goto LABEL_37;
          }

          return v2;
      }
    }
  }

  return v2;
}

char *__cdecl nl_langinfo(nl_item a1)
{
  v1 = __locale_key;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v1);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = &__global_locale;
  }

  return nl_langinfo_l(a1, v3);
}

int __istype(__darwin_ct_rune_t _c, unint64_t _f)
{
  if (_c > 0x7F)
  {
    return __maskrune(_c, _f) != 0;
  }

  else
  {
    return (_DefaultRuneLocale.__runetype[_c] & _f) != 0;
  }
}

int __wcwidth(int _c)
{
  if (_c)
  {
    v1 = __maskrune(_c, 0xE0040000uLL);
    if ((v1 & 0x40000) != 0)
    {
      v2 = 1;
    }

    else
    {
      v2 = -1;
    }

    if (v1 >> 29)
    {
      return v1 >> 30;
    }

    else
    {
      return v2;
    }
  }

  return _c;
}

int __maskrune_l(__darwin_ct_rune_t a1, unint64_t a2, locale_t a3)
{
  v3 = a2;
  if (a1 < 0x100)
  {
    v5 = __c_locale;
    v6 = &__global_locale;
    if (a3 != -1)
    {
      v6 = a3;
    }

    if (a3)
    {
      v5 = v6;
    }

    v4 = *(*(*(v5 + 166) + 120) + 4 * a1 + 60);
  }

  else
  {
    v4 = ___runetype_l(a1, a3);
  }

  return v4 & v3;
}

int __istype_l(__darwin_ct_rune_t _c, unint64_t _f, locale_t _l)
{
  if (_c > 0x7F)
  {
    v3 = __maskrune_l(_c, _f, _l);
  }

  else
  {
    v3 = _DefaultRuneLocale.__runetype[_c] & _f;
  }

  return v3 != 0;
}

__darwin_ct_rune_t __toupper_l(__darwin_ct_rune_t _c, locale_t _l)
{
  if (_c > 0x7F)
  {
    return ___toupper_l(_c, _l);
  }

  else
  {
    return _DefaultRuneLocale.__mapupper[_c];
  }
}

__darwin_ct_rune_t __tolower_l(__darwin_ct_rune_t _c, locale_t _l)
{
  if (_c > 0x7F)
  {
    return ___tolower_l(_c, _l);
  }

  else
  {
    return _DefaultRuneLocale.__maplower[_c];
  }
}

int __wcwidth_l(int _c, locale_t _l)
{
  if (_c)
  {
    v2 = __maskrune_l(_c, 0xE0040000uLL, _l);
    if ((v2 & 0x40000) != 0)
    {
      v3 = 1;
    }

    else
    {
      v3 = -1;
    }

    if (v2 >> 29)
    {
      return v2 >> 30;
    }

    else
    {
      return v3;
    }
  }

  return _c;
}

uint64_t _none_init(void *a1)
{
  a1[9] = _none_mbrtowc;
  a1[10] = _none_mbsinit;
  a1[11] = _none_mbsnrtowcs;
  a1[12] = _none_wcrtomb;
  a1[13] = _none_wcsnrtombs;
  a1[8] = 0x10000000001;
  return 0;
}

uint64_t _none_wcsnrtombs(uint64_t a1, int **a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  if (a1)
  {
    if (a4)
    {
      result = 0;
      while (a3 != result)
      {
        v7 = *v4;
        if (*v4 >= 0x100)
        {
          *a2 = v4;
          goto LABEL_20;
        }

        *(a1 + result) = v7;
        if (!v7)
        {
          *a2 = 0;
          return result;
        }

        ++v4;
        if (a4 == ++result)
        {
          a3 = a4;
          break;
        }
      }
    }

    else
    {
      a3 = 0;
    }

    *a2 = v4;
    return a3;
  }

  else
  {
    if (a3)
    {
      v8 = &v4[a3];
      v9 = *a2;
      while (*v9)
      {
        if (*v9 >= 0x100)
        {
LABEL_20:
          *__error() = 92;
          return -1;
        }

        ++v9;
        if (!--a3)
        {
          v9 = v8;
          return v9 - v4;
        }
      }
    }

    else
    {
      v9 = *a2;
    }

    return v9 - v4;
  }
}

uint64_t currentlocale()
{
  v0 = currentlocale_current_locale_string;
  if (!currentlocale_current_locale_string)
  {
    v0 = malloc_type_malloc(0xE7uLL, 0x9BA956EDuLL);
    currentlocale_current_locale_string = v0;
    if (!v0)
    {
      return 0;
    }
  }

  MEMORY[0x193AD6A30](v0, "C", 231);
  v3 = &unk_1EAC9CC40;
  v4 = 5;
  while (!j__strncasecmp_l("C", v3, v1, v2))
  {
    v3 += 32;
    if (!--v4)
    {
      return currentlocale_current_locale_string;
    }
  }

  v6 = currentlocale_current_locale_string;
  v7 = &unk_1EAC9CC40;
  v8 = 5;
  do
  {
    *&v6[j__strsignal_r(v6, v5, v1)] = 47;
    strcat(v6, v7);
    v7 += 32;
    --v8;
  }

  while (v8);
  return v6;
}

char *__get_locale_env(int a1)
{
  result = getenv("LC_ALL");
  if (!result || !*result)
  {
    result = getenv(categories[a1]);
    if (!result || !*result)
    {
      result = getenv("LANG");
      if (!result || !*result)
      {
        return "C";
      }
    }
  }

  return result;
}

const char *loadlocale(int a1)
{
  v2 = a1;
  v3 = &new_categories + 32 * a1;
  if (*v3 == 46 && (!v3[1] || v3[1] == 46 && !v3[2]))
  {
    goto LABEL_6;
  }

  j__strmode(&new_categories + 32 * a1, 0x2F);
  if (v4)
  {
    goto LABEL_6;
  }

  v6 = *__error();
  v7 = __detect_path_locale();
  *__error() = v7;
  if (*__error())
  {
    return 0;
  }

  *__error() = v6;
  v11 = a1 - 1;
  if ((a1 - 1) >= 6)
  {
LABEL_6:
    v5 = 0;
    *__error() = 22;
    return v5;
  }

  v5 = &current_categories + 32 * v2;
  if (!j__strncasecmp_l(v3, v5, v9, v10))
  {
    return v5;
  }

  if ((*(&off_1F01DE678 + v11))(v3, &__global_locale) == -1)
  {
    return 0;
  }

  j__strnstr(v5, v3, v12);
  v13 = *(&__global_locale + v11 + 165);
  if (v13)
  {
    MEMORY[0x193AD6A30](v13 + 16, v3, 32);
  }

  if (a1 == 4)
  {
    byte_1ED3F17B6 = 0;
    v14 = off_1ED3F17E8;
    if (off_1ED3F17E8)
    {
      if (atomic_fetch_add(off_1ED3F17E8, 0xFFFFFFFF) == 1)
      {
        v15 = *(v14 + 1);
        if (v15)
        {
          v15();
        }
      }
    }

    off_1ED3F17E8 = 0;
  }

  else if (a1 == 2 && byte_1ED3F17B6 == 1)
  {
    byte_1ED3F17B6 = 0;
  }

  return v5;
}

uint64_t __open_path_locale(const char *a1, uint64_t a2, size_t a3)
{
  j__strnstr(v11, _PathLocale, a3);
  *&v11[j__strsignal_r(v11, v4, v5)] = 47;
  strcat(v11, a1);
  result = open_NOCANCEL();
  if ((result & 0x80000000) != 0)
  {
    strcpy(v11, "/usr/share/locale");
    *&v11[j__strsignal_r(v11, v7, v8)] = 47;
    strcat(v11, a1);
    result = open_NOCANCEL();
    if ((result & 0x80000000) != 0)
    {
      strcpy(v11, "/usr/local/share/locale");
      *&v11[j__strsignal_r(v11, v9, v10)] = 47;
      strcat(v11, a1);
      return open_NOCANCEL();
    }
  }

  return result;
}

uint64_t __setrunelocale(char *a1, uint64_t a2, size_t a3, _xlocale *a4)
{
  if (*a1 == 67 && !a1[1] || !j__strncasecmp_l(a1, "POSIX", a3, a4))
  {
    v50 = *(a2 + 1328);
    if (v50)
    {
      if (atomic_fetch_add(v50, 0xFFFFFFFF) == 1)
      {
        v51 = *(v50 + 8);
        if (v51)
        {
          v51();
        }
      }
    }

    *(a2 + 1328) = &_DefaultRuneXLocale;
    if (a2 == &__global_locale)
    {
      v49 = 0;
      _CurrentRuneLocale = qword_1EE4CCC38;
      __mb_cur_max = dword_1EE4CCC00;
      __mb_sb_limit = unk_1EE4CCC04;
      return v49;
    }

    return 0;
  }

  os_unfair_lock_lock(&__setrunelocale_cache_lock);
  if (__setrunelocale_CachedRuneLocale && !j__strncasecmp_l(a1, (__setrunelocale_CachedRuneLocale + 16), v6, v7))
  {
    v52 = *(a2 + 1328);
    if (v52)
    {
      if (atomic_fetch_add(v52, 0xFFFFFFFF) == 1)
      {
        v53 = *(v52 + 8);
        if (v53)
        {
          v53();
        }
      }
    }

    v54 = __setrunelocale_CachedRuneLocale;
    *(a2 + 1328) = __setrunelocale_CachedRuneLocale;
    if (v54)
    {
      atomic_fetch_add(v54, 1u);
    }

    if (a2 == &__global_locale)
    {
      v55 = *(a2 + 1328);
      _CurrentRuneLocale = *(v55 + 120);
      v56 = *(v55 + 64);
      LODWORD(v55) = *(v55 + 68);
      __mb_cur_max = v56;
      __mb_sb_limit = v55;
    }

LABEL_58:
    os_unfair_lock_unlock(&__setrunelocale_cache_lock);
    return 0;
  }

  os_unfair_lock_unlock(&__setrunelocale_cache_lock);
  j__strnstr(__big, a1, v8);
  strcpy(&__big[j__strsignal_r(__big, v9, v10)], "/LC_CTYPE");
  v13 = __open_path_locale(__big, v11, v12);
  v14 = fdopen_DARWIN_EXTSN(v13, "r");
  if (!v14)
  {
    if (*__error())
    {
      return *__error();
    }

    else
    {
      return 2;
    }
  }

  v15 = v14;
  RuneMagi = _Read_RuneMagi(v14);
  if (RuneMagi)
  {
    v17 = RuneMagi;
    fclose(v15);
    *(v17 + 72) = 0;
    *(v17 + 80) = 0;
    *(v17 + 88) = __mbsnrtowcs_std;
    *(v17 + 96) = 0;
    *(v17 + 104) = __wcsnrtombs_std;
    v18 = *(v17 + 120);
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    if (j__strncasecmp_l((v18 + 8), "NONE:US-ASCII", v19, v20) && j__strncasecmp_l((v18 + 8), "ASCII", v21, v22))
    {
      if (j__strsvisx((v18 + 8), "NONE", 4uLL, v23, v24))
      {
        if (j__strncasecmp_l((v18 + 8), "UTF-8", v25, v26))
        {
          if (j__strncasecmp_l((v18 + 8), "EUC-CN", v27, v28))
          {
            if (j__strncasecmp_l((v18 + 8), "EUC-JP", v29, v30))
            {
              if (j__strncasecmp_l((v18 + 8), "EUC-KR", v31, v32))
              {
                if (j__strncasecmp_l((v18 + 8), "EUC-TW", v33, v34))
                {
                  if (j__strncasecmp_l((v18 + 8), "EUC", v35, v36))
                  {
                    if (j__strncasecmp_l((v18 + 8), "GB18030", v37, v38))
                    {
                      if (j__strncasecmp_l((v18 + 8), "GB2312", v39, v40))
                      {
                        if (j__strncasecmp_l((v18 + 8), "GBK", v41, v42))
                        {
                          if (j__strncasecmp_l((v18 + 8), "BIG5", v43, v44))
                          {
                            if (j__strncasecmp_l((v18 + 8), "MSKanji", v45, v46))
                            {
                              if (j__strncasecmp_l((v18 + 8), "UTF2", v47, v48))
                              {
                                v49 = 79;
LABEL_42:
                                if (atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
                                {
                                  v59 = *(v17 + 8);
                                  if (v59)
                                  {
                                    v59(v17);
                                  }
                                }

                                return v49;
                              }

                              v57 = _UTF2_init(v17);
                            }

                            else
                            {
                              v57 = _MSKanji_init(v17);
                            }
                          }

                          else
                          {
                            v57 = _BIG5_init(v17);
                          }
                        }

                        else
                        {
                          v57 = _GBK_init(v17);
                        }
                      }

                      else
                      {
                        v57 = _GB2312_init(v17);
                      }
                    }

                    else
                    {
                      v57 = _GB18030_init(v17);
                    }
                  }

                  else
                  {
                    v57 = _EUC_init(v17);
                  }
                }

                else
                {
                  v57 = _EUC_TW_init(v17);
                }
              }

              else
              {
                v57 = _EUC_KR_init(v17);
              }
            }

            else
            {
              v57 = _EUC_JP_init(v17);
            }
          }

          else
          {
            v57 = _EUC_CN_init(v17);
          }
        }

        else
        {
          v57 = _UTF8_init(v17);
        }
      }

      else
      {
        v57 = _none_init(v17);
      }
    }

    else
    {
      v57 = _ascii_init(v17);
    }

    v49 = v57;
    if (v57)
    {
      goto LABEL_42;
    }

    j__strnstr((v17 + 16), a1, v58);
    v60 = *(a2 + 1328);
    if (v60)
    {
      if (atomic_fetch_add(v60, 0xFFFFFFFF) == 1)
      {
        v61 = *(v60 + 8);
        if (v61)
        {
          v61();
        }
      }
    }

    *(a2 + 1328) = v17;
    if (a2 == &__global_locale)
    {
      _CurrentRuneLocale = *(v17 + 120);
      v62 = *(v17 + 68);
      __mb_cur_max = *(v17 + 64);
      __mb_sb_limit = v62;
    }

    os_unfair_lock_lock(&__setrunelocale_cache_lock);
    v63 = __setrunelocale_CachedRuneLocale;
    if (__setrunelocale_CachedRuneLocale)
    {
      if (atomic_fetch_add(__setrunelocale_CachedRuneLocale, 0xFFFFFFFF) == 1)
      {
        v64 = *(v63 + 8);
        if (v64)
        {
          v64();
        }
      }
    }

    __setrunelocale_CachedRuneLocale = v17;
    atomic_fetch_add(v17, 1u);
    goto LABEL_58;
  }

  if (*__error())
  {
    v49 = *__error();
  }

  else
  {
    v49 = 79;
  }

  fclose(v15);
  return v49;
}

uint64_t __wrap_setrunelocale(char *a1, uint64_t a2, size_t a3, _xlocale *a4)
{
  result = __setrunelocale(a1, a2, a3, a4);
  if (result)
  {
    *__error() = result;
    return 0xFFFFFFFFLL;
  }

  return result;
}

__darwin_ct_rune_t ___toupper_l(__darwin_ct_rune_t result, locale_t a2)
{
  if ((result & 0x80000000) == 0)
  {
    v2 = &__c_locale;
    v3 = &__global_locale;
    if (a2 != -1)
    {
      v3 = a2;
    }

    if (a2)
    {
      v2 = v3;
    }

    v4 = *(*(v2 + 166) + 120);
    if (result > 0xFF)
    {
      v5 = *(v4 + 3168);
      if (v5)
      {
        v6 = *(v4 + 3176);
        while (1)
        {
          v7 = &v6[6 * (v5 >> 1)];
          v8 = v7[1];
          if (result >= *v7 && v8 >= result)
          {
            break;
          }

          v10 = v8 < result;
          v11 = v7 + 6;
          if (v8 < result)
          {
            v6 = v11;
          }

          v12 = v5 - v10;
          v5 = (v5 - v10) >> 1;
          if (v12 <= 1)
          {
            return result;
          }
        }

        return result - *v7 + v7[2];
      }
    }

    else
    {
      return *(v4 + 4 * result + 2108);
    }
  }

  return result;
}

__darwin_ct_rune_t ___toupper(__darwin_ct_rune_t a1)
{
  v1 = __locale_key;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v1);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = &__global_locale;
  }

  return ___toupper_l(a1, v3);
}

uint64_t _UTF8_init(void *a1)
{
  a1[9] = _UTF8_mbrtowc;
  a1[12] = _UTF8_wcrtomb;
  a1[10] = _UTF8_mbsinit;
  a1[11] = _UTF8_mbsnrtowcs;
  a1[13] = _UTF8_wcsnrtombs;
  a1[8] = 0x8000000004;
  return 0;
}

uint64_t _UTF8_wcsnrtombs(_BYTE *a1, unsigned int **a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (*(a5 + 4))
  {
    *__error() = 22;
    return -1;
  }

  else
  {
    v9 = a1;
    v10 = *a2;
    v5 = 0;
    if (a1)
    {
      v11 = a4;
      if (a4)
      {
        while (a3)
        {
          v12 = *v10;
          if (*v10 > 0x7F)
          {
            if (v11 < 5)
            {
              v14 = _UTF8_wcrtomb(path, v12, a5);
              if (v14 == -1)
              {
LABEL_30:
                *a2 = v10;
                return -1;
              }

              v13 = v14;
              if (v14 > v11)
              {
                break;
              }

              j__mkdtempat_np(v9, path);
            }

            else
            {
              v13 = _UTF8_wcrtomb(v9, v12, a5);
              if (v13 == -1)
              {
                goto LABEL_30;
              }
            }
          }

          else
          {
            *v9 = v12;
            v13 = 1;
          }

          if (!*v10)
          {
            *a2 = 0;
            v17 = v5 + v13;
            return v17 - 1;
          }

          ++v10;
          v9 += v13;
          v5 += v13;
          --a3;
          v11 -= v13;
          if (!v11)
          {
            break;
          }
        }
      }

      *a2 = v10;
    }

    else
    {
      while (a3)
      {
        v15 = *v10;
        if (*v10 >= 0x80)
        {
          v16 = _UTF8_wcrtomb(path, v15, a5);
          if (v16 == -1)
          {
            return -1;
          }

          if (!*v10)
          {
LABEL_27:
            v17 = v5 + v16;
            return v17 - 1;
          }
        }

        else
        {
          v16 = 1;
          if (!v15)
          {
            goto LABEL_27;
          }
        }

        ++v10;
        v5 += v16;
        --a3;
      }
    }
  }

  return v5;
}

size_t wcsftime_l(__int32 *a1, size_t a2, const __int32 *a3, const tm *a4, locale_t a5)
{
  v21 = a3;
  v22 = 0;
  v8 = &__global_locale;
  memset(&v23, 0, 32);
  if (a5 != -1)
  {
    v8 = a5;
  }

  if (a5)
  {
    v9 = v8;
  }

  else
  {
    v9 = __c_locale;
  }

  memset(&v23._mbstateL + 4, 0, 96);
  v10 = wcsrtombs_l(0, &v21, 0, &v23, v9);
  if (v10 == -1)
  {
    v16 = 0;
    v13 = 0;
LABEL_17:
    v19 = *__error();
    free(v13);
    free(v16);
    v18 = 0;
    *__error() = v19;
    return v18;
  }

  v11 = v10;
  v12 = malloc_type_malloc(v10 + 1, 0x4C293FB2uLL);
  v13 = v12;
  if (!v12)
  {
    v16 = 0;
    goto LABEL_17;
  }

  memset(&v23, 0, sizeof(v23));
  wcsrtombs_l(v12, &v21, v11 + 1, &v23, v9);
  v14 = *(*(v9 + 166) + 64);
  if (0xFFFFFFFFFFFFFFFFLL / v14 <= a2)
  {
    v16 = 0;
    *__error() = 22;
    goto LABEL_17;
  }

  v15 = malloc_type_malloc(v14 * a2, 0x6E5029C5uLL);
  v16 = v15;
  if (!v15)
  {
    goto LABEL_17;
  }

  if (!strftime_l(v15, a2, v13, a4, v9))
  {
    goto LABEL_17;
  }

  v22 = v16;
  memset(&v23, 0, sizeof(v23));
  v17 = mbsrtowcs_l(a1, &v22, a2, &v23, v9);
  if (v17 > 0xFFFFFFFFFFFFFFFDLL || v22)
  {
    goto LABEL_17;
  }

  v18 = v17;
  free(v13);
  free(v16);
  return v18;
}

size_t wcsftime(__int32 *a1, size_t a2, const __int32 *a3, const tm *a4)
{
  v4 = __locale_key;
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &__global_locale;
  }

  return wcsftime_l(a1, a2, a3, a4, v6);
}

size_t wcsnrtombs_l(char *a1, const __int32 **a2, size_t a3, size_t a4, mbstate_t *a5, locale_t a6)
{
  v6 = &__global_locale;
  if (a6 != -1)
  {
    v6 = a6;
  }

  if (a6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &__c_locale;
  }

  if (!a5)
  {
    a5 = (v7 + 912);
  }

  return (*(*(v7 + 166) + 104))(a1, a2, a3, a4, a5);
}

size_t wcsnrtombs(char *a1, const __int32 **a2, size_t a3, size_t a4, mbstate_t *a5)
{
  v5 = __locale_key;
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (!v6)
  {
    v6 = &__global_locale;
  }

  if (v6 == -1)
  {
    v7 = &__global_locale;
  }

  else
  {
    v7 = v6;
  }

  if (!a5)
  {
    a5 = (v7 + 912);
  }

  return (*(*(v7 + 166) + 104))(a1, a2, a3, a4, a5);
}

uint64_t __wcsnrtombs_std(char *a1, _DWORD **a2, uint64_t a3, unint64_t a4, __int128 *a5, uint64_t a6)
{
  v8 = a3;
  v9 = *(a6 + 1328);
  v10 = *(v9 + 96);
  v11 = *a2;
  if (a1)
  {
    v12 = a4;
    if (a4)
    {
      v13 = a1;
      v14 = 0;
      v15 = *(v9 + 64);
      while (v8)
      {
        if (v12 <= v15)
        {
          v17 = a5[5];
          v35 = a5[4];
          v36 = v17;
          v18 = a5[7];
          v37 = a5[6];
          v38 = v18;
          v19 = a5[1];
          v31 = *a5;
          v32 = v19;
          v20 = a5[3];
          v33 = a5[2];
          v34 = v20;
          v21 = v10(path, *v11, a5, a6);
          if (v21 == -1)
          {
LABEL_21:
            *a2 = v11;
            return -1;
          }

          v16 = v21;
          if (v21 > v12)
          {
            v25 = v36;
            a5[4] = v35;
            a5[5] = v25;
            v26 = v38;
            a5[6] = v37;
            a5[7] = v26;
            v27 = v32;
            *a5 = v31;
            a5[1] = v27;
            v28 = v34;
            a5[2] = v33;
            a5[3] = v28;
            break;
          }

          j__mkdtempat_np(v13, path);
        }

        else
        {
          v16 = v10(v13, *v11, a5, a6);
          if (v16 == -1)
          {
            goto LABEL_21;
          }
        }

        if (!*v11)
        {
          *a2 = 0;
          v23 = v14 + v16;
          return v23 - 1;
        }

        ++v11;
        v13 += v16;
        v14 += v16;
        --v8;
        v12 -= v16;
        if (!v12)
        {
          break;
        }
      }
    }

    else
    {
      v14 = 0;
    }

    *a2 = v11;
  }

  else
  {
    v14 = 0;
    if (a3)
    {
      while (1)
      {
        v22 = v10(path, *v11, a5, a6);
        if (v22 == -1)
        {
          return -1;
        }

        if (!*v11)
        {
          break;
        }

        ++v11;
        v14 += v22;
        if (!--v8)
        {
          return v14;
        }
      }

      v23 = v14 + v22;
      return v23 - 1;
    }
  }

  return v14;
}

size_t wcsrtombs_l(char *a1, const __int32 **a2, size_t a3, mbstate_t *a4, locale_t a5)
{
  v5 = &__global_locale;
  if (a5 != -1)
  {
    v5 = a5;
  }

  if (a5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &__c_locale;
  }

  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = (v6 + 1040);
  }

  return (*(*(v6 + 166) + 104))(a1, a2, -1, a3, v7);
}

size_t wcsrtombs(char *a1, const __int32 **a2, size_t a3, mbstate_t *a4)
{
  v4 = __locale_key;
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
  if (!v5)
  {
    v5 = &__global_locale;
  }

  if (v5 == -1)
  {
    v6 = &__global_locale;
  }

  else
  {
    v6 = v5;
  }

  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = (v6 + 1040);
  }

  return (*(*(v6 + 166) + 104))(a1, a2, -1, a3, v7);
}

size_t __wcs_end_offset(const char *a1, uint64_t a2, locale_t a3)
{
  decimal_point = localeconv_l(a3)->decimal_point;
  v6 = a2 - a1;
  if (strnstr(a1, decimal_point, v6))
  {
    return v6 - j__strsignal_r(decimal_point, v7, v8) + 1;
  }

  return v6;
}

double wcstod_l(const __int32 *a1, __int32 **a2, locale_t a3)
{
  v4 = a1;
  memset(&v29, 0, sizeof(v29));
  v28 = 0;
  _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v27 - v8;
  if (v6 == -1)
  {
    v10 = &__global_locale;
  }

  else
  {
    v10 = v6;
  }

  if (v6)
  {
    v11 = v10;
  }

  else
  {
    v11 = __c_locale;
  }

  v12 = __numeric_ctype(v11, v5, v6, v7);
  v13 = v12;
  if (v12 == -1)
  {
    v14 = &__global_locale;
  }

  else
  {
    v14 = v12;
  }

  if (v12)
  {
    v15 = v14;
  }

  else
  {
    v15 = __c_locale;
  }

  v16 = v4;
  do
  {
    v17 = *v16;
    if (v17 > 0x7F)
    {
      if (v17 >= 0x100)
      {
        LOWORD(v19) = ___runetype_l(v17, v13);
        goto LABEL_20;
      }

      v18 = (*(*(v15 + 166) + 120) + 4 * v17);
    }

    else
    {
      v18 = &_DefaultRuneLocale.__magic[4 * v17];
    }

    v19 = *(v18 + 15);
LABEL_20:
    ++v16;
  }

  while ((v19 & 0x4000) != 0);
  if (!_simple_salloc())
  {
    return 0.0;
  }

  memset(&v29, 0, sizeof(v29));
  v20 = *(v16 - 1);
  if (v20)
  {
    v21 = v16;
    do
    {
      v22 = wcrtomb_l(v9, v20, &v29, v13);
      if (v22 == -1)
      {
        break;
      }

      v9[v22] = 0;
      if ((_simple_sappend() & 0x80000000) != 0)
      {
        v25 = 0.0;
        goto LABEL_33;
      }

      v23 = *v21++;
      v20 = v23;
    }

    while (v23);
  }

  v24 = _simple_string();
  v25 = strtod_l(v24, &v28, v11);
  if (a2)
  {
    if (v28 != v24)
    {
      v4 = &v16[__wcs_end_offset(v24, v28, v11) - 1];
    }

    *a2 = v4;
  }

LABEL_33:
  _simple_sfree();
  return v25;
}

double wcstod(const __int32 *a1, __int32 **a2)
{
  v2 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v2);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &__global_locale;
  }

  return wcstod_l(a1, a2, v4);
}

float wcstof_l(const __int32 *a1, __int32 **a2, locale_t a3)
{
  v4 = a1;
  memset(&v29, 0, sizeof(v29));
  v28 = 0;
  _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v27 - v8;
  if (v6 == -1)
  {
    v10 = &__global_locale;
  }

  else
  {
    v10 = v6;
  }

  if (v6)
  {
    v11 = v10;
  }

  else
  {
    v11 = __c_locale;
  }

  v12 = __numeric_ctype(v11, v5, v6, v7);
  v13 = v12;
  if (v12 == -1)
  {
    v14 = &__global_locale;
  }

  else
  {
    v14 = v12;
  }

  if (v12)
  {
    v15 = v14;
  }

  else
  {
    v15 = __c_locale;
  }

  v16 = v4;
  do
  {
    v17 = *v16;
    if (v17 > 0x7F)
    {
      if (v17 >= 0x100)
      {
        LOWORD(v19) = ___runetype_l(v17, v13);
        goto LABEL_20;
      }

      v18 = (*(*(v15 + 166) + 120) + 4 * v17);
    }

    else
    {
      v18 = &_DefaultRuneLocale.__magic[4 * v17];
    }

    v19 = *(v18 + 15);
LABEL_20:
    ++v16;
  }

  while ((v19 & 0x4000) != 0);
  if (!_simple_salloc())
  {
    return 0.0;
  }

  memset(&v29, 0, sizeof(v29));
  v20 = *(v16 - 1);
  if (v20)
  {
    v21 = v16;
    do
    {
      v22 = wcrtomb_l(v9, v20, &v29, v13);
      if (v22 == -1)
      {
        break;
      }

      v9[v22] = 0;
      if ((_simple_sappend() & 0x80000000) != 0)
      {
        v25 = 0.0;
        goto LABEL_33;
      }

      v23 = *v21++;
      v20 = v23;
    }

    while (v23);
  }

  v24 = _simple_string();
  v25 = strtof_l(v24, &v28, v11);
  if (a2)
  {
    if (v28 != v24)
    {
      v4 = &v16[__wcs_end_offset(v24, v28, v11) - 1];
    }

    *a2 = v4;
  }

LABEL_33:
  _simple_sfree();
  return v25;
}

float wcstof(const __int32 *a1, __int32 **a2)
{
  v2 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v2);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &__global_locale;
  }

  return wcstof_l(a1, a2, v4);
}

intmax_t wcstoimax_l(const __int32 *nptr, __int32 **endptr, int base, locale_t a4)
{
  v7 = &__global_locale;
  if (a4 == -1)
  {
    v8 = &__global_locale;
  }

  else
  {
    v8 = a4;
  }

  if (a4)
  {
    v9 = v8;
  }

  else
  {
    v9 = __c_locale;
  }

  if (v9 != -1)
  {
    v7 = v9;
  }

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = __c_locale;
  }

  v11 = nptr;
  do
  {
    while (1)
    {
      v13 = *v11++;
      v12 = v13;
      if (v13 <= 0x7F)
      {
        v14 = &_DefaultRuneLocale.__magic[4 * v12];
        goto LABEL_19;
      }

      if (v12 < 0x100)
      {
        break;
      }

      if ((___runetype_l(v12, v9) & 0x4000) == 0)
      {
        goto LABEL_20;
      }
    }

    v14 = (*(*(v10 + 166) + 120) + 4 * v12);
LABEL_19:
    ;
  }

  while ((*(v14 + 15) & 0x4000) != 0);
LABEL_20:
  if (v12 == 43 || v12 == 45)
  {
    v16 = *v11++;
    v15 = v16;
  }

  else
  {
    v15 = v12;
  }

  if ((base & 0xFFFFFFEF) != 0 || v15 != 48)
  {
    if (v15 == 48)
    {
      v17 = 8;
    }

    else
    {
      v17 = 10;
    }

    if (!base)
    {
      base = v17;
    }

    goto LABEL_35;
  }

  if ((*v11 | 0x20) != 0x78)
  {
    v15 = 48;
    if (!base)
    {
      base = 8;
    }

LABEL_35:
    if ((base - 37) >= 0xFFFFFFDD)
    {
      goto LABEL_37;
    }

    v18 = 0;
    goto LABEL_61;
  }

  v15 = v11[1];
  v11 += 2;
  base = 16;
LABEL_37:
  v18 = 0;
  v19 = 0;
  if (v12 == 45)
  {
    v20 = 0x8000000000000000;
  }

  else
  {
    v20 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v21 = v20 / base;
  while (1)
  {
    v22 = v15 - 48;
    if ((v15 - 48) >= 0xA)
    {
      if ((v15 - 65) > 0x19)
      {
        if ((v15 - 97) > 0x19)
        {
          break;
        }

        v22 = v15 - 87;
      }

      else
      {
        v22 = v15 - 55;
      }
    }

    if (v22 >= base)
    {
      break;
    }

    v23 = -1;
    if ((v19 & 0x80000000) == 0 && v18 <= v21)
    {
      if (v18 == v21 && v22 > (v20 % base))
      {
        v18 = v20 / base;
      }

      else
      {
        v18 = v18 * base + v22;
        v23 = 1;
      }
    }

    v24 = *v11++;
    v15 = v24;
    v19 = v23;
  }

  if (v19 < 0)
  {
    v28 = __error();
    v25 = 0;
    *v28 = 34;
    if (!endptr)
    {
      return v20;
    }

    goto LABEL_62;
  }

  if (!v19)
  {
LABEL_61:
    *__error() = 22;
    v25 = 1;
    v20 = v18;
    if (!endptr)
    {
      return v20;
    }

    goto LABEL_62;
  }

  v25 = 0;
  if (v12 == 45)
  {
    v20 = -v18;
  }

  else
  {
    v20 = v18;
  }

  if (endptr)
  {
LABEL_62:
    if (v25)
    {
      v26 = nptr;
    }

    else
    {
      v26 = (v11 - 1);
    }

    *endptr = v26;
  }

  return v20;
}

intmax_t wcstoimax(const __int32 *__nptr, __int32 **__endptr, int __base)
{
  v3 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &__global_locale;
  }

  return wcstoimax_l(__nptr, __endptr, __base, v5);
}

uint64_t wcstol_l(const __int32 *a1, __int32 **a2, int a3, locale_t a4)
{
  v7 = &__global_locale;
  if (a4 == -1)
  {
    v8 = &__global_locale;
  }

  else
  {
    v8 = a4;
  }

  if (a4)
  {
    v9 = v8;
  }

  else
  {
    v9 = __c_locale;
  }

  if (v9 != -1)
  {
    v7 = v9;
  }

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = __c_locale;
  }

  v11 = a1;
  do
  {
    while (1)
    {
      v13 = *v11++;
      v12 = v13;
      if (v13 <= 0x7F)
      {
        v14 = &_DefaultRuneLocale.__magic[4 * v12];
        goto LABEL_19;
      }

      if (v12 < 0x100)
      {
        break;
      }

      if ((___runetype_l(v12, v9) & 0x4000) == 0)
      {
        goto LABEL_20;
      }
    }

    v14 = (*(*(v10 + 166) + 120) + 4 * v12);
LABEL_19:
    ;
  }

  while ((*(v14 + 15) & 0x4000) != 0);
LABEL_20:
  if (v12 == 43 || v12 == 45)
  {
    v16 = *v11++;
    v15 = v16;
  }

  else
  {
    v15 = v12;
  }

  if ((a3 & 0xFFFFFFEF) != 0 || v15 != 48)
  {
    if (v15 == 48)
    {
      v17 = 8;
    }

    else
    {
      v17 = 10;
    }

    if (!a3)
    {
      a3 = v17;
    }

    goto LABEL_35;
  }

  if ((*v11 | 0x20) != 0x78)
  {
    v15 = 48;
    if (!a3)
    {
      a3 = 8;
    }

LABEL_35:
    if ((a3 - 37) >= 0xFFFFFFDD)
    {
      goto LABEL_37;
    }

    v18 = 0;
    goto LABEL_61;
  }

  v15 = v11[1];
  v11 += 2;
  a3 = 16;
LABEL_37:
  v18 = 0;
  v19 = 0;
  if (v12 == 45)
  {
    v20 = 0x8000000000000000;
  }

  else
  {
    v20 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v21 = v20 / a3;
  while (1)
  {
    v22 = v15 - 48;
    if ((v15 - 48) >= 0xA)
    {
      if ((v15 - 65) > 0x19)
      {
        if ((v15 - 97) > 0x19)
        {
          break;
        }

        v22 = v15 - 87;
      }

      else
      {
        v22 = v15 - 55;
      }
    }

    if (v22 >= a3)
    {
      break;
    }

    v23 = -1;
    if ((v19 & 0x80000000) == 0 && v18 <= v21)
    {
      if (v18 == v21 && v22 > (v20 % a3))
      {
        v18 = v20 / a3;
      }

      else
      {
        v18 = v18 * a3 + v22;
        v23 = 1;
      }
    }

    v24 = *v11++;
    v15 = v24;
    v19 = v23;
  }

  if (v19 < 0)
  {
    v28 = __error();
    v25 = 0;
    *v28 = 34;
    if (!a2)
    {
      return v20;
    }

    goto LABEL_62;
  }

  if (!v19)
  {
LABEL_61:
    *__error() = 22;
    v25 = 1;
    v20 = v18;
    if (!a2)
    {
      return v20;
    }

    goto LABEL_62;
  }

  v25 = 0;
  if (v12 == 45)
  {
    v20 = -v18;
  }

  else
  {
    v20 = v18;
  }

  if (a2)
  {
LABEL_62:
    if (v25)
    {
      v26 = a1;
    }

    else
    {
      v26 = (v11 - 1);
    }

    *a2 = v26;
  }

  return v20;
}

uint64_t wcstol(const __int32 *a1, __int32 **a2, int a3)
{
  v3 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &__global_locale;
  }

  return wcstol_l(a1, a2, a3, v5);
}

long double wcstold_l(const __int32 *a1, __int32 **a2, locale_t a3)
{
  v4 = a1;
  memset(&v29, 0, sizeof(v29));
  v28 = 0;
  _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v27 - v8;
  if (v6 == -1)
  {
    v10 = &__global_locale;
  }

  else
  {
    v10 = v6;
  }

  if (v6)
  {
    v11 = v10;
  }

  else
  {
    v11 = __c_locale;
  }

  v12 = __numeric_ctype(v11, v5, v6, v7);
  v13 = v12;
  if (v12 == -1)
  {
    v14 = &__global_locale;
  }

  else
  {
    v14 = v12;
  }

  if (v12)
  {
    v15 = v14;
  }

  else
  {
    v15 = __c_locale;
  }

  v16 = v4;
  do
  {
    v17 = *v16;
    if (v17 > 0x7F)
    {
      if (v17 >= 0x100)
      {
        LOWORD(v19) = ___runetype_l(v17, v13);
        goto LABEL_20;
      }

      v18 = (*(*(v15 + 166) + 120) + 4 * v17);
    }

    else
    {
      v18 = &_DefaultRuneLocale.__magic[4 * v17];
    }

    v19 = *(v18 + 15);
LABEL_20:
    ++v16;
  }

  while ((v19 & 0x4000) != 0);
  if (!_simple_salloc())
  {
    return 0.0;
  }

  memset(&v29, 0, sizeof(v29));
  v20 = *(v16 - 1);
  if (v20)
  {
    v21 = v16;
    do
    {
      v22 = wcrtomb_l(v9, v20, &v29, v13);
      if (v22 == -1)
      {
        break;
      }

      v9[v22] = 0;
      if ((_simple_sappend() & 0x80000000) != 0)
      {
        v25 = 0.0;
        goto LABEL_33;
      }

      v23 = *v21++;
      v20 = v23;
    }

    while (v23);
  }

  v24 = _simple_string();
  v25 = strtold_l(v24, &v28, v11);
  if (a2)
  {
    if (v28 != v24)
    {
      v4 = &v16[__wcs_end_offset(v24, v28, v11) - 1];
    }

    *a2 = v4;
  }

LABEL_33:
  _simple_sfree();
  return v25;
}

long double wcstold(const __int32 *a1, __int32 **a2)
{
  v2 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v2);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &__global_locale;
  }

  return wcstold_l(a1, a2, v4);
}

uint64_t wcstoll_l(const __int32 *a1, __int32 **a2, int a3, locale_t a4)
{
  v7 = &__global_locale;
  if (a4 == -1)
  {
    v8 = &__global_locale;
  }

  else
  {
    v8 = a4;
  }

  if (a4)
  {
    v9 = v8;
  }

  else
  {
    v9 = __c_locale;
  }

  if (v9 != -1)
  {
    v7 = v9;
  }

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = __c_locale;
  }

  v11 = a1;
  do
  {
    while (1)
    {
      v13 = *v11++;
      v12 = v13;
      if (v13 <= 0x7F)
      {
        v14 = &_DefaultRuneLocale.__magic[4 * v12];
        goto LABEL_19;
      }

      if (v12 < 0x100)
      {
        break;
      }

      if ((___runetype_l(v12, v9) & 0x4000) == 0)
      {
        goto LABEL_20;
      }
    }

    v14 = (*(*(v10 + 166) + 120) + 4 * v12);
LABEL_19:
    ;
  }

  while ((*(v14 + 15) & 0x4000) != 0);
LABEL_20:
  if (v12 == 43 || v12 == 45)
  {
    v16 = *v11++;
    v15 = v16;
  }

  else
  {
    v15 = v12;
  }

  if ((a3 & 0xFFFFFFEF) != 0 || v15 != 48)
  {
    if (v15 == 48)
    {
      v17 = 8;
    }

    else
    {
      v17 = 10;
    }

    if (!a3)
    {
      a3 = v17;
    }

    goto LABEL_35;
  }

  if ((*v11 | 0x20) != 0x78)
  {
    v15 = 48;
    if (!a3)
    {
      a3 = 8;
    }

LABEL_35:
    if ((a3 - 37) >= 0xFFFFFFDD)
    {
      goto LABEL_37;
    }

    v18 = 0;
    goto LABEL_61;
  }

  v15 = v11[1];
  v11 += 2;
  a3 = 16;
LABEL_37:
  v18 = 0;
  v19 = 0;
  if (v12 == 45)
  {
    v20 = 0x8000000000000000;
  }

  else
  {
    v20 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v21 = v20 / a3;
  while (1)
  {
    v22 = v15 - 48;
    if ((v15 - 48) >= 0xA)
    {
      if ((v15 - 65) > 0x19)
      {
        if ((v15 - 97) > 0x19)
        {
          break;
        }

        v22 = v15 - 87;
      }

      else
      {
        v22 = v15 - 55;
      }
    }

    if (v22 >= a3)
    {
      break;
    }

    v23 = -1;
    if ((v19 & 0x80000000) == 0 && v18 <= v21)
    {
      if (v18 == v21 && v22 > (v20 % a3))
      {
        v18 = v20 / a3;
      }

      else
      {
        v18 = v18 * a3 + v22;
        v23 = 1;
      }
    }

    v24 = *v11++;
    v15 = v24;
    v19 = v23;
  }

  if (v19 < 0)
  {
    v28 = __error();
    v25 = 0;
    *v28 = 34;
    if (!a2)
    {
      return v20;
    }

    goto LABEL_62;
  }

  if (!v19)
  {
LABEL_61:
    *__error() = 22;
    v25 = 1;
    v20 = v18;
    if (!a2)
    {
      return v20;
    }

    goto LABEL_62;
  }

  v25 = 0;
  if (v12 == 45)
  {
    v20 = -v18;
  }

  else
  {
    v20 = v18;
  }

  if (a2)
  {
LABEL_62:
    if (v25)
    {
      v26 = a1;
    }

    else
    {
      v26 = (v11 - 1);
    }

    *a2 = v26;
  }

  return v20;
}

uint64_t wcstoll(const __int32 *a1, __int32 **a2, int a3)
{
  v3 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &__global_locale;
  }

  return wcstoll_l(a1, a2, a3, v5);
}

size_t wcstombs_l(char *a1, const __int32 *a2, size_t a3, locale_t a4)
{
  v4 = &__global_locale;
  if (a4 != -1)
  {
    v4 = a4;
  }

  if (a4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &__c_locale;
  }

  memset(v8, 0, sizeof(v8));
  v7 = a2;
  return (*(*(v5 + 166) + 104))(a1, &v7, -1, a3, v8);
}

size_t wcstombs(char *a1, const __int32 *a2, size_t a3)
{
  v3 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if (!v4)
  {
    v4 = &__global_locale;
  }

  if (v4 == -1)
  {
    v5 = &__global_locale;
  }

  else
  {
    v5 = v4;
  }

  memset(v8, 0, sizeof(v8));
  v7 = a2;
  return (*(v5[166] + 104))(a1, &v7, -1, a3, v8);
}

unint64_t wcstoul_l(const __int32 *a1, __int32 **a2, int a3, locale_t a4)
{
  v7 = &__global_locale;
  if (a4 == -1)
  {
    v8 = &__global_locale;
  }

  else
  {
    v8 = a4;
  }

  if (a4)
  {
    v9 = v8;
  }

  else
  {
    v9 = __c_locale;
  }

  if (v9 != -1)
  {
    v7 = v9;
  }

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = __c_locale;
  }

  v11 = a1;
  do
  {
    while (1)
    {
      v13 = *v11++;
      v12 = v13;
      if (v13 <= 0x7F)
      {
        v14 = &_DefaultRuneLocale.__magic[4 * v12];
        goto LABEL_19;
      }

      if (v12 < 0x100)
      {
        break;
      }

      if ((___runetype_l(v12, v9) & 0x4000) == 0)
      {
        goto LABEL_20;
      }
    }

    v14 = (*(*(v10 + 166) + 120) + 4 * v12);
LABEL_19:
    ;
  }

  while ((*(v14 + 15) & 0x4000) != 0);
LABEL_20:
  if (v12 == 43 || v12 == 45)
  {
    v16 = *v11++;
    v15 = v16;
  }

  else
  {
    v15 = v12;
  }

  if ((a3 & 0xFFFFFFEF) != 0 || v15 != 48)
  {
    if (v15 == 48)
    {
      v17 = 8;
    }

    else
    {
      v17 = 10;
    }

    if (!a3)
    {
      a3 = v17;
    }

    goto LABEL_35;
  }

  if ((*v11 | 0x20) != 0x78)
  {
    v15 = 48;
    if (!a3)
    {
      a3 = 8;
    }

LABEL_35:
    if ((a3 - 37) >= 0xFFFFFFDD)
    {
      goto LABEL_37;
    }

    v18 = 0;
    goto LABEL_57;
  }

  v15 = v11[1];
  v11 += 2;
  a3 = 16;
LABEL_37:
  v18 = 0;
  v19 = 0;
  v20 = 0xFFFFFFFFFFFFFFFFLL / a3;
  while (1)
  {
    v21 = v15 - 48;
    if ((v15 - 48) >= 0xA)
    {
      if ((v15 - 65) > 0x19)
      {
        if ((v15 - 97) > 0x19)
        {
          break;
        }

        v21 = v15 - 87;
      }

      else
      {
        v21 = v15 - 55;
      }
    }

    if (v21 >= a3)
    {
      break;
    }

    v22 = -1;
    if ((v19 & 0x80000000) == 0 && v18 <= v20)
    {
      if (v18 == v20 && v21 > ~(v20 * a3))
      {
        v18 = 0xFFFFFFFFFFFFFFFFLL / a3;
      }

      else
      {
        v18 = v18 * a3 + v21;
        v22 = 1;
      }
    }

    v23 = *v11++;
    v15 = v23;
    v19 = v22;
  }

  if (v19 < 0)
  {
    v27 = __error();
    v24 = 0;
    *v27 = 34;
    v18 = -1;
    if (!a2)
    {
      return v18;
    }

    goto LABEL_58;
  }

  if (!v19)
  {
LABEL_57:
    *__error() = 22;
    v24 = 1;
    if (!a2)
    {
      return v18;
    }

    goto LABEL_58;
  }

  v24 = 0;
  if (v12 == 45)
  {
    v18 = -v18;
  }

  if (a2)
  {
LABEL_58:
    if (v24)
    {
      v25 = a1;
    }

    else
    {
      v25 = (v11 - 1);
    }

    *a2 = v25;
  }

  return v18;
}

unint64_t wcstoul(const __int32 *a1, __int32 **a2, int a3)
{
  v3 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &__global_locale;
  }

  return wcstoul_l(a1, a2, a3, v5);
}

unint64_t wcstoull_l(const __int32 *a1, __int32 **a2, int a3, locale_t a4)
{
  v7 = &__global_locale;
  if (a4 == -1)
  {
    v8 = &__global_locale;
  }

  else
  {
    v8 = a4;
  }

  if (a4)
  {
    v9 = v8;
  }

  else
  {
    v9 = __c_locale;
  }

  if (v9 != -1)
  {
    v7 = v9;
  }

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = __c_locale;
  }

  v11 = a1;
  do
  {
    while (1)
    {
      v13 = *v11++;
      v12 = v13;
      if (v13 <= 0x7F)
      {
        v14 = &_DefaultRuneLocale.__magic[4 * v12];
        goto LABEL_19;
      }

      if (v12 < 0x100)
      {
        break;
      }

      if ((___runetype_l(v12, v9) & 0x4000) == 0)
      {
        goto LABEL_20;
      }
    }

    v14 = (*(*(v10 + 166) + 120) + 4 * v12);
LABEL_19:
    ;
  }

  while ((*(v14 + 15) & 0x4000) != 0);
LABEL_20:
  if (v12 == 43 || v12 == 45)
  {
    v16 = *v11++;
    v15 = v16;
  }

  else
  {
    v15 = v12;
  }

  if ((a3 & 0xFFFFFFEF) != 0 || v15 != 48)
  {
    if (v15 == 48)
    {
      v17 = 8;
    }

    else
    {
      v17 = 10;
    }

    if (!a3)
    {
      a3 = v17;
    }

    goto LABEL_35;
  }

  if ((*v11 | 0x20) != 0x78)
  {
    v15 = 48;
    if (!a3)
    {
      a3 = 8;
    }

LABEL_35:
    if ((a3 - 37) >= 0xFFFFFFDD)
    {
      goto LABEL_37;
    }

    v18 = 0;
    goto LABEL_57;
  }

  v15 = v11[1];
  v11 += 2;
  a3 = 16;
LABEL_37:
  v18 = 0;
  v19 = 0;
  v20 = 0xFFFFFFFFFFFFFFFFLL / a3;
  while (1)
  {
    v21 = v15 - 48;
    if ((v15 - 48) >= 0xA)
    {
      if ((v15 - 65) > 0x19)
      {
        if ((v15 - 97) > 0x19)
        {
          break;
        }

        v21 = v15 - 87;
      }

      else
      {
        v21 = v15 - 55;
      }
    }

    if (v21 >= a3)
    {
      break;
    }

    v22 = -1;
    if ((v19 & 0x80000000) == 0 && v18 <= v20)
    {
      if (v18 == v20 && v21 > ~(v20 * a3))
      {
        v18 = 0xFFFFFFFFFFFFFFFFLL / a3;
      }

      else
      {
        v18 = v18 * a3 + v21;
        v22 = 1;
      }
    }

    v23 = *v11++;
    v15 = v23;
    v19 = v22;
  }

  if (v19 < 0)
  {
    v27 = __error();
    v24 = 0;
    *v27 = 34;
    v18 = -1;
    if (!a2)
    {
      return v18;
    }

    goto LABEL_58;
  }

  if (!v19)
  {
LABEL_57:
    *__error() = 22;
    v24 = 1;
    if (!a2)
    {
      return v18;
    }

    goto LABEL_58;
  }

  v24 = 0;
  if (v12 == 45)
  {
    v18 = -v18;
  }

  if (a2)
  {
LABEL_58:
    if (v24)
    {
      v25 = a1;
    }

    else
    {
      v25 = (v11 - 1);
    }

    *a2 = v25;
  }

  return v18;
}

unint64_t wcstoull(const __int32 *a1, __int32 **a2, int a3)
{
  v3 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &__global_locale;
  }

  return wcstoull_l(a1, a2, a3, v5);
}

uintmax_t wcstoumax_l(const __int32 *nptr, __int32 **endptr, int base, locale_t a4)
{
  v7 = &__global_locale;
  if (a4 == -1)
  {
    v8 = &__global_locale;
  }

  else
  {
    v8 = a4;
  }

  if (a4)
  {
    v9 = v8;
  }

  else
  {
    v9 = __c_locale;
  }

  if (v9 != -1)
  {
    v7 = v9;
  }

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = __c_locale;
  }

  v11 = nptr;
  do
  {
    while (1)
    {
      v13 = *v11++;
      v12 = v13;
      if (v13 <= 0x7F)
      {
        v14 = &_DefaultRuneLocale.__magic[4 * v12];
        goto LABEL_19;
      }

      if (v12 < 0x100)
      {
        break;
      }

      if ((___runetype_l(v12, v9) & 0x4000) == 0)
      {
        goto LABEL_20;
      }
    }

    v14 = (*(*(v10 + 166) + 120) + 4 * v12);
LABEL_19:
    ;
  }

  while ((*(v14 + 15) & 0x4000) != 0);
LABEL_20:
  if (v12 == 43 || v12 == 45)
  {
    v16 = *v11++;
    v15 = v16;
  }

  else
  {
    v15 = v12;
  }

  if ((base & 0xFFFFFFEF) != 0 || v15 != 48)
  {
    if (v15 == 48)
    {
      v17 = 8;
    }

    else
    {
      v17 = 10;
    }

    if (!base)
    {
      base = v17;
    }

    goto LABEL_35;
  }

  if ((*v11 | 0x20) != 0x78)
  {
    v15 = 48;
    if (!base)
    {
      base = 8;
    }

LABEL_35:
    if ((base - 37) >= 0xFFFFFFDD)
    {
      goto LABEL_37;
    }

    v18 = 0;
    goto LABEL_57;
  }

  v15 = v11[1];
  v11 += 2;
  base = 16;
LABEL_37:
  v18 = 0;
  v19 = 0;
  v20 = 0xFFFFFFFFFFFFFFFFLL / base;
  while (1)
  {
    v21 = v15 - 48;
    if ((v15 - 48) >= 0xA)
    {
      if ((v15 - 65) > 0x19)
      {
        if ((v15 - 97) > 0x19)
        {
          break;
        }

        v21 = v15 - 87;
      }

      else
      {
        v21 = v15 - 55;
      }
    }

    if (v21 >= base)
    {
      break;
    }

    v22 = -1;
    if ((v19 & 0x80000000) == 0 && v18 <= v20)
    {
      if (v18 == v20 && v21 > ~(v20 * base))
      {
        v18 = 0xFFFFFFFFFFFFFFFFLL / base;
      }

      else
      {
        v18 = v18 * base + v21;
        v22 = 1;
      }
    }

    v23 = *v11++;
    v15 = v23;
    v19 = v22;
  }

  if (v19 < 0)
  {
    v27 = __error();
    v24 = 0;
    *v27 = 34;
    v18 = -1;
    if (!endptr)
    {
      return v18;
    }

    goto LABEL_58;
  }

  if (!v19)
  {
LABEL_57:
    *__error() = 22;
    v24 = 1;
    if (!endptr)
    {
      return v18;
    }

    goto LABEL_58;
  }

  v24 = 0;
  if (v12 == 45)
  {
    v18 = -v18;
  }

  if (endptr)
  {
LABEL_58:
    if (v24)
    {
      v25 = nptr;
    }

    else
    {
      v25 = (v11 - 1);
    }

    *endptr = v25;
  }

  return v18;
}

uintmax_t wcstoumax(const __int32 *__nptr, __int32 **__endptr, int __base)
{
  v3 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &__global_locale;
  }

  return wcstoumax_l(__nptr, __endptr, __base, v5);
}

int wctob_l(int result, locale_t a2)
{
  memset(v5, 0, sizeof(v5));
  if (result != -1)
  {
    v2 = &__global_locale;
    if (a2 != -1)
    {
      v2 = a2;
    }

    if (a2)
    {
      v3 = v2;
    }

    else
    {
      v3 = &__c_locale;
    }

    if ((*(*(v3 + 166) + 96))(v4, *&result, v5) == 1)
    {
      return v4[0];
    }

    else
    {
      return -1;
    }
  }

  return result;
}

int wctob(wint_t a1)
{
  v1 = __locale_key;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v1);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = &__global_locale;
  }

  return wctob_l(a1, v3);
}

int wctomb_l(char *a1, __int32 a2, locale_t a3)
{
  v3 = &__global_locale;
  if (a3 != -1)
  {
    v3 = a3;
  }

  if (a3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &__c_locale;
  }

  if (a1)
  {
    LODWORD(a1) = (*(*(v4 + 166) + 96))(a1, *&a2, v4 + 1168);
  }

  else
  {
    *(v4 + 80) = 0u;
    *(v4 + 79) = 0u;
    *(v4 + 78) = 0u;
    *(v4 + 77) = 0u;
    *(v4 + 76) = 0u;
    *(v4 + 75) = 0u;
    *(v4 + 74) = 0u;
    *(v4 + 73) = 0u;
  }

  return a1;
}

int wctomb(char *a1, __int32 a2)
{
  v2 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v2);
  if (!v3)
  {
    v3 = &__global_locale;
  }

  if (v3 == -1)
  {
    v4 = &__global_locale;
  }

  else
  {
    v4 = v3;
  }

  if (a1)
  {
    LODWORD(a1) = (*(v4[166] + 96))(a1, *&a2, v4 + 146);
  }

  else
  {
    *(v4 + 80) = 0u;
    *(v4 + 79) = 0u;
    *(v4 + 78) = 0u;
    *(v4 + 77) = 0u;
    *(v4 + 76) = 0u;
    *(v4 + 75) = 0u;
    *(v4 + 74) = 0u;
    *(v4 + 73) = 0u;
  }

  return a1;
}

wint_t towctrans_l(wint_t a1, wctrans_t a2, locale_t a3)
{
  v4 = a1;
  v5 = &__global_locale;
  if (a3 != -1)
  {
    v5 = a3;
  }

  if (a3)
  {
    v6 = v5;
  }

  else
  {
    v6 = __c_locale;
  }

  if (a2 == 2)
  {
    if (a1 <= 0x7F)
    {
      return _DefaultRuneLocale.__mapupper[a1];
    }

    return ___toupper_l(a1, v6);
  }

  else
  {
    if (a2 != 1)
    {
      *__error() = 22;
      return v4;
    }

    if (a1 <= 0x7F)
    {
      return _DefaultRuneLocale.__maplower[a1];
    }

    return ___tolower_l(a1, v6);
  }
}

wint_t towctrans(wint_t a1, wctrans_t a2)
{
  v2 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v2);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &__global_locale;
  }

  return towctrans_l(a1, a2, v4);
}

wctrans_t wctrans(const char *a1)
{
  if (j__strncasecmp_l("tolower", a1, v1, v2))
  {
    v6 = &off_1E7279CD8;
    v7 = 2;
    while (--v7)
    {
      v8 = v6 + 2;
      v9 = j__strncasecmp_l(v6[2], a1, v4, v5);
      v6 = v8;
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    v8 = &unk_1E7279CF8;
  }

  else
  {
    v8 = &off_1E7279CD8;
  }

LABEL_8:
  v10 = *(v8 + 2);
  if (!v10)
  {
    *__error() = 22;
  }

  return v10;
}

wctype_t wctype_l(const char *a1, locale_t a2)
{
  if (j__strncasecmp_l("alnum", a1, v2, v3))
  {
    v9 = &wctype_l_props;
    v10 = 16;
    while (--v10)
    {
      v11 = v9 + 2;
      v12 = j__strncasecmp_l(v9[2], a1, v6, v7);
      v9 = v11;
      if (!v12)
      {
        goto LABEL_8;
      }
    }

    v11 = &unk_1E7279E08;
  }

  else
  {
    v11 = &wctype_l_props;
  }

LABEL_8:
  result = *(v11 + 2);
  if (!result)
  {
    v14 = &__c_locale;
    v15 = &__global_locale;
    if (a2 != -1)
    {
      v15 = a2;
    }

    if (a2)
    {
      v14 = v15;
    }

    v16 = *(*(v14 + 166) + 120);
    v17 = *(v16 + 3196);
    if (v17 < 1)
    {
      return 0;
    }

    else
    {
      v18 = *(v16 + 3200);
      v19 = v17 + 1;
      while (j__strsvisx(v18, a1, 0xEuLL, v7, v8))
      {
        v18 += 20;
        if (--v19 < 2)
        {
          return 0;
        }
      }

      return *(v18 + 16);
    }
  }

  return result;
}

wctype_t wctype(const char *a1)
{
  v1 = __locale_key;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v1);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = &__global_locale;
  }

  return wctype_l(a1, v3);
}

int wcwidth(int result)
{
  v1 = __locale_key;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v1);
  v3 = &__global_locale;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &__global_locale;
  }

  if (result)
  {
    if (result < 0x100)
    {
      if (v4 != -1)
      {
        v3 = v4;
      }

      v5 = *(*(*(v3 + 166) + 120) + 4 * result + 60);
    }

    else
    {
      v5 = ___runetype_l(result, v4);
    }

    if (v5 >> 29)
    {
      return v5 >> 30;
    }

    else if ((v5 & 0x40000) != 0)
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }

  return result;
}

int wcwidth_l(int result, locale_t a2)
{
  v2 = __c_locale;
  v3 = &__global_locale;
  if (a2 == -1)
  {
    v4 = &__global_locale;
  }

  else
  {
    v4 = a2;
  }

  if (a2)
  {
    v5 = v4;
  }

  else
  {
    v5 = __c_locale;
  }

  if (result)
  {
    if (result < 0x100)
    {
      if (v5 != -1)
      {
        v3 = v5;
      }

      if (v5)
      {
        v2 = v3;
      }

      v6 = *(*(*(v2 + 166) + 120) + 4 * result + 60);
    }

    else
    {
      v6 = ___runetype_l(result, v5);
    }

    if (v6 >> 29)
    {
      return v6 >> 30;
    }

    else if ((v6 & 0x40000) != 0)
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }

  return result;
}

char *__cdecl addr2ascii(int a1, const void *a2, int a3, char *a4)
{
  v4 = a4;
  if (!a4)
  {
    v4 = addr2ascii_staticbuf;
    if (!addr2ascii_staticbuf)
    {
      v4 = malloc_type_malloc(0x40uLL, 0xB9548980uLL);
      addr2ascii_staticbuf = v4;
      if (!v4)
      {
        return 0;
      }
    }
  }

  if (a1 == 18)
  {
    if (a3 == 20)
    {
      v9 = link_ntoa(a2);
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  if (a1 != 2)
  {
    v12 = __error();
    v13 = 43;
    goto LABEL_15;
  }

  if (a3 != 4)
  {
LABEL_13:
    v12 = __error();
    v13 = 63;
LABEL_15:
    *v12 = v13;
    return 0;
  }

  v8.s_addr = *a2;
  v9 = inet_ntoa(v8);
LABEL_10:

  return j__strnstr(v4, v9, v10);
}

int ascii2addr(int a1, const char *a2, void *a3)
{
  if (a1 == 18)
  {
    link_addr(a2, a3);
    return 20;
  }

  else
  {
    if (a1 == 2)
    {
      __s1[0] = 0;
      strncat(__s1, a2, 0xFuLL);
      if (inet_aton(__s1, a3))
      {
        return 4;
      }

      v5 = __error();
      v6 = 22;
    }

    else
    {
      v5 = __error();
      v6 = 43;
    }

    *v5 = v6;
    return -1;
  }
}

in_addr_t inet_addr(const char *a1)
{
  v2 = 0;
  if (_inet_aton_check(a1, &v2, 0))
  {
    return v2;
  }

  else
  {
    return -1;
  }
}

uint64_t memstream_seek(uint64_t a1, int64_t a2, int a3)
{
  switch(a3)
  {
    case 2:
      v4 = *(a1 + 16);
      if (a2 < 0)
      {
        a2 += v4;
        if (a2 < 0)
        {
          v5 = __error();
          v6 = 22;
          goto LABEL_13;
        }
      }

      else
      {
        if ((v4 ^ 0x7FFFFFFFFFFFFFFFuLL) < a2)
        {
          v5 = __error();
          v6 = 84;
LABEL_13:
          *v5 = v6;
          return -1;
        }

        a2 += v4;
      }

LABEL_15:
      *(a1 + 24) = a2;
      break;
    case 1:
      if (a2)
      {
        memstream_seek_cold_1();
      }

      break;
    case 0:
      if (a2 < 0)
      {
        memstream_seek_cold_2();
      }

      goto LABEL_15;
  }

  memstream_update(a1);
  return *(a1 + 24);
}

in_addr_t inet_lnaof(in_addr a1)
{
  v1 = bswap32(a1.s_addr);
  if (v1 >> 30 == 2)
  {
    v2 = 0xFFFF;
  }

  else
  {
    v2 = 255;
  }

  if (v1 >= 0)
  {
    v2 = 0xFFFFFF;
  }

  return v1 & v2;
}

in_addr inet_makeaddr(in_addr_t a1, in_addr_t a2)
{
  if (HIBYTE(a1))
  {
    v2 = a2 | a1;
  }

  else
  {
    v2 = a2 | (a1 << 8);
  }

  v3 = a2 & 0xFFFFFF;
  v4 = a2 | (a1 << 16);
  if (HIWORD(a1))
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

  if (a1 <= 0x7F)
  {
    v5 = v3 | (a1 << 24);
  }

  return bswap32(v5);
}

char *__cdecl inet_net_ntop(int a1, const void *a2, int a3, char *a4, __darwin_size_t a5)
{
  v5 = a5;
  v6 = a4;
  v8 = a2;
  if (a1 == 30)
  {
    if (a3 >= 0x81)
    {
      goto LABEL_8;
    }

    if (!a3)
    {
      strcpy(__little, "::");
      v30 = &__little[2];
      goto LABEL_88;
    }

    v12 = a3 + 7;
    v13 = (a3 + 7) >> 3;
    j__mkdtempat_np(v54, a2);
    MEMORY[0x193AD5FD0](&v54[v13], 16 - (v12 >> 3));
    if ((a3 & 7) != 0)
    {
      v54[(v13 - 1)] &= -1 << (8 - (a3 & 7));
    }

    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = (a3 + 15) >> 4;
    if (v20 == 1)
    {
      v20 = 2;
    }

    do
    {
      if (v18 < v16)
      {
        v21 = v17;
      }

      else
      {
        v21 = v19;
      }

      if (v18 < v16)
      {
        v22 = v16;
      }

      else
      {
        v22 = v18;
      }

      if (v18 < v16)
      {
        v23 = 0;
      }

      else
      {
        v23 = v16;
      }

      if (v16)
      {
        v24 = v17;
      }

      else
      {
        v21 = v19;
        v22 = v18;
        v23 = 0;
        v24 = v14;
      }

      if (v54[v15 + 1] | v54[v15])
      {
        v19 = v21;
        v18 = v22;
        v16 = v23;
      }

      else
      {
        v17 = v24;
        ++v16;
      }

      v15 += 2;
      ++v14;
    }

    while (v15 < 2 * v20);
    v25 = 0;
    v26 = v16 != 0;
    v27 = v18 < v16;
    if (v26 && v27)
    {
      v28 = v17;
    }

    else
    {
      v28 = v19;
    }

    if (v26 && v27)
    {
      v29 = v16;
    }

    else
    {
      v29 = v18;
    }

    if (v29 == v20 || v28)
    {
      goto LABEL_65;
    }

    if (v29 == 7)
    {
      v25 = 0;
      if (!v54[14] || v54[15] == 1)
      {
        goto LABEL_65;
      }
    }

    else if (v29 != 6)
    {
      if (v29 != 5)
      {
        v25 = 0;
        goto LABEL_65;
      }

      v25 = 0;
      if (v54[10] != 255 || v54[11] != 255)
      {
LABEL_65:
        v38 = 0;
        v39 = -v20;
        v30 = __little;
        v40 = v54;
        v41 = v25 ^ 1;
        do
        {
          if (v29 && v38 >= v28 && v38 < v28 + v29)
          {
            if (v28 == v38)
            {
              *v30++ = 58;
            }

            if (v39 + v38 == -1)
            {
              *v30++ = 58;
            }

            v42 = v40 + 2;
          }

          else
          {
            if (v38 < 6)
            {
              v43 = 1;
            }

            else
            {
              v43 = v41;
            }

            if (v43)
            {
              v45 = __little;
              if (v30 != __little)
              {
                *v30 = 58;
                v45 = v30 + 1;
              }

              v30 = &v45[sprintf(v45, "%x", __rev16(*v40))];
              v42 = v40 + 2;
            }

            else
            {
              if (v38 == 6)
              {
                v44 = 58;
              }

              else
              {
                v44 = 46;
              }

              *v30 = v44;
              v42 = v40 + 1;
              v30 += sprintf(v30 + 1, "%u", *v40) + 1;
              if (a3 > 120 || v38 != 7)
              {
                *v30 = 46;
                v42 = v40 + 2;
                v30 += sprintf(v30 + 1, "%u", v40[1]) + 1;
              }
            }
          }

          ++v38;
          v40 = v42;
        }

        while (v39 + v38);
LABEL_88:
        sprintf(v30, "/%u", a3);
        if (j__strsignal_r(__little, v46, v47) + 1 <= a5)
        {
          v6 = a4;
          j__strnstr(a4, __little, v48);
          return v6;
        }

        goto LABEL_89;
      }
    }

    v25 = 1;
    goto LABEL_65;
  }

  if (a1 != 2)
  {
    v10 = __error();
    v6 = 0;
    v11 = 47;
    goto LABEL_90;
  }

  if (a3 >= 0x21)
  {
LABEL_8:
    v10 = __error();
    v6 = 0;
    v11 = 22;
LABEL_90:
    *v10 = v11;
    return v6;
  }

  if (!a3)
  {
    if (a5 >= 2)
    {
      *a4 = 48;
      v9 = a4 + 1;
      v5 = a5 - 1;
      goto LABEL_59;
    }

    goto LABEL_89;
  }

  if (a3 >= 8)
  {
    v31 = (a3 >> 3) + 1;
    v32 = a2 + 1;
    v33 = a4;
    while (v5 >= 6)
    {
      v8 = v32;
      v34 = sprintf(v33, "%u", *(v32 - 1));
      v9 = &v33[v34];
      if (v31 == 2)
      {
        v5 -= v34;
        goto LABEL_54;
      }

      *v9++ = 46;
      v5 = &v33[v5] - v9;
      --v31;
      v32 = (v8 + 1);
      v33 = v9;
      if (v31 <= 1)
      {
        goto LABEL_54;
      }
    }

    goto LABEL_89;
  }

  v9 = a4;
LABEL_54:
  if ((a3 & 7) != 0)
  {
    if (v5 >= 6)
    {
      v35 = v6;
      if (v9 != v6)
      {
        *v9 = 46;
        v35 = v9 + 1;
      }

      v36 = sprintf(v35, "%u", (~(-1 << (a3 & 7)) << (8 - (a3 & 7))) & *v8);
      v37 = &v9[v5];
      v9 = &v35[v36];
      v5 = v37 - v9;
      goto LABEL_59;
    }

LABEL_89:
    v10 = __error();
    v6 = 0;
    v11 = 40;
    goto LABEL_90;
  }

LABEL_59:
  if (v5 < 5)
  {
    goto LABEL_89;
  }

  sprintf(v9, "/%u", a3);
  return v6;
}

int inet_net_pton(int a1, const char *a2, void *a3, __darwin_size_t a4)
{
  v4 = a4;
  v6 = a2;
  if (a1 != 30)
  {
    if (a1 != 2)
    {
      v17 = __error();
      v18 = 47;
      goto LABEL_85;
    }

    v8 = a2 + 1;
    v7 = *a2;
    if (v7 != 48 || (*v8 | 0x20) != 0x78 || (v9 = v6[2], v9 < 0) || (_DefaultRuneLocale.__runetype[v9] & 0x10000) == 0)
    {
      v10 = 2;
      if ((v7 & 0x80000000) != 0 || (v7 - 48) > 9)
      {
        goto LABEL_149;
      }

      v11 = a3;
LABEL_10:
      v12 = 0;
      while (1)
      {
        v13 = j__mkdirx_np("0123456789", v7) - "0123456789";
        if (v13 >= 0xA)
        {
          inet_net_pton_cold_3();
        }

        v12 = v13 + 10 * v12;
        if (v12 > 255)
        {
          goto LABEL_148;
        }

        v14 = *v8++;
        v7 = v14;
        if (v14 < 1 || (v7 - 48) >= 0xA)
        {
          if (!v4)
          {
            goto LABEL_152;
          }

          --v4;
          *v11++ = v12;
          if (v7 == 46)
          {
            v15 = *v8++;
            v7 = v15;
            v10 = 2;
            if ((v15 & 0x80000000) == 0 && (v7 - 48) < 0xA)
            {
              goto LABEL_10;
            }

            goto LABEL_149;
          }

          if (v7 && v7 != 47)
          {
            goto LABEL_148;
          }

          goto LABEL_93;
        }
      }
    }

    if (a4)
    {
      if (!v6[2])
      {
        goto LABEL_148;
      }

      v32 = 0;
      v33 = 0;
      v8 = v6 + 3;
      v7 = v6[2];
      v11 = a3;
      do
      {
        v34 = _DefaultRuneLocale.__runetype[v7];
        if ((v34 & 0x10000) == 0)
        {
          break;
        }

        if ((v34 & 0x8000) != 0)
        {
          v7 = _DefaultRuneLocale.__maplower[v7];
        }

        v35 = j__mkdirx_np("0123456789abcdef", v7) - "0123456789abcdef";
        if (v35 >= 0x10)
        {
          inet_net_pton_cold_1();
        }

        v36 = v35 | (16 * v33);
        v33 = v32 ? v35 | (16 * v33) : v35;
        if (v32 == 1)
        {
          if (!v4)
          {
            goto LABEL_152;
          }

          v32 = 0;
          --v4;
          *v11++ = v36;
        }

        else
        {
          v32 = 1;
        }

        v37 = *v8++;
        v7 = v37;
      }

      while (v37 > 0);
      if (!v32)
      {
LABEL_93:
        if (v7)
        {
          if (v7 == 47)
          {
            v51 = *v8;
            if ((v51 & 0x80000000) == 0)
            {
              v10 = 2;
              if ((v51 - 48) > 9 || v11 <= a3)
              {
                goto LABEL_149;
              }

              v38 = 0;
              v52 = (v8 + 1);
              while (1)
              {
                v53 = j__mkdirx_np("0123456789", v51) - "0123456789";
                if (v53 >= 0xA)
                {
                  inet_net_pton_cold_2();
                }

                v38 = v53 + 10 * v38;
                if (v38 > 32)
                {
                  break;
                }

                v54 = *v52++;
                v51 = v54;
                if (v54 < 1 || (v51 - 48) >= 0xA)
                {
                  if (v51)
                  {
                    goto LABEL_148;
                  }

                  if (v38 != -1)
                  {
                    v55 = 8 * (v11 - a3);
                    goto LABEL_144;
                  }

                  goto LABEL_126;
                }
              }
            }
          }

          goto LABEL_148;
        }

        if (v11 != a3)
        {
LABEL_126:
          v63 = *a3;
          if ((v63 & 0x80u) == 0)
          {
            v64 = 8;
          }

          else
          {
            v64 = 16;
          }

          if (v63 <= 0xBF)
          {
            v65 = v64;
          }

          else
          {
            v65 = 24;
          }

          if (v63 > 0xDF)
          {
            v65 = 8;
          }

          if (v63 > 0xEF)
          {
            v65 = 32;
          }

          v55 = 8 * (v11 - a3);
          if (v55 > v65)
          {
            v65 = 8 * (v11 - a3);
          }

          if (v63 == 224)
          {
            v66 = 4;
          }

          else
          {
            v66 = 8;
          }

          if (v65 == 8)
          {
            v38 = v66;
          }

          else
          {
            v38 = v65;
          }

LABEL_144:
          if (v55 >= v38)
          {
            return v38;
          }

          while (v4)
          {
            --v4;
            *v11++ = 0;
            if (v38 <= 8 * (v11 - a3))
            {
              return v38;
            }
          }

          goto LABEL_152;
        }

LABEL_148:
        v10 = 2;
LABEL_149:
        *__error() = v10;
        return -1;
      }

      if (v4)
      {
        --v4;
        *v11++ = 16 * v33;
        goto LABEL_93;
      }
    }

LABEL_152:
    v10 = 40;
    goto LABEL_149;
  }

  dfd = a3;
  *path = 0;
  v74 = 0;
  v16 = *a2;
  if (v16 == 58)
  {
    v6 = a2 + 1;
    if (a2[1] != 58)
    {
      goto LABEL_84;
    }

    v72 = -1;
  }

  else
  {
    v72 = -1;
    if (!v16)
    {
      v29 = 0;
      v30 = path;
      v31 = 1;
      goto LABEL_68;
    }
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  v70 = 0;
  v71 = v6;
  v22 = 0;
  v23 = v6 + 1;
  v24 = path;
  while (1)
  {
    v25 = v16;
    v26 = j__mkdirx_np("0123456789abcdef", v25);
    if (!v26)
    {
      break;
    }

    v27 = "0123456789abcdef";
LABEL_30:
    if (v19 > 3)
    {
      goto LABEL_84;
    }

    v20 = (v26 - v27) | (16 * v20);
    ++v19;
    v21 = 1;
LABEL_32:
    v24 = &path[v22];
    v28 = *v23++;
    LOBYTE(v16) = v28;
    if (!v28)
    {
      goto LABEL_63;
    }
  }

  v26 = j__mkdirx_np("0123456789ABCDEF", v25);
  if (v26)
  {
    LODWORD(v27) = "0123456789ABCDEF";
    goto LABEL_30;
  }

  if (v25 == 58)
  {
    if (v21)
    {
      if (!*v23)
      {
        goto LABEL_84;
      }

      if (v22 > 14)
      {
        return 0;
      }

      v21 = 0;
      v19 = 0;
      v22 += 2;
      *v24 = bswap32(v20) >> 16;
      v71 = v23;
      v20 = 0;
    }

    else
    {
      if (v70)
      {
        goto LABEL_84;
      }

      v21 = 0;
      v70 = v24;
      v71 = v23;
    }

    goto LABEL_32;
  }

  if (v25 == 46)
  {
    if (v22 > 12)
    {
      goto LABEL_84;
    }

    v56 = v24;
LABEL_108:
    v57 = 0;
    v58 = 0;
    ++v71;
    while (1)
    {
      v59 = *(v71 - 1);
      if (!*(v71 - 1))
      {
        break;
      }

      v60 = j__mkdirx_np("0123456789", *(v71 - 1));
      if (!v60)
      {
        if ((v59 & 0xFFFFFFFE) != 0x2E || v56 - v24 > 3)
        {
          goto LABEL_84;
        }

        *v56++ = v58;
        if (v59 != 47)
        {
          goto LABEL_108;
        }

        if (getbits(v71, &v72) <= 0)
        {
LABEL_84:
          v17 = __error();
          v18 = 2;
          goto LABEL_85;
        }

LABEL_157:
        v31 = 0;
        v30 = &path[v22 + 4];
        goto LABEL_67;
      }

      v61 = v57-- != 0;
      if (!v61 || v58)
      {
        ++v71;
        v58 = v60 - "0123456789" + 10 * v58;
        if (v58 < 0x100)
        {
          continue;
        }
      }

      goto LABEL_84;
    }

    if (!v57 || v56 - v24 > 3)
    {
      goto LABEL_84;
    }

    *v56 = v58;
    goto LABEL_157;
  }

  if (v25 != 47 || getbits(v23, &v72) <= 0)
  {
    goto LABEL_84;
  }

LABEL_63:
  v30 = &path[v22];
  if (v21)
  {
    if (v22 > 14)
    {
      goto LABEL_84;
    }

    *v30 = bswap32(v20) >> 16;
    v30 += 2;
  }

  v31 = 1;
LABEL_67:
  v29 = v70;
LABEL_68:
  if (v72 == -1)
  {
    v38 = 128;
  }

  else
  {
    v38 = v72;
  }

  v72 = v38;
  v39 = v38 + 15;
  if (v38 < -15)
  {
    v39 = v38 + 30;
  }

  v40 = v39 >> 4;
  if (v40 <= 2)
  {
    v40 = 2;
  }

  v41 = (2 * v40);
  v42 = v31 == 0;
  v43 = 16;
  if (!v42)
  {
    v43 = v41;
  }

  v44 = &path[v43];
  if (v29)
  {
    if (v30 == v44)
    {
      goto LABEL_84;
    }

    v45 = v30 - v29;
    if (v45 >= 1)
    {
      v46 = v45 & 0x7FFFFFFF;
      v47 = (v45 + 1) - 1;
      v48 = &path[v43 - 1];
      v49 = &v29[v46 - 1];
      do
      {
        *v48-- = *v49;
        *v49-- = 0;
        --v47;
      }

      while (v47);
      v38 = v72;
    }
  }

  else if (v30 != v44)
  {
    goto LABEL_84;
  }

  v50 = v38 + 7;
  if (v38 < -7)
  {
    v50 = v38 + 14;
  }

  if (v50 >> 3 <= a4)
  {
    j__mkdtempat_np(dfd, path);
  }

  else
  {
    v17 = __error();
    v18 = 40;
LABEL_85:
    *v17 = v18;
    return -1;
  }

  return v38;
}

uint64_t getbits(uint64_t a1, int *a2)
{
  v4 = 0;
  v5 = 0;
  while (*(a1 + v4))
  {
    result = j__mkdirx_np("0123456789", *(a1 + v4));
    if (!result)
    {
      return result;
    }

    if (!v4 || v5)
    {
      v5 = result - "0123456789" + 10 * v5;
      ++v4;
      if (v5 < 129)
      {
        continue;
      }
    }

    return 0;
  }

  if (v4)
  {
    *a2 = v5;
    return 1;
  }

  return 0;
}

char *__cdecl inet_neta(in_addr_t a1, char *a2, __darwin_size_t a3)
{
  v4 = a2;
  if (!a1)
  {
    goto LABEL_10;
  }

  v5 = a1;
  v6 = a2;
  do
  {
    v8 = v5;
    v7 = v5 >> 24;
    v5 <<= 8;
    if (!is_mul_ok(0x100u, v8))
    {
      if (a3 < 5)
      {
        goto LABEL_11;
      }

      v9 = &v6[sprintf(v6, "%u", v7)];
      if (v5)
      {
        *v9++ = 46;
      }

      a3 = &v6[a3] - v9;
      v6 = v9;
    }
  }

  while (v5);
  if (v6 == v4)
  {
LABEL_10:
    if (a3 >= 8)
    {
      *v4 = 0x302E302E302E30;
    }

    else
    {
LABEL_11:
      v4 = 0;
      *__error() = 40;
    }
  }

  return v4;
}

in_addr_t inet_netof(in_addr a1)
{
  v1 = bswap32(a1.s_addr);
  if (v1 >> 30 == 2)
  {
    v2 = 16;
  }

  else
  {
    v2 = 8;
  }

  if (v1 >= 0)
  {
    v2 = 24;
  }

  return v1 >> v2;
}

in_addr_t inet_network(const char *a1)
{
  v1 = 0;
  v2 = __locale_key;
  v3 = 1;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  while (1)
  {
    v5 = a1 + 1;
    v6 = *a1;
    v7 = v6 != 48;
    if (v6 == 48)
    {
      v8 = 8;
    }

    else
    {
      v5 = a1;
      v8 = 10;
    }

    v9 = *v5;
    if ((v9 | 0x20) == 0x78)
    {
      v10 = *++v5;
      v9 = v10;
      v8 = 16;
    }

    v11 = 0;
    if (v9)
    {
      while (1)
      {
        v12 = v9;
        if (v9 - 48 > 9)
        {
          if (v8 != 16)
          {
            break;
          }

          v13 = _DefaultRuneLocale.__runetype[v9];
          if ((v13 & 0x10000) == 0)
          {
            break;
          }

          if ((v9 & 0x80) != 0)
          {
            v14 = *(StatusReg + 8 * v2);
            if (!v14)
            {
              v14 = &__global_locale;
            }

            v13 = *(*(v14[166] + 120) + 4 * v9 + 60);
          }

          v15 = 16 * v11;
          if ((v13 & 0x1000) != 0)
          {
            v16 = -97;
          }

          else
          {
            v16 = -65;
          }

          v11 = v12 + v15 + v16 + 10;
        }

        else
        {
          if (v8 == 8 && (v9 & 0xFE) == 0x38)
          {
            return -1;
          }

          v11 = v9 + v11 * v8 - 48;
        }

        v7 = 0;
        v17 = *++v5;
        LOBYTE(v9) = v17;
        if (!v17)
        {
          goto LABEL_25;
        }
      }
    }

    if (v7)
    {
      return -1;
    }

LABEL_25:
    result = -1;
    if (v1 > 0xF || v11 > 0xFF)
    {
      return result;
    }

    if (v9 != 46)
    {
      break;
    }

    *&v25[v1] = v11;
    v1 += 4;
    a1 = v5 + 1;
    ++v3;
  }

  if (v9)
  {
    if ((v9 & 0x80) != 0)
    {
      v20 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v2);
      if (!v20)
      {
        v20 = &__global_locale;
      }

      runetype = (*(v20[166] + 120) + 60);
    }

    else
    {
      runetype = _DefaultRuneLocale.__runetype;
    }

    if ((runetype[v9] & 0x4000) == 0)
    {
      return -1;
    }
  }

  v21 = &v25[v1];
  *v21 = v11;
  v22 = (v21 - v25 + 4) >> 2;
  if (v22 > 4)
  {
    return -1;
  }

  result = 0;
  if (v22)
  {
    v23 = v25;
    do
    {
      v24 = *v23;
      v23 += 4;
      result = v24 | (result << 8);
      --v3;
    }

    while (v3);
  }

  return result;
}

void link_addr(const char *a1, sockaddr_dl *a2)
{
  sdl_data = a2->sdl_data;
  sdl_len = a2->sdl_len;
  v6 = &a2->sdl_len + sdl_len;
  MEMORY[0x193AD5FD0](&a2->sdl_family, sdl_len - 1);
  v7 = 0;
  LOBYTE(v8) = 0;
  v9 = 0;
  a2->sdl_family = 18;
  v10 = sdl_data;
  while (1)
  {
    v8 &= 3u;
    v11 = *a1;
    if ((v11 - 48) > 9)
    {
      if ((v11 - 97) > 5)
      {
        if ((v11 - 65) > 5)
        {
          if (*a1)
          {
            if (!v8 && ((v11 & 0xDF) - 65) < 0x1Au)
            {
              ++a1;
              LOBYTE(v8) = 12;
              goto LABEL_23;
            }

            v8 |= 8u;
          }

          else
          {
            v8 |= 4u;
          }
        }

        else
        {
          v9 = v11 - 55;
        }
      }

      else
      {
        v9 = v11 - 87;
      }
    }

    else
    {
      v9 = v11 - 48;
    }

    ++a1;
    if (v8 > 2)
    {
      break;
    }

    if (v8)
    {
      if (v8 == 1)
      {
        v7 = v9 + 16 * v7;
        LOBYTE(v8) = 2;
        goto LABEL_31;
      }

      if (v8 != 2)
      {
        goto LABEL_30;
      }

      *v10++ = v7;
      goto LABEL_25;
    }

LABEL_23:
    *v10++ = v11;
LABEL_31:
    if (v10 >= v6)
    {
      goto LABEL_34;
    }
  }

  if (v8 > 7)
  {
    if (v8 == 8)
    {
      a2->sdl_nlen = v10 - sdl_data;
      LOBYTE(v8) = 3;
      goto LABEL_31;
    }

    if (v8 != 12)
    {
      goto LABEL_30;
    }

    goto LABEL_23;
  }

  if (v8 == 3)
  {
LABEL_25:
    LOBYTE(v8) = 1;
    v7 = v9;
    goto LABEL_31;
  }

  if ((v8 - 5) >= 2)
  {
    if (v8 == 7)
    {
      goto LABEL_34;
    }

LABEL_30:
    *v10++ = v7;
    LOBYTE(v8) = 3;
    v7 = 0;
    goto LABEL_31;
  }

  *v10 = v7;
  LODWORD(v10) = v10 + 1;
LABEL_34:
  a2->sdl_alen = v10 - (sdl_data + a2->sdl_nlen);
  v12 = v10 - a2;
  if (v12 >= 0x15)
  {
    a2->sdl_len = v12;
  }
}

char *__cdecl link_ntoa(const sockaddr_dl *a1)
{
  sdl_nlen = a1->sdl_nlen;
  sdl_alen = a1->sdl_alen;
  if ((3 * sdl_alen + sdl_nlen) <= 0x3F)
  {
    sdl_data = a1->sdl_data;
    v6 = link_ntoa_obuf;
    if (a1->sdl_nlen)
    {
      j__mkostemp(link_ntoa_obuf, sdl_data);
      v6 = &link_ntoa_obuf[a1->sdl_nlen];
      if (a1->sdl_alen)
      {
        *v6++ = 58;
      }
    }

    if (sdl_alen)
    {
      v7 = 0;
      v8 = &sdl_data[sdl_nlen];
      do
      {
        if (v7)
        {
          *v6++ = 46;
        }

        v10 = *v8++;
        v9 = v10;
        if (v10 < 0x10)
        {
          v11 = 1;
        }

        else
        {
          v6[1] = hexlist[v9 & 0xF];
          v9 >>= 4;
          v11 = 2;
        }

        v3 = &v6[v11];
        *v6 = hexlist[v9];
        v7 = 1;
        v6 = v3;
      }

      while (v8 < &sdl_data[sdl_nlen + sdl_alen]);
    }

    else
    {
      v3 = v6;
    }
  }

  else
  {
    v3 = link_ntoa_obuf;
  }

  *v3 = 0;
  return link_ntoa_obuf;
}

unsigned int inet_nsap_addr(const char *a1, unsigned __int8 *a2, int a3)
{
  if (*a1 == 48)
  {
    v3 = a1;
    if ((*(a1 + 1) | 0x20) == 0x78)
    {
      v5 = a1 + 2;
      LOBYTE(v4) = a1[2];
      if (v4 && a3 != 0)
      {
        result = 0;
        StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        while (1)
        {
          v9 = v3 + 3;
          v3 = v5;
          while (1)
          {
            v10 = v9;
            if (v4 > 0x2Fu || ((1 << v4) & 0xC80000000000) == 0)
            {
              break;
            }

            ++v9;
            LOBYTE(v4) = *v10;
            v3 = v10;
            if (!*v10)
            {
              return result;
            }
          }

          if ((v4 & 0x80) != 0)
          {
            break;
          }

          v11 = _DefaultRuneLocale.__runetype[v4];
          if ((v11 & 0x1000) != 0)
          {
            v12 = *(StatusReg + 8 * __locale_key);
            if (!v12)
            {
              v12 = &__global_locale;
            }

            v4 = *(*(v12[166] + 120) + 4 * v4 + 2108);
            v11 = _DefaultRuneLocale.__runetype[v4];
          }

          if ((v11 & 0x10000) == 0)
          {
            break;
          }

          v13 = v4 - 48 >= 0xA ? 9 : 0;
          v14 = *v10;
          if (!v14)
          {
            break;
          }

          v15 = *(StatusReg + 8 * __locale_key);
          if (!v15)
          {
            v15 = &__global_locale;
          }

          v16 = *(*(v15[166] + 120) + 4 * v14 + 2108);
          if ((_DefaultRuneLocale.__runetype[v16] & 0x10000) == 0)
          {
            break;
          }

          v17 = v13 + v4;
          v5 = v3 + 2;
          if (v16 - 48 >= 0xA)
          {
            v18 = -55;
          }

          else
          {
            v18 = -48;
          }

          *a2++ = (v18 + v16) | (16 * v17);
          ++result;
          LOBYTE(v4) = *v5;
          if (!*v5 || result >= a3)
          {
            return result;
          }
        }
      }
    }
  }

  return 0;
}

char *__cdecl inet_nsap_ntoa(int a1, const unsigned __int8 *a2, char *a3)
{
  result = malloc_type_malloc(0x2FDuLL, 0x73671238uLL);
  if (result)
  {
    if (a3)
    {
      result = a3;
    }

    *result = 30768;
    v7 = result + 2;
    if (a1 >= 255)
    {
      v8 = 255;
    }

    else
    {
      v8 = a1;
    }

    if (a1 < 1)
    {
      v15 = result + 2;
    }

    else
    {
      v9 = 0;
      v10 = a1;
      if (a1 >= 255)
      {
        v10 = 255;
      }

      do
      {
        if (a2[v9] >= 0xA0u)
        {
          v11 = 55;
        }

        else
        {
          v11 = 48;
        }

        *v7 = v11 + (a2[v9] >> 4);
        v12 = a2[v9] & 0xF;
        if (v12 >= 0xA)
        {
          v13 = 55;
        }

        else
        {
          v13 = 48;
        }

        v14 = v13 + v12;
        v15 = v7 + 2;
        v7[1] = v14;
        if ((v9 & 1) == 0 && v9 + 1 < v8)
        {
          v15 = v7 + 3;
          v7[2] = 46;
        }

        ++v9;
        v7 = v15;
      }

      while (v10 != v9);
    }

    *v15 = 0;
  }

  return result;
}

int sockatmark(int a1)
{
  v2 = 0;
  if (ioctl(a1, 0x40047307uLL, &v2) == -1)
  {
    return -1;
  }

  else
  {
    return v2;
  }
}

int setipv4sourcefilter(int a1, in_addr a2, in_addr a3, uint32_t a4, uint32_t a5, in_addr *a6)
{
  if (a1 == -1)
  {
    setipv4sourcefilter_cold_1();
  }

  if ((a3.s_addr & 0xF0) != 0xE0 || a4 - 3 <= 0xFFFFFFFD)
  {
    v14 = __error();
    v15 = 22;
LABEL_16:
    *v14 = v15;
    return -1;
  }

  v11 = __inaddr_to_index(a2.s_addr);
  if (!v11)
  {
    v14 = __error();
    v15 = 49;
    goto LABEL_16;
  }

  v12 = v11;
  memset(&v22, 0, 128);
  *&v22.sa_len = 528;
  *&v22.sa_data[2] = a3;
  if (!a5 && !a6)
  {
    return setsourcefilter(a1, v11, &v22, 0x10u, a4, 0, 0);
  }

  v16 = a5;
  v17 = malloc_type_calloc(a5, 0x80uLL, 0x1000040AE2C30F4uLL);
  if (!v17)
  {
    v14 = __error();
    v15 = 12;
    goto LABEL_16;
  }

  v18 = v17;
  if (a5)
  {
    v19 = v17;
    do
    {
      *&v19->ss_len = 528;
      s_addr = a6->s_addr;
      ++a6;
      *&v19->__ss_pad1[2] = s_addr;
      ++v19;
      --v16;
    }

    while (v16);
  }

  v13 = setsourcefilter(a1, v12, &v22, 0x10u, a4, a5, v17);
  free(v18);
  return v13;
}

char *__inaddr_to_index(int a1)
{
  v11 = 0;
  if (getifaddrs(&v11) < 0)
  {
    return 0;
  }

  v4 = v11;
  if (v11)
  {
    v5 = v11;
    while (1)
    {
      ifa_addr = v5->ifa_addr;
      if (ifa_addr)
      {
        if (ifa_addr->sa_family == 2 && *&ifa_addr->sa_data[2] == a1)
        {
          break;
        }
      }

      v5 = v5->ifa_next;
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    ifa_name = v5->ifa_name;
    if (ifa_name)
    {
      v9 = v11;
      while (1)
      {
        v10 = v9->ifa_addr;
        if (v10)
        {
          if (v10->sa_family == 18 && !j__strncasecmp_l(v9->ifa_name, ifa_name, v2, v3))
          {
            break;
          }
        }

        v9 = v9->ifa_next;
        if (!v9)
        {
          goto LABEL_18;
        }
      }

      ifa_name = *v10->sa_data;
      if (!*v10->sa_data)
      {
LABEL_18:
        __inaddr_to_index_cold_1();
      }
    }
  }

  else
  {
LABEL_8:
    ifa_name = 0;
  }

  MEMORY[0x193AD6170](v4);
  return ifa_name;
}

int setsourcefilter(int a1, uint32_t a2, sockaddr *a3, socklen_t a4, uint32_t a5, uint32_t a6, sockaddr_storage *a7)
{
  if (a5 - 3 <= 0xFFFFFFFD)
  {
    goto LABEL_2;
  }

  sa_family = a3->sa_family;
  if (sa_family == 30)
  {
    if (a4 == 28 && a3->sa_len == 16 && a3->sa_data[6] == 255)
    {
      v13 = 41;
      goto LABEL_15;
    }
  }

  else
  {
    if (sa_family != 2)
    {
      v7 = __error();
      v8 = 47;
      goto LABEL_3;
    }

    if (a4 == 16 && a3->sa_len == 4 && (*&a3->sa_data[2] & 0xF0) == 0xE0)
    {
      v13 = 0;
LABEL_15:
      memset(&v14[3], 0, 132);
      v14[0] = a2;
      v14[1] = a5;
      v14[2] = a6;
      j__mkdtempat_np(&v14[4], a3);
      v15 = a7;
      return setsockopt(a1, v13, 74, v14, 0x98u);
    }
  }

LABEL_2:
  v7 = __error();
  v8 = 22;
LABEL_3:
  *v7 = v8;
  return -1;
}

int getipv4sourcefilter(int a1, in_addr a2, in_addr a3, uint32_t *a4, uint32_t *a5, in_addr *a6)
{
  if (a1 == -1)
  {
    getipv4sourcefilter_cold_3();
  }

  if (!a4)
  {
    getipv4sourcefilter_cold_2();
  }

  if (!a5)
  {
    getipv4sourcefilter_cold_1();
  }

  v9 = *a5;
  *a5 = 0;
  if ((a3.s_addr & 0xF0) != 0xE0 || (v10 = a6) == 0 && v9)
  {
    v12 = __error();
    v13 = 22;
LABEL_8:
    *v12 = v13;
    return -1;
  }

  v16 = __inaddr_to_index(a2.s_addr);
  if (!v16)
  {
    v12 = __error();
    v13 = 49;
    goto LABEL_8;
  }

  v17 = v16;
  memset(&v24, 0, 128);
  *&v24.sa_len = 528;
  *&v24.sa_data[2] = a3;
  if (!v10 && !v9)
  {
    return getsourcefilter(a1, v16, &v24, 0x10u, a4, a5, 0);
  }

  v18 = malloc_type_calloc(v9, 0x80uLL, 0x1000040AE2C30F4uLL);
  if (!v18)
  {
    v12 = __error();
    v13 = 12;
    goto LABEL_8;
  }

  v19 = v18;
  v14 = getsourcefilter(a1, v17, &v24, 0x10u, a4, a5, v18);
  v20 = *a5;
  if (*a5)
  {
    if (v9)
    {
      v21 = 0;
      v22 = &v19->__ss_pad1[2];
      do
      {
        if (*(v22 - 3) == 2)
        {
          v10->s_addr = *v22;
          ++v10;
          v20 = *a5;
        }

        v22 += 32;
        ++v21;
        if (v9 >= v20)
        {
          v23 = v20;
        }

        else
        {
          v23 = v9;
        }
      }

      while (v21 < v23);
    }

    free(v19);
  }

  return v14;
}

int getsourcefilter(int a1, uint32_t a2, sockaddr *a3, socklen_t a4, uint32_t *a5, uint32_t *a6, sockaddr_storage *a7)
{
  if (!a5 || !a2 || !a3 || !a6)
  {
    goto LABEL_14;
  }

  v11 = *a6;
  *a6 = 0;
  *a5 = 0;
  sa_family = a3->sa_family;
  if (sa_family != 30)
  {
    if (sa_family != 2)
    {
      v14 = __error();
      v15 = 47;
      goto LABEL_15;
    }

    if (a4 == 16 && a3->sa_len == 4 && (*&a3->sa_data[2] & 0xF0) == 0xE0)
    {
      v13 = 0;
      goto LABEL_19;
    }

LABEL_14:
    v14 = __error();
    v15 = 22;
LABEL_15:
    *v14 = v15;
    return -1;
  }

  if (a4 != 28 || a3->sa_len != 16 || a3->sa_data[6] != 255)
  {
    goto LABEL_14;
  }

  v13 = 41;
LABEL_19:
  v18 = 152;
  v19 = a2;
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  v20 = 0;
  v21 = v11;
  j__mkdtempat_np(v22 + 4, a3);
  v24 = a7;
  result = getsockopt(a1, v13, 74, &v19, &v18);
  if (!result)
  {
    v17 = v20;
    *a6 = v21;
    *a5 = v17;
  }

  return result;
}

nl_catd catopen(const char *a1, int a2)
{
  memset(&v36, 0, sizeof(v36));
  if (!a1 || !*a1)
  {
    v6 = __error();
    v7 = 22;
LABEL_8:
    *v6 = v7;
    return -1;
  }

  j__strmode(a1, 0x2F);
  if (v4)
  {

    return loadCat();
  }

  if (a2 == 1)
  {
    v8 = querylocale(4, 0);
  }

  else
  {
    v8 = getenv("LANG");
  }

  v11 = v8;
  if (!v8 || (v12 = *v8, !*v8) || j__strsignal_r(v8, v9, v10) > 0x1F || v12 == 46 && (!v11[1] || v11[1] == 46 && !v11[2]) || (j__strmode(v11, 0x2F), v13))
  {
    v11 = "C";
  }

  v14 = strdup(v11);
  if (!v14)
  {
    return -1;
  }

  v15 = v14;
  j__strmode(v14, 0x40);
  if (v16)
  {
    *v16 = 0;
  }

  j__strmode(v15, 0x5F);
  if (v17)
  {
    *v17 = 0;
    v18 = v17 + 1;
    v35 = v18;
  }

  else
  {
    v35 = "";
    LODWORD(v18) = v15;
  }

  j__strmode(v18, 0x2E);
  if (v19)
  {
    *v19 = 0;
    v20 = v19 + 1;
  }

  else
  {
    v20 = "";
  }

  v21 = getenv("NLSPATH");
  if (!v21 || (v22 = v21, issetugid()))
  {
    v22 = "/usr/share/nls/%L/%N.cat:/usr/share/nls/%N/%L:/usr/local/share/nls/%L/%N.cat:/usr/local/share/nls/%N/%L";
  }

  v23 = strdup(v22);
  __stringp = v23;
  if (!v23)
  {
    v34 = *__error();
    free(v15);
    *__error() = v34;
    return -1;
  }

  v24 = v23;
  while (2)
  {
    v25 = strsep(&__stringp, ":");
    if (!v25)
    {
      free(v15);
      free(v24);
      v6 = __error();
      v7 = 2;
      goto LABEL_8;
    }

    v26 = v25;
    v27 = *v25;
    if (*v25)
    {
      v28 = v38;
      goto LABEL_45;
    }

    v26 = v25 - 1;
    v28 = v38;
LABEL_51:
    v33 = a1;
LABEL_42:
    if (MEMORY[0x193AD6A30](v28, v33, (v38 - v28 + 1023)) >= (v38 - v28 + 1023))
    {
LABEL_65:
      free(v15);
      free(v24);
      v6 = __error();
      v7 = 63;
      goto LABEL_8;
    }

    for (v28 += j__strsignal_r(v33, v29, v30); ; ++v28)
    {
      v31 = *++v26;
      v27 = v31;
      if (!v31)
      {
        break;
      }

LABEL_45:
      if (v27 == 37)
      {
        v32 = v26[1];
        if (v32 > 0x62)
        {
          switch(v32)
          {
            case 'c':
              ++v26;
              v33 = v20;
              goto LABEL_42;
            case 'l':
              ++v26;
              v33 = v15;
              goto LABEL_42;
            case 't':
              ++v26;
              v33 = v35;
              goto LABEL_42;
          }
        }

        else
        {
          switch(v32)
          {
            case '%':
              ++v26;
              break;
            case 'L':
              ++v26;
              v33 = v11;
              goto LABEL_42;
            case 'N':
              ++v26;
              goto LABEL_51;
          }
        }

        if ((v28 - v38) > 0x3FE)
        {
          goto LABEL_65;
        }

        LOBYTE(v27) = *v26;
      }

      else if ((v28 - v38) > 0x3FE)
      {
        goto LABEL_65;
      }

      *v28 = v27;
    }

    *v28 = 0;
    if (stat(v38, &v36))
    {
      continue;
    }

    break;
  }

  free(v15);
  free(v24);
  return loadCat();
}

uint64_t loadCat()
{
  v0 = malloc_type_malloc(0x20uLL, 0x1020040DE3E3027uLL);
  if (!v0)
  {
    return -1;
  }

  v1 = v0;
  v2 = open_NOCANCEL();
  if (v2 == -1)
  {
    v10 = *__error();
LABEL_20:
    free(v1);
LABEL_30:
    *__error() = v10;
    return -1;
  }

  v3 = fdopen(v2, "r");
  *v1 = v3;
  if (!v3)
  {
    v10 = *__error();
    close_NOCANCEL();
    goto LABEL_20;
  }

  __ptr = 0u;
  v13 = 0u;
  if (fread(&__ptr, 0x20uLL, 1uLL, v3) != 1 || __ptr != 0x2A6C75677A616E2ALL)
  {
LABEL_28:
    fclose(*v1);
    fprintf(__stderrp, "%s: corrupt file.", "Message Catalog System");
    free(v1);
LABEL_29:
    v10 = 79;
    goto LABEL_30;
  }

  v4 = DWORD2(__ptr);
  if (DWORD2(__ptr) != 0x1000000)
  {
    fclose(*v1);
    free(v1);
    if (v4 == 1)
    {
      fprintf(__stderrp, "%s: %s is the wrong byte ordering.\n");
    }

    else
    {
      fprintf(__stderrp, "%s: %s is version %d, we need %d.\n");
    }

    goto LABEL_29;
  }

  if (!DWORD1(v13))
  {
    fclose(*v1);
    free(v1);
    fprintf(__stderrp, "%s: %s has %d sets!\n");
    goto LABEL_29;
  }

  v5 = bswap32(DWORD1(v13));
  *(v1 + 2) = v5;
  v6 = malloc_type_malloc(40 * v5, 0x10B2040D468A13DuLL);
  v1[2] = v6;
  if (!v6)
  {
    v10 = *__error();
    fclose(*v1);
    fprintf(__stderrp, "%s: no more memory.", "Message Catalog System");
    goto LABEL_20;
  }

  if (*(v1 + 2) >= 1)
  {
    v7 = 0;
    v8 = bswap64(*(&v13 + 1));
    while (fseeko(*v1, v8, 0) != -1)
    {
      v9 = v1[2] + 40 * v7;
      if (fread(v9, 0x28uLL, 1uLL, *v1) != 1)
      {
        break;
      }

      if (*(v9 + 36))
      {
        v8 = bswap64(*(v9 + 4));
      }

      else
      {
        *(v9 + 36) = 1;
        v8 = bswap64(*(v9 + 4));
        ++v7;
      }

      if (v7 >= *(v1 + 2))
      {
        return v1;
      }
    }

    __nls_free_resources(v1, v7);
    goto LABEL_28;
  }

  return v1;
}

char *__cdecl catgets(nl_catd a1, int a2, int a3, const char *a4)
{
  v5 = &a1->__data + 1 < 2 || a1 == 0;
  if (v5 || a2 < 1)
  {
    return a4;
  }

  size = a1->__size;
  if (size >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = a1->__size;
  }

  if (size >= a2)
  {
    v12 = a2 - 1;
  }

  else
  {
    v12 = size / 2;
  }

  data = a1[1].__data;
  v14 = &data[40 * v12];
  v15 = bswap32(*v14);
  if (v15 == a2)
  {
LABEL_30:
    if (*(v14 + 9))
    {
      if (fseeko(a1->__data, bswap64(*(v14 + 20)), 0) == -1)
      {
        return a4;
      }

      v20 = malloc_type_malloc(bswap32(*(v14 + 7)), 0xF5CB6AA0uLL);
      *(v14 + 20) = v20;
      if (!v20)
      {
        return a4;
      }

      if (fread(v20, bswap32(*(v14 + 7)), 1uLL, a1->__data) != 1 || fseeko(a1->__data, bswap64(*(v14 + 12)), 0) == -1 || (v21 = malloc_type_malloc(16 * bswap32(*(v14 + 8)), 0x10B2040ACE959A4uLL), (*(v14 + 12) = v21) == 0))
      {
        v34 = *__error();
LABEL_66:
        free(*(v14 + 20));
        *__error() = v34;
        return a4;
      }

      if (*(v14 + 8))
      {
        v22 = 0;
        while (1)
        {
          v23 = *(v14 + 12) + 16 * v22;
          if (fread(v23, 0x10uLL, 1uLL, a1->__data) != 1)
          {
            break;
          }

          if (!*(v23 + 12))
          {
            *(v23 + 4) = *(v14 + 20) + bswap64(*(v23 + 4));
            ++v22;
          }

          if (v22 >= bswap32(*(v14 + 8)))
          {
            goto LABEL_42;
          }
        }

        v34 = *__error();
        free(*(v14 + 12));
        goto LABEL_66;
      }

LABEL_42:
      *(v14 + 9) = 0;
    }

    v24 = a3 - 1;
    if (a3 >= 1)
    {
      v25 = bswap32(*(v14 + 8));
      if (v24 >= v25)
      {
        v26 = v25 >> 1;
      }

      else
      {
        v26 = v24;
      }

      v27 = *(v14 + 12);
      v28 = bswap32(*(v27 + 16 * v26));
      if (v28 == a3)
      {
        return *(v27 + 16 * v26 + 4);
      }

      else
      {
        v29 = 0;
        if (v24 >= v25)
        {
          v30 = v25;
        }

        else
        {
          v30 = a3;
        }

        while (1)
        {
          if (v30 >= a3 + 1 + v26 - v28)
          {
            v30 = a3 + 1 + v26 - v28;
          }

          if (v28 >= a3)
          {
            v30 = v26;
          }

          else
          {
            v29 = v26 + 1;
          }

          v31 = v28 < a3 ? 1 : -1;
          v32 = v30 - v29;
          if (v30 <= v29)
          {
            break;
          }

          v5 = v32 == 1;
          v33 = v32 / 2 * v31;
          if (!v5)
          {
            v31 = v33;
          }

          LODWORD(v26) = v31 + v26;
          v28 = bswap32(*(v27 + 16 * v26));
          if (v28 == a3)
          {
            v26 = v26;
            return *(v27 + 16 * v26 + 4);
          }
        }
      }
    }

    return a4;
  }

  v16 = 0;
  while (1)
  {
    if (v11 >= a2 + 1 + v12 - v15)
    {
      v11 = a2 + 1 + v12 - v15;
    }

    if (v15 >= a2)
    {
      v11 = v12;
    }

    else
    {
      v16 = v12 + 1;
    }

    v17 = v15 < a2 ? 1 : -1;
    v18 = v11 - v16;
    if (v11 <= v16)
    {
      return a4;
    }

    v5 = v18 == 1;
    v19 = v18 / 2 * v17;
    if (!v5)
    {
      v17 = v19;
    }

    v12 += v17;
    v14 = &data[40 * v12];
    v15 = bswap32(*v14);
    if (v15 == a2)
    {
      goto LABEL_30;
    }
  }
}

int catclose(nl_catd a1)
{
  if (&a1->__data + 1 > 1)
  {
    fclose(a1->__data);
    __nls_free_resources(a1, a1->__size);
    free(a1);
    return 0;
  }

  else
  {
    *__error() = 9;
    return -1;
  }
}

void __nls_free_resources(uint64_t a1, int a2)
{
  if (a2 >= 1)
  {
    v3 = 0;
    v4 = 40 * a2;
    do
    {
      v5 = *(a1 + 16) + v3;
      if (!*(v5 + 36))
      {
        free(*(v5 + 20));
        free(*(v5 + 12));
      }

      v3 += 40;
    }

    while (v4 != v3);
  }

  v6 = *(a1 + 16);

  free(v6);
}

int ftrylockfile(FILE *a1)
{
  v2 = *__error();
  if (pthread_mutex_trylock((a1->_extra + 8)))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  *__error() = v2;
  return v3;
}

void clearerr(FILE *a1)
{
  flockfile(a1);
  a1->_flags &= 0xFF9Fu;

  funlockfile(a1);
}

int dprintf(int a1, const char *a2, ...)
{
  va_start(va, a2);
  v3 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &__global_locale;
  }

  return vdprintf_l(a1, v5, a2, va);
}

int ferror(FILE *a1)
{
  flockfile(a1);
  v2 = (a1->_flags >> 6) & 1;
  funlockfile(a1);
  return v2;
}

uint64_t sflush_locked(FILE *a1)
{
  flockfile(a1);
  v2 = __sflush(a1);
  funlockfile(a1);
  return v2;
}

int fgetc(FILE *a1)
{
  flockfile(a1);
  r = a1->_r;
  a1->_r = r - 1;
  if (r <= 0)
  {
    v4 = __srget(a1);
  }

  else
  {
    v3 = a1->_p++;
    v4 = *v3;
  }

  funlockfile(a1);
  return v4;
}

uint64_t __slbexpand(uint64_t a1, size_t size)
{
  if (*(a1 + 128) >= size)
  {
    return 0;
  }

  v2 = size;
  if (size >> 31)
  {
    *__error() = 12;
  }

  else
  {
    v5 = malloc_type_realloc(*(a1 + 120), size, 0x399A97FAuLL);
    if (v5)
    {
      v6 = v5;
      result = 0;
      *(a1 + 120) = v6;
      *(a1 + 128) = v2;
      return result;
    }
  }

  return 0xFFFFFFFFLL;
}

char *__cdecl fgetln(FILE *a1, size_t *a2)
{
  flockfile(a1);
  extra = a1->_extra;
  if ((*(extra + 72) & 7) == 0)
  {
    *(extra + 72) |= 7u;
  }

  r = a1->_r;
  if (r <= 0)
  {
    if (__srefill(a1))
    {
      *a2 = 0;
LABEL_10:
      funlockfile(a1);
      return 0;
    }

    r = a1->_r;
  }

  p = a1->_p;
  v7 = r;
  v8 = j__mkdirx_np(a1->_p, 0xA);
  if (v8)
  {
    v9 = v8 + 1 - p;
    *a2 = v9;
    a1->_flags |= 0x2000u;
    a1->_r = v7 - v9;
    a1->_p = (v8 + 1);
    funlockfile(a1);
    return p;
  }

  if (__slbexpand(a1, v7 + 80))
  {
LABEL_9:
    *a2 = 0;
    a1->_flags |= 0x40u;
    goto LABEL_10;
  }

  v11 = 0;
  while (1)
  {
    j__mkdtempat_np(&a1->_lb._base[v11], a1->_p);
    if (__srefill(a1))
    {
      break;
    }

    v12 = a1->_p;
    v13 = a1->_r;
    v14 = j__mkdirx_np(a1->_p, 0xA);
    if (v14)
    {
      v16 = (v14 + 1);
      v17 = v14 + 1 - v12;
      if (__slbexpand(a1, v17 + v7))
      {
        goto LABEL_9;
      }

      j__mkdtempat_np(&a1->_lb._base[v7], a1->_p);
      a1->_r -= v17;
      a1->_p = v16;
      v7 += v17;
      break;
    }

    v15 = __slbexpand(a1, v7 + v13 + 80);
    v11 = v7;
    v7 += v13;
    if (v15)
    {
      goto LABEL_9;
    }
  }

  *a2 = v7;
  funlockfile(a1);
  return a1->_lb._base;
}

int fgetpos(FILE *a1, fpos_t *a2)
{
  v3 = ftello(a1);
  *a2 = v3;
  if (v3 == -1)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

wint_t fgetwc(FILE *a1)
{
  flockfile(a1);
  extra = a1->_extra;
  if ((*(extra + 72) & 7) == 0)
  {
    *(extra + 72) |= 1u;
  }

  v3 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &__global_locale;
  }

  v6 = __fgetwc(a1, v5);
  funlockfile(a1);
  return v6;
}

uint64_t __fgetwc(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 1328);
  v5 = *(v4 + 72);
  if (*(a1 + 8) <= 0 && __srefill(a1))
  {
    return 0xFFFFFFFFLL;
  }

  v8 = 0;
  if (*(v4 + 64) == 1)
  {
    v6 = (*a1)++;
    result = *v6;
LABEL_12:
    --*(a1 + 8);
  }

  else
  {
    while (1)
    {
      result = v5(&v8, *a1, *(a1 + 8), *(a1 + 104) + 80, a2);
      if (result != -2)
      {
        break;
      }

      if (__srefill(a1))
      {
        goto LABEL_13;
      }
    }

    if (result == -1)
    {
LABEL_13:
      *(a1 + 16) |= 0x40u;
      *__error() = 92;
      return 0xFFFFFFFFLL;
    }

    if (!result)
    {
      ++*a1;
      goto LABEL_12;
    }

    *a1 += result;
    *(a1 + 8) -= result;
    return v8;
  }

  return result;
}

wint_t fgetwc_l(FILE *a1, locale_t a2)
{
  flockfile(a1);
  extra = a1->_extra;
  if ((*(extra + 72) & 7) == 0)
  {
    *(extra + 72) |= 1u;
  }

  v5 = &__global_locale;
  if (a2 != -1)
  {
    v5 = a2;
  }

  if (a2)
  {
    v6 = v5;
  }

  else
  {
    v6 = __c_locale;
  }

  v7 = __fgetwc(a1, v6);
  funlockfile(a1);
  return v7;
}

__int32 *__cdecl fgetwln_l(FILE *a1, size_t *a2, locale_t a3)
{
  flockfile(a1);
  extra = a1->_extra;
  if ((*(extra + 72) & 7) == 0)
  {
    *(extra + 72) |= 1u;
  }

  v7 = 0;
  do
  {
    v8 = __fgetwc(a1, a3);
    if (v8 == -1)
    {
      v10 = v7;
      if (v7)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }

    v9 = v8;
    if (4 * v7 >= a1->_lb._size && __slbexpand(a1, 4 * v7 + 2048))
    {
      goto LABEL_11;
    }

    v10 = v7 + 1;
    *&a1->_lb._base[4 * v7++] = v9;
  }

  while (v9 != 10);
  if (v10)
  {
LABEL_9:
    funlockfile(a1);
    *a2 = v10;
    return a1->_lb._base;
  }

LABEL_11:
  funlockfile(a1);
  result = 0;
  *a2 = 0;
  return result;
}

__int32 *__cdecl fgetwln(FILE *a1, size_t *a2)
{
  v2 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v2);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &__global_locale;
  }

  return fgetwln_l(a1, a2, v4);
}

__int32 *__cdecl fgetws_l(__int32 *a1, int a2, FILE *a3, locale_t a4)
{
  v7 = &__global_locale;
  if (a4 != -1)
  {
    v7 = a4;
  }

  if (a4)
  {
    v8 = v7;
  }

  else
  {
    v8 = __c_locale;
  }

  v9 = *(v8 + 166);
  v10 = *(v9 + 88);
  flockfile(a3);
  extra = a3->_extra;
  if ((*(extra + 72) & 7) == 0)
  {
    *(extra + 72) |= 1u;
  }

  v25 = 0;
  if (a2 <= 0)
  {
    a1 = 0;
    *__error() = 22;
  }

  else
  {
    if (a3->_r > 0 || !__srefill(a3))
    {
      v12 = a1;
      while (1)
      {
        p = a3->_p;
        v25 = p;
        r = a3->_r;
        v15 = j__mkdirx_np(p, 0xA);
        v16 = v15 ? v15 - p + 1 : r;
        v17 = v10(v12, &v25, v16, (a2 - 1), a3->_extra + 80, v8);
        if (v17 == -1)
        {
          break;
        }

        v18 = v17;
        v19 = v25;
        v20 = a3->_p;
        v21 = a3->_r;
        if (!v25)
        {
          v18 = v17 + 1;
          v19 = (j__mkdirx_np(v20, 0) + 1);
          v25 = v19;
        }

        v22 = v21 + v20 - v19;
        a3->_r = v22;
        a3->_p = v19;
        a2 -= v18;
        v12 += v18;
        v23 = a2 < 2 || *(v12 - 1) == 10;
        if (v23 || v22 <= 0 && __srefill(a3))
        {
          if (v12 != a1 && (*(v9 + 80))(a3->_extra + 80, v8))
          {
            *v12 = 0;
            goto LABEL_29;
          }

          break;
        }
      }
    }

    a1 = 0;
  }

LABEL_29:
  funlockfile(a3);
  return a1;
}

__int32 *__cdecl fgetws(__int32 *a1, int a2, FILE *a3)
{
  v3 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &__global_locale;
  }

  return fgetws_l(a1, a2, a3, v5);
}

uint64_t f_prealloc()
{
  v0 = &__sglue;
  LODWORD(result) = getdtablesize();
  while (1)
  {
    result = (result - *(v0 + 2));
    if (result < 1)
    {
      break;
    }

    v0 = *v0;
    if (!v0)
    {
      result = moreglue(result);
      if (result)
      {
        v2 = result;
        pthread_mutex_lock(&filelist_lock);
        *lastglue = v2;
        lastglue = v2;

        return pthread_mutex_unlock(&filelist_lock);
      }

      return result;
    }
  }

  return result;
}

uint64_t tryflush(FILE *a1)
{
  if (ftrylockfile(a1) < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = __sflush(a1);
  funlockfile(a1);
  return v2;
}

int fpurge(FILE *a1)
{
  flockfile(a1);
  flags = a1->_flags;
  if (flags)
  {
    base = a1->_ub._base;
    if (base)
    {
      if (base != a1->_ubuf)
      {
        free(base);
        flags = a1->_flags;
      }

      a1->_ub._base = 0;
    }

    size = 0;
    a1->_p = a1->_bf._base;
    a1->_r = 0;
    if ((flags & 3) == 0)
    {
      size = a1->_bf._size;
    }

    v5 = 0;
    a1->_w = size;
  }

  else
  {
    *__error() = 9;
    v5 = -1;
  }

  funlockfile(a1);
  return v5;
}

uint64_t __fputwc(uint64_t a1, FILE *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(a3 + 1328);
  if ((a1 - 1) <= 0xFE && *(v5 + 64) == 1)
  {
    v16[0] = a1;
    v8 = 1;
  }

  else
  {
    v7 = (*(v5 + 96))(v16, a1, a2->_extra + 80, a3);
    if (!v7)
    {
      return v4;
    }

    v8 = v7;
    if (v7 == -1)
    {
      a2->_flags |= 0x40u;
      return 0xFFFFFFFFLL;
    }
  }

  v9 = v16;
  do
  {
    v11 = *v9++;
    v10 = v11;
    w = a2->_w;
    a2->_w = w - 1;
    if (w <= 0 && (v10 != 10 ? (v13 = w <= a2->_lbfsize) : (v13 = 1), v13))
    {
      if (__swbuf(v10, a2) == -1)
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      v14 = a2->_p++;
      *v14 = v10;
    }

    --v8;
  }

  while (v8);
  return v4;
}

wint_t fputwc(__int32 a1, FILE *a2)
{
  v3 = *&a1;
  flockfile(a2);
  extra = a2->_extra;
  if ((*(extra + 72) & 7) == 0)
  {
    *(extra + 72) |= 1u;
  }

  v5 = __locale_key;
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &__global_locale;
  }

  v8 = __fputwc(v3, a2, v7);
  funlockfile(a2);
  return v8;
}

wint_t fputwc_l(__int32 a1, FILE *a2, locale_t a3)
{
  v5 = *&a1;
  flockfile(a2);
  extra = a2->_extra;
  if ((*(extra + 72) & 7) == 0)
  {
    *(extra + 72) |= 1u;
  }

  v7 = &__global_locale;
  if (a3 != -1)
  {
    v7 = a3;
  }

  if (a3)
  {
    v8 = v7;
  }

  else
  {
    v8 = __c_locale;
  }

  v9 = __fputwc(v5, a2, v8);
  funlockfile(a2);
  return v9;
}

int fputws_l(const __int32 *a1, FILE *a2, locale_t a3)
{
  v11 = a1;
  v4 = &__global_locale;
  if (a3 != -1)
  {
    v4 = a3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = __c_locale;
  }

  v6 = *(*(v5 + 166) + 104);
  flockfile(a2);
  extra = a2->_extra;
  if ((*(extra + 72) & 7) == 0)
  {
    *(extra + 72) |= 1u;
  }

  v14 = 0;
  v15 = 0;
  v12 = 0;
  v13 = 0;
  if ((a2->_flags & 8) != 0 && ((a2->_flags & 0x200) != 0 || a2->_bf._base) || !__swsetup(a2))
  {
    v14 = &v12;
    LODWORD(v15) = 1;
    v12 = v16;
    while (1)
    {
      v10 = v6(v16, &v11, -1, 1024, a2->_extra + 80, v5);
      if (v10 == -1)
      {
        break;
      }

      HIDWORD(v15) = v10;
      v13 = v10;
      if (__sfvwrite(a2, &v14))
      {
        break;
      }

      if (!v11)
      {
        v8 = 0;
        goto LABEL_13;
      }
    }
  }

  v8 = -1;
LABEL_13:
  funlockfile(a2);
  return v8;
}

int fputws(const __int32 *a1, FILE *a2)
{
  v2 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v2);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &__global_locale;
  }

  return fputws_l(a1, a2, v4);
}

uint64_t strtonum(const char *__numstr, uint64_t __minval, uint64_t __maxval, const char **__errstrp)
{
  v22 = 0;
  v20 = "invalid";
  v19 = 22;
  v18 = "too small";
  v17 = 34;
  v16 = "too large";
  v15 = 34;
  v21 = *__error();
  *__error() = 0;
  if (__minval > __maxval || (__endptr = 0, v8 = strtoll(__numstr, &__endptr, 10), *__error() == 22) || __endptr == __numstr || *__endptr)
  {
    v9 = 0;
    v10 = &v19;
    v11 = &v20;
    goto LABEL_6;
  }

  if (v8 != 0x8000000000000000)
  {
    if (v8 < __minval)
    {
      v9 = 0;
      v10 = &v17;
      v11 = &v18;
      goto LABEL_6;
    }

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (*__error() != 34)
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
        if (__maxval == 0x7FFFFFFFFFFFFFFFLL)
        {
          v10 = &v21;
          v11 = &v22;
          goto LABEL_6;
        }
      }

      goto LABEL_20;
    }

LABEL_19:
    if (v8 <= __maxval)
    {
      v10 = &v21;
      v11 = &v22;
      v9 = v8;
      goto LABEL_6;
    }

LABEL_20:
    v9 = 0;
    v10 = &v15;
    v11 = &v16;
    goto LABEL_6;
  }

  v14 = __error();
  v9 = 0;
  v10 = &v17;
  v11 = &v18;
  if (*v14 != 34 && __minval == 0x8000000000000000)
  {
    goto LABEL_19;
  }

LABEL_6:
  if (__errstrp)
  {
    *__errstrp = *v11;
  }

  v12 = *v10;
  *__error() = v12;
  return v9;
}

FILE *__cdecl freopen(const char *a1, const char *a2, FILE *a3)
{
  if (off_1EAC9EA80)
  {
    (off_1EAC9EA80)(a1);
    if (off_1EAC9EA80)
    {
      (off_1EAC9EA80)(a2);
    }
  }

  if (off_1EAC9EA90)
  {
    (off_1EAC9EA90)(a3, 152);
  }

  v21 = 0;
  v6 = __sflags(a2, &v21);
  if (!v6)
  {
    v9 = *__error();
    fclose(a3);
LABEL_14:
    a3 = 0;
    *__error() = v9;
    return a3;
  }

  v7 = v6;
  pthread_once(&__sdidinit, __sinit);
  flockfile(a3);
  if (a1)
  {
    if (a3->_flags)
    {
      if ((a3->_flags & 8) != 0)
      {
        __sflush(a3);
      }

      close = a3->_close;
      if (close)
      {
        (close)(a3->_cookie);
      }
    }

    else
    {
      a3->_flags = 32;
    }

    file = open_NOCANCEL();
    v13 = *__error();
    goto LABEL_31;
  }

  if (!a3->_flags)
  {
    funlockfile(a3);
    v18 = __error();
    a3 = 0;
    v19 = 22;
    goto LABEL_49;
  }

  v10 = fcntl_NOCANCEL();
  if (v10 < 0)
  {
    goto LABEL_47;
  }

  v11 = v10;
  if ((v10 & 3) != 2 && (v10 & 3) != (v21 & 3))
  {
    fclose(a3);
    funlockfile(a3);
    v18 = __error();
    a3 = 0;
    v19 = 9;
    goto LABEL_49;
  }

  if ((a3->_flags & 8) != 0)
  {
    __sflush(a3);
  }

  v12 = v21;
  if (((v21 ^ v11) & 8) == 0)
  {
    goto LABEL_24;
  }

  if ((fcntl_NOCANCEL() & 0x80000000) != 0)
  {
LABEL_47:
    v9 = *__error();
    fclose(a3);
    funlockfile(a3);
    goto LABEL_14;
  }

  v12 = v21;
LABEL_24:
  if ((v12 & 0x400) != 0)
  {
    ftruncate(a3->_file, 0);
    LOBYTE(v12) = v21;
  }

  if ((v12 & 8) == 0)
  {
    _sseek(a3, 0, 0);
  }

  v13 = 0;
  file = a3->_file;
LABEL_31:
  if ((a3->_flags & 0x80) != 0)
  {
    free(a3->_bf._base);
  }

  a3->_bf._base = 0;
  a3->_bf._size = 0;
  a3->_lbfsize = 0;
  a3->_p = 0;
  *&a3->_r = 0;
  base = a3->_ub._base;
  if (base)
  {
    if (base != a3->_ubuf)
    {
      free(base);
    }

    a3->_ub._base = 0;
  }

  a3->_ub._size = 0;
  v16 = a3->_lb._base;
  if (v16)
  {
    free(v16);
    a3->_lb._base = 0;
  }

  a3->_lb._size = 0;
  *(a3->_extra + 72) &= 0xF8u;
  extra = a3->_extra;
  *(extra + 11) = 0u;
  *(extra + 12) = 0u;
  *(extra + 9) = 0u;
  *(extra + 10) = 0u;
  *(extra + 7) = 0u;
  *(extra + 8) = 0u;
  *(extra + 5) = 0u;
  *(extra + 6) = 0u;
  if ((file & 0x80000000) != 0)
  {
    funlockfile(a3);
    __sfprelease(a3);
    a3 = 0;
    *__error() = v13;
  }

  else
  {
    if (file >= 0x8000)
    {
      funlockfile(a3);
      __sfprelease(a3);
      v18 = __error();
      a3 = 0;
      v19 = 24;
LABEL_49:
      *v18 = v19;
      return a3;
    }

    a3->_flags = v7;
    a3->_file = file;
    a3->_read = __sread;
    a3->_write = __swrite;
    a3->_seek = __sseek;
    a3->_cookie = a3;
    a3->_close = __sclose;
    if ((v21 & 8) != 0)
    {
      _sseek(a3, 0, 2);
    }

    funlockfile(a3);
  }

  return a3;
}

int fscanf(FILE *a1, const char *a2, ...)
{
  va_start(va, a2);
  if (off_1EAC9EA90)
  {
    (off_1EAC9EA90)(a1, 152);
  }

  flockfile(a1);
  v4 = __locale_key;
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &__global_locale;
  }

  v7 = __svfscanf_l(a1, v6, a2, va);
  funlockfile(a1);
  return v7;
}

int fscanf_l(FILE *a1, locale_t a2, const char *a3, ...)
{
  va_start(va, a3);
  if (off_1EAC9EA90)
  {
    (off_1EAC9EA90)(a1, 152);
  }

  v6 = &__global_locale;
  if (a2 != -1)
  {
    v6 = a2;
  }

  if (a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = __c_locale;
  }

  flockfile(a1);
  v8 = __svfscanf_l(a1, v7, a3, va);
  funlockfile(a1);
  return v8;
}