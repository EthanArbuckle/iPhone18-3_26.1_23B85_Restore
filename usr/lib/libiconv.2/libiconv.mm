uint64_t __bsd___iconv_open(const char *a1, uint64_t a2, uint64_t *a3)
{
  v12 = a3;
  v4 = *__error();
  v5 = _citrus_iconv_open(&v12);
  if (v5)
  {
    if (v5 == 2)
    {
      v6 = 22;
    }

    else
    {
      v6 = v5;
    }

    *__error() = v6;
    return -1;
  }

  else
  {
    *__error() = v4;
    v8 = strcasestr(a1, "//IGNORE") != 0;
    v9 = *v12;
    *(v9 + 72) = v8;
    *(v9 + 88) = 1;
    v10 = strcasestr(a1, "//TRANSLIT") != 0;
    result = v12;
    v11 = *v12;
    *(v11 + 73) = v10;
    *(v11 + 80) = 0;
  }

  return result;
}

uint64_t _citrus_iconv_open(void **a1)
{
  v36 = *MEMORY[0x29EDCA608];
  pthread_rwlock_wrlock(&ci_lock);
  if ((isinit & 1) == 0)
  {
    bzero(&shared_pool, 0x328uLL);
    shared_unused = 0;
    qword_2A18B8C30 = &shared_unused;
    shared_max_reuse = -1;
    if (issetugid() || (v8 = getenv("ICONV_MAX_REUSE")) == 0)
    {
      if ((shared_max_reuse & 0x80000000) == 0)
      {
LABEL_5:
        isinit = 1;
        goto LABEL_6;
      }
    }

    else
    {
      shared_max_reuse = atoi(v8);
      if ((shared_max_reuse & 0x80000000) == 0)
      {
        goto LABEL_5;
      }
    }

    shared_max_reuse = 5;
    goto LABEL_5;
  }

LABEL_6:
  pthread_rwlock_unlock(&ci_lock);
  __strlcpy_chk();
  v2 = strstr(__s1, "//");
  if (v2)
  {
    *v2 = 0;
  }

  __strlcpy_chk();
  v3 = strstr(__s, "//");
  if (v3)
  {
    *v3 = 0;
  }

  if (!__s1[0] || !strcasecmp(__s1, "char"))
  {
    locale_charset();
    v4 = 0;
LABEL_15:
    __strlcpy_chk();
    goto LABEL_16;
  }

  if (!strcasecmp(__s1, "wchar_t"))
  {
    nl_langinfo(0);
    v4 = 1;
    goto LABEL_15;
  }

  v4 = 0;
LABEL_16:
  if (!__s[0] || !strcasecmp(__s, "char"))
  {
    locale_charset();
    goto LABEL_21;
  }

  if (!strcasecmp(__s, "wchar_t"))
  {
    v4 |= 2u;
    nl_langinfo(0);
LABEL_21:
    __strlcpy_chk();
  }

  if (strchr(__s1, 47) || strchr(__s, 47))
  {
    v5 = 22;
    goto LABEL_25;
  }

  snprintf(__str, 0x400uLL, "%s/%s", __s1, __s);
  pthread_rwlock_wrlock(&ci_lock);
  v9 = (&shared_pool + 8 * _string_hash_func(__str, 0x65u));
  v10 = *v9;
  if (*v9)
  {
    while (strcmp(*(v10 + 64), __str))
    {
      v10 = *(v10 + 16);
      if (!v10)
      {
        goto LABEL_33;
      }
    }

    v19 = *(v10 + 56);
    if (!v19)
    {
      v20 = *(v10 + 32);
      v21 = *(v10 + 40);
      v22 = (v20 + 40);
      if (!v20)
      {
        v22 = &qword_2A18B8C30;
      }

      *v22 = v21;
      *v21 = v20;
      --shared_num_unused;
    }

    v23 = v19 + 1;
    goto LABEL_57;
  }

LABEL_33:
  if (v4 == 3)
  {
    v11 = "iconv_none";
  }

  else
  {
    v11 = "iconv_std";
  }

  v12 = strlen(__str);
  v13 = malloc_type_malloc(v12 + 97, 0x10B0040813AC877uLL);
  if (!v13)
  {
    v5 = *__error();
    if (v5)
    {
LABEL_46:
      pthread_rwlock_unlock(&ci_lock);
      goto LABEL_25;
    }

    goto LABEL_53;
  }

  v10 = v13;
  v13[6] = 0;
  v14 = (v13 + 6);
  v15 = v13 + 12;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 64) = v15;
  memcpy(v15, __str, v12 + 1);
  module = _citrus_load_module(v14, v11);
  if (module)
  {
    goto LABEL_38;
  }

  getops = _citrus_find_getops(*v14, v11, "iconv");
  if (getops)
  {
    v29 = getops;
    v30 = malloc_type_malloc(0x28uLL, 0x800402FCC0CB6uLL);
    *v10 = v30;
    if (v30)
    {
      module = v29();
      if (module)
      {
LABEL_38:
        v5 = module;
        goto LABEL_39;
      }

      v31 = *v10;
      v32 = **v10;
      if (v32 && v31[1] && v31[2] && v31[3] && v31[4])
      {
        module = v32(v10, __s1, __s);
        if (!module)
        {
          goto LABEL_54;
        }

        goto LABEL_38;
      }

      v5 = 22;
    }

    else
    {
      v5 = *__error();
    }
  }

  else
  {
    v5 = 102;
  }

LABEL_39:
  v17 = *v14;
  if (*v14)
  {
    v18 = *v10;
    if (*v10)
    {
      if (*(v10 + 8))
      {
        (v18[1])(v10);
        v18 = *v10;
      }

      free(v18);
      v17 = *v14;
    }

    _citrus_unload_module(v17);
  }

  free(v10);
  if (v5)
  {
    goto LABEL_46;
  }

LABEL_53:
  v10 = 0;
LABEL_54:
  v24 = *v9;
  *(v10 + 16) = *v9;
  if (v24)
  {
    *(v24 + 24) = v10 + 16;
  }

  *v9 = v10;
  *(v10 + 24) = v9;
  v23 = 1;
LABEL_57:
  *(v10 + 56) = v23;
  pthread_rwlock_unlock(&ci_lock);
  v25 = *a1;
  if (*a1)
  {
    v26 = 0;
  }

  else
  {
    v27 = malloc_type_malloc(0x20uLL, 0x10A00409968B0C6uLL);
    if (!v27)
    {
      v5 = *__error();
      release_shared(v10);
      goto LABEL_25;
    }

    v25 = v27;
    *a1 = v27;
    v26 = v27;
  }

  *v25 = v10;
  v5 = (*(*v10 + 16))(v25);
  v25[2] = 0;
  *(v25 + 6) = v4;
  if (v5)
  {
    release_shared(v10);
    free(v26);
  }

LABEL_25:
  v6 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t _string_hash_func(const char *a1, unsigned int a2)
{
  v4[0] = a1;
  v4[1] = strlen(a1);
  return _citrus_db_hash_std(v4) % a2;
}

unint64_t _citrus_db_hash_std(unint64_t result)
{
  v1 = *(result + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = *v2;
  do
  {
    v5 = *v3++;
    v4 = v5;
    v6 = v5 + 32;
    if ((v5 - 91) >= 0xFFFFFFE6)
    {
      v4 = v6;
    }

    v7 = v4 + 16 * result;
    if ((v7 & 0xF0000000) != 0)
    {
      result = v7 & 0xFFFFFFF ^ ((v7 & 0xF0000000) >> 24);
    }

    else
    {
      result = v7;
    }

    --v1;
  }

  while (v1);
  return result;
}

uint64_t __bsd_iconv(uint64_t a1)
{
  if ((a1 + 1) > 1)
  {
    v1 = (*(**a1 + 32))();
    if (!v1)
    {
      return 0;
    }

    *__error() = v1;
  }

  else
  {
    *__error() = 9;
  }

  return -1;
}

uint64_t __bsd_iconv_close(uint64_t *a1)
{
  if (a1 + 1 > 1)
  {
    _citrus_iconv_close(a1);
    return 0;
  }

  else
  {
    *__error() = 9;
    return 0xFFFFFFFFLL;
  }
}

void _citrus_iconv_close(uint64_t *a1)
{
  if (a1)
  {
    (*(**a1 + 24))();
    release_shared(*a1);

    free(a1);
  }
}

uint64_t release_shared(uint64_t a1)
{
  pthread_rwlock_wrlock(&ci_lock);
  v2 = *(a1 + 56) - 1;
  *(a1 + 56) = v2;
  if (!v2)
  {
    v3 = shared_num_unused;
    v4 = ++shared_num_unused;
    *(a1 + 32) = 0;
    v5 = qword_2A18B8C30;
    *(a1 + 40) = qword_2A18B8C30;
    *v5 = a1;
    qword_2A18B8C30 = a1 + 32;
    v6 = shared_max_reuse;
    if (v3 >= shared_max_reuse)
    {
      do
      {
        v7 = &qword_2A18B8C30;
        v8 = shared_unused;
        v9 = *(shared_unused + 32);
        v10 = *(shared_unused + 40);
        if (v9)
        {
          v7 = (v9 + 40);
        }

        *v7 = v10;
        *v10 = v9;
        v11 = v8[2];
        v12 = v8[3];
        if (v11)
        {
          *(v11 + 24) = v12;
        }

        *v12 = v11;
        shared_num_unused = --v4;
        v13 = v8[6];
        if (v13)
        {
          v14 = *v8;
          if (*v8)
          {
            if (v8[1])
            {
              (v14)[1](v8);
              v14 = *v8;
            }

            free(v14);
            v13 = v8[6];
          }

          _citrus_unload_module(v13);
          v4 = shared_num_unused;
          v6 = shared_max_reuse;
        }

        free(v8);
      }

      while (v4 > v6);
    }
  }

  return pthread_rwlock_unlock(&ci_lock);
}

uint64_t __bsd_iconv_open_into(const char *a1, uint64_t a2, uint64_t *a3)
{
  if (__bsd___iconv_open(a1, a2, a3) == -1)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t __bsd___iconv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if ((a1 + 1) > 1)
  {
    v8 = (*(**a1 + 32))();
    if (a7)
    {
      *a7 = 0;
    }

    if (!v8)
    {
      return 0;
    }

    *__error() = v8;
  }

  else
  {
    *__error() = 9;
  }

  return -1;
}

uint64_t __bsd___iconv_get_list(void *a1, uint64_t *a2, char a3)
{
  result = _citrus_esdb_get_list(a1, a2, a3);
  if (result)
  {
    *__error() = result;
    return 0xFFFFFFFFLL;
  }

  return result;
}

void __bsd_iconvlist(void (*a1)(uint64_t, char **, uint64_t), uint64_t a2)
{
  v25 = 0;
  v26 = 0;
  list = _citrus_esdb_get_list(&v26, &v25, 1);
  if (list)
  {
    *__error() = list;
  }

  else
  {
    qsort(v26, v25, 8uLL, qsort_helper);
    v5 = v25;
    if (v25)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = strchr(*(v26 + v6), 47);
        v9 = malloc_type_malloc(8 * v5, 0x10040436913F5uLL);
        if (!v9)
        {
          break;
        }

        v10 = v9;
        v11 = strndup(*(v26 + v6), &v8[-*(v26 + v6)]);
        if (!v11)
        {
LABEL_25:
          free(v10);
          break;
        }

        v12 = v11;
        *v10 = v11;
        v13 = v25;
        if (v25 <= v7)
        {
          LODWORD(v15) = 1;
          a1(1, v10, a2);
        }

        else
        {
          v14 = v7;
          v15 = 1;
          while (1)
          {
            v16 = *(v26 + v14);
            v17 = strlen(v12);
            if (strncmp(v12, v16, v17))
            {
              break;
            }

            v18 = strchr(v16, 47);
            if (strcmp(v12, v18 + 1))
            {
              v19 = strdup(v18 + 1);
              if (!v19)
              {
                if (v15)
                {
                  v22 = v15;
                  v23 = v10;
                  do
                  {
                    v24 = *v23++;
                    free(v24);
                    --v22;
                  }

                  while (v22);
                }

                goto LABEL_25;
              }

              v10[v15] = v19;
              v15 = (v15 + 1);
            }

            v14 = (v7 + 1);
            v7 = v14;
            if (v13 <= v14)
            {
              goto LABEL_17;
            }
          }

          v14 = v7;
LABEL_17:
          a1(v15, v10, a2);
          v7 = v14;
          if (!v15)
          {
            goto LABEL_20;
          }
        }

        v15 = v15;
        v20 = v10;
        do
        {
          v21 = *v20++;
          free(v21);
          --v15;
        }

        while (v15);
LABEL_20:
        free(v10);
        v6 = v7;
        v5 = v25;
      }

      while (v25 > v7);
    }

    if (v26)
    {
      _citrus_esdb_free_list(v26, v25);
    }
  }
}

