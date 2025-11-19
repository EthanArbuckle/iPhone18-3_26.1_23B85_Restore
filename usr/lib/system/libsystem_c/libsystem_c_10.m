int ftime(timeb *a1)
{
  *&v4.tv_usec = 0;
  v5 = 0;
  v4.tv_sec = 0;
  if (gettimeofday(&v4, &v5) < 0)
  {
    return -1;
  }

  result = 0;
  a1->millitm = ((274877907 * v4.tv_usec) >> 38) + ((274877907 * v4.tv_usec) >> 63);
  a1->time = v4.tv_sec;
  v3 = WORD2(v5);
  a1->timezone = v5;
  a1->dstflag = v3;
  return result;
}

uint64_t gmtime_key_init()
{
  gmtime_key = 1;
  result = pthread_key_init_np();
  gmtime_key_error = result;
  return result;
}

time_t timelocal(tm *const a1)
{
  if (a1)
  {
    a1->tm_isdst = -1;
  }

  return mktime(a1);
}

time_t time2posix(time_t a1)
{
  _st_tzset_basic(0);
  v2 = *lclptr;
  v3 = lclptr + 16 * v2 + 17488;
  v4 = v2 + 1;
  while (--v4 >= 1)
  {
    v5 = (v3 - 16);
    v6 = *(v3 - 24);
    v3 -= 16;
    if (v6 <= a1)
    {
      v7 = *v5;
      return a1 - v7;
    }
  }

  v7 = 0;
  return a1 - v7;
}

time_t posix2time(time_t a1)
{
  _st_tzset_basic(0);
  v2 = *lclptr;
  v3 = lclptr + 16 * v2;
  v4 = v3 + 17488;
  v5 = v2 + 1;
  while (--v5 >= 1)
  {
    v6 = (v4 - 16);
    v7 = *(v4 - 24);
    v4 -= 16;
    if (v7 <= a1)
    {
      v8 = *v6;
      goto LABEL_6;
    }
  }

  v8 = 0;
LABEL_6:
  v9 = v8 + a1;
  v10 = v3 + 17488;
  v11 = v2 + 1;
  while (--v11 >= 1)
  {
    v12 = (v10 - 16);
    v13 = *(v10 - 24);
    v10 -= 16;
    if (v9 >= v13)
    {
      v14 = *v12;
      goto LABEL_11;
    }
  }

  v14 = 0;
LABEL_11:
  v15 = v9 - v14;
  if (v15 >= a1)
  {
    if (v15 <= a1)
    {
      return v9;
    }

    v26 = v3 + 17488;
    v27 = v2 + 1;
    do
    {
      result = v9--;
      v28 = v27;
      v29 = v26;
      while (--v28 >= 1)
      {
        v30 = (v29 - 16);
        v31 = *(v29 - 24);
        v29 -= 16;
        if (result > v31)
        {
          v32 = *v30;
          goto LABEL_27;
        }
      }

      v32 = 0;
LABEL_27:
      v33 = v9 - v32;
      v25 = v33 == a1;
    }

    while (v33 > a1);
  }

  else
  {
    v16 = v3 + 17488;
    v17 = v2 + 1;
    do
    {
      result = v9++;
      v19 = v17;
      v20 = v16;
      while (--v19 >= 1)
      {
        v21 = (v20 - 16);
        v22 = *(v20 - 24);
        v20 -= 16;
        if (v9 >= v22)
        {
          v23 = *v21;
          goto LABEL_18;
        }
      }

      v23 = 0;
LABEL_18:
      v24 = v9 - v23;
      v25 = v24 == a1;
    }

    while (v24 < a1);
  }

  if (v25)
  {
    return v9;
  }

  return result;
}

char *__cdecl strptime(const char *a1, const char *a2, tm *a3)
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

  return strptime_l(a1, a2, a3, v5);
}

time_t _time32_to_time(int32_t t32)
{
  *&t32 = t32;
  LODWORD(result) = t32;
  return result;
}

time_t _int_to_time(int tint)
{
  *&tint = tint;
  LODWORD(result) = tint;
  return result;
}

uint64_t __time_load_locale(char *a1, uint64_t a2, size_t a3, _xlocale *a4)
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
    *(a2 + 1315) = 0;
    v9 = *(a2 + 1352);
    if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
    {
      v10 = *(v9 + 8);
      if (v10)
      {
        v10();
      }
    }

    *(a2 + 1352) = 0;
    return 1;
  }

  if (!__time_load_locale_cache || (v12 = *(__time_load_locale_cache + 64)) == 0 || j__strncasecmp_l(a1, v12, v7, v8))
  {
    v13 = malloc_type_malloc(0x218uLL, 0x10D00403D7458CFuLL);
    if (v13)
    {
      v14 = v13;
      *v13 = 1;
      *(v13 + 1) = destruct_ldpart;
      *(v13 + 8) = 0;
      result = __part_load_locale(a1, (a2 + 1315), v13 + 8, "LC_TIME", 58, 58, v13 + 9);
      if (result != -1)
      {
        if (!result)
        {
          v15 = *(a2 + 1352);
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

          *(a2 + 1352) = v14;
          v17 = __time_load_locale_cache;
          if (__time_load_locale_cache)
          {
            if (atomic_fetch_add(__time_load_locale_cache, 0xFFFFFFFF) == 1)
            {
              v18 = *(v17 + 8);
              if (v18)
              {
                v18();
              }
            }
          }

          result = 0;
          __time_load_locale_cache = v14;
          atomic_fetch_add(v14, 1u);
        }

        return result;
      }

      free(v14);
    }

    return 0xFFFFFFFFLL;
  }

  *(a2 + 1315) = 1;
  v19 = *(a2 + 1352);
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

  v21 = __time_load_locale_cache;
  *(a2 + 1352) = __time_load_locale_cache;
  result = 1;
  if (v21)
  {
    atomic_fetch_add(v21, 1u);
  }

  return result;
}

char *__cdecl rindex(const char *a1, int a2)
{
  result = 0;
  v4 = a1;
  do
  {
    v6 = *v4++;
    v5 = v6;
    if (a2 == v6)
    {
      result = a1;
    }

    a1 = v4;
  }

  while (v5);
  return result;
}

uint64_t strchrnul(unsigned __int8 *__sig, char *a2, size_t a3)
{
  v3 = a2;
  v4 = __sig;
  if (off_1EAC9EA80)
  {
    (off_1EAC9EA80)(__sig);
  }

  if (v3)
  {
    if ((v4 & 7) != 0)
    {
      v5 = v4 - (v4 & 7) + 8;
      v6 = (v4 + 1);
      while (1)
      {
        v7 = !*v4 || *v4 == v3;
        if (v7)
        {
          break;
        }

        ++v4;
        v7 = (v6++ & 7) == 0;
        if (v7)
        {
          v4 = v5;
          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:
      v8 = *v4;
      if ((~((0x101010101010100 - *v4) | *v4) & 0x8080808080808080) == 0)
      {
        do
        {
          if ((~((0x101010101010100 - (v8 ^ (0x101010101010101 * v3))) | v8 ^ (0x101010101010101 * v3)) & 0x8080808080808080) != 0)
          {
            break;
          }

          v9 = *(v4 + 8);
          v4 += 8;
          v8 = v9;
        }

        while ((~((0x101010101010100 - v9) | v9) & 0x8080808080808080) == 0);
      }

      --v4;
      do
      {
        v11 = *++v4;
        v10 = v11;
        if (v11)
        {
          v12 = v10 == v3;
        }

        else
        {
          v12 = 1;
        }
      }

      while (!v12);
    }
  }

  else
  {
    v4 += j__strsignal_r(v4, a2, a3);
  }

  return v4;
}

void strmode(int __mode, char *__bp)
{
  v2 = (__mode & 0xF000u) - 4096;
  if (v2 >> 13 > 6)
  {
    v3 = 63;
  }

  else
  {
    v3 = byte_18E98B0D4[v2 >> 12];
  }

  *__bp = v3;
  v4 = 45;
  if ((__mode & 0x100) != 0)
  {
    v5 = 114;
  }

  else
  {
    v5 = 45;
  }

  __bp[1] = v5;
  if ((__mode & 0x80) != 0)
  {
    v6 = 119;
  }

  else
  {
    v6 = 45;
  }

  __bp[2] = v6;
  if ((__mode & 0x840u) > 0x7FF)
  {
    if ((__mode & 0x840) == 0x800)
    {
      v4 = 83;
    }

    else
    {
      v4 = 115;
    }
  }

  else if ((__mode & 0x840) != 0)
  {
    v4 = 120;
  }

  __bp[3] = v4;
  v7 = 45;
  if ((__mode & 0x20) != 0)
  {
    v8 = 114;
  }

  else
  {
    v8 = 45;
  }

  __bp[4] = v8;
  if ((__mode & 0x10) != 0)
  {
    v9 = 119;
  }

  else
  {
    v9 = 45;
  }

  __bp[5] = v9;
  if ((__mode & 0x408u) > 0x3FF)
  {
    if ((__mode & 0x408) == 0x400)
    {
      v7 = 83;
    }

    else
    {
      v7 = 115;
    }
  }

  else if ((__mode & 0x408) != 0)
  {
    v7 = 120;
  }

  __bp[6] = v7;
  v10 = 45;
  if ((__mode & 4) != 0)
  {
    v11 = 114;
  }

  else
  {
    v11 = 45;
  }

  __bp[7] = v11;
  if ((__mode & 2) != 0)
  {
    v12 = 119;
  }

  else
  {
    v12 = 45;
  }

  __bp[8] = v12;
  if ((__mode & 0x201u) > 0x1FF)
  {
    if ((__mode & 0x201) == 0x200)
    {
      v10 = 84;
    }

    else
    {
      v10 = 116;
    }
  }

  else if ((__mode & 0x201) != 0)
  {
    v10 = 120;
  }

  __bp[9] = v10;
  *(__bp + 5) = 32;
}

char *__cdecl strsep(char **__stringp, const char *__delim)
{
  result = *__stringp;
  if (result)
  {
    v4 = result;
    v5 = result;
LABEL_3:
    v7 = *v5++;
    v6 = v7;
    v8 = __delim;
    while (1)
    {
      v9 = *v8;
      if (v9 == v6)
      {
        break;
      }

      ++v8;
      if (!v9)
      {
        v4 = v5;
        goto LABEL_3;
      }
    }

    if (v6)
    {
      *v4 = 0;
    }

    else
    {
      v5 = 0;
    }

    *__stringp = v5;
  }

  return result;
}

size_t strspn(const char *__s, const char *__charset)
{
  if (!*__s)
  {
    return 0;
  }

  memset(v8, 0, sizeof(v8));
  v2 = *__charset;
  if (*__charset)
  {
    v3 = __charset + 1;
    do
    {
      *(v8 + (v2 >> 6)) |= 1 << v2;
      v4 = *v3++;
      v2 = v4;
    }

    while (v4);
  }

  v5 = 0;
  do
  {
    v6 = __s[v5++];
  }

  while (((*(v8 + ((v6 >> 3) & 0x18)) >> v6) & 1) != 0);
  return v5 - 1;
}

size_t strxfrm(char *__s1, const char *__s2, size_t __n)
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

  return strxfrm_l(__s1, __s2, __n, v5);
}

size_t strxfrm_l(char *a1, const char *a2, size_t a3, locale_t a4)
{
  v6 = &__global_locale;
  if (a4 != -1)
  {
    v6 = a4;
  }

  if (a4)
  {
    v7 = v6;
  }

  else
  {
    v7 = __c_locale;
  }

  if (*a2)
  {
    v9 = *(v7 + 165);
    v10 = j__strsignal_r(a2, a2, a3);
    v11 = v10;
    if (*(v9 + 64))
    {
      v12 = 0;
LABEL_9:
      v13 = *__error();
      free(v12);
      MEMORY[0x193AD6A30](a1, a2, a3);
      *__error() = v13;
      return v11;
    }

    v16 = malloc_type_malloc(4 * (v10 + 1), 0x100004052888210uLL);
    v12 = v16;
    if (!v16)
    {
      goto LABEL_9;
    }

    if (mbstowcs_l(v16, a2, v11 + 1, v7) == -1)
    {
      goto LABEL_9;
    }

    v17 = _collate_sxfrm(v9, v12, a1, a3);
    if (v17 == -1)
    {
      goto LABEL_9;
    }

    v14 = v17;
    free(v12);
    if (v14 >= a3)
    {
      if (a3)
      {
        a1[a3 - 1] = 0;
      }
    }

    else
    {
      a1[v14] = 0;
    }
  }

  else
  {
    v14 = 0;
    if (a3)
    {
      *a1 = 0;
    }
  }

  return v14;
}

void swab(const void *a1, void *a2, ssize_t a3)
{
  if (a3 >= 1)
  {
    v3 = a3 >> 1;
    if (((a3 >> 1) & 7) != 0)
    {
      do
      {
        v4 = *a1;
        v5 = a1 + 2;
        *a2 = *(a1 + 1);
        v6 = a2 + 2;
        *(a2 + 1) = v4;
        LODWORD(v3) = v3 - 1;
        a2 = a2 + 2;
        a1 = a1 + 2;
      }

      while ((v3 & 7) != 0);
      a1 = v5;
      a2 = v6;
    }

    v7 = v3 >> 3;
    if (v7 >= 1)
    {
      v8 = v7 + 1;
      do
      {
        v9 = *a1;
        a1 = a1 + 16;
        *a2 = vrev16q_s8(v9);
        a2 = a2 + 16;
        --v8;
      }

      while (v8 > 1);
    }
  }
}

__int32 *__cdecl wcpcpy(__int32 *result, const __int32 *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    v3 = a2 + 1;
    do
    {
      v4 = *v3++;
      result[1] = v4;
      ++result;
    }

    while (v4);
  }

  return result;
}

__int32 *__cdecl wcpncpy(__int32 *a1, const __int32 *a2, size_t a3)
{
  v3 = a1;
  if (a3)
  {
    v4 = 0;
    v5 = a3;
    while (1)
    {
      v6 = a2[v4];
      a1[v4] = v6;
      if (!v6)
      {
        break;
      }

      ++v4;
      if (!--v5)
      {
        return &a1[v4];
      }
    }

    v3 = &a1[v4];
    if (v5 != 1)
    {
      MEMORY[0x193AD5FD0](v3 + 1, 4 * a3 - v4 * 4 - 4);
    }
  }

  return v3;
}

int wcscasecmp_l(const __int32 *a1, const __int32 *a2, locale_t a3)
{
  v5 = *a1;
  if (!v5)
  {
    return -*a2;
  }

  for (i = a1 + 1; ; ++i)
  {
    v8 = v5 > 0x7F ? ___tolower_l(v5, a3) : _DefaultRuneLocale.__maplower[v5];
    v9 = *a2;
    v10 = v9 > 0x7F ? ___tolower_l(v9, a3) : _DefaultRuneLocale.__maplower[v9];
    result = v8 - v10;
    if (result)
    {
      break;
    }

    ++a2;
    v12 = *i;
    v5 = v12;
    if (!v12)
    {
      return -*a2;
    }
  }

  return result;
}

int wcscasecmp(const __int32 *a1, const __int32 *a2)
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

  return wcscasecmp_l(a1, a2, v4);
}

__int32 *__cdecl wcscat(__int32 *result, const __int32 *a2)
{
  v2 = 0;
    ;
  }

  v4 = v2 * 4 - 4;
  do
  {
    v5 = *a2++;
    *(result + v4) = v5;
    v4 += 4;
  }

  while (v5);
  return result;
}

int wcscmp(const __int32 *a1, const __int32 *a2)
{
  while (1)
  {
    v2 = *a1;
    v3 = *a1 - *a2;
    if (*a1 != *a2)
    {
      break;
    }

    ++a2;
    ++a1;
    if (!v2)
    {
      return 0;
    }
  }

  return v3;
}

int wcscoll_l(const __int32 *a1, const __int32 *a2, locale_t a3)
{
  v6 = wcscmp(a1, a2);
  v7 = v6;
  v8 = &__c_locale;
  v9 = &__global_locale;
  if (a3 != -1)
  {
    v9 = a3;
  }

  if (a3)
  {
    v8 = v9;
  }

  v10 = *(v8 + 165);
  if (*(v10 + 64))
  {
    v11 = 1;
  }

  else
  {
    v11 = v6 == 0;
  }

  if (v11)
  {
    return v7;
  }

  v12 = *a2;
  if (*a1)
  {
    if (!v12)
    {
      return 1;
    }
  }

  else if (v12)
  {
    return -1;
  }

  v50 = 0;
  v51 = 0;
  v13 = *(v10 + 88);
  LODWORD(v14) = *v13;
  if (!*v13)
  {
    v17 = 0;
    v16 = 0;
    v46 = 0;
    goto LABEL_104;
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
LABEL_16:
  v48 = 0;
  v49 = 0;
  if (v15 != v14)
  {
    v20 = v13[v15 + 1];
    if ((v20 & 2) != 0)
    {
      free(v17);
      v31 = wcsdup(a1);
      v17 = v31;
      if (!v31)
      {
        goto LABEL_102;
      }

      v32 = &v31[wcslen(v31) - 1];
      if (v17 < v32)
      {
        v33 = (v17 + 1);
        do
        {
          v34 = *(v33 - 1);
          *(v33 - 1) = *v32;
          *v32-- = v34;
          v35 = v33 >= v32;
          v33 += 4;
        }

        while (!v35);
      }

      free(v16);
      v36 = wcsdup(a2);
      v16 = v36;
      if (!v36)
      {
        goto LABEL_102;
      }

      v37 = &v36[wcslen(v36) - 1];
      if (v16 < v37)
      {
        v38 = (v16 + 1);
        do
        {
          v39 = *(v38 - 1);
          *(v38 - 1) = *v37;
          *v37-- = v39;
          v35 = v38 >= v37;
          v38 += 4;
        }

        while (!v35);
      }

      v19 = v17;
      v18 = v16;
      if ((v20 & 4) == 0)
      {
LABEL_20:
        v47 = v16;
        goto LABEL_21;
      }
    }

    else
    {
      v19 = a1;
      v18 = a2;
      if ((v13[v15 + 1] & 4) == 0)
      {
        goto LABEL_20;
      }
    }

    v30 = *v19;
    if (!*v19)
    {
      goto LABEL_89;
    }

    v47 = v16;
LABEL_70:
    if (!*v18)
    {
LABEL_106:
      v7 = v30;
LABEL_101:
      v16 = v47;
LABEL_102:
      v46 = v7;
      goto LABEL_104;
    }

    v40 = 0;
    v50 = 0;
    v41 = 1;
    v42 = 1;
    while (1)
    {
      if (!v42 && !v41)
      {
        v19 += SHIDWORD(v51);
        v18 += v51;
        v30 = *v19;
        if (*v19)
        {
          goto LABEL_70;
        }

        v16 = v47;
LABEL_89:
        if (*v18)
        {
          v7 = -*v18;
          goto LABEL_102;
        }

LABEL_98:
        v46 = 0;
        ++v15;
        v13 = *(v10 + 88);
        v14 = *v13;
        if (v15 >= v14)
        {
          goto LABEL_104;
        }

        goto LABEL_16;
      }

      if (!v42)
      {
        goto LABEL_77;
      }

      _collate_lookup(v10, v19, &v51 + 1, &v50 + 1, v15, &v49);
      v40 = HIDWORD(v50);
      if (v50 < 0)
      {
        goto LABEL_100;
      }

      if (HIDWORD(v50))
      {
        break;
      }

      v42 = 0;
      v40 = 0x7FFFFFFF;
      HIDWORD(v50) = 0x7FFFFFFF;
      v49 = 0;
      if (!v41)
      {
LABEL_82:
        v43 = v50;
        goto LABEL_85;
      }

LABEL_78:
      _collate_lookup(v10, v18, &v51, &v50, v15, &v48);
      v43 = v50;
      if ((v50 & 0x80000000) != 0)
      {
LABEL_100:
        *__error() = 22;
        goto LABEL_101;
      }

      if (v50)
      {
        v41 = v48 != 0;
      }

      else
      {
        v41 = 0;
        v43 = 0x7FFFFFFF;
        LODWORD(v50) = 0x7FFFFFFF;
        v48 = 0;
      }

      v40 = HIDWORD(v50);
LABEL_85:
      v44 = v40 - v43;
      v11 = v40 == v43;
      v40 = v43;
      if (!v11)
      {
        v7 = v44;
        goto LABEL_101;
      }
    }

    v42 = v49 != 0;
LABEL_77:
    if (!v41)
    {
      goto LABEL_82;
    }

    goto LABEL_78;
  }

  v47 = v16;
  v18 = a2;
  v19 = a1;
LABEL_21:
  v21 = 0;
  v22 = 0;
  while (1)
  {
    if (!*v19)
    {
      v23 = !*v18 && v49 == 0;
      if (v23 && v48 == 0)
      {
        break;
      }
    }

    HIDWORD(v50) = 1;
    if (*v19)
    {
      v25 = 0;
    }

    else
    {
      v25 = v49 == 0;
    }

    if (!v25)
    {
      while (1)
      {
        _collate_lookup(v10, v19, &v51 + 1, &v50 + 1, v15, &v49);
        v19 += SHIDWORD(v51);
        if (SHIDWORD(v50) >= 1)
        {
          break;
        }

        if (v50 < 0)
        {
          goto LABEL_100;
        }

        v49 = 0;
        if (!*v19)
        {
          goto LABEL_39;
        }
      }

      ++v21;
    }

LABEL_39:
    v26 = 1;
    LODWORD(v50) = 1;
    if (*v18)
    {
      v27 = 0;
    }

    else
    {
      v27 = v48 == 0;
    }

    if (!v27)
    {
      while (1)
      {
        _collate_lookup(v10, v18, &v51, &v50, v15, &v48);
        v18 += v51;
        v26 = v50;
        if (v50 >= 1)
        {
          break;
        }

        if ((v50 & 0x80000000) != 0)
        {
          goto LABEL_100;
        }

        v48 = 0;
        v26 = *v18;
        if (!*v18)
        {
          goto LABEL_48;
        }
      }

      ++v22;
    }

LABEL_48:
    if (v26)
    {
      v28 = HIDWORD(v50) == 0;
    }

    else
    {
      v28 = 1;
    }

    if (v28 && v21 == v22)
    {
      v22 = v21;
      break;
    }

    v30 = HIDWORD(v50) - v26;
    if (v30)
    {
      goto LABEL_106;
    }
  }

  if (v21 && !v22)
  {
    v7 = 1;
    goto LABEL_101;
  }

  if (v21)
  {
    v16 = v47;
    goto LABEL_98;
  }

  v16 = v47;
  if (!v22)
  {
    goto LABEL_98;
  }

  v46 = -1;
LABEL_104:
  free(v17);
  free(v16);
  return v46;
}

int wcscoll(const __int32 *a1, const __int32 *a2)
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

  return wcscoll_l(a1, a2, v4);
}

__int32 *__cdecl wcscpy(__int32 *result, const __int32 *a2)
{
  v2 = 0;
  do
  {
    v3 = a2[v2];
    result[v2++] = v3;
  }

  while (v3);
  return result;
}

