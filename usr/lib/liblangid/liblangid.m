uint64_t _langid_dispose_internal(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (!*(*a1 + 344))
  {
    _langid_dispose_internal_cold_1();
  }

  if (!a2)
  {
    free(a1);
  }

  pthread_mutex_lock(&_env_mutex);
  v3 = v2[43] - 1;
  v2[43] = v3;
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2 == _env;
  }

  if (!v4)
  {
    _langid_env_dispose(v2);
    if (v2 == _env)
    {
      _env = 0;
    }
  }

  return pthread_mutex_unlock(&_env_mutex);
}

void *_langid_create_with_datapath_internal(const char *a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 144) = 0;
    *(a2 + 112) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    v4 = a2;
    *a2 = 0u;
  }

  else
  {
    v4 = malloc_type_calloc(0x98uLL, 1uLL, 0x35ACFCBBuLL);
    if (!v4)
    {
      return v4;
    }
  }

  pthread_mutex_lock(&_env_mutex);
  if (a1)
  {
    v5 = _langid_env_create(a1);
  }

  else
  {
    v5 = _env;
    if (_env)
    {
      goto LABEL_11;
    }

    v7 = getenv("APPLE_FRAMEWORKS_ROOT");
    if (v7 && (v8 = 0, asprintf(&v8, "%s/%s", v7, "/usr/share/langid/langid.inv"), v8))
    {
      _env = _langid_env_create(v8);
      free(v8);
      v5 = _env;
    }

    else
    {
      v5 = _langid_env_create("/usr/share/langid/langid.inv");
      _env = v5;
    }
  }

  if (v5)
  {
LABEL_11:
    v5[43] = (v5[43] + 1);
    pthread_mutex_unlock(&_env_mutex);
    *v4 = v5;
    return v4;
  }

  pthread_mutex_unlock(&_env_mutex);
  if (!a2)
  {
    free(v4);
  }

  return 0;
}

int **_langid_env_create(const char *a1)
{
  v2 = malloc_type_calloc(0x168uLL, 1uLL, 0x33C241E8uLL);
  if (!v2)
  {
    _langid_env_create_cold_6();
  }

  v3 = v2;
  memset(&v25, 0, sizeof(v25));
  if (stat(a1, &v25))
  {
    _langid_env_create_cold_1();
  }

  v4 = open(a1, 0);
  if (v4 < 0)
  {
    v19 = *MEMORY[0x29EDCA610];
    v20 = *__error();
    v21 = __error();
    v22 = strerror(*v21);
    fprintf(v19, "LanguageIdentifier cannot open file: [%s], errno: %d error: [%s]\n", a1, v20, v22);
LABEL_19:
    free(v3);
    return 0;
  }

  v5 = v4;
  st_size = v25.st_size;
  *(v3 + 176) = 0;
  v7 = mmap(0, st_size, 1, 1, v4, 0);
  *(v3 + 176) = 1;
  if (v7 == -1)
  {
    _langid_env_create_cold_5();
  }

  v8 = v7;
  madvise(v7, st_size, 1);
  close(v5);
  v9 = v25.st_size;
  v3[37] = v8;
  v3[38] = v9;
  if (!v8)
  {
    goto LABEL_19;
  }

  if (v8[1] != 1)
  {
    _langid_env_create_cold_2();
  }

  v10 = (v8 + v8[4]);
  v3[40] = v10;
  v11 = v8[5];
  v3[41] = v11;
  *(v3 + 84) = 1234;
  v12 = v8[8];
  *v3 = v12;
  if (v12 >= 37)
  {
    _langid_env_create_cold_4();
  }

  v13 = (v8 + 9);
  v3[1] = v8 + 9;
  if (v12 >= 2)
  {
    for (i = 1; i != v12; ++i)
    {
        ;
      }

      v3[i + 1] = v13;
    }

    v10 = v3[40];
  }

  v16 = malloc_type_malloc(0x58uLL, 0x10B0040A3C4D6A3uLL);
  if (!v16)
  {
    _langid_env_create_cold_3(v3);
  }

  v16[4] = 0;
  v16[5] = 0;
  *v16 = v10;
  *(v16 + 20) = 0;
  if (v11 >= 0x10 && v10)
  {
    v17 = *v10;
    v16[1] = v10 + 4;
    if (v17 == 1953655141)
    {
      v18 = v10[3];
    }

    else
    {
      v18 = 0;
    }

    *(v16 + 4) = v18;
    v23 = (v11 - 4) >> 3;
  }

  else
  {
    v23 = 0;
    v16[1] = 0;
    *(v16 + 4) = 0;
  }

  v16[3] = v23;
  v3[39] = v16;
  return v3;
}

double langid_reset(uint64_t a1)
{
  result = 0.0;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  return result;
}

const char *textcat_Classify(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = langid_identify(a2, a3);
  if (*_env <= v3)
  {
    return 0;
  }

  if ((v3 & 0x80000000) == 0)
  {
    return *(_env + 8 * v3 + 8);
  }

  if (v3 == -1)
  {
    return "--";
  }

  return 0;
}