double __bsd_iconvctl(void *a1, int a2, __int128 *a3)
{
  if (a1 + 1 <= 1)
  {
    v3 = __error();
    v5 = 9;
LABEL_3:
    *v3 = v5;
    return *&v4;
  }

  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        *(*a1 + 73) = *a3 != 0;
        return *&v4;
      }

      v8 = *(*a1 + 72);
    }

    else if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_28;
      }

      v8 = *(*a1 + 73);
    }

    else
    {
      v9 = *(*a1 + 64);
      v10 = strchr(v9, 47);
      v8 = v10 - v9 == strlen(v10 + 1) && memcmp(v9, v10 + 1, v10 - v9) == 0;
    }

    goto LABEL_30;
  }

  if (a2 <= 5)
  {
    if (a2 == 4)
    {
      *(*a1 + 72) = *a3 != 0;
    }

    else
    {
      *(*a1 + 80) = a3;
    }
  }

  else
  {
    if (a2 != 6)
    {
      if (a2 != 128)
      {
        if (a2 == 129)
        {
          *(*a1 + 88) = *a3 != 0;
          return *&v4;
        }

LABEL_28:
        v3 = __error();
        v5 = 22;
        goto LABEL_3;
      }

      v8 = *(*a1 + 88);
LABEL_30:
      *a3 = v8;
      return *&v4;
    }

    v11 = a1[2];
    if (a3)
    {
      if (v11 || (v11 = malloc_type_malloc(0x28uLL, 0x800402FCC0CB6uLL), (a1[2] = v11) != 0))
      {
        v4 = *a3;
        v12 = a3[1];
        v11[4] = *(a3 + 4);
        *v11 = v4;
        *(v11 + 1) = v12;
      }
    }

    else if (v11)
    {
      v11[4] = 0;
      *&v4 = 0;
      *v11 = 0u;
      *(v11 + 1) = 0u;
    }
  }

  return *&v4;
}

int64_t _citrus_bcs_strtol(unsigned __int8 *a1, unsigned __int8 **a2, int a3)
{
  v3 = a2;
  v4 = a1;
  if (a3 && (a3 - 37) < 0xFFFFFFDD)
  {
    v5 = __error();
    result = 0;
    *v5 = 22;
    if (v3)
    {
      goto LABEL_55;
    }

    return result;
  }

  for (i = a1 + 1; ; ++i)
  {
    v8 = *(i - 1);
    if ((v8 - 9) >= 5 && v8 != 32)
    {
      break;
    }
  }

  if (v8 == 43 || v8 == 45)
  {
    v10 = *i++;
    v9 = v10;
  }

  else
  {
    v9 = *(i - 1);
  }

  if ((a3 & 0x2F) != 0 || v9 != 48)
  {
    v12 = a3 == 0;
    if (v9 != 48)
    {
      v11 = 10;
      goto LABEL_21;
    }

LABEL_20:
    v11 = 8;
LABEL_21:
    if (!v12)
    {
      v11 = a3;
    }

    goto LABEL_23;
  }

  if ((*i | 0x20) != 0x78)
  {
    v12 = a3 == 0;
    v9 = 48;
    goto LABEL_20;
  }

  v9 = i[1];
  i += 2;
  v11 = 16;
LABEL_23:
  result = 0;
  v13 = 0;
  v14 = 0xFFFFFFFF80000000;
  if (v8 != 45)
  {
    v14 = 0x7FFFFFFFLL;
  }

  v15 = v11;
  v16 = v14 / v11;
  v17 = v14 % v11;
  if (v17 > 0)
  {
    v18 = v8 == 45;
  }

  else
  {
    v11 = 0;
    v18 = 0;
  }

  v19 = v11 - v17;
  v20 = v16 + v18;
  for (j = i - 1; ; ++j)
  {
    if ((v9 - 58) >= 0xF6u)
    {
      v23 = v9 - 48;
    }

    else
    {
      if (((v9 & 0xDF) - 91) < 0xE6u)
      {
        break;
      }

      v22 = (v9 - 91) >= 0xE6u ? -55 : -87;
      v23 = v22 + v9;
    }

    if (v23 >= v15)
    {
      break;
    }

    if (v13 < 0)
    {
      v13 = -1;
      goto LABEL_51;
    }

    if (v8 == 45)
    {
      if (result < v20 || result == v20 && v23 > v19)
      {
        *__error() = 34;
        v13 = -1;
        result = 0xFFFFFFFF80000000;
        goto LABEL_51;
      }

      result = result * v15 - v23;
    }

    else
    {
      if (result > v20 || result == v20 && v23 > v17)
      {
        *__error() = 34;
        v13 = -1;
        result = 0x7FFFFFFFLL;
        goto LABEL_51;
      }

      result = result * v15 + v23;
    }

    v13 = 1;
LABEL_51:
    v24 = j[1];
    v9 = v24;
  }

  v3 = a2;
  if (a2)
  {
    if (v13)
    {
      v4 = j;
    }

LABEL_55:
    *v3 = v4;
  }

  return result;
}

unint64_t _citrus_bcs_strtoul(unsigned __int8 *a1, unsigned __int8 **a2, int a3)
{
  if (a3 && (a3 - 37) < 0xFFFFFFDD)
  {
    v5 = __error();
    result = 0;
    *v5 = 22;
    return result;
  }

  for (i = a1 + 1; ; ++i)
  {
    v8 = *(i - 1);
    if ((v8 - 9) >= 5 && v8 != 32)
    {
      break;
    }
  }

  if (v8 == 43 || v8 == 45)
  {
    v10 = *i++;
    v9 = v10;
  }

  else
  {
    v9 = *(i - 1);
  }

  if ((a3 & 0x2F) != 0 || v9 != 48)
  {
    v12 = a3 == 0;
    if (v9 != 48)
    {
      v13 = 10;
      goto LABEL_20;
    }

LABEL_19:
    v13 = 8;
LABEL_20:
    if (v12)
    {
      v11 = v13;
    }

    else
    {
      v11 = a3;
    }

    goto LABEL_23;
  }

  if ((*i | 0x20) != 0x78)
  {
    v12 = a3 == 0;
    v9 = 48;
    goto LABEL_19;
  }

  v9 = i[1];
  i += 2;
  v11 = 16;
LABEL_23:
  v14 = 0;
  v15 = 0;
  v16 = v11;
  v17 = 0xFFFFFFFFuLL / v11;
  v18 = ~(v17 * v11);
  for (j = i - 1; ; ++j)
  {
    if ((v9 - 58) >= 0xF6u)
    {
      v21 = v9 - 48;
    }

    else
    {
      if (((v9 & 0xDF) - 91) < 0xE6u)
      {
        break;
      }

      v20 = (v9 - 91) >= 0xE6u ? -55 : -87;
      v21 = v20 + v9;
    }

    if (v21 >= v16)
    {
      break;
    }

    if (v15 < 0)
    {
      goto LABEL_37;
    }

    if (v14 > v17 || v14 == v17 && v21 > v18)
    {
      *__error() = 34;
      v14 = 0xFFFFFFFFLL;
LABEL_37:
      v15 = -1;
      goto LABEL_38;
    }

    v14 = v14 * v16 + v21;
    v15 = 1;
LABEL_38:
    v22 = j[1];
    v9 = v22;
  }

  if (v15 > 0 && v8 == 45)
  {
    result = -v14;
  }

  else
  {
    result = v14;
  }

  if (a2)
  {
    if (v15)
    {
      v24 = j;
    }

    else
    {
      v24 = a1;
    }

    *a2 = v24;
  }

  return result;
}

uint64_t _citrus_bcs_strcasecmp(unsigned __int8 *a1, unsigned __int8 *a2)
{
  do
  {
    v3 = *a1++;
    v2 = v3;
    v4 = v3 - 32;
    if ((v3 - 123) >= 0xE6u)
    {
      v2 = v4;
    }

    v6 = *a2++;
    v5 = v6;
    v7 = v6 - 32;
    if ((v6 - 123) >= 0xE6u)
    {
      v5 = v7;
    }

    if (v2)
    {
      v8 = v5 == 0;
    }

    else
    {
      v8 = 1;
    }
  }

  while (!v8 && v2 == v5);
  v9 = v2 == v5;
  if (v2 > v5)
  {
    v10 = 1;
  }

  else
  {
    v10 = -1;
  }

  if (v9)
  {
    return 0;
  }

  else
  {
    return v10;
  }
}

uint64_t _citrus_bcs_strncasecmp(char *a1, char *a2, uint64_t a3)
{
  v3 = 1;
  v4 = 1;
  do
  {
    v6 = a3-- != 0;
    if (v4 != v3 || !v6)
    {
      break;
    }

    v7 = *a1++;
    LOBYTE(v4) = v7;
    v8 = v7 - 32;
    if ((v7 - 123) >= 0xE6u)
    {
      LOBYTE(v4) = v8;
    }

    v4 = v4;
    v9 = *a2++;
    LOBYTE(v3) = v9;
    v10 = v9 - 32;
    if ((v9 - 123) >= 0xE6u)
    {
      LOBYTE(v3) = v10;
    }

    v3 = v3;
  }

  while (v4 && v3 != 0);
  v12 = v4 == v3;
  if (v4 > v3)
  {
    v13 = 1;
  }

  else
  {
    v13 = -1;
  }

  if (v12)
  {
    return 0;
  }

  else
  {
    return v13;
  }
}

unsigned __int8 *_citrus_bcs_skip_ws(unsigned __int8 *result)
{
  while (1)
  {
    v1 = *result;
    if ((v1 - 9) >= 5 && v1 != 32)
    {
      break;
    }

    ++result;
  }

  return result;
}

unsigned __int8 *_citrus_bcs_skip_nonws(unsigned __int8 *result)
{
  while (1)
  {
    v1 = *result;
    v2 = v1 > 0x20;
    v3 = (1 << v1) & 0x100003E01;
    if (!v2 && v3 != 0)
    {
      break;
    }

    ++result;
  }

  return result;
}

unsigned __int8 *_citrus_bcs_skip_ws_len(unsigned __int8 *result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = &result[v2];
    v4 = v2 - 1;
    while (1)
    {
      v5 = *result;
      if ((v5 - 9) >= 5 && v5 != 32)
      {
        break;
      }

      ++result;
      *a2 = v4--;
      if (v4 == -1)
      {
        return v3;
      }
    }
  }

  return result;
}

unsigned __int8 *_citrus_bcs_skip_nonws_len(unsigned __int8 *result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = &result[v2];
    v4 = v2 - 1;
    while (1)
    {
      v5 = *result;
      v6 = v5 > 0x20;
      v7 = (1 << v5) & 0x100003E01;
      if (!v6 && v7 != 0)
      {
        break;
      }

      ++result;
      *a2 = v4--;
      if (v4 == -1)
      {
        return v3;
      }
    }
  }

  return result;
}

uint64_t _citrus_bcs_trunc_rws_len(uint64_t result, void *a2)
{
  if (*a2)
  {
    v2 = *a2 - 1;
    do
    {
      v3 = *(result + v2);
      if ((v3 - 9) >= 5 && v3 != 32)
      {
        break;
      }

      *a2 = v2--;
    }

    while (v2 != -1);
  }

  return result;
}

_BYTE *_citrus_bcs_convert_to_lower(_BYTE *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = result + 1;
    do
    {
      if ((v1 - 91) >= 0xFFFFFFE6)
      {
        LOBYTE(v1) = v1 + 32;
      }

      *(v2 - 1) = v1;
      v3 = *v2++;
      v1 = v3;
    }

    while (v3);
  }

  return result;
}

unsigned __int8 *_citrus_bcs_convert_to_upper(unsigned __int8 *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = result + 1;
    do
    {
      if ((v1 - 123) >= 0xE6u)
      {
        v1 -= 32;
      }

      *(v2 - 1) = v1;
      v3 = *v2++;
      v1 = v3;
    }

    while (v3);
  }

  return result;
}