size_t wcscspn(const __int32 *a1, const __int32 *a2)
{
  v2 = *a1;
  v3 = a1;
  if (*a1)
  {
    v6 = *a2;
    v4 = a2 + 1;
    v5 = v6;
    v3 = a1;
    while (1)
    {
      v7 = v4;
      v8 = v5;
      if (v5)
      {
        break;
      }

LABEL_6:
      v10 = v3[1];
      ++v3;
      v2 = v10;
      if (!v10)
      {
        return v3 - a1;
      }
    }

    while (v2 != v8)
    {
      v9 = *v7++;
      v8 = v9;
      if (!v9)
      {
        goto LABEL_6;
      }
    }
  }

  return v3 - a1;
}

__int32 *__cdecl wcsdup(const __int32 *a1)
{
  v2 = wcslen(a1) + 1;
  result = malloc_type_malloc(4 * v2, 0x100004052888210uLL);
  if (result)
  {

    return wmemcpy(result, a1, v2);
  }

  return result;
}

size_t wcslcat(__int32 *a1, const __int32 *a2, size_t a3)
{
  if (*a1)
  {
    v3 = a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = a1;
  if (!v3)
  {
    v5 = a3 - 1;
    v4 = a1;
    do
    {
      v6 = v4[1];
      ++v4;
      if (v6)
      {
        v7 = v5 == 0;
      }

      else
      {
        v7 = 1;
      }

      --v5;
    }

    while (!v7);
  }

  v8 = v4 - a1;
  v9 = a3 - v8;
  if (a3 == v8)
  {
    v13 = wcslen(a2);
  }

  else
  {
    v10 = *a2;
    if (*a2)
    {
      v11 = a2;
      do
      {
        if (--v9)
        {
          *v4++ = v10;
        }

        else
        {
          v9 = 1;
        }

        v12 = v11[1];
        ++v11;
        v10 = v12;
      }

      while (v12);
    }

    else
    {
      v11 = a2;
    }

    *v4 = 0;
    v13 = v11 - a2;
  }

  return v13 + v8;
}

size_t wcslcpy(__int32 *a1, const __int32 *a2, size_t a3)
{
  if (a3 >= 2)
  {
    v4 = a3 - 1;
    v3 = a2;
    while (1)
    {
      v5 = *v3++;
      *a1 = v5;
      if (!v5)
      {
        break;
      }

      ++a1;
      if (!--v4)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
    v3 = a2;
LABEL_6:
    if (a3)
    {
      *a1 = 0;
    }

      ;
    }
  }

  return v3 - a2 - 1;
}

int wcsncasecmp_l(const __int32 *a1, const __int32 *a2, size_t n, locale_t a4)
{
  if (!n)
  {
    return 0;
  }

  v6 = *a1;
  if (!v6)
  {
    return -*a2;
  }

  v8 = n - 1;
  v9 = a1 + 1;
  while (1)
  {
    v10 = v6 > 0x7F ? ___tolower_l(v6, a4) : _DefaultRuneLocale.__maplower[v6];
    v11 = *a2;
    v12 = v11 > 0x7F ? ___tolower_l(v11, a4) : _DefaultRuneLocale.__maplower[v11];
    result = v10 - v12;
    if (result)
    {
      break;
    }

    if (!v8)
    {
      return 0;
    }

    ++a2;
    v14 = *v9++;
    v6 = v14;
    --v8;
    if (!v14)
    {
      return -*a2;
    }
  }

  return result;
}

int wcsncasecmp(const __int32 *a1, const __int32 *a2, size_t n)
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

  return wcsncasecmp_l(a1, a2, n, v5);
}

__int32 *__cdecl wcsncat(__int32 *result, const __int32 *a2, size_t a3)
{
  v3 = result - 1;
  do
  {
    v4 = v3[1];
    ++v3;
  }

  while (v4);
  v5 = *a2;
  if (*a2)
  {
    v6 = a3 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = a2 + 1;
    v8 = a3 - 1;
    do
    {
      *v3++ = v5;
      v9 = *v7++;
      v5 = v9;
      v11 = v8-- != 0;
    }

    while (v5 && v11);
  }

  *v3 = 0;
  return result;
}

int wcsncmp(const __int32 *a1, const __int32 *a2, size_t a3)
{
  if (!a3)
  {
    return 0;
  }

  for (i = a3 - 1; ; --i)
  {
    v4 = *a1;
    v5 = *a1 - *a2;
    if (*a1 != *a2)
    {
      break;
    }

    ++a2;
    ++a1;
    if (v4)
    {
      v6 = i == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  return v5;
}

__int32 *__cdecl wcsncpy(__int32 *a1, const __int32 *a2, size_t a3)
{
  if (a3)
  {
    v5 = 4 * a3 - 4;
    for (i = a1 + 1; ; ++i)
    {
      v7 = *a2;
      *(i - 1) = *a2;
      if (!v7)
      {
        break;
      }

      ++a2;
      v5 -= 4;
      if (!--a3)
      {
        return a1;
      }
    }

    if (a3 != 1)
    {
      MEMORY[0x193AD5FD0]();
    }
  }

  return a1;
}

size_t wcsnlen(const __int32 *a1, size_t a2)
{
  if (!a2)
  {
    return 0;
  }

  result = 0;
  while (a1[result])
  {
    if (a2 == ++result)
    {
      return a2;
    }
  }

  return result;
}

__int32 *__cdecl wcspbrk(__int32 *__s1, const __int32 *__s2)
{
  v2 = *__s1;
  if (!*__s1)
  {
    return 0;
  }

  v5 = *__s2;
  v3 = __s2 + 1;
  v4 = v5;
  while (1)
  {
    v6 = v3;
    v7 = v4;
    if (v4)
    {
      break;
    }

LABEL_6:
    v9 = __s1[1];
    ++__s1;
    v2 = v9;
    if (!v9)
    {
      return 0;
    }
  }

  while (v2 != v7)
  {
    v8 = *v6++;
    v7 = v8;
    if (!v8)
    {
      goto LABEL_6;
    }
  }

  return __s1;
}

__int32 *__cdecl wcsrchr(__int32 *__s, __int32 __c)
{
  result = 0;
  v4 = __s;
  do
  {
    v6 = *v4++;
    v5 = v6;
    if (v6 == __c)
    {
      result = __s;
    }

    __s = v4;
  }

  while (v5);
  return result;
}

size_t wcsspn(const __int32 *a1, const __int32 *a2)
{
  v2 = *a1;
  v3 = a1;
  if (*a1)
  {
    v6 = *a2;
    v4 = a2 + 1;
    v5 = v6;
    v3 = a1;
    while (1)
    {
      v7 = v4;
      v8 = v5;
      if (!v5)
      {
        break;
      }

      while (v2 != v8)
      {
        v9 = *v7++;
        v8 = v9;
        if (!v9)
        {
          return v3 - a1;
        }
      }

      v10 = v3[1];
      ++v3;
      v2 = v10;
      if (!v10)
      {
        return v3 - a1;
      }
    }

    v3 = a1;
  }

  return v3 - a1;
}

FILE *__cdecl fmemopen(void *__buf, size_t __size, const char *__mode)
{
  v3 = __size;
  v16 = 0;
  if (!__size)
  {
    v6 = __error();
    goto LABEL_7;
  }

  if (!__sflags(__mode, &v16) || !__buf && (v16 & 2) == 0)
  {
    v6 = __error();
    v3 = 0;
LABEL_7:
    *v6 = 22;
    return v3;
  }

  v8 = malloc_type_malloc(0x28uLL, 0x10100402BFFC1BCuLL);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v8[4] = 0;
  v8[2] = v3;
  *v8 = __buf;
  *(v8 + 8) = __buf == 0;
  if (!__buf)
  {
    v10 = malloc_type_malloc(v3, 0x654109ABuLL);
    *v9 = v10;
    if (!v10)
    {
LABEL_31:
      free(v9);
      return 0;
    }

    __buf = v10;
    if (v9[1])
    {
      goto LABEL_15;
    }
  }

  if (*__mode == 119)
  {
LABEL_15:
    *__buf = 0;
  }

  j__strmode(__mode, 0x62);
  *(v9 + 9) = v11 != 0;
  v12 = *__mode;
  switch(v12)
  {
    case 'w':
      v9[3] = 0;
      break;
    case 'r':
      v9[3] = v3;
      break;
    case 'a':
      v13 = MEMORY[0x193AD6A70](*v9, v9[2]);
      v9[3] = v13;
      v9[4] = v13;
      break;
  }

  if (v16)
  {
    v14 = 0;
  }

  else
  {
    v14 = fmemopen_read;
  }

  v15 = funopen(v9, v14, fmemopen_write, fmemopen_seek, fmemopen_close);
  if (!v15)
  {
    if (*(v9 + 8) == 1)
    {
      free(*v9);
    }

    goto LABEL_31;
  }

  v3 = v15;
  if (*__mode == 97)
  {
    v15->_flags |= 0x100u;
  }

  setvbuf(v15, 0, 2, 0);
  return v3;
}

uint64_t fmemopen_read(void *a1, int dfd, unsigned int a3)
{
  v3 = a1[4];
  v4 = a1[3] - v3;
  if (v4 >= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = v4;
  }

  if (v5)
  {
    j__mkdtempat_np(dfd, (*a1 + v3));
    a1[4] += v5;
  }

  return v5;
}

uint64_t fmemopen_write(uint64_t a1, char *a2, unsigned int a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 16) - v3;
  if (v4 >= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = v4;
  }

  if (v5)
  {
    j__mkdtempat_np(*a1 + v3, a2);
    v7 = *(a1 + 24);
    v8 = *(a1 + 32) + v5;
    *(a1 + 32) = v8;
    if (v8 > v7)
    {
      *(a1 + 24) = v8;
    }

    if (!*(a1 + 9) && v8 < *(a1 + 16))
    {
      v9 = (*a1 + v8);
      if (*(v9 - 1))
      {
        *v9 = 0;
      }
    }
  }

  return v5;
}

uint64_t fmemopen_seek(void *a1, uint64_t a2, int a3)
{
  if (a3 == 2)
  {
    if (a2 > 0)
    {
      goto LABEL_10;
    }

    v3 = a1[3];
    if (v3 < -a2)
    {
      goto LABEL_10;
    }

    a2 += v3;
    goto LABEL_12;
  }

  if (a3 == 1)
  {
    a2 += a1[4];
    if (a2 > a1[2])
    {
      goto LABEL_10;
    }

LABEL_12:
    a1[4] = a2;
    return a2;
  }

  if (!a3 && a1[2] >= a2)
  {
    goto LABEL_12;
  }

LABEL_10:
  *__error() = 22;
  return -1;
}

uint64_t fmemopen_close(void **a1)
{
  if (*(a1 + 8) == 1)
  {
    free(*a1);
  }

  free(a1);
  return 0;
}

__int32 *__cdecl wcsstr(__int32 *__s1, const __int32 *__s2)
{
  v2 = __s1;
  v3 = __s2 + 1;
  v4 = *__s2;
  if (!*__s2)
  {
    return __s1;
  }

  v5 = wcslen(__s2 + 1);
  while (1)
  {
    v6 = *v2;
    if (!*v2)
    {
      break;
    }

    v7 = v2++;
    if (v6 == v4 && !wcsncmp(v2, v3, v5))
    {
      return v7;
    }
  }

  return 0;
}

__int32 *__cdecl wcstok(__int32 *result, const __int32 *a2, __int32 **a3)
{
  if (result || (result = *a3) != 0)
  {
    v3 = result;
LABEL_4:
    v5 = *v3++;
    v4 = v5;
    v6 = a2;
    while (1)
    {
      v7 = *v6;
      if (!*v6)
      {
        break;
      }

      ++v6;
      if (v4 == v7)
      {
        result = v3;
        goto LABEL_4;
      }
    }

    if (v4)
    {
      v8 = v3;
LABEL_10:
      v10 = *v8++;
      v9 = v10;
      v11 = a2;
      while (1)
      {
        v12 = *v11;
        if (*v11 == v9)
        {
          break;
        }

        ++v11;
        if (!v12)
        {
          v3 = v8;
          goto LABEL_10;
        }
      }

      if (v9)
      {
        *v3 = 0;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
      result = 0;
    }

    *a3 = v8;
  }

  return result;
}

int wcswidth_l(const __int32 *a1, size_t a2, locale_t a3)
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
    v4 = __c_locale;
  }

  if (!a2)
  {
    return 0;
  }

  v5 = a2;
  v7 = 0;
  while (*a1)
  {
    v8 = wcwidth_l(*a1, v4);
    if (v8 < 0)
    {
      return -1;
    }

    v7 += v8;
    ++a1;
    if (!--v5)
    {
      return v7;
    }
  }

  return v7;
}

int wcswidth(const __int32 *a1, size_t a2)
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

  return wcswidth_l(a1, a2, v4);
}

size_t wcsxfrm_l(__int32 *a1, const __int32 *a2, size_t a3, locale_t a4)
{
  v6 = &__global_locale;
  v7 = __c_locale;
  if (a4 != -1)
  {
    v6 = a4;
  }

  if (a4)
  {
    v7 = v6;
  }

  if (*a2)
  {
    v9 = *(v7 + 165);
    if (*(v9 + 64) || (v14 = _collate_wxfrm(v9, a2, a1, a3), v14 == -1))
    {
      v10 = *__error();
      v11 = wcslen(a2);
      if (v11 >= a3)
      {
        if (a3)
        {
          v12 = a3 - 1;
          wcsncpy(a1, a2, v12);
          a1[v12] = 0;
        }
      }

      else
      {
        wcscpy(a1, a2);
      }

      *__error() = v10;
    }

    else
    {
      v11 = v14;
      if (v14 >= a3)
      {
        if (a3)
        {
          a1[a3 - 1] = 0;
        }
      }

      else
      {
        a1[v14] = 0;
      }
    }
  }

  else
  {
    v11 = 0;
    if (a3)
    {
      *a1 = 0;
    }
  }

  return v11;
}

size_t wcsxfrm(__int32 *a1, const __int32 *a2, size_t a3)
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

  return wcsxfrm_l(a1, a2, a3, v5);
}

__int32 *__cdecl wmemchr(__int32 *__s, __int32 __c, size_t __n)
{
  if (!__n)
  {
    return 0;
  }

  while (*__s != __c)
  {
    ++__s;
    if (!--__n)
    {
      return 0;
    }
  }

  return __s;
}

int wmemcmp(const __int32 *a1, const __int32 *a2, size_t a3)
{
  if (!a3)
  {
    return 0;
  }

  while (*a1 == *a2)
  {
    ++a1;
    ++a2;
    if (!--a3)
    {
      return 0;
    }
  }

  if (*a1 > *a2)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

__int32 *__cdecl wmemset(__int32 *result, __int32 a2, size_t a3)
{
  if (a3)
  {
    v3 = 0;
    v4 = vdupq_n_s64(a3 - 1);
    v5 = result + 2;
    do
    {
      v6 = vdupq_n_s64(v3);
      v7 = vmovn_s64(vcgeq_u64(v4, vorrq_s8(v6, xmmword_18E98AD20)));
      if (vuzp1_s16(v7, *v4.i8).u8[0])
      {
        *(v5 - 2) = a2;
      }

      if (vuzp1_s16(v7, *&v4).i8[2])
      {
        *(v5 - 1) = a2;
      }

      if (vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v4, vorrq_s8(v6, xmmword_18E98AD10)))).i32[1])
      {
        *v5 = a2;
        v5[1] = a2;
      }

      v3 += 4;
      v5 += 4;
    }

    while (((a3 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v3);
  }

  return result;
}

uint64_t _UTF2_init(void *a1)
{
  a1[9] = _UTF2_mbrtowc;
  a1[12] = _UTF2_wcrtomb;
  a1[10] = _UTF2_mbsinit;
  a1[11] = _UTF2_mbsnrtowcs;
  a1[13] = _UTF2_wcsnrtombs;
  a1[8] = 0x8000000003;
  return 0;
}

uint64_t _UTF2_mbrtowc(int *a1, const char *a2, unint64_t a3, int *a4)
{
  v4 = a4[1];
  if (v4 >= 7)
  {
    v5 = __error();
    v6 = 22;
LABEL_3:
    *v5 = v6;
    return -1;
  }

  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = "";
  }

  if (!a2)
  {
    a3 = 1;
  }

  if (a2)
  {
    v10 = a1;
  }

  else
  {
    v10 = 0;
  }

  if (!a3)
  {
    return -2;
  }

  if (v4)
  {
    v11 = a4[2];
    v12 = *a4;
    v13 = a4[1];
    goto LABEL_16;
  }

  v18 = *v8;
  if (*v8 < 0)
  {
    if ((v18 & 0xE0) == 0xC0)
    {
      v11 = 128;
      v13 = 2;
      v20 = 31;
    }

    else
    {
      if ((v18 & 0xF0) != 0xE0)
      {
        goto LABEL_42;
      }

      v11 = 2048;
      v13 = 3;
      v20 = 15;
    }

    ++v8;
    v12 = v20 & v18;
LABEL_16:
    v14 = v4 == 0;
    v15 = v13;
    if (a3 < v13)
    {
      v15 = a3;
    }

    v16 = v15 - v14;
    if (v15 > v14)
    {
      while (1)
      {
        v17 = *v8;
        if ((*v8 & 0xC0) != 0x80)
        {
          goto LABEL_42;
        }

        ++v8;
        v12 = v17 & 0x3F | (v12 << 6);
        if (!--v16)
        {
          LODWORD(v14) = v15;
          break;
        }
      }
    }

    if (v13 > v14)
    {
      a4[1] = v13 - v14;
      a4[2] = v11;
      result = -2;
      *a4 = v12;
      return result;
    }

    if (v12 >= v11)
    {
      if (v10)
      {
        *v10 = v12;
      }

      a4[1] = 0;
      if (v12)
      {
        return v13;
      }

      else
      {
        return 0;
      }
    }

LABEL_42:
    v5 = __error();
    v6 = 92;
    goto LABEL_3;
  }

  if (v10)
  {
    *v10 = v18;
  }

  return v18 != 0;
}

uint64_t _UTF2_wcrtomb(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (*(a3 + 4))
  {
    v3 = __error();
    v4 = 22;
LABEL_3:
    *v3 = v4;
    return -1;
  }

  if (!a1)
  {
    return 1;
  }

  if (a2 <= 0x7F)
  {
    *a1 = a2;
    return 1;
  }

  if (a2 >= 0x800)
  {
    if (a2 >= 0x10000)
    {
      v3 = __error();
      v4 = 92;
      goto LABEL_3;
    }

    v6 = -32;
    v5 = 3;
  }

  else
  {
    v6 = -64;
    v5 = 2;
  }

  v7 = v5 - 1;
  do
  {
    a1[v7] = a2 & 0x3F | 0x80;
    a2 = a2 >> 6;
    v8 = v7-- + 1;
  }

  while (v8 > 2);
  *a1 = a2 | v6;
  return v5;
}

uint64_t _UTF2_mbsnrtowcs(int *a1, const char **a2, unint64_t a3, uint64_t a4, int *a5)
{
  v6 = a3;
  v17 = 0;
  v7 = *a2;
  if (a1)
  {
    v8 = a4;
    v10 = a1;
    if (!a3 || !a4)
    {
      if (!a4)
      {
LABEL_20:
        *a2 = v7;
        return v8;
      }

      goto LABEL_12;
    }

    if (a5[1] < 1 || *v7 < 1)
    {
LABEL_12:
      v11 = 0;
      v12 = -a4;
      while (1)
      {
        if (v6 && (v13 = *v7, v13 >= 1))
        {
          *v10 = v13;
          v14 = 1;
        }

        else
        {
          v14 = _UTF2_mbrtowc(v10, v7, v6, a5);
          switch(v14)
          {
            case -2:
              *a2 = &v7[v6];
              return -v11;
            case 0:
              *a2 = 0;
              return -v11;
            case -1:
              *a2 = v7;
              return -1;
          }
        }

        v7 += v14;
        v6 -= v14;
        ++v10;
        if (v12 == --v11)
        {
          goto LABEL_20;
        }
      }
    }

LABEL_10:
    *__error() = 92;
    return -1;
  }

  if (a3 && a5[1] >= 1 && *v7 >= 1)
  {
    goto LABEL_10;
  }

  v8 = 0;
  if (!a3)
  {
    goto LABEL_24;
  }

LABEL_22:
  if (*v7 > 0)
  {
    v15 = 1;
    goto LABEL_27;
  }

LABEL_24:
  while (1)
  {
    v15 = _UTF2_mbrtowc(&v17, v7, v6, a5);
    switch(v15)
    {
      case -2:
        return v8;
      case -1:
        return -1;
      case 0:
        return v8;
    }

LABEL_27:
    v7 += v15;
    v6 -= v15;
    ++v8;
    if (v6)
    {
      goto LABEL_22;
    }
  }
}