const char *langid_languagecode(uint64_t *a1, int a2)
{
  v2 = &_env;
  if (a1)
  {
    v2 = a1;
  }

  v3 = *v2;
  if (*v3 <= a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    return *&v3[2 * a2 + 2];
  }

  if (a2 == -1)
  {
    return "--";
  }

  return 0;
}

uint64_t langid_identify(uint64_t a1, unint64_t a2)
{
  v4 = _langid_create_with_datapath_internal(0, 0);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  if (a2 >= 0x190)
  {
    v6 = 400;
  }

  else
  {
    v6 = a2;
  }

  v7 = langid_consume_string(v4, a1, a2, v6);
  v8 = **v5;
  if (v8 < 1)
  {
    v11 = 0xFFFFFFFFLL;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    LODWORD(v11) = -1;
    do
    {
      v12 = *(v7 + v9);
      if (v12 <= v10)
      {
        v11 = v11;
      }

      else
      {
        v11 = v9;
      }

      if (v12 > v10)
      {
        v10 = *(v7 + v9);
      }

      ++v9;
    }

    while (v8 != v9);
  }

  _langid_dispose_internal(v5, 0);
  return v11;
}

uint64_t *langid_consume_string(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x29EDCA608];
  if (a4 && a3)
  {
    v4 = *a1;
    v5 = *(*a1 + 312);
    v6 = *(v5 + 24);
    v7 = 2 * a3;
    do
    {
      if (2 * a3 && v6 >= 2)
      {
        v8 = 0;
        v9 = 0;
        v10 = *(v5 + 8);
        v11 = 1;
        do
        {
          v12 = v11;
          v11 = *(v10 + 8 * v11 + 4) + *(a2 + v9) + 1;
          v13 = (v10 + 8 * v11);
          if (*v13 != v12)
          {
            break;
          }

          v14 = (v10 + 8 * v13[1]);
          if (*v14 == v11)
          {
            v15 = v14[1];
            if (v15 <= 0)
            {
              v24[v8++] = -v15;
              if (v8 > 7)
              {
                goto LABEL_13;
              }
            }
          }

          ++v9;
        }

        while (v7 != v9);
        if (!v8)
        {
          goto LABEL_18;
        }

LABEL_13:
        v16 = 0;
        v17 = *(v4 + 296);
        v18 = *v4;
        v19 = v24;
        do
        {
          if (v18 >= 1)
          {
            v20 = 0;
            v21 = v17 + *v19;
            do
            {
              *(a1 + v20 + 2) += *(v21 + v20);
              v18 = *v4;
              ++v20;
            }

            while (v20 < *v4);
          }

          ++v19;
          ++v16;
        }

        while (v16 != v8);
      }

LABEL_18:
      if (!--a4)
      {
        break;
      }

      a2 += 2;
      v7 -= 2;
      --a3;
    }

    while (a3);
  }

  v22 = *MEMORY[0x29EDCA608];
  return a1 + 1;
}

uint64_t langid_highest_score(uint64_t *a1, uint64_t a2)
{
  v2 = &_env;
  if (a1)
  {
    v2 = a1;
  }

  v3 = **v2;
  if (v3 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = 0;
  v5 = 0;
  LODWORD(result) = -1;
  do
  {
    v7 = *(a2 + 4 * v4);
    if (v7 <= v5)
    {
      result = result;
    }

    else
    {
      result = v4;
    }

    if (v7 > v5)
    {
      v5 = *(a2 + 4 * v4);
    }

    ++v4;
  }

  while (v3 != v4);
  return result;
}

uint64_t langid_identify_withbuf(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = _langid_create_with_datapath_internal(0, a3);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  if (a2 >= 0x190)
  {
    v8 = 400;
  }

  else
  {
    v8 = a2;
  }

  v9 = langid_consume_string(v6, a1, a2, v8);
  v10 = **v7;
  if (v10 < 1)
  {
    v13 = 0xFFFFFFFFLL;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    LODWORD(v13) = -1;
    do
    {
      v14 = *(v9 + v11);
      if (v14 <= v12)
      {
        v13 = v13;
      }

      else
      {
        v13 = v11;
      }

      if (v14 > v12)
      {
        v12 = *(v9 + v11);
      }

      ++v11;
    }

    while (v10 != v11);
  }

  _langid_dispose_internal(v7, a3);
  return v13;
}

uint64_t langid_numlanguages(uint64_t *a1)
{
  v1 = &_env;
  if (a1)
  {
    v1 = a1;
  }

  return **v1;
}

uint64_t langid_global_dispose()
{
  pthread_mutex_lock(&_env_mutex);
  if (_env)
  {
    _langid_env_dispose(_env);
    _env = 0;
  }

  return pthread_mutex_unlock(&_env_mutex);
}

void _langid_env_dispose(void *a1)
{
  if (!a1)
  {
    _langid_env_dispose_cold_1();
  }

  v2 = a1[39];
  if (v2)
  {
    if (*(v2 + 80) && *v2)
    {
      free(*v2);
    }

    free(v2);
  }

  v3 = a1[37];
  if (v3 && *(a1 + 176))
  {
    munmap(v3, a1[38]);
  }

  free(a1);
}