uint64_t _citrus_csmapper_open()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v0;
  v52 = *MEMORY[0x29EDCA608];
  area = _citrus_mapper_create_area(&maparea, "/usr/share/i18n/csmapper");
  if (area)
  {
    goto LABEL_2;
  }

  v15 = _citrus_lookup_simple("/usr/share/i18n/csmapper/charset.alias", v10, v45, 0x400uLL, 1);
  if (v15)
  {
    v10 = v15;
  }

  v16 = _citrus_lookup_simple("/usr/share/i18n/csmapper/charset.alias", v8, v44, 0x400uLL, 1);
  if (v16)
  {
    v8 = v16;
  }

  if (!strcmp(v10, v8))
  {
    v18 = maparea;
    pthread_rwlock_wrlock(&ma_lock);
    v19 = csm_none;
    if (!csm_none)
    {
      area = _citrus_mapper_open_direct(v18, &csm_none, "mapper_none", &unk_298ECAC52);
      if (area)
      {
        goto LABEL_20;
      }

      _citrus_mapper_set_persistent(csm_none);
      v19 = csm_none;
    }

    area = 0;
    *v11 = v19;
LABEL_20:
    pthread_rwlock_unlock(&ma_lock);
    if (!v4 || area)
    {
      if (area)
      {
        goto LABEL_2;
      }
    }

    else
    {
      *v4 = 0;
    }

    area = 0;
    *v2 = 1;
    goto LABEL_2;
  }

  *v2 = 0;
  snprintf(__str, 0x400uLL, "%s/%s", v10, v8);
  v17 = _citrus_mapper_open(maparea, v11, __str);
  if (v17 != 2)
  {
    area = v17;
    if (!v17)
    {
      area = 0;
      if (v4)
      {
        *v4 = 0;
      }
    }

    goto LABEL_2;
  }

  if (v6)
  {
    goto LABEL_69;
  }

  v37[0] = 0;
  v40 = 0;
  v41 = 0;
  v38 = 0;
  v39 = 0;
  v50[0] = 0uLL;
  v49 = 0;
  v48 = 0;
  v20 = _citrus_map_file(v50, "/usr/share/i18n/csmapper/charset.pivot.pvdb");
  if (v20 == 2)
  {
    v21 = 0;
LABEL_47:
    v37[1] = 0;
    v38 = 0;
    v37[0] = 0;
    memset(v50, 0, 512);
    v30 = _citrus_lookup_seq_open(&v38, "/usr/share/i18n/csmapper/charset.pivot", 1);
    if (v30)
    {
      area = v30;
    }

    else
    {
      v31 = _citrus_lookup_seq_lookup(v38);
      if (v31)
      {
        area = v31;
        v32 = -1;
      }

      else
      {
        v32 = -1;
LABEL_52:
        v33 = parse_line(v50, v37);
        if (v33 || (v40 = 0, v41 = 0, v39 = 0, v33 = _citrus_lookup_seq_open(&v41, "/usr/share/i18n/csmapper/charset.pivot", 1), v33))
        {
          area = v33;
        }

        else
        {
          v34 = _citrus_lookup_seq_lookup(v41);
          if (!v34)
          {
            memset(v46, 0, 512);
            do
            {
              v34 = parse_line(v46, &v39);
              if (v34)
              {
                break;
              }

              if (!strcmp(v8, v46))
              {
                v51 += v47;
                _citrus_lookup_seq_close(v41);
                v35 = v51;
                if (v51 < v32)
                {
                  __strlcpy_chk();
                  v32 = v35;
                }

                area = _citrus_lookup_seq_next(v38);
                if (!area)
                {
                  goto LABEL_52;
                }

                goto LABEL_65;
              }

              v34 = _citrus_lookup_seq_next(v41);
            }

            while (!v34);
          }

          area = v34;
          _citrus_lookup_seq_close(v41);
        }
      }

LABEL_65:
      _citrus_lookup_seq_close(v38);
      if (area == 2)
      {
        if (v32 == -1)
        {
          area = 2;
        }

        else
        {
          __strlcpy_chk();
          area = 0;
          v21 = v32;
        }
      }
    }

LABEL_71:
    if (!area)
    {
      goto LABEL_72;
    }

    goto LABEL_2;
  }

  area = v20;
  v21 = 0;
  if (v20)
  {
    goto LABEL_46;
  }

  v22 = _citrus_db_open(v37, v50, "CSPIVOT", _citrus_db_hash_std, 0);
  if (v22)
  {
    area = v22;
    _citrus_unmap_file(v50);
    v21 = 0;
    goto LABEL_46;
  }

  v23 = open_subdb(&v41, v37[0], v10);
  if (v23)
  {
    area = v23;
    v21 = 0;
    goto LABEL_45;
  }

  number_of_entries = _citrus_db_get_number_of_entries(v41);
  if (number_of_entries < 1)
  {
    area = 0;
    v21 = -1;
    goto LABEL_44;
  }

  v25 = number_of_entries;
  v26 = 0;
  v21 = -1;
  while (1)
  {
    entry = _citrus_db_get_entry(v41, v26, &v48, &v39);
    if (entry)
    {
      goto LABEL_41;
    }

    if (v40 != 4)
    {
      goto LABEL_43;
    }

    v28 = *v39;
    snprintf(v46, 0x800uLL, "%.*s", v49, v48);
    entry = open_subdb(&v38, v37[0], v46);
    if (entry)
    {
LABEL_41:
      area = entry;
      goto LABEL_44;
    }

    if (!_citrus_db_lookup_by_string(v38, v8, &v39, 0))
    {
      break;
    }

LABEL_38:
    _citrus_db_close(v38);
    if (v25 == ++v26)
    {
      area = 0;
      goto LABEL_44;
    }
  }

  if (v40 == 4)
  {
    v29 = bswap32(*v39) + bswap32(v28);
    if (v29 < v21)
    {
      __strlcpy_chk();
      v21 = v29;
    }

    goto LABEL_38;
  }

  _citrus_db_close(v38);
LABEL_43:
  area = 79;
LABEL_44:
  _citrus_db_close(v41);
LABEL_45:
  _citrus_db_close(v37[0]);
  _citrus_unmap_file(v50);
  if (area)
  {
LABEL_46:
    if (area == 102)
    {
      goto LABEL_47;
    }

    goto LABEL_71;
  }

  if (v21 == -1)
  {
LABEL_69:
    area = 2;
    goto LABEL_2;
  }

LABEL_72:
  v36 = open_serial_mapper(maparea, v11, v10, v42, v8);
  area = v36;
  if (v4 && !v36)
  {
    *v4 = v21;
  }

LABEL_2:
  v13 = *MEMORY[0x29EDCA608];
  return area;
}

