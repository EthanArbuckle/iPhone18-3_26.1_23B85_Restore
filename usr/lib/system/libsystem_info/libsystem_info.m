int getpwnam_r(const char *a1, passwd *a2, char *a3, size_t a4, passwd **a5)
{
  if (a5)
  {
    *a5 = 0;
    LODWORD(v7) = 34;
    if (a2)
    {
      if (a3)
      {
        v9 = a4;
        if (a4)
        {
          v10 = si_search_search;
          if (!si_search_search)
          {
            v10 = si_module_with_name("search");
            si_search_search = v10;
          }

          v7 = si_user_byname(v10);
          if (v7)
          {
            v11 = v7;
            v12 = copy_user_r(v7 + 32, a2, a3, v9);
            si_item_release(v11);
            if (v12)
            {
              LODWORD(v7) = 34;
            }

            else
            {
              LODWORD(v7) = 0;
              *a5 = a2;
            }
          }
        }
      }
    }
  }

  else
  {
    LODWORD(v7) = 34;
  }

  return v7;
}

uint64_t si_user_byname(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 16)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t search_item_byname(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v4 = 0;
  if (a1 && a4)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v15 = 0;
      while (1)
      {
        module = search_get_module(v6, a3, &v15);
        if (!module)
        {
          break;
        }

        v10 = module;
        v11 = a4(module, a2);
        if (v11)
        {
          v4 = v11;
          if (*(v6 + 24 * a3 + 16))
          {
            v12 = a3;
          }

          else
          {
            v12 = 0;
          }

          if (*(v6 + 24 * v12 + 20))
          {
            v13 = *(v6 + 432);
          }

          else
          {
            v13 = 0;
          }

          si_cache_add_item(v13, v10, v4);
          return v4;
        }
      }
    }

    return 0;
  }

  return v4;
}

uint64_t search_get_module(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = (*a3)++;
  v4 = a1 + 24 * a2;
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v3 >= v5;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (v3 < *(a1 + 16))
    {
      v7 = 8 * v3;
      v8 = (*(a1 + 8) + 4 * v3);
      while (1)
      {
        v9 = *v8;
        v8 += 4;
        if ((v9 & 1) == 0)
        {
          break;
        }

        *a3 = v3 + 2;
        v7 += 8;
        if (*(a1 + 16) <= ++v3)
        {
          return 0;
        }
      }

      v11 = *a1 + v7;
      return *v11;
    }

    return 0;
  }

  v11 = *v4 + 8 * v3;
  return *v11;
}

atomic_uint *cache_fetch_item(uint64_t a1, unsigned int a2, char *a3, int a4, int a5)
{
  v5 = 0;
  if (a1 && gL1CacheEnabled)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v11 = (v6 + 240 * a2);
      pthread_mutex_lock(v11);
      for (i = 72; i != 232; i += 8)
      {
        v5 = *(&v11->__sig + i);
        if (v5)
        {
          if (si_item_is_valid(*(&v11->__sig + i)))
          {
            v13 = si_item_retain(v5);
            v5 = v13;
            if (v13 && si_item_match(v13, a2, a3, a4, a5))
            {
              goto LABEL_13;
            }
          }

          else
          {
            si_item_release(v5);
            v5 = 0;
            *(&v11->__sig + i) = 0;
          }
        }

        si_item_release(v5);
      }

      v5 = 0;
LABEL_13:
      pthread_mutex_unlock(v11);
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

uint64_t copy_user_r(uint64_t a1, void *a2, char *a3, int a4)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *a1;
  if (v8)
  {
    v9 = strlen(v8) + 1;
  }

  else
  {
    v9 = 0;
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    v9 += strlen(v11) + 1;
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    v9 += strlen(v12) + 1;
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    v9 += strlen(v13) + 1;
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    v9 += strlen(v14) + 1;
  }

  v15 = *(a1 + 56);
  if (v15)
  {
    v9 += strlen(v15) + 1;
  }

  if (v9 > a4)
  {
    return 0xFFFFFFFFLL;
  }

  *a2 = 0;
  if (*a1)
  {
    *a2 = a3;
    v16 = strlen(*a1) + 1;
    memmove(a3, *a1, v16);
    a3 += v16;
  }

  a2[1] = 0;
  if (*(a1 + 8))
  {
    a2[1] = a3;
    v17 = strlen(*(a1 + 8)) + 1;
    memmove(a3, *(a1 + 8), v17);
    a3 += v17;
  }

  a2[2] = *(a1 + 16);
  a2[4] = 0;
  v18 = *(a1 + 32);
  a2[3] = *(a1 + 24);
  if (v18)
  {
    a2[4] = a3;
    v19 = strlen(*(a1 + 32)) + 1;
    memmove(a3, *(a1 + 32), v19);
    a3 += v19;
  }

  a2[5] = 0;
  if (*(a1 + 40))
  {
    a2[5] = a3;
    v20 = strlen(*(a1 + 40)) + 1;
    memmove(a3, *(a1 + 40), v20);
    a3 += v20;
  }

  a2[6] = 0;
  if (*(a1 + 48))
  {
    a2[6] = a3;
    v21 = strlen(*(a1 + 48)) + 1;
    memmove(a3, *(a1 + 48), v21);
    a3 += v21;
  }

  a2[7] = 0;
  if (*(a1 + 56))
  {
    a2[7] = a3;
    v22 = strlen(*(a1 + 56));
    memmove(a3, *(a1 + 56), v22 + 1);
  }

  result = 0;
  a2[8] = *(a1 + 64);
  return result;
}

void si_item_release(atomic_uint *a1)
{
  if (a1)
  {
    add = atomic_fetch_add(a1 + 3, 0xFFFFFFFF);
    if (add <= 0)
    {
      si_item_release_cold_1();
    }

    if (add == 1)
    {

      free(a1);
    }
  }
}

uint64_t si_item_is_valid(uint64_t *a1)
{
  if (a1 && (v1 = *a1) != 0 && (v2 = *(*(v1 + 40) + 8)) != 0)
  {
    return v2();
  }

  else
  {
    return 0;
  }
}