uint64_t _UTF2_wcsnrtombs(_BYTE *a1, unsigned int **a2, uint64_t a3, unint64_t a4, uint64_t a5)
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
            if (v11 < 4)
            {
              v14 = _UTF2_wcrtomb(path, v12, a5);
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
              v13 = _UTF2_wcrtomb(v9, v12, a5);
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
          v16 = _UTF2_wcrtomb(path, v15, a5);
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

uint64_t a64l(const char *a1)
{
  if (a1)
  {
    v1 = *a1;
    if (*a1)
    {
      v2 = 0;
      v3 = 0;
      v4 = 0;
      do
      {
        if ((v1 & 0xFE) == 0x2E)
        {
          v5 = (v1 - 46);
        }

        else if ((v1 - 48) > 9u)
        {
          if ((v1 - 65) > 0x19u)
          {
            if ((v1 - 97) > 0x19u)
            {
              goto LABEL_18;
            }

            v5 = v1 - 59;
          }

          else
          {
            v5 = v1 - 53;
          }
        }

        else
        {
          v5 = v1 - 46;
        }

        v4 |= v5 << v3;
        v3 += 6;
        v1 = a1[v2 + 1];
        if (v1)
        {
          v6 = v2 >= 5;
        }

        else
        {
          v6 = 1;
        }

        ++v2;
      }

      while (!v6);
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_18:
    *__error() = 22;
    return -1;
  }
}

lldiv_t div(uint64_t __x, uint64_t __y)
{
  if (__x >= 0 && __x % __y < 0)
  {
    v2 = __y;
  }

  else
  {
    v2 = 0;
  }

  v3 = (__x / __y + (__x >= 0 && __x % __y < 0)) | ((__x % __y - v2) << 32);
  result.rem = __y;
  result.quot = v3;
  return result;
}

_BYTE *_getenvp(_BYTE *a1, char **a2)
{
  os_unfair_lock_lock_with_options();
  v4 = __findenv_locked(a1, &v6, *a2);
  os_unfair_lock_unlock(&__environ_lock_obj);
  return v4;
}

void *getenv_copy_np(_BYTE *a1)
{
  os_unfair_lock_lock_with_options();
  v2 = _NSGetEnviron();
  v3 = __findenv_locked(a1, &v13, *v2);
  if (v3)
  {
    v6 = j__strsignal_r(v3, v4, v5);
    os_unfair_lock_unlock(&__environ_lock_obj);
    v7 = 0;
    v8 = 6;
    while (--v8)
    {
      v9 = v6 - ((v6 + 1) & 0xF) + 17;
      v7 = reallocf(v7, v9);
      if (!v7)
      {
        return v7;
      }

      os_unfair_lock_lock_with_options();
      v10 = _NSGetEnviron();
      v11 = __findenv_locked(a1, &v13, *v10);
      if (!v11)
      {
        goto LABEL_8;
      }

      v6 = MEMORY[0x193AD6A30](v7, v11, v9);
      os_unfair_lock_unlock(&__environ_lock_obj);
      if (v6 < v9)
      {
        return v7;
      }
    }

    v7 = 0;
    *__error() = 35;
  }

  else
  {
LABEL_8:
    os_unfair_lock_unlock(&__environ_lock_obj);
    return 0;
  }

  return v7;
}

int getopt(int a1, char *const a2[], const char *a3)
{
  if (!optreset)
  {
    v9 = *getopt_place[0];
    if (*getopt_place[0])
    {
      v7 = ++getopt_place[0];
      optopt = v9;
LABEL_12:
      if (v9 == 58)
      {
        goto LABEL_21;
      }

      goto LABEL_16;
    }
  }

  optreset = 0;
  if (optind < a1 && (v6 = a2[optind], *v6 == 45))
  {
    v7 = v6 + 2;
    getopt_place[0] = v6 + 2;
    v8 = v6[1];
    v9 = v8;
    optopt = v8;
    if (v8)
    {
      if (v8 != 45)
      {
        goto LABEL_12;
      }

      if (*v7)
      {
        v9 = 45;
        goto LABEL_16;
      }

      ++optind;
      getopt_place[0] = &EMSG;
    }

    else
    {
      getopt_place[0] = &EMSG;
      v9 = 45;
      j__strmode(a3, 0x2D);
      if (v10)
      {
        optopt = 45;
        v7 = &EMSG;
LABEL_16:
        j__strmode(a3, v9);
        if (v11)
        {
          if (*(v11 + 1) == 58)
          {
            if (!*v7)
            {
              if (*(v11 + 2) == 58)
              {
                v7 = 0;
              }

              else
              {
                v12 = optind;
                v13 = optind + 1;
                optind = v13;
                if (v13 >= a1)
                {
                  optind = v12 + 2;
                  optarg = 0;
                  getopt_place[0] = &EMSG;
                  if (*a3 == 58)
                  {
                    LODWORD(v9) = 58;
                    return v9;
                  }

                  if (opterr)
                  {
                    fprintf(__stderrp, "%s: option requires an argument -- %c\n");
                  }

                  goto LABEL_26;
                }

                v7 = a2[v13];
              }
            }

            optarg = v7;
            getopt_place[0] = &EMSG;
          }

          else
          {
            optarg = 0;
            if (*v7)
            {
              return v9;
            }
          }

          ++optind;
          return v9;
        }

LABEL_21:
        if (!*v7)
        {
          ++optind;
        }

        if (opterr && *a3 != 58)
        {
          fprintf(__stderrp, "%s: illegal option -- %c\n");
        }

LABEL_26:
        LODWORD(v9) = 63;
        return v9;
      }
    }
  }

  else
  {
    getopt_place[0] = &EMSG;
  }

  LODWORD(v9) = -1;
  return v9;
}

uint64_t permute_args(uint64_t result, int a2, int a3, uint64_t a4)
{
  v4 = (a2 - result) % (a3 - a2);
  if (v4)
  {
    v5 = a3 - a2;
    do
    {
      v6 = v4;
      v4 = v5 % v4;
      v5 = v6;
    }

    while (v4);
  }

  else
  {
    v6 = a3 - a2;
  }

  if (v6 >= 1)
  {
    v7 = 0;
    v8 = result - a2;
    v9 = v6;
    v10 = (a3 - result) / v6;
    do
    {
      if (v10 >= 1)
      {
        v11 = *(a4 + 8 * (v7 + a2));
        v12 = v10;
        v13 = v7 + a2;
        do
        {
          if (v13 >= a2)
          {
            v14 = v8;
          }

          else
          {
            v14 = a3 - a2;
          }

          v13 += v14;
          result = *(a4 + 8 * v13);
          *(a4 + 8 * v13) = v11;
          *(a4 + 8 * (v7 + a2)) = result;
          v11 = result;
          --v12;
        }

        while (v12);
      }

      ++v7;
    }

    while (v7 != v9);
  }

  return result;
}

uint64_t parse_long_options(uint64_t a1, _BYTE *a2, const char **a3, int *a4, int a5, char a6)
{
  v11 = place;
  if (dash_prefix > 2)
  {
    v12 = "";
  }

  else
  {
    v12 = off_1E727A218[dash_prefix];
  }

  v47 = v12;
  v13 = optind++;
  v14 = optind;
  j__strmode(place, 0x3D);
  v44 = a1;
  v49 = v13;
  v43 = v14;
  if (v15)
  {
    v20 = v15 - v11;
    v21 = (v15 + 1);
  }

  else
  {
    v20 = j__strsignal_r(v11, v16, v17);
    v21 = 0;
  }

  v22 = *a3;
  if (!*a3)
  {
LABEL_32:
    if (a5)
    {
      optind = v49;
      return 0xFFFFFFFFLL;
    }

    if (opterr && *a2 != 58)
    {
    }

LABEL_40:
    optopt = 0;
    return 63;
  }

  v45 = v21;
  v46 = a4;
  v48 = a2;
  v23 = 0;
  if (a5)
  {
    v24 = v20 == 1;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;
  v26 = a3 + 4;
  v27 = -1;
  v28 = 1;
LABEL_15:
  v29 = &v26[4 * v23];
  do
  {
    if (!j__strsvisx(v11, v22, v20, v18, v19))
    {
      if (j__strsignal_r(v22, v30, v31) == v20)
      {
        v27 = v23;
        a2 = v48;
        v35 = v45;
        v34 = v46;
        goto LABEL_42;
      }

      if ((v25 & 1) == 0)
      {
        if (v27 == -1)
        {
          v27 = v23;
        }

        else if ((a6 & 4) != 0 || (v32 = &a3[4 * v27], *(v29 - 6) != *(v32 + 2)) || *(v29 - 2) != v32[2] || *(v29 - 2) != *(v32 + 6))
        {
          v28 = 0;
          ++v23;
          v22 = *v29;
          v26 = a3 + 4;
          if (*v29)
          {
            goto LABEL_15;
          }

          goto LABEL_34;
        }
      }
    }

    ++v23;
    v33 = *v29;
    v29 += 4;
    v22 = v33;
  }

  while (v33);
  if ((v28 & 1) == 0)
  {
LABEL_34:
    if (opterr)
    {
      if (*v48 != 58)
      {
      }
    }

    goto LABEL_40;
  }

  a2 = v48;
  v35 = v45;
  v34 = v46;
  if (v27 == -1)
  {
    goto LABEL_32;
  }

LABEL_42:
  v37 = &a3[4 * v27];
  v38 = *(v37 + 2);
  if (v38)
  {
    v39 = 1;
  }

  else
  {
    v39 = v35 == 0;
  }

  if (!v39)
  {
    if (opterr && *a2 != 58)
    {
    }

    if (v37[2])
    {
      v40 = 0;
    }

    else
    {
      v40 = *(v37 + 6);
    }

    optopt = v40;
    return 63;
  }

  if ((v38 - 1) > 1)
  {
    goto LABEL_68;
  }

  if (v35)
  {
    optarg = v35;
  }

  else
  {
    if (v38 != 1)
    {
      goto LABEL_68;
    }

    optind = v49 + 2;
    optarg = *(v44 + 8 * v43);
    v38 = *(v37 + 2);
  }

  if (v38 == 1 && !optarg)
  {
    if (opterr && *a2 != 58)
    {
    }

    if (v37[2])
    {
      v41 = 0;
    }

    else
    {
      v41 = *(v37 + 6);
    }

    optopt = v41;
    --optind;
    if (*a2 == 58)
    {
      return 58;
    }

    else
    {
      return 63;
    }
  }

LABEL_68:
  if (v34)
  {
    *v34 = v27;
  }

  v42 = v37[2];
  result = *(v37 + 6);
  if (v42)
  {
    *v42 = result;
    return 0;
  }

  return result;
}

int getsubopt(char **a1, char *const *a2, char **a3)
{
  *a3 = 0;
  suboptarg = 0;
  if (!a1)
  {
    goto LABEL_25;
  }

  v4 = *a1;
  if (!*a1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v5 = *v4;
    if (v5 <= 0x1F)
    {
      break;
    }

    if (v5 != 44 && v5 != 32)
    {
      goto LABEL_11;
    }

LABEL_8:
    ++v4;
  }

  if (v5 == 9)
  {
    goto LABEL_8;
  }

  if (!*v4)
  {
    *a1 = v4;
    goto LABEL_25;
  }

LABEL_11:
  suboptarg = v4;
  v6 = v4 + 1;
  do
  {
    while (1)
    {
      v8 = *v6++;
      v7 = v8;
      if (v8 <= 31)
      {
        break;
      }

      if (v7 == 32 || v7 == 44)
      {
        goto LABEL_19;
      }

      if (v7 == 61)
      {
        *(v6 - 1) = 0;
        *a3 = v6;
        for (i = v6; ; ++i)
        {
          v15 = *i;
          if (v15 > 0x1F)
          {
            if (v15 == 32 || v15 == 44)
            {
              goto LABEL_34;
            }
          }

          else
          {
            if (!*i)
            {
              goto LABEL_36;
            }

            if (v15 == 9)
            {
LABEL_34:
              v6 = i + 1;
              goto LABEL_35;
            }
          }
        }
      }
    }

    if (!v7)
    {
      i = v6 - 1;
      goto LABEL_21;
    }
  }

  while (v7 != 9);
LABEL_19:
  i = v6 - 1;
LABEL_35:
  *i = 0;
  i = v6;
LABEL_36:
  while (1)
  {
    v16 = *i;
    v17 = v16 > 0x2C;
    v18 = (1 << v16) & 0x100100000200;
    if (v17 || v18 == 0)
    {
      break;
    }

    ++i;
  }

LABEL_21:
  *a1 = i;
  v9 = *a2;
  if (!*a2)
  {
LABEL_25:
    LODWORD(v10) = -1;
    return v10;
  }

  v10 = 0;
  v11 = suboptarg;
  v12 = a2 + 1;
  while (j__strncasecmp_l(v11, v9, a3, v3))
  {
    v9 = v12[v10++];
    if (!v9)
    {
      goto LABEL_25;
    }
  }

  return v10;
}

int hcreate(size_t a1)
{
  if (htable)
  {
    v1 = __error();
    result = 0;
    v3 = 22;
LABEL_3:
    *v1 = v3;
    return result;
  }

  v4 = 16;
  if (a1 > 0x10)
  {
    v4 = a1;
  }

  if (v4 >= 0x400000000000000)
  {
    v4 = 0x400000000000000;
  }

  if ((v4 & (v4 - 1)) != 0)
  {
    v5 = -1;
    do
    {
      ++v5;
      v6 = v4 > 1;
      v4 >>= 1;
    }

    while (v6);
    v4 = 2 << v5;
  }

  htablesize = v4;
  htable = malloc_type_malloc(8 * v4, 0x2004093837F09uLL);
  if (!htable)
  {
    v1 = __error();
    result = 0;
    v3 = 12;
    goto LABEL_3;
  }

  if (htablesize)
  {
    MEMORY[0x193AD5FD0]();
  }

  return 1;
}

void hdestroy_0(void)
{
  v0 = htable;
  if (htable)
  {
    v1 = htablesize;
    if (htablesize)
    {
      v2 = 0;
      do
      {
        v3 = v0[v2];
        if (v3)
        {
          do
          {
            v4 = v3[1];
            v0[v2] = *v3;
            free(v4);
            free(v3);
            v3 = v0[v2];
          }

          while (v3);
          v1 = htablesize;
        }

        ++v2;
      }

      while (v2 < v1);
    }

    free(v0);
    htable = 0;
  }
}

ENTRY *__cdecl hsearch(ENTRY a1, ACTION a2)
{
  data = a1.data;
  key = a1.key;
  v5 = j__strsignal_r(a1.key, a1.data, *&a2);
  v8 = (htable + 8 * ((htablesize - 1) & (__default_hash[0])(key, v5)));
  v9 = v8;
  while (1)
  {
    v9 = *v9;
    if (!v9)
    {
      break;
    }

    if (!j__strncasecmp_l(v9[1], key, v6, v7))
    {
      return (v9 + 1);
    }
  }

  if (a2 == FIND)
  {
    return 0;
  }

  result = malloc_type_malloc(0x18uLL, 0xB00404D7CA56CuLL);
  if (result)
  {
    v11 = result;
    result->data = key;
    result = (result + 8);
    v11[1].key = data;
    v11->key = *v8;
    *v8 = v11;
  }

  return result;
}

intmax_t imaxabs(intmax_t j)
{
  if (j < 0)
  {
    return -j;
  }

  return j;
}

imaxdiv_t imaxdiv(intmax_t __numer, intmax_t __denom)
{
  v2 = __numer / __denom;
  v3 = (__numer >= 0) & (__numer % __denom < 0);
  if (__numer >= 0 && __numer % __denom < 0)
  {
    v4 = __denom;
  }

  else
  {
    v4 = 0;
  }

  v5 = __numer % __denom - v4;
  v6 = v2 + v3;
  result.rem = v5;
  result.quot = v6;
  return result;
}

void insque(void *a1, void *a2)
{
  if (a2)
  {
    v2 = *a2;
    if (*a2)
    {
      *(v2 + 8) = a1;
    }

    *a2 = a1;
    *a1 = v2;
    *(a1 + 1) = a2;
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
  }
}

uint64_t labs(uint64_t result)
{
  if (result < 0)
  {
    return -result;
  }

  return result;
}

uint64_t llabs(uint64_t result)
{
  if (result < 0)
  {
    return -result;
  }

  return result;
}

lldiv_t lldiv(uint64_t a1, uint64_t a2)
{
  v2 = a1 / a2;
  v3 = (a1 >= 0) & (a1 % a2 < 0);
  if (a1 >= 0 && a1 % a2 < 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v5 = a1 % a2 - v4;
  v6 = v2 + v3;
  result.rem = v5;
  result.quot = v6;
  return result;
}

void *__cdecl lsearch(const void *a1, void *a2, size_t *a3, size_t a4, int (__cdecl *a5)(const void *, const void *))
{
  v8 = *a3 * a4;
  v9 = a2 + v8;
  if (v8 < 1)
  {
LABEL_5:
    j__mkdtempat_np(v9, a1);
    ++*a3;
    return v9;
  }

  else
  {
    v11 = a2;
    while ((a5)(a1, v11))
    {
      v11 += a4;
      if (v11 >= v9)
      {
        goto LABEL_5;
      }
    }
  }

  return v11;
}

void *__cdecl lfind(const void *a1, const void *a2, size_t *a3, size_t a4, int (__cdecl *a5)(const void *, const void *))
{
  v5 = *a3 * a4;
  if (v5 < 1)
  {
    return 0;
  }

  v8 = a2;
  v10 = a2 + v5;
  while ((a5)(a1, v8))
  {
    v8 += a4;
    if (v8 >= v10)
    {
      return 0;
    }
  }

  return v8;
}

int mergesort(void *__base, size_t __nel, size_t __width, int (__cdecl *__compar)(const void *, const void *))
{
  if (__width <= 3)
  {
    *__error() = 22;
    return -1;
  }

  if (!__nel)
  {
    return 0;
  }

  v7 = __width;
  v81 = __width * __nel;
  v8 = malloc_type_malloc(__width * __nel + 8, 0x10040436913F5uLL);
  if (!v8)
  {
    return -1;
  }

  v9 = v8;
  v98 = v7;
  if (__nel > 5)
  {
    v10 = __nel & 1 | 4;
    v11 = (__nel - v10) * v7;
    v12 = __base + v11;
    insertionsort(__base + v11, v10, v7, __compar);
    *(&v9[v11 + 7] & 0xFFFFFFFFFFFFFFF8) = &v9[v81];
    v13 = (__compar)(__base, __base + v7);
    if (v11 < 1)
    {
      goto LABEL_42;
    }

    v14 = 2 * v7;
    v15 = v13 > 0;
    v93 = -v7;
    v95 = __base + v11;
    v16 = v9;
    v17 = __base;
    v89 = 3 * v7;
    v91 = -2 * v7;
    while (1)
    {
      v18 = &v17[v14];
      if (&v17[v14] < v12)
      {
        v19 = &v17[v89];
        v20 = 2;
        v21 = &v17[v14];
        do
        {
          if ((v15 & 1) == (__compar)(v21, v19) < 1)
          {
            break;
          }

          v20 += 2;
          v21 += v14;
          v19 += v14;
        }

        while (v21 < v95);
        if (v20 > 0xF)
        {
          v27 = __compar;
          v7 = v98;
          v28 = v91;
          if (v18 >= v21)
          {
LABEL_32:
            __compar = v27;
            v12 = v95;
            if (v15)
            {
              v33 = &v18[v93];
              v34 = v17 + 1;
              v35 = v98;
              while (1)
              {
                v36 = *(v34 - 1);
                *(v34 - 1) = *v33;
                *v33++ = v36;
                if (!--v35)
                {
                  v33 += v28;
                  v35 = v98;
                  if (v34 >= v33)
                  {
                    break;
                  }
                }

                ++v34;
              }
            }

            if (v18 < v95 || (v37 = (v27)(&v18[v93], v18), v22 = &v9[v81], v37 >= 1))
            {
              v22 = &v9[v18 - __base];
            }

            *((v16 + 7) & 0xFFFFFFFFFFFFFFF8) = v22;
            v17 = v18;
            goto LABEL_41;
          }

          while (2)
          {
            v29 = &v18[v93];
            if (((v15 ^ ((v27)(&v18[v93], v18) < 1)) & 1) == 0)
            {
              *((v16 + 7) & 0xFFFFFFFFFFFFFFF8) = &v9[v18 - __base];
              if (v15)
              {
                v30 = v17 + 1;
                v31 = v98;
                v28 = v91;
                while (1)
                {
                  v32 = *(v30 - 1);
                  *(v30 - 1) = *v29;
                  *v29++ = v32;
                  if (!--v31)
                  {
                    v29 += v91;
                    v31 = v98;
                    if (v30 >= v29)
                    {
                      break;
                    }
                  }

                  ++v30;
                }

                v17 = v18;
                v16 = &v9[v18 - __base];
LABEL_31:
                v18 += v14;
                if (v18 >= v21)
                {
                  goto LABEL_32;
                }

                continue;
              }

              v17 = v18;
              v16 = &v9[v18 - __base];
            }

            break;
          }

          v28 = v91;
          goto LABEL_31;
        }

        v18 = v21;
        v7 = v98;
        v12 = v95;
      }

      do
      {
        v22 = &v9[&v17[v14] - __base];
        *((v16 + 7) & 0xFFFFFFFFFFFFFFF8) = v22;
        if (v15)
        {
          v23 = 0;
          v24 = &v17[v7];
          v25 = v7;
          do
          {
            v26 = v17[v23];
            v17[v23] = v24[v23];
            v24[v23++] = v26;
            --v25;
          }

          while (v25);
        }

        v17 += v14;
        v16 = v22;
      }

      while (v17 < v18);
LABEL_41:
      v15 ^= 1u;
      v16 = v22;
      if (v17 >= v12)
      {
        goto LABEL_42;
      }
    }
  }

  insertionsort(__base, __nel, v7, __compar);
  *((v9 + 7) & 0xFFFFFFFFFFFFFFF8) = &v9[v81];
LABEL_42:
  v38 = &v9[v81];
  if (*((v9 + 7) & 0xFFFFFFFFFFFFFFF8) != &v9[v81])
  {
    v96 = 0;
    v94 = (__base | v7) & 3;
    v88 = -v7;
    v39 = __base;
    v97 = __compar;
    while (1)
    {
      v40 = v9;
      v9 = v39;
      if (v40 != v38)
      {
        break;
      }

LABEL_136:
      v38 = &v9[v81];
      v39 = v40;
      if (*((v9 + 7) & 0xFFFFFFFFFFFFFFF8) == &v9[v81])
      {
        goto LABEL_139;
      }
    }

    v41 = v40;
    v42 = v39;
    v43 = v40;
    v83 = v38;
    v84 = v39;
    v82 = v40;
    while (1)
    {
      v41 = *((v41 + 7) & 0xFFFFFFFFFFFFFFF8);
      v44 = v41 - v40;
      v45 = &v9[v41 - v40];
      if (v41 == v38)
      {
        v46 = &v9[v41 - v40];
        v50 = v42;
        if (v42 < v45)
        {
          goto LABEL_127;
        }
      }

      else
      {
        v86 = v42;
        v87 = *((v41 + 7) & 0xFFFFFFFFFFFFFFF8);
        v46 = &v9[v87 - v40];
        v47 = v44 < v87 - v40;
        v48 = v42 < v45;
        v49 = v42 < v45 && v44 < v87 - v40;
        v50 = v42;
        v51 = v45;
        if (v49)
        {
          v90 = v45;
          v92 = &v9[v87 - v40];
          do
          {
            v52 = (__compar)(v50, v51);
            if (v52 >= 1)
            {
              v53 = 0;
            }

            else
            {
              v53 = -1;
            }

            if (v52 >= 1)
            {
              v54 = v46;
            }

            else
            {
              v54 = v45;
            }

            if (v52 >= 1)
            {
              v55 = v51;
            }

            else
            {
              v55 = v50;
            }

            if (v52 >= 1)
            {
              v56 = v50;
            }

            else
            {
              v56 = v51;
            }

            if (v96)
            {
LABEL_66:
              v57 = &v55[v7];
              if (&v55[v7] >= v54)
              {
LABEL_86:
                v62 = &v54[v88];
                if (&v54[v88] <= v55)
                {
                  v55 = v54;
                }

                else
                {
                  v63 = (__compar)(v56, &v54[v88]);
                  if (v63 > v53)
                  {
                    v64 = v54;
                  }

                  else
                  {
                    v64 = &v54[v88];
                  }

                  if (v63 <= v53)
                  {
                    v62 = v55;
                  }

                  v55 = v64;
                }

                while (v55 > &v62[v7])
                {
                  if ((__compar)(v56, &v62[(((v55 - v62) / v7) >> 1) * v7]) > v53)
                  {
                    v62 += (((v55 - v62) / v7) >> 1) * v7;
                  }

                  else
                  {
                    v55 = &v62[(((v55 - v62) / v7) >> 1) * v7];
                  }
                }

                v59 = 1;
              }

              else
              {
                while ((__compar)(v56, v57) > v53)
                {
                  v55 = v57;
                  v57 += 2 * v7;
                  if (v57 >= v54)
                  {
                    v7 = v98;
                    goto LABEL_86;
                  }

                  v7 *= 2;
                }

                v59 = v7 != v98;
                if (v7 > v98)
                {
                  v60 = v55;
                  v55 = v57;
                  do
                  {
                    v61 = v7 >> 1;
                    if ((v97)(v56, &v60[v7 >> 1]) > v53)
                    {
                      v60 += v7 >> 1;
                    }

                    else
                    {
                      v55 = &v60[v7 >> 1];
                    }

                    v7 >>= 1;
                  }

                  while (v61 > v98);
                  v59 = 1;
                  __compar = v97;
                }

                else
                {
                  v55 = v57;
                }

                v7 = v98;
              }
            }

            else
            {
              v58 = 6;
              while (1)
              {
                v55 += v7;
                if (v55 >= v54 || (__compar)(v56, v55) <= v53)
                {
                  break;
                }

                if (!--v58)
                {
                  goto LABEL_66;
                }
              }

              v59 = 0;
            }

            v96 = v59;
            v46 = v92;
            if (v56 == v50)
            {
              v45 = v90;
              if (v94)
              {
                do
                {
                  v71 = *v51++;
                  *v43++ = v71;
                }

                while (v51 < v55);
                v72 = v7;
                do
                {
                  v73 = *v50++;
                  *v43++ = v73;
                  --v72;
                }

                while (v72);
              }

              else
              {
                do
                {
                  v74 = *v51;
                  v51 += 4;
                  *v43 = v74;
                  v43 += 4;
                }

                while (v51 < v55);
                v75 = v7;
                do
                {
                  v76 = *v50;
                  v50 += 4;
                  *v43 = v76;
                  v43 += 4;
                  v75 -= 4;
                }

                while (v75);
              }
            }

            else
            {
              v45 = v90;
              if (v94)
              {
                do
                {
                  v65 = *v50++;
                  *v43++ = v65;
                }

                while (v50 < v55);
                v66 = v7;
                do
                {
                  v67 = *v51++;
                  *v43++ = v67;
                  --v66;
                }

                while (v66);
              }

              else
              {
                do
                {
                  v68 = *v50;
                  v50 += 4;
                  *v43 = v68;
                  v43 += 4;
                }

                while (v50 < v55);
                v69 = v7;
                do
                {
                  v70 = *v51;
                  v51 += 4;
                  *v43 = v70;
                  v43 += 4;
                  v69 -= 4;
                }

                while (v69);
              }
            }

            v47 = v51 < v92;
            v48 = v50 < v45;
          }

          while (v50 < v45 && v51 < v92);
        }

        if (v47)
        {
          if (v94)
          {
            v9 = v84;
            v40 = v82;
            v41 = v87;
            do
            {
              v77 = *v51++;
              *v43++ = v77;
            }

            while (v51 < v46);
          }

          else
          {
            v9 = v84;
            v40 = v82;
            v41 = v87;
            do
            {
              v80 = *v51;
              v51 += 4;
              *v43 = v80;
              v43 += 4;
            }

            while (v51 < v46);
          }

          v38 = v83;
          v42 = v86;
          goto LABEL_135;
        }

        v38 = v83;
        v9 = v84;
        v40 = v82;
        v42 = v86;
        v41 = v87;
        if (v48)
        {
LABEL_127:
          if (v94)
          {
            do
            {
              v78 = *v50++;
              *v43++ = v78;
            }

            while (v50 < v45);
          }

          else
          {
            do
            {
              v79 = *v50;
              v50 += 4;
              *v43 = v79;
              v43 += 4;
            }

            while (v50 < v45);
          }
        }
      }

LABEL_135:
      *((v42 + 7) & 0xFFFFFFFFFFFFFFF8) = v46;
      v42 = v46;
      if (v41 == v38)
      {
        goto LABEL_136;
      }
    }
  }

  v40 = __base;
LABEL_139:
  if (v9 == __base)
  {
    j__mkostemp(v9, v40);
  }

  else
  {
    v40 = v9;
  }

  free(v40);
  return 0;
}

uint64_t _putenvp(char *a1, char **a2, uint64_t a3)
{
  environ_lock_np();
  if (__init__env_owned_locked(1))
  {
    v6 = 0xFFFFFFFFLL;
  }

  else
  {
    if (a3)
    {
      v7 = a3;
    }

    else
    {
      v7 = __env_owned;
    }

    v6 = __setenv_locked(a1, 0, 1, 0, a2, v7);
  }

  environ_unlock_np();
  return v6;
}

int putenv(char *a1)
{
  if (!a1 || !*a1 || !j__inet_lnaof(a1))
  {
    *__error() = 22;
    return -1;
  }

  environ_lock_np();
  if (__init__env_owned_locked(1))
  {
    environ_unlock_np();
    return -1;
  }

  v3 = _NSGetEnviron();
  v4 = __setenv_locked(a1, 0, 1, 0, v3, __env_owned);
  environ_unlock_np();
  return v4;
}

int radixsort(const unsigned __int8 **__base, int __nel, const unsigned __int8 *__table, unsigned int __endbyte)
{
  if (!__table)
  {
    v5 = v42;
    if (__endbyte)
    {
      v8 = __endbyte;
      v9 = (__endbyte + 15) & 0x1FFFFFFF0;
      v10 = vdupq_n_s64(__endbyte - 1);
      v11 = xmmword_18E98B1C0;
      v12 = xmmword_18E98B1D0;
      v13 = xmmword_18E98B1E0;
      v14 = xmmword_18E98B1F0;
      v15 = xmmword_18E98B200;
      v16 = xmmword_18E98B210;
      v17 = xmmword_18E98AD10;
      v18 = &v43;
      v19 = vdupq_n_s64(1uLL);
      v4 = 16;
      v20 = xmmword_18E98AD20;
      do
      {
        v21 = vmovn_s64(vcgeq_u64(v10, v20));
        v22 = vaddq_s64(v20, v19);
        if (vuzp1_s8(vuzp1_s16(v21, *v10.i8), *v10.i8).u8[0])
        {
          *(v18 - 7) = v22.i8[0];
        }

        if (vuzp1_s8(vuzp1_s16(v21, *&v10), *&v10).i8[1])
        {
          *(v18 - 6) = v22.i8[8];
        }

        v23 = vaddq_s64(v17, v19);
        if (vuzp1_s8(vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v17))), *&v10).i8[2])
        {
          *(v18 - 5) = v23.i8[0];
          *(v18 - 4) = v23.i8[8];
        }

        v24 = vaddq_s64(v16, v19);
        v25 = vmovn_s64(vcgeq_u64(v10, v16));
        if (vuzp1_s8(*&v10, vuzp1_s16(v25, *&v10)).i32[1])
        {
          *(v18 - 3) = v24.i8[0];
        }

        if (vuzp1_s8(*&v10, vuzp1_s16(v25, *&v10)).i8[5])
        {
          *(v18 - 2) = v24.i8[8];
        }

        v26 = vaddq_s64(v15, v19);
        if (vuzp1_s8(*&v10, vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v15)))).i8[6])
        {
          *(v18 - 1) = v26.i8[0];
          *v18 = v26.i8[8];
        }

        v27 = vaddq_s64(v14, v19);
        v28 = vmovn_s64(vcgeq_u64(v10, v14));
        if (vuzp1_s8(vuzp1_s16(v28, *v10.i8), *v10.i8).u8[0])
        {
          v18[1] = v27.i8[0];
        }

        if (vuzp1_s8(vuzp1_s16(v28, *&v10), *&v10).i8[1])
        {
          v18[2] = v27.i8[8];
        }

        v29 = vaddq_s64(v13, v19);
        if (vuzp1_s8(vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v13))), *&v10).i8[2])
        {
          v18[3] = v29.i8[0];
          v18[4] = v29.i8[8];
        }

        v30 = vaddq_s64(v12, v19);
        v31 = vmovn_s64(vcgeq_u64(v10, v12));
        if (vuzp1_s8(*&v10, vuzp1_s16(v31, *&v10)).i32[1])
        {
          v18[5] = v30.i8[0];
        }

        if (vuzp1_s8(*&v10, vuzp1_s16(v31, *&v10)).i8[5])
        {
          v18[6] = v30.i8[8];
        }

        v32 = vaddq_s64(v11, v19);
        if (vuzp1_s8(*&v10, vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v11)))).i8[6])
        {
          v18[7] = v32.i8[0];
          v18[8] = v32.i8[8];
        }

        v33 = vdupq_n_s64(0x10uLL);
        v16 = vaddq_s64(v16, v33);
        v17 = vaddq_s64(v17, v33);
        v20 = vaddq_s64(v20, v33);
        v15 = vaddq_s64(v15, v33);
        v14 = vaddq_s64(v14, v33);
        v13 = vaddq_s64(v13, v33);
        v12 = vaddq_s64(v12, v33);
        v11 = vaddq_s64(v11, v33);
        v18 += 16;
        v9 -= 16;
      }

      while (v9);
      v42[__endbyte] = 0;
      if (__endbyte > 0xFE)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v8 = 0;
      v42[0] = 0;
    }

    v34 = 0;
    v35 = vdupq_n_s64(254 - v8);
    v36 = &v42[v8];
    do
    {
      v37 = vdupq_n_s64(v34);
      v38 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(v37, xmmword_18E98AD20)));
      if (vuzp1_s8(vuzp1_s16(v38, *v35.i8), *v35.i8).u8[0])
      {
        v36[v34 + 1] = v8 + v34 + 1;
      }

      if (vuzp1_s8(vuzp1_s16(v38, *&v35), *&v35).i8[1])
      {
        v36[v34 + 2] = v8 + v34 + 2;
      }

      if (vuzp1_s8(vuzp1_s16(*&v35, vmovn_s64(vcgeq_u64(v35, vorrq_s8(v37, xmmword_18E98AD10)))), *&v35).i8[2])
      {
        v36[v34 + 3] = v8 + v34 + 3;
        v36[v34 + 4] = v8 + v34 + 4;
      }

      v39 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(v37, xmmword_18E98B210)));
      if (vuzp1_s8(*&v35, vuzp1_s16(v39, *&v35)).i32[1])
      {
        v36[v34 + 5] = v8 + v34 + 5;
      }

      if (vuzp1_s8(*&v35, vuzp1_s16(v39, *&v35)).i8[5])
      {
        v36[v34 + 6] = v8 + v34 + 6;
      }

      if (vuzp1_s8(*&v35, vuzp1_s16(*&v35, vmovn_s64(vcgeq_u64(v35, vorrq_s8(v37, xmmword_18E98B200))))).i8[6])
      {
        v36[v34 + 7] = v8 + v34 + 7;
        v36[v34 + 8] = v8 + v34 + 8;
      }

      v40 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(v37, xmmword_18E98B1F0)));
      if (vuzp1_s8(vuzp1_s16(v40, *v35.i8), *v35.i8).u8[0])
      {
        v36[v34 + 9] = v8 + v34 + 9;
      }

      if (vuzp1_s8(vuzp1_s16(v40, *&v35), *&v35).i8[1])
      {
        v36[v34 + 10] = v8 + v34 + 10;
      }

      if (vuzp1_s8(vuzp1_s16(*&v35, vmovn_s64(vcgeq_u64(v35, vorrq_s8(v37, xmmword_18E98B1E0)))), *&v35).i8[2])
      {
        v36[v34 + 11] = v8 + v34 + 11;
        v36[v34 + 12] = v8 + v34 + 12;
      }

      v41 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(v37, xmmword_18E98B1D0)));
      if (vuzp1_s8(*&v35, vuzp1_s16(v41, *&v35)).i32[1])
      {
        v36[v34 + 13] = v8 + v34 + 13;
      }

      if (vuzp1_s8(*&v35, vuzp1_s16(v41, *&v35)).i8[5])
      {
        v36[v34 + 14] = v8 + v34 + 14;
      }

      if (vuzp1_s8(*&v35, vuzp1_s16(*&v35, vmovn_s64(vcgeq_u64(v35, vorrq_s8(v37, xmmword_18E98B1C0))))).i8[6])
      {
        v36[v34 + 15] = v8 + v34 + 15;
        v36[v34 + 16] = v8 + v34 + 16;
      }

      v34 += 16;
    }

    while (((270 - v8) & 0xFFFFFFFFFFFFFFF0) != v34);