uint64_t open_serial_mapper(uint64_t a1, uint64_t a2, const char *a3, const char *a4, const char *a5)
{
  v10 = *MEMORY[0x29EDCA608];
  snprintf(__str, 0x400uLL, "%s/%s,%s/%s", a3, a4, a4, a5);
  result = _citrus_mapper_open_direct(a1, a2, "mapper_serial", __str);
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t open_subdb(void *a1, uint64_t *a2, char *__s)
{
  v5[0] = 0;
  v5[1] = 0;
  result = _citrus_db_lookup_by_string(a2, __s, v5, 0);
  if (!result)
  {
    return _citrus_db_open(a1, v5, "CSPIVSUB", _citrus_db_hash_std, 0);
  }

  return result;
}

uint64_t parse_line(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = *a2;
  v14 = *(a2 + 8);
  v4 = _citrus_bcs_skip_ws_len(v3, &v14);
  if (v14 && (v5 = v4, v6 = _citrus_bcs_skip_nonws_len(v4, &v14), v14) && (v7 = v6, v8 = _citrus_bcs_skip_ws_len(v6, &v14), v14))
  {
    v9 = v8;
    v10 = _citrus_bcs_skip_nonws_len(v8, &v14);
    snprintf(a1, 0x400uLL, "%.*s", v7 - v5, v5);
    snprintf(__str, 0x14uLL, "%.*s", v10 - v9, v9);
    v11 = _citrus_bcs_strtoul(__str, 0, 0);
    result = 0;
    *(a1 + 1024) = v11;
  }

  else
  {
    result = 79;
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _citrus_db_open(void *a1, uint64_t a2, char *__s2, uint64_t a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  if (v6 < 0x10 || v5 == 0)
  {
    return 79;
  }

  if (strncmp(*a2, __s2, 8uLL))
  {
    return 79;
  }

  v12 = bswap32(*(v5 + 3));
  if (v6 <= v12)
  {
    return 79;
  }

  v13 = 24 * bswap32(*(v5 + 2));
  v14 = v6 >= v12;
  v15 = v6 - v12;
  if (!v14)
  {
    v15 = 0;
  }

  if (v15 < v13)
  {
    return 79;
  }

  v17 = malloc_type_malloc(0x20uLL, 0x1080040EE4F9096uLL);
  if (!v17)
  {
    return *__error();
  }

  v18 = v17;
  result = 0;
  *v18 = *a2;
  v18[2] = a4;
  v18[3] = a5;
  *a1 = v18;
  return result;
}

uint64_t _citrus_db_lookup(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *(*a1 + 8);
  if (!v5)
  {
    return 2;
  }

  v10 = a1[1];
  if (a4)
  {
    v11 = *(a4 + 8);
    if (v11)
    {
      if (v11 < v10)
      {
        v12 = *a4;
        goto LABEL_8;
      }

      return 2;
    }
  }

  v12 = (a1[2])(a2) % bswap32(v5);
  v11 = bswap32(*(v4 + 12)) + 24 * v12;
  if (a4)
  {
    *a4 = v12;
  }

LABEL_8:
  while (1)
  {
    result = 79;
    if (v10 <= v11 || v11 + 24 > v10)
    {
      break;
    }

    v14 = (v4 + v11);
    v15 = *(v4 + v11 + 4);
    v11 = bswap32(v15);
    if (a4)
    {
      *(a4 + 8) = v11;
      if (!v15)
      {
        *(a4 + 8) = a1[1];
      }
    }

    if (bswap32(*v14) != v12)
    {
      return 2;
    }

    v16 = bswap32(v14[3]);
    if (*(a2 + 8) == v16)
    {
      v17 = bswap32(v14[2]);
      if (v10 <= v17 || v16 + v17 > v10)
      {
        return result;
      }

      if (!memcmp((v4 + v17), *a2, v16))
      {
        v19 = bswap32(v14[4]);
        if (v10 <= v19)
        {
          return 79;
        }

        v20 = bswap32(v14[5]);
        if (v20 + v19 > v10)
        {
          return 79;
        }

        result = 0;
        if (a3)
        {
          *a3 = v4 + v19;
          a3[1] = v20;
        }

        return result;
      }
    }

    if (!v15)
    {
      return 2;
    }
  }

  return result;
}

uint64_t _citrus_db_lookup_by_string(uint64_t *a1, char *__s, void *a3, uint64_t a4)
{
  v8[0] = __s;
  v8[1] = strlen(__s);
  return _citrus_db_lookup(a1, v8, a3, a4);
}

uint64_t _citrus_db_lookup8_by_string(uint64_t *a1, char *__s, _BYTE *a3, uint64_t a4)
{
  v8 = 0;
  v9 = 0;
  v10[0] = __s;
  v10[1] = strlen(__s);
  result = _citrus_db_lookup(a1, v10, &v8, a4);
  if (!result)
  {
    if (v9 == 1)
    {
      result = 0;
      if (a3)
      {
        *a3 = *v8;
      }
    }

    else
    {
      return 79;
    }
  }

  return result;
}

uint64_t _citrus_db_lookup16_by_string(uint64_t *a1, char *__s, _WORD *a3, uint64_t a4)
{
  v8 = 0;
  v9 = 0;
  v10[0] = __s;
  v10[1] = strlen(__s);
  result = _citrus_db_lookup(a1, v10, &v8, a4);
  if (!result)
  {
    if (v9 == 2)
    {
      result = 0;
      if (a3)
      {
        *a3 = bswap32(*v8) >> 16;
      }
    }

    else
    {
      return 79;
    }
  }

  return result;
}

uint64_t _citrus_db_lookup32_by_string(uint64_t *a1, char *__s, _DWORD *a3, uint64_t a4)
{
  v8 = 0;
  v9 = 0;
  v10[0] = __s;
  v10[1] = strlen(__s);
  result = _citrus_db_lookup(a1, v10, &v8, a4);
  if (!result)
  {
    if (v9 == 4)
    {
      result = 0;
      if (a3)
      {
        *a3 = bswap32(*v8);
      }
    }

    else
    {
      return 79;
    }
  }

  return result;
}

uint64_t _citrus_db_lookup_string_by_string(uint64_t *a1, char *__s, void *a3, uint64_t a4)
{
  v8 = 0;
  v9 = 0;
  v10[0] = __s;
  v10[1] = strlen(__s);
  result = _citrus_db_lookup(a1, v10, &v8, a4);
  if (!result)
  {
    if (v9 && !*(v8 + v9 - 1))
    {
      result = 0;
      if (a3)
      {
        *a3 = v8;
      }
    }

    else
    {
      return 79;
    }
  }

  return result;
}

uint64_t _citrus_db_get_entry(void *a1, unsigned int a2, void *a3, void *a4)
{
  result = 22;
  if ((a2 & 0x80000000) == 0)
  {
    v6 = *a1;
    if (bswap32(*(*a1 + 8)) > a2)
    {
      v7 = a1[1];
      v8 = bswap32(*(v6 + 12)) + 24 * a2;
      if (v7 <= v8 || v8 + 24 > v7)
      {
        return 79;
      }

      v10 = (v6 + v8);
      v11 = bswap32(v10[2]);
      if (v7 <= v11)
      {
        return 79;
      }

      v12 = bswap32(v10[3]);
      if (v12 + v11 > v7)
      {
        return 79;
      }

      if (a3)
      {
        *a3 = v6 + v11;
        a3[1] = v12;
      }

      v13 = bswap32(v10[4]);
      if (v7 <= v13)
      {
        return 79;
      }

      v14 = bswap32(v10[5]);
      if (v14 + v13 > v7)
      {
        return 79;
      }

      else
      {
        result = 0;
        if (a4)
        {
          *a4 = v6 + v13;
          a4[1] = v14;
        }
      }
    }
  }

  return result;
}

uint64_t _citrus_db_factory_create(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc_type_malloc(0x38uLL, 0x10A00402683DD91uLL);
  if (!v6)
  {
    return *__error();
  }

  v7 = v6;
  result = 0;
  *v7 = 0;
  v7[1] = 0;
  v7[2] = v7 + 1;
  v7[3] = 0;
  v7[4] = 0;
  v7[5] = a2;
  v7[6] = a3;
  *a1 = v7;
  return result;
}

void _citrus_db_factory_free(void ***a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if (v2)
  {
    do
    {
      v4 = *v2;
      *v3 = *v2;
      if (!v4)
      {
        a1[2] = v3;
      }

      if (*(v2 + 10))
      {
        free(v2[3]);
      }

      if (*(v2 + 16))
      {
        free(v2[6]);
      }

      free(v2);
      v2 = *v3;
    }

    while (*v3);
  }

  free(a1);
}

uint64_t _citrus_db_factory_add(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v10 = malloc_type_malloc(0x48uLL, 0x10A0040BA52E972uLL);
  v11 = 0xFFFFFFFFLL;
  if (v10)
  {
    v12 = v10;
    v10[4] = (*(a1 + 40))(a2);
    *(v12 + 6) = *a2;
    v12[10] = a3;
    *(v12 + 3) = *a4;
    v12[16] = a5;
    v12[17] = -1;
    *v12 = 0;
    v13 = *(a1 + 24);
    **(a1 + 16) = v12;
    v14 = v13 + *(a2 + 8);
    *(a1 + 16) = v12;
    *(a1 + 24) = v14;
    *(a1 + 32) += (*(a4 + 8) + 15) & 0xFFFFFFFFFFFFFFF0;
    ++*a1;
    return 0;
  }

  return v11;
}

uint64_t _citrus_db_factory_add_by_string(uint64_t a1, char *__s1, uint64_t a3, int a4)
{
  v8 = strdup(__s1);
  if (!v8)
  {
    return *__error();
  }

  v10[0] = v8;
  v10[1] = strlen(__s1);
  return _citrus_db_factory_add(a1, v10, 1, a3, a4);
}

uint64_t _citrus_db_factory_add8_by_string(uint64_t a1, char *a2, char a3)
{
  v6 = malloc_type_malloc(1uLL, 0x100004077774924uLL);
  if (!v6)
  {
    return *__error();
  }

  *v6 = a3;
  v8[0] = v6;
  v8[1] = 1;
  return _citrus_db_factory_add_by_string(a1, a2, v8, 1);
}

uint64_t _citrus_db_factory_add16_by_string(uint64_t a1, char *a2, unsigned int a3)
{
  v6 = malloc_type_malloc(2uLL, 0x1000040BDFB0063uLL);
  if (!v6)
  {
    return *__error();
  }

  *v6 = __rev16(a3);
  v8[0] = v6;
  v8[1] = 2;
  return _citrus_db_factory_add_by_string(a1, a2, v8, 1);
}

uint64_t _citrus_db_factory_add32_by_string(uint64_t a1, char *a2, unsigned int a3)
{
  v6 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
  if (!v6)
  {
    return *__error();
  }

  *v6 = bswap32(a3);
  v8[0] = v6;
  v8[1] = 4;
  return _citrus_db_factory_add_by_string(a1, a2, v8, 1);
}

uint64_t _citrus_db_factory_add_string_by_string(uint64_t a1, char *a2, char *__s1)
{
  v5 = strdup(__s1);
  if (!v5)
  {
    return *__error();
  }

  v7[0] = v5;
  v7[1] = strlen(v5) + 1;
  return _citrus_db_factory_add_by_string(a1, a2, v7, 1);
}

uint64_t _citrus_db_factory_serialize(size_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (v6)
  {
    v7 = malloc_type_calloc(v6, 8uLL, 0x2004093837F09uLL);
    if (v7)
    {
      v8 = v7;
      v9 = a1[1];
      if (v9)
      {
        v10 = *a1;
        do
        {
          v11 = *(v9 + 16) % v10;
          *(v9 + 16) = v11;
          *(v9 + 68) = -1;
          *(v9 + 8) = 0;
          if (!v7[v11])
          {
            v7[v11] = v9;
            *(v9 + 68) = v11;
          }

          v9 = *v9;
        }

        while (v9);
        v12 = a1[1];
        if (v12)
        {
          v13 = 0;
          do
          {
            if (*(v12 + 68) == -1)
            {
              v14 = v7[*(v12 + 16)];
              do
              {
                v15 = v14;
                v14 = *(v14 + 8);
              }

              while (v14);
              *(v15 + 8) = v12;
                ;
              }

              v7[--v13] = v12;
              *(v12 + 68) = v13;
            }

            v12 = *v12;
          }

          while (v12);
        }
      }

      v17 = 0;
      v18 = *a1;
      v19 = (24 * *a1 + 15) & 0xFFFFFFFFFFFFFFF0;
      v20 = (a1[3] + 15) & 0xFFFFFFFFFFFFFFF0;
      do
      {
        *(*a3 + v17) = *(a2 + v17);
        ++v17;
      }

      while (v17 != 8);
      if (HIDWORD(v18))
      {
        _citrus_db_factory_serialize_cold_6();
      }

      v21 = v19 + 16;
      *(*a3 + 8) = bswap32(v18);
      *(*a3 + 12) = 0x10000000;
      if (*a1)
      {
        v22 = 0;
        v23 = v21 + v20;
        v24 = 16;
        do
        {
          v25 = v8[v22];
          v26 = *(v25 + 8);
          if (v26)
          {
            v27 = *(v26 + 68);
            *(*a3 + v24) = bswap32(*(v25 + 16));
            if (v27 < 0)
            {
              _citrus_db_factory_serialize_cold_1();
            }

            LODWORD(v26) = 24 * v27 + 16;
          }

          else
          {
            *(*a3 + v24) = bswap32(*(v25 + 16));
          }

          *(*a3 + v24 + 4) = bswap32(v26);
          if (HIDWORD(v21))
          {
            _citrus_db_factory_serialize_cold_5();
          }

          *(*a3 + v24 + 8) = bswap32(v21);
          v28 = *(v25 + 32);
          if (HIDWORD(v28))
          {
            _citrus_db_factory_serialize_cold_4();
          }

          *(*a3 + v24 + 12) = bswap32(v28);
          if (HIDWORD(v23))
          {
            _citrus_db_factory_serialize_cold_3();
          }

          *(*a3 + v24 + 16) = bswap32(v23);
          v29 = *(v25 + 56);
          if (HIDWORD(v29))
          {
            _citrus_db_factory_serialize_cold_2();
          }

          *(*a3 + v24 + 20) = bswap32(v29);
          memcpy((*a3 + v21), *(v25 + 24), *(v25 + 32));
          v30 = *(v25 + 32);
          memcpy((*a3 + v23), *(v25 + 48), *(v25 + 56));
          v23 += *(v25 + 56);
          v31 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
          while (v31 != v23)
          {
            *(*a3 + v23++) = 0;
          }

          v24 += 24;
          v21 += v30;
          ++v22;
        }

        while (v22 < *a1);
      }

      else
      {
        v24 = 16;
      }

      v34 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
      while (v34 != v24)
      {
        *(*a3 + v24++) = 0;
      }

      v35 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
      while (v35 != v21)
      {
        *(*a3 + v21++) = 0;
      }

      free(v8);
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    for (i = 0; i != 8; ++i)
    {
      *(*a3 + i) = *(a2 + i);
    }

    result = 0;
    *(*a3 + 8) = 0;
    *(*a3 + 12) = 0x10000000;
  }

  return result;
}

char *_citrus_esdb_alias(uint64_t a1, char *a2, size_t a3)
{
  result = _citrus_lookup_simple("/usr/share/i18n/esdb/esdb.alias", a1, a2, a3, 1);
  if (!result)
  {
    return a1;
  }

  return result;
}

uint64_t _citrus_esdb_open(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x29EDCA608];
  v22[0] = 0;
  v22[1] = 0;
  snprintf(__str, 0x400uLL, "%s/%s", "/usr/share/i18n/esdb", "esdb.alias");
  v4 = _citrus_lookup_simple(__str, a2, v29, 0x400uLL, 1);
  if (v4)
  {
    a2 = v4;
  }

  snprintf(__str, 0x400uLL, "%s/%s", "/usr/share/i18n/esdb", "esdb.dir");
  v5 = _citrus_lookup_simple(__str, a2, v28, 0x400uLL, 1);
  if (!v5)
  {
    v6 = 2;
    goto LABEL_13;
  }

  snprintf(__str, 0x400uLL, "%s/%s", "/usr/share/i18n/esdb", v5);
  v6 = _citrus_map_file(v22, __str);
  if (!v6)
  {
    __s1 = 0;
    v26 = 0;
    v23 = 0;
    v24 = 0;
    v6 = _citrus_db_open(&v26, v22, "ESDB", _citrus_db_hash_std, 0);
    if (!v6)
    {
      v7 = _citrus_db_lookup32_by_string(v26, "version", &v23, 0);
      if (v7)
      {
LABEL_7:
        LODWORD(v6) = v7;
        goto LABEL_8;
      }

      if (v23 == 1)
      {
        v7 = _citrus_db_lookup_string_by_string(v26, "encoding", &__s1, 0);
        if (v7)
        {
          goto LABEL_7;
        }

        v10 = strdup(__s1);
        *a1 = v10;
        if (!v10)
        {
          LODWORD(v6) = *__error();
          goto LABEL_8;
        }

        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        v11 = _citrus_db_lookup_string_by_string(v26, "variable", &__s1, 0);
        if (v11 != 2)
        {
          LODWORD(v6) = v11;
          if (v11)
          {
LABEL_28:
            free(*a1);
LABEL_8:
            _citrus_db_close(v26);
            if (v6 == 2)
            {
              v6 = 79;
            }

            else
            {
              v6 = v6;
            }

            goto LABEL_11;
          }

          v12 = __s1;
          *(a1 + 16) = strlen(__s1) + 1;
          v13 = strdup(v12);
          *(a1 + 8) = v13;
          if (!v13)
          {
            LODWORD(v6) = *__error();
            goto LABEL_28;
          }
        }

        LODWORD(v6) = _citrus_db_lookup32_by_string(v26, "num_charsets", &v24, 0);
        if (v6)
        {
LABEL_21:
          free(*(a1 + 8));
          goto LABEL_28;
        }

        *(a1 + 24) = v24;
        v14 = _citrus_db_lookup32_by_string(v26, "invalid", &v23 + 1, 0);
        if (v14 == 2)
        {
          *(a1 + 40) = 0;
        }

        else
        {
          LODWORD(v6) = v14;
          if (v14)
          {
            goto LABEL_21;
          }

          v15 = HIDWORD(v23);
          *(a1 + 40) = 1;
          *(a1 + 44) = v15;
        }

        v16 = malloc_type_malloc(16 * v24, 0x101004082113244uLL);
        *(a1 + 32) = v16;
        if (!v16)
        {
          LODWORD(v6) = *__error();
          goto LABEL_21;
        }

        if (v24)
        {
          v17 = 0;
          v18 = 0;
          while (1)
          {
            snprintf(__s, 0x64uLL, "csid_%d", v18);
            v19 = _citrus_db_lookup32_by_string(v26, __s, &v24 + 1, 0);
            if (v19 || (*(*(a1 + 32) + v17) = HIDWORD(v24), snprintf(__s, 0x64uLL, "csname_%d", v18), (v19 = _citrus_db_lookup_string_by_string(v26, __s, &__s1, 0)) != 0))
            {
              LODWORD(v6) = v19;
              goto LABEL_41;
            }

            v20 = strdup(__s1);
            *(*(a1 + 32) + v17 + 8) = v20;
            if (!v20)
            {
              break;
            }

            ++v18;
            v17 += 16;
            if (v18 >= v24)
            {
              goto LABEL_37;
            }
          }

          LODWORD(v6) = *__error();
LABEL_41:
          if (v17)
          {
            v21 = v17 - 8;
            do
            {
              free(*(*(a1 + 32) + v21));
              v21 -= 16;
            }

            while (v21 != -8);
          }

          free(*(a1 + 32));
          goto LABEL_21;
        }

LABEL_37:
        _citrus_db_close(v26);
        v6 = 0;
      }

      else
      {
        _citrus_db_close(v26);
        v6 = 79;
      }
    }

LABEL_11:
    _citrus_unmap_file(v22);
  }

LABEL_13:
  v8 = *MEMORY[0x29EDCA608];
  return v6;
}

void _citrus_esdb_close(uint64_t a1)
{
  if (*(a1 + 24) >= 1)
  {
    v2 = 0;
    v3 = 8;
    do
    {
      free(*(*(a1 + 32) + v3));
      ++v2;
      v3 += 16;
    }

    while (v2 < *(a1 + 24));
  }

  *(a1 + 24) = 0;
  free(*(a1 + 32));
  *(a1 + 32) = 0;
  free(*a1);
  *a1 = 0;
  *(a1 + 16) = 0;
  free(*(a1 + 8));
  *(a1 + 8) = 0;
}

void _citrus_esdb_free_list(void **a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = a1;
    do
    {
      v5 = *v4++;
      free(v5);
      --v3;
    }

    while (v3);
  }

  free(a1);
}

uint64_t _citrus_esdb_get_list(void *a1, uint64_t *a2, char a3)
{
  v25 = *MEMORY[0x29EDCA608];
  v21 = 0;
  v22 = 0;
  v6 = _citrus_lookup_seq_open(&v22, "/usr/share/i18n/esdb/esdb.alias", 1);
  if (v6)
  {
    goto LABEL_26;
  }

  v6 = _citrus_lookup_seq_open(&v21, "/usr/share/i18n/esdb/esdb.dir", 1);
  if (v6)
  {
    goto LABEL_25;
  }

  number_of_entries = _citrus_lookup_get_number_of_entries(v22);
  v8 = _citrus_lookup_get_number_of_entries(v21) + number_of_entries;
  _citrus_lookup_seq_rewind(v22);
  _citrus_lookup_seq_rewind(v21);
  v9 = malloc_type_malloc(8 * v8, 0x10040436913F5uLL);
  v10 = 0;
  if (!v9)
  {
LABEL_21:
    v6 = *__error();
LABEL_22:
    if (!v6)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  while (1)
  {
    v11 = _citrus_lookup_seq_next(v22);
    if (v11)
    {
      break;
    }

    snprintf(__str, 0x400uLL, "%.*s/%.*s", 0, 0, 0, 0);
    _citrus_bcs_convert_to_upper(__str);
    v12 = strdup(__str);
    v9[v10] = v12;
    if (!v12)
    {
      goto LABEL_21;
    }

    ++v10;
  }

  v6 = v11;
  if (v11 != 2)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v13 = _citrus_lookup_seq_next(v21);
    if (v13)
    {
      break;
    }

    if ((a3 & 1) == 0)
    {
      snprintf(__str, 0x400uLL, "%.*s");
      goto LABEL_17;
    }

    snprintf(__s, 0x400uLL, "%.*s", 0, 0);
    v14 = strchr(__s, 47);
    if (v14)
    {
      strlen(v14);
      __memmove_chk();
    }

    v15 = strstr(__s, ".esdb");
    if (v15)
    {
      *v15 = 0;
    }

    if (!strchr(__s, 64))
    {
      snprintf(__str, 0x400uLL, "%s/%.*s");
LABEL_17:
      _citrus_bcs_convert_to_upper(__str);
      v16 = _citrus_lookup_seq_lookup(v22);
      if (v16)
      {
        v6 = v16;
        if (v16 != 2)
        {
          goto LABEL_22;
        }

        v17 = strdup(__str);
        v9[v10] = v17;
        if (!v17)
        {
          goto LABEL_21;
        }

        ++v10;
      }
    }
  }

  v6 = v13;
  if (v13 != 2)
  {
    goto LABEL_22;
  }

  v20 = malloc_type_realloc(v9, 8 * v10, 0x10040436913F5uLL);
  if (!v20)
  {
    v6 = 12;
LABEL_23:
    _citrus_esdb_free_list(v9, v10);
    goto LABEL_24;
  }

  v6 = 0;
  *a1 = v20;
  *a2 = v10;
LABEL_24:
  _citrus_lookup_seq_close(v21);
LABEL_25:
  _citrus_lookup_seq_close(v22);
LABEL_26:
  v18 = *MEMORY[0x29EDCA608];
  return v6;
}

char *_citrus_iconv_canonicalize(uint64_t a1)
{
  v2 = malloc_type_calloc(0x400uLL, 1uLL, 0x100004077774924uLL);
  if (v2)
  {
    _citrus_esdb_alias(a1, v2, 0x400uLL);
  }

  return v2;
}

uint64_t _citrus_lookup_factory_convert()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v3 = v0;
  v25 = *MEMORY[0x29EDCA608];
  v20 = 0;
  v21 = 0;
  __n = 0;
  v19 = 0;
  v4 = _citrus_db_factory_create(&v21, _citrus_db_hash_std, 0);
  if (!v4)
  {
    while (1)
    {
      v5 = fgetln(v2, &__n);
      v6 = v21;
      if (!v5)
      {
        break;
      }

      v7 = v5;
      v22 = __n;
      v8 = memchr(v5, 35, __n);
      if (v8)
      {
        v22 = v8 - v7;
      }

      v9 = _citrus_bcs_skip_ws_len(v7, &v22);
      if (v22)
      {
        v10 = v9;
        v11 = _citrus_bcs_skip_nonws_len(v9, &v22);
        if (v11 != v10)
        {
          v12 = v11;
          snprintf(__str, 0x800uLL, "%.*s", v11 - v10, v10);
          _citrus_bcs_convert_to_lower(__str);
          v13 = _citrus_bcs_skip_ws_len(v12, &v22);
          _citrus_bcs_trunc_rws_len(v13, &v22);
          snprintf(__s1, 0x800uLL, "%.*s", v22, v13);
          v4 = _citrus_db_factory_add_string_by_string(v6, __str, __s1);
          if (v4)
          {
            _citrus_db_factory_free(v21);
            goto LABEL_17;
          }
        }
      }
    }

    v14 = _citrus_db_factory_calc_size(v21);
    v15 = malloc_type_malloc(v14, 0xB33F8DA7uLL);
    if (v15)
    {
      v19 = v15;
      v20 = v14;
      v4 = _citrus_db_factory_serialize(v6, "LOOKUP", &v19);
    }

    else
    {
      v4 = *__error();
    }

    _citrus_db_factory_free(v21);
    if (!v4)
    {
      if (fwrite(v19, v20, 1uLL, v3) == 1)
      {
        v4 = 0;
      }

      else
      {
        v4 = *__error();
      }
    }
  }

LABEL_17:
  v16 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t _citrus_lookup_seq_open(void *a1, char *a2, int a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v6 = malloc_type_malloc(0x68uLL, 0x10B20404D61ED97uLL);
  if (!v6)
  {
    v8 = *__error();
    goto LABEL_12;
  }

  v7 = v6;
  v6[7] = 0;
  v6[8] = 0;
  *(v6 + 12) = a3;
  v13 = 0uLL;
  snprintf(__str, 0x400uLL, "%s.db", a2);
  v8 = _citrus_map_file(&v13, __str);
  if (!v8)
  {
    v9 = _citrus_db_open(v7, &v13, "LOOKUP", _citrus_db_hash_std, 0);
    if (!v9)
    {
      *(v7 + 1) = v13;
      *(v7 + 6) = _citrus_db_get_number_of_entries(*v7);
      *(v7 + 7) = 0;
      *(v7 + 13) = 1;
      v7[10] = seq_lookup_db;
      v7[9] = seq_next_db;
      v7[11] = seq_get_num_entries_db;
      v10 = seq_close_db;
      goto LABEL_11;
    }

    v8 = v9;
    _citrus_unmap_file(&v13);
  }

  if (v8 == 2)
  {
    v8 = _citrus_map_file(v7, a2);
    if (!v8)
    {
      *(v7 + 13) = 1;
      v7[9] = seq_next_plain;
      v7[10] = seq_lookup_plain;
      v7[11] = seq_get_num_entries_plain;
      v10 = seq_close_plain;
LABEL_11:
      v7[12] = v10;
      v8 = 0;
      *a1 = v7;
      goto LABEL_12;
    }
  }

  free(v7);
LABEL_12:
  v11 = *MEMORY[0x29EDCA608];
  return v8;
}

void _citrus_lookup_seq_rewind(uint64_t a1)
{
  *(a1 + 52) = 1;
  free(*(a1 + 56));
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
}

void _citrus_lookup_seq_close(uint64_t a1)
{
  free(*(a1 + 56));
  (*(a1 + 96))(a1);

  free(a1);
}

char *_citrus_lookup_simple(char *a1, uint64_t a2, char *a3, size_t a4, int a5)
{
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v8 = _citrus_lookup_seq_open(&v13, a1, a5);
  result = 0;
  if (!v8)
  {
    v10 = v13;
    if ((*(v13 + 80))(v13, a2, &v11))
    {
      a3 = 0;
    }

    else
    {
      snprintf(a3, a4, "%.*s", v12, v11);
    }

    free(*(v10 + 56));
    (*(v10 + 96))(v10);
    free(v10);
    return a3;
  }

  return result;
}

uint64_t seq_lookup_db(uint64_t a1, const char *a2, void *a3)
{
  *(a1 + 52) = 0;
  free(*(a1 + 56));
  v6 = strdup(a2);
  v7 = v6;
  *(a1 + 56) = v6;
  if (*(a1 + 48))
  {
    _citrus_bcs_convert_to_lower(v6);
    v7 = *(a1 + 56);
  }

  *(a1 + 64) = strlen(v7);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v8 = *a1;

  return _citrus_db_lookup_by_string(v8, v7, a3, a1 + 32);
}

uint64_t seq_next_db(uint64_t a1, char **a2, void *a3)
{
  v6 = *(a1 + 56);
  if (v6)
  {
    if (a2)
    {
      v7 = *(a1 + 64);
      *a2 = v6;
      a2[1] = v7;
    }

    return _citrus_db_lookup_by_string(*a1, v6, a3, a1 + 32);
  }

  else
  {
    if (*(a1 + 52))
    {
      v9 = 0;
      *(a1 + 28) = 0;
    }

    else
    {
      v9 = *(a1 + 28);
    }

    *(a1 + 52) = 0;
    if (v9 >= *(a1 + 24))
    {
      return 2;
    }

    else
    {
      v10 = *a1;
      *(a1 + 28) = v9 + 1;
      return _citrus_db_get_entry(v10, v9, a2, a3);
    }
  }
}

void *seq_close_db(void **a1)
{
  v1 = (a1 + 1);
  _citrus_db_close(*a1);

  return _citrus_unmap_file(v1);
}

uint64_t seq_next_plain(uint64_t a1, unsigned __int8 **a2, unsigned __int8 **a3)
{
  if (*(a1 + 52))
  {
    *(a1 + 16) = *a1;
    *(a1 + 32) = 0;
  }

  __n = 0;
  *(a1 + 52) = 0;
  v6 = _citrus_memory_stream_getln((a1 + 16), &__n);
  if (!v6)
  {
    return 2;
  }

  v7 = v6;
  while (1)
  {
    v8 = memchr(v7, 35, __n);
    if (v8)
    {
      __n = v8 - v7;
    }

    _citrus_bcs_trunc_rws_len(v7, &__n);
    v9 = _citrus_bcs_skip_ws_len(v7, &__n);
    v10 = _citrus_bcs_skip_nonws_len(v9, &__n);
    if (v9 != v10)
    {
      v11 = v10;
      v12 = *(a1 + 56);
      if (!v12 || v10 - v9 == *(a1 + 64) && !memcmp(v9, v12, v10 - v9))
      {
        break;
      }
    }

    v7 = _citrus_memory_stream_getln((a1 + 16), &__n);
    if (!v7)
    {
      return 2;
    }
  }

  if (a2)
  {
    *a2 = v9;
    a2[1] = (v11 - v9);
  }

  v14 = _citrus_bcs_skip_ws_len(v11, &__n);
  if (!a3)
  {
    return 0;
  }

  v15 = v14;
  result = 0;
  v16 = __n;
  if (!__n)
  {
    v15 = 0;
  }

  *a3 = v15;
  a3[1] = v16;
  return result;
}

uint64_t seq_lookup_plain(uint64_t a1, const char *a2, void *a3)
{
  *(a1 + 52) = 0;
  free(*(a1 + 56));
  v6 = strdup(a2);
  v7 = v6;
  *(a1 + 56) = v6;
  if (*(a1 + 48))
  {
    _citrus_bcs_convert_to_lower(v6);
    v7 = *(a1 + 56);
  }

  v12 = 0;
  *(a1 + 64) = strlen(v7);
  *(a1 + 16) = *a1;
  *(a1 + 32) = 0;
  v8 = _citrus_memory_stream_matchline((a1 + 16), v7, &v12, 0);
  if (!v8)
  {
    return 2;
  }

  if (!a3)
  {
    return 0;
  }

  v9 = v8;
  result = 0;
  v11 = v12;
  *a3 = v9;
  a3[1] = v11;
  return result;
}

uint64_t seq_get_num_entries_plain(uint64_t a1)
{
  LODWORD(v2) = -1;
  do
  {
    v2 = (v2 + 1);
  }

  while (!seq_next_plain(a1, 0, 0));
  return v2;
}

uint64_t _citrus_mapper_create_area(void *a1, const char *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  memset(&v10, 0, sizeof(v10));
  pthread_rwlock_wrlock(&cm_lock);
  if (*a1)
  {
    v4 = 0;
  }

  else
  {
    snprintf(__str, 0x400uLL, "%s/%s", a2, "mapper.dir");
    v4 = stat(__str, &v10);
    if (!v4)
    {
      v7 = malloc_type_malloc(0x330uLL, 0x30040220BCB0CuLL);
      if (v7)
      {
        v8 = v7;
        v9 = strdup(a2);
        v8[101] = v9;
        if (v9)
        {
          bzero(v8, 0x328uLL);
          v4 = 0;
          *a1 = v8;
        }

        else
        {
          v4 = *__error();
          free(v8);
        }
      }

      else
      {
        v4 = *__error();
      }
    }
  }

  pthread_rwlock_unlock(&cm_lock);
  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t mapper_open(uint64_t a1, void *a2, const char *a3, const char *a4)
{
  v8 = malloc_type_malloc(0x48uLL, 0x10B0040655B139FuLL);
  if (!v8)
  {
    return *__error();
  }

  v9 = v8;
  *(v8 + 1) = 0u;
  v10 = (v8 + 16);
  *(v8 + 12) = 0;
  *(v8 + 7) = 0;
  *(v8 + 16) = 0;
  *v8 = 0u;
  module = _citrus_load_module(v8 + 2, a3);
  if (module)
  {
    goto LABEL_3;
  }

  getops = _citrus_find_getops(*v10, a3, "mapper");
  if (!getops)
  {
    v12 = 102;
    goto LABEL_4;
  }

  v15 = getops;
  v16 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  *v9 = v16;
  if (!v16)
  {
LABEL_18:
    v12 = *__error();
    goto LABEL_4;
  }

  module = v15();
  if (!module)
  {
    v17 = *v9;
    if (!**v9 || !v17[1] || !v17[2] || !v17[3])
    {
      v12 = 22;
      goto LABEL_4;
    }

    v18 = malloc_type_malloc(0x18uLL, 0x1000040504FFAC1uLL);
    v9[3] = v18;
    if (v18)
    {
      v19 = v18;
      v20 = strlen(a4);
      v12 = (**v9)(a1, v9, *(a1 + 808), a4, v20 + 1, v19, 24);
      if (!v12)
      {
        *a2 = v9;
        return v12;
      }

      goto LABEL_4;
    }

    goto LABEL_18;
  }

LABEL_3:
  v12 = module;
LABEL_4:
  mapper_close(v9);
  return v12;
}

uint64_t _citrus_mapper_get_mapdir_from_key(char *a1)
{
  if (!strncmp(a1, "UCS:", 4uLL) || !strncmp(a1, "UCS/", 4uLL))
  {
    return 1;
  }

  result = strchr(a1, 47);
  if (result)
  {
    v3 = result;
    if (!strncmp((result + 1), "UCS", 4uLL))
    {
      return 2;
    }

    else
    {
      return 2 * (strncmp((v3 + 1), "UCS:", 4uLL) == 0);
    }
  }

  return result;
}

uint64_t _citrus_mapper_open(uint64_t a1, uint64_t *a2, char *a3)
{
  v29 = *MEMORY[0x29EDCA608];
  pthread_rwlock_wrlock(&cm_lock);
  v6 = (a1 + 8 * _string_hash_func(a3, 0x65u));
  v7 = *v6;
  if (!*v6)
  {
LABEL_4:
    v22 = 0;
    v23 = 0;
    v8 = *(a1 + 808);
    v26 = 0uLL;
    snprintf(__str, 0x400uLL, "%s/%s", v8, "mapper.dir");
    v9 = _citrus_map_file(&v26, __str);
    if (v9)
    {
      v10 = v9;
      goto LABEL_20;
    }

    v24 = v26;
    v25 = 0;
    v11 = _citrus_memory_stream_matchline(&v24, a3, &v23, 0);
    if (v11)
    {
      if ((v23 - 1024) > 0xFFFFFFFFFFFFFC00)
      {
        v12 = v11;
        v13 = _citrus_bcs_skip_nonws_len(v11, &v23);
        v14 = v13 - v12 + 1;
        __strlcpy_chk();
        v15 = _citrus_bcs_skip_ws_len(v13, &v23);
        strlcpy(&v27[v14], v15, v23 + 1);
        _citrus_unmap_file(&v26);
        pthread_rwlock_unlock(&cm_lock);
        v10 = mapper_open(a1, &v22, v27, &v27[v14]);
        pthread_rwlock_wrlock(&cm_lock);
        if (!v10)
        {
          v16 = strdup(a3);
          v17 = v22;
          *(v22 + 56) = v16;
          if (v16)
          {
            *(v17 + 48) = 1;
            if (!*(v17 + 64))
            {
              mapdir_from_key = _citrus_mapper_get_mapdir_from_key(v16);
              *(v17 + 64) = mapdir_from_key;
              if (((mapdir_from_key + 3) & mapdir_from_key) != 0)
              {
                _citrus_mapper_open_cold_1();
              }
            }

            v19 = *v6;
            *(v17 + 32) = *v6;
            if (v19)
            {
              *(v19 + 40) = v17 + 32;
            }

            v10 = 0;
            *v6 = v17;
            *(v17 + 40) = v6;
            *a2 = v17;
          }

          else
          {
            v10 = *__error();
            _citrus_mapper_close(v17);
          }
        }

        goto LABEL_20;
      }

      v10 = 22;
    }

    else
    {
      v10 = 2;
    }

    _citrus_unmap_file(&v26);
    goto LABEL_20;
  }

  while (strcmp(*(v7 + 56), a3))
  {
    v7 = *(v7 + 32);
    if (!v7)
    {
      goto LABEL_4;
    }
  }

  v10 = 0;
  ++*(v7 + 48);
  *a2 = v7;
LABEL_20:
  pthread_rwlock_unlock(&cm_lock);
  v20 = *MEMORY[0x29EDCA608];
  return v10;
}

void _citrus_mapper_close(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  pthread_rwlock_wrlock(&cm_lock);
  v2 = *(a1 + 48);
  if (v2 != -1)
  {
    v3 = __OFSUB__(v2, 1);
    v4 = v2 - 1;
    if (v4 < 0 != v3)
    {
LABEL_8:
      pthread_rwlock_unlock(&cm_lock);

      mapper_close(a1);
      return;
    }

    *(a1 + 48) = v4;
    if (!v4)
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      if (v5)
      {
        *(v5 + 40) = v6;
      }

      *v6 = v5;
      free(*(a1 + 56));
      goto LABEL_8;
    }
  }

  pthread_rwlock_unlock(&cm_lock);
}

void mapper_close(void *a1)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = *a1;
    if (*a1)
    {
      if (*(a1 + 1))
      {
        (v3)[1](a1);
        v3 = *a1;
      }

      free(v3);
      v2 = *(a1 + 2);
    }

    _citrus_unload_module(v2);
  }

  free(*(a1 + 3));

  free(a1);
}