const char *file_is_valid(const char **a1, const char ***a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      result = *a1;
      if (*a1)
      {
        v4 = *a2;
        if (*a2 && *v4)
        {
          return (strcmp(result, *v4) == 0);
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t getgrouplist_internal(uint64_t a1, int a2, int *a3, int *a4)
{
  result = 0;
  if (a1 && a3 && a4)
  {
    v8 = *a4;
    *a4 = 0;
    if (v8 >= 1)
    {
      *a3 = a2;
      *a4 = 1;
      v9 = si_search_search;
      if (!si_search_search)
      {
        v9 = si_module_with_name("search");
        si_search_search = v9;
      }

      v10 = si_grouplist(v9);
      LI_set_thread_item(3, v10);
      if (v10)
      {
        v11 = *(v10 + 40);
        if (v11 >= 1)
        {
          v12 = 0;
          v13 = *(v10 + 48);
          v14 = 1;
          do
          {
            v15 = *(v13 + 4 * v12);
            if (v14 < 1)
            {
LABEL_14:
              if (v14 >= v8)
              {
                return 0xFFFFFFFFLL;
              }

              a3[v14++] = v15;
              *a4 = v14;
              v11 = *(v10 + 40);
            }

            else
            {
              v16 = v14;
              v17 = a3;
              while (1)
              {
                v18 = *v17++;
                if (v18 == v15)
                {
                  break;
                }

                if (!--v16)
                {
                  goto LABEL_14;
                }
              }
            }

            ++v12;
          }

          while (v12 < v11);
        }
      }
    }

    return 0;
  }

  return result;
}

BOOL si_item_match(_BOOL8 result, int a2, char *__s1, int a4, int a5)
{
  if (result)
  {
    if (!a5)
    {
      return 1;
    }

    v7 = result;
    if (!__s1 && a5 == 1)
    {
      return 0;
    }

    result = 0;
    if (a2 <= 7)
    {
      if (a2 <= 4)
      {
        if (a2 != 1 && a2 != 2)
        {
          if (a2 != 3)
          {
            return result;
          }

LABEL_45:
          if (a5 != 1)
          {
            return 0;
          }

          goto LABEL_46;
        }

        if (a5 != 1)
        {
          goto LABEL_65;
        }

LABEL_46:
        v16 = *(v7 + 32);
        return !strcmp(__s1, v16);
      }

      if ((a2 - 6) >= 2)
      {
        if (a2 != 5)
        {
          return result;
        }

        goto LABEL_45;
      }

      if (*(v7 + 48) != a4)
      {
        return 0;
      }

      if (a5 != 1)
      {
        return a5 == 2 && !memcmp(__s1, **(v7 + 56), *(v7 + 52));
      }

      if (strcmp(__s1, *(v7 + 32)))
      {
        v12 = *(v7 + 40);
        if (v12)
        {
          v13 = *v12;
          if (*v12)
          {
            v14 = v12 + 1;
            while (strcmp(__s1, v13))
            {
              v15 = *v14++;
              v13 = v15;
              if (!v15)
              {
                return 0;
              }
            }

            return 1;
          }
        }

        return 0;
      }

      return 1;
    }

    if (a2 <= 10)
    {
      if (a2 == 8)
      {
        if (a5 != 1)
        {
          if (a5 != 2)
          {
            return 0;
          }

          v25 = *(v7 + 52);
          return v25 == a4;
        }

        if (strcmp(__s1, *(v7 + 32)))
        {
          v17 = *(v7 + 40);
          if (v17)
          {
            v18 = *v17;
            if (*v17)
            {
              v19 = v17 + 1;
              while (strcmp(__s1, v18))
              {
                v20 = *v19++;
                v18 = v20;
                if (!v20)
                {
                  return 0;
                }
              }

              return 1;
            }
          }

          return 0;
        }

        return 1;
      }

      if (a2 != 9)
      {
        if (a5 == 1)
        {
          if (strcmp(__s1, *(v7 + 32)))
          {
            v8 = *(v7 + 40);
            if (v8)
            {
              v9 = *v8;
              if (*v8)
              {
                v10 = v8 + 1;
                while (strcmp(__s1, v9))
                {
                  v11 = *v10++;
                  v9 = v11;
                  if (!v11)
                  {
                    return 0;
                  }
                }

                return 1;
              }
            }

            return 0;
          }

          return 1;
        }

LABEL_65:
        if (a5 != 2)
        {
          return 0;
        }

        goto LABEL_66;
      }

      if (a5 != 1)
      {
        if (a5 != 2 || __s1 && strcmp(__s1, *(v7 + 56)))
        {
          return 0;
        }

LABEL_66:
        v25 = *(v7 + 48);
        return v25 == a4;
      }

      if (a4 == 2)
      {
        v26 = *(v7 + 56);
        v27 = "tcp";
      }

      else
      {
        if (a4 != 1)
        {
          goto LABEL_84;
        }

        v26 = *(v7 + 56);
        v27 = "udp";
      }

      if (strcmp(v27, v26))
      {
        return 0;
      }

LABEL_84:
      if (strcmp(__s1, *(v7 + 32)))
      {
        v28 = *(v7 + 40);
        if (v28)
        {
          v29 = *v28;
          if (*v28)
          {
            v30 = v28 + 1;
            while (strcmp(__s1, v29))
            {
              v31 = *v30++;
              v29 = v31;
              if (!v31)
              {
                return 0;
              }
            }

            return 1;
          }
        }

        return 0;
      }

      return 1;
    }

    if (a2 == 11)
    {
      if (a5 == 1)
      {
        if (strcmp(__s1, *(v7 + 32)))
        {
          v21 = *(v7 + 40);
          if (v21)
          {
            v22 = *v21;
            if (*v21)
            {
              v23 = v21 + 1;
              while (strcmp(__s1, v22))
              {
                v24 = *v23++;
                v22 = v24;
                if (!v24)
                {
                  return 0;
                }
              }

              return 1;
            }
          }

          return 0;
        }

        return 1;
      }

      goto LABEL_65;
    }

    if (a2 == 12 || a2 == 13)
    {
      if (a5 != 1)
      {
        if (a5 != 2)
        {
          return 0;
        }

        v16 = *(v7 + 40);
        return !strcmp(__s1, v16);
      }

      goto LABEL_46;
    }
  }

  return result;
}

uint64_t si_item_retain(uint64_t result)
{
  if (result)
  {
    if ((atomic_fetch_add((result + 12), 1u) & 0x80000000) != 0)
    {
      si_list_add_cold_1();
    }
  }

  return result;
}

const char *si_cache_add_item(const char *result, const char **a2, uint64_t a3)
{
  if (result != a2)
  {
    v3 = result;
    if (result)
    {
      if (a2)
      {
        if (a3)
        {
          result = *a2;
          if (*a2)
          {
            result = strcmp(result, *v3);
            if (result)
            {
              result = si_module_allows_caching(a2);
              if (result)
              {
                v6 = *(a3 + 8);
                if (v6 <= 0x11)
                {
                  v7 = *(v3 + 4);
                  if (v7)
                  {
                    v8 = (v7 + 240 * v6);
                    pthread_mutex_lock(v8);
                    v9 = v7 + 240 * *(a3 + 8);
                    v10 = *(v9 + 64);
                    si_item_release(*(v9 + 8 * v10 + 72));
                    v11 = si_item_retain(a3);
                    v12 = v7 + 240 * *(a3 + 8);
                    *(v12 + 8 * v10 + 72) = v11;
                    if (v10 <= 18)
                    {
                      v13 = v10 + 1;
                    }

                    else
                    {
                      v13 = 0;
                    }

                    *(v12 + 64) = v13;

                    return pthread_mutex_unlock(v8);
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

int getpwuid_r(uid_t a1, passwd *a2, char *a3, size_t a4, passwd **a5)
{
  if (!a5)
  {
    LODWORD(v8) = 34;
    return v8;
  }

  *a5 = 0;
  LODWORD(v8) = 34;
  if (a2)
  {
    if (a3)
    {
      v10 = a4;
      if (a4)
      {
        v11 = _os_feature_enabled_simple_impl();
        if (a1 <= 0x1F3 && (v11 & 1) == 0)
        {
          v12 = si_search_cache_file_search;
          if (!si_search_cache_file_search)
          {
            v12 = si_module_with_name("cache_file");
            si_search_cache_file_search = v12;
          }

          v8 = si_user_byuid(v12);
          if (v8)
          {
            goto LABEL_22;
          }

          v13 = si_search_file_search;
          if (!si_search_file_search)
          {
            v13 = si_module_with_name("file");
            si_search_file_search = v13;
          }

          v14 = si_user_byuid(v13);
          if (v14)
          {
            v15 = v14;
            v16 = si_search_cache_file_search;
            if (!si_search_cache_file_search)
            {
              v16 = si_module_with_name("cache_file");
              si_search_cache_file_search = v16;
            }

            v17 = si_search_file_search;
            if (!si_search_file_search)
            {
              v17 = si_module_with_name("file");
              si_search_file_search = v17;
            }

            si_cache_add_item(v16, v17, v15);
            goto LABEL_23;
          }
        }

        v18 = si_search_search;
        if (!si_search_search)
        {
          v18 = si_module_with_name("search");
          si_search_search = v18;
        }

        v8 = si_user_byuid(v18);
        if (v8)
        {
LABEL_22:
          v15 = v8;
LABEL_23:
          v19 = copy_user_r((v15 + 8), a2, a3, v10);
          si_item_release(v15);
          if (v19)
          {
            LODWORD(v8) = 34;
          }

          else
          {
            LODWORD(v8) = 0;
            *a5 = a2;
          }
        }
      }
    }
  }

  return v8;
}

uint64_t si_user_byuid(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 24)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

void *_fsi_get_line()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v7 = *MEMORY[0x1E69E9840];
  __s[0] = 0;
  v1 = 0;
  if (fgets(__s, 4096, v0) && __s[0])
  {
    if (__s[0] != 35)
    {
      __s[strlen(__s) - 1] = 0;
    }

    v2 = (strlen(__s) + 1);
    v3 = malloc_type_malloc(v2, 0x851F2927uLL);
    v1 = v3;
    if (v3)
    {
      memmove(v3, __s, v2);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return v1;
}

_BYTE *file_grouplist(uint64_t a1, const char *a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = (*(*(a1 + 40) + 16))();
  if (v4)
  {
    si_item_release(v4);
  }

  v5 = fopen("/etc/group", "r");
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  _fsi_get_validation(a1, 2u, "/etc/group", v5, &v33, &v32);
  line = _fsi_get_line();
  if (!line)
  {
    fclose(v6);
    v9 = 0;
    goto LABEL_30;
  }

  v8 = line;
  v9 = 0;
  v10 = 0;
  do
  {
    if (*v8 == 35)
    {
      v11 = v8;
LABEL_10:
      free(v11);
      goto LABEL_11;
    }

    v34 = 0;
    v11 = _fsi_tokenize(v8, ":", 1, &v34);
    v12 = v11;
    if (v34 != 4)
    {
      goto LABEL_10;
    }

    v34 = 0;
    v13 = _fsi_tokenize(v11[3], ",", 1, &v34);
    v14 = v34;
    v31 = v13;
    if (v34 < 1)
    {
      v18 = 0;
      v30 = -2;
    }

    else
    {
      v15 = v13;
      if (!strcmp(a2, *v13))
      {
        v18 = 1;
LABEL_21:
        v30 = atoi(v12[2]);
      }

      else
      {
        v29 = v10;
        v16 = 0;
        while (v14 - 1 != v16)
        {
          if (!strcmp(a2, v15[++v16]))
          {
            v18 = v16 < v14;
            v10 = v29;
            goto LABEL_21;
          }
        }

        v18 = 0;
        v30 = -2;
        v10 = v29;
      }
    }

    free(v12);
    free(v31);
    free(v8);
    if (v18)
    {
      v19 = reallocf(v9, 4 * (v10 + 1));
      v9 = v19;
      if (!v19)
      {
        fclose(v6);
        goto LABEL_30;
      }

      *(v19 + v10) = v30;
      v10 = (v10 + 1);
    }

LABEL_11:
    v8 = _fsi_get_line();
  }

  while (v8);
  fclose(v6);
  if (v10)
  {
    v20 = LI_ils_create("L4488s4@", v21, v22, v23, v24, v25, v26, v27, a1);
    goto LABEL_31;
  }

LABEL_30:
  v20 = 0;
LABEL_31:
  free(v9);
  return v20;
}

uint64_t search_groupist(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 32);
    if (v4)
    {
      v8 = 0;
      while (1)
      {
        result = search_get_module(v4, 3u, &v8);
        if (!result)
        {
          break;
        }

        if (result != *(v4 + 432))
        {
          v7 = *(*(result + 40) + 80);
          if (v7)
          {
            result = v7(v3, a2, a3);
            if (result)
            {
              break;
            }
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t si_grouplist(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 80)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

BOOL _muser_available()
{
  v0 = _muser_xpc_pipe(0);
  if (v0)
  {
    xpc_release(v0);
  }

  return _si_muser_disabled == 0;
}

_BYTE *muser_grouplist(uint64_t a1, const char *a2)
{
  if (*a2 == 95)
  {
    return 0;
  }

  if (!_muser_available())
  {
    return 0;
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  xpc_dictionary_set_string(v4, "reqtype", "grouplist");
  xpc_dictionary_set_string(v5, "query", a2);
  v6 = _muser_call("getgrouplist", v5);
  if (v6)
  {
    v7 = v6;
    v24 = 0;
    v25 = &v24;
    v26 = 0x2000000000;
    v27 = 0;
    value = xpc_dictionary_get_value(v6, "grouplist");
    if (value)
    {
      v16 = value;
      if (MEMORY[0x19A8FCCB0]() == MEMORY[0x1E69E9E50])
      {
        count = xpc_array_get_count(v16);
        v20 = malloc_type_calloc(count + 1, 4uLL, 0x100004052888210uLL);
        v25[3] = v20;
        applier[0] = MEMORY[0x1E69E9820];
        applier[1] = 0x40000000;
        applier[2] = ___muser_extract_grouplist_block_invoke;
        applier[3] = &unk_1E75063C0;
        applier[4] = &v24;
        xpc_array_apply(v16, applier);
      }
    }

    if (v25[3])
    {
      v22 = v25[3];
      v17 = LI_ils_create("L4488s4@", v9, v10, v11, v12, v13, v14, v15, a1);
      v21 = v25[3];
    }

    else
    {
      v21 = 0;
      v17 = 0;
    }

    free(v21);
    _Block_object_dispose(&v24, 8);
    xpc_release(v7);
  }

  else
  {
    v17 = 0;
  }

  xpc_release(v5);
  return v17;
}

xpc_object_t _muser_xpc_pipe(int a1)
{
  if (_muser_xpc_pipe_once != -1)
  {
    _muser_xpc_pipe_cold_1();
  }

  if (_si_muser_disabled != 1)
  {
    pthread_mutex_lock(&mutex);
    v2 = __muser_pipe;
    if (a1)
    {
      xpc_release(__muser_pipe);
      __muser_pipe = 0;
    }

    else if (__muser_pipe)
    {
LABEL_18:
      v2 = xpc_retain(v2);
LABEL_19:
      pthread_mutex_unlock(&mutex);
      return v2;
    }

    if (xpc_user_sessions_enabled())
    {
      xpc_user_sessions_get_foreground_uid();
      v3 = xpc_pipe_create_with_user_session_uid();
    }

    else
    {
      v3 = xpc_pipe_create();
    }

    v2 = v3;
    __muser_pipe = v3;
    if (!_si_muser_disabled)
    {
      if (v3 && (v4 = xpc_dictionary_create(0, 0, 0), xpc_dictionary_set_string(v4, "reqtype", "available"), xpc_dictionary_set_int64(v4, "version", 1), v5 = xpc_pipe_routine(), xpc_release(v4), !v5))
      {
        v6 = xpc_dictionary_get_BOOL(0, "available");
        xpc_release(0);
      }

      else
      {
        v6 = xpc_user_sessions_enabled();
      }

      _si_muser_disabled = v6 ^ 1;
      v2 = __muser_pipe;
    }

    if (!v2)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  return 0;
}

void _fsi_get_validation(uint64_t a1, unsigned int a2, const char *a3, FILE *a4, __darwin_time_t *a5, uint64_t *a6)
{
  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (a1)
  {
    if (a3)
    {
      if (gL1CacheEnabled)
      {
        v9 = *(a1 + 32);
        if (v9)
        {
          if ((*v9 >> a2))
          {
            v10 = &v9[a2];
            v12 = v10[1];
            v11 = v10 + 1;
            if (v12 < 0)
            {
              *&v17.st_dev = 0;
              asprintf(&v17, "com.apple.system.info:%s", a3);
              if (!*&v17.st_dev)
              {
                return;
              }

              notify_register_check(*&v17.st_dev, v11);
              free(*&v17.st_dev);
              if (!a5)
              {
                goto LABEL_20;
              }
            }

            else if (!a5)
            {
LABEL_20:
              if (!a6)
              {
                return;
              }

              tv_nsec = a2;
              goto LABEL_30;
            }

            v14 = *v11;
            if (!notify_peek())
            {
              *a5 = bswap32(0);
            }

            goto LABEL_20;
          }

          memset(&v17, 0, sizeof(v17));
          if (a4)
          {
            v13 = fileno(a4);
            if (fstat(v13, &v17))
            {
              return;
            }
          }

          else
          {
            if (a2 > 0xA)
            {
              v16 = "/etc/ethers";
            }

            else
            {
              v16 = off_1E7505EA0[a2];
            }

            if (stat(v16, &v17))
            {
              return;
            }
          }

          if (a5)
          {
            *a5 = v17.st_mtimespec.tv_sec;
          }

          if (a6)
          {
            tv_nsec = v17.st_mtimespec.tv_nsec;
LABEL_30:
            *a6 = tv_nsec;
          }
        }
      }
    }
  }
}

void *_fsi_tokenize(_BYTE *a1, char *__s, int a3, _DWORD *a4)
{
  if (!a1)
  {
    return 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (!__s)
  {
    v26 = reallocf(0, 0x10uLL);
    appended = v26;
    if (v26)
    {
      *v26 = a1;
      v26[1] = 0;
    }

    goto LABEL_38;
  }

  if (!*a1)
  {
    return 0;
  }

  v8 = strlen(__s);
  v9 = 0;
  appended = 0;
  v11 = v8 & 0x7FFFFFFF;
  while (1)
  {
    v12 = v9 << 32;
    for (i = &a1[v9]; ; ++i)
    {
      v14 = *i;
      if ((v14 - 9) >= 2 && v14 != 32)
      {
        break;
      }

      LODWORD(v9) = v9 + 1;
      v12 += 0x100000000;
    }

    if (!*i)
    {
      break;
    }

    v15 = &a1[v12 >> 32];
    v16 = *v15;
    v17 = *v15 != 0;
    v28 = v8;
    if (*v15)
    {
      LODWORD(v18) = v9;
      v19 = v9;
      while (1)
      {
        v20 = v11;
        v21 = __s;
        if (v8 >= 1)
        {
          break;
        }

LABEL_17:
        if (v16 > 0x20 || ((1 << v16) & 0x100000600) == 0)
        {
          v19 = v18;
        }

        v18 = v18 + 1;
        v15 = &a1[v18];
        v16 = a1[v18];
        v17 = a1[v18] != 0;
        if (!a1[v18])
        {
          v23 = 0;
          goto LABEL_24;
        }
      }

      while (1)
      {
        v22 = *v21++;
        if (v16 == v22)
        {
          break;
        }

        if (!--v20)
        {
          goto LABEL_17;
        }
      }

      v23 = *v15 != 0;
    }

    else
    {
      v23 = 0;
      v19 = v9;
      LODWORD(v18) = v9;
    }

LABEL_24:
    v24 = &a1[v19 + 1];
    if (v18 == v9)
    {
      v25 = v15;
    }

    else
    {
      v25 = v24;
    }

    *v25 = 0;
    appended = _fsi_append_string(i, appended);
    if (a4)
    {
      ++*a4;
    }

    v9 = (v18 + v23);
    v8 = v28;
    if (!a1[v9])
    {
      goto LABEL_33;
    }
  }

  v17 = 1;
LABEL_33:
  if (a3 && v17)
  {
    appended = _fsi_append_string(&a1[v9], appended);
LABEL_38:
    if (a4)
    {
      ++*a4;
    }
  }

  return appended;
}

void *_fsi_append_string(uint64_t a1, void *__ptr)
{
  v2 = __ptr;
  if (a1)
  {
    if (__ptr)
    {
      v4 = -1;
      v5 = __ptr;
      do
      {
        v6 = *v5++;
        ++v4;
      }

      while (v6);
    }

    else
    {
      v4 = 0;
    }

    v7 = reallocf(__ptr, 8 * (v4 + 2));
    v2 = v7;
    if (v7)
    {
      v8 = &v7[8 * v4];
      *v8 = a1;
      *(v8 + 1) = 0;
    }
  }

  return v2;
}

_BYTE *LI_ils_create(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  v146 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_214;
  }

  v132 = &a9;
  v10 = *a1;
  if (*a1)
  {
    v11 = 0;
    v12 = 0;
    v13 = a1;
    v14 = 8;
    while (1)
    {
      if (v10 <= 75)
      {
        if (v10 <= 51)
        {
          if (v10 == 42)
          {
            if ((v11 & 7) != 0)
            {
              v15 = 16 - (v11 & 7);
            }

            else
            {
              v15 = 8;
            }

            if (v12 <= 8)
            {
              v12 = 8;
            }

            v35 = v132++;
            v36 = *v35;
            v22 = 8;
            if (*v35)
            {
              v37 = *v36;
              if (*v36)
              {
                v38 = 0;
                v39 = 1;
                do
                {
                  v38 += strlen(v37) + 9;
                  v37 = v36[v39++];
                }

                while (v37);
                v22 = v38 + 8;
              }

              else
              {
                v22 = 8;
              }
            }

            v21 = HIDWORD(v22);
            v19 = v22;
            goto LABEL_104;
          }

          if (v10 == 49)
          {
            v21 = 0;
            LODWORD(v22) = 0;
            v19 = 0;
            if (v12 <= 1)
            {
              v12 = 1;
            }

            ++v132;
            v15 = 1;
            goto LABEL_104;
          }

          if (v10 != 50)
          {
            goto LABEL_215;
          }

          v21 = 0;
          LODWORD(v22) = 0;
          v19 = 0;
          if (v12 <= 2)
          {
            v12 = 2;
          }

          v15 = v11 & 1 | 2;
          goto LABEL_70;
        }

        if (v10 != 52)
        {
          if (v10 != 56)
          {
            if (v10 != 64)
            {
              goto LABEL_215;
            }

            v21 = 0;
            if ((v11 & 3) != 0)
            {
              v27 = 8 - (v11 & 3);
            }

            else
            {
              v27 = 4;
            }

            v28 = (v27 + v11) & 7;
            v127 = v28 == 0;
            v19 = *v132;
            v132 += 2;
            v29 = 16 - v28;
            if (v127)
            {
              v29 = 8;
            }

            if (v12 <= 8)
            {
              v12 = 8;
            }

            v15 = v29 + v27;
            goto LABEL_101;
          }

LABEL_65:
          v21 = 0;
          LODWORD(v22) = 0;
          v19 = 0;
          if ((v11 & 7) != 0)
          {
            v15 = 16 - (v11 & 7);
          }

          else
          {
            v15 = 8;
          }

          if (v12 <= 8)
          {
            v12 = 8;
          }

          goto LABEL_70;
        }
      }

      else
      {
        if (v10 <= 97)
        {
          if (v10 != 76)
          {
            if (v10 == 83)
            {
              v21 = 0;
              LODWORD(v22) = 0;
              v19 = 0;
              v40 = v132++;
              v41 = *v40;
              if ((v11 & 3) != 0)
              {
                v15 = 132 - (v11 & 3);
              }

              else
              {
                v15 = 128;
              }

              v139 = *(v41 + 4);
              v140 = *(v41 + 5);
              v142 = *(v41 + 6);
              v144 = *(v41 + 7);
              v135 = *v41;
              v136 = *(v41 + 1);
              v42 = *(v41 + 2);
              v138 = *(v41 + 3);
              v12 = 128;
              goto LABEL_104;
            }

            if (v10 != 97)
            {
              goto LABEL_215;
            }

            if ((v11 & 7) != 0)
            {
              v15 = 16 - (v11 & 7);
            }

            else
            {
              v15 = 8;
            }

            if (v12 <= 8)
            {
              v12 = 8;
            }

            v23 = v132++;
            v24 = *v23;
            if (*v23)
            {
              if (*v24)
              {
                v25 = 1;
                v19 = 8;
                do
                {
                  v26 = v24[v25++];
                  v19 += 12;
                }

                while (v26);
LABEL_100:
                v21 = HIDWORD(v19);
LABEL_101:
                LODWORD(v22) = v19;
                goto LABEL_104;
              }

LABEL_99:
              v19 = 8;
              goto LABEL_100;
            }

            goto LABEL_81;
          }

          goto LABEL_65;
        }

        if (v10 <= 108)
        {
          if (v10 == 98)
          {
            if ((v11 & 7) != 0)
            {
              v15 = 16 - (v11 & 7);
            }

            else
            {
              v15 = 8;
            }

            if (v12 <= 8)
            {
              v12 = 8;
            }

            v31 = v132++;
            v32 = *v31;
            if (*v31)
            {
              if (*v32)
              {
                v33 = 1;
                v19 = 8;
                do
                {
                  v34 = v32[v33++];
                  v19 += 16;
                }

                while (v34);
                goto LABEL_100;
              }

              goto LABEL_99;
            }
          }

          else
          {
            if (v10 != 99)
            {
              goto LABEL_215;
            }

            if ((v11 & 7) != 0)
            {
              v15 = 16 - (v11 & 7);
            }

            else
            {
              v15 = 8;
            }

            if (v12 <= 8)
            {
              v12 = 8;
            }

            v16 = v132++;
            v17 = *v16;
            if (*v16)
            {
              if (*v17)
              {
                v18 = 1;
                v19 = 8;
                do
                {
                  v20 = v17[v18++];
                  v19 += 24;
                }

                while (v20);
                goto LABEL_100;
              }

              goto LABEL_99;
            }
          }

          goto LABEL_81;
        }

        if (v10 != 109)
        {
          if (v10 != 115)
          {
LABEL_215:
            v9 = 0;
            goto LABEL_214;
          }

          if ((v11 & 7) != 0)
          {
            v15 = 16 - (v11 & 7);
          }

          else
          {
            v15 = 8;
          }

          if (v12 <= 8)
          {
            v12 = 8;
          }

          v30 = v132++;
          if (*v30)
          {
            v19 = strlen(*v30) + 1;
            goto LABEL_100;
          }

LABEL_81:
          v21 = 0;
          LODWORD(v22) = 0;
          v19 = 0;
          goto LABEL_104;
        }
      }

      v21 = 0;
      LODWORD(v22) = 0;
      v19 = 0;
      if ((v11 & 3) != 0)
      {
        v15 = 8 - (v11 & 3);
      }

      else
      {
        v15 = 4;
      }

      if (v12 <= 4)
      {
        v12 = 4;
      }

LABEL_70:
      ++v132;
LABEL_104:
      v14 += v15 + v19;
      v11 += v15;
      v43 = *++v13;
      v10 = v43;
      if (!v43)
      {
        goto LABEL_107;
      }
    }
  }

  v21 = 0;
  LODWORD(v22) = 0;
  v12 = 0;
  v11 = 0;
  v14 = 8;
LABEL_107:
  v44 = 8;
  if (v12 < 8)
  {
    v44 = v12;
  }

  v45 = *(align_64 + v44);
  if (v45 && v11 % v45)
  {
    v46 = v45 - (v11 % v45);
  }

  else
  {
    v46 = 0;
  }

  v47 = malloc_type_malloc(v46 + v14, 0x9E614304uLL);
  if (!v47)
  {
    v9 = 0;
    *__error() = 12;
    goto LABEL_214;
  }

  v48 = 0;
  v49 = (v47 + v11 + v46);
  *v49 = 0x434947414D534C49;
  v50 = (v49 + 1);
  v131 = v45;
  v133 = &a9;
  v51 = v47;
  v130 = v47;
  while (1)
  {
    v52 = *v9;
    if (v52 <= 0x4B)
    {
      break;
    }

    if (*v9 > 0x61u)
    {
      if (*v9 <= 0x6Cu)
      {
        if (v52 == 98)
        {
          v107 = v48 & 7;
          if ((v48 & 7) != 0)
          {
            v108 = 8 - v107;
            bzero(v51, 8 - v107);
            v51 = (v51 + v108);
            v48 += v108;
          }

          v109 = v133++;
          v110 = *v109;
          if (v110)
          {
            v111 = 0;
            *v51 = v50;
            v112 = 1;
            do
            {
              v113 = v112;
              v114 = *&v110[8 * v111++];
              ++v112;
            }

            while (v114);
            v61 = &v50[8 * v111];
            if (*v110)
            {
              v115 = &v50[8 * v113];
              v116 = 1;
              v117 = v110;
              do
              {
                *v50 = v115;
                v50 += 8;
                *v61 = **v117;
                v61 += 8;
                v117 = &v110[8 * v116];
                v115 += 8;
                ++v116;
              }

              while (*v117);
              v22 = 8;
              goto LABEL_194;
            }

            goto LABEL_193;
          }
        }

        else
        {
          if (v52 != 99)
          {
            goto LABEL_198;
          }

          v53 = v48 & 7;
          if ((v48 & 7) != 0)
          {
            v54 = 8 - v53;
            bzero(v51, 8 - v53);
            v51 = (v51 + v54);
            v48 += v54;
          }

          v55 = v133++;
          v56 = *v55;
          if (v56)
          {
            v57 = 0;
            *v51 = v50;
            v58 = 1;
            do
            {
              v59 = v58;
              v60 = *&v56[8 * v57++];
              ++v58;
            }

            while (v60);
            v61 = &v50[8 * v57];
            if (*v56)
            {
              v62 = &v50[8 * v59];
              v63 = 1;
              v64 = v56;
              do
              {
                *v50 = v62;
                v50 += 8;
                *v61 = **v64;
                v61 += 16;
                v64 = &v56[8 * v63];
                v62 += 16;
                ++v63;
              }

              while (*v64);
              v22 = 16;
              goto LABEL_194;
            }

            goto LABEL_193;
          }
        }

        goto LABEL_189;
      }

      if (v52 != 109)
      {
        if (v52 != 115)
        {
          goto LABEL_198;
        }

        v86 = v48 & 7;
        if ((v48 & 7) != 0)
        {
          v87 = 8 - v86;
          bzero(v51, 8 - v86);
          v51 = (v51 + v87);
          v48 += v87;
        }

        v88 = v133++;
        v89 = *v88;
        if (*v88)
        {
          *v51 = v50;
          v22 = strlen(v89) + 1;
          v21 = HIDWORD(v22);
          memcpy(v50, v89, v22);
          v50 += v22;
        }

        else
        {
          *v51 = 0;
        }

        goto LABEL_196;
      }

LABEL_163:
      v90 = v48 & 3;
      if ((v48 & 3) != 0)
      {
        v91 = 4 - v90;
        bzero(v51, 4 - v90);
        v51 = (v51 + v91);
        v48 += v91;
      }

      v92 = v133++;
      *v51 = *v92;
      v51 = (v51 + 4);
      v48 += 4;
      goto LABEL_198;
    }

    if (v52 == 76)
    {
LABEL_166:
      v93 = v48 & 7;
      if ((v48 & 7) != 0)
      {
        v94 = 8 - v93;
        bzero(v51, 8 - v93);
        v51 = (v51 + v94);
        v48 += v94;
      }

      v95 = v133++;
      *v51 = *v95;
      v51 = (v51 + 8);
      goto LABEL_197;
    }

    if (v52 != 83)
    {
      if (v52 != 97)
      {
        goto LABEL_198;
      }

      v75 = v48 & 7;
      if ((v48 & 7) != 0)
      {
        v76 = 8 - v75;
        bzero(v51, 8 - v75);
        v51 = (v51 + v76);
        v48 += v76;
      }

      v77 = v133++;
      v78 = *v77;
      if (v78)
      {
        v79 = 0;
        *v51 = v50;
        v80 = 1;
        do
        {
          v81 = v80;
          v82 = *&v78[8 * v79++];
          ++v80;
        }

        while (v82);
        v61 = &v50[8 * v79];
        if (*v78)
        {
          v83 = &v50[8 * v81];
          v84 = 1;
          v85 = v78;
          do
          {
            *v50 = v83;
            v50 += 8;
            *v61 = **v85;
            v61 += 4;
            v85 = &v78[8 * v84];
            v83 += 4;
            ++v84;
          }

          while (*v85);
          v22 = 4;
LABEL_194:
          v118 = v50;
          v21 = HIDWORD(v22);
          v50 = v61;
LABEL_195:
          *v118 = 0;
LABEL_196:
          v51 = (v51 + 8);
LABEL_197:
          v48 += 8;
          goto LABEL_198;
        }

LABEL_193:
        v22 = v22 | (v21 << 32);
        goto LABEL_194;
      }

LABEL_189:
      v118 = v51;
      goto LABEL_195;
    }

    v119 = v48 & 3;
    if ((v48 & 3) != 0)
    {
      v120 = 4 - v119;
      bzero(v51, 4 - v119);
      v51 = (v51 + v120);
      v48 += v120;
    }

    v121 = v133++;
    v122 = *v121;
    v123 = *(v122 + 4);
    v141 = *(v122 + 5);
    v143 = *(v122 + 6);
    v145 = *(v122 + 7);
    v124 = *v122;
    v137 = *(v122 + 1);
    v125 = *(v122 + 3);
    v51[2] = *(v122 + 2);
    v51[3] = v125;
    *v51 = v124;
    v51[1] = v137;
    v51[6] = v143;
    v51[7] = v145;
    v51[4] = v123;
    v51[5] = v141;
    v51 += 8;
    v48 += 128;
LABEL_198:
    ++v9;
  }

  if (*v9 > 0x33u)
  {
    switch(v52)
    {
      case '4':
        goto LABEL_163;
      case '8':
        goto LABEL_166;
      case '@':
        v66 = v48 & 3;
        if ((v48 & 3) != 0)
        {
          v67 = 4 - v66;
          bzero(v51, 4 - v66);
          v51 = (v51 + v67);
          v48 += v67;
        }

        v68 = v133;
        v134 = v133 + 1;
        v22 = *v68;
        *v51 = v22;
        v69 = (v51 + 4);
        v70 = v48 + 4;
        v71 = (v48 + 4) & 7;
        if (v71)
        {
          v72 = 8 - v71;
          bzero(v69, 8 - v71);
          v69 = (v69 + v72);
          v70 += v72;
        }

        v73 = v134;
        v133 = (v134 + 1);
        v74 = *v73;
        if (*v73)
        {
          *v69 = v50;
          memcpy(v50, v74, v22);
          v50 += v22;
        }

        else
        {
          *v69 = 0;
        }

        v21 = 0;
        v51 = v69 + 1;
        v48 = v70 + 8;
        break;
    }

    goto LABEL_198;
  }

  if (*v9 > 0x30u)
  {
    if (v52 == 49)
    {
      v106 = v133++;
      *v51 = *v106;
      v51 = (v51 + 1);
    }

    else if (v52 == 50)
    {
      if (v48)
      {
        *v51 = 0;
        v51 = (v51 + 1);
        ++v48;
      }

      v65 = v133++;
      *v51 = *v65;
      v51 = (v51 + 2);
      v48 += 2;
    }

    goto LABEL_198;
  }

  if (v52 == 42)
  {
    v96 = v48 & 7;
    if ((v48 & 7) != 0)
    {
      v97 = 8 - v96;
      bzero(v51, 8 - v96);
      v51 = (v51 + v97);
      v48 += v97;
    }

    v98 = v133++;
    v99 = *v98;
    *v51 = v50;
    if (v99)
    {
      v100 = 0;
        ;
      }

      v102 = &v50[8 * v100];
      if (*v99)
      {
        v103 = 1;
        v104 = v99;
        do
        {
          *v50 = v102;
          v50 += 8;
          v105 = *v104;
          v22 = strlen(*v104) + 1;
          memcpy(v102, v105, v22);
          v102 += v22;
          v104 = &v99[v103++];
        }

        while (*v104);
      }

      else
      {
        v22 = v22 | (v21 << 32);
      }
    }

    else
    {
      v102 = v50 + 8;
      v22 = v22 | (v21 << 32);
    }

    v21 = HIDWORD(v22);
    *v50 = 0;
    v51 = (v51 + 8);
    v48 += 8;
    v50 = v102;
    goto LABEL_198;
  }

  if (*v9)
  {
    goto LABEL_198;
  }

  if (v131)
  {
    v126 = v48 % v131;
    if (v48 % v131)
    {
      v127 = v131 == v126;
    }

    else
    {
      v127 = 1;
    }

    v9 = v130;
    if (!v127)
    {
      bzero(v51, (v131 - v126));
    }
  }

  else
  {
    v9 = v130;
  }

LABEL_214:
  v128 = *MEMORY[0x1E69E9840];
  return v9;
}

void LI_set_thread_item(int a1, uint64_t a2)
{
  thread_info = LI_get_thread_info(a1);
  if (thread_info)
  {
    v4 = thread_info;
    si_item_release(*thread_info);
    *v4 = a2;
  }
}

unsigned int *LI_get_thread_info(int a1)
{
  pthread_once(&_info_key_initialized, _LI_data_init);
  if (_info_key_ok != 1)
  {
    return 0;
  }

  v2 = pthread_getspecific(_info_key);
  if (!v2)
  {
    result = malloc_type_calloc(1uLL, 0x18uLL, 0x1090040D449AA06uLL);
    if (!result)
    {
      return result;
    }

    v2 = result;
    pthread_setspecific(_info_key, result);
  }

  v4 = *v2;
  if (v4)
  {
    v5 = 0;
    while (*(*(v2 + 1) + 4 * v5) != a1)
    {
      if (v4 == ++v5)
      {
        *(v2 + 1) = reallocf(*(v2 + 1), 4 * (v4 + 1));
        v6 = reallocf(*(v2 + 2), 8 * (v4 + 1));
        goto LABEL_12;
      }
    }

    return *(*(v2 + 2) + 8 * v5);
  }

  else
  {
    *(v2 + 1) = malloc_type_malloc(4uLL, 0x100004052888210uLL);
    v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
LABEL_12:
    *(v2 + 2) = v6;
    if (*(v2 + 1))
    {
      if (v6)
      {
        result = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
        if (result)
        {
          v7 = *(v2 + 2);
          *(*(v2 + 1) + 4 * v4) = a1;
          *(v7 + 8 * v4) = result;
          ++*v2;
        }

        return result;
      }

      free(*(v2 + 1));
      v6 = *(v2 + 2);
    }

    *(v2 + 1) = 0;
    if (v6)
    {
      free(v6);
    }

    result = 0;
    *(v2 + 2) = 0;
  }

  return result;
}

char *__cdecl ether_ntoa(const ether_addr *a1)
{
  result = ether_ntoa_s;
  if (ether_ntoa_s || (result = malloc_type_malloc(0x12uLL, 0x100004077774924uLL), (ether_ntoa_s = result) != 0))
  {
    *result = 0;
    snprintf(result, 0x12uLL, "%x:%x:%x:%x:%x:%x", a1->octet[0], a1->octet[1], a1->octet[2], a1->octet[3], a1->octet[4], a1->octet[5]);
    return ether_ntoa_s;
  }

  return result;
}

passwd *__cdecl getpwuid(uid_t a1)
{
  v2 = _os_feature_enabled_simple_impl();
  if (a1 > 0x1F3 || !v2)
  {
LABEL_14:
    v9 = si_search_search;
    if (!si_search_search)
    {
      v9 = si_module_with_name("search");
      si_search_search = v9;
    }

    v4 = si_user_byuid(v9);
    goto LABEL_17;
  }

  v3 = si_search_cache_file_search;
  if (!si_search_cache_file_search)
  {
    v3 = si_module_with_name("cache_file");
    si_search_cache_file_search = v3;
  }

  v4 = si_user_byuid(v3);
  if (!v4)
  {
    v5 = si_search_file_search;
    if (!si_search_file_search)
    {
      v5 = si_module_with_name("file");
      si_search_file_search = v5;
    }

    v6 = si_user_byuid(v5);
    if (v6)
    {
      v4 = v6;
      v7 = si_search_cache_file_search;
      if (!si_search_cache_file_search)
      {
        v7 = si_module_with_name("cache_file");
        si_search_cache_file_search = v7;
      }

      v8 = si_search_file_search;
      if (!si_search_file_search)
      {
        v8 = si_module_with_name("file");
        si_search_file_search = v8;
      }

      si_cache_add_item(v7, v8, v4);
      goto LABEL_17;
    }

    goto LABEL_14;
  }

LABEL_17:
  LI_set_thread_item(201, v4);
  if (v4)
  {
    return (v4 + 32);
  }

  else
  {
    return 0;
  }
}

int getgrgid_r(gid_t a1, group *a2, char *a3, size_t a4, group **a5)
{
  if (a5)
  {
    *a5 = 0;
    LODWORD(v7) = 34;
    if (a2)
    {
      if (a3)
      {
        v9 = a4;
        if (a4)
        {
          v10 = si_search_search;
          if (!si_search_search)
          {
            v10 = si_module_with_name("search");
            si_search_search = v10;
          }

          v7 = si_group_bygid(v10);
          if (v7)
          {
            v11 = v7;
            v12 = copy_group_r(v7 + 32, a2, a3, v9);
            si_item_release(v11);
            if (v12)
            {
              LODWORD(v7) = 34;
            }

            else
            {
              LODWORD(v7) = 0;
              *a5 = a2;
            }
          }
        }
      }
    }
  }

  else
  {
    LODWORD(v7) = 34;
  }

  return v7;
}

uint64_t si_group_bygid(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 56)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t copy_group_r(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *a1;
  if (v8)
  {
    v9 = strlen(v8) + 1;
  }

  else
  {
    v9 = 0;
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    v9 += strlen(v11) + 1;
  }

  v12 = v9 + 8;
  v13 = *(a1 + 24);
  if (v13 && (v14 = *v13) != 0)
  {
    v15 = 0;
    v16 = v13 + 1;
    do
    {
      v17 = v15;
      v12 += strlen(v14) + 9;
      ++v15;
      v14 = v16[v17];
    }

    while (v14);
  }

  else
  {
    LODWORD(v15) = 0;
  }

  if (v12 > a4)
  {
    return 0xFFFFFFFFLL;
  }

  *a2 = 0;
  if (*a1)
  {
    *a2 = a3;
    v18 = strlen(*a1) + 1;
    memmove(a3, *a1, v18);
    a3 = (a3 + v18);
  }

  *(a2 + 8) = 0;
  if (*(a1 + 8))
  {
    *(a2 + 8) = a3;
    v19 = strlen(*(a1 + 8)) + 1;
    memmove(a3, *(a1 + 8), v19);
    a3 = (a3 + v19);
  }

  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = 0;
  if (*(a1 + 24))
  {
    *(a2 + 24) = a3;
    if (v15)
    {
      v20 = 0;
      v21 = &a3[(v15 + 1)];
      v22 = 8 * v15;
      do
      {
        a3[v20 / 8] = v21;
        v23 = strlen(*(*(a1 + 24) + v20)) + 1;
        memmove(v21, *(*(a1 + 24) + v20), v23);
        v21 += v23;
        v20 += 8;
      }

      while (v22 != v20);
      a3 = (a3 + v20);
    }
  }

  result = 0;
  *a3 = 0;
  return result;
}

passwd *__cdecl getpwnam(const char *a1)
{
  v1 = si_search_search;
  if (!si_search_search)
  {
    v1 = si_module_with_name("search");
    si_search_search = v1;
  }

  v2 = si_user_byname(v1);
  LI_set_thread_item(101, v2);
  if (v2)
  {
    return (v2 + 32);
  }

  else
  {
    return 0;
  }
}

void *si_module_with_name(char *__s1)
{
  if (si_module_with_name_modules)
  {
    v2 = &si_module_with_name_modules;
    if (!strcmp(__s1, si_module_with_name_modules))
    {
LABEL_5:
      v4 = v2[2];
      if (v4)
      {
        return v4;
      }

      v4 = (v2[1])();
      v2[2] = v4;
      if (v4)
      {
        return v4;
      }
    }

    else
    {
      while (1)
      {
        v3 = v2[3];
        if (!v3)
        {
          break;
        }

        v2 += 3;
        if (!strcmp(__s1, v3))
        {
          goto LABEL_5;
        }
      }
    }
  }

  pthread_mutex_lock(&module_mutex);
  v9 = 0;
  asprintf(&v9, "%s/%s.%s", "/usr/lib/info", __s1, "so");
  if (v9)
  {
    v4 = si_module_with_path(v9, __s1);
    free(v9);
    if (v4)
    {
      v5 = module_count;
      v6 = module_count + 1;
      v7 = reallocf(module_list, 8 * (module_count + 1));
      module_list = v7;
      if (v7)
      {
        v7[v5] = v4;
        module_count = v6;
      }
    }
  }

  else
  {
    v4 = 0;
    *__error() = 12;
  }

  pthread_mutex_unlock(&module_mutex);
  return v4;
}

uint64_t *si_module_static_search()
{
  if (si_module_static_search_once != -1)
  {
    si_module_static_search_cold_1();
  }

  if (si_module_static_search_result)
  {
    return 0;
  }

  else
  {
    return &si_module_static_search_si;
  }
}

void __si_module_static_search_block_invoke()
{
  si_module_static_search_si = strdup("search");
  v0 = malloc_type_calloc(1uLL, 0x1B8uLL, 0x10B00409E57A33FuLL);
  qword_1ED407660 = v0;
  if (si_module_config_modules_for_category(v0, 0, 6, off_1E7505F38))
  {
    free(si_module_static_search_si);
    si_module_static_search_si = 0;
    free(v0);
    qword_1ED407660 = 0;
    si_module_static_search_result = 1;
    return;
  }

  v0[54] = **v0;
  v1 = getenv("SYSINFO_CONF_ENABLE");
  if (v1)
  {
    if (*v1 == 49 && !v1[1])
    {
      v2 = fopen("/etc/sysinfo.conf", "r");
      *__error() = 0;
      if (v2)
      {
        line = _fsi_get_line();
        if (!line)
        {
LABEL_46:
          fclose(v2);
          return;
        }

        v4 = line;
        while (*v4 == 35)
        {
LABEL_45:
          free(v4);
          v4 = _fsi_get_line();
          if (!v4)
          {
            goto LABEL_46;
          }
        }

        v8 = 0;
        v5 = _fsi_tokenize(v4, "\t: ", 0, &v8);
        v6 = *v5;
        if (!strcmp(*v5, "default"))
        {
          v7 = 0;
        }

        else if (!strcmp(v6, "user"))
        {
          v7 = 1;
        }

        else if (!strcmp(v6, "group"))
        {
          v7 = 2;
        }

        else if (!strcmp(v6, "grouplist"))
        {
          v7 = 3;
        }

        else if (!strcmp(v6, "netgroup"))
        {
          v7 = 4;
        }

        else if (!strcmp(v6, "alias"))
        {
          v7 = 5;
        }

        else if (!strcmp(v6, "host"))
        {
          v7 = 6;
        }

        else if (!strcmp(v6, "network"))
        {
          v7 = 8;
        }

        else if (!strcmp(v6, "service"))
        {
          v7 = 9;
        }

        else if (!strcmp(v6, "protocol"))
        {
          v7 = 10;
        }

        else if (!strcmp(v6, "rpc"))
        {
          v7 = 11;
        }

        else if (*v6 == 102 && v6[1] == 115 && !v6[2])
        {
          v7 = 12;
        }

        else if (!strcmp(v6, "mac"))
        {
          v7 = 13;
        }

        else if (!strcmp(v6, "addrinfo"))
        {
          v7 = 15;
        }

        else
        {
          if (strcmp(v6, "nameinfo"))
          {
LABEL_44:
            free(v5);
            goto LABEL_45;
          }

          v7 = 14;
        }

        si_module_config_modules_for_category(v0, v7, v8, v5);
        goto LABEL_44;
      }
    }
  }
}

uint64_t si_module_config_modules_for_category(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v4 = a1 + 24 * a2;
  v5 = (a3 - 1);
  *(v4 + 16) = v5;
  if (a3 == 1)
  {
    return 0xFFFFFFFFLL;
  }

  *v4 = malloc_type_calloc(v5, 8uLL, 0x2004093837F09uLL);
  v8 = malloc_type_calloc(*(v4 + 16), 4uLL, 0x100004052888210uLL);
  *(v4 + 8) = v8;
  if (*v4)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    free(*v4);
    free(*(v4 + 8));
    return 0xFFFFFFFFLL;
  }

  if (a3 >= 2)
  {
    v11 = 0;
    v12 = a3;
    v13 = (a4 + 8);
    v14 = v12 - 1;
    do
    {
      v15 = si_module_with_name(*v13);
      if (v15)
      {
        *(*v4 + 8 * v11++) = v15;
        if (!strcmp(*v13, "cache"))
        {
          *(v4 + 20) |= 1u;
        }
      }

      ++v13;
      --v14;
    }

    while (v14);
  }

  return 0;
}

uint64_t si_module_cache_byname(uint64_t a1, dispatch_once_t *predicate, uint64_t a3)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __si_module_cache_byname_block_invoke;
  v5[3] = &__block_descriptor_tmp;
  v5[4] = a1;
  v5[5] = a3;
  if (*predicate != -1)
  {
    dispatch_once(predicate, v5);
  }

  return a1;
}

uint64_t __si_module_cache_byname_block_invoke(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x10E0uLL, 0x1020040EDEB21B6uLL);
  v3 = 0;
  **(a1 + 32) = strdup(*(a1 + 40));
  v4 = *(a1 + 32);
  *(v4 + 8) = 0x100000001;
  *(v4 + 16) = 1;
  *(v4 + 32) = v2;
  *(*(a1 + 32) + 40) = &si_module_cache_byname_cache_vtable;
  do
  {
    v5 = 20;
    do
    {
      result = pthread_mutex_init(&v2[240 * v3], 0);
      --v5;
    }

    while (v5);
    ++v3;
  }

  while (v3 != 18);
  return result;
}

uint64_t *si_module_static_darwin_directory()
{
  if ((_os_feature_enabled_simple_impl() & 1) == 0)
  {
    qword_1ED407470 = 0;
    xmmword_1ED407450 = 0u;
    unk_1ED407460 = 0u;
    xmmword_1ED407430 = 0u;
    unk_1ED407440 = 0u;
    xmmword_1ED407410 = 0u;
    unk_1ED407420 = 0u;
    xmmword_1ED4073F0 = 0u;
    unk_1ED407400 = 0u;
    xmmword_1ED4073D0 = 0u;
    unk_1ED4073E0 = 0u;
    xmmword_1ED4073B0 = 0u;
    unk_1ED4073C0 = 0u;
    xmmword_1ED407390 = 0u;
    unk_1ED4073A0 = 0u;
    xmmword_1ED407370 = 0u;
    unk_1ED407380 = 0u;
    xmmword_1ED407350 = 0u;
    *&off_1ED407360 = 0u;
    xmmword_1ED407330 = 0u;
    *&off_1ED407340 = 0u;
    si_module_static_darwin_directory_darwin_directory_vtable = 0u;
    *&off_1ED407320 = 0u;
  }

  if (si_module_static_darwin_directory_once != -1)
  {
    si_module_static_darwin_directory_cold_1();
  }

  return &si_module_static_darwin_directory_si;
}

char *__si_module_static_darwin_directory_block_invoke()
{
  result = strdup("darwin_directory");
  si_module_static_darwin_directory_si = result;
  return result;
}

uint64_t *si_module_static_muser()
{
  if (si_module_static_muser_once != -1)
  {
    si_module_static_muser_cold_1();
  }

  return &si_module_static_muser_si;
}

unsigned int if_nametoindex(const char *a1)
{
  v7 = 0;
  if (getifaddrs(&v7) < 0)
  {
    return 0;
  }

  v2 = v7;
  if (!v7)
  {
LABEL_8:
    freeifaddrs(v2);
LABEL_9:
    v5 = 0;
    *__error() = 6;
    return v5;
  }

  v3 = v7;
  while (1)
  {
    ifa_addr = v3->ifa_addr;
    if (ifa_addr)
    {
      if (ifa_addr->sa_family == 18 && !strcmp(v3->ifa_name, a1))
      {
        break;
      }
    }

    v3 = v3->ifa_next;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  v5 = *ifa_addr->sa_data;
  freeifaddrs(v2);
  if (!v5)
  {
    goto LABEL_9;
  }

  return v5;
}

uint64_t __si_module_static_muser_block_invoke()
{
  si_module_static_muser_si = strdup("muser");
  result = xpc_user_sessions_enabled();
  if (!result || (result = xpc_user_sessions_get_session_uid(), result))
  {
    qword_1ED407480 = muser_is_valid;
  }

  return result;
}

int getifaddrs(ifaddrs **a1)
{
  v65 = *MEMORY[0x1E69E9840];
  v62 = 0;
  *v63 = xmmword_19A0D6A80;
  v64 = 3;
  if ((sysctl(v63, 6u, 0, &v62, 0, 0) & 0x80000000) == 0)
  {
    v2 = v62;
    if (v62 <= 0x800)
    {
      v2 = 2048;
    }

    v3 = 2 * v2;
    if (v3 >= 0x1000000)
    {
      v4 = 0x1000000;
    }

    else
    {
      v4 = v3;
    }

    v62 = v4;
    while (1)
    {
      v5 = malloc_type_malloc(v4, 0xE368AB60uLL);
      if (!v5)
      {
        goto LABEL_12;
      }

      v6 = v5;
      if ((sysctl(v63, 6u, v5, &v62, 0, 0) & 0x80000000) == 0)
      {
        break;
      }

      free(v6);
      v4 = 2 * v62;
      v62 = v4;
      if (v4 >= 0x1000001)
      {
        *__error() = 55;
        goto LABEL_12;
      }
    }

    if (v62 < 1)
    {
      v11 = 0;
      v10 = 0;
      v12 = 1;
    }

    else
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 1;
      v13 = v6;
      do
      {
        if (BYTE2(v13->ifa_next) == 5)
        {
          v14 = BYTE3(v13->ifa_next);
          if (v14 == 12)
          {
            if (v9)
            {
              if (WORD2(v13->ifa_name) != v9)
              {
LABEL_113:
                abort();
              }

              v15 = HIDWORD(v13->ifa_next) & 0xA4;
              if (v15)
              {
                v16 = 0;
                v17 = &v13->ifa_flags + 1;
                ++v12;
                v18 = &v13->ifa_flags + 1;
                do
                {
                  if ((v15 >> v16))
                  {
                    if (*v18)
                    {
                      v19 = (*v18 + 3) & 0x1FC;
                    }

                    else
                    {
                      v19 = 4;
                    }

                    if (v16 == 5)
                    {
                      goto LABEL_33;
                    }

                    v18 += v19;
                  }

                  ++v16;
                }

                while (v16 != 8);
                LODWORD(v19) = 0;
LABEL_33:
                for (i = 0; i != 8; ++i)
                {
                  if ((v15 >> i))
                  {
                    v21 = *v17;
                    v22 = v21 == 0;
                    if (*v17)
                    {
                      v23 = (v21 + 3) & 0x1FC;
                    }

                    else
                    {
                      v23 = 4;
                    }

                    if (!v22 || i != 2)
                    {
                      v25 = v23;
                    }

                    else
                    {
                      v25 = v19;
                    }

                    v11 += v25;
                    v17 += v23;
                  }
                }
              }
            }
          }

          else if (v14 == 14)
          {
            if ((BYTE4(v13->ifa_next) & 0x10) != 0)
            {
              v9 = WORD2(v13->ifa_name);
              ++v12;
              if (LOBYTE(v13[2].ifa_next))
              {
                v26 = ((LOBYTE(v13[2].ifa_next) + 3) & 0x1FC) + 7;
              }

              else
              {
                v26 = 11;
              }

              v11 += v26 + 96;
              v10 += BYTE5(v13[2].ifa_next) + 1;
            }

            else
            {
              v9 = 0;
            }
          }
        }

        v13 = (v13 + LOWORD(v13->ifa_next));
      }

      while (v13 < (v6 + v62));
    }

    if (v11 + v12 + v10 == 1)
    {
      *a1 = 0;
      v27 = v6;
      goto LABEL_101;
    }

    v28 = v11;
    v29 = malloc_type_malloc(v11 + 56 * v12 + v10, 0x10B0040815C8216uLL);
    if (v29)
    {
      v30 = v29;
      v58 = a1;
      v31 = v12;
      bzero(v29, v31 * 56);
      v32 = v30;
      if (v62 >= 1)
      {
        v33 = 0;
        v34 = 0;
        v35 = &v30[v31];
        v36 = &v30[v31] + v28;
        v37 = v6;
        v32 = v30;
        do
        {
          if (BYTE2(v37->ifa_next) == 5)
          {
            v38 = BYTE3(v37->ifa_next);
            if (v38 == 12)
            {
              if (v33)
              {
                if (WORD2(v37->ifa_name) != v33)
                {
                  goto LABEL_113;
                }

                v39 = HIDWORD(v37->ifa_next) & 0xA4;
                if (v39)
                {
                  v61 = v33;
                  v40 = 0;
                  v32->ifa_name = v34->ifa_name;
                  v59 = v34;
                  v60 = v36;
                  v32->ifa_flags = v34->ifa_flags;
                  v32->ifa_data = 0;
                  v41 = &v37->ifa_flags + 1;
                  v42 = &v37->ifa_flags + 1;
                  do
                  {
                    if ((v39 >> v40))
                    {
                      if (*v42)
                      {
                        v43 = (*v42 + 3) & 0x1FC;
                      }

                      else
                      {
                        v43 = 4;
                      }

                      if (v40 == 5)
                      {
                        goto LABEL_76;
                      }

                      v42 += v43;
                    }

                    ++v40;
                  }

                  while (v40 != 8);
                  v43 = 0;
LABEL_76:
                  v44 = 0;
                  while (2)
                  {
                    if (((1 << v44) & 0xA4 & HIDWORD(v37->ifa_next)) != 0)
                    {
                      v45 = *v41;
                      v46 = v45 + 3;
                      v47 = (v45 + 3) & 0x1FC;
                      if (*v41)
                      {
                        v48 = v46 & 0x1FC;
                      }

                      else
                      {
                        v48 = 4;
                      }

                      switch(v44)
                      {
                        case 2:
                          v32->ifa_netmask = v35;
                          if (v45)
                          {
                            memcpy(v35, v41, v46 & 0x1FC);
                            v35 = (v35 + v47);
                          }

                          else
                          {
                            bzero(v35, v43);
                            v35 = (v35 + v43);
                          }

                          break;
                        case 7:
                          v32->ifa_dstaddr = v35;
LABEL_86:
                          memcpy(v35, v41, v48);
                          v35 = (v35 + v48);
                          break;
                        case 5:
                          v32->ifa_addr = v35;
                          goto LABEL_86;
                      }

                      v41 += v48;
                    }

                    if (++v44 == 8)
                    {
                      v34 = v59;
                      v36 = v60;
                      goto LABEL_97;
                    }

                    continue;
                  }
                }
              }
            }

            else if (v38 == 14)
            {
              if ((BYTE4(v37->ifa_next) & 0x10) != 0)
              {
                v61 = WORD2(v37->ifa_name);
                v32->ifa_name = v36;
                v32->ifa_flags = v37->ifa_name;
                memcpy(v36, &v37[2].ifa_name, BYTE5(v37[2].ifa_next));
                v36[BYTE5(v37[2].ifa_next)] = 0;
                v36 += BYTE5(v37[2].ifa_next) + 1;
                v32->ifa_addr = v35;
                memcpy(v35, &v37[2], LOBYTE(v37[2].ifa_next));
                if (LOBYTE(v37[2].ifa_next))
                {
                  v49 = (LOBYTE(v37[2].ifa_next) + 3) & 0x1FC;
                }

                else
                {
                  v49 = 4;
                }

                v50 = (&v35->sa_data[v49 + 5] & 0xFFFFFFFFFFFFFFF8);
                v32->ifa_data = v50;
                v51 = *&v37->ifa_data;
                v52 = *&v37[1].ifa_name;
                v53 = *&v37[1].ifa_dstaddr;
                *(v50 + 4) = *&v37[1].ifa_addr;
                *(v50 + 5) = v53;
                *(v50 + 2) = v51;
                *(v50 + 3) = v52;
                v54 = *&v37->ifa_netmask;
                *v50 = *&v37->ifa_flags;
                *(v50 + 1) = v54;
                v35 = (v50 + 96);
                v34 = v32;
LABEL_97:
                v32->ifa_next = v32 + 1;
                ++v32;
                v33 = v61;
              }

              else
              {
                v33 = 0;
              }
            }
          }

          v37 = (v37 + LOWORD(v37->ifa_next));
        }

        while (v37 < (v6 + v62));
      }

      free(v6);
      if (&v32[-1] >= v30)
      {
        v32[-1].ifa_next = 0;
        *v58 = v30;
        do
        {
          ifa_addr = v30->ifa_addr;
          if (ifa_addr->sa_family == 30 && ifa_addr->sa_data[6] == 254)
          {
            v56 = ifa_addr->sa_data[7];
            if ((v56 & 0xC0) == 0x80 || v56 >= 0xC0)
            {
              v57 = *&ifa_addr->sa_data[8];
              *&ifa_addr->sa_data[8] = 0;
              if (!*&ifa_addr[1].sa_data[6])
              {
                *&ifa_addr[1].sa_data[6] = __rev16(v57);
              }
            }
          }

          v30 = v30->ifa_next;
        }

        while (v30);
        goto LABEL_102;
      }

      *v58 = 0;
      v27 = v30;
LABEL_101:
      free(v27);
LABEL_102:
      result = 0;
      goto LABEL_13;
    }

    free(v6);
  }

LABEL_12:
  result = -1;
LABEL_13:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t si_search_module_set_flags(char *__s1, int a2)
{
  v4 = si_search_search;
  if (!si_search_search)
  {
    v4 = si_module_with_name("search");
    si_search_search = v4;
  }

  return search_set_flags(v4, __s1, a2);
}

uint64_t *si_module_static_mdns()
{
  if (si_module_static_mdns_once != -1)
  {
    si_module_static_mdns_cold_1();
  }

  return &si_module_static_mdns_si;
}

char *__si_module_static_mdns_block_invoke()
{
  si_module_static_mdns_si = strdup("mdns");
  pthread_atfork(_mdns_atfork_prepare, _mdns_atfork_parent, _mdns_atfork_child);
  result = issetugid();
  if (!result)
  {
    result = getenv("RES_DEBUG");
    if (result)
    {
      _mdns_debug = 1;
    }
  }

  return result;
}

uint64_t *si_module_static_file()
{
  if (si_module_static_file_once != -1)
  {
    si_module_static_file_cold_1();
  }

  return &si_module_static_file_si;
}

char *__si_module_static_file_block_invoke()
{
  si_module_static_file_si = strdup("file");
  result = malloc_type_calloc(1uLL, 0x50uLL, 0x1020040207AA8A1uLL);
  if (result)
  {
    *&v1 = -1;
    *(&v1 + 1) = -1;
    *(result + 36) = v1;
    *(result + 20) = v1;
    *(result + 4) = v1;
    *result = 416;
  }

  qword_1ED4076A0 = result;
  return result;
}

_BYTE *muser_user_byuid(uint64_t a1, unsigned int a2)
{
  if (a2 < 0x1F5)
  {
    return 0;
  }

  if (!_muser_available())
  {
    return 0;
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  xpc_dictionary_set_string(v4, "reqtype", "uid");
  xpc_dictionary_set_int64(v5, "query", a2);
  v6 = _muser_call("getpwuid", v5);
  if (v6)
  {
    v7 = v6;
    user = _muser_extract_user(a1, v6);
    xpc_release(v7);
  }

  else
  {
    user = 0;
  }

  xpc_release(v5);
  return user;
}

uint64_t ___muser_xpc_pipe_block_invoke()
{
  multiuser_flags = 0;
  v0 = getenv("XBS_DISABLE_LIBINFO");
  result = issetugid();
  if (v0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2 || (result = strcmp(v0, "YES"), result))
  {
    v3 = MEMORY[0x19A8FC650](result);
    result = host_get_multiuser_config_flags(v3, &multiuser_flags);
    if (result || multiuser_flags >> 30)
    {
      return pthread_atfork(_muser_fork_prepare, _muser_fork_parent, _muser_fork_child);
    }
  }

  _si_muser_disabled = 1;
  return result;
}

void **_fsi_get_user(uint64_t a1, const char *a2, int a3, int a4)
{
  if (!a2 && a4 == 1)
  {
    return 0;
  }

  v42 = 0;
  v43 = 0;
  v41 = geteuid();
  if (v41)
  {
    v8 = "/etc/passwd";
    v9 = fopen("/etc/passwd", "r");
    v10 = a1;
    v11 = 0;
  }

  else
  {
    v8 = "/etc/master.passwd";
    v9 = fopen("/etc/master.passwd", "r");
    v10 = a1;
    v11 = 1;
  }

  _fsi_get_validation(v10, v11, v8, v9, &v43, &v42);
  if (!v9)
  {
    return 0;
  }

  line = _fsi_get_line();
  if (!line)
  {
    v39 = 0;
    goto LABEL_31;
  }

  v13 = line;
  v38 = a3;
  v39 = 0;
  if (v41)
  {
    v14 = 7;
  }

  else
  {
    v14 = 10;
  }

  v40 = v14;
  while (*v13 == 35)
  {
LABEL_19:
    free(v13);
LABEL_20:
    v13 = _fsi_get_line();
    if (!v13)
    {
      goto LABEL_31;
    }
  }

  v44[0] = 0;
  v15 = _fsi_tokenize(v13, ":", 1, v44);
  v16 = v15;
  if (v44[0] != v14)
  {
    goto LABEL_18;
  }

  v17 = atoi(v15[2]);
  if (!a4)
  {
    goto LABEL_23;
  }

  if (a4 == 2)
  {
    if (v17 == v38)
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  if (a4 != 1 || strcmp(a2, *v16))
  {
LABEL_18:
    free(v16);
    goto LABEL_19;
  }

LABEL_23:
  v18 = a1;
  if (v41)
  {
    v19 = *v16;
    v20 = v16[1];
    atoi(v16[3]);
    v35 = v16[6];
    v32 = *(v16 + 2);
  }

  else
  {
    atoi(v16[5]);
    atoi(v16[6]);
    v28 = v16[1];
    v37 = *v16;
    atoi(v16[3]);
    v36 = v16[9];
    v33 = v16[7];
    v34 = v16[8];
    v31 = v16[4];
  }

  a1 = v18;
  v29 = LI_ils_create("L4488ss44LssssL", v21, v22, v23, v24, v25, v26, v27, v18);
  free(v16);
  free(v13);
  v14 = v40;
  if (!v29)
  {
    goto LABEL_20;
  }

  if (!a4)
  {
    v39 = si_list_add(v39, v29);
    si_item_release(v29);
    goto LABEL_20;
  }

  v39 = v29;
LABEL_31:
  fclose(v9);
  return v39;
}

BOOL si_module_allows_caching(_BOOL8 result)
{
  if (result)
  {
    return *(*(result + 40) + 8) != 0;
  }

  return result;
}

uint64_t _LI_data_init()
{
  result = pthread_key_create(&_info_key, _LI_data_free);
  if (!result)
  {
    _info_key_ok = 1;
  }

  return result;
}

uint64_t search_set_flags(uint64_t result, char *__s1, int a3)
{
  if (result)
  {
    v3 = *(result + 32);
    if (v3)
    {
      v4 = *(v3 + 4);
      if (v4)
      {
        v7 = 0;
        v8 = *v3;
        while (1)
        {
          v9 = *(v8 + 8 * v7);
          if (v9)
          {
            if (*v9)
            {
              result = strcmp(__s1, *v9);
              if (!result)
              {
                break;
              }
            }
          }

          if (v4 == ++v7)
          {
            return result;
          }
        }

        *(v3[1] + 4 * v7) = a3;
      }
    }
  }

  return result;
}

_BYTE *muser_user_byname(uint64_t a1, const char *a2)
{
  if (*a2 == 95)
  {
    return 0;
  }

  if (!_muser_available())
  {
    return 0;
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  xpc_dictionary_set_string(v4, "reqtype", "username");
  xpc_dictionary_set_string(v5, "query", a2);
  v6 = _muser_call("getpwnam", v5);
  if (v6)
  {
    v7 = v6;
    user = _muser_extract_user(a1, v6);
    xpc_release(v7);
  }

  else
  {
    user = 0;
  }

  xpc_release(v5);
  return user;
}

void _LI_data_free(void *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      for (i = 0; i < v2; ++i)
      {
        v4 = a1[2];
        v5 = *(v4 + 8 * i);
        if (v5)
        {
          si_item_release(*v5);
          si_list_release(*(v5 + 8));
          free(v5);
          v4 = a1[2];
          v2 = *a1;
        }

        *(v4 + 8 * i) = 0;
      }
    }

    v6 = a1[1];
    if (v6)
    {
      free(v6);
    }

    a1[1] = 0;
    v7 = a1[2];
    if (v7)
    {
      free(v7);
    }

    free(a1);
  }
}

_BYTE *muser_group_bygid(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x1F4 || (group = 0, a2 - 250 <= 0x31) && ((1 << (a2 + 6)) & 0x2001000000001) != 0)
  {
    if (_muser_available() && (v5 = xpc_dictionary_create(0, 0, 0)) != 0)
    {
      v6 = v5;
      xpc_dictionary_set_string(v5, "reqtype", "gid");
      xpc_dictionary_set_int64(v6, "query", a2);
      v7 = _muser_call("getgrgid", v6);
      if (v7)
      {
        v8 = v7;
        group = _muser_extract_group(a1, v7);
        xpc_release(v8);
      }

      else
      {
        group = 0;
      }

      xpc_release(v6);
    }

    else
    {
      return 0;
    }
  }

  return group;
}

void si_list_release(uint64_t a1)
{
  if (a1)
  {
    add = atomic_fetch_add(a1, 0xFFFFFFFF);
    if (add <= 0)
    {
      si_list_release_cold_1();
    }

    if (add == 1)
    {
      if (*(a1 + 4))
      {
        v3 = 0;
        do
        {
          si_item_release(*(*(a1 + 16) + 8 * v3++));
        }

        while (v3 < *(a1 + 4));
      }

      free(*(a1 + 16));

      free(a1);
    }
  }
}

int getaddrinfo(const char *a1, const char *a2, const addrinfo *a3, addrinfo **a4)
{
  v17 = 0;
  if (!a4)
  {
    return 0;
  }

  *a4 = 0;
  if (!a3)
  {
    ai_protocol = 0;
    ai_socktype = 0;
    ai_family = 0;
LABEL_7:
    ai_flags = 1536;
    goto LABEL_8;
  }

  ai_socktype = a3->ai_socktype;
  ai_protocol = a3->ai_protocol;
  ai_flags = a3->ai_flags;
  ai_family = a3->ai_family;
  if (!a3->ai_flags)
  {
    goto LABEL_7;
  }

LABEL_8:
  v12 = si_search_search;
  if (!si_search_search)
  {
    v12 = si_module_with_name("search");
    si_search_search = v12;
  }

  v13 = si_addrinfo(v12, a1, a2, ai_family, ai_socktype, ai_protocol, ai_flags, 0, &v17);
  v14 = v13;
  if (!v17 && v13 && v13->ai_family)
  {
    *a4 = si_list_to_addrinfo(v13);
    si_list_release(v14);
    v15 = *a4;
    if (!v15)
    {
      return 6;
    }

    if ((ai_flags & 2) == 0)
    {
      do
      {
        free(v15->ai_canonname);
        v15->ai_canonname = 0;
        v15 = v15->ai_next;
      }

      while (v15);
    }

    return v17;
  }

  else
  {
    si_list_release(v13);
    if ((v17 - 200) >= 0xFFFFFF9D)
    {
      v16 = v17 - 100;
    }

    else
    {
      v16 = 4;
    }

    if (v17)
    {
      return v16;
    }

    else
    {
      return 8;
    }
  }
}

int mbr_identifier_to_uuid(int id_type, const void *identifier, size_t identifier_size, uuid_t uu)
{
  src = 0;
  result = mbr_identifier_translate(id_type, identifier, identifier_size, 6, &src, 0);
  if (!result)
  {
LABEL_10:
    uuid_copy(uu, src);
    free(src);
    return 0;
  }

  if (result != 5)
  {
    return result;
  }

  if (id_type == 5)
  {
    v11 = getgrnam(identifier);
    if (v11)
    {
      p_gr_gid = &v11->gr_gid;
      v10 = 1;
LABEL_9:
      result = mbr_identifier_translate(v10, p_gr_gid, 4, 6, &src, 0);
      if (result)
      {
        return result;
      }

      goto LABEL_10;
    }
  }

  else if (id_type == 4)
  {
    v8 = getpwnam(identifier);
    if (v8)
    {
      p_gr_gid = &v8->pw_uid;
      v10 = 0;
      goto LABEL_9;
    }
  }

  return 5;
}

int initgroups(const char *a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = 16;
  getgrouplist_internal(a1, a2, v6, &v5);
  v2 = __initgroups();
  v3 = *MEMORY[0x1E69E9840];
  return v2 >> 31;
}

unsigned int *si_addrinfo(uint64_t a1, _BYTE *a2, _BYTE *a3, unsigned int a4, uint64_t a5, unsigned int a6, int a7, char *a8, int *a9)
{
  v70 = 0;
  v71 = a4;
  if (a9)
  {
    *a9 = 0;
    if (!a1)
    {
      result = 0;
      v16 = 104;
LABEL_34:
      *a9 = v16;
      return result;
    }
  }

  else if (!a1)
  {
    return 0;
  }

  if (a2)
  {
    if (*a2)
    {
      v17 = a2;
    }

    else
    {
      v17 = 0;
    }

    if (a3)
    {
      goto LABEL_10;
    }

LABEL_14:
    v18 = 0;
    goto LABEL_15;
  }

  v17 = 0;
  if (!a3)
  {
    goto LABEL_14;
  }

LABEL_10:
  if (*a3)
  {
    v18 = a3;
  }

  else
  {
    v18 = 0;
  }

LABEL_15:
  if (!(v17 | v18))
  {
    goto LABEL_16;
  }

  if (a4 > 0x1E || ((1 << a4) & 0x40000005) == 0)
  {
    if (a9)
    {
      result = 0;
      v16 = 105;
      goto LABEL_34;
    }

    return 0;
  }

  if (a5 >= 4 || a6 > 0x3A || ((1 << a6) & 0x400000000020043) == 0)
  {
    goto LABEL_32;
  }

  if (a5 == 2)
  {
    v19 = 0;
    if (a6 && a6 != 17)
    {
      goto LABEL_32;
    }
  }

  else if (a5 == 1)
  {
    v19 = 1;
    if (a6 && a6 != 6)
    {
LABEL_32:
      if (a9)
      {
        result = 0;
        v16 = 112;
        goto LABEL_34;
      }

      return 0;
    }
  }

  else
  {
    v19 = 0;
  }

  if ((a7 & 5) == 0 && v17 && strcmp(v17, "localhost") && strcmp(v17, "0.0.0.0") && strcmp(v17, "127.0.0.1") && (*v17 != 58 || *(v17 + 1) != 58 || *(v17 + 2)))
  {
    if (strcmp(v17, "::1"))
    {
      pthread_once(&_gai_load_libnetwork_load_once, _gai_load_libnetwork_once);
      if (path_check)
      {
        path_check(v17, v18);
      }
    }
  }

  v20 = a7 & 0xFFFFF5FF | 0x800;
  if ((a7 & 0x200) == 0)
  {
    v20 = a7;
  }

  if (a4 == 30)
  {
    if ((v20 & 0x800) != 0)
    {
      v21 = v20;
    }

    else
    {
      v21 = v20 & 0xFFFFF4FF;
    }
  }

  else
  {
    v21 = v20 & 0xFFFFF4FF;
  }

  if (a6)
  {
    v22 = 0;
  }

  else
  {
    v22 = a5 == 2;
  }

  v68 = 0;
  v67[0] = 0;
  v67[1] = 0;
  if (v22)
  {
    v23 = 17;
  }

  else
  {
    v23 = a6;
  }

  if (((v23 == 0) & v19) != 0)
  {
    v24 = 6;
  }

  else
  {
    v24 = v23;
  }

  v69 = 0;
  v25 = v21;
  if ((v21 & 0x1000000) != 0)
  {
    v28 = 0;
    if (v17 && v18)
    {
      v72 = 0;
      asprintf(&v72, "%s.%s", v18, v17);
      v29 = *(*(a1 + 40) + 312);
      if (v29)
      {
        v30 = v29(a1, v72, a8, a9);
        free(v72);
        if (v30)
        {
          v32 = *(v30 + 4);
          if (v32)
          {
            v33 = -1;
            v64 = v25;
            LODWORD(v34) = v25;
            while (2)
            {
              v35 = *(v30 + 16);
              v36 = 0x7FFFFFFF;
              v37 = v32;
              do
              {
                v38 = *v35++;
                v39 = *(v38 + 32);
                if (v36 >= v39)
                {
                  v40 = v39;
                }

                else
                {
                  v40 = v36;
                }

                if (v33 < v39)
                {
                  v36 = v40;
                }

                --v37;
              }

              while (v37);
              if (v36 != 0x7FFFFFFF)
              {
                for (i = 0; i < v32; ++i)
                {
                  v42 = *(*(v30 + 16) + 8 * i);
                  v44 = *(v42 + 32);
                  v43 = v42 + 32;
                  if (v36 == v44)
                  {
                    v34 = v34 | 0x1000;
                    v45 = _gai_simple(a1, *(v43 + 8), (v43 + 4), a4, v31, v24, v34, a8, a9);
                    if (v45)
                    {
                      v28 = v45;
                      goto LABEL_121;
                    }

                    v32 = *(v30 + 4);
                  }
                }

                v33 = v36;
                if (v32)
                {
                  continue;
                }
              }

              break;
            }

            v28 = 0;
LABEL_121:
            LOWORD(v25) = v64;
          }

          else
          {
            v28 = 0;
          }

          si_list_release(v30);
          goto LABEL_124;
        }
      }

      else
      {
        free(v72);
      }

      v28 = 0;
    }

LABEL_124:
    v57 = v28;
    v58 = v25;
    return _gai_sort_list(v57, v58);
  }

  v66 = v24;
  v26 = _gai_numericserv(v18, &v69);
  if ((v25 & 0x1000) != 0 && !v26)
  {
    goto LABEL_16;
  }

  if (v18 && (*v18 != 48 || *(v18 + 1)))
  {
    if (v26)
    {
      v25 = v25 | 0x1000;
    }

    else
    {
      v25 = v25;
    }

    if (v26)
    {
      v27 = &v69;
    }

    else
    {
      v27 = v18;
    }
  }

  else
  {
    v27 = 0;
  }

  v46 = v25;
  v47 = v26;
  v65 = v46;
  result = _gai_nat64_synthesis(a1, v17, v27, v26, a4, a5, v66, v46, a8);
  if (!result)
  {
    v48 = _gai_numerichost(v17, &v71, v65, &v68, v67, &v70);
    if (v48 != -1 && ((v65 & 4) == 0 || v48))
    {
      if (v48 != 1)
      {
        v59 = *(a1 + 40);
        if (*(v59 + 288) && (v60 = *(v59 + 296)) != 0 && v60(a1))
        {
          v61 = (*(*(a1 + 40) + 288))(a1, v17, v27, v71, a5, v66, v65, a8, a9);
          v62 = _gai_nat64_second_pass(v61, a1, v18, a4, a5, v66, a7, a8);
          if (v62)
          {
            v63 = v62;
            v61 = si_list_concat(v61, v62);
            si_list_release(v63);
          }

          v57 = v61;
        }

        else
        {
          v57 = _gai_simple(a1, v17, v27, v71, v50, v66, v65, a8, a9);
        }

        v58 = v65;
        return _gai_sort_list(v57, v58);
      }

      if (v47)
      {
        v51 = v65 | 4;
        v52 = v66;
LABEL_106:
        if (v71 == 30)
        {
          v53 = 0;
        }

        else
        {
          v53 = &v68;
        }

        v54 = "localhost";
        if (v17)
        {
          v54 = 0;
        }

        if (v71 == 2)
        {
          v55 = 0;
        }

        else
        {
          v55 = v67;
        }

        if (v71 == 2)
        {
          v56 = v51;
        }

        else
        {
          v56 = v51 | 0x800;
        }

        v57 = si_addrinfo_list(a1, v56, v49, v52, v53, v55, v69, v70, v54, v54);
        v58 = v56;
        return _gai_sort_list(v57, v58);
      }

      v52 = v66;
      if (!_gai_serv_to_port(v18, v66, &v69))
      {
        v51 = v65 | 0x1004;
        goto LABEL_106;
      }
    }

LABEL_16:
    if (a9)
    {
      result = 0;
      v16 = 108;
      goto LABEL_34;
    }

    return 0;
  }

  return result;
}

_BYTE *si_nameinfo(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = *MEMORY[0x1E69E9840];
  v39 = 0;
  v40 = 0;
  if (!a1 || !a2)
  {
    goto LABEL_47;
  }

  if (a5)
  {
    *a5 = 0;
  }

  v42 = 0;
  v41 = 0uLL;
  v12 = *(a2 + 1);
  if (v12 != 30)
  {
    if (v12 != 2)
    {
      if (a5)
      {
        v17 = 0;
        v18 = 105;
LABEL_49:
        *a5 = v18;
        goto LABEL_79;
      }

LABEL_78:
      v17 = 0;
      goto LABEL_79;
    }

    v13 = 0;
    v42 = *(a2 + 4);
    v14 = *(a2 + 2);
LABEL_8:
    v15 = &v42;
    v16 = 2;
    if ((a3 & 2) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  v41 = *(a2 + 8);
  v14 = *(a2 + 2);
  if (v41 == 255)
  {
    v19 = *(a2 + 9);
    if ((v19 & 0xF) != 1)
    {
      v13 = 0;
      if ((v19 & 0xF0) == 0x30 || (v19 & 0xF) != 2)
      {
        goto LABEL_24;
      }
    }
  }

  else if (v41 != 254 || (*(a2 + 9) & 0xC0) != 0x80)
  {
    v13 = 0;
    goto LABEL_24;
  }

  if (!WORD1(v41))
  {
    v13 = *(a2 + 24);
    WORD1(v41) = bswap32(v13) >> 16;
    goto LABEL_24;
  }

  v13 = __rev16(WORD1(v41));
  v20 = *(a2 + 24);
  if (v20 != bswap32(WORD1(v41)) >> 16)
  {
    if (v20)
    {
LABEL_47:
      if (!a5)
      {
        goto LABEL_78;
      }

LABEL_48:
      v17 = 0;
      v18 = 104;
      goto LABEL_49;
    }
  }

LABEL_24:
  if (!*(a2 + 8) && !*(a2 + 12))
  {
    v33 = *(a2 + 16);
    if (v33)
    {
      if (v33 != -65536)
      {
        goto LABEL_26;
      }

      v34 = *(a2 + 20);
    }

    else
    {
      v34 = *(a2 + 20);
      if ((v34 | 0x1000000) == 0x1000000)
      {
        goto LABEL_26;
      }
    }

    v42 = v34;
    goto LABEL_8;
  }

LABEL_26:
  v15 = &v41;
  v16 = 30;
  if ((a3 & 2) != 0)
  {
LABEL_31:
    v24 = 0;
    goto LABEL_32;
  }

LABEL_27:
  v21 = si_host_byaddr(a1);
  if (!v21)
  {
    goto LABEL_31;
  }

  v22 = v21;
  v23 = *(v21 + 32);
  if (!v23)
  {
    si_item_release(v22);
    goto LABEL_47;
  }

  v24 = strdup(v23);
  v40 = v24;
  si_item_release(v22);
  if (!v24)
  {
LABEL_38:
    if (a5)
    {
      v17 = 0;
      v18 = 106;
      goto LABEL_49;
    }

    goto LABEL_78;
  }

LABEL_32:
  v25 = 0;
  if ((a3 & 8) != 0 || !v14)
  {
    goto LABEL_41;
  }

  v26 = si_service_byport(a1);
  if (!v26)
  {
    v25 = 0;
    goto LABEL_41;
  }

  v27 = v26;
  v28 = *(v26 + 32);
  if (!v28)
  {
    si_item_release(v27);
    free(v24);
    if (!a5)
    {
      goto LABEL_78;
    }

    goto LABEL_48;
  }

  v25 = strdup(v28);
  v39 = v25;
  si_item_release(v27);
  if (!v25)
  {
    free(v24);
    goto LABEL_38;
  }

LABEL_41:
  if ((a3 & 4) == 0 && !v24)
  {
    v29 = *(a2 + 1);
    if (v29 == 30)
    {
      if (!v13)
      {
        v30 = &v41;
        v31 = 30;
        v32 = 46;
LABEL_60:
        if (inet_ntop(v31, v30, __s1, v32))
        {
          v40 = strdup(__s1);
        }

        goto LABEL_62;
      }

      WORD1(v41) = 0;
      if (inet_ntop(30, &v41, __s1, 0x2Eu))
      {
        if (!if_indextoname(v13, v43))
        {
          if (a5)
          {
            *a5 = 104;
          }

          free(v25);
          goto LABEL_78;
        }

        asprintf(&v40, "%s%%%s", __s1, v43);
      }
    }

    else if (v29 == 2)
    {
      v30 = &v42;
      v31 = 2;
      v32 = 16;
      goto LABEL_60;
    }
  }

LABEL_62:
  if (!v25)
  {
    asprintf(&v39, "%hu", __rev16(v14));
    v25 = v39;
  }

  v35 = v40;
  if (v40 && v25)
  {
    v17 = LI_ils_create("L4488ss", v15, v16, a4, a5, a6, a7, a8, a1);
    v35 = v40;
  }

  else
  {
    v17 = 0;
    if (a5)
    {
      if ((a3 & 4) != 0)
      {
        v36 = 108;
      }

      else
      {
        v36 = 106;
      }

      *a5 = v36;
    }
  }

  free(v35);
  free(v39);
LABEL_79:
  v37 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t mbr_identifier_translate(int a1, gid_t *a2, uint64_t a3, int a4, char **a5, int *a6)
{
  v112 = *MEMORY[0x1E69E9840];
  v6 = 5;
  if (!a3 || !a2 || !a5)
  {
    goto LABEL_117;
  }

  if (a3 != -1)
  {
    if (a1 >= 2)
    {
      if (a1 == 6 && a3 != 16)
      {
        goto LABEL_16;
      }
    }

    else if (a3 != 4)
    {
LABEL_16:
      v6 = 22;
LABEL_117:
      v64 = *MEMORY[0x1E69E9840];
      return v6;
    }
  }

  if (!_os_feature_enabled_simple_impl())
  {
LABEL_84:
    if (a4 > 0x1F)
    {
      goto LABEL_117;
    }

    if (((1 << a4) & 0x40000003) != 0)
    {
      if (a1 != 6)
      {
        goto LABEL_117;
      }

      v55 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
      if (v55)
      {
        v56 = v55;
        if (parse_compatibility_uuid(a2, v55, a6))
        {
          v6 = 0;
          *a5 = v56;
        }

        else
        {
          free(v56);
        }

        goto LABEL_117;
      }
    }

    else
    {
      if (((1 << a4) & 0x80000030) != 0)
      {
        if (a1)
        {
          if (a1 != 1)
          {
            if (a1 != 6)
            {
              goto LABEL_117;
            }

            LODWORD(v84) = 0;
            LODWORD(v76) = 0;
            if (!parse_compatibility_uuid(a2, &v76, &v84) || !compatibility_name_for_id(v76, v84, a5))
            {
              goto LABEL_117;
            }

            if (a6)
            {
              *a6 = v84;
            }

            goto LABEL_116;
          }

          if (!compatibility_name_for_id(*a2, 2, a5))
          {
            goto LABEL_117;
          }

LABEL_112:
          if (a6)
          {
            v6 = 0;
            v60 = 2;
            goto LABEL_114;
          }

LABEL_116:
          v6 = 0;
          goto LABEL_117;
        }

        if (!compatibility_name_for_id(*a2, 1, a5))
        {
          goto LABEL_117;
        }

        if (!a6)
        {
          goto LABEL_116;
        }

LABEL_108:
        v6 = 0;
        v60 = 1;
LABEL_114:
        *a6 = v60;
        goto LABEL_117;
      }

      if (a4 != 6)
      {
        goto LABEL_117;
      }

      if (a1 == 1)
      {
        v61 = *a2;
        v62 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
        if (v62)
        {
          v63 = v62;
          uuid_copy(v62, _group_compat_prefix);
          *(v63 + 3) = bswap32(v61);
          *a5 = v63;
          goto LABEL_112;
        }
      }

      else
      {
        if (a1)
        {
          goto LABEL_117;
        }

        v57 = *a2;
        v58 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
        if (v58)
        {
          v59 = v58;
          uuid_copy(v58, _user_compat_prefix);
          *(v59 + 3) = bswap32(v57);
          *a5 = v59;
          if (!a6)
          {
            goto LABEL_116;
          }

          goto LABEL_108;
        }
      }
    }

    v6 = 12;
    goto LABEL_117;
  }

  v96 = 0;
  v97 = &v96;
  v98 = 0x2000000000;
  v99 = -1;
  v92 = 0;
  v93 = &v92;
  v94 = 0x2000000000;
  v95 = 2;
  v6 = 22;
  if (a4 <= 4)
  {
    if (!a4)
    {
      if ((a1 & 0xFFFFFFFD) == 4)
      {
        goto LABEL_34;
      }

LABEL_83:
      _Block_object_dispose(&v92, 8);
      _Block_object_dispose(&v96, 8);
      if (v6 != 2)
      {
        goto LABEL_117;
      }

      goto LABEL_84;
    }

    if (a4 == 1)
    {
      if ((a1 - 5) >= 2)
      {
        goto LABEL_83;
      }

      goto LABEL_34;
    }

    if (a4 != 4)
    {
      goto LABEL_83;
    }

    if (!a1)
    {
      goto LABEL_55;
    }

    goto LABEL_31;
  }

  if (a4 > 29)
  {
    if (a4 != 30)
    {
      if (a4 != 31)
      {
        goto LABEL_83;
      }

      if (!a1)
      {
        goto LABEL_55;
      }

      goto LABEL_25;
    }

    if (a1 == 4)
    {
      goto LABEL_72;
    }

    if (a1 == 5)
    {
LABEL_66:
      v84 = MEMORY[0x1E69E9820];
      v85 = 0x40000000;
      v86 = ___dd_mbr_identifier_translate_block_invoke_4;
      v87 = &unk_1E7506078;
      v91 = a4;
      v88 = &v96;
      v89 = &v92;
      v90 = a5;
      v105 = a2;
      v106 = 0;
      v104 = 1;
      v100 = 0;
      v101 = &v100;
      v102 = 0x2000000000;
      v103 = 0;
      v76 = MEMORY[0x1E69E9820];
      v77 = 0x40000000;
      v78 = ___dd_foreach_record_with_name_block_invoke;
      v79 = &unk_1E7506140;
      v80 = &v84;
      v81 = &v100;
      v37 = DarwinDirectoryRecordStoreApplyWithFilter();
      if (v101[3])
      {
        goto LABEL_76;
      }

      multiuser_flags[0] = 0;
      v38 = MEMORY[0x19A8FC650](v37);
      multiuser_config_flags = host_get_multiuser_config_flags(v38, multiuser_flags);
      if (!multiuser_config_flags)
      {
        if ((multiuser_flags[0] & 0x80000000) != 0)
        {
          v41 = strcmp(a2, "mobile");
          if (!v41)
          {
            LODWORD(v104) = 0;
            multiuser_flags[0] = 0;
            v47 = MEMORY[0x19A8FC650](v41, v42, v43, v44, v45, v46);
            v48 = host_get_multiuser_config_flags(v47, multiuser_flags);
            if (v48)
            {
LABEL_135:
              v73 = mbr_identifier_translate_cold_2(v48, v49);
              goto LABEL_136;
            }

            goto LABEL_129;
          }
        }

LABEL_76:
        _Block_object_dispose(&v100, 8);
        if (!a6)
        {
          goto LABEL_82;
        }

        goto LABEL_80;
      }

      v52 = mbr_identifier_translate_cold_2(multiuser_config_flags, v40);
      goto LABEL_127;
    }

LABEL_31:
    if (a1 == 6)
    {
LABEL_38:
      v84 = MEMORY[0x1E69E9820];
      v85 = 0x40000000;
      v86 = ___dd_mbr_identifier_translate_block_invoke_5;
      v87 = &unk_1E75060A0;
      v91 = a4;
      v88 = &v96;
      v89 = &v92;
      v90 = a5;
      *multiuser_flags = 2;
      v108 = 0;
      v109 = 0;
      uuid_copy(&v108, a2);
      v76 = MEMORY[0x1E69E9820];
      v77 = 0x40000000;
      v78 = ___dd_foreach_record_with_uuid_block_invoke;
      v79 = &unk_1E7506190;
      v80 = &v84;
      DarwinDirectoryRecordStoreApplyWithFilter();
      if (!*a5)
      {
        v76 = MEMORY[0x1E69E9820];
        v77 = 0x40000000;
        v78 = ___dd_mbr_identifier_translate_block_invoke_6;
        v79 = &unk_1E75060C8;
        v83 = a4;
        v80 = &v96;
        v81 = &v92;
        v82 = a5;
        v101 = 0;
        v102 = 0;
        v100 = 2;
        uuid_copy(&v101, a2);
        *multiuser_flags = MEMORY[0x1E69E9820];
        v108 = 0x40000000;
        v109 = ___dd_foreach_record_with_uuid_block_invoke;
        v110 = &unk_1E7506190;
        v111 = &v76;
        DarwinDirectoryRecordStoreApplyWithFilter();
        if (!*a5 && a4 <= 0x1E && ((1 << a4) & 0x40000003) != 0)
        {
          v12 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
          if (v12)
          {
            v14 = v12;
            if (!parse_compatibility_uuid(a2, v12, a6))
            {
              free(v14);
              if (!a6)
              {
                goto LABEL_82;
              }

              goto LABEL_80;
            }

            *a5 = v14;
            goto LABEL_64;
          }

          v20 = mbr_identifier_translate_cold_1(0, v13);
          goto LABEL_131;
        }
      }

LABEL_79:
      if (!a6)
      {
LABEL_82:
        v6 = *(v93 + 6);
        goto LABEL_83;
      }

LABEL_80:
      if (*a5)
      {
        *a6 = *(v97 + 6);
      }

      goto LABEL_82;
    }

    goto LABEL_83;
  }

  if (a4 == 5)
  {
LABEL_25:
    if (a1 == 1)
    {
LABEL_47:
      v15 = *a2;
      v84 = MEMORY[0x1E69E9820];
      v85 = 0x40000000;
      v86 = ___dd_mbr_identifier_translate_block_invoke_2;
      v87 = &unk_1E7506028;
      v91 = a4;
      v88 = &v96;
      v89 = &v92;
      v90 = a5;
      v104 = 0;
      v106 = 0;
      v105 = v15;
      v100 = 0;
      v101 = &v100;
      v102 = 0x2000000000;
      v103 = 0;
      v76 = MEMORY[0x1E69E9820];
      v77 = 0x40000000;
      v78 = ___dd_foreach_record_with_id_block_invoke;
      v79 = &unk_1E75060F0;
      v80 = &v84;
      v81 = &v100;
      v16 = DarwinDirectoryRecordStoreApplyWithFilter();
      if (v101[3])
      {
LABEL_51:
        _Block_object_dispose(&v100, 8);
        if (*a5 || a4 != 6)
        {
          goto LABEL_79;
        }

        v20 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
        if (!v20)
        {
LABEL_131:
          v34 = mbr_identifier_translate_cold_8(v20, v21);
          goto LABEL_132;
        }

        v22 = v20;
        uuid_copy(v20, _group_compat_prefix);
        *(v22 + 3) = bswap32(*a2);
        *a5 = v22;
        v23 = v97;
        v24 = 2;
        goto LABEL_63;
      }

      multiuser_flags[0] = 0;
      v17 = MEMORY[0x19A8FC650](v16);
      v18 = host_get_multiuser_config_flags(v17, multiuser_flags);
      if (!v18)
      {
        if ((multiuser_flags[0] & 0x80000000) == 0 || v15 != 501)
        {
          goto LABEL_51;
        }

LABEL_122:
        multiuser_flags[0] = 0;
        v66 = MEMORY[0x19A8FC650](v18);
        v67 = host_get_multiuser_config_flags(v66, multiuser_flags);
        if (v67)
        {
LABEL_133:
          v70 = mbr_identifier_translate_cold_2(v67, v68);
          goto LABEL_134;
        }

        LODWORD(v105) = multiuser_flags[0] & 0x3FFFFFFF;
        *multiuser_flags = MEMORY[0x1E69E9820];
        v108 = 0x40000000;
        v109 = ___dd_foreach_record_with_id_block_invoke_2;
        v110 = &unk_1E7506118;
        v111 = &v84;
        DarwinDirectoryRecordStoreApplyWithFilter();
        goto LABEL_51;
      }

      v28 = mbr_identifier_translate_cold_2(v18, v19);
LABEL_121:
      v18 = mbr_identifier_translate_cold_2(v28, v29);
      goto LABEL_122;
    }

    goto LABEL_31;
  }

  if (a4 != 6)
  {
    goto LABEL_83;
  }

LABEL_34:
  if (a1 <= 3)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_78;
      }

      goto LABEL_47;
    }

LABEL_55:
    v25 = *a2;
    v84 = MEMORY[0x1E69E9820];
    v85 = 0x40000000;
    v86 = ___dd_mbr_identifier_translate_block_invoke;
    v87 = &unk_1E7506000;
    v91 = a4;
    v88 = &v96;
    v89 = &v92;
    v90 = a5;
    v104 = 0;
    v106 = 0;
    v105 = v25;
    v100 = 0;
    v101 = &v100;
    v102 = 0x2000000000;
    v103 = 0;
    v76 = MEMORY[0x1E69E9820];
    v77 = 0x40000000;
    v78 = ___dd_foreach_record_with_id_block_invoke;
    v79 = &unk_1E75060F0;
    v80 = &v84;
    v81 = &v100;
    v26 = DarwinDirectoryRecordStoreApplyWithFilter();
    if ((v101[3] & 1) == 0)
    {
      multiuser_flags[0] = 0;
      v27 = MEMORY[0x19A8FC650](v26);
      v28 = host_get_multiuser_config_flags(v27, multiuser_flags);
      if (v28)
      {
        goto LABEL_121;
      }

      if ((multiuser_flags[0] & 0x80000000) != 0 && v25 == 501)
      {
        multiuser_flags[0] = 0;
        v69 = MEMORY[0x19A8FC650](v28, v29, v30, v31, v32, v33);
        v70 = host_get_multiuser_config_flags(v69, multiuser_flags);
        if (v70)
        {
LABEL_134:
          v48 = mbr_identifier_translate_cold_2(v70, v71);
          goto LABEL_135;
        }

        LODWORD(v105) = multiuser_flags[0] & 0x3FFFFFFF;
        *multiuser_flags = MEMORY[0x1E69E9820];
        v108 = 0x40000000;
        v109 = ___dd_foreach_record_with_id_block_invoke_2;
        v110 = &unk_1E7506118;
        v111 = &v84;
        DarwinDirectoryRecordStoreApplyWithFilter();
      }
    }

    _Block_object_dispose(&v100, 8);
    if (*a5 || a4 != 6)
    {
      goto LABEL_79;
    }

    v34 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
    if (!v34)
    {
LABEL_132:
      v67 = mbr_identifier_translate_cold_11(v34, v35);
      goto LABEL_133;
    }

    v36 = v34;
    uuid_copy(v34, _user_compat_prefix);
    *(v36 + 3) = bswap32(*a2);
    *a5 = v36;
    v23 = v97;
    v24 = 1;
LABEL_63:
    *(v23 + 6) = v24;
LABEL_64:
    *(v93 + 6) = 0;
    if (!a6)
    {
      goto LABEL_82;
    }

    goto LABEL_80;
  }

  if (a1 != 4)
  {
    if (a1 != 5)
    {
      if (a1 == 6)
      {
        goto LABEL_38;
      }

LABEL_78:
      v95 = 22;
      goto LABEL_79;
    }

    goto LABEL_66;
  }

LABEL_72:
  v84 = MEMORY[0x1E69E9820];
  v85 = 0x40000000;
  v86 = ___dd_mbr_identifier_translate_block_invoke_3;
  v87 = &unk_1E7506050;
  v91 = a4;
  v88 = &v96;
  v89 = &v92;
  v90 = a5;
  v105 = a2;
  v106 = 0;
  v104 = 1;
  v100 = 0;
  v101 = &v100;
  v102 = 0x2000000000;
  v103 = 0;
  v76 = MEMORY[0x1E69E9820];
  v77 = 0x40000000;
  v78 = ___dd_foreach_record_with_name_block_invoke;
  v79 = &unk_1E7506140;
  v80 = &v84;
  v81 = &v100;
  v50 = DarwinDirectoryRecordStoreApplyWithFilter();
  if (v101[3])
  {
    goto LABEL_76;
  }

  multiuser_flags[0] = 0;
  v51 = MEMORY[0x19A8FC650](v50);
  v52 = host_get_multiuser_config_flags(v51, multiuser_flags);
  if (v52)
  {
LABEL_127:
    v54 = mbr_identifier_translate_cold_2(v52, v53);
    goto LABEL_128;
  }

  if ((multiuser_flags[0] & 0x80000000) == 0)
  {
    goto LABEL_76;
  }

  v54 = strcmp(a2, "mobile");
  if (v54)
  {
    goto LABEL_76;
  }

LABEL_128:
  LODWORD(v104) = 0;
  multiuser_flags[0] = 0;
  v72 = MEMORY[0x19A8FC650](v54);
  v73 = host_get_multiuser_config_flags(v72, multiuser_flags);
  if (!v73)
  {
LABEL_129:
    LODWORD(v105) = multiuser_flags[0] & 0x3FFFFFFF;
    *multiuser_flags = MEMORY[0x1E69E9820];
    v108 = 0x40000000;
    v109 = ___dd_foreach_record_with_name_block_invoke_2;
    v110 = &unk_1E7506168;
    v111 = &v84;
    DarwinDirectoryRecordStoreApplyWithFilter();
    goto LABEL_76;
  }

LABEL_136:
  v75 = mbr_identifier_translate_cold_2(v73, v74);
  return _fsi_get_group(v75);
}

FILE *_fsi_get_group(uint64_t a1, const char *a2, int a3, int a4)
{
  if (!a2 && a4 == 1)
  {
    return 0;
  }

  result = fopen("/etc/group", "r");
  if (result)
  {
    v9 = result;
    v28 = 0;
    v27 = 0;
    _fsi_get_validation(a1, 2u, "/etc/group", result, &v28, &v27);
    line = _fsi_get_line();
    if (!line)
    {
      v26 = 0;
      goto LABEL_22;
    }

    v11 = line;
    v26 = 0;
    while (1)
    {
      if (*v11 == 35)
      {
        goto LABEL_14;
      }

      v29 = 0;
      v12 = _fsi_tokenize(v11, ":", 1, &v29);
      v13 = v12;
      if (v29 != 4)
      {
        goto LABEL_13;
      }

      v14 = atoi(v12[2]);
      if (a4)
      {
        if (a4 == 2)
        {
          if (v14 != a3)
          {
            goto LABEL_13;
          }
        }

        else if (a4 != 1 || strcmp(a2, *v13))
        {
LABEL_13:
          free(v13);
LABEL_14:
          free(v11);
          goto LABEL_15;
        }
      }

      v29 = 0;
      v25 = _fsi_tokenize(v13[3], ",", 1, &v29);
      v23 = *v13;
      v24 = v13[1];
      v22 = LI_ils_create("L4488ss4*", v15, v16, v17, v18, v19, v20, v21, a1);
      free(v13);
      free(v25);
      free(v11);
      if (v22)
      {
        if (a4)
        {
          v26 = v22;
LABEL_22:
          fclose(v9);
          return v26;
        }

        v26 = si_list_add(v26, v22);
        si_item_release(v22);
      }

LABEL_15:
      v11 = _fsi_get_line();
      if (!v11)
      {
        goto LABEL_22;
      }
    }
  }

  return result;
}

uint64_t _gai_numericserv(const char *a1, _WORD *a2)
{
  if (a1)
  {
    __endptr = 0;
    v4 = strtol(a1, &__endptr, 10);
    if (!*a1)
    {
      return 0;
    }

    if (*__endptr || v4 >> 16 != 0)
    {
      return 0;
    }

    if (a2)
    {
      goto LABEL_11;
    }
  }

  else if (a2)
  {
    LOWORD(v4) = 0;
LABEL_11:
    *a2 = v4;
  }

  return 1;
}

unsigned int *_gai_nat64_synthesis(uint64_t a1, const char *a2, const char *a3, int a4, unsigned int a5, int a6, uint64_t a7, uint64_t a8, char *a9)
{
  result = 0;
  v40 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    goto LABEL_35;
  }

  v11 = a8;
  if ((a8 & 4) != 0)
  {
    goto LABEL_35;
  }

  if (a5 != 30 && a5)
  {
    goto LABEL_34;
  }

  v33 = 0;
  if (inet_pton(2, a2, &v33) != 1 || !_gai_nat64_can_v4_address_be_synthesized(&v33))
  {
    goto LABEL_34;
  }

  v32 = 0;
  v16 = si_inet_config(0, &v32);
  result = 0;
  if (v16 < 0 || !v32)
  {
    goto LABEL_35;
  }

  v31 = 0;
  if (a9)
  {
    v31 = if_nametoindex(a9);
    if (!v31)
    {
      goto LABEL_34;
    }
  }

  v30 = 0;
  if (a4)
  {
    if (a3)
    {
      v30 = *a3;
    }
  }

  else
  {
    if (_gai_serv_to_port(a3, a7, &v30))
    {
      goto LABEL_34;
    }

    v11 = v11 | 0x1000;
  }

  v29 = 0;
  pthread_once(&_gai_load_libnetwork_load_once, _gai_load_libnetwork_once);
  if (!nat64_v4_synthesize)
  {
    goto LABEL_34;
  }

  v17 = nat64_v4_synthesize(&v31, &v33, &v29);
  pthread_once(&gai_log_once, gai_log_init);
  v18 = _gai_log;
  if (os_log_type_enabled(_gai_log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109632;
    v35 = v31;
    v36 = 1024;
    v37 = v33;
    v38 = 1024;
    v39 = v17;
    _os_log_debug_impl(&dword_19A0B0000, v18, OS_LOG_TYPE_DEBUG, "nat64_v4_synthesize(%d, %{network:in_addr}d, ...) returned %d", buf, 0x14u);
  }

  result = 0;
  if (v17 && v29)
  {
    v20 = 0;
    v21 = 0;
    v22 = v17;
    do
    {
      v23 = si_addrinfo_list(a1, v11, v19, a7, 0, v29 + v20, v30, 0, 0, 0);
      if (v23)
      {
        v24 = v23;
        if (v21)
        {
          v21 = si_list_concat(v21, v23);
          si_list_release(v24);
        }

        else
        {
          v21 = v23;
        }
      }

      v20 += 16;
      --v22;
    }

    while (v22);
    free(v29);
    if (v21)
    {
      if (!(v11 & 0x400 | a5) || a5 == 30 && (v11 & 0x900) == 0x900)
      {
        v26 = si_addrinfo_list(a1, v11, v25, a7, &v33, 0, v30, 0, 0, 0);
        if (v26)
        {
          v27 = v26;
          v21 = si_list_concat(v21, v26);
          si_list_release(v27);
        }
      }

      result = _gai_sort_list(v21, v11);
      goto LABEL_35;
    }

LABEL_34:
    result = 0;
  }

LABEL_35:
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _gai_numerichost(char *a1, int *a2, int a3, int *a4, void *a5, unsigned int *a6)
{
  v8 = a3;
  if (!a1)
  {
    v14 = *a2;
    if (*a2)
    {
      v15 = v14 == 2;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      goto LABEL_13;
    }

    if (v14 != 30)
    {
      goto LABEL_32;
    }

    if ((~a3 & 0x900) == 0)
    {
LABEL_13:
      if (a3)
      {
        v16 = 0;
      }

      else
      {
        v16 = 16777343;
      }

      *a4 = v16;
    }

    v14 = *a2;
LABEL_32:
    if (v14 != 30 && v14 != 0)
    {
      return 1;
    }

    *a5 = 0;
    a5[1] = 0;
    if (a3)
    {
      return 1;
    }

    v29 = 0x1000000;
    goto LABEL_41;
  }

  v12 = inet_pton(2, a1, a4);
  if (!v12)
  {
    v12 = _inet_aton_check();
  }

  if (v12 == 1)
  {
    if (*a2 != 30)
    {
      if (!*a2)
      {
        v13 = 2;
LABEL_47:
        *a2 = v13;
        return 1;
      }

      return 1;
    }

    if ((v8 & 0x800) != 0)
    {
      *a5 = 0;
      a5[1] = 0;
      *(a5 + 5) = -1;
      v29 = *a4;
LABEL_41:
      *(a5 + 3) = v29;
      return 1;
    }

    return 0xFFFFFFFFLL;
  }

  result = inet_pton(30, a1, a5);
  if (result != 1)
  {
    return result;
  }

  v18 = strrchr(a1, 37);
  if (v18)
  {
    v19 = v18;
    v22 = v18[1];
    v20 = v18 + 1;
    v21 = v22;
    if (!v22)
    {
      goto LABEL_28;
    }

    v23 = (v19 + 2);
    do
    {
      v24 = v21 - 48;
      v25 = *v23++;
      v21 = v25;
      if (v25)
      {
        v26 = v24 >= 0xA;
      }

      else
      {
        v26 = 1;
      }
    }

    while (!v26);
    if (v24 > 9)
    {
      v27 = if_nametoindex(v20);
    }

    else
    {
LABEL_28:
      v27 = atoi(v20);
    }

    *a6 = v27;
  }

  if (*a2 == 2)
  {
    return 0xFFFFFFFFLL;
  }

  if (!*a2)
  {
    v13 = 30;
    goto LABEL_47;
  }

  return 1;
}

_BYTE *si_addrinfo_v6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, uint64_t a7, uint64_t a8)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*a6 == 254 && (a6[1] & 0xC0) == 0x80 && *(a6 + 1))
  {
    v8 = __rev16(*(a6 + 1));
    if (a7)
    {
      a7 = a7;
    }

    else
    {
      a7 = v8;
    }
  }

  v11 = a6[1];
  v12 = *(a6 + 4);
  v13 = *(a6 + 3);
  result = LI_ils_create("L448844444Ss", a2, a3, a4, a5, a6, a7, a8, a1);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void **si_addrinfo_list(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, unsigned __int8 *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = a7;
  v12 = a4;
  v37 = *MEMORY[0x1E69E9840];
  v15 = (a2 & 0x100) == 0 && a6 != 0;
  v16 = (a2 & 0x800) == 0 || v15;
  if (!a6)
  {
    v20 = 0;
    goto LABEL_22;
  }

  v17 = a8;
  if (a4 != 17 && a4)
  {
    v20 = 0;
  }

  else
  {
    v19 = si_addrinfo_v6(a1, 0, 2, 17, a7, a6, a8, a10);
    v20 = si_list_add(0, v19);
    si_item_release(v19);
    if (!v12)
    {
      goto LABEL_19;
    }
  }

  if (v12 == 58)
  {
    v21 = v10;
    v22 = v17;
    v23 = a1;
    v24 = 3;
    v25 = 58;
    goto LABEL_21;
  }

  if (v12 != 6)
  {
    goto LABEL_22;
  }

LABEL_19:
  v21 = v10;
  v22 = v17;
  v23 = a1;
  v24 = 1;
  v25 = 6;
LABEL_21:
  v26 = si_addrinfo_v6(v23, 0, v24, v25, v21, a6, v22, a10);
  v20 = si_list_add(v20, v26);
  si_item_release(v26);
LABEL_22:
  if (a5)
  {
    if (v12 != 17 && v12)
    {
      v28 = 0;
    }

    else
    {
      if (v16)
      {
        v34 = *a5;
        v27 = LI_ils_create("L448844444Ss", a2, a3, a4, a5, a6, a7, a8, a1);
        v28 = si_list_add(0, v27);
      }

      else
      {
        v27 = si_addrinfo_v4_mapped(a1, 0, 2, 17, v10, a5, 0, a9);
        v20 = si_list_add(v20, v27);
        v28 = 0;
      }

      si_item_release(v27);
    }

    if (v12 == 6 || !v12)
    {
      if (v16)
      {
        v35 = *a5;
        v29 = LI_ils_create("L448844444Ss", a2, a3, a4, a5, a6, a7, a8, a1);
        v28 = si_list_add(v28, v29);
      }

      else
      {
        v29 = si_addrinfo_v4_mapped(a1, 0, 1, 6, v10, a5, 0, a9);
        v20 = si_list_add(v20, v29);
      }

      si_item_release(v29);
    }

    if (v12 == 1)
    {
      if (v16)
      {
        v36 = *a5;
        v30 = LI_ils_create("L448844444Ss", a2, a3, a4, a5, a6, a7, a8, a1);
        v28 = si_list_add(v28, v30);
      }

      else
      {
        v30 = si_addrinfo_v4_mapped(a1, 0, 3, 1, v10, a5, 0, a9);
        v20 = si_list_add(v20, v30);
      }

      si_item_release(v30);
    }
  }

  else
  {
    v28 = 0;
  }

  v31 = si_list_concat(v20, v28);
  si_list_release(v28);
  v32 = *MEMORY[0x1E69E9840];
  return v31;
}

void **si_list_add(void **a1, uint64_t a2)
{
  v2 = a1;
  if (a2)
  {
    if (!a1)
    {
      v4 = malloc_type_calloc(1uLL, 0x18uLL, 0x1080040216EE090uLL);
      v2 = v4;
      if (!v4)
      {
LABEL_8:
        free(v2);
        v2 = 0;
        *__error() = 12;
        return v2;
      }

      *v4 = 1;
    }

    v5 = reallocf(v2[2], 8 * (*(v2 + 1) + 1));
    v2[2] = v5;
    if (!v5)
    {
      goto LABEL_8;
    }

    if ((atomic_fetch_add((a2 + 12), 1u) & 0x80000000) != 0)
    {
      si_list_add_cold_1();
    }

    v6 = v2[2];
    v7 = *(v2 + 1);
    *(v2 + 1) = v7 + 1;
    v6[v7] = a2;
    if (!v2[2])
    {
      goto LABEL_8;
    }
  }

  return v2;
}

void **si_list_concat(void **a1, uint64_t a2)
{
  v2 = a1;
  if (a2)
  {
    v4 = *(a2 + 4);
    if (v4)
    {
      if (!a1)
      {
        v2 = malloc_type_calloc(1uLL, 0x18uLL, 0x1080040216EE090uLL);
        *v2 = 1;
        v4 = *(a2 + 4);
      }

      v5 = reallocf(v2[2], 8 * (*(v2 + 1) + v4));
      v2[2] = v5;
      if (v5)
      {
        v6 = *(a2 + 4);
        if (v6)
        {
          for (i = 0; i < v6; *(v2[2] + (i++ + v9)) = v8)
          {
            v8 = *(*(a2 + 16) + 8 * i);
            if (v8)
            {
              if ((atomic_fetch_add((v8 + 12), 1u) & 0x80000000) != 0)
              {
                si_list_add_cold_1();
              }

              v6 = *(a2 + 4);
            }

            v9 = *(v2 + 1);
          }
        }

        else
        {
          v9 = *(v2 + 1);
        }

        *(v2 + 1) = v9 + v6;
      }

      else
      {
        free(v2);
        v2 = 0;
        *__error() = 12;
      }
    }
  }

  return v2;
}

unsigned int *_gai_sort_list(unsigned int *a1, __int16 a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = a1[1];
    if (v3)
    {
      v4 = 0;
      v5 = 0;
      v6 = *(a1 + 2);
      v7 = a1[1];
      do
      {
        v8 = *v6;
        if (*(*v6 + 36) == 30)
        {
          if (v8[15] || v8[16] || v8[17] != -65536)
          {
            ++v4;
          }

          else
          {
            ++v5;
          }
        }

        v6 += 8;
        --v7;
      }

      while (v7);
      v9 = v4 != 0;
    }

    else
    {
      v5 = 0;
      v9 = 0;
    }

    if ((a2 & 0x100) != 0)
    {
      v9 = 0;
    }

    if ((a2 & 0x800) == 0)
    {
      v9 = 1;
    }

    if (v9 && v5)
    {
      v10 = v3 - v5;
      if (v3 == v5)
      {
        return 0;
      }

      v13 = malloc_type_calloc(1uLL, 0x18uLL, 0x1080040216EE090uLL);
      if (!v13)
      {
        return v2;
      }

      v11 = v13;
      *v13 = *v2;
      v13[1] = v10;
      v14 = malloc_type_calloc(v10, 8uLL, 0x2004093837F09uLL);
      *(v11 + 2) = v14;
      if (!v14)
      {
        free(v11);
        return v2;
      }

      v11[2] = 0;
      v15 = v2[1];
      if (v15)
      {
        for (i = 0; i < v15; ++i)
        {
          v17 = *(*(v2 + 2) + 8 * i);
          if (v17[9] != 30 || v17[15] || v17[16] || v17[17] != -65536)
          {
            v18 = *(v11 + 2);
            v19 = v11[2];
            v11[2] = v19 + 1;
            *(v18 + 8 * v19) = v17;
          }

          else
          {
            si_item_release(v17);
            v15 = v2[1];
          }
        }
      }

      v11[2] = 0;
      free(*(v2 + 2));
      free(v2);
      v3 = v11[1];
    }

    else
    {
      v11 = a1;
    }

    qsort(*(v11 + 2), v3, 8uLL, _gai_addr_sort);
    return v11;
  }

  return v2;
}

addrinfo *si_list_to_addrinfo(addrinfo *result)
{
  if (result)
  {
    v1 = result;
    ai_family = result->ai_family;
    if (!ai_family)
    {
      return 0;
    }

    result = si_item_to_addrinfo(*(*&result->ai_addrlen + 8 * (ai_family - 1)));
    v3 = result;
    v4 = (ai_family - 2);
    if (v4 >= 0)
    {
      while (1)
      {
        result = si_item_to_addrinfo(*(*&v1->ai_addrlen + 8 * v4));
        if (!result)
        {
          break;
        }

        result->ai_next = v3;
        v3 = result;
        if (v4-- <= 0)
        {
          return result;
        }
      }

      freeaddrinfo(v3);
      return 0;
    }
  }

  return result;
}

void *si_item_to_addrinfo(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = malloc_type_calloc(1uLL, 0x30uLL, 0x1030040D19128EAuLL);
  v3 = v2;
  if (v2)
  {
    v5 = *(a1 + 32);
    v4 = a1 + 32;
    *v2 = v5;
    v6 = *(v4 + 16);
    v2[4] = v6;
    v7 = malloc_type_calloc(1uLL, v6, 0x1000040451B5BE8uLL);
    v3[4] = v7;
    if (!v7 || (memcpy(v7, (v4 + 20), *(v3 + 4)), (v8 = *(v4 + 152)) != 0) && (v9 = strdup(v8), (v3[3] = v9) == 0))
    {
      free(v3);
      return 0;
    }
  }

  return v3;
}

void freeaddrinfo(addrinfo *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      ai_addr = v1->ai_addr;
      ai_next = v1->ai_next;
      if (ai_addr)
      {
        free(ai_addr);
      }

      ai_canonname = v1->ai_canonname;
      if (ai_canonname)
      {
        free(ai_canonname);
      }

      free(v1);
      v1 = ai_next;
    }

    while (ai_next);
  }
}

char *__cdecl if_indextoname(unsigned int a1, char *a2)
{
  v9 = 0;
  if (getifaddrs(&v9) < 0)
  {
    return 0;
  }

  v4 = v9;
  if (v9)
  {
    v5 = v9;
    while (1)
    {
      ifa_addr = v5->ifa_addr;
      if (ifa_addr)
      {
        if (ifa_addr->sa_family == 18 && *ifa_addr->sa_data == a1)
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

    strncpy(a2, v5->ifa_name, 0x10uLL);
    v7 = 0;
    v4 = v9;
  }

  else
  {
LABEL_8:
    a2 = 0;
    v7 = 6;
  }

  freeifaddrs(v4);
  *__error() = v7;
  return a2;
}

if_nameindex *if_nameindex(void)
{
  v15 = 0;
  if ((getifaddrs(&v15) & 0x80000000) == 0)
  {
    v0 = v15;
    if (v15)
    {
      v1 = 0;
      LODWORD(v2) = 0;
      while (1)
      {
        ifa_addr = v0->ifa_addr;
        if (ifa_addr)
        {
          if (ifa_addr->sa_family == 18)
          {
            v4 = strlen(v0->ifa_name);
            v5 = __CFADD__(v1, v4 + 1);
            v1 += v4 + 1;
            if (v5)
            {
              break;
            }

            v2 = v2 + 1;
            if (v2 != v2 << 31 >> 31)
            {
              break;
            }
          }
        }

        v0 = v0->ifa_next;
        if (!v0)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      LODWORD(v2) = 0;
      v1 = 0;
LABEL_12:
      v7 = 16 * v2 + 16;
      if (!__CFADD__(v7, v1))
      {
        v8 = malloc_type_malloc(v7 + v1, 0xB66398CAuLL);
        v6 = v8;
        if (v8)
        {
          v9 = v15;
          v10 = v8;
          if (v15)
          {
            v11 = &v8[(v2 + 1)];
            v10 = v8;
            do
            {
              v12 = v9->ifa_addr;
              if (v12 && v12->sa_family == 18)
              {
                v10->if_index = *v12->sa_data;
                v10->if_name = v11;
                v13 = strcpy(v11, v9->ifa_name);
                ++v10;
                v11 += strlen(v13) + 1;
              }

              v9 = v9->ifa_next;
            }

            while (v9);
          }

          v10->if_index = 0;
          v10->if_name = 0;
        }

        goto LABEL_23;
      }
    }

    v6 = 0;
    *__error() = 84;
LABEL_23:
    freeifaddrs(v15);
    return v6;
  }

  return 0;
}

ether_addr *__cdecl ether_aton(const char *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (ether_aton_ep || (result = malloc_type_calloc(1uLL, 6uLL, 0x1000040274DC3F3uLL), (ether_aton_ep = result) != 0))
  {
    if (sscanf(a1, " %x:%x:%x:%x:%x:%x", v5, &v5[1], &v5[2], &v5[3], &v5[4], &v5[5]) == 6)
    {
      v3 = 0;
      result = ether_aton_ep;
      do
      {
        result->octet[v3] = v5[v3];
        ++v3;
      }

      while (v3 != 6);
    }

    else
    {
      result = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

servent *__cdecl getservbyport(int a1, const char *a2)
{
  v2 = si_search_search;
  if (!si_search_search)
  {
    v2 = si_module_with_name("search");
    si_search_search = v2;
  }

  v3 = si_service_byport(v2);
  LI_set_thread_item(209, v3);
  if (v3)
  {
    return v3 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t si_service_byport(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 176)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t search_service_byport(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 32);
    if (v1)
    {
      v9 = 0;
      while (1)
      {
        module = search_get_module(v1, 9u, &v9);
        if (!module)
        {
          break;
        }

        v3 = module;
        v4 = si_service_byport(module);
        if (v4)
        {
          v5 = v4;
          v6 = 0;
          v7 = 216;
          if (!*(v1 + 232))
          {
            v7 = 0;
          }

          if (*(v1 + v7 + 20))
          {
            v6 = *(v1 + 432);
          }

          si_cache_add_item(v6, v3, v5);
          return v5;
        }
      }
    }
  }

  return 0;
}

FILE *_fsi_get_service(uint64_t a1, const char *a2, char *a3, unsigned int a4, int a5)
{
  if (!a2 && a5 == 1 || !a4 && a5 == 2)
  {
    return 0;
  }

  result = fopen("/etc/services", "r");
  if (result)
  {
    v10 = result;
    __s1 = a3;
    v38 = 0;
    v39 = 0;
    _fsi_get_validation(a1, 7u, "/etc/services", result, &v39, &v38);
    line = _fsi_get_line();
    if (!line)
    {
      *&v34[4] = 0;
      goto LABEL_38;
    }

    v12 = line;
    *&v34[8] = 0;
    *v34 = bswap32(a4) >> 16;
    while (1)
    {
      if (*v12 == 35)
      {
        goto LABEL_30;
      }

      v13 = strchr(v12, 35);
      if (v13)
      {
        *v13 = 0;
      }

      v40[0] = 0;
      v14 = _fsi_tokenize(v12, " \t", 0, v40);
      v15 = v14;
      v16 = v40[0];
      if (v40[0] <= 1)
      {
        break;
      }

      v17 = (v14 + 16);
      v18 = v40[0] == 2 ? 0 : (v14 + 16);
      v37 = v18;
      v19 = *(v14 + 1);
      v20 = atoi(v19);
      v21 = strchr(v19, 47);
      if (!v21)
      {
        break;
      }

      *v21 = 0;
      if (__s1)
      {
        if (strcmp(__s1, v21 + 1))
        {
          break;
        }
      }

      if (a5)
      {
        if (a5 == 1)
        {
          if (strcmp(a2, *v15))
          {
            if (v16 == 2)
            {
              break;
            }

            v22 = *v17;
            if (!*v17)
            {
              break;
            }

            v29 = (v37 + 8);
            do
            {
              v30 = strcmp(a2, v22);
              if (!v30)
              {
                break;
              }

              v31 = *v29++;
              v22 = v31;
            }

            while (v31);
            if (v30)
            {
              break;
            }
          }
        }

        else if (v20 != *v34)
        {
          break;
        }
      }

      v33 = *v15;
      v32 = LI_ils_create("L4488s*4s", v22, v23, v24, v25, v26, v27, v28, a1);
      free(v15);
      free(v12);
      if (v32)
      {
        if (a5)
        {
          *&v34[4] = v32;
LABEL_38:
          fclose(v10);
          return *&v34[4];
        }

        *&v34[4] = si_list_add(*&v34[4], v32);
        si_item_release(v32);
      }

LABEL_31:
      v12 = _fsi_get_line();
      if (!v12)
      {
        goto LABEL_38;
      }
    }

    free(v15);
LABEL_30:
    free(v12);
    goto LABEL_31;
  }

  return result;
}

void herror(const char *a1)
{
  v7[4] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = v6;
    if (*a1)
    {
      v6[0] = a1;
      v6[1] = strlen(a1);
      v6[2] = ": ";
      v6[3] = 2;
      v1 = v7;
    }
  }

  else
  {
    v1 = v6;
  }

  if (h_errno < 0)
  {
    v2 = "Resolver internal error";
  }

  else if (h_errno > 4)
  {
    v2 = "Unknown resolver error";
  }

  else
  {
    v2 = h_errlist[h_errno];
  }

  *v1 = v2;
  v3 = strlen(v2);
  v1[2] = "\n";
  v4 = v1 + 2;
  *(v4 - 1) = v3;
  v4[1] = 1;
  writev_NOCANCEL();
  v5 = *MEMORY[0x1E69E9840];
}

const char *__cdecl hstrerror(int a1)
{
  if (a1 < 0)
  {
    return "Resolver internal error";
  }

  if (a1 > 4)
  {
    return "Unknown resolver error";
  }

  return h_errlist[a1];
}

uint64_t dn_expand(uint64_t a1, unint64_t a2, _BYTE *a3, _BYTE *a4, int a5)
{
  v5 = a3 + 1;
  v6 = *a3;
  if (*a3)
  {
    v7 = 0;
    v8 = -1;
    v9 = a4;
    v10 = &a4[a5];
    while (1)
    {
      if ((v6 & 0xC0) == 0xC0)
      {
        v15 = (a1 + (*v5 | ((v6 & 0x3F) << 8)));
        if (v15 >= a2)
        {
          return 0xFFFFFFFFLL;
        }

        v16 = v5 - a3;
        if (v8 < 0)
        {
          v8 = v16 + 1;
        }

        v7 += 2;
        if ((a2 - a1) <= v7)
        {
          return 0xFFFFFFFFLL;
        }

        v5 = v15;
      }

      else
      {
        if ((v6 & 0xC0) != 0)
        {
          return 0xFFFFFFFFLL;
        }

        v11 = a4;
        if (v9 != a4)
        {
          if (v9 >= v10)
          {
            return 0xFFFFFFFFLL;
          }

          *v9 = 46;
          v11 = v9 + 1;
        }

        if (&v11[v6] >= v10)
        {
          return 0xFFFFFFFFLL;
        }

        v12 = v6;
        v7 += v6 + 1;
        while (v12 >= 1)
        {
          v14 = *v5++;
          v13 = v14;
          if (v14 == 46)
          {
            if (&v11[v12 + 1] >= v10)
            {
              return 0xFFFFFFFFLL;
            }

            *v11++ = 92;
          }

          *v11++ = v13;
          --v12;
          if (v5 >= a2)
          {
            return 0xFFFFFFFFLL;
          }
        }

        v9 = v11;
      }

      v17 = *v5++;
      v6 = v17;
      if (!v17)
      {
        goto LABEL_25;
      }
    }
  }

  v8 = -1;
  v9 = a4;
LABEL_25:
  *v9 = 0;
  v18 = *a4;
  if (*a4)
  {
    v19 = a4 + 1;
    while ((v18 & 0x80) != 0 || (*(MEMORY[0x1E69E9830] + 4 * v18 + 60) & 0x4000) == 0)
    {
      v20 = *v19++;
      v18 = v20;
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    return 0xFFFFFFFFLL;
  }

  else
  {
LABEL_30:
    v21 = v5 - a3;
    if (v8 >= 0)
    {
      return v8;
    }

    else
    {
      return v21;
    }
  }
}

uint64_t __dn_skipname(_BYTE *a1, unint64_t a2)
{
  v2 = a1;
  if (a1 >= a2)
  {
LABEL_10:
    if (v2 <= a2)
    {
      return (v2 - a1);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v2 = a1;
    while (1)
    {
      v3 = v2 + 1;
      v4 = *v2;
      if (!*v2)
      {
        ++v2;
        goto LABEL_10;
      }

      if ((v4 & 0xC0) != 0)
      {
        break;
      }

      v2 = &v3[v4];
      if (&v3[v4] >= a2)
      {
        goto LABEL_10;
      }
    }

    if ((v4 & 0xC0) == 0xC0)
    {
      v2 += 2;
      goto LABEL_10;
    }

    return 0xFFFFFFFFLL;
  }
}

uint64_t _mdns_query(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6)
{
  LODWORD(v6) = a6;
  v8 = si_module_with_name("mdns");
  if (v8)
  {
    v9 = v8;
    v10 = (*(v8[5] + 320))();
    if (v10)
    {
      v11 = v10;
      v12 = *(v10 + 32);
      if (((v12 | v6) & 0x80000000) != 0)
      {
        h_errno = 3;
        si_item_release(v10);
        goto LABEL_15;
      }

      if (v12 >= v6)
      {
        v6 = v6;
      }

      else
      {
        v6 = v12;
      }

      memcpy(a5, *(v10 + 40), v6);
      si_item_release(v11);
      if (v6 < 0xC)
      {
        goto LABEL_16;
      }

      v13 = BYTE3(*a5) & 0xF;
      if (!v13)
      {
        if (HIWORD(*a5))
        {
          goto LABEL_16;
        }

        v14 = 4;
        goto LABEL_12;
      }

      if (v13 == 2)
      {
        v14 = 2;
        goto LABEL_12;
      }

      if (v13 != 3)
      {
        v14 = 3;
        goto LABEL_12;
      }
    }

    v14 = 1;
LABEL_12:
    h_errno = v14;
LABEL_15:
    v12 = 0xFFFFFFFFLL;
LABEL_16:
    si_module_release(v9);
    return v12;
  }

  h_errno = 3;
  return 0xFFFFFFFFLL;
}

int inet6_option_init(void *a1, cmsghdr **a2, int a3)
{
  if ((a3 - 51) < 0xFFFFFFFE)
  {
    return -1;
  }

  result = 0;
  *(a1 + 2) = a3;
  *a1 = 0x290000000CLL;
  *a2 = a1;
  return result;
}

int inet6_option_append(cmsghdr *a1, const __uint8_t *a2, int a3, int a4)
{
  result = -1;
  if (a3 <= 8 && ((1 << a3) & 0x116) != 0 && a4 <= 7)
  {
    v8 = a1 + 12;
    cmsg_len = a1->cmsg_len;
    v9 = a1 + cmsg_len;
    if (cmsg_len == 12)
    {
      v9 += 2;
      a1->cmsg_len = 14;
    }

    v10 = (a4 - (v9 - v8) % a3 + ((a3 + (v9 - v8) % a3 - 1) & -a3)) % a3;
    inet6_insert_padopt(v9, v10);
    a1->cmsg_len += v10;
    v11 = &v9[v10];
    if (*a2)
    {
      v12 = a2[1] + 2;
    }

    else
    {
      v12 = 1;
    }

    memcpy(v11, a2, v12);
    v13 = &v11[v12];
    a1->cmsg_len += v12;
    v14 = ((v13 - v8 + 7) & 0xFFFFFFF8) - (v13 - v8);
    inet6_insert_padopt(v13, v14);
    result = 0;
    a1->cmsg_len += v14;
    BYTE1(a1[1].cmsg_len) = ((v13 + v14 - v8) >> 3) - 1;
  }

  return result;
}

void inet6_insert_padopt(_BYTE *a1, int a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      *a1 = 0;
    }

    else
    {
      *a1 = 1;
      a1[1] = a2 - 2;
      bzero(a1 + 2, a2 - 2);
    }
  }
}

__uint8_t *__cdecl inet6_option_alloc(cmsghdr *a1, int a2, int a3, int a4)
{
  v4 = 0;
  if (a3 <= 8 && ((1 << a3) & 0x116) != 0)
  {
    if (a4 <= 7)
    {
      v8 = a1 + 12;
      cmsg_len = a1->cmsg_len;
      v9 = a1 + cmsg_len;
      if (cmsg_len == 12)
      {
        v9 += 2;
        a1->cmsg_len = 14;
      }

      v10 = (a4 - (v9 - v8) % a3 + ((a3 + (v9 - v8) % a3 - 1) & -a3)) % a3;
      inet6_insert_padopt(v9, v10);
      v4 = &v9[v10];
      v11 = &v4[a2];
      a1->cmsg_len += v10 + a2;
      v12 = ((v11 - v8 + 7) & 0xFFFFFFF8) - (v11 - v8);
      inet6_insert_padopt(v11, v12);
      a1->cmsg_len += v12;
      BYTE1(a1[1].cmsg_len) = ((v11 + v12 - v8) >> 3) - 1;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

int inet6_option_next(const cmsghdr *a1, __uint8_t **a2)
{
  if (a1->cmsg_level != 41)
  {
    return -1;
  }

  if ((a1->cmsg_type - 49) > 1)
  {
    return -1;
  }

  cmsg_len = a1->cmsg_len;
  if (cmsg_len < 0x10)
  {
    return -1;
  }

  v3 = 8 * BYTE1(a1[1].cmsg_len);
  if (((v3 + 11) & 0xFF8) + 12 > cmsg_len)
  {
    return -1;
  }

  v4 = &a1[1].cmsg_type + v3;
  v5 = *a2;
  if (*a2)
  {
    if (*v5)
    {
      if (v5 + 2 > v4)
      {
        return -1;
      }

      v6 = v5[1] + 2;
    }

    else
    {
      v6 = 1;
    }

    v7 = &v5[v6];
    if (v7 > v4)
    {
      return -1;
    }
  }

  else
  {
    v7 = &a1[1].cmsg_len + 2;
  }

  *a2 = v7;
  if (v7 >= v4)
  {
    *a2 = 0;
    return -1;
  }

  if (*v7)
  {
    if (v7 + 2 <= v4)
    {
      v8 = v7[1] + 2;
      goto LABEL_19;
    }

    return -1;
  }

  v8 = 1;
LABEL_19:
  if (&v7[v8] <= v4)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

int inet6_option_find(const cmsghdr *a1, __uint8_t **a2, int a3)
{
  if (a1->cmsg_level != 41)
  {
    return -1;
  }

  if ((a1->cmsg_type - 49) > 1)
  {
    return -1;
  }

  cmsg_len = a1->cmsg_len;
  if (cmsg_len < 0x10)
  {
    return -1;
  }

  v4 = 8 * BYTE1(a1[1].cmsg_len);
  if (((v4 + 11) & 0xFF8) + 12 > cmsg_len)
  {
    return -1;
  }

  v6 = &a1[1].cmsg_type + v4;
  v7 = *a2;
  if (!*a2)
  {
    v9 = &a1[1].cmsg_len + 2;
    goto LABEL_13;
  }

  if (*v7)
  {
    if (v7 + 2 > v6)
    {
      return -1;
    }

    v8 = v7[1] + 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = &v7[v8];
  if (v9 > v6)
  {
    return -1;
  }

LABEL_13:
  *a2 = v9;
  while (1)
  {
    if (v9 >= v6)
    {
      v9 = 0;
      result = -1;
      goto LABEL_23;
    }

    if (*v9 == a3)
    {
      break;
    }

    if (*v9)
    {
      if (v9 + 2 > v6)
      {
        return -1;
      }

      v10 = v9[1] + 2;
    }

    else
    {
      v10 = 1;
    }

    v9 += v10;
    if (v9 > v6)
    {
      return -1;
    }
  }

  result = 0;
LABEL_23:
  *a2 = v9;
  return result;
}

int inet6_opt_init(void *a1, socklen_t a2)
{
  result = -1;
  if (a2 && (a2 & 7) == 0)
  {
    if (a1)
    {
      *(a1 + 1) = (a2 >> 3) - 1;
    }

    return 2;
  }

  return result;
}

int inet6_opt_append(void *a1, socklen_t a2, int a3, __uint8_t a4, socklen_t a5, __uint8_t a6, void **a7)
{
  v7 = -1;
  if (a4 >= 2u)
  {
    v8 = a5;
    if (a5 <= 0xFF && a6 <= 8u && ((1 << a6) & 0x116) != 0 && a6 <= a5)
    {
      v11 = a3 + a5 + 2;
      if (v11 % a6)
      {
        v12 = a6 - v11 % a6;
      }

      else
      {
        v12 = 0;
      }

      v7 = v12 + v11;
      if (a2 && v7 > a2)
      {
        return -1;
      }

      else if (a1)
      {
        v13 = a1 + a3;
        if (v12 == 1)
        {
          *v13++ = 0;
        }

        else if (v12 >= 1)
        {
          *v13 = 1;
          v14 = v12 - 2;
          v15 = (v13 + 2);
          v13[1] = v12 - 2;
          bzero(v13 + 2, v12 - 2);
          v13 = &v15[v14];
        }

        *v13 = a4;
        v13[1] = v8;
        *a7 = v13 + 2;
      }
    }
  }

  return v7;
}

int inet6_opt_finish(void *a1, socklen_t a2, int a3)
{
  if (a3 > 0)
  {
    v3 = ((a3 - 1) | 7) + 1;
  }

  else
  {
    v3 = 0;
  }

  if (a1)
  {
    if (v3 <= a2)
    {
      v4 = v3 - a3;
      v5 = a1 + a3;
      if (v3 - a3 == 1)
      {
        *v5 = 0;
      }

      else if (v4 >= 1)
      {
        *v5 = 1;
        v5[1] = v4 - 2;
        bzero(v5 + 2, (v4 - 2));
      }
    }

    else
    {
      return -1;
    }
  }

  return v3;
}

int inet6_opt_next(void *a1, socklen_t a2, int a3, __uint8_t *a4, socklen_t *a5, void **a6)
{
  v6 = -1;
  if (!a2 || (a2 & 7) != 0)
  {
    return v6;
  }

  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = 2;
  }

  v8 = v7;
  if (v7 >= a2)
  {
LABEL_17:
    *a6 = 0;
    return -1;
  }

  v9 = a1 + a2;
  v10 = a1 + v8;
  while (1)
  {
    v11 = *v10;
    if (v11 != 1)
    {
      break;
    }

    if (v10 + 2 > v9)
    {
      goto LABEL_17;
    }

    v10 += v10[1] + 2;
    if (v10 > v9)
    {
      goto LABEL_17;
    }

LABEL_13:
    if (v10 >= v9)
    {
      goto LABEL_17;
    }
  }

  if (!*v10)
  {
    ++v10;
    goto LABEL_13;
  }

  v12 = v10 + 2;
  if (v10 + 2 > v9)
  {
    goto LABEL_17;
  }

  v13 = v10[1];
  v14 = &v10[v13 + 2];
  if (v14 > v9)
  {
    goto LABEL_17;
  }

  *a4 = v11;
  *a5 = v13;
  v6 = v14 - a1;
  *a6 = v12;
  return v6;
}

int inet6_opt_find(void *a1, socklen_t a2, int a3, __uint8_t a4, socklen_t *a5, void **a6)
{
  v6 = -1;
  if (a2 && (a2 & 7) == 0)
  {
    if (a3)
    {
      v7 = a3;
    }

    else
    {
      v7 = 2;
    }

    v8 = v7;
    if (v7 < a2)
    {
      v9 = a1 + a2;
      v10 = a1 + v8;
      do
      {
        if (*v10)
        {
          if (v10 + 2 > v9)
          {
            break;
          }

          v11 = v10[1] + 2;
        }

        else
        {
          v11 = 1;
        }

        v12 = &v10[v11];
        if (v12 > v9)
        {
          break;
        }

        if (*v10 == a4)
        {
          *a5 = v11 - 2;
          *a6 = v10 + 2;
          return v12 - a1;
        }

        v10 += v11;
      }

      while (v12 < v9);
    }

    *a6 = 0;
    return -1;
  }

  return v6;
}

size_t inet6_rthdr_space(int a1, int a2)
{
  if ((a2 - 24) >= 0xFFFFFFE9 && a1 == 0)
  {
    return (16 * a2 + 20);
  }

  else
  {
    return 0;
  }
}

cmsghdr *__cdecl inet6_rthdr_init(cmsghdr *result, int a2)
{
  *&result->cmsg_level = 0x1800000029;
  if (a2)
  {
    return 0;
  }

  result->cmsg_len = 20;
  *&result[1].cmsg_len = 0;
  BYTE2(result[1].cmsg_len) = 0;
  return result;
}

int inet6_rthdr_add(cmsghdr *a1, const in6_addr *a2, unsigned int a3)
{
  result = -1;
  if (a3 <= 1 && !BYTE2(a1[1].cmsg_len) && !a3)
  {
    cmsg_len_high = HIBYTE(a1[1].cmsg_len);
    if (cmsg_len_high != 23)
    {
      result = 0;
      HIBYTE(a1[1].cmsg_len) = cmsg_len_high + 1;
      v6 = BYTE1(a1[1].cmsg_len);
      *(&a1[1].cmsg_type + 2 * v6) = *a2;
      LOBYTE(v6) = v6 + 2;
      BYTE1(a1[1].cmsg_len) = v6;
      a1->cmsg_len = 8 * v6 + 20;
    }
  }

  return result;
}

int inet6_rthdr_lasthop(cmsghdr *a1, unsigned int a2)
{
  if (BYTE2(a1[1].cmsg_len))
  {
    return -1;
  }

  if (a2)
  {
    v3 = 1;
  }

  else
  {
    v3 = HIBYTE(a1[1].cmsg_len) > 0x17u;
  }

  v4 = v3;
  return v4 << 31 >> 31;
}

int inet6_rthdr_segments(const cmsghdr *a1)
{
  if (BYTE2(a1[1].cmsg_len))
  {
    return -1;
  }

  v2 = BYTE1(a1[1].cmsg_len);
  v3 = (v2 > 0x2E) | v2;
  v4 = v2 >> 1;
  if (v3)
  {
    return -1;
  }

  else
  {
    return v4;
  }
}

in6_addr *__cdecl inet6_rthdr_getaddr(cmsghdr *a1, int a2)
{
  if (BYTE2(a1[1].cmsg_len))
  {
    return 0;
  }

  v2 = BYTE1(a1[1].cmsg_len);
  if (v2 > 0x2E || (v2 & 1) != 0)
  {
    return 0;
  }

  v5 = v2 >> 1 >= a2;
  v6 = (&a1[1].cmsg_type + 4 * a2);
  if (!v5)
  {
    v6 = 0;
  }

  if (a2 >= 1)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

int inet6_rthdr_getflags(const cmsghdr *a1, int a2)
{
  if (BYTE2(a1[1].cmsg_len))
  {
    return -1;
  }

  v3 = BYTE1(a1[1].cmsg_len);
  v5 = a2 < 0 || v3 >> 1 < a2;
  v6 = v5 << 31 >> 31;
  if (v3 <= 0x2E && (v3 & 1) == 0)
  {
    return v6;
  }

  else
  {
    return -1;
  }
}

socklen_t inet6_rth_space(int a1, int a2)
{
  if (a2 < 0x80 && a1 == 0)
  {
    return (16 * a2) | 8;
  }

  else
  {
    return 0;
  }
}

void *__cdecl inet6_rth_init(void *a1, socklen_t a2, int a3, int a4)
{
  if (a3)
  {
    return 0;
  }

  v5 = a4;
  result = 0;
  if (a4 <= 0x7F && ((16 * a4) | 8u) <= a2)
  {
    bzero(a1, a2);
    *(a1 + 1) = 2 * v5;
    *(a1 + 1) = 0;
    *(a1 + 1) = 0;
    return a1;
  }

  return result;
}

int inet6_rth_add(void *a1, const in6_addr *a2)
{
  if (*(a1 + 2))
  {
    return -1;
  }

  v3 = *(a1 + 3);
  if (v3 == *(a1 + 1) >> 1)
  {
    return -1;
  }

  result = 0;
  *(a1 + 16 * v3 + 8) = *a2;
  *(a1 + 3) = v3 + 1;
  return result;
}

int inet6_rth_reverse(const void *a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(a1 + 2) || (v3 = *(a1 + 1), (v3 & 1) != 0))
  {
    result = -1;
  }

  else
  {
    memmove(a2, a1, (8 * v3) | 8);
    *(a2 + 3) = v3 >> 1;
    if (v3 >= 4)
    {
      v4 = v3 >> 2;
      v5 = (a2 + 8);
      v6 = (a2 + 16 * (v3 >> 1) - 8);
      do
      {
        v7 = *v5;
        *v5++ = *v6;
        *v6-- = v7;
        --v4;
      }

      while (v4);
    }

    result = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

int inet6_rth_segments(const void *a1)
{
  if (*(a1 + 2))
  {
    return -1;
  }

  v1 = *(a1 + 1);
  if (v1)
  {
    return -1;
  }

  v2 = v1 >> 1;
  if (v2 < *(a1 + 3))
  {
    return -1;
  }

  else
  {
    return v2;
  }
}

in6_addr *__cdecl inet6_rth_getaddr(const void *a1, int a2)
{
  if (*(a1 + 2))
  {
    return 0;
  }

  v2 = *(a1 + 1);
  if (v2)
  {
    return 0;
  }

  v3 = v2 >> 1;
  if (v3 > a2 && v3 >= *(a1 + 3))
  {
    return (a1 + 16 * a2 + 8);
  }

  else
  {
    return 0;
  }
}

const char *si_cache_add_list(const char *result, const char **a2, uint64_t a3)
{
  if (result)
  {
    if (a2)
    {
      if (a3)
      {
        v5 = result;
        if (result != a2)
        {
          if (*(a3 + 4))
          {
            result = *a2;
            if (*a2)
            {
              result = strcmp(result, *v5);
              if (result)
              {
                result = si_module_allows_caching(a2);
                if (result)
                {
                  v6 = **(a3 + 16);
                  if (v6)
                  {
                    v7 = *(v6 + 8);
                    if (v7 <= 0x11)
                    {
                      v8 = *(v5 + 4);
                      if (v8)
                      {
                        v9 = (v8 + 240 * v7);
                        pthread_mutex_lock(v9);
                        si_list_release(*(v8 + 240 * *(v6 + 8) + 232));
                        *(v8 + 240 * *(v6 + 8) + 232) = si_list_retain(a3);

                        return pthread_mutex_unlock(v9);
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

void cache_close(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 32);
    if (v1)
    {
      v2 = 0;
      v3 = v1 + 72;
      do
      {
        si_list_release(*&v1[240 * v2 + 232]);
        for (i = 0; i != 160; i += 8)
        {
          si_item_release(*&v3[i]);
          *&v3[i] = 0;
        }

        pthread_mutex_destroy(&v1[240 * v2++]);
        v3 += 240;
      }

      while (v2 != 18);

      free(v1);
    }
  }
}

atomic_uint *cache_host_byname(uint64_t a1, char *a2, int a3, uint64_t a4, _DWORD *a5)
{
  if (a5)
  {
    *a5 = 0;
  }

  if (a3 == 2)
  {
    v8 = 6;
  }

  else
  {
    v8 = 7;
  }

  result = cache_fetch_item(a1, v8, a2, a3, 1);
  if (a5 && !result && !*a5)
  {
    *a5 = 1;
  }

  return result;
}

atomic_uint *cache_host_byaddr(uint64_t a1, char *a2, int a3, uint64_t a4, _DWORD *a5)
{
  if (a5)
  {
    *a5 = 0;
  }

  if (a3 == 2)
  {
    v8 = 6;
  }

  else
  {
    v8 = 7;
  }

  result = cache_fetch_item(a1, v8, a2, a3, 2);
  if (a5 && !result && !*a5)
  {
    *a5 = 1;
  }

  return result;
}

atomic_uint *cache_service_byname(uint64_t a1, char *a2, char *__s1)
{
  if (!a2)
  {
    return 0;
  }

  if (__s1)
  {
    if (!strcmp(__s1, "tcp"))
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return cache_fetch_item(a1, 9u, a2, v5, 1);
}

uint64_t cache_nameinfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  if (a5)
  {
    *a5 = 1;
  }

  return 0;
}

atomic_uint *cache_fetch_list(uint64_t a1, unsigned int a2)
{
  v2 = 0;
  if (a1 && gL1CacheEnabled)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3 + 240 * a2;
      pthread_mutex_lock(v4);
      v2 = *(v4 + 232);
      if (v2)
      {
        if (v2[1])
        {
          v5 = **(v2 + 2);
          is_valid = si_item_is_valid(v5);
          v7 = v2[1];
          if (v7 >= 2 && is_valid == 1)
          {
            v9 = 1;
            do
            {
              v10 = *(*(v2 + 2) + 8 * v9);
              if (*v10 == *v5 && *(v10 + 8) == *(v5 + 8) && *(v10 + 16) == *(v5 + 16) && *(v10 + 24) == *(v5 + 24))
              {
                is_valid = 1;
              }

              else
              {
                is_valid = si_item_is_valid(*(*(v2 + 2) + 8 * v9));
                v7 = v2[1];
                v5 = v10;
              }
            }

            while (++v9 < v7 && is_valid == 1);
          }

          if (is_valid)
          {
            v2 = si_list_retain(v2);
          }

          else
          {
            si_list_release(v2);
            v2 = 0;
            *(v4 + 232) = 0;
          }
        }

        else
        {
          v2 = 0;
        }
      }

      pthread_mutex_unlock(v4);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void **file_netgroup_byname(uint64_t a1, void **a2)
{
  v2 = a2;
  if (a2)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      _fsi_check_netgroup_cache(a1);
      pthread_mutex_lock(&file_mutex);
      v5 = *(v4 + 56);
      if (!v5)
      {
        goto LABEL_12;
      }

      while (strcmp(v2, *v5))
      {
        v5 = *(v5 + 24);
        if (!v5)
        {
          goto LABEL_12;
        }
      }

      v13 = *(v5 + 16);
      if (v13)
      {
        v2 = 0;
        do
        {
          v17 = *(v13 + 24);
          v16 = *(v13 + 8);
          v14 = LI_ils_create("L4488sss", v6, v7, v8, v9, v10, v11, v12, a1);
          v2 = si_list_add(v2, v14);
          v13 = *(v13 + 32);
        }

        while (v13);
      }

      else
      {
LABEL_12:
        v2 = 0;
      }

      pthread_mutex_unlock(&file_mutex);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t file_in_netgroup(uint64_t a1, const char *a2, const char *a3, const char *a4, const char *a5)
{
  if (!a2)
  {
    return 0;
  }

  v5 = *(a1 + 32);
  if (!v5)
  {
    return 0;
  }

  _fsi_check_netgroup_cache(a1);
  pthread_mutex_lock(&file_mutex);
  v10 = *(v5 + 56);
  if (!v10)
  {
    goto LABEL_19;
  }

  while (strcmp(a2, *v10))
  {
    v10 = *(v10 + 24);
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  v12 = *(v10 + 16);
  if (v12)
  {
    while (1)
    {
      v13 = v12;
      v12 = v12[4];
      if ((!a3 || (v14 = v13[1]) != 0 && !strcmp(a3, v14)) && (!a4 || (v15 = v13[2]) != 0 && !strcmp(a4, v15)))
      {
        if (!a5)
        {
          break;
        }

        v16 = v13[3];
        if (v16)
        {
          if (!strcmp(a5, v16))
          {
            break;
          }
        }
      }

      if (!v12)
      {
        goto LABEL_19;
      }
    }

    v11 = 1;
  }

  else
  {
LABEL_19:
    v11 = 0;
  }

  pthread_mutex_unlock(&file_mutex);
  return v11;
}

atomic_uint *file_host_byname(uint64_t a1, char *a2, int a3, uint64_t a4, _DWORD *a5)
{
  if (a5)
  {
    *a5 = 0;
    result = _fsi_get_host(a1, a2, 0, a3, 1, a5);
    if (!result)
    {
      result = 0;
      if (!*a5)
      {
        *a5 = 1;
      }
    }
  }

  else
  {

    return _fsi_get_host(a1, a2, 0, a3, 1, 0);
  }

  return result;
}

atomic_uint *file_host_byaddr(uint64_t a1, void *a2, int a3, uint64_t a4, _DWORD *a5)
{
  if (a5)
  {
    *a5 = 0;
    result = _fsi_get_host(a1, 0, a2, a3, 2, a5);
    if (!result)
    {
      result = 0;
      if (!*a5)
      {
        *a5 = 1;
      }
    }
  }

  else
  {

    return _fsi_get_host(a1, 0, a2, a3, 2, 0);
  }

  return result;
}

FILE *file_network_byname(uint64_t a1, const char *a2)
{
  if (a2)
  {
    return _fsi_get_name_number_aliases(a1, a2, 0, 1, 8);
  }

  else
  {
    return 0;
  }
}

FILE *file_protocol_byname(uint64_t a1, const char *a2)
{
  if (a2)
  {
    return _fsi_get_name_number_aliases(a1, a2, 0, 1, 10);
  }

  else
  {
    return 0;
  }
}

FILE *file_rpc_byname(uint64_t a1, const char *a2)
{
  if (a2)
  {
    return _fsi_get_name_number_aliases(a1, a2, 0, 1, 11);
  }

  else
  {
    return 0;
  }
}

unsigned int *file_addrinfo(uint64_t a1, uint64_t a2, const char *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int *a9)
{
  if (a9)
  {
    *a9 = 0;
  }

  return _gai_simple(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t _fsi_check_netgroup_cache(uint64_t result)
{
  if (result && *(result + 32))
  {
    pthread_mutex_lock(&file_mutex);

    return pthread_mutex_unlock(&file_mutex);
  }

  return result;
}

void **_fsi_get_alias(uint64_t a1, const char *a2, int a3)
{
  if (!a2 && a3 == 1)
  {
    return 0;
  }

  v6 = fopen("/etc/aliases", "r");
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v24 = 0;
  v25 = 0;
  _fsi_get_validation(a1, 4u, "/etc/aliases", v6, &v25, &v24);
  line = _fsi_get_line();
  if (!line)
  {
    v10 = 0;
    goto LABEL_19;
  }

  v9 = line;
  v10 = 0;
  while (*v9 == 35)
  {
LABEL_11:
    free(v9);
LABEL_12:
    v9 = _fsi_get_line();
    if (!v9)
    {
      goto LABEL_19;
    }
  }

  v26 = 0;
  v11 = _fsi_tokenize(v9, ":", 1, &v26);
  v12 = v11;
  if (v26 <= 1 || a3 && strcmp(a2, *v11))
  {
    free(v12);
    goto LABEL_11;
  }

  v26 = 0;
  v23 = _fsi_tokenize(v12[1], ",", 1, &v26);
  v22 = *v12;
  v20 = LI_ils_create("L4488s4*4", v13, v14, v15, v16, v17, v18, v19, a1);
  free(v12);
  free(v23);
  free(v9);
  if (!v20)
  {
    goto LABEL_12;
  }

  if (!a3)
  {
    v10 = si_list_add(v10, v20);
    si_item_release(v20);
    goto LABEL_12;
  }

  v10 = v20;
LABEL_19:
  fclose(v7);
  return v10;
}

atomic_uint *_fsi_get_host(uint64_t a1, char *a2, void *a3, int a4, int a5, _DWORD *a6)
{
  v52 = *MEMORY[0x1E69E9840];
  if ((a2 || a5 != 1) && (a3 || a5 != 2) && (v12 = fopen("/etc/hosts", "r")) != 0)
  {
    v13 = v12;
    __s1 = a2;
    v39 = a3;
    v43 = a5;
    v44 = 0;
    v45 = 0;
    v41 = a1;
    _fsi_get_validation(a1, 5u, "/etc/hosts", v12, &v45, &v44);
    line = _fsi_get_line();
    if (line)
    {
      v15 = line;
      v40 = 0;
      while (1)
      {
        if (*v15 == 35)
        {
          goto LABEL_36;
        }

        v48[0] = 0;
        v48[1] = 0;
        v47 = 0uLL;
        v16 = _fsi_tokenize(v15, " \t", 0, v48 + 1);
        v17 = v16;
        if (SHIDWORD(v48[0]) <= 1)
        {
          goto LABEL_35;
        }

        v51 = 0;
        v24 = inet_pton(2, *v16, v48);
        if (v24 == 1)
        {
          v46 = v48[0];
          v25 = 4;
          v26 = 2;
          p_s2 = &v46;
        }

        else
        {
          if (inet_pton(30, *v17, &v47) != 1)
          {
            goto LABEL_35;
          }

          __s2 = v47;
          v25 = 16;
          v26 = 30;
          p_s2 = &__s2;
        }

        v50 = p_s2;
        v28 = HIDWORD(v48[0]);
        v29 = v17 + 2;
        if (SHIDWORD(v48[0]) >= 3)
        {
          v30 = v17 + 2;
        }

        else
        {
          v30 = 0;
        }

        if (v43)
        {
          if (v26 != a4)
          {
            goto LABEL_35;
          }

          if (v43 == 1)
          {
            if (strcmp(__s1, v17[1]))
            {
              if (v28 < 3)
              {
                goto LABEL_35;
              }

              p_s2 = *v29;
              if (!*v29)
              {
                goto LABEL_35;
              }

              v31 = v30 + 1;
              do
              {
                v32 = strcmp(__s1, p_s2);
                if (!v32)
                {
                  break;
                }

                v33 = *v31++;
                p_s2 = v33;
              }

              while (v33);
              if (v32)
              {
LABEL_35:
                free(v17);
LABEL_36:
                free(v15);
                goto LABEL_37;
              }
            }
          }

          else if (memcmp(v39, p_s2, v25))
          {
            goto LABEL_35;
          }
        }

        v34 = v17[1];
        if (v24 == 1)
        {
          v35 = LI_ils_create("L4488s*44a", p_s2, v18, v19, v20, v21, v22, v23, v41);
        }

        else
        {
          v35 = LI_ils_create("L4488s*44c", p_s2, v18, v19, v20, v21, v22, v23, v41);
        }

        v36 = v35;
        free(v17);
        free(v15);
        if (v36)
        {
          if (v43)
          {
            fclose(v13);
            goto LABEL_43;
          }

          v40 = si_list_add(v40, v36);
          si_item_release(v36);
        }

LABEL_37:
        v15 = _fsi_get_line();
        if (!v15)
        {
          goto LABEL_42;
        }
      }
    }

    v40 = 0;
LABEL_42:
    fclose(v13);
    v36 = v40;
  }

  else
  {
    v36 = 0;
    if (a6)
    {
      *a6 = 3;
    }
  }

LABEL_43:
  v37 = *MEMORY[0x1E69E9840];
  return v36;
}

FILE *_fsi_get_name_number_aliases(uint64_t a1, const char *a2, int a3, int a4, int a5)
{
  switch(a5)
  {
    case 8:
      v7 = 6;
      v8 = "/etc/networks";
      break;
    case 11:
      v7 = 9;
      v8 = "/etc/rpc";
      break;
    case 10:
      v7 = 8;
      v8 = "/etc/protocols";
      break;
    default:
LABEL_43:
      abort();
  }

  result = fopen(v8, "r");
  if (!result)
  {
    return result;
  }

  v10 = result;
  v37 = a5;
  v40 = 0;
  v41 = 0;
  _fsi_get_validation(a1, v7, v8, result, &v41, &v40);
  line = _fsi_get_line();
  if (!line)
  {
    v34 = 0;
    goto LABEL_40;
  }

  v12 = line;
  v34 = 0;
  v36 = a5 - 10;
  while (1)
  {
    if (*v12 == 35)
    {
      goto LABEL_15;
    }

    v13 = strchr(v12, 35);
    if (v13)
    {
      *v13 = 0;
    }

    v42 = 0;
    v14 = _fsi_tokenize(v12, " \t", 0, &v42);
    v15 = v14;
    v16 = v42;
    if (v42 < 2)
    {
LABEL_14:
      free(v15);
LABEL_15:
      free(v12);
      goto LABEL_16;
    }

    v17 = atoi(v14[1]);
    v25 = v15 + 2;
    if (v16 == 2)
    {
      v26 = 0;
    }

    else
    {
      v26 = v15 + 2;
    }

    if (a4)
    {
      if (a4 == 1)
      {
        if (strcmp(a2, *v15))
        {
          if (v16 == 2)
          {
            goto LABEL_14;
          }

          v18 = *v25;
          if (!*v25)
          {
            goto LABEL_14;
          }

          v27 = v26 + 1;
          do
          {
            v28 = strcmp(a2, v18);
            if (!v28)
            {
              break;
            }

            v29 = *v27++;
            v18 = v29;
          }

          while (v29);
          if (v28)
          {
            goto LABEL_14;
          }
        }
      }

      else if (v17 != a3)
      {
        goto LABEL_14;
      }
    }

    if (v36 >= 2)
    {
      if (v37 != 8)
      {
        goto LABEL_43;
      }

      v33 = *v15;
      v30 = LI_ils_create("L4488s*44", v18, v19, v20, v21, v22, v23, v24, a1);
    }

    else
    {
      v32 = *v15;
      v30 = LI_ils_create("L4488s*4", v18, v19, v20, v21, v22, v23, v24, a1);
    }

    v31 = v30;
    free(v15);
    free(v12);
    if (v31)
    {
      break;
    }

LABEL_16:
    v12 = _fsi_get_line();
    if (!v12)
    {
      goto LABEL_40;
    }
  }

  if (!a4)
  {
    v34 = si_list_add(v34, v31);
    si_item_release(v31);
    goto LABEL_16;
  }

  v34 = v31;
LABEL_40:
  fclose(v10);
  return v34;
}

void **_fsi_get_fs(uint64_t a1, const char *a2, int a3)
{
  v70 = *MEMORY[0x1E69E9840];
  if (!a2 && a3)
  {
    v6 = 0;
    goto LABEL_5;
  }

  v64 = 0;
  v65 = 0;
  memset(&v69, 0, 512);
  v6 = 0;
  if (statfs("/", &v69))
  {
    goto LABEL_5;
  }

  v66 = 0;
  v67 = 0;
  size[0] = 0;
  v9 = 0;
  if (sysctlbyname("vfs.generic.apfs.edt_fstab", 0, size, 0, 0) || !size[0])
  {
LABEL_12:
    v12 = a3 == 0;
    v6 = v9;
    goto LABEL_13;
  }

  v10 = malloc_type_malloc(size[0], 0xE34219A7uLL);
  if (!v10)
  {
LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  v11 = v10;
  if (sysctlbyname("vfs.generic.apfs.edt_fstab", v10, size, 0, 0))
  {
    free(v11);
    goto LABEL_11;
  }

  size[0] /= 0xECuLL;
  v45 = a1;
  _fsi_get_validation(a1, 0xAu, "/etc/fstab", 0, &v67, &v66);
  v53 = 0;
  v6 = 0;
LABEL_62:
  v54 = 236 * v53;
  while (v53 < size[0])
  {
    v55 = &v11[v54];
    switch(a3)
    {
      case 0:
        goto LABEL_71;
      case 2:
        v57 = &v11[v54 + 32];
        v56 = a2;
        break;
      case 1:
        v56 = a2;
        v57 = &v11[v54];
        break;
      default:
        goto LABEL_70;
    }

    if (!strcmp(v56, v57))
    {
LABEL_71:
      v60 = *(v55 + 56);
      v61 = *(v55 + 57);
      v9 = LI_ils_create("L4488sssss44", v46, v47, v48, v49, v50, v51, v52, v45);
      goto LABEL_72;
    }

LABEL_70:
    v9 = 0;
LABEL_72:
    v54 += 236;
    ++v53;
    if (v9)
    {
      if (a3)
      {
        a1 = v45;
        goto LABEL_12;
      }

      v6 = si_list_add(v6, v9);
      si_item_release(v9);
      goto LABEL_62;
    }
  }

  free(v11);
  a1 = v45;
  if (a3)
  {
    v12 = 0;
    goto LABEL_13;
  }

  v12 = 1;
  if (!v6)
  {
LABEL_13:
    if (!(*v69.f_fstypename ^ 0x73667061 | v69.f_fstypename[4]))
    {
      goto LABEL_5;
    }

    v13 = fopen("/etc/fstab", "r");
    if (v13)
    {
      v14 = v13;
      _fsi_get_validation(a1, 0xAu, "/etc/fstab", v13, &v65, &v64);
      line = _fsi_get_line();
      if (!line)
      {
LABEL_52:
        fclose(v14);
        goto LABEL_5;
      }

      v16 = line;
      v62 = v12;
      v63 = a1;
      while (1)
      {
        if (*v16 != 35)
        {
          LODWORD(size[0]) = 0;
          v17 = _fsi_tokenize(v16, " \t", 0, size);
          v18 = v17;
          v19 = size[0];
          if ((LODWORD(size[0]) - 7) > 0xFFFFFFFC)
          {
            if (LODWORD(size[0]) >= 5)
            {
              atoi(*(v17 + 4));
              if (v19 == 6)
              {
                atoi(v18[5]);
              }
            }

            v20 = strdup(v18[3]);
            if (v20)
            {
              v21 = v20;
              LODWORD(size[0]) = 0;
              v22 = _fsi_tokenize(v20, ",", 0, size);
              if (v22)
              {
                v30 = v22;
                v31 = LODWORD(size[0]);
                v32 = v22;
                if (SLODWORD(size[0]) >= 1)
                {
                  do
                  {
                    v33 = *v32;
                    v34 = **v32;
                    if (v34 == 120)
                    {
                      if (*(v33 + 1) == 120)
                      {
LABEL_34:
                        if (!*(v33 + 2))
                        {
                          break;
                        }
                      }
                    }

                    else
                    {
                      if (v34 == 115)
                      {
                        v35 = *(v33 + 1);
                      }

                      else
                      {
                        if (v34 != 114)
                        {
                          goto LABEL_35;
                        }

                        v35 = *(v33 + 1);
                        if (v35 == 111)
                        {
                          goto LABEL_34;
                        }
                      }

                      if (v35 == 119)
                      {
                        goto LABEL_34;
                      }
                    }

LABEL_35:
                    ++v32;
                    --v31;
                  }

                  while (v31);
                }

                switch(a3)
                {
                  case 0:
LABEL_49:
                    v38 = *v18;
                    v39 = v18[2];
                    v40 = v18[3];
                    v41 = LI_ils_create("L4488sssss44", v23, v24, v25, v26, v27, v28, v29, v63);
                    free(v18);
                    free(v30);
                    free(v21);
                    free(v16);
                    if (v41)
                    {
                      if (!v62)
                      {
                        fclose(v14);
                        v6 = v41;
                        goto LABEL_5;
                      }

                      v6 = si_list_add(v6, v41);
                      si_item_release(v41);
                    }

                    goto LABEL_47;
                  case 2:
                    v36 = v18[1];
                    goto LABEL_43;
                  case 1:
                    v36 = *v18;
LABEL_43:
                    if (!strcmp(a2, v36))
                    {
                      goto LABEL_49;
                    }

                    break;
                }

                v37 = v18;
              }

              else
              {
                free(v18);
                v37 = v21;
              }

              free(v37);
              goto LABEL_46;
            }
          }

          free(v18);
        }

LABEL_46:
        free(v16);
LABEL_47:
        v16 = _fsi_get_line();
        if (!v16)
        {
          goto LABEL_52;
        }
      }
    }

    size[0] = MEMORY[0x1E69E9820];
    size[1] = 0x40000000;
    size[2] = ___fsi_fs_root_block_invoke;
    size[3] = &__block_descriptor_tmp_40;
    size[4] = a1;
    if (rootfs_once != -1)
    {
      dispatch_once(&rootfs_once, size);
    }

    v42 = si_item_retain(rootfs);
    v43 = (v42 + 8);
    if (!v42)
    {
      v43 = 0;
    }

    if (a3)
    {
      if (a3 == 2)
      {
        if (v43)
        {
          v44 = v43[1];
          goto LABEL_81;
        }
      }

      else if (v43)
      {
        v44 = *v43;
LABEL_81:
        v59 = strcmp(a2, v44);
        v58 = v6;
        v6 = v42;
        if (!v59)
        {
          goto LABEL_5;
        }

        goto LABEL_84;
      }

      v58 = v6;
    }

    else
    {
      v58 = si_list_add(v6, v42);
      si_item_release(v42);
    }

LABEL_84:
    v6 = v58;
  }

LABEL_5:
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

void ___fsi_fs_root_block_invoke()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v24 = *MEMORY[0x1E69E9840];
  memset(&v17, 0, sizeof(v17));
  memset(&v20, 0, 512);
  if ((stat("/", &v17) & 0x80000000) == 0 && (statfs("/", &v20) & 0x80000000) == 0 && (*v20.f_fstypename != 0x736668746E7973 || (stat("/root", &v17) & 0x80000000) == 0 && (statfs("/root", &v20) & 0x80000000) == 0))
  {
    st_dev = v17.st_dev;
    __strlcpy_chk();
    if (devname_r(st_dev, 0x6000u, buf, 1024))
    {
      __strlcat_chk();
      v9 = strdup(v23);
      if (v9)
      {
LABEL_25:
        rootfs = LI_ils_create("L4488sssss44", v2, v3, v4, v5, v6, v7, v8, *(v0 + 32));
        free(v9);
        goto LABEL_26;
      }
    }

    else
    {
      memset(&v19, 0, sizeof(v19));
      v18 = 0;
      memset(&v21, 0, 512);
      v10 = opendir("/dev/");
      if (v10)
      {
        v11 = v10;
        while (1)
        {
          v9 = 0;
          if (readdir_r(v11, &v21, &v18) || !v18)
          {
            break;
          }

          if (v18->d_type == 6)
          {
            __strlcat_chk();
            if (!stat(v23, &v19) && v19.st_rdev == st_dev)
            {
              v9 = strdup(v23);
              break;
            }
          }

          v23[5] = 0;
        }

        closedir(v11);
        if (v9)
        {
          goto LABEL_25;
        }
      }
    }

    f_mntfromname = v20.f_mntfromname;
    v13 = 1024;
    v14 = strnstr(v20.f_mntfromname, "@", 0x400uLL);
    if (v14)
    {
      v13 = 1024;
      do
      {
        v15 = v14 + 1;
        v13 = &f_mntfromname[v13] - (v14 + 1);
        v14 = strnstr(v14 + 1, "@", v13);
        f_mntfromname = v15;
      }

      while (v14);
    }

    else
    {
      v15 = v20.f_mntfromname;
    }

    v9 = strndup(v15, v13);
    goto LABEL_25;
  }

LABEL_26:
  v16 = *MEMORY[0x1E69E9840];
}

void **_fsi_get_ether(uint64_t a1, char *a2, int a3)
{
  if (!a2 && a3)
  {
    return 0;
  }

  if (a3 == 2)
  {
    v6 = si_standardize_mac_address(a2);
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = fopen("/etc/ethers", "r");
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v14 = 0;
  v15 = 0;
  _fsi_get_validation(a1, 0xBu, "/etc/ethers", v7, &v15, &v14);
  line = _fsi_get_line();
  if (!line)
  {
    v11 = 0;
    goto LABEL_23;
  }

  v10 = line;
  v11 = 0;
  while (1)
  {
    if (*v10 == 35)
    {
      free(v10);
      goto LABEL_16;
    }

    if (a3 != 2)
    {
      break;
    }

    v12 = _fsi_parse_ether(a1, v6, 2, v10);
    free(v10);
    if (v12)
    {
      goto LABEL_22;
    }

LABEL_16:
    v10 = _fsi_get_line();
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  v12 = _fsi_parse_ether(a1, a2, a3, v10);
  free(v10);
  if (!v12)
  {
    goto LABEL_16;
  }

  if (!a3)
  {
    v11 = si_list_add(v11, v12);
    si_item_release(v12);
    goto LABEL_16;
  }

LABEL_22:
  v11 = v12;
LABEL_23:
  fclose(v8);
  return v11;
}

_BYTE *_fsi_parse_ether(uint64_t a1, const char *a2, int a3, _BYTE *a4)
{
  v24 = 0;
  v7 = _fsi_tokenize(a4, " \t", 1, &v24);
  v8 = v7;
  if (v24 == 2)
  {
    v9 = si_standardize_mac_address(*v7);
    if (v9)
    {
      v17 = v9;
      if (a3)
      {
        if (a3 == 2)
        {
          v19 = a2;
          v18 = v17;
        }

        else
        {
          if (a3 != 1)
          {
LABEL_10:
            free(v8);
            v20 = v17;
            goto LABEL_11;
          }

          v18 = v8[1];
          v19 = a2;
        }

        if (strcmp(v19, v18))
        {
          goto LABEL_10;
        }
      }

      v23 = v8[1];
      v21 = LI_ils_create("L4488ss", v10, v11, v12, v13, v14, v15, v16, a1);
      free(v8);
      free(v17);
      return v21;
    }
  }

  v20 = v8;
LABEL_11:
  free(v20);
  return 0;
}