LABEL_60:
    v6 = 0;
    goto LABEL_61;
  }

  v5 = __table;
  v6 = __table[__endbyte];
  if ((v6 - 1) <= 0xFD)
  {
    *__error() = 22;
    return -1;
  }

LABEL_61:
  r_sort_a(__base, *&__nel, 0, v5, v6, v4);
  return 0;
}

int sradixsort(const unsigned __int8 **__base, int __nel, const unsigned __int8 *__table, unsigned int __endbyte)
{
  v4 = *&__nel;
  if (!__table)
  {
    v6 = v57;
    if (__endbyte)
    {
      v8 = __endbyte;
      v9 = (__endbyte + 15) & 0x1FFFFFFF0;
      v10 = vdupq_n_s64(__endbyte - 1);
      v11 = xmmword_18E98B1C0;
      v12 = xmmword_18E98B1D0;
      v13 = xmmword_18E98B1E0;
      v14 = xmmword_18E98B1F0;
      v15 = xmmword_18E98B200;
      v16 = xmmword_18E98B210;
      v17 = xmmword_18E98AD10;
      v18 = &v58;
      v19 = vdupq_n_s64(1uLL);
      v20 = xmmword_18E98AD20;
      do
      {
        v21 = vmovn_s64(vcgeq_u64(v10, v20));
        v22 = vaddq_s64(v20, v19);
        if (vuzp1_s8(vuzp1_s16(v21, *v10.i8), *v10.i8).u8[0])
        {
          *(v18 - 7) = v22.i8[0];
        }

        if (vuzp1_s8(vuzp1_s16(v21, *&v10), *&v10).i8[1])
        {
          *(v18 - 6) = v22.i8[8];
        }

        v23 = vaddq_s64(v17, v19);
        if (vuzp1_s8(vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v17))), *&v10).i8[2])
        {
          *(v18 - 5) = v23.i8[0];
          *(v18 - 4) = v23.i8[8];
        }

        v24 = vaddq_s64(v16, v19);
        v25 = vmovn_s64(vcgeq_u64(v10, v16));
        if (vuzp1_s8(*&v10, vuzp1_s16(v25, *&v10)).i32[1])
        {
          *(v18 - 3) = v24.i8[0];
        }

        if (vuzp1_s8(*&v10, vuzp1_s16(v25, *&v10)).i8[5])
        {
          *(v18 - 2) = v24.i8[8];
        }

        v26 = vaddq_s64(v15, v19);
        if (vuzp1_s8(*&v10, vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v15)))).i8[6])
        {
          *(v18 - 1) = v26.i8[0];
          *v18 = v26.i8[8];
        }

        v27 = vaddq_s64(v14, v19);
        v28 = vmovn_s64(vcgeq_u64(v10, v14));
        if (vuzp1_s8(vuzp1_s16(v28, *v10.i8), *v10.i8).u8[0])
        {
          v18[1] = v27.i8[0];
        }

        if (vuzp1_s8(vuzp1_s16(v28, *&v10), *&v10).i8[1])
        {
          v18[2] = v27.i8[8];
        }

        v29 = vaddq_s64(v13, v19);
        if (vuzp1_s8(vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v13))), *&v10).i8[2])
        {
          v18[3] = v29.i8[0];
          v18[4] = v29.i8[8];
        }

        v30 = vaddq_s64(v12, v19);
        v31 = vmovn_s64(vcgeq_u64(v10, v12));
        if (vuzp1_s8(*&v10, vuzp1_s16(v31, *&v10)).i32[1])
        {
          v18[5] = v30.i8[0];
        }

        if (vuzp1_s8(*&v10, vuzp1_s16(v31, *&v10)).i8[5])
        {
          v18[6] = v30.i8[8];
        }

        v32 = vaddq_s64(v11, v19);
        if (vuzp1_s8(*&v10, vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v11)))).i8[6])
        {
          v18[7] = v32.i8[0];
          v18[8] = v32.i8[8];
        }

        v33 = vdupq_n_s64(0x10uLL);
        v16 = vaddq_s64(v16, v33);
        v17 = vaddq_s64(v17, v33);
        v20 = vaddq_s64(v20, v33);
        v15 = vaddq_s64(v15, v33);
        v14 = vaddq_s64(v14, v33);
        v13 = vaddq_s64(v13, v33);
        v12 = vaddq_s64(v12, v33);
        v11 = vaddq_s64(v11, v33);
        v18 += 16;
        v9 -= 16;
      }

      while (v9);
      v57[__endbyte] = 0;
      if (__endbyte > 0xFE)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v8 = 0;
      v57[0] = 0;
    }

    v34 = 0;
    v35 = vdupq_n_s64(254 - v8);
    v36 = &v57[v8];
    do
    {
      v37 = vdupq_n_s64(v34);
      v38 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(v37, xmmword_18E98AD20)));
      if (vuzp1_s8(vuzp1_s16(v38, *v35.i8), *v35.i8).u8[0])
      {
        v36[v34 + 1] = v8 + v34 + 1;
      }

      if (vuzp1_s8(vuzp1_s16(v38, *&v35), *&v35).i8[1])
      {
        v36[v34 + 2] = v8 + v34 + 2;
      }

      if (vuzp1_s8(vuzp1_s16(*&v35, vmovn_s64(vcgeq_u64(v35, vorrq_s8(v37, xmmword_18E98AD10)))), *&v35).i8[2])
      {
        v36[v34 + 3] = v8 + v34 + 3;
        v36[v34 + 4] = v8 + v34 + 4;
      }

      v39 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(v37, xmmword_18E98B210)));
      if (vuzp1_s8(*&v35, vuzp1_s16(v39, *&v35)).i32[1])
      {
        v36[v34 + 5] = v8 + v34 + 5;
      }

      if (vuzp1_s8(*&v35, vuzp1_s16(v39, *&v35)).i8[5])
      {
        v36[v34 + 6] = v8 + v34 + 6;
      }

      if (vuzp1_s8(*&v35, vuzp1_s16(*&v35, vmovn_s64(vcgeq_u64(v35, vorrq_s8(v37, xmmword_18E98B200))))).i8[6])
      {
        v36[v34 + 7] = v8 + v34 + 7;
        v36[v34 + 8] = v8 + v34 + 8;
      }

      v40 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(v37, xmmword_18E98B1F0)));
      if (vuzp1_s8(vuzp1_s16(v40, *v35.i8), *v35.i8).u8[0])
      {
        v36[v34 + 9] = v8 + v34 + 9;
      }

      if (vuzp1_s8(vuzp1_s16(v40, *&v35), *&v35).i8[1])
      {
        v36[v34 + 10] = v8 + v34 + 10;
      }

      if (vuzp1_s8(vuzp1_s16(*&v35, vmovn_s64(vcgeq_u64(v35, vorrq_s8(v37, xmmword_18E98B1E0)))), *&v35).i8[2])
      {
        v36[v34 + 11] = v8 + v34 + 11;
        v36[v34 + 12] = v8 + v34 + 12;
      }

      v41 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(v37, xmmword_18E98B1D0)));
      if (vuzp1_s8(*&v35, vuzp1_s16(v41, *&v35)).i32[1])
      {
        v36[v34 + 13] = v8 + v34 + 13;
      }

      if (vuzp1_s8(*&v35, vuzp1_s16(v41, *&v35)).i8[5])
      {
        v36[v34 + 14] = v8 + v34 + 14;
      }

      if (vuzp1_s8(*&v35, vuzp1_s16(*&v35, vmovn_s64(vcgeq_u64(v35, vorrq_s8(v37, xmmword_18E98B1C0))))).i8[6])
      {
        v36[v34 + 15] = v8 + v34 + 15;
        v36[v34 + 16] = v8 + v34 + 16;
      }

      v34 += 16;
    }

    while (((270 - v8) & 0xFFFFFFFFFFFFFFF0) != v34);
LABEL_60:
    v7 = 0;
LABEL_61:
    if (__nel > 19)
    {
      v54 = malloc_type_malloc(8 * __nel, 0x80040B8603338uLL);
      if (!v54)
      {
        return -1;
      }

      v55 = v54;
      r_sort_b(__base, v54, v4, 0, v6, v7);
      free(v55);
    }

    else if (__nel >= 2)
    {
      v42 = __base;
      do
      {
        if (++v42 > __base)
        {
          v43 = *v42;
          v44 = (*v42 + 1);
          v45 = v42;
          v46 = v42;
          do
          {
            v48 = *(v46 - 8);
            v46 -= 8;
            v47 = v48;
            v49 = v6[*v43];
            if (v7 == v49)
            {
              v50 = v47;
            }

            else
            {
              v51 = v44;
              v50 = v47;
              do
              {
                if (v49 != v6[*v50])
                {
                  break;
                }

                ++v50;
                v52 = *v51++;
                v49 = v6[v52];
              }

              while (v7 != v49);
            }

            if (v49 >= v6[*v50])
            {
              break;
            }

            *(v45 - 1) = v43;
            *v45 = v47;
            v45 = v46;
          }

          while (v46 > __base);
        }

        v53 = v4 <= 2;
        LODWORD(v4) = v4 - 1;
      }

      while (!v53);
    }

    return 0;
  }

  v6 = __table;
  v7 = __table[__endbyte];
  if ((v7 - 1) > 0xFD)
  {
    goto LABEL_61;
  }

  *__error() = 22;
  return -1;
}

void *r_sort_count_allocate()
{
  r_sort_a_count = malloc_type_calloc(0x100uLL, 4uLL, 0x100004052888210uLL);
  result = malloc_type_calloc(0x100uLL, 4uLL, 0x100004052888210uLL);
  r_sort_b_count = result;
  return result;
}

void srandom(unsigned int a1)
{
  v1 = state;
  *state = a1;
  if (!rand_type)
  {
    v6 = 50;
    do
    {
LABEL_10:
      random();
      --v6;
    }

    while (v6);
    return;
  }

  v2 = rand_deg;
  if (rand_deg > 1)
  {
    v3 = v1 + 1;
    v4 = *v1;
    v5 = rand_deg - 1;
    do
    {
      if (!v4)
      {
        v4 = 123459876;
      }

      v4 = -2147483647 * (v4 / 127773) + 16807 * v4 + (-2147483647 * (v4 / 127773) + 16807 * v4 < 0 ? 0x7FFFFFFF : 0);
      *v3++ = v4;
      --v5;
    }

    while (v5);
  }

  fptr = &v1[rand_sep];
  rptr[0] = v1;
  if (v2 >= 1)
  {
    v6 = 10 * v2;
    goto LABEL_10;
  }
}

void srandomdev(void)
{
  v0 = rand_type;
  v1 = rand_deg;
  if ((open_NOCANCEL() & 0x80000000) != 0 || (v0 ? (v2 = 4 * v1) : (v2 = 4), NOCANCEL = read_NOCANCEL(), close_NOCANCEL(), NOCANCEL != v2))
  {
    v5.tv_sec = 0;
    *&v5.tv_usec = 0;
    gettimeofday(&v5, 0);
    v4 = getpid();
    srandom(LODWORD(v5.tv_sec) ^ (v4 << 16) ^ v5.tv_usec);
  }

  else if (rand_type)
  {
    fptr = &state[rand_sep];
    rptr[0] = state;
  }
}