uint64_t _citrus_mapper_set_persistent(uint64_t a1)
{
  pthread_rwlock_wrlock(&cm_lock);
  *(a1 + 48) = -1;

  return pthread_rwlock_unlock(&cm_lock);
}

unint64_t _citrus_memory_stream_getln(void *a1, unint64_t *a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v3 <= v2)
  {
    return 0;
  }

  v4 = *a1 + v2;
  v5 = v3 - v2;
  if (v5)
  {
    v6 = 0;
    while (1)
    {
      v7 = v6 + 1;
      v8 = *(v4 + v6);
      if (v8 == 10 || v8 == 13)
      {
        break;
      }

      v6 = v7;
      if (v5 == v7)
      {
        goto LABEL_12;
      }
    }

    v5 = v7;
  }

LABEL_12:
  a1[2] = v5 + v2;
  *a2 = v5;
  return v4;
}

void *_citrus_memory_stream_matchline(void *a1, char *__s, size_t *a3, int a4)
{
  __n = 0;
  v8 = strlen(__s);
  result = _citrus_memory_stream_getln(a1, &__n);
  if (result)
  {
    v10 = result;
    do
    {
      v11 = memchr(v10, 35, __n);
      if (v11)
      {
        __n = v11 - v10;
      }

      _citrus_bcs_trunc_rws_len(v10, &__n);
      if (__n)
      {
        v12 = _citrus_bcs_skip_ws_len(v10, &__n);
        v13 = _citrus_bcs_skip_nonws_len(v12, &__n);
        if (v13 - v12 == v8)
        {
          v14 = v13;
          if (a4)
          {
            if (!memcmp(__s, v12, v8))
            {
              goto LABEL_13;
            }
          }

          else if (!_citrus_bcs_strncasecmp(__s, v12, v8))
          {
LABEL_13:
            result = _citrus_bcs_skip_ws_len(v14, &__n);
            *a3 = __n;
            return result;
          }
        }
      }

      result = _citrus_memory_stream_getln(a1, &__n);
      v10 = result;
    }

    while (result);
  }

  return result;
}

char *_citrus_memory_stream_chr(void *a1, unint64_t *a2, int __c)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v4 >= v3)
  {
    return 0;
  }

  v7 = *a1 + v4;
  v8 = v3 >= v4;
  v9 = v3 - v4;
  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  result = memchr((*a1 + v4), __c, v10);
  *a2 = v7;
  if (result)
  {
    a2[1] = &result[-v7];
    v12 = &result[v4 - v7 + 1];
  }

  else
  {
    a2[1] = v10;
    v12 = a1[1];
  }

  a1[2] = v12;
  return result;
}

uint64_t *_citrus_memory_stream_skip_ws(uint64_t *result)
{
  v1 = result[1];
  v2 = result[2];
  if (v2 < v1)
  {
    v3 = *result;
    do
    {
      v4 = *(v3 + v2);
      if ((v4 - 9) >= 5 && v4 != 32)
      {
        break;
      }

      result[2] = ++v2;
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t _citrus_map_file(void *a1, char *a2)
{
  memset(&v9, 0, sizeof(v9));
  *a1 = 0;
  a1[1] = 0;
  v3 = open(a2, 0x1000000, *&v9.st_dev, *&v9.st_uid, *&v9.st_atimespec, *&v9.st_mtimespec, *&v9.st_ctimespec, *&v9.st_birthtimespec);
  if (v3 != -1)
  {
    v4 = v3;
    if (fstat(v3, &v9) == -1)
    {
      goto LABEL_7;
    }

    if ((v9.st_mode & 0xF000) != 0x8000)
    {
      v6 = 102;
      goto LABEL_9;
    }

    v5 = mmap(0, v9.st_size, 1, 2, v4, 0);
    if (v5 == -1)
    {
LABEL_7:
      v6 = *__error();
    }

    else
    {
      v6 = 0;
      st_size = v9.st_size;
      *a1 = v5;
      a1[1] = st_size;
    }

LABEL_9:
    close(v4);
    return v6;
  }

  return *__error();
}

void *_citrus_unmap_file(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    result = munmap(result, *(a1 + 8));
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  return result;
}

void *_citrus_find_getops(void *a1, const char *a2, const char *a3)
{
  v7 = *MEMORY[0x29EDCA608];
  snprintf(__str, 0x400uLL, "_citrus_%s_%s_getops", a2, a3);
  result = dlsym(a1, __str);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _citrus_load_module(void *a1, const char *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  if (!_pathI18nModule)
  {
    v4 = getenv("PATH_I18NMODULE");
    if (v4 && (v5 = v4, !issetugid()))
    {
      _pathI18nModule = strdup(v5);
      if (!_pathI18nModule)
      {
        result = 12;
        goto LABEL_10;
      }
    }

    else
    {
      _pathI18nModule = "/usr/lib/i18n";
    }
  }

  snprintf(__str, 0x400uLL, "lib%s", a2);
  _findshlib_path = 0;
  v6 = snprintf(&_findshlib_path, 0x400uLL, "%s/%s.dylib", _pathI18nModule, __str);
  result = 22;
  if (v6 <= 0x3FF && _findshlib_path)
  {
    v8 = dlopen(&_findshlib_path, 1);
    if (v8)
    {
      v9 = v8;
      result = 0;
      *a1 = v9;
    }

    else
    {
      v10 = dlerror();
      printf("%s", v10);
      result = 22;
    }
  }

LABEL_10:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

void *_citrus_unload_module(void *result)
{
  if (result)
  {
    if (result == -3)
    {
      _citrus_unload_module_cold_1();
    }

    return dlclose(result);
  }

  return result;
}

uint64_t _citrus_NONE_stdenc_init(uint64_t a1, char *a2, unint64_t a3, uint64_t a4)
{
  v8 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
  if (!v8)
  {
    return *__error();
  }

  for (i = v8; a3; --a3)
  {
    v10 = *a2;
    if ((v10 - 91) >= 0xFFFFFFE6)
    {
      v10 += 32;
    }

    if (a3 >= 4 && v10 == 55 && !_citrus_bcs_strncasecmp(a2, "7bit", 4))
    {
      *i = 2139062143;
      a2 += 4;
      a3 -= 4;
    }

    ++a2;
  }

  if (!*i)
  {
    *i = -1;
  }

  result = 0;
  *(a1 + 8) = i;
  *(a4 + 16) = 1;
  *a4 = xmmword_298ECAFA0;
  return result;
}

uint64_t _citrus_NONE_stdenc_mbtocs(uint64_t a1, _DWORD *a2, _DWORD *a3, void *a4, uint64_t a5, uint64_t a6, _BOOL8 *a7, uint64_t a8)
{
  if (a5)
  {
    *a2 = 0;
    v8 = (*a4)++;
    v9 = *v8;
    v10 = *v8 != 0;
    *a3 = v9;
    *a7 = v10;
    if (a8 && *a8)
    {
      v11 = *(a8 + 16);
      (*a8)();
    }
  }

  else
  {
    *a7 = -2;
  }

  return 0;
}

uint64_t _citrus_NONE_stdenc_cstomb(uint64_t a1, uint64_t a2, unint64_t a3, int a4, unsigned int a5, uint64_t a6, uint64_t *a7)
{
  if (a4 != -1)
  {
    if (a4 || (a5 & ~**(a1 + 8)) != 0)
    {
      return 92;
    }

    if (a5 > 0xFF)
    {
      if (HIWORD(a5))
      {
        if (HIBYTE(a5))
        {
          if (a3 >= 4)
          {
            result = 0;
            *a2 = a5;
            v8 = 4;
            goto LABEL_6;
          }
        }

        else if (a3 >= 3)
        {
          result = 0;
          *a2 = a5;
          *(a2 + 2) = BYTE2(a5);
          v8 = 3;
          goto LABEL_6;
        }
      }

      else if (a3 >= 2)
      {
        result = 0;
        *a2 = a5;
        v8 = 2;
        goto LABEL_6;
      }
    }

    else if (a3)
    {
      result = 0;
      *a2 = a5;
      v8 = 1;
      goto LABEL_6;
    }

    result = 7;
    v8 = -1;
    goto LABEL_6;
  }

  v8 = 0;
  result = 0;
LABEL_6:
  *a7 = v8;
  return result;
}

uint64_t _citrus_NONE_stdenc_mbtowc(uint64_t a1, _DWORD *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  if (*a3)
  {
    if (a4)
    {
      v7 = **a3;
      if (a2)
      {
        *a2 = v7;
      }

      *a6 = v7 != 0;
      if (a7)
      {
        v8 = *(a7 + 8);
        if (v8)
        {
          v8(*a2, *(a7 + 16));
        }
      }
    }

    else
    {
      *a6 = -2;
    }
  }

  else
  {
    *a6 = 0;
  }

  return 0;
}

uint64_t _citrus_NONE_stdenc_wctomb(uint64_t a1, _BYTE *a2, uint64_t a3, unsigned int a4, uint64_t a5, void *a6)
{
  if (a4 >= 0x100)
  {
    *a6 = -1;
    return 92;
  }

  else if (a3)
  {
    *a6 = 1;
    result = 0;
    if (a2)
    {
      *a2 = a4;
    }
  }

  else
  {
    *a6 = -1;
    return 7;
  }

  return result;
}

uint64_t _citrus_NONE_stdenc_get_state_desc(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  if (a3)
  {
    return 102;
  }

  result = 0;
  *a4 = 1;
  return result;
}

uint64_t _citrus_pivot_factory_convert()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v3 = v0;
  v44 = *MEMORY[0x29EDCA608];
  v34 = 0;
  v35 = 0;
  __n = 0;
  v36 = 0;
  v37 = &v36;
  while (1)
  {
    v4 = fgetln(v2, &__n);
    if (!v4)
    {
      break;
    }

    v5 = v4;
    v39 = __n;
    v6 = memchr(v4, 35, __n);
    if (v6)
    {
      v39 = v6 - v5;
    }

    v7 = _citrus_bcs_skip_ws_len(v5, &v39);
    if (v39)
    {
      v8 = v7;
      v9 = _citrus_bcs_skip_nonws_len(v7, &v39);
      if (v9 != v8)
      {
        v10 = v9;
        snprintf(&v42, 0x800uLL, "%.*s", v9 - v8, v8);
        v11 = _citrus_bcs_skip_ws_len(v10, &v39);
        if (v39)
        {
          v12 = v11;
          v13 = _citrus_bcs_skip_nonws_len(v11, &v39);
          if (v13 != v12)
          {
            v14 = v13;
            __endptr = 0;
            snprintf(__str, 0x800uLL, "%.*s", v13 - v12, v12);
            v15 = _citrus_bcs_skip_ws_len(v14, &v39);
            _citrus_bcs_trunc_rws_len(v15, &v39);
            snprintf(v40, 0x800uLL, "%.*s", v39, v15);
            v16 = strtoul(v40, &__endptr, 0);
            if (*__endptr)
            {
              v22 = 79;
              goto LABEL_35;
            }

            v17 = v16;
            v18 = v36;
            if (v36)
            {
              while (_citrus_bcs_strcasecmp(*v18, &v42))
              {
                v18 = *(v18 + 16);
                if (!v18)
                {
                  goto LABEL_13;
                }
              }
            }

            else
            {
LABEL_13:
              v19 = malloc_type_malloc(0x18uLL, 0x30040D3A788E3uLL);
              if (!v19)
              {
                v22 = *__error();
                goto LABEL_35;
              }

              v18 = v19;
              v20 = strdup(&v42);
              *v18 = v20;
              if (!v20)
              {
                v22 = *__error();
                goto LABEL_34;
              }

              v21 = _citrus_db_factory_create((v18 + 8), _citrus_db_hash_std, 0);
              if (v21)
              {
                v22 = v21;
                free(*v18);
LABEL_34:
                free(v18);
LABEL_35:
                free_src(&v36);
                goto LABEL_36;
              }

              *(v18 + 16) = 0;
              *v37 = v18;
              v37 = (v18 + 16);
            }

            v22 = _citrus_db_factory_add32_by_string(*(v18 + 8), __str, v17);
            if (v22)
            {
              goto LABEL_35;
            }
          }
        }
      }
    }
  }

  *__str = 0;
  v43 = 0;
  v42 = 0;
  v23 = _citrus_db_factory_create(__str, _citrus_db_hash_std, 0);
  if (v23)
  {
    v22 = v23;
    goto LABEL_35;
  }

  v24 = v36;
  if (v36)
  {
    while (1)
    {
      v25 = _citrus_db_factory_calc_size(*(v24 + 8));
      v26 = malloc_type_malloc(v25, 0x8A0ED4uLL);
      v27 = v26;
      if (!v26)
      {
        break;
      }

      v42 = v26;
      v43 = v25;
      v28 = _citrus_db_factory_serialize(*(v24 + 8), "CSPIVSUB", &v42);
      if (v28 || (v28 = _citrus_db_factory_add_by_string(*__str, *v24, &v42, 1), v28))
      {
        v22 = v28;
        goto LABEL_39;
      }

      v24 = *(v24 + 16);
      if (!v24)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
LABEL_27:
    v29 = _citrus_db_factory_calc_size(*__str);
    v30 = malloc_type_malloc(v29, 0xF0B2E3D5uLL);
    if (v30)
    {
      v34 = v30;
      v35 = v29;
      v22 = _citrus_db_factory_serialize(*__str, "CSPIVOT", &v34);
      v27 = 0;
      goto LABEL_39;
    }

    v27 = 0;
  }

  v22 = 0;
LABEL_39:
  free(v27);
  _citrus_db_factory_free(*__str);
  free_src(&v36);
  if (!v22)
  {
    if (fwrite(v34, v35, 1uLL, v3) == 1)
    {
      v22 = 0;
    }

    else
    {
      v22 = *__error();
    }
  }

LABEL_36:
  v31 = *MEMORY[0x29EDCA608];
  return v22;
}

void free_src(uint64_t *a1)
{
  for (i = *a1; *a1; i = *a1)
  {
    v3 = *(i + 16);
    *a1 = v3;
    if (!v3)
    {
      a1[1] = a1;
    }

    _citrus_db_factory_free(*(i + 8));
    free(*i);
    free(i);
  }
}

uint64_t _citrus_prop_parse_variable(unsigned __int8 **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v34 = *MEMORY[0x29EDCA608];
  v26 = a3;
  v27 = a4;
  v28 = 0;
  _citrus_memory_stream_skip_ws(&v26);
  v7 = v27;
  v6 = v28;
  if (v28 >= v27)
  {
LABEL_63:
    v12 = 0;
    goto LABEL_65;
  }

  do
  {
    v28 = v6 + 1;
    v8 = v26;
    if (!*(v26 + v6))
    {
      goto LABEL_63;
    }

    v9 = 0;
    v28 = v6;
    v29 = 0;
    v31 = 0;
    v32 = 0;
    v30 = 0;
    do
    {
      if (v6 >= v7)
      {
        v10 = -1;
      }

      else
      {
        v28 = v6 + 1;
        v10 = *(v8 + v6++);
        if (v10 == 95)
        {
          goto LABEL_13;
        }
      }

      if (v10 - 58 <= 0xFFFFFFF5 && (v10 & 0xDFu) - 91 < 0xFFFFFFE6)
      {
        goto LABEL_21;
      }

LABEL_13:
      v33[v9++] = v10;
    }

    while (v9 != 256);
    if (v6 < v7)
    {
      v28 = v6 + 1;
      v10 = *(v8 + v6);
      if (v10 != 95)
      {
        ++v6;
        goto LABEL_18;
      }

      goto LABEL_64;
    }

    v10 = -1;
LABEL_18:
    v12 = 22;
    if (v10 - 58 > 0xFFFFFFF5 || (v10 & 0xDFu) - 91 > 0xFFFFFFE5)
    {
      break;
    }

    v9 = 256;
LABEL_21:
    if (v10 != -1 && v6)
    {
      v28 = v6 - 1;
    }

    v33[v9] = 0;
    v13 = *a1;
    if (!*a1)
    {
LABEL_64:
      v12 = 22;
      break;
    }

    v14 = a1 + 2;
    while (_citrus_bcs_strcasecmp(v33, v13))
    {
      v13 = v14[1];
      v14 += 3;
      if (!v13)
      {
        goto LABEL_64;
      }
    }

    _citrus_memory_stream_skip_ws(&v26);
    v15 = v28;
    if (v28 < v27)
    {
      ++v28;
      v16 = *(v26 + v15);
      if (v16 != 58 && v16 != 61)
      {
        v28 = v15;
      }
    }

    v17 = *(v14 - 2);
    v18 = *(&readers + v17);
LABEL_34:
    LODWORD(v31) = v17;
    v32 = 0;
    LODWORD(v29) = v17;
    v30 = 0;
    v19 = v18(&v26, &v31);
    if (v19)
    {
LABEL_66:
      v12 = v19;
      break;
    }

    _citrus_memory_stream_skip_ws(&v26);
    v20 = v28;
    if (v28 >= v27)
    {
      goto LABEL_41;
    }

    ++v28;
    v21 = *(v26 + v20);
    if (v17 >= 2 && v21 == 45)
    {
      v19 = v18(&v26, &v29);
      if (v19)
      {
        goto LABEL_66;
      }

      _citrus_memory_stream_skip_ws(&v26);
      v22 = v28;
      if (v28 < v27)
      {
        ++v28;
        v21 = *(v26 + v22);
        goto LABEL_42;
      }

LABEL_41:
      v21 = -1;
    }

LABEL_42:
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v23 = (*v14)(a2, v13, v32, v30);
      }

      else
      {
        if (v17 != 3)
        {
LABEL_67:
          abort();
        }

        v23 = (*v14)(a2, v13, v32, v30);
      }
    }

    else if (v17)
    {
      if (v17 != 1)
      {
        goto LABEL_67;
      }

      v23 = (*v14)(a2, v13, v32);
    }

    else
    {
      v23 = (*v14)(a2, v13, v32);
    }

    v12 = v23;
    if (v31 == 1)
    {
      free(v32);
    }

    if (v29 == 1)
    {
      free(v30);
    }

    if (v12)
    {
      break;
    }

    if (v21 == 44)
    {
      goto LABEL_34;
    }

    if (v21 != -1 && v21 != 59 && v28)
    {
      --v28;
    }

    _citrus_memory_stream_skip_ws(&v26);
    v12 = 0;
    v7 = v27;
    v6 = v28;
  }

  while (v28 < v27);
LABEL_65:
  v24 = *MEMORY[0x29EDCA608];
  return v12;
}

uint64_t _citrus_prop_read_BOOL(uint64_t *a1, uint64_t a2)
{
  _citrus_memory_stream_skip_ws(a1);
  v5 = a1[1];
  v4 = a1[2];
  if (v4 >= v5)
  {
    v6 = 255;
  }

  else
  {
    a1[2] = v4 + 1;
    v6 = *(*a1 + v4++);
  }

  if ((v6 - 91) >= 0xFFFFFFE6)
  {
    v6 += 32;
  }

  if (v6 == 102)
  {
    if (v4 >= v5)
    {
      v8 = 255;
    }

    else
    {
      a1[2] = v4 + 1;
      v8 = *(*a1 + v4++);
    }

    if ((v8 - 91) >= 0xFFFFFFE6)
    {
      v8 += 32;
    }

    if (v8 == 97)
    {
      if (v4 >= v5)
      {
        v10 = 255;
      }

      else
      {
        a1[2] = v4 + 1;
        v10 = *(*a1 + v4++);
      }

      if ((v10 - 91) >= 0xFFFFFFE6)
      {
        v10 += 32;
      }

      if (v10 == 108)
      {
        if (v4 >= v5)
        {
          v12 = 255;
        }

        else
        {
          a1[2] = v4 + 1;
          v12 = *(*a1 + v4++);
        }

        if ((v12 - 91) >= 0xFFFFFFE6)
        {
          v12 += 32;
        }

        if (v12 == 115)
        {
          if (v4 >= v5)
          {
            v14 = 255;
          }

          else
          {
            a1[2] = v4 + 1;
            v14 = *(*a1 + v4);
          }

          if ((v14 - 91) >= 0xFFFFFFE6)
          {
            v14 += 32;
          }

          if (v14 == 101)
          {
            v13 = 0;
            goto LABEL_52;
          }
        }
      }
    }
  }

  else if (v6 == 116)
  {
    if (v4 >= v5)
    {
      v7 = 255;
    }

    else
    {
      a1[2] = v4 + 1;
      v7 = *(*a1 + v4++);
    }

    if ((v7 - 91) >= 0xFFFFFFE6)
    {
      v7 += 32;
    }

    if (v7 == 114)
    {
      if (v4 >= v5)
      {
        v9 = 255;
      }

      else
      {
        a1[2] = v4 + 1;
        v9 = *(*a1 + v4++);
      }

      if ((v9 - 91) >= 0xFFFFFFE6)
      {
        v9 += 32;
      }

      if (v9 == 117)
      {
        if (v4 >= v5)
        {
          v11 = 255;
        }

        else
        {
          a1[2] = v4 + 1;
          v11 = *(*a1 + v4);
        }

        if ((v11 - 91) >= 0xFFFFFFE6)
        {
          v11 += 32;
        }

        if (v11 == 101)
        {
          v13 = 1;
LABEL_52:
          result = 0;
          *(a2 + 8) = v13;
          return result;
        }
      }
    }
  }

  return 22;
}

uint64_t _citrus_prop_read_str(uint64_t *a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x200uLL, 0x80EB44BCuLL);
  if (!v4)
  {
    return 12;
  }

  v5 = v4;
  _citrus_memory_stream_skip_ws(a1);
  v6 = a1[2];
  if (v6 >= a1[1])
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    a1[2] = v6 + 1;
    v8 = *(*a1 + v6);
    v9 = 512;
    if (v8 != 34 && v8 != 39)
    {
      if (v8 == 92)
      {
        v7 = 0;
        a1[2] = v6;
        v8 = -1;
        v9 = 512;
      }

      else
      {
        *v5 = v8;
        v8 = -1;
        v7 = 1;
        v9 = 511;
      }
    }

    while (1)
    {
      v11 = a1[2];
      if (v11 >= a1[1])
      {
        v12 = -1;
      }

      else
      {
        a1[2] = v11 + 1;
        v12 = *(*a1 + v11++);
      }

      v14 = v12;
      if (v8 == v12 || v8 == -1 && (v12 == 59 || v12 <= 0x20u && ((1 << v12) & 0x100003E00) != 0))
      {
        break;
      }

      if (v12 != -1)
      {
        if (v11)
        {
          a1[2] = v11 - 1;
        }
      }

      _citrus_prop_read_character_common(a1, &v14);
      v5[v7++] = v14;
      if (!--v9)
      {
        v10 = malloc_type_realloc(v5, v7 + 512, 0x17015B50uLL);
        if (!v10)
        {
          free(v5);
          return 12;
        }

        v5 = v10;
        v9 = 512;
      }
    }
  }

  result = 0;
  v5[v7] = 0;
  *(a2 + 8) = v5;
  return result;
}

uint64_t _citrus_prop_read_character(uint64_t *a1, uint64_t a2)
{
  _citrus_memory_stream_skip_ws(a1);
  v4 = a1[2];
  if (v4 < a1[1])
  {
    a1[2] = v4 + 1;
    v18 = *(*a1 + v4);
    if (v18 == 39)
    {
      _citrus_prop_read_character_common(a1, &v18);
      *(a2 + 8) = v18;
      v5 = a1[2];
      result = 22;
      if (v5 < a1[1])
      {
        a1[2] = v5 + 1;
        if (*(*a1 + v5) == 39)
        {
          return 0;
        }

        else
        {
          return 22;
        }
      }

      return result;
    }

    a1[2] = v4;
  }

  _citrus_memory_stream_skip_ws(a1);
  v7 = a1[1];
  v8 = a1[2];
  if (v8 >= v7)
  {
    return 22;
  }

  v9 = 0;
  v10 = v8 + 1;
  a1[2] = v8 + 1;
  v11 = *a1;
  v12 = *(*a1 + v8);
  if (v12 != 43)
  {
    if (v12 != 45)
    {
      goto LABEL_14;
    }

    v9 = 1;
  }

  if (v10 >= v7)
  {
    return 22;
  }

  v13 = v8 + 2;
  a1[2] = v13;
  v12 = *(v11 + v10);
  v10 = v13;
LABEL_14:
  if (v12 != 48)
  {
    if ((v12 - 58) >= 0xFFFFFFF6)
    {
      v17 = 10;
      v14 = v10;
LABEL_31:
      a1[2] = v14 - 1;
      goto LABEL_32;
    }

    return 22;
  }

  if (v10 >= v7)
  {
    v17 = 8;
    goto LABEL_32;
  }

  v14 = v10 + 1;
  a1[2] = v10 + 1;
  if ((*(v11 + v10) & 0xDF) != 0x58)
  {
    v17 = 8;
    goto LABEL_31;
  }

  if (v14 >= v7)
  {
    v16 = -1;
  }

  else
  {
    v15 = v10 + 2;
    a1[2] = v10 + 2;
    v16 = *(v11 + v14);
    v14 = v15;
  }

  if (v16 - 58 > 0xFFFFFFF5 || (v16 & 0xDFu) - 71 > 0xFFFFFFF9)
  {
    v17 = 16;
    if (v16 != -1)
    {
      goto LABEL_31;
    }

LABEL_32:
    _citrus_prop_read_chr_common(a1, (a2 + 8), v17, v9);
    return 0;
  }

  if (v16 != -1)
  {
    a1[2] = v14 - 1;
  }

  result = 0;
  *(a2 + 8) = 0;
  return result;
}

uint64_t _citrus_prop_read_num(uint64_t *a1, uint64_t a2)
{
  _citrus_memory_stream_skip_ws(a1);
  v5 = a1[1];
  v4 = a1[2];
  if (v4 >= v5)
  {
    return 22;
  }

  v6 = v4 + 1;
  a1[2] = v4 + 1;
  v7 = *a1;
  v8 = *(*a1 + v4);
  v9 = 1;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      goto LABEL_7;
    }

    v9 = 0;
  }

  if (v6 >= v5)
  {
    return 22;
  }

  v10 = v4 + 2;
  a1[2] = v10;
  v8 = *(v7 + v6);
  v6 = v10;