char *__cdecl initstate(unsigned int a1, char *a2, size_t a3)
{
  v5 = (state - 1);
  if (rand_type)
  {
    v6 = 5 * ((rptr[0] - state) >> 2) + rand_type;
  }

  else
  {
    v6 = 0;
  }

  *v5 = v6;
  if (a3 > 7)
  {
    if (a3 >= 0x20)
    {
      v9 = 3;
      if (a3 >= 0x40)
      {
        if (a3 < 0x100)
        {
          v11 = 3;
        }

        else
        {
          v11 = 4;
        }

        v12 = 63;
        if (a3 >= 0x100)
        {
          v13 = 63;
        }

        else
        {
          v13 = 31;
        }

        if (a3 >= 0x100)
        {
          v9 = 1;
        }

        else
        {
          v9 = 3;
        }

        if (a3 < 0x100)
        {
          v12 = 31;
        }

        if (a3 >= 0x80)
        {
          v7 = v11;
        }

        else
        {
          v7 = 2;
        }

        if (a3 >= 0x80)
        {
          v8 = v13;
        }

        else
        {
          v8 = 15;
        }

        if (a3 >= 0x80)
        {
          v10 = v12;
        }

        else
        {
          v9 = 1;
          v10 = 15;
        }
      }

      else
      {
        v8 = 7;
        v7 = 1;
        v10 = 7;
      }
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
    }

    rand_type = v7;
    rand_deg = v8;
    rand_sep = v9;
    state = (a2 + 4);
    end_ptr = &a2[4 * v10 + 4];
    srandom(a1);
    if (a3 >= 0x20)
    {
      v14 = 5 * ((rptr[0] - (a2 + 4)) >> 2) + v7;
    }

    else
    {
      v14 = 0;
    }

    *a2 = v14;
  }

  else
  {
    fprintf(__stderrp, "random: not enough state (%ld bytes); ignored.\n", a3);
    return 0;
  }

  return v5;
}

char *__cdecl setstate(const char *a1)
{
  v2 = *a1 / 5u;
  v3 = *a1 % 5u;
  result = (state - 1);
  if (rand_type)
  {
    v5 = 5 * ((rptr[0] - state) >> 2) + rand_type;
  }

  else
  {
    v5 = 0;
  }

  *result = v5;
  rand_type = v3;
  v6 = degrees[v3];
  rand_deg = degrees[v3];
  v7 = seps[v3];
  rand_sep = v7;
  v8 = (a1 + 4);
  state = v8;
  if (v3)
  {
    rptr[0] = &v8[v2];
    fptr = &v8[(v7 + v2) % v6];
  }

  end_ptr = &v8[v6];
  return result;
}

char *__cdecl realpath(const char *a1, char *a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v83 = 0u;
  v82 = 0u;
  v81 = 0u;
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  v77 = 0u;
  v76 = 0u;
  v75 = 0u;
  v74 = 0u;
  v73 = 0u;
  v72 = 0u;
  v71 = 0u;
  v70 = 0u;
  v69 = 0u;
  v68 = 0u;
  v67 = 0u;
  v66 = 0u;
  v65 = 0u;
  v64 = 0u;
  v63 = 0u;
  v62 = 0u;
  v61 = 0u;
  v60 = 0u;
  v59 = 0u;
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  memset(&v45, 0, sizeof(v45));
  memset(&v47, 0, 512);
  if (!v2)
  {
    v13 = __error();
    v6 = 0;
    v14 = 22;
LABEL_14:
    *v13 = v14;
    return v6;
  }

  v4 = v2;
  if (!*v2)
  {
    v13 = __error();
    v6 = 0;
    v14 = 2;
    goto LABEL_14;
  }

  v5 = v3;
  v6 = v3;
  if (!v3)
  {
    v6 = malloc_type_malloc(0x400uLL, 0x4A14BC86uLL);
    if (!v6)
    {
      return v6;
    }
  }

  if ((realpath_rootdev_inited & 1) == 0)
  {
    realpath_rootdev_inited = 1;
    if (stat("/", &v45) < 0)
    {
      goto LABEL_90;
    }

    realpath_rootdev = v45.st_dev;
  }

  __error();
  if (*v4 == 47)
  {
    *v6 = 47;
    v8 = v4[1];
    v7 = v4 + 1;
    if (!v8)
    {
      return v6;
    }

    v9 = MEMORY[0x193AD6A30](v51, v7, 1024);
    if (v9 >= 0x400)
    {
      goto LABEL_87;
    }

    v10 = v9;
    v11 = &realpath_rootdev;
    v12 = 1;
  }

  else
  {
    if (!__private_getcwd(v6, 1024, 0))
    {
      *v6 = 46;
      goto LABEL_90;
    }

    v12 = j__strsignal_r(v6, v16, v17);
    v18 = MEMORY[0x193AD6A30](v51, v4, 1024);
    if (v18 > 0x3FF || v12 > 0x3FF)
    {
      goto LABEL_87;
    }

    v10 = v18;
    if (v12 < 2)
    {
      v11 = &realpath_rootdev;
    }

    else
    {
      v11 = &v45;
      if (stat(v6, &v45) < 0)
      {
        goto LABEL_90;
      }
    }
  }

  if (!v10)
  {
LABEL_84:
    if (v12 >= 2 && v6[v12 - 1] == 47)
    {
      v6[v12 - 1] = 0;
    }

    return v6;
  }

  v42 = 0;
  v43 = 0;
  LODWORD(v19) = 0;
  st_dev = v11->st_dev;
  while (2)
  {
    v44 = v19;
    v19 = st_dev;
    while (1)
    {
      v21 = v19;
      j__strmode(v51, 0x2F);
      v23 = v22;
      v24 = v22 - v51;
      if (v22)
      {
        v25 = v22 - v51;
      }

      else
      {
        v25 = v10;
      }

      j__mkdtempat_np(&v49, v51);
      *(&v49 + v25) = 0;
      if (v23)
      {
        j__mkostemp(v51, v23 + 1);
        v10 += ~v24;
      }

      else
      {
        v10 = 0;
        v51[0] = 0;
      }

      v19 = v21;
      if (v6[v12 - 1] != 47)
      {
        if (v12 + 1 >= 0x400)
        {
          goto LABEL_87;
        }

        v6[v12] = 47;
        v6[++v12] = 0;
      }

      if (!v49 || v49 == 46)
      {
        goto LABEL_41;
      }

      if (v49 ^ 0x2E2E | v50)
      {
        break;
      }

      if (v12 >= 2)
      {
        v6[v12 - 1] = 0;
        v26 = strrchr(v6, 47);
        v26[1] = 0;
        v12 = v26 + 1 - v6;
      }

LABEL_41:
      if (!v10)
      {
        goto LABEL_84;
      }
    }

    v27 = MEMORY[0x193AD6A20](v6, &v49, 1024);
    if (v27 >= 0x400)
    {
      goto LABEL_87;
    }

    v28 = v27;
    if (!getattrlist(v6, &_rp_alist, &v52, 0x41CuLL, 1u))
    {
      v30 = 0;
      v31 = HIDWORD(v52);
      HIDWORD(v42) = v53 == 5;
      st_ino = DWORD1(v53);
      goto LABEL_52;
    }

    if (*__error() != 45 && *__error() != 22)
    {
      goto LABEL_90;
    }

    v29 = lstat(v6, &v45);
    if (!v29)
    {
      HIDWORD(v42) = (v45.st_mode & 0xF000) == 40960;
      v31 = v45.st_dev;
      v30 = 1;
      st_ino = v45.st_ino;
LABEL_52:
      v43 = st_ino;
LABEL_53:
      v44 = v31;
      if (v31 != v19)
      {
        if (statfs(v6, &v47))
        {
          v19 = v44;
        }

        else
        {
          v19 = v44;
          if (!lstat(v47.f_mntonname, &v45) && v44 == v45.st_dev && v43 == v45.st_ino)
          {
            j__strnstr(__big, v47.f_mntonname, v33);
            do
            {
              v34 = strrchr(__big, 47);
              if (!v34)
              {
                break;
              }

              if (v34 <= __big)
              {
                v12 = MEMORY[0x193AD6A30](v6, v47.f_mntonname, 1024);
                goto LABEL_41;
              }

              *v34 = 0;
            }

            while ((lstat(__big, &v45) & 0x80000000) == 0 && (v45.st_mode & 0xF000) == 0x4000);
          }
        }
      }

      if (!HIDWORD(v42))
      {
        if (v30)
        {
          v12 = v28;
        }

        else
        {
          v6[v12] = 0;
          v38 = MEMORY[0x193AD6A20](v6, &v52 + SDWORD1(v52) + 4, 1024);
          if (v38 >= 0x400)
          {
            goto LABEL_87;
          }

          v12 = v38;
        }

        st_dev = v19;
LABEL_83:
        if (!v10)
        {
          goto LABEL_84;
        }

        continue;
      }

      if (v42 >= 0x21)
      {
        v39 = __error();
        v40 = 62;
        goto LABEL_89;
      }

      v35 = readlink(v6, v48, 0x400uLL);
      v36 = v35;
      if ((v35 - 1024) <= 0xFFFFFFFFFFFFFC00)
      {
        if (v35 < 0)
        {
          goto LABEL_90;
        }

        v39 = __error();
        if (!v36)
        {
          v40 = 2;
          goto LABEL_89;
        }

        goto LABEL_88;
      }

      v48[v35] = 0;
      if (v48[0] == 47)
      {
        v6[1] = 0;
        st_dev = realpath_rootdev;
        v12 = 1;
      }

      else
      {
        v37 = strrchr(v6, 47);
        v37[1] = 0;
        v12 = v37 + 1 - v6;
        st_dev = v19;
      }

      if (!v23)
      {
        goto LABEL_79;
      }

      if (v48[v36 - 1] != 47)
      {
        if (v36 >= 0x3FF)
        {
          goto LABEL_87;
        }

        *&v48[v36] = 47;
      }

      if (MEMORY[0x193AD6A20](v48, v51, 1024) < 0x400)
      {
LABEL_79:
        LODWORD(v42) = v42 + 1;
        v10 = MEMORY[0x193AD6A30](v51, v48, 1024);
        goto LABEL_83;
      }

LABEL_87:
      v39 = __error();
LABEL_88:
      v40 = 63;
LABEL_89:
      *v39 = v40;
      goto LABEL_90;
    }

    break;
  }

  if ((v29 & 0x80000000) == 0)
  {
    v30 = 0;
    v31 = v44;
    goto LABEL_53;
  }

LABEL_90:
  if (v5)
  {
    return 0;
  }

  v41 = *__error();
  free(v6);
  v6 = 0;
  *__error() = v41;
  return v6;
}

void remque(void *a1)
{
  v2 = *a1;
  v1 = *(a1 + 1);
  if (v1)
  {
    *v1 = v2;
  }

  if (v2)
  {
    *(v2 + 8) = v1;
  }
}