LABEL_7:
  if (v8 != 48)
  {
    if ((v8 - 58) >= 0xFFFFFFF6)
    {
      v25 = v9;
      v26 = a2;
      v14 = 10;
LABEL_24:
      a1[2] = --v6;
      goto LABEL_25;
    }

    return 22;
  }

  if (v6 >= v5)
  {
    v25 = v9;
    v26 = a2;
    v14 = 8;
    goto LABEL_25;
  }

  v11 = v6 + 1;
  a1[2] = v6 + 1;
  if ((*(v7 + v6) & 0xDF) != 0x58)
  {
    v25 = v9;
    v26 = a2;
    v14 = 8;
    ++v6;
    goto LABEL_24;
  }

  if (v11 >= v5)
  {
    v12 = -1;
    ++v6;
  }

  else
  {
    v6 += 2;
    a1[2] = v6;
    v12 = *(v7 + v11);
  }

  if (v12 - 58 <= 0xFFFFFFF5 && (v12 & 0xDFu) - 71 <= 0xFFFFFFF9)
  {
    if (v12 != -1)
    {
      a1[2] = v6 - 1;
    }

    result = 0;
    *(a2 + 8) = 0;
    return result;
  }

  v25 = v9;
  v26 = a2;
  v14 = 16;
  if (v12 != -1)
  {
    goto LABEL_24;
  }