uint64_t __init__env_owned_locked(int a1)
{
  if (__env_owned)
  {
    return 0;
  }

  if (a1)
  {
    v3 = 0;
  }

  else
  {
    v3 = *__error();
  }

  v4 = _owned_ptr_alloc();
  __env_owned = v4;
  if (v4)
  {
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  if (!a1 && !v4)
  {
    *__error() = v3;
    return 0xFFFFFFFFLL;
  }

  return result;
}

char *_copyenv(void *a1)
{
  if (a1)
  {
    v1 = a1;
    if (*a1)
    {
      v2 = 1;
        ;
      }
    }

    else
    {
      v2 = 1;
    }

    result = malloc_type_malloc(v2 * 8, 0x10040436913F5uLL);
    if (result)
    {

      return j__mkostemp(result, v1);
    }
  }

  else
  {
    result = malloc_type_malloc(8uLL, 0x10040436913F5uLL);
    if (result)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t _deallocenvstate(void **a1)
{
  if (!a1 || __env_owned == a1)
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  else
  {
    free(*a1);
    free(a1);
    return 0;
  }
}

uint64_t _setenvp(char *a1, unsigned __int8 *a2, int a3, char **a4, uint64_t a5)
{
  environ_lock_np();
  v10 = __env_owned;
  if (__env_owned || (v10 = _owned_ptr_alloc(), (__env_owned = v10) != 0))
  {
    if (a5)
    {
      v11 = a5;
    }

    else
    {
      v11 = v10;
    }

    v12 = __setenv_locked(a1, a2, a3, 1, a4, v11);
  }

  else
  {
    v12 = 0xFFFFFFFFLL;
  }

  environ_unlock_np();
  return v12;
}

uint64_t _unsetenvp(_BYTE *a1, char **a2, uint64_t a3)
{
  environ_lock_np();
  v6 = __env_owned;
  if (__env_owned || (v6 = _owned_ptr_alloc(), (__env_owned = v6) != 0))
  {
    if (a3)
    {
      v7 = a3;
    }

    else
    {
      v7 = v6;
    }

    __unsetenv_locked(a1, *a2, v7);
    v8 = 0;
  }

  else
  {
    v8 = 0xFFFFFFFFLL;
  }

  environ_unlock_np();
  return v8;
}

hash_table *__cdecl hash_create(int size)
{
  LODWORD(v1) = size;
  v2 = malloc_type_malloc(0x10uLL, 0x10800407411B482uLL);
  result = 0;
  if ((v1 & 0x80000000) == 0 && v2)
  {
    if (v1)
    {
      v1 = v1;
    }

    else
    {
      v1 = 97;
    }

    result = malloc_type_malloc(8 * v1, 0x2004093837F09uLL);
    v2->buckets = result;
    if (result)
    {
      for (i = 0; i != v1; ++i)
      {
        v2->buckets[i] = 0;
      }

      v2->size = v1;
      return v2;
    }
  }

  return result;
}

void hash_destroy(hash_table *table, char *key, void (__cdecl *nukefunc)(char *, void *))
{
  v6 = *key;
  if (*key)
  {
    v7 = 0;
    v8 = key + 1;
    do
    {
      v7 ^= v6 ^ (2 * v7);
      v9 = *v8++;
      v6 = v9;
    }

    while (v9);
  }

  else
  {
    v7 = 0;
  }

  p_next = &table->buckets[v7 % table->size];
  v11 = *p_next;
  if (*p_next)
  {
    if (j__strncasecmp_l(v11->key, key, nukefunc, v3))
    {
      while (1)
      {
        v14 = v11;
        v11 = v11->next;
        if (!v11)
        {
          break;
        }

        if (!j__strncasecmp_l(v11->key, key, v12, v13))
        {
          p_next = &v14->next;
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      *p_next = v11->next;
      if (nukefunc)
      {
        (nukefunc)(v11->key, v11->data);
      }

      free(v11);
    }
  }
}

void *__cdecl hash_search(hash_table *table, char *key, void *datum, void (__cdecl *replace_func)(void *))
{
  size = table->size;
  v9 = *key;
  if (*key)
  {
    v10 = 0;
    v11 = key + 1;
    do
    {
      v10 ^= v9 ^ (2 * v10);
      v12 = *v11++;
      v9 = v12;
    }

    while (v12);
  }

  else
  {
    v10 = 0;
  }

  v13 = v10 % size;
  v14 = table->buckets[v10 % size];
  if (!v14)
  {
LABEL_9:
    if (datum)
    {
      data = malloc_type_malloc(0x18uLL, 0xB0040E10B54BDuLL);
      if (!data)
      {
        return data;
      }

      v18 = j__strsignal_r(key, v15, v16);
      v19 = malloc_type_malloc(v18 + 1, 0x100004077774924uLL);
      data->key = v19;
      if (v19)
      {
        *v19 = 0;
        strcat(data->key, key);
        data->data = datum;
        buckets = table->buckets;
        data->next = buckets[v13];
        buckets[v13] = data;
        return data;
      }
    }

    return 0;
  }

  while (j__strncasecmp_l(v14->key, key, datum, replace_func))
  {
    v14 = v14->next;
    if (!v14)
    {
      goto LABEL_9;
    }
  }

  data = v14->data;
  if (replace_func)
  {
    (replace_func)(v14->data);
    data = 0;
    v14->data = datum;
  }

  return data;
}

void hash_traverse(hash_table *table, int (__cdecl *func)(char *, void *, void *), void *arg)
{
  if (func)
  {
    size = table->size;
    if (size >= 1)
    {
      v7 = 0;
      while (1)
      {
        v8 = table->buckets[v7];
        if (v8)
        {
          break;
        }

LABEL_7:
        if (++v7 == size)
        {
          return;
        }
      }

      while ((func)(v8->key, v8->data, arg))
      {
        v8 = v8->next;
        if (!v8)
        {
          goto LABEL_7;
        }
      }
    }
  }
}

void hash_purge(hash_table *table, void (__cdecl *purge_func)(char *, void *))
{
  size = table->size;
  if (size >= 1)
  {
    for (i = 0; i != size; ++i)
    {
      v6 = table->buckets[i];
      if (v6)
      {
        do
        {
          if (purge_func)
          {
            (purge_func)(v6->key, v6->data);
          }

          next = v6->next;
          free(v6);
          v6 = next;
        }

        while (next);
        table->buckets[i] = 0;
      }
    }
  }
}

uint64_t hash_stats(int *a1, int a2)
{
  v3 = *a1;
  v4 = malloc_type_malloc(4 * v3, 0x100004052888210uLL);
  if (!v4)
  {
    fwrite("malloc returns 0\n", 0x11uLL, 1uLL, __stderrp);
    exit(1);
  }

  if (v3 <= 0)
  {
    putchar(10);
    return printf("%d element%s in storage.\n");
  }

  v5 = v4;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v17 = v3;
  do
  {
    v19 = v7;
    v20 = v8;
    v11 = *(*(a1 + 1) + 8 * v6);
    v5[v6] = 0;
    v12 = 0;
    if (v11)
    {
      v13 = 1;
      do
      {
        if (v13)
        {
          ++v9;
          if (a2)
          {
            printf("bucket %2d: ", v6);
LABEL_10:
            printf(" %s", *v11);
            v12 = v5[v6];
          }
        }

        else if (a2)
        {
          goto LABEL_10;
        }

        v13 = 0;
        v5[v6] = ++v12;
        v11 = *(v11 + 16);
      }

      while (v11);
    }

    if (v12 == v8)
    {
      v14 = v19 + 1;
    }

    else
    {
      v14 = v19;
    }

    if (v12 > v8)
    {
      v8 = v12;
    }

    if (v12 > v20)
    {
      v7 = 1;
    }

    else
    {
      v7 = v14;
    }

    if (a2 && v12)
    {
      printf(" (%d)\n", v12);
    }

    v10 += v12;
    ++v6;
  }

  while (v6 != v17);
  putchar(10);
  v15 = "s";
  if (v10 == 1)
  {
    v15 = "";
  }

  result = printf("%d element%s in storage.\n", v10, v15);
  if (v10)
  {
    printf("%d of %d (%.2f%%) buckets are in use\n", v9, v17, v9 * 100.0 / v17);
    printf("the maximum number of elements in a bucket is %d (%d times)\n", v8, v7);
    printf("average per bucket is %f\n", v10 / v9);
    return printf("optimal would be %f\n");
  }

  return result;
}

intmax_t strtoimax(const char *__nptr, char **__endptr, int __base)
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

  return strtoimax_l(__nptr, __endptr, __base, v5);
}

uint64_t strtoq(const char *__str, char **__endptr, int __base)
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

  return strtoll_l(__str, __endptr, __base, v5);
}

uintmax_t strtoumax(const char *__nptr, char **__endptr, int __base)
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

  return strtoumax_l(__nptr, __endptr, __base, v5);
}

char *system_NOCANCEL(char *result)
{
  __argv[0] = "sh";
  __argv[1] = "-c";
  __argv[2] = result;
  __argv[3] = 0;
  if (!*MEMORY[0x1E69E9B90])
  {
    *MEMORY[0x1E69E9B90] = 1;
  }

  if (result)
  {
    *v14 = 0;
    v13.__sigaction_u.__sa_handler = 0;
    *&v13.sa_mask = 0;
    v12.__sigaction_u.__sa_handler = 0;
    *&v12.sa_mask = 0;
    v11.__sigaction_u.__sa_handler = 0;
    *&v11.sa_mask = 0;
    *v10 = 0;
    v8 = 0;
    v1 = posix_spawnattr_init(&v8);
    if (v1)
    {
      *__error() = v1;
      return 0xFFFFFFFFLL;
    }

    v9 = 0;
    pthread_mutex_lock(&__systemfn_mutex);
    v13.__sigaction_u.__sa_handler = 1;
    *&v13.sa_mask = 0;
    sigaction(2, &v13, &v12);
    if (v12.__sigaction_u.__sa_handler == 1)
    {
      v2 = 8;
      v3 = 4;
    }

    else
    {
      v9 = 2;
      v2 = 12;
      v3 = 6;
    }

    sigaction(3, &v13, &v11);
    if (v11.__sigaction_u.__sa_handler != 1)
    {
      v9 = v3;
      v2 = 12;
    }

    v10[1] = 0x80000;
    sigprocmask(1, &v10[1], v10);
    posix_spawnattr_setsigmask(&v8, v10);
    if ((v2 & 4) != 0)
    {
      posix_spawnattr_setsigdefault(&v8, &v9);
    }

    posix_spawnattr_setflags(&v8, v2);
    v4 = _NSGetEnviron();
    v5 = posix_spawn(&v14[1], "/bin/sh", 0, &v8, __argv, *v4);
    posix_spawnattr_destroy(&v8);
    if (v5 == 35 || v5 == 12)
    {
      v7 = -1;
    }

    else
    {
      if (!v5)
      {
        v6 = v14[1];
        while (1)
        {
          v14[1] = wait4(v6, v14, 0, 0);
          if (v14[1] != -1)
          {
            goto LABEL_24;
          }

          if (*__error() != 4)
          {
            v7 = v14[1];
            if (v14[1] != -1)
            {
              goto LABEL_24;
            }

            goto LABEL_23;
          }
        }
      }

      v7 = 32512;
    }

LABEL_23:
    v14[0] = v7;
LABEL_24:
    sigaction(2, &v12, 0);
    sigaction(3, &v11, 0);
    sigprocmask(3, v10, 0);
    pthread_mutex_unlock(&__systemfn_mutex);
    return v14[0];
  }

  return result;
}

void *__cdecl tdelete(const void *a1, void **a2, int (__cdecl *a3)(const void *, const void *))
{
  if (!a2)
  {
    return 0;
  }

  v3 = a2;
  v4 = *a2;
  if (*a2)
  {
    for (i = (a3)(a1, *v4); i; i = (a3)(a1, *v9))
    {
      v4 = *v3;
      v8 = i >= 0 ? 16 : 8;
      v3 = (v4 + v8);
      v9 = *(v4 + v8);
      if (!v9)
      {
        return 0;
      }
    }

    v10 = *(*v3 + 1);
    v11 = *(*v3 + 2);
    if (v10)
    {
      if (v11)
      {
        v12 = v11[1];
        if (v12)
        {
          do
          {
            v13 = v11;
            v11 = v12;
            v12 = v12[1];
          }

          while (v12);
          v13[1] = v11[2];
          v11[1] = *(*v3 + 1);
          v11[2] = *(*v3 + 2);
        }

        else
        {
          v11[1] = v10;
        }
      }

      else
      {
        v11 = *(*v3 + 1);
      }
    }

    free(*v3);
    *v3 = v11;
  }

  return v4;
}

void *__cdecl tfind(const void *a1, void *const *a2, int (__cdecl *a3)(const void *, const void *))
{
  if (!a2)
  {
    return 0;
  }

  v3 = a2;
  v4 = *a2;
  if (!*a2)
  {
    return 0;
  }

  while (1)
  {
    v7 = (a3)(a1, *v4);
    if (!v7)
    {
      break;
    }

    v8 = *v3;
    if (v7 >= 0)
    {
      v9 = 16;
    }

    else
    {
      v9 = 8;
    }

    v3 = &v8[v9];
    v4 = *&v8[v9];
    if (!v4)
    {
      return 0;
    }
  }

  return *v3;
}

void *__cdecl tsearch(const void *a1, void **a2, int (__cdecl *a3)(const void *, const void *))
{
  if (!a2)
  {
    return 0;
  }

  v3 = a2;
  v5 = *a2;
  if (*a2)
  {
    while (1)
    {
      v7 = (a3)(a1, *v5);
      if (!v7)
      {
        return *v3;
      }

      v8 = *v3;
      if (v7 >= 0)
      {
        v9 = 16;
      }

      else
      {
        v9 = 8;
      }

      v3 = &v8[v9];
      v5 = *&v8[v9];
      if (!v5)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    result = malloc_type_malloc(0x18uLL, 0x30040D3A788E3uLL);
    if (result)
    {
      *v3 = result;
      *(result + 1) = 0;
      *(result + 2) = 0;
      *result = a1;
    }
  }

  return result;
}

void twalk(const void *a1, void (__cdecl *a2)(const void *, VISIT, int))
{
  if (a1)
  {
    if (a2)
    {
      trecurse(a1, a2, 0);
    }
  }
}

uint64_t trecurse(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v4 = a2;
  if (*(a1 + 8) || *(a1 + 16))
  {
    a2(a1, 0, a3);
    v6 = *(a1 + 8);
    if (v6)
    {
      trecurse(v6, a2, (a3 + 1));
    }

    a2(a1, 1, a3);
    v7 = *(a1 + 16);
    if (v7)
    {
      trecurse(v7, a2, (a3 + 1));
    }

    v8 = 2;
    v4 = a2;
  }

  else
  {
    v8 = 3;
  }

  return v4(a1, v8, a3);
}

int posix_openpt(int a1)
{
  result = open_NOCANCEL();
  if (result < 0)
  {
    return -1;
  }

  return result;
}

char *__cdecl ptsname(int a1)
{
  if (ptsname_once != -1)
  {
    ptsname_cold_1();
  }

  v2 = pthread_getspecific(ptsname_buffer_specific_key);
  if (!v2)
  {
    v3 = malloc_type_malloc(0x80uLL, 0xD3BEFE20uLL);
    if (!v3)
    {
      fts_build_cold_1();
    }

    v2 = v3;
    if (pthread_setspecific(ptsname_buffer_specific_key, v3))
    {
      ptsname_cold_2();
    }
  }

  if (ptsname_r(a1, v2, 0x80uLL))
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t ptsname_once_init()
{
  result = pthread_key_create(&ptsname_buffer_specific_key, MEMORY[0x1E69E9B38]);
  if (result)
  {
    ptsname_cold_2();
  }

  return result;
}

int ptsname_r(int fildes, char *buffer, size_t buflen)
{
  memset(&v8, 0, sizeof(v8));
  if (buffer)
  {
    if (ioctl(fildes, 0x40807453uLL, v9) || stat(v9, &v8))
    {
      return -1;
    }

    if (MEMORY[0x193AD6A30](buffer, v9, buflen) < buflen)
    {
      return 0;
    }

    v6 = __error();
    v7 = 34;
  }

  else
  {
    v6 = __error();
    v7 = 22;
  }

  *v6 = v7;
  return -1;
}

char *__cdecl l64a(uint64_t a1)
{
  if (a1)
  {
    v1 = 0;
    v2 = &l64a_buf;
    do
    {
      v3 = a1 & 0x3F;
      v4 = (a1 & 0x3F) + 59;
      if (v3 <= 0x25)
      {
        v4 = (a1 & 0x3F) + 53;
      }

      if (v3 <= 0xB)
      {
        v4 = v3 + 46;
      }

      if (v3 <= 1)
      {
        v5 = a1 & 0x11 | 0x2E;
      }

      else
      {
        v5 = v4;
      }

      *v2++ = v5;
      if (a1 < 0x40)
      {
        break;
      }

      LODWORD(a1) = a1 >> 6;
    }

    while (v1++ < 5);
  }

  else
  {
    v2 = &l64a_buf;
  }

  *v2 = 0;
  return &l64a_buf;
}

char *__cvt(int a1, int *a2, _DWORD *a3, int a4, double a5)
{
  if (!a1)
  {
    *a3 = a5 < 0.0;
    *a2 = 0;
    return "";
  }

  if (__cvt_s)
  {
    free(__cvt_s);
    __cvt_s = 0;
  }

  v20 = 0;
  if (a1 >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = -a1;
  }

  v11 = (v10 + 1);
  if (a5 == 0.0)
  {
    *a2 = 1 - a4;
    *a3 = 0;
    result = malloc_type_malloc(v11, 0x100004077774924uLL);
    __cvt_s = result;
    if (!result)
    {
      return result;
    }

    v13 = result + 1;
    v20 = result + 1;
    *result = 48;
  }

  else
  {
    result = __dtoa(a4 + 2, a1, a2, a3, &v20, a5);
    if (!result)
    {
      return result;
    }

    v16 = result;
    v17 = *a2;
    if (*a2 == 9999)
    {
      *a2 = 0;
      v18 = *result;
      __freedtoa(result);
      if (v18 == 73)
      {
        return "inf";
      }

      else
      {
        return "nan";
      }
    }

    if (!a4)
    {
      v17 = 0;
    }

    v11 += v17;
    v19 = malloc_type_malloc(v11, 0x100004077774924uLL);
    __cvt_s = v19;
    if (!v19)
    {
      __freedtoa(v16);
      return 0;
    }

    MEMORY[0x193AD6A30](v19, v16, v11);
    v20 = &v20[__cvt_s - v16];
    __freedtoa(v16);
    v13 = v20;
    result = __cvt_s;
  }

  v14 = &result[v11 - v13 - 1];
  if (&result[v11 - v13] != 1)
  {
    do
    {
      v15 = v20++;
      *v15 = 48;
      --v14;
    }

    while (v14);
    v13 = v20;
  }

  *v13 = 0;
  return __cvt_s;
}

char *__cdecl gcvt(double a1, int a2, char *a3)
{
  v6 = localeconv();
  if (a2)
  {
    p_decimal_point = &v6->decimal_point;
    v35 = 0;
    v8 = __dtoa(2u, a2, &v35 + 1, &v35, 0, a1);
    if (v8)
    {
      v9 = v8;
      v10 = HIDWORD(v35);
      if (HIDWORD(v35) == 9999)
      {
        v11 = "-";
        if (!v35)
        {
          v11 = "";
        }

        if (*v8 == 73)
        {
          v12 = "inf";
        }

        else
        {
          v12 = "nan";
        }

        snprintf(a3, a2 + 1, "%s%s", v11, v12);
      }

      else
      {
        v13 = a3;
        if (v35)
        {
          *a3 = 45;
          v13 = a3 + 1;
        }

        if (v10 < 0 || v10 > a2)
        {
          v17 = 1 - v10;
          v18 = __OFSUB__(v10, 1);
          v19 = v10 - 1;
          v20 = v19 < 0 != v18;
          if (v19 < 0 != v18)
          {
            v19 = v17;
          }

          v35 = __PAIR64__(v19, v20);
          *v13 = *v9;
          v21 = stpcpy(v13 + 1, *p_decimal_point);
          v22 = v9[1];
          if (v22)
          {
            v23 = (v9 + 2);
            do
            {
              *v21++ = v22;
              v24 = *v23++;
              v22 = v24;
            }

            while (v24);
          }

          *v21 = 101;
          if (v35)
          {
            v25 = 45;
          }

          else
          {
            v25 = 43;
          }

          v21[1] = v25;
          v26 = HIDWORD(v35);
          if (SHIDWORD(v35) >= 10)
          {
            v27 = v21 + 1;
            do
            {
              v28 = v26 + 9;
              v26 /= 10;
              ++v27;
            }

            while (v28 > 0x12);
            LODWORD(v35) = v26;
            v27[1] = 0;
            v29 = HIDWORD(v35);
            if (HIDWORD(v35))
            {
              do
              {
                *v27-- = v29 - 10 * (((1717986919 * v29) >> 34) + (1717986919 * v29 < 0)) + 48;
                v30 = HIDWORD(v35);
                v29 = SHIDWORD(v35) / 10;
                SHIDWORD(v35) /= 10;
              }

              while ((v30 + 9) >= 0x13);
            }

            goto LABEL_50;
          }

          v21[2] = 48;
          v13 = v21 + 4;
          v21[3] = BYTE4(v35) + 48;
        }

        else
        {
          if (v10)
          {
            v14 = v9;
            do
            {
              v15 = *v14;
              v16 = v15 == 0;
              if (!*v14)
              {
                LOBYTE(v15) = 48;
              }

              if (!v16)
              {
                ++v14;
              }

              *v13++ = v15;
              --v10;
            }

            while (v10);
          }

          else
          {
            v14 = v9;
          }

          if (*v14)
          {
            if (v14 == v9)
            {
              *v13++ = 48;
            }

            v13 = stpcpy(v13, *p_decimal_point);
            v31 = v9[SHIDWORD(v35)];
            if (v31)
            {
              v32 = &v9[SHIDWORD(v35) + 1];
              do
              {
                *v13++ = v31;
                v33 = *v32++;
                v31 = v33;
              }

              while (v33);
            }
          }
        }

        *v13 = 0;
      }

LABEL_50:
      __freedtoa(v9);
      return a3;
    }

    return 0;
  }

  else
  {
    *a3 = 0;
  }

  return a3;
}

int heapsort_b(void *__base, size_t __nel, size_t __width, void *__compar)
{
  if (__nel < 2)
  {
    return 0;
  }

  if (!__width)
  {
    *__error() = 22;
    return -1;
  }

  v7 = __nel;
  v9 = malloc_type_malloc(__width, 0x3B81EACBuLL);
  if (!v9)
  {
    return -1;
  }

  v44 = __base;
  v10 = __base - __width;
  v11 = v7 >> 1;
  v47 = __compar;
  v46 = v9;
  do
  {
    v45 = v11;
    v12 = 2 * v11;
    if (2 * v11 <= v7)
    {
      v13 = v11;
      do
      {
        v14 = v10;
        v15 = &v10[v12 * __width];
        if (v12 >= v7)
        {
          v18 = v12;
          v16 = __compar;
        }

        else
        {
          v16 = __compar;
          v17 = (*(__compar + 2))(__compar, v15, &v15[__width]);
          v18 = v12 | (v17 >> 31);
          if (v17 < 0)
          {
            v15 += __width;
          }
        }

        v19 = &v14[v13 * __width];
        v20 = v16[2](v16, v15, v19);
        v10 = v14;
        if (v20 < 1)
        {
          break;
        }

        v21 = __width;
        do
        {
          v22 = *v19;
          *v19++ = *v15;
          *v15++ = v22;
          --v21;
        }

        while (v21);
        v12 = 2 * v18;
        v13 = v18;
      }

      while (2 * v18 <= v7);
    }

    v11 = v45 - 1;
  }

  while (v45 != 1);
  i = v44;
  v24 = &v44[__width * (v7 - 1)];
  v25 = v46;
  do
  {
    v26 = 0;
    do
    {
      v25[v26] = v24[v26];
      ++v26;
    }

    while (__width != v26);
    v27 = 0;
    do
    {
      v24[v27] = i[v27];
      ++v27;
    }

    while (__width != v27);
    v28 = v7 - 1;
    v29 = i;
    if (v7 >= 3)
    {
      v30 = 2;
      v31 = 1;
      do
      {
        v32 = &v10[v30 * __width];
        if (v30 >= v28)
        {
          v34 = v30;
        }

        else
        {
          v33 = v47[2](v47, &v10[v30 * __width], &v32[__width]);
          v34 = v30 | (v33 >> 31);
          if (v33 < 0)
          {
            v32 += __width;
          }
        }

        v35 = &v10[v31 * __width];
        v36 = __width;
        do
        {
          v37 = *v32++;
          *v35++ = v37;
          --v36;
        }

        while (v36);
        v30 = 2 * v34;
        v31 = v34;
      }

      while (2 * v34 <= v28);
      v29 = &v10[v34 * __width];
      v38 = v29;
      for (i = v44; v34 != 1; v29 = &v10[v34 * __width])
      {
        v29 = v38;
        v34 >>= 1;
        v38 = &v10[v34 * __width];
        v39 = v47[2](v47, v46, v38);
        v40 = __width;
        v41 = v38;
        if (v39 < 0)
        {
          break;
        }

        do
        {
          v42 = *v41++;
          *v29++ = v42;
          --v40;
        }

        while (v40);
      }
    }

    v43 = 0;
    v25 = v46;
    do
    {
      v29[v43] = v46[v43];
      ++v43;
    }

    while (__width != v43);
    v24 -= __width;
    v7 = v28;
  }

  while (v28 > 1);
  free(v46);
  return 0;
}

char *__ldtoa(double *a1, unsigned int a2, int a3, _DWORD *a4, _DWORD *a5, char **a6)
{
  result = __dtoa(a2, a3, a4, a5, a6, *a1);
  if (*a4 == 9999)
  {
    *a4 = 0x7FFFFFFF;
  }

  return result;
}

char *_Read_RuneMagi(FILE *a1)
{
  memset(&v131, 0, sizeof(v131));
  v2 = fileno(a1);
  if (fstat(v2, &v131) < 0)
  {
    return 0;
  }

  st_size = v131.st_size;
  if (v131.st_size <= 0xC3BuLL)
  {
LABEL_3:
    v4 = __error();
    v5 = 0;
    v6 = 79;
LABEL_10:
    *v4 = v6;
    return v5;
  }

  v7 = fileno(a1);
  v8 = mmap(0, st_size, 3, 2, v7, 0);
  if (v8 == -1)
  {
    v4 = __error();
    v5 = 0;
    v6 = 22;
    goto LABEL_10;
  }

  v9 = v8;
  v10 = (v8 + 3124);
  v11 = v8 + v131.st_size;
  if (*v8 == 0x4167614D656E7552)
  {
    if (v131.st_size <= 0xC5BuLL)
    {
      goto LABEL_3;
    }

    v15 = &v8[395] + 4;
    v8[6].i32[0] = bswap32(v8[6].u32[0]);
    v16 = vrev32_s8(v8[394]);
    v8[394] = v16;
    v17 = bswap32(v8[390].u32[1]);
    v8[390].i32[1] = v17;
    v18 = bswap32(v8[391].u32[1]);
    v8[391].i32[1] = v18;
    v19 = bswap32(v8[392].u32[1]);
    v8[392].i32[1] = v19;
    v20 = (&v8[2 * v17 + 395] + 4);
    if (v20 > v11)
    {
      goto LABEL_56;
    }

    v21 = &v20[2 * v18];
    if (v21 > v11)
    {
      goto LABEL_56;
    }

    v22 = &v21[2 * v19];
    if (v22 > v11)
    {
      goto LABEL_56;
    }

    if (v17 < 1)
    {
      v29 = 128;
    }

    else
    {
      v23 = 0;
      v24 = (v8 + 3164);
      v25 = v17;
      do
      {
        v26 = vrev32_s8(*v24);
        *v24 = v26;
        v27 = v24[1].u32[0];
        v24[1].i32[0] = bswap32(v27);
        if (!v27)
        {
          v28 = vsub_s32(vdup_lane_s32(v26, 1), v26).u32[0] + 1;
          v22 = (v22 + 4 * v28);
          if (v22 > v11)
          {
            goto LABEL_56;
          }

          v23 += v28;
        }

        v24 += 2;
        --v25;
      }

      while (v25);
      v29 = 4 * v23 + 128;
    }

    if (v22 + 20 * v16.i32[1] + v16.i32[0] > v11)
    {
LABEL_56:
      v74 = __error();
      v5 = 0;
      v75 = 0;
LABEL_57:
      *v74 = 22;
LABEL_58:
      v76 = *__error();
      free(v75);
      free(v5);
      v5 = 0;
      *__error() = v76;
LABEL_59:
      v77 = *__error();
      munmap(v9, v131.st_size);
      if (!v5)
      {
        *__error() = v77;
      }

      return v5;
    }

    v78 = v16.i32[0] + 20 * v16.i32[1] + 24 * (v18 + v17 + v19) + v29;
    v79 = malloc_type_calloc(1uLL, v16.i32[0] + 20 * v16.i32[1] + 24 * (v18 + v17 + v19) + v29, 0xB3E760CBuLL);
    v5 = v79;
    if (!v79)
    {
      v75 = 0;
      goto LABEL_58;
    }

    *v79 = 1;
    *(v79 + 1) = destruct_ctype;
    v80 = malloc_type_calloc(1uLL, 0xC88uLL, 0x10A0040C89F755AuLL);
    v75 = v80;
    *(v5 + 15) = v80;
    if (!v80)
    {
      free(v5);
      goto LABEL_58;
    }

    v81 = 0;
    v82 = v5 + 128;
    *(v80 + 398) = v5 + 128;
    *v80 = 0x4167614D656E7552;
    v83 = *v9[1].i8;
    *(v80 + 24) = *v9[3].i8;
    *(v80 + 8) = v83;
    *(v80 + 14) = v9[6].i32[0];
    *(v80 + 784) = v9[390].i32[1];
    *(v80 + 788) = v9[391].i32[1];
    *(v80 + 792) = v9[392].i32[1];
    *(v80 + 399) = v9[394];
    do
    {
      v84 = &v80[v81 * 4];
      *(v84 + 15) = bswap32(v9[6].u32[v81 + 1]);
      *(v84 + 271) = bswap32(v9[134].u32[v81 + 1]);
      *(v84 + 527) = bswap32(v9[262].u32[++v81]);
    }

    while (v81 != 256);
    *(v80 + 393) = v82;
    v85 = *(v80 + 784);
    v86 = v85;
    v87 = &v82[24 * v85];
    *(v80 + 395) = v87;
    v88 = *(v80 + 788);
    v89 = &v87[24 * v88];
    *(v80 + 397) = v89;
    v90 = &v89[24 * *(v80 + 792)];
    *(v80 + 400) = v90;
    v91 = &v90[20 * *(v80 + 799)];
    *(v75 + 398) = v91;
    v92 = &v21[2 * v9[392].i32[1]];
    if (v85 < 1)
    {
      LODWORD(v104) = v88;
    }

    else
    {
      for (i = 0; i < v85; ++i)
      {
        v94 = &v15[16 * i];
        v95 = &v82[24 * i];
        v96 = *v94;
        v97 = *(v94 + 1);
        *v95 = *v94;
        *(v95 + 1) = v97;
        LODWORD(v94) = *(v94 + 2);
        *(v95 + 2) = v94;
        if (v94)
        {
          *(v95 + 2) = 0;
        }

        else
        {
          *(v95 + 2) = v91;
          v98 = v97 - v96;
          v66 = v97 - v96 < 0;
          v99 = (v97 - v96 + 1);
          v100 = (v92 + 4 * v99);
          v101 = &v91[4 * v99];
          *(v75 + 398) = v101;
          if (!v66)
          {
            v102 = v98 + 2;
            v103 = v99 - 1;
            do
            {
              *&v91[4 * v103] = bswap32(v92->u32[v103]);
              --v102;
              --v103;
            }

            while (v102 > 1);
            v85 = v75[784];
          }

          v91 = v101;
          v92 = v100;
        }
      }

      LODWORD(v104) = v75[788];
    }

    if (v104 >= 1)
    {
      v104 = v104;
      v119 = &v5[24 * v86 + 136];
      do
      {
        v119[-1] = vrev32_s8(*v20);
        v119->i32[0] = bswap32(v20[1].u32[0]);
        v119 += 3;
        v20 += 2;
        --v104;
      }

      while (v104);
    }

    v120 = v9[392].u32[1];
    if (v120 >= 1)
    {
      v121 = 0;
      v122 = 24 * v120;
      v123 = &v5[24 * v88 + 24 * v86];
      do
      {
        v124 = &v123[v121];
        v124[16] = vrev32_s8(*v21);
        v124[17].i32[0] = bswap32(v21[1].u32[0]);
        v121 += 24;
        v21 += 2;
      }

      while (v122 != v121);
    }

    v125 = v9[394].i32[1];
    if (v125 < 1)
    {
      v126 = v92;
    }

    else
    {
      v126 = v92 + 20 * v125;
      if (v126 > v11)
      {
        v74 = __error();
        goto LABEL_57;
      }

      v127 = 0;
      v128 = 0;
      *(v75 + 400) = v91;
      *(v75 + 398) = &v91[20 * v75[799]];
      do
      {
        v129 = &v91[v127];
        v130 = *(v92 + v127);
        *(v129 + 6) = *(v92 + v127 + 6);
        *v129 = v130;
        v91 = *(v75 + 400);
        *&v91[v127 + 16] = bswap32(v92[2].u32[v127 / 4]);
        ++v128;
        v127 += 20;
      }

      while (v128 < v9[394].i32[1]);
      v91 = *(v75 + 398);
    }

    j__mkdtempat_np(v91, v126);
    if (!v75[798])
    {
      *(v75 + 398) = 0;
    }

    if (!v75[784])
    {
      *(v75 + 393) = 0;
    }

    if (!v75[788])
    {
      *(v75 + 395) = 0;
    }

    if (!v75[792])
    {
      *(v75 + 397) = 0;
    }

    *(v5 + 28) = v78;
    goto LABEL_59;
  }

  if (*v8 != 0x4267614D656E7552)
  {
    v12 = __error();
    v5 = 0;
    v13 = 0;
    v14 = 79;
LABEL_36:
    *v12 = v14;
LABEL_37:
    v44 = *__error();
    munmap(v9, v131.st_size);
    free(v13);
    free(v5);
    v5 = 0;
    *__error() = v44;
    return v5;
  }

  v30 = v8[389].i32[0];
  v31 = &v8[391] + 12 * v30 + 4;
  if (v31 > v11)
  {
    goto LABEL_34;
  }

  v32 = v8[389].i32[1];
  v33 = v31 + 12 * v32;
  if (v33 > v11)
  {
    goto LABEL_34;
  }

  v34 = v8[390].i32[0];
  v35 = v33 + 12 * v34;
  if (v35 > v11)
  {
    goto LABEL_34;
  }

  if (v30 < 1)
  {
    v40 = 128;
  }

  else
  {
    v36 = 0;
    v37 = &v8[392] + 1;
    v38 = v8[389].i32[0];
    do
    {
      if (!*v37)
      {
        v39 = *(v37 - 1) - *(v37 - 2) + 1;
        v35 += 4 * v39;
        if (v35 > v11)
        {
          goto LABEL_34;
        }

        v36 += v39;
      }

      v37 += 3;
      --v38;
    }

    while (v38);
    v40 = 4 * v36 + 128;
  }

  v41 = v8[391].i32[0];
  v42 = v35 + 20 * v41;
  v43 = v8[390].i32[1];
  if (v42 + v43 > v11)
  {
LABEL_34:
    v12 = __error();
    v5 = 0;
    v13 = 0;
LABEL_35:
    v14 = 22;
    goto LABEL_36;
  }

  v46 = v40 + 20 * v41 + v43 + 24 * (v32 + v30 + v34);
  v47 = malloc_type_calloc(1uLL, v40 + 20 * v41 + v43 + 24 * (v32 + v30 + v34), 0xB4163AA1uLL);
  v5 = v47;
  if (!v47)
  {
    v13 = 0;
    goto LABEL_37;
  }

  *v47 = 1;
  *(v47 + 1) = destruct_ctype;
  v48 = malloc_type_calloc(1uLL, 0xC88uLL, 0x10A0040C89F755AuLL);
  v13 = v48;
  *(v5 + 15) = v48;
  if (!v48)
  {
    free(v5);
    goto LABEL_37;
  }

  v49 = v5 + 128;
  *(v48 + 398) = v5 + 128;
  *v48 = 0x4167614D656E7552;
  v50 = *v9[1].i8;
  *(v48 + 24) = *v9[3].i8;
  *(v48 + 8) = v50;
  *(v48 + 14) = 0;
  *(v48 + 784) = v9[389].i32[0];
  *(v48 + 788) = v9[389].i32[1];
  *(v48 + 792) = v9[390].i32[0];
  *(v48 + 399) = *v10;
  v51 = 0x3FFFFFFFFFFFFF00;
  do
  {
    v52 = &v48[v51 * 4];
    *(v52 + 271) = v9[133].i32[v51];
    *(v52 + 527) = v9[261].i32[v51];
    *(v52 + 783) = v9[389].i32[v51++];
  }

  while (v51 * 4);
  *(v48 + 393) = v49;
  v53 = *(v48 + 784);
  v54 = v53;
  v55 = &v49[24 * v53];
  *(v48 + 395) = v55;
  v56 = *(v48 + 788);
  v57 = &v55[24 * v56];
  *(v48 + 397) = v57;
  v58 = &v57[24 * *(v48 + 792)];
  *(v48 + 400) = v58;
  v59 = &v58[20 * *(v48 + 799)];
  *(v13 + 398) = v59;
  v60 = v33 + 12 * v9[390].i32[0];
  if (v53 < 1)
  {
    LODWORD(v73) = v56;
  }

  else
  {
    for (j = 0; j < v53; ++j)
    {
      v62 = &v9[391] + 3 * j + 1;
      v63 = &v49[24 * j];
      v65 = *v62;
      v64 = v62[1];
      *v63 = *v62;
      *(v63 + 1) = v64;
      LODWORD(v62) = v62[2];
      *(v63 + 2) = v62;
      if (v62)
      {
        *(v63 + 2) = 0;
      }

      else
      {
        *(v63 + 2) = v59;
        v67 = v64 - v65;
        v66 = v64 - v65 < 0;
        v68 = (v64 - v65 + 1);
        v69 = v60 + 4 * v68;
        v70 = &v59[4 * v68];
        *(v13 + 398) = v70;
        if (!v66)
        {
          v71 = v67 + 2;
          v72 = v68 - 1;
          do
          {
            *&v59[4 * v72] = *(v60 + 4 * v72);
            --v71;
            --v72;
          }

          while (v71 > 1);
          v53 = v13[784];
        }

        v59 = v70;
        v60 = v69;
      }
    }

    LODWORD(v73) = v13[788];
  }

  if (v73 >= 1)
  {
    v73 = v73;
    v105 = &v5[24 * v54 + 136];
    do
    {
      *(v105 - 1) = *v31;
      *v105 = *(v31 + 8);
      v105 += 24;
      v31 += 12;
      --v73;
    }

    while (v73);
  }

  v106 = v9[390].u32[0];
  if (v106 >= 1)
  {
    v107 = 0;
    v108 = &v5[24 * v56 + 24 * v54];
    v109 = 24 * v106;
    do
    {
      v110 = &v108[v107];
      *(v110 + 16) = *v33;
      *(v110 + 34) = *(v33 + 8);
      v107 += 24;
      v33 += 12;
    }

    while (v109 != v107);
  }

  v111 = v9[391].i32[0];
  if (v111 < 1)
  {
    v112 = v60;
  }

  else
  {
    v112 = (v60 + 20 * v111);
    if (v112 > v11)
    {
      v12 = __error();
      goto LABEL_35;
    }

    v113 = 0;
    v114 = 0;
    *(v13 + 400) = v59;
    *(v13 + 398) = &v59[20 * v13[799]];
    v115 = (v60 + 16);
    do
    {
      v116 = &v59[v113];
      v117 = *(v115 - 2);
      *(v116 + 6) = *(v115 - 10);
      *v116 = v117;
      v118 = *v115;
      v115 += 5;
      v59 = *(v13 + 400);
      *&v59[v113 + 16] = v118;
      ++v114;
      v113 += 20;
    }

    while (v114 < v9[391].i32[0]);
    v59 = *(v13 + 398);
  }

  j__mkdtempat_np(v59, v112);
  munmap(v9, v131.st_size);
  if (!v13[798])
  {
    *(v13 + 398) = 0;
  }

  if (!v13[784])
  {
    *(v13 + 393) = 0;
  }

  if (!v13[788])
  {
    *(v13 + 395) = 0;
  }

  if (!v13[792])
  {
    *(v13 + 397) = 0;
  }

  *(v5 + 28) = v46;
  return v5;
}

void destruct_ctype(void *a1)
{
  v2 = a1[15];
  if (v2 != &_DefaultRuneLocale)
  {
    free(v2);
  }

  free(a1);
}

void *getargs(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 64));
  v2 = *(a1 + 8);
  if (!v2)
  {
    v3 = mmap(0, 0x1000uLL, 3, 4098, -1, 0);
    if (!v3)
    {
      return 0;
    }

    v4 = 0;
    *v3 = *(a1 + 16);
    v2 = v3 - 3;
    *(a1 + 16) = v3;
    v5 = v3 + 1;
    for (i = 128; i > 1; --i)
    {
      v2[4] = v4;
      v2 += 4;
      v4 = v5;
      v5 += 4;
    }

    *(a1 + 8) = v2;
  }

  *(a1 + 8) = *v2;
  os_unfair_lock_unlock((a1 + 64));
  return v2;
}

void _psort_parallel(uint64_t a1)
{
  v2 = *a1;
  _psort(*(a1 + 8), *(a1 + 16), *(v2 + 32), *(v2 + 24), *(a1 + 24), v2);
  os_unfair_lock_lock((v2 + 64));
  *a1 = *(v2 + 8);
  *(v2 + 8) = a1;

  os_unfair_lock_unlock((v2 + 64));
}

void _psort(char *a1, size_t a2, int64_t a3, int (__cdecl *a4)(const void *, const void *), int a5, uint64_t a6)
{
  if (a5 < 1)
  {
LABEL_136:

    heapsort(a1, a2, a3, a4);
    return;
  }

  v9 = a5;
  v10 = -a3;
  v105 = a3 != 8;
  v106 = a3;
  v104 = a3 >> 3;
  v118 = a3 + 1;
  v116 = a3;
  while (1)
  {
    if (((a1 | v106) & 7) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v105;
    }

    if (a2 <= 6)
    {
      if ((a2 * a3) > a3)
      {
        v117 = &a1[a2 * a3];
        v91 = &a1[v116];
        v92 = a1;
        do
        {
          if (v91 > a1)
          {
            v93 = v92;
            v94 = v91;
            do
            {
              v95 = v94;
              v94 += v10;
              if ((a4)(v94, v95) < 1)
              {
                break;
              }

              if (v11)
              {
                v96 = (a1 | v106) & 7;
                if (((a1 | v106) & 7) != 0)
                {
                  v97 = 0;
                  v98 = v106 + 1;
                  do
                  {
                    v99 = *(v95 + v97);
                    *(v95 + v97) = *(v93 + v97);
                    *(v93 + v97) = v99;
                    --v98;
                    ++v97;
                  }

                  while (v98 > 1);
                }

                else
                {
                  v101 = v104 + 1;
                  v102 = v94;
                  do
                  {
                    v103 = *(v95 + v96);
                    *(v95 + v96) = *v102;
                    *v102 = v103;
                    v102 += 8;
                    v96 += 8;
                    --v101;
                  }

                  while (v101 > 1);
                }
              }

              else
              {
                v100 = *v95;
                *v95 = *v94;
                *v94 = v100;
              }

              v93 = (v93 + v10);
            }

            while (v94 > a1);
          }

          v91 += v116;
          v92 = (v92 + v116);
        }

        while (v91 < v117);
      }

      return;
    }

    v12 = &a1[(a2 >> 1) * a3];
    v111 = a2;
    v109 = v9;
    if (a2 != 7)
    {
      v13 = &a1[(a2 - 1) * a3];
      if (a2 < 0x29)
      {
        v18 = a1;
        v19 = &a1[(a2 - 1) * a3];
LABEL_39:
        v25 = (a4)(v18, v12);
        v26 = (a4)(v12, v19);
        if (v25 < 0)
        {
          a2 = v111;
          if ((v26 & 0x80000000) == 0)
          {
            if ((a4)(v18, v19) >= 0)
            {
              v12 = v18;
            }

            else
            {
              v12 = v19;
            }
          }
        }

        else
        {
          a2 = v111;
          if (v26 <= 0)
          {
            if ((a4)(v18, v19) >= 0)
            {
              v12 = v19;
            }

            else
            {
              v12 = v18;
            }
          }
        }

        goto LABEL_48;
      }

      v14 = (a2 >> 3) * a3;
      v15 = (a4)(a1, &a1[v14]);
      v114 = &a1[v14];
      v16 = (a4)(&a1[v14], &a1[2 * v14]);
      if (v15 < 0)
      {
        if ((v16 & 0x80000000) == 0)
        {
          if ((a4)(a1, &a1[2 * v14]) >= 0)
          {
            v17 = a1;
          }

          else
          {
            v17 = &a1[2 * v14];
          }

          goto LABEL_19;
        }
      }

      else if (v16 <= 0)
      {
        if ((a4)(a1, &a1[2 * v14]) >= 0)
        {
          v17 = &a1[2 * v14];
        }

        else
        {
          v17 = a1;
        }

LABEL_19:
        v114 = v17;
      }

      v20 = (a4)(&v12[-v14], v12);
      v21 = (a4)(v12, &v12[v14]);
      if (v20 < 0)
      {
        if ((v21 & 0x80000000) == 0)
        {
          if ((a4)(&v12[-v14], &v12[v14]) >= 0)
          {
            v12 -= v14;
          }

          else
          {
            v12 += v14;
          }
        }
      }

      else if (v21 <= 0)
      {
        if ((a4)(&v12[-v14], &v12[v14]) >= 0)
        {
          v12 += v14;
        }

        else
        {
          v12 -= v14;
        }
      }

      v22 = &v13[-2 * v14];
      v19 = &v13[-v14];
      v23 = (a4)(v22, &v13[-v14]);
      v24 = (a4)(&v13[-v14], v13);
      if (v23 < 0)
      {
        v18 = v114;
        if ((v24 & 0x80000000) == 0)
        {
          if ((a4)(v22, v13) >= 0)
          {
            v19 = v22;
          }

          else
          {
            v19 = v13;
          }
        }
      }

      else
      {
        v18 = v114;
        if (v24 <= 0)
        {
          if ((a4)(v22, v13) >= 0)
          {
            v19 = v13;
          }

          else
          {
            v19 = v22;
          }
        }
      }

      v9 = v109;
      goto LABEL_39;
    }

LABEL_48:
    if (v11)
    {
      if (((a1 | v106) & 7) != 0)
      {
        v27 = v118;
        v28 = a1;
        do
        {
          v29 = *v28;
          *v28++ = *v12;
          *v12++ = v29;
          --v27;
        }

        while (v27 > 1);
      }

      else
      {
        v31 = v104 + 1;
        v32 = a1;
        do
        {
          v33 = *v32;
          *v32 = *v12;
          v32 += 8;
          *v12 = v33;
          v12 += 8;
          --v31;
        }

        while (v31 > 1);
      }
    }

    else
    {
      v30 = *a1;
      *a1 = *v12;
      *v12 = v30;
    }

    v34 = 0;
    v110 = v9 - 1;
    v35 = &a1[(a2 - 1) * v116];
    v36 = v35;
    v37 = &a1[v116];
    v38 = &a1[v116];
LABEL_57:
    while (v37 <= v36)
    {
      v39 = (a4)(v37, a1);
      if (v39 > 0)
      {
        break;
      }

      if (!v39)
      {
        if (v11)
        {
          v40 = (a1 | v106) & 7;
          if (((a1 | v106) & 7) != 0)
          {
            v41 = 0;
            v42 = v118;
            do
            {
              v43 = v38[v41];
              v38[v41] = v37[v41];
              v37[v41] = v43;
              --v42;
              ++v41;
            }

            while (v42 > 1);
          }

          else
          {
            v57 = v104 + 1;
            do
            {
              v58 = *&v38[v40];
              *&v38[v40] = *&v37[v40];
              *&v37[v40] = v58;
              v40 += 8;
              --v57;
            }

            while (v57 > 1);
          }
        }

        else
        {
          v56 = *v38;
          *v38 = *v37;
          *v37 = v56;
        }

        v38 += v116;
        v34 = 1;
      }

      v37 += v116;
    }

    while (v37 <= v36)
    {
      v51 = (a4)(v36, a1);
      if (v51 < 0)
      {
        if (v11)
        {
          v52 = (a1 | v106) & 7;
          if (((a1 | v106) & 7) != 0)
          {
            v53 = 0;
            v54 = v118;
            do
            {
              v55 = v37[v53];
              v37[v53] = v36[v53];
              v36[v53] = v55;
              --v54;
              ++v53;
            }

            while (v54 > 1);
          }

          else
          {
            v60 = v104 + 1;
            do
            {
              v61 = *&v37[v52];
              *&v37[v52] = *&v36[v52];
              *&v36[v52] = v61;
              v52 += 8;
              --v60;
            }

            while (v60 > 1);
          }
        }

        else
        {
          v59 = *v37;
          *v37 = *v36;
          *v36 = v59;
        }

        v37 += v116;
        v36 += v10;
        v34 = 1;
        goto LABEL_57;
      }

      if (!v51)
      {
        if (v11)
        {
          v44 = (a1 | v106) & 7;
          if (((a1 | v106) & 7) != 0)
          {
            v45 = 0;
            v46 = v118;
            do
            {
              v47 = v36[v45];
              v36[v45] = v35[v45];
              v35[v45] = v47;
              --v46;
              ++v45;
            }

            while (v46 > 1);
          }

          else
          {
            v49 = v104 + 1;
            do
            {
              v50 = *&v36[v44];
              *&v36[v44] = *&v35[v44];
              *&v35[v44] = v50;
              v44 += 8;
              --v49;
            }

            while (v49 > 1);
          }
        }

        else
        {
          v48 = *v36;
          *v36 = *v35;
          *v35 = v48;
        }

        v35 += v10;
        v34 = 1;
      }

      v36 += v10;
    }

    v62 = v37 - v38;
    v108 = v37 - v38;
    if (v38 - a1 < v37 - v38)
    {
      v62 = v38 - a1;
    }

    if (v62)
    {
      v63 = &v37[-v62];
      if (((a1 | v106) & 7) != 0)
      {
        v64 = v62 + 1;
        v65 = a1;
        do
        {
          v66 = *v65;
          *v65++ = *v63;
          *v63++ = v66;
          --v64;
        }

        while (v64 > 1);
      }

      else
      {
        v67 = (v62 >> 3) + 1;
        v68 = a1;
        do
        {
          v69 = *v68;
          *v68 = *v63;
          v68 += 8;
          *v63 = v69;
          v63 += 8;
          --v67;
        }

        while (v67 > 1);
      }
    }

    v70 = v35 - v36;
    v115 = &a1[v111 * v116];
    v112 = v35 - v36;
    if (v35 - v36 >= (v115 - &v35[v116]))
    {
      v70 = v115 - &v35[v116];
    }

    if (v70)
    {
      v71 = &v115[-v70];
      if (((a1 | v106) & 7) != 0)
      {
        v72 = v70 + 1;
        do
        {
          v73 = *v37;
          *v37++ = *v71;
          *v71++ = v73;
          --v72;
        }

        while (v72 > 1);
      }

      else
      {
        v74 = (v70 >> 3) + 1;
        do
        {
          v75 = *v37;
          *v37 = *v71;
          v37 += 8;
          *v71 = v75;
          v71 += 8;
          --v74;
        }

        while (v74 > 1);
      }
    }

    if (!v34)
    {
      break;
    }

LABEL_111:
    if (v108 > v116)
    {
      v76 = v108 / v116;
      if (a6 && v76 > *(a6 + 40))
      {
        v77 = getargs(a6);
        if (!v77)
        {
          _psort_cold_1();
        }

        *v77 = a6;
        v77[1] = a1;
        v77[2] = v76;
        *(v77 + 6) = v110;
        dispatch_group_async_f(*(a6 + 56), *(a6 + 48), v77, _psort_parallel);
      }

      else
      {
        _psort(a1, v108 / v116, v116, a4, v110, 0);
      }
    }

    if (v112 <= v116)
    {
      return;
    }

    a3 = v116;
    a1 = &v115[-v112];
    a2 = v112 / v116;
    v9 = v110;
    if (v109 < 2)
    {
      goto LABEL_136;
    }
  }

  v78 = &a1[v116];
  if ((v111 * v116) > v116)
  {
    LODWORD(v79) = 0;
    v80 = a1;
    do
    {
      v79 = v79;
      v81 = v80;
      v113 = v78;
      while (v78 > a1)
      {
        v82 = v78;
        v78 += v10;
        if ((a4)(v78, v82) < 1)
        {
          break;
        }

        if (v11)
        {
          v83 = (a1 | v106) & 7;
          if (((a1 | v106) & 7) != 0)
          {
            v84 = 0;
            v85 = v118;
            do
            {
              v86 = *(v82 + v84);
              *(v82 + v84) = *(v81 + v84);
              *(v81 + v84) = v86;
              --v85;
              ++v84;
            }

            while (v85 > 1);
          }

          else
          {
            v88 = v104 + 1;
            v89 = v78;
            do
            {
              v90 = *(v82 + v83);
              *(v82 + v83) = *v89;
              *v89 = v90;
              v89 += 8;
              v83 += 8;
              --v88;
            }

            while (v88 > 1);
          }
        }

        else
        {
          v87 = *v82;
          *v82 = *v78;
          *v78 = v87;
        }

        ++v79;
        v81 = (v81 + v10);
        if ((v111 >> 2) + 1 < v79)
        {
          goto LABEL_111;
        }
      }

      v78 = v113 + v116;
      v80 = (v80 + v116);
    }

    while (v113 + v116 < v115);
  }
}

void _psort_parallel_0(uint64_t a1)
{
  v2 = *a1;
  _psort_0(*(a1 + 8), *(a1 + 16), *(v2 + 32), *(v2 + 24), *(a1 + 24), v2);
  os_unfair_lock_lock((v2 + 64));
  *a1 = *(v2 + 8);
  *(v2 + 8) = a1;

  os_unfair_lock_unlock((v2 + 64));
}

void _psort_0(char *a1, size_t a2, int64_t a3, int (**a4)(void, void, void), int a5, uint64_t a6)
{
  if (a5 < 1)
  {
LABEL_135:

    heapsort_b(a1, a2, a3, a4);
    return;
  }

  v9 = a5;
  v10 = -a3;
  v105 = a3 != 8;
  v106 = a3;
  v104 = a3 >> 3;
  v118 = a3 + 1;
  v116 = a3;
  while (1)
  {
    v11 = v105;
    if (((a1 | v106) & 7) != 0)
    {
      v11 = 2;
    }

    v119 = v11;
    if (a2 <= 6)
    {
      if ((a2 * a3) > a3)
      {
        v117 = &a1[a2 * a3];
        v91 = &a1[v116];
        v92 = a1;
        do
        {
          if (v91 > a1)
          {
            v93 = v92;
            v94 = v91;
            do
            {
              v95 = v94;
              v94 += v10;
              if ((a4)[2](a4, v94, v95) < 1)
              {
                break;
              }

              if (v119)
              {
                v96 = (a1 | v106) & 7;
                if (((a1 | v106) & 7) != 0)
                {
                  v97 = 0;
                  v98 = v106 + 1;
                  do
                  {
                    v99 = *(v95 + v97);
                    *(v95 + v97) = *(v93 + v97);
                    *(v93 + v97) = v99;
                    --v98;
                    ++v97;
                  }

                  while (v98 > 1);
                }

                else
                {
                  v101 = v104 + 1;
                  v102 = v94;
                  do
                  {
                    v103 = *(v95 + v96);
                    *(v95 + v96) = *v102;
                    *v102 = v103;
                    v102 += 8;
                    v96 += 8;
                    --v101;
                  }

                  while (v101 > 1);
                }
              }

              else
              {
                v100 = *v95;
                *v95 = *v94;
                *v94 = v100;
              }

              v93 = (v93 + v10);
            }

            while (v94 > a1);
          }

          v91 += v116;
          v92 = (v92 + v116);
        }

        while (v91 < v117);
      }

      return;
    }

    v12 = &a1[(a2 >> 1) * a3];
    v111 = a2;
    v109 = v9;
    if (a2 != 7)
    {
      v13 = &a1[(a2 - 1) * a3];
      if (a2 < 0x29)
      {
        v18 = a1;
        v19 = &a1[(a2 - 1) * a3];
LABEL_38:
        v25 = (a4)[2](a4, v18, v12);
        v26 = (a4)[2](a4, v12, v19);
        if (v25 < 0)
        {
          a2 = v111;
          if ((v26 & 0x80000000) == 0)
          {
            if ((a4)[2](a4, v18, v19) >= 0)
            {
              v12 = v18;
            }

            else
            {
              v12 = v19;
            }
          }
        }

        else
        {
          a2 = v111;
          if (v26 <= 0)
          {
            if ((a4)[2](a4, v18, v19) >= 0)
            {
              v12 = v19;
            }

            else
            {
              v12 = v18;
            }
          }
        }

        goto LABEL_47;
      }

      v14 = (a2 >> 3) * a3;
      v15 = (a4)[2](a4, a1, &a1[v14]);
      v114 = &a1[v14];
      v16 = (a4)[2](a4, &a1[v14], &a1[2 * v14]);
      if (v15 < 0)
      {
        if ((v16 & 0x80000000) == 0)
        {
          if ((a4)[2](a4, a1, &a1[2 * v14]) >= 0)
          {
            v17 = a1;
          }

          else
          {
            v17 = &a1[2 * v14];
          }

          goto LABEL_18;
        }
      }

      else if (v16 <= 0)
      {
        if ((a4)[2](a4, a1, &a1[2 * v14]) >= 0)
        {
          v17 = &a1[2 * v14];
        }

        else
        {
          v17 = a1;
        }

LABEL_18:
        v114 = v17;
      }

      v20 = (a4)[2](a4, &v12[-v14], v12);
      v21 = (a4)[2](a4, v12, &v12[v14]);
      if (v20 < 0)
      {
        if ((v21 & 0x80000000) == 0)
        {
          if ((a4)[2](a4, &v12[-v14], &v12[v14]) >= 0)
          {
            v12 -= v14;
          }

          else
          {
            v12 += v14;
          }
        }
      }

      else if (v21 <= 0)
      {
        if ((a4)[2](a4, &v12[-v14], &v12[v14]) >= 0)
        {
          v12 += v14;
        }

        else
        {
          v12 -= v14;
        }
      }

      v22 = &v13[-2 * v14];
      v19 = &v13[-v14];
      v23 = (a4)[2](a4, v22, &v13[-v14]);
      v24 = (a4)[2](a4, &v13[-v14], v13);
      if (v23 < 0)
      {
        v18 = v114;
        if ((v24 & 0x80000000) == 0)
        {
          if ((a4)[2](a4, v22, v13) >= 0)
          {
            v19 = v22;
          }

          else
          {
            v19 = v13;
          }
        }
      }

      else
      {
        v18 = v114;
        if (v24 <= 0)
        {
          if ((a4)[2](a4, v22, v13) >= 0)
          {
            v19 = v13;
          }

          else
          {
            v19 = v22;
          }
        }
      }

      v9 = v109;
      goto LABEL_38;
    }

LABEL_47:
    if (v119)
    {
      if (((a1 | v106) & 7) != 0)
      {
        v27 = v118;
        v28 = a1;
        do
        {
          v29 = *v28;
          *v28++ = *v12;
          *v12++ = v29;
          --v27;
        }

        while (v27 > 1);
      }

      else
      {
        v31 = v104 + 1;
        v32 = a1;
        do
        {
          v33 = *v32;
          *v32 = *v12;
          v32 += 8;
          *v12 = v33;
          v12 += 8;
          --v31;
        }

        while (v31 > 1);
      }
    }

    else
    {
      v30 = *a1;
      *a1 = *v12;
      *v12 = v30;
    }

    v34 = 0;
    v110 = v9 - 1;
    v35 = &a1[(a2 - 1) * v116];
    v36 = v35;
    v37 = &a1[v116];
    v38 = &a1[v116];
LABEL_56:
    while (v37 <= v36)
    {
      v39 = (a4)[2](a4, v37, a1);
      if (v39 > 0)
      {
        break;
      }

      if (!v39)
      {
        if (v119)
        {
          v40 = (a1 | v106) & 7;
          if (((a1 | v106) & 7) != 0)
          {
            v41 = 0;
            v42 = v118;
            do
            {
              v43 = v38[v41];
              v38[v41] = v37[v41];
              v37[v41] = v43;
              --v42;
              ++v41;
            }

            while (v42 > 1);
          }

          else
          {
            v57 = v104 + 1;
            do
            {
              v58 = *&v38[v40];
              *&v38[v40] = *&v37[v40];
              *&v37[v40] = v58;
              v40 += 8;
              --v57;
            }

            while (v57 > 1);
          }
        }

        else
        {
          v56 = *v38;
          *v38 = *v37;
          *v37 = v56;
        }

        v38 += v116;
        v34 = 1;
      }

      v37 += v116;
    }

    while (v37 <= v36)
    {
      v51 = (a4)[2](a4, v36, a1);
      if (v51 < 0)
      {
        if (v119)
        {
          v52 = (a1 | v106) & 7;
          if (((a1 | v106) & 7) != 0)
          {
            v53 = 0;
            v54 = v118;
            do
            {
              v55 = v37[v53];
              v37[v53] = v36[v53];
              v36[v53] = v55;
              --v54;
              ++v53;
            }

            while (v54 > 1);
          }

          else
          {
            v60 = v104 + 1;
            do
            {
              v61 = *&v37[v52];
              *&v37[v52] = *&v36[v52];
              *&v36[v52] = v61;
              v52 += 8;
              --v60;
            }

            while (v60 > 1);
          }
        }

        else
        {
          v59 = *v37;
          *v37 = *v36;
          *v36 = v59;
        }

        v37 += v116;
        v36 += v10;
        v34 = 1;
        goto LABEL_56;
      }

      if (!v51)
      {
        if (v119)
        {
          v44 = (a1 | v106) & 7;
          if (((a1 | v106) & 7) != 0)
          {
            v45 = 0;
            v46 = v118;
            do
            {
              v47 = v36[v45];
              v36[v45] = v35[v45];
              v35[v45] = v47;
              --v46;
              ++v45;
            }

            while (v46 > 1);
          }

          else
          {
            v49 = v104 + 1;
            do
            {
              v50 = *&v36[v44];
              *&v36[v44] = *&v35[v44];
              *&v35[v44] = v50;
              v44 += 8;
              --v49;
            }

            while (v49 > 1);
          }
        }

        else
        {
          v48 = *v36;
          *v36 = *v35;
          *v35 = v48;
        }

        v35 += v10;
        v34 = 1;
      }

      v36 += v10;
    }

    v62 = v37 - v38;
    v108 = v37 - v38;
    if (v38 - a1 < v37 - v38)
    {
      v62 = v38 - a1;
    }

    if (v62)
    {
      v63 = &v37[-v62];
      if (((a1 | v106) & 7) != 0)
      {
        v64 = v62 + 1;
        v65 = a1;
        do
        {
          v66 = *v65;
          *v65++ = *v63;
          *v63++ = v66;
          --v64;
        }

        while (v64 > 1);
      }

      else
      {
        v67 = (v62 >> 3) + 1;
        v68 = a1;
        do
        {
          v69 = *v68;
          *v68 = *v63;
          v68 += 8;
          *v63 = v69;
          v63 += 8;
          --v67;
        }

        while (v67 > 1);
      }
    }

    v70 = v35 - v36;
    v115 = &a1[v111 * v116];
    v112 = v35 - v36;
    if (v35 - v36 >= (v115 - &v35[v116]))
    {
      v70 = v115 - &v35[v116];
    }

    if (v70)
    {
      v71 = &v115[-v70];
      if (((a1 | v106) & 7) != 0)
      {
        v72 = v70 + 1;
        do
        {
          v73 = *v37;
          *v37++ = *v71;
          *v71++ = v73;
          --v72;
        }

        while (v72 > 1);
      }

      else
      {
        v74 = (v70 >> 3) + 1;
        do
        {
          v75 = *v37;
          *v37 = *v71;
          v37 += 8;
          *v71 = v75;
          v71 += 8;
          --v74;
        }

        while (v74 > 1);
      }
    }

    if (!v34)
    {
      break;
    }

LABEL_110:
    if (v108 > v116)
    {
      v76 = v108 / v116;
      if (a6 && v76 > *(a6 + 40))
      {
        v77 = getargs(a6);
        if (!v77)
        {
          _psort_cold_1_0();
        }

        *v77 = a6;
        v77[1] = a1;
        v77[2] = v76;
        *(v77 + 6) = v110;
        dispatch_group_async_f(*(a6 + 56), *(a6 + 48), v77, _psort_parallel_0);
      }

      else
      {
        _psort_0(a1, v108 / v116, v116, a4, v110, 0);
      }
    }

    if (v112 <= v116)
    {
      return;
    }

    a3 = v116;
    a1 = &v115[-v112];
    a2 = v112 / v116;
    v9 = v110;
    if (v109 < 2)
    {
      goto LABEL_135;
    }
  }

  v78 = &a1[v116];
  if ((v111 * v116) > v116)
  {
    LODWORD(v79) = 0;
    v80 = a1;
    do
    {
      v79 = v79;
      v81 = v80;
      v113 = v78;
      while (v78 > a1)
      {
        v82 = v78;
        v78 += v10;
        if ((a4)[2](a4, v78, v82) < 1)
        {
          break;
        }

        if (v119)
        {
          v83 = (a1 | v106) & 7;
          if (((a1 | v106) & 7) != 0)
          {
            v84 = 0;
            v85 = v118;
            do
            {
              v86 = *(v82 + v84);
              *(v82 + v84) = *(v81 + v84);
              *(v81 + v84) = v86;
              --v85;
              ++v84;
            }

            while (v85 > 1);
          }

          else
          {
            v88 = v104 + 1;
            v89 = v78;
            do
            {
              v90 = *(v82 + v83);
              *(v82 + v83) = *v89;
              *v89 = v90;
              v89 += 8;
              v83 += 8;
              --v88;
            }

            while (v88 > 1);
          }
        }

        else
        {
          v87 = *v82;
          *v82 = *v78;
          *v78 = v87;
        }

        ++v79;
        v81 = (v81 + v10);
        if ((v111 >> 2) + 1 < v79)
        {
          goto LABEL_110;
        }
      }

      v78 = v113 + v116;
      v80 = (v80 + v116);
    }

    while (v113 + v116 < v115);
  }
}

void psort_r(void *__base, size_t __nel, size_t __width, void *a4, int (__cdecl *__compar)(void *, const void *, const void *))
{
  if (__nel >= 0x7D0 && (_get_cpu_capabilities() & 0xFE0000) != 0 && (v18 = 0u, *group = 0u, *v16 = 0u, v17 = 0u, v15 = 0u, (v10 = getargs_0(&v15)) != 0))
  {
    v11 = v10;
    *&v15 = "psort_r";
    v16[1] = a4;
    *&v17 = __compar;
    *(&v17 + 1) = __width;
    *(&v18 + 1) = dispatch_get_global_queue(0, 0);
    group[0] = dispatch_group_create();
    *(v11 + 8) = __base;
    *(v11 + 16) = __nel;
    *(v11 + 24) = 2 * flsl(__nel) - 2;
    *v11 = &v15;
    v12 = flsl(__nel);
    *&v18 = ((1 << (v12 / 2)) + (__nel >> (v12 / 2))) >> 1;
    _psort_parallel_1(v11);
    dispatch_group_wait(group[0], 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(group[0]);
    v13 = v16[0];
    if (v16[0])
    {
      do
      {
        v14 = *v13;
        munmap(v13, 0x1000uLL);
        v13 = v14;
      }

      while (v14);
    }
  }

  else
  {
    qsort_r(__base, __nel, __width, a4, __compar);
  }
}

void *getargs_0(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 72));
  v2 = *(a1 + 8);
  if (!v2)
  {
    v3 = mmap(0, 0x1000uLL, 3, 4098, -1, 0);
    if (!v3)
    {
      return 0;
    }

    v4 = 0;
    *v3 = *(a1 + 16);
    v2 = v3 - 3;
    *(a1 + 16) = v3;
    v5 = v3 + 1;
    for (i = 128; i > 1; --i)
    {
      v2[4] = v4;
      v2 += 4;
      v4 = v5;
      v5 += 4;
    }

    *(a1 + 8) = v2;
  }

  *(a1 + 8) = *v2;
  os_unfair_lock_unlock((a1 + 72));
  return v2;
}

void _psort_parallel_1(uint64_t a1)
{
  v2 = *a1;
  _psort_1(*(a1 + 8), *(a1 + 16), *(v2 + 40), *(v2 + 24), *(v2 + 32), *(a1 + 24), v2);
  os_unfair_lock_lock((v2 + 72));
  *a1 = *(v2 + 8);
  *(v2 + 8) = a1;

  os_unfair_lock_unlock((v2 + 72));
}

void _psort_1(char *a1, unint64_t a2, int64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, char *, char *), int a6, uint64_t a7)
{
  if (a6 < 1)
  {
LABEL_135:

    __heapsort_r(a1, a2, a3, a4, a5);
    return;
  }

  v11 = a6;
  v12 = -a3;
  v106 = a3 != 8;
  v107 = a3;
  v105 = a3 >> 3;
  v120 = a3 + 1;
  v118 = a3;
  while (1)
  {
    v13 = v106;
    if (((a1 | v107) & 7) != 0)
    {
      v13 = 2;
    }

    v121 = v13;
    if (a2 <= 6)
    {
      if ((a2 * a3) > a3)
      {
        v119 = &a1[a2 * a3];
        v92 = &a1[v118];
        v93 = a1;
        do
        {
          if (v92 > a1)
          {
            v94 = v93;
            v95 = v92;
            do
            {
              v96 = v95;
              v95 += v12;
              if (a5(a4, v95, v96) < 1)
              {
                break;
              }

              if (v121)
              {
                v97 = (a1 | v107) & 7;
                if (((a1 | v107) & 7) != 0)
                {
                  v98 = 0;
                  v99 = v107 + 1;
                  do
                  {
                    v100 = v96[v98];
                    v96[v98] = v94[v98];
                    v94[v98] = v100;
                    --v99;
                    ++v98;
                  }

                  while (v99 > 1);
                }

                else
                {
                  v102 = v105 + 1;
                  v103 = v95;
                  do
                  {
                    v104 = *&v96[v97];
                    *&v96[v97] = *v103;
                    *v103 = v104;
                    v103 += 8;
                    v97 += 8;
                    --v102;
                  }

                  while (v102 > 1);
                }
              }

              else
              {
                v101 = *v96;
                *v96 = *v95;
                *v95 = v101;
              }

              v94 += v12;
            }

            while (v95 > a1);
          }

          v92 += v118;
          v93 += v118;
        }

        while (v92 < v119);
      }

      return;
    }

    v14 = &a1[(a2 >> 1) * a3];
    v111 = a2;
    v110 = v11;
    if (a2 != 7)
    {
      v15 = &a1[(a2 - 1) * a3];
      if (a2 < 0x29)
      {
        v20 = a1;
LABEL_38:
        v26 = a5(a4, v20, v14);
        v27 = a5(a4, v14, v15);
        if (v26 < 0)
        {
          if ((v27 & 0x80000000) == 0)
          {
            if (a5(a4, v20, v15) >= 0)
            {
              v14 = v20;
            }

            else
            {
              v14 = v15;
            }
          }
        }

        else if (v27 <= 0)
        {
          if (a5(a4, v20, v15) >= 0)
          {
            v14 = v15;
          }

          else
          {
            v14 = v20;
          }
        }

        goto LABEL_47;
      }

      v114 = &a1[(a2 - 1) * a3];
      v16 = (a2 >> 3) * a3;
      v17 = a5(a4, a1, &a1[v16]);
      v116 = &a1[v16];
      v18 = a5(a4, &a1[v16], &a1[2 * v16]);
      if (v17 < 0)
      {
        if ((v18 & 0x80000000) == 0)
        {
          if (a5(a4, a1, &a1[2 * v16]) >= 0)
          {
            v19 = a1;
          }

          else
          {
            v19 = &a1[2 * v16];
          }

          goto LABEL_18;
        }
      }

      else if (v18 <= 0)
      {
        if (a5(a4, a1, &a1[2 * v16]) >= 0)
        {
          v19 = &a1[2 * v16];
        }

        else
        {
          v19 = a1;
        }

LABEL_18:
        v116 = v19;
      }

      v21 = a5(a4, &v14[-v16], v14);
      v22 = a5(a4, v14, &v14[v16]);
      if (v21 < 0)
      {
        if ((v22 & 0x80000000) == 0)
        {
          if (a5(a4, &v14[-v16], &v14[v16]) >= 0)
          {
            v14 -= v16;
          }

          else
          {
            v14 += v16;
          }
        }
      }

      else if (v22 <= 0)
      {
        if (a5(a4, &v14[-v16], &v14[v16]) >= 0)
        {
          v14 += v16;
        }

        else
        {
          v14 -= v16;
        }
      }

      v23 = &v114[-2 * v16];
      v15 = &v114[-v16];
      v24 = a5(a4, v23, &v114[-v16]);
      v25 = a5(a4, &v114[-v16], v114);
      if (v24 < 0)
      {
        v20 = v116;
        if ((v25 & 0x80000000) == 0)
        {
          if (a5(a4, v23, v114) >= 0)
          {
            v15 = v23;
          }

          else
          {
            v15 = v114;
          }
        }
      }

      else
      {
        v20 = v116;
        if (v25 <= 0)
        {
          if (a5(a4, v23, v114) >= 0)
          {
            v15 = v114;
          }

          else
          {
            v15 = v23;
          }
        }
      }

      v11 = v110;
      a2 = v111;
      goto LABEL_38;
    }

LABEL_47:
    if (v121)
    {
      if (((a1 | v107) & 7) != 0)
      {
        v28 = v120;
        v29 = a1;
        do
        {
          v30 = *v29;
          *v29++ = *v14;
          *v14++ = v30;
          --v28;
        }

        while (v28 > 1);
      }

      else
      {
        v32 = v105 + 1;
        v33 = a1;
        do
        {
          v34 = *v33;
          *v33 = *v14;
          v33 += 8;
          *v14 = v34;
          v14 += 8;
          --v32;
        }

        while (v32 > 1);
      }
    }

    else
    {
      v31 = *a1;
      *a1 = *v14;
      *v14 = v31;
    }

    v35 = 0;
    v112 = v11 - 1;
    v36 = &a1[(a2 - 1) * v118];
    v37 = v36;
    v38 = &a1[v118];
    v39 = &a1[v118];
LABEL_56:
    while (v38 <= v37)
    {
      v40 = a5(a4, v38, a1);
      if (v40 > 0)
      {
        break;
      }

      if (!v40)
      {
        if (v121)
        {
          v41 = (a1 | v107) & 7;
          if (((a1 | v107) & 7) != 0)
          {
            v42 = 0;
            v43 = v120;
            do
            {
              v44 = v39[v42];
              v39[v42] = v38[v42];
              v38[v42] = v44;
              --v43;
              ++v42;
            }

            while (v43 > 1);
          }

          else
          {
            v58 = v105 + 1;
            do
            {
              v59 = *&v39[v41];
              *&v39[v41] = *&v38[v41];
              *&v38[v41] = v59;
              v41 += 8;
              --v58;
            }

            while (v58 > 1);
          }
        }

        else
        {
          v57 = *v39;
          *v39 = *v38;
          *v38 = v57;
        }

        v39 += v118;
        v35 = 1;
      }

      v38 += v118;
    }

    while (v38 <= v37)
    {
      v52 = a5(a4, v37, a1);
      if (v52 < 0)
      {
        if (v121)
        {
          v53 = (a1 | v107) & 7;
          if (((a1 | v107) & 7) != 0)
          {
            v54 = 0;
            v55 = v120;
            do
            {
              v56 = v38[v54];
              v38[v54] = v37[v54];
              v37[v54] = v56;
              --v55;
              ++v54;
            }

            while (v55 > 1);
          }

          else
          {
            v61 = v105 + 1;
            do
            {
              v62 = *&v38[v53];
              *&v38[v53] = *&v37[v53];
              *&v37[v53] = v62;
              v53 += 8;
              --v61;
            }

            while (v61 > 1);
          }
        }

        else
        {
          v60 = *v38;
          *v38 = *v37;
          *v37 = v60;
        }

        v38 += v118;
        v37 += v12;
        v35 = 1;
        goto LABEL_56;
      }

      if (!v52)
      {
        if (v121)
        {
          v45 = (a1 | v107) & 7;
          if (((a1 | v107) & 7) != 0)
          {
            v46 = 0;
            v47 = v120;
            do
            {
              v48 = v37[v46];
              v37[v46] = v36[v46];
              v36[v46] = v48;
              --v47;
              ++v46;
            }

            while (v47 > 1);
          }

          else
          {
            v50 = v105 + 1;
            do
            {
              v51 = *&v37[v45];
              *&v37[v45] = *&v36[v45];
              *&v36[v45] = v51;
              v45 += 8;
              --v50;
            }

            while (v50 > 1);
          }
        }

        else
        {
          v49 = *v37;
          *v37 = *v36;
          *v36 = v49;
        }

        v36 += v12;
        v35 = 1;
      }

      v37 += v12;
    }

    v63 = v38 - v39;
    v109 = v38 - v39;
    if (v39 - a1 < v38 - v39)
    {
      v63 = v39 - a1;
    }

    if (v63)
    {
      v64 = &v38[-v63];
      if (((a1 | v107) & 7) != 0)
      {
        v65 = v63 + 1;
        v66 = a1;
        do
        {
          v67 = *v66;
          *v66++ = *v64;
          *v64++ = v67;
          --v65;
        }

        while (v65 > 1);
      }

      else
      {
        v68 = (v63 >> 3) + 1;
        v69 = a1;
        do
        {
          v70 = *v69;
          *v69 = *v64;
          v69 += 8;
          *v64 = v70;
          v64 += 8;
          --v68;
        }

        while (v68 > 1);
      }
    }

    v71 = v36 - v37;
    v117 = &a1[v111 * v118];
    v113 = v36 - v37;
    if (v36 - v37 >= (v117 - &v36[v118]))
    {
      v71 = v117 - &v36[v118];
    }

    if (v71)
    {
      v72 = &v117[-v71];
      if (((a1 | v107) & 7) != 0)
      {
        v73 = v71 + 1;
        do
        {
          v74 = *v38;
          *v38++ = *v72;
          *v72++ = v74;
          --v73;
        }

        while (v73 > 1);
      }

      else
      {
        v75 = (v71 >> 3) + 1;
        do
        {
          v76 = *v38;
          *v38 = *v72;
          v38 += 8;
          *v72 = v76;
          v72 += 8;
          --v75;
        }

        while (v75 > 1);
      }
    }

    if (!v35)
    {
      break;
    }

LABEL_110:
    if (v109 > v118)
    {
      v77 = v109 / v118;
      if (a7 && v77 > *(a7 + 48))
      {
        v78 = getargs_0(a7);
        if (!v78)
        {
          _psort_cold_1_1();
        }

        *v78 = a7;
        v78[1] = a1;
        v78[2] = v77;
        *(v78 + 6) = v112;
        dispatch_group_async_f(*(a7 + 64), *(a7 + 56), v78, _psort_parallel_1);
      }

      else
      {
        _psort_1(a1, v109 / v118, v118, a4, a5, v112, 0);
      }
    }

    if (v113 <= v118)
    {
      return;
    }

    a3 = v118;
    a1 = &v117[-v113];
    a2 = v113 / v118;
    v11 = v112;
    if (v110 < 2)
    {
      goto LABEL_135;
    }
  }

  v79 = &a1[v118];
  if ((v111 * v118) > v118)
  {
    LODWORD(v80) = 0;
    v81 = a1;
    do
    {
      v80 = v80;
      v82 = v81;
      v115 = v79;
      while (v79 > a1)
      {
        v83 = v79;
        v79 += v12;
        if (a5(a4, v79, v83) < 1)
        {
          break;
        }

        if (v121)
        {
          v84 = (a1 | v107) & 7;
          if (((a1 | v107) & 7) != 0)
          {
            v85 = 0;
            v86 = v120;
            do
            {
              v87 = v83[v85];
              v83[v85] = v82[v85];
              v82[v85] = v87;
              --v86;
              ++v85;
            }

            while (v86 > 1);
          }

          else
          {
            v89 = v105 + 1;
            v90 = v79;
            do
            {
              v91 = *&v83[v84];
              *&v83[v84] = *v90;
              *v90 = v91;
              v90 += 8;
              v84 += 8;
              --v89;
            }

            while (v89 > 1);
          }
        }

        else
        {
          v88 = *v83;
          *v83 = *v79;
          *v79 = v88;
        }

        ++v80;
        v82 += v12;
        if ((v111 >> 2) + 1 < v80)
        {
          goto LABEL_110;
        }
      }

      v79 = &v115[v118];
      v81 += v118;
    }

    while (&v115[v118] < v117);
  }
}