LABEL_25:
  v15 = 0;
  v16 = v14;
  v17 = 0xFFFFFFFFFFFFFFFFLL / v14;
  v18 = ~(v17 * v14);
  while (1)
  {
    if (v6 >= v5)
    {
      v19 = -1;
    }

    else
    {
      v19 = *(v7 + v6++);
      a1[2] = v6;
    }

    v20 = v19 - 123 >= 0xFFFFFFE6 ? v19 - 32 : v19;
    v21 = memchr("0123456789ABCDEF", v20, 0x11uLL);
    if (!v21)
    {
      break;
    }

    v22 = v21 - "0123456789ABCDEF";
    if (v22 >= v16 || v15 > v17)
    {
      break;
    }

    if (v15 == v17 && v22 > v18)
    {
      v15 = v17;
      break;
    }

    v15 = v15 * v16 + v22;
  }

  if (v19 != -1 && v6)
  {
    a1[2] = v6 - 1;
  }

  result = 0;
  if (v25)
  {
    v24 = v15;
  }

  else
  {
    v24 = -v15;
  }

  *(v26 + 8) = v24;
  return result;
}

uint64_t *_citrus_prop_read_character_common(uint64_t *result, int *a2)
{
  v3 = result[1];
  v2 = result[2];
  if (v2 >= v3)
  {
    v6 = -1;
    goto LABEL_9;
  }

  v4 = v2 + 1;
  result[2] = v2 + 1;
  v5 = *result;
  v6 = *(*result + v2);
  if (v6 != 92)
  {
LABEL_9:
    *a2 = v6;
    return result;
  }

  if (v4 >= v3)
  {
    v7 = -1;
  }

  else
  {
    result[2] = v2 + 2;
    v7 = *(v5 + v4);
    if (v7 > 0x60)
    {
      if (*(v5 + v4) > 0x71u)
      {
        if (*(v5 + v4) > 0x75u)
        {
          if (v7 == 118)
          {
            v7 = 11;
          }

          else if (v7 == 120)
          {
            v8 = 16;
            return _citrus_prop_read_chr_common(result, a2, v8, 0);
          }
        }

        else if (v7 == 114)
        {
          v7 = 13;
        }

        else if (v7 == 116)
        {
          v7 = 9;
        }
      }

      else if (*(v5 + v4) > 0x65u)
      {
        if (v7 == 102)
        {
          v7 = 12;
        }

        else if (v7 == 110)
        {
          v7 = 10;
        }
      }

      else if (v7 == 97)
      {
        v7 = 7;
      }

      else if (v7 == 98)
      {
        v7 = 8;
      }
    }

    else if (v7 - 48 < 8)
    {
      result[2] = v4;
      v8 = 8;
      return _citrus_prop_read_chr_common(result, a2, v8, 0);
    }
  }

  *a2 = v7;
  return result;
}

void *_citrus_prop_read_chr_common(void *a1, int *a2, unsigned int a3, int a4)
{
  v7 = 0;
  v8 = 0xFF / a3;
  v9 = 0xFF % a3;
  v11 = a1[1];
  v10 = a1[2];
  while (1)
  {
    if (v10 >= v11)
    {
      v12 = -1;
    }

    else
    {
      v12 = *(*a1 + v10++);
      a1[2] = v10;
    }

    v13 = v12 - 123 >= 0xFFFFFFE6 ? v12 - 32 : v12;
    result = memchr("0123456789ABCDEF", v13, 0x11uLL);
    if (!result)
    {
      break;
    }

    v15 = result - "0123456789ABCDEF";
    if (v15 >= a3 || v7 > v8)
    {
      break;
    }

    if (v7 == v8 && v15 > v9)
    {
      v7 = v8;
      break;
    }

    v7 = v15 + v7 * a3;
  }

  if (v12 != -1 && v10)
  {
    a1[2] = v10 - 1;
  }

  if (a4)
  {
    v17 = -v7;
  }

  else
  {
    v17 = v7;
  }

  *a2 = v17;
  return result;
}

uint64_t _citrus_stdenc_open(__int128 **a1, char *__s1, uint64_t a3, uint64_t a4)
{
  v21 = 0;
  v8 = strcmp(__s1, "NONE");
  v9 = malloc_type_malloc(0x20uLL, 0xA00404900C826uLL);
  v10 = v9;
  if (!v8)
  {
    if (v9)
    {
      v13 = *algn_2A13C37B8;
      *v9 = _citrus_stdenc_default;
      v9[1] = v13;
      goto LABEL_7;
    }

LABEL_21:
    v12 = *__error();
    goto LABEL_22;
  }

  if (!v9)
  {
    goto LABEL_21;
  }

  *v9 = 0u;
  v9[1] = 0u;
  v11 = _citrus_load_module(&v21, __s1);
  if (v11)
  {
LABEL_4:
    v12 = v11;
LABEL_22:
    _citrus_stdenc_close(v10);
    return v12;
  }

  v15 = v21;
  *(v10 + 2) = v21;
  getops = _citrus_find_getops(v15, __s1, "stdenc");
  if (!getops)
  {
LABEL_20:
    v12 = 22;
    goto LABEL_22;
  }

  v17 = getops;
  v18 = malloc_type_malloc(0x58uLL, 0x80040512DBC69uLL);
  *v10 = v18;
  if (!v18)
  {
    goto LABEL_21;
  }

  v11 = v17(v18, 88);
  if (v11)
  {
    goto LABEL_4;
  }

  v19 = *v10;
  if (!**v10 || !v19[1] || !v19[3] || !v19[4] || !v19[5] || !v19[6] || !v19[8])
  {
    goto LABEL_20;
  }

LABEL_7:
  v14 = malloc_type_malloc(0x18uLL, 0x1000040504FFAC1uLL);
  *(v10 + 3) = v14;
  if (!v14)
  {
    goto LABEL_21;
  }

  v12 = (**v10)(v10, a3, a4, v14);
  if (v12)
  {
    goto LABEL_22;
  }

  *a1 = v10;
  return v12;
}

void _citrus_stdenc_close(__int128 *a1)
{
  if (a1 != &_citrus_stdenc_default)
  {
    v2 = *(a1 + 2);
    v3 = *a1;
    if (v2)
    {
      if (v3)
      {
        if (*(a1 + 1))
        {
          v4 = v3[1];
          if (v4)
          {
            v4(a1);
            v3 = *a1;
          }
        }

        free(v3);
      }

      free(*(a1 + 3));
      _citrus_unload_module(*(a1 + 2));
    }

    else
    {
      v5 = *(a1 + 1);
      if (v3)
      {
        if (v5)
        {
          v6 = v3[1];
          if (v6)
          {
            v6(a1);
          }
        }

        free(*(a1 + 3));
      }

      else if (v5)
      {
        _citrus_stdenc_close_cold_1();
      }
    }

    free(a1);
  }
}