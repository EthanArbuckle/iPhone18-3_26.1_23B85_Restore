void *ExtentManager::Init(ExtentManager *this, unsigned int a2, unsigned int a3, unint64_t a4)
{
  *this = a2;
  *(this + 1) = a3;
  if (a4 % a2)
  {
    v5 = a4 / a2 + 1;
  }

  else
  {
    v5 = a4 / a2;
  }

  *(this + 2) = a4;
  *(this + 3) = v5;
  ExtentManager::AddBlockRangeExtent(this, 0, 0);
  v6 = *(this + 3);

  return ExtentManager::AddBlockRangeExtent(this, v6, 0);
}

void *ExtentManager::AddBlockRangeExtent(void *this, uint64_t a2, uint64_t a3)
{
  v3 = this[3];
  if (v3 >= a2)
  {
    v4 = a3 + a2;
    if (a3 + a2 >= 0)
    {
      v5 = this;
      if (a2 >= 0)
      {
        v4 = a3;
      }

      v6 = a2 & ~(a2 >> 63);
      if (v4 + v6 <= v3)
      {
        v7 = v4;
      }

      else
      {
        v7 = v3 - v6;
      }

      v8 = this + 4;
      v9 = this[5];
      if (v9 == this + 4)
      {
LABEL_13:
        operator new();
      }

      v10 = v7 + v6;
      while (1)
      {
        v11 = v9[2];
        if (v10 < v11)
        {
          goto LABEL_13;
        }

        v12 = v9[3] + v11;
        if (v12 >= v6)
        {
          break;
        }

        v9 = v9[1];
        if (v9 == v8)
        {
          goto LABEL_13;
        }
      }

      if (v11 >= v6)
      {
        v11 = a2 & ~(a2 >> 63);
      }

      if (v10 <= v12)
      {
        v10 = v12;
      }

      v9[2] = v11;
      v9[3] = v10 - v11;
      this = this[5];
      while (this != v8)
      {
        if (this == v9 || (v13 = this[2], v14 = this[3] + v13, v15 = v9[2], v14 < v15))
        {
          this = this[1];
        }

        else
        {
          v16 = v9[3] + v15;
          if (v16 < v13)
          {
            return this;
          }

          if (v15 < v13)
          {
            v13 = v9[2];
          }

          if (v14 <= v16)
          {
            v14 = v9[3] + v15;
          }

          v9[2] = v13;
          v9[3] = v14 - v13;
          v17 = *this;
          v18 = this[1];
          *(v17 + 8) = v18;
          *v18 = v17;
          --v5[6];
          operator delete(this);
          this = v18;
        }
      }
    }
  }

  return this;
}

uint64_t *ExtentManager::RemoveBlockRangeExtent(ExtentManager *this, uint64_t a2, uint64_t a3)
{
  v4 = this + 32;
  result = *(this + 5);
  if (result != v4)
  {
    v7 = a3 + a2;
    do
    {
      v8 = result[2];
      v9 = result[3] + v8;
      if (v9 >= a2)
      {
        if (v7 < v8)
        {
          return result;
        }

        v10 = __OFSUB__(a2, v8);
        v11 = a2 - v8;
        if ((v11 < 0) ^ v10 | (v11 == 0))
        {
          v11 = v9 - v7;
          if (v9 <= v7)
          {
            v13 = *result;
            v14 = result[1];
            *(v13 + 8) = v14;
            *v14 = v13;
            --*(this + 6);
            operator delete(result);
            result = v14;
            continue;
          }

          result[2] = v7;
        }

        else if (v9 > v7)
        {
          result[3] = v11;
          v12 = result[1];
          operator new();
        }

        result[3] = v11;
      }

      result = result[1];
    }

    while (result != v4);
  }

  return result;
}

uint64_t getmntoptstr(uint64_t a1, char *a2)
{
  v3 = *(a1 + 8);
  v4 = *v3;
  if (*v3)
  {
    v6 = 0;
    v7 = v3 + 3;
    while (strcasecmp(a2, v4))
    {
      v4 = v7[v6 / 8];
      v6 += 24;
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    return *(*(a1 + 24) - 0x5555555555555555 * v6);
  }

  else
  {
LABEL_5:
    if (!getmnt_silent)
    {
      errx(1, "-o %s: option not supported", a2);
    }

    return 0;
  }
}

uint64_t getmntoptnum(uint64_t a1, char *a2)
{
  v3 = getmntoptstr(a1, a2);
  if (!v3)
  {
    if (!getmnt_silent)
    {
      errx(1, "Missing %s argument", a2);
    }

    return -1;
  }

  v4 = v3;
  __endptr = 0;
  *__error() = 0;
  v5 = strtol(v4, &__endptr, 0);
  v6 = *__endptr;
  if (*__endptr)
  {
    v7 = MEMORY[0x29EDCA638];
  }

  else
  {
    v7 = 0;
  }

  v9 = *__error() != 34 || (v5 + 0x7FFFFFFFFFFFFFFFLL) < 0xFFFFFFFFFFFFFFFELL;
  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = MEMORY[0x29EDCA630];
  }

  if (!v9 || v6 != 0)
  {
    if (!getmnt_silent)
    {
      return v5;
    }

    return -1;
  }

  return v5;
}

void freemntopts(void **a1)
{
  free(a1[2]);
  free(a1[3]);

  free(a1);
}

void *getmntopts(const char *a1, void *a2, int *a3, int *a4)
{
  __lasts = 0;
  if (*a2)
  {
    v6 = 0;
    v7 = a2 + 3;
    do
    {
      ++v6;
      v8 = *v7;
      v7 += 3;
    }

    while (v8);
  }

  else
  {
    v6 = 0;
  }

  v9 = malloc_type_malloc(0x20uLL, 0xF004090684456uLL);
  if (!v9)
  {
    return v9;
  }

  v10 = strdup(a1);
  v9[2] = v10;
  if (!v10)
  {
LABEL_31:
    free(v9);
    return 0;
  }

  v11 = malloc_type_calloc(v6, 8uLL, 0x10040436913F5uLL);
  v9[3] = v11;
  if (!v11)
  {
    free(v9[2]);
    goto LABEL_31;
  }

  *v9 = a1;
  v9[1] = a2;
  v12 = strtok_r(v9[2], ",", &__lasts);
  if (v12)
  {
    v13 = v12;
    do
    {
      if (*v13 == 110)
      {
        v14 = v13[1] == 111;
        v13 += 2 * (v13[1] == 111);
      }

      else
      {
        v14 = 0;
      }

      v15 = strchr(v13, 61);
      v16 = v15;
      if (v15)
      {
        *v15 = 0;
        v16 = v15 + 1;
      }

      v17 = *a2;
      if (*a2)
      {
        v18 = 0;
        v19 = a2 + 12;
        while (strcasecmp(v13, v17))
        {
          v17 = *(v19 + 12);
          v19 += 24;
          v18 += 24;
          if (!v17)
          {
            goto LABEL_20;
          }
        }

        *(v9[3] - 0x5555555555555555 * v18) = v16;
        v20 = *v19;
        v21 = a4;
        if (!*(v19 + 1))
        {
          v21 = a3;
        }

        if (v14 == *(v19 - 1))
        {
          v22 = *v21 | v20;
        }

        else
        {
          v22 = *v21 & ~v20;
        }

        *v21 = v22;
      }

      else
      {
LABEL_20:
        if (!getmnt_silent)
        {
          errx(1, "-o %s: option not supported", v13);
        }
      }

      v13 = strtok_r(0, ",", &__lasts);
    }

    while (v13);
  }

  return v9;
}

uint64_t humanize_number(char *a1, size_t a2, uint64_t a3, char *__s, unsigned int a5, int a6)
{
  v6 = a6;
  if (a2)
  {
    *a1 = 0;
  }

  v10 = 0xFFFFFFFFLL;
  if (!a1 || !__s || (a5 & 0x80000000) != 0 || a5 >= 7 && (a5 & 0x7FFFFFCF) != 0 || (~a6 & 0x18) == 0)
  {
    return v10;
  }

  if ((a6 & 0x10) != 0)
  {
    v33 = 973;
    v11 = 2;
  }

  else
  {
    if ((a6 & 8) != 0)
    {
      v33 = 950;
      v34 = 1;
      v12 = 1000;
      goto LABEL_15;
    }

    v33 = 973;
    v11 = 1;
  }

  v34 = v11;
  v12 = 1024;
LABEL_15:
  if (a3 >= 0)
  {
    v13 = a3;
  }

  else
  {
    v13 = -a3;
  }

  if (a3 < 0)
  {
    v14 = -1;
  }

  else
  {
    v14 = 1;
  }

  v32 = v14;
  if (a3 >= 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  v16 = strlen(__s);
  if ((v6 & 2) != 0)
  {
    v17 = v15;
  }

  else
  {
    v17 = v15 + 1;
  }

  v18 = v17 + v34 + v16;
  if (v18 + 1 > a2)
  {
    return v10;
  }

  if (a5 <= 0xF)
  {
    if (a5)
    {
      v20 = a5 - 1;
      if (a5 - 1 >= 5)
      {
        v20 = 5;
      }

      LODWORD(v10) = v20 + 1;
      v21 = v20 + 1;
      do
      {
        v22 = v13;
        v13 /= v12;
        --v21;
      }

      while (v21);
      v23 = (v22 - v13 * v12);
    }

    else
    {
      LODWORD(v10) = 0;
      v23 = 0;
    }

    goto LABEL_55;
  }

  v24 = a2 - v18;
  if (v24 < 1)
  {
    v26 = 1;
  }

  else
  {
    v25 = 1;
    do
    {
      v26 = 10 * v25;
      if (v24 < 2)
      {
        break;
      }

      --v24;
      v27 = v25 >= 0x147AE147AE147AFLL;
      v25 *= 10;
    }

    while (!v27);
  }

  v10 = 0;
  v23 = 0;
  while (1)
  {
    if (v13 < v26)
    {
      if (v13 != v26 - 1)
      {
        goto LABEL_54;
      }

      if (v23 < v33)
      {
        break;
      }
    }

    if (v10 > 5)
    {
      goto LABEL_54;
    }

LABEL_52:
    v23 = (v13 % v12);
    v10 = (v10 + 1);
    v13 /= v12;
  }

  if (v12 >> 1 <= v23 && v10 < 6)
  {
    goto LABEL_52;
  }

  v13 = v26 - 1;
LABEL_54:
  if ((a5 & 0x10) != 0)
  {
    return v10;
  }

LABEL_55:
  if (v13 == 9)
  {
    if (v23 < v33 && v10 != 0)
    {
      goto LABEL_66;
    }

    return snprintf(a1, a2, "%lld%s%s%s");
  }

  else
  {
    if (v13 > 8 || v10 == 0)
    {
      return snprintf(a1, a2, "%lld%s%s%s");
    }

LABEL_66:
    if ((v6 & 1) == 0)
    {
      return snprintf(a1, a2, "%lld%s%s%s");
    }

    v30 = v32 * (((10 * v23 + (v12 >> 1)) / v12 / 0xA) + v13);
    decimal_point = localeconv()->decimal_point;
    return snprintf(a1, a2, "%d%s%d%s%s%s", v30);
  }
}

char *pidfile_open(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v22 = *MEMORY[0x29EDCA608];
  v6 = malloc_type_malloc(0x418uLL, 0x10000408CD2D07FuLL);
  if (v6)
  {
    if (a1)
    {
      __strlcpy_chk();
    }

    else
    {
      v7 = getprogname();
      snprintf(v6 + 4, 0x401uLL, "/var/run/%s.pid", v7);
    }

    memset(&v19, 0, sizeof(v19));
    if (strlen(v6 + 4) == 1024)
    {
      free(v6);
      v6 = 0;
      *__error() = 63;
    }

    else
    {
      v8 = open(v6 + 4, 1573, a2);
      if (v8 == -1)
      {
        v10 = __error();
        if (a3 && *v10 == 35)
        {
          v11 = open(v6 + 4, 0);
          if (v11 == -1)
          {
            v14 = *__error();
          }

          else
          {
            v12 = v11;
            v13 = read(v11, __str, 0xFuLL);
            v14 = *__error();
            close(v12);
            if (v13 != -1)
            {
              __endptr = 0;
              v15 = &__str[v13];
              *v15 = 0;
              *a3 = strtol(__str, &__endptr, 10);
              if (__endptr == v15)
              {
                v14 = 0;
              }

              else
              {
                v14 = 22;
              }
            }
          }

          *__error() = v14;
          if (!*__error())
          {
            *__error() = 17;
          }
        }

        free(v6);
        v6 = 0;
      }

      else
      {
        v9 = v8;
        if (fstat(v8, &v19) == -1)
        {
          v16 = *__error();
          unlink(v6 + 4);
          close(v9);
          free(v6);
          v6 = 0;
          *__error() = v16;
        }

        else
        {
          *v6 = v9;
          *(v6 + 258) = v19.st_dev;
          *(v6 + 130) = v19.st_ino;
        }
      }
    }
  }

  v17 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t pidfile_write(int *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = pidfile_verify(a1);
  *__error() = v2;
  if (*__error())
  {
    goto LABEL_6;
  }

  v3 = *a1;
  if (ftruncate(*a1, 0) == -1 || (v4 = getpid(), snprintf(__str, 0x10uLL, "%u", v4), v5 = strlen(__str), v6 = pwrite(v3, __str, v5, 0), v6 != strlen(__str)))
  {
    v8 = *__error();
    _pidfile_remove(a1, 0);
    *__error() = v8;
LABEL_6:
    result = 0xFFFFFFFFLL;
    goto LABEL_7;
  }

  result = 0;
LABEL_7:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t pidfile_verify(uint64_t a1)
{
  if (!a1)
  {
    return 22;
  }

  v2 = *a1;
  if (v2 == -1)
  {
    return 22;
  }

  memset(&v4, 0, sizeof(v4));
  if (fstat(v2, &v4) == -1)
  {
    return *__error();
  }

  result = 22;
  if (v4.st_dev == *(a1 + 1032))
  {
    if (v4.st_ino == *(a1 + 1040))
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

uint64_t _pidfile_remove(uint64_t a1, int a2)
{
  v4 = pidfile_verify(a1);
  if (v4)
  {
    goto LABEL_16;
  }

  if (unlink((a1 + 4)) == -1)
  {
    v4 = *__error();
  }

  else
  {
    v4 = 0;
  }

  if (flock(*a1, 8) == -1 && v4 == 0)
  {
    v4 = *__error();
  }

  if (close(*a1) == -1 && !v4)
  {
    v4 = *__error();
  }

  if (a2)
  {
    free(a1);
    if (v4)
    {
LABEL_16:
      *__error() = v4;
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    *a1 = -1;
    if (v4)
    {
      goto LABEL_16;
    }
  }

  return 0;
}

uint64_t pidfile_close(_DWORD *a1)
{
  v2 = pidfile_verify(a1);
  if (v2)
  {
    v3 = v2;
LABEL_3:
    *__error() = v3;
    return 0xFFFFFFFFLL;
  }

  if (close(*a1) == -1)
  {
    v3 = *__error();
    free(a1);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    free(a1);
  }

  return 0;
}

uint64_t expand_number(const char *a1, uintmax_t *a2)
{
  __endptr = 0;
  v4 = *__error();
  *__error() = 0;
  v5 = strtoumax(a1, &__endptr, 0);
  if (*__error())
  {
    return 0xFFFFFFFFLL;
  }

  *__error() = v4;
  v6 = __tolower(*__endptr);
  if (v6 > 106)
  {
    if (v6 > 111)
    {
      if (v6 == 116)
      {
        v8 = 40;
        goto LABEL_20;
      }

      if (v6 == 112)
      {
        v8 = 50;
        goto LABEL_20;
      }
    }

    else
    {
      if (v6 == 107)
      {
        v8 = 10;
        goto LABEL_20;
      }

      if (v6 == 109)
      {
        v8 = 20;
LABEL_20:
        if (v5 << v8 >> v8 == v5)
        {
          result = 0;
          *a2 = v5 << v8;
          return result;
        }

        v9 = __error();
        v10 = 34;
        goto LABEL_24;
      }
    }
  }

  else
  {
    if (v6 <= 100)
    {
      if (!v6 || v6 == 98)
      {
        result = 0;
        *a2 = v5;
        return result;
      }

      goto LABEL_23;
    }

    if (v6 == 101)
    {
      v8 = 60;
      goto LABEL_20;
    }

    if (v6 == 103)
    {
      v8 = 30;
      goto LABEL_20;
    }
  }

LABEL_23:
  v9 = __error();
  v10 = 22;
LABEL_24:
  *v9 = v10;
  return 0xFFFFFFFFLL;
}

uint64_t realhostname(char *a1, size_t a2, _DWORD *a3)
{
  v22 = *MEMORY[0x29EDCA608];
  v6 = 2;
  v7 = gethostbyaddr(a3, 4u, 2);
  if (!v7)
  {
    goto LABEL_10;
  }

  p_h_name = &v7->h_name;
  h_name = v7->h_name;
  __strlcpy_chk();
  v10 = strlen(__s);
  trimdomain(__s, v10);
  if (strlen(__s) > a2)
  {
    goto LABEL_10;
  }

  strncpy(__dst, *p_h_name, 0xFFuLL);
  __dst[255] = 0;
  v11 = gethostbyname(__dst);
  if (!v11)
  {
    v6 = 3;
    goto LABEL_10;
  }

  h_addr_list = v11->h_addr_list;
  v13 = *h_addr_list;
  if (!*h_addr_list)
  {
LABEL_8:
    v6 = 1;
LABEL_10:
    v16.s_addr = *a3;
    v17 = inet_ntoa(v16);
    strncpy(a1, v17, a2);
    goto LABEL_11;
  }

  v14 = h_addr_list + 1;
  while (*v13 != *a3)
  {
    v11->h_addr_list = v14;
    v15 = *v14++;
    v13 = v15;
    if (!v15)
    {
      goto LABEL_8;
    }
  }

  strncpy(a1, __s, a2);
  v6 = 0;
LABEL_11:
  v18 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t realhostname_sa(char *a1, size_t a2, sockaddr *a3, socklen_t a4)
{
  v19 = *MEMORY[0x29EDCA608];
  if (getnameinfo(a3, a4, __src, 0x401u, 0, 0, 4))
  {
    v8 = 2;
  }

  else
  {
    v16 = 0;
    memset(&v17.ai_socktype, 0, 40);
    sa_family = a3->sa_family;
    v8 = 3;
    v17.ai_flags = 3;
    v17.ai_family = sa_family;
    v17.ai_socktype = 1;
    if (!getaddrinfo(__src, 0, &v17, &v16))
    {
      v10 = v16;
      if (v16)
      {
        v11 = v16;
        do
        {
          ai_addr = v11->ai_addr;
          if (!ai_addr)
          {
            break;
          }

          sa_len = ai_addr->sa_len;
          if (__PAIR64__(ai_addr->sa_family, sa_len) == __PAIR64__(a3->sa_family, a4))
          {
            *ai_addr->sa_data = *a3->sa_data;
            if (!memcmp(ai_addr, a3, sa_len))
            {
              if (!v10->ai_canonname || (__strlcpy_chk(), trimdomain(__src, a2), strlen(__src) > a2) && a3->sa_family == 2)
              {
                freeaddrinfo(v10);
                v8 = 0;
                goto LABEL_11;
              }

              strncpy(a1, __src, a2);
              freeaddrinfo(v10);
              v8 = 0;
              goto LABEL_13;
            }
          }

          v11 = v11->ai_next;
          v16 = v11;
        }

        while (v11);
      }

      freeaddrinfo(v10);
      v8 = 1;
    }
  }

LABEL_11:
  if (!getnameinfo(a3, a4, __src, 0x401u, 0, 0, 2))
  {
    strncpy(a1, __src, a2);
  }

LABEL_13:
  v14 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t reexec_to_match_kernel()
{
  if (getenv("REEXEC_TO_MATCH_KERNEL"))
  {
    return 0;
  }

  v1 = current_kernel_arch();
  v2 = _NSGetMachExecuteHeader();
  if (v1)
  {
    if (v1 == v2->cputype)
    {
      return 0;
    }

    return reexec(v1, "REEXEC_TO_MATCH_KERNEL");
  }

  else
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }
}

uint64_t current_kernel_arch()
{
  v41 = *MEMORY[0x29EDCA608];
  v7 = 0u;
  v8 = 0u;
  *host_info_out = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
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
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  memset(v9, 0, sizeof(v9));
  host_info_outCnt = 12;
  v0 = MEMORY[0x29C2A56D0]();
  if (host_info(v0, 1, host_info_out, &host_info_outCnt) || (v2 = host_info_out[3], *v40 = xmmword_29997C470, v4 = 648, sysctl(v40, 4u, v9, &v4, 0, 0) == -1))
  {
    result = 0;
  }

  else
  {
    result = (v10 << 22) & 0x1000000 | v2;
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t reexec(cpu_type_t a1, const char *a2)
{
  v27 = *MEMORY[0x29EDCA608];
  v21 = 0;
  v22 = 0;
  v4 = *_NSGetArgv();
  v5 = _NSGetEnviron();
  v6 = 0;
  v7 = *v5;
    ;
  }

  v9 = malloc_type_calloc((v6 + 1), 8uLL, 0x10040436913F5uLL);
  v10 = v9;
  v11 = *v7;
  if (*v7)
  {
    v12 = 0;
    v13 = v7 + 1;
    do
    {
      *&v9[8 * v12] = v11;
      v14 = v12 + 1;
      v11 = v13[v12++];
    }

    while (v11);
  }

  else
  {
    v14 = 0;
  }

  snprintf(__str, 0x20uLL, "%s=1", a2);
  v15 = &v10[8 * v14];
  *v15 = __str;
  v15[1] = 0;
  bufsize = 1025;
  if (_NSGetExecutablePath(buf, &bufsize) || posix_spawnattr_init(&v22) || posix_spawnattr_setflags(&v22, 64) || ((v23 = a1, v24 = 0, (a1 & 0x1000000) != 0) ? (v18 = 1) : (v23 = a1 | 0x2000000, v24 = a1, v18 = 2), posix_spawnattr_setbinpref_np(&v22, v18, &v23, &v21) || v21 != v18))
  {
    free(v10);
  }

  else
  {
    v19 = posix_spawn(0, buf, 0, &v22, v4, v10);
    free(v10);
    if (!v19)
    {
      result = 0;
      goto LABEL_13;
    }

    *__error() = v19;
  }

  result = 0xFFFFFFFFLL;
LABEL_13:
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t reexec_to_match_lp64ness(int a1)
{
  if (getenv("REEXEC_TO_MATCH_LP64NESS"))
  {
    return 0;
  }

  cputype = _NSGetMachExecuteHeader()->cputype;
  if (a1 == (cputype & 0x1000000u) >> 24)
  {
    return 0;
  }

  v3 = current_kernel_arch();
  if (v3)
  {
    v4 = v3 & 0xFEFFFFFF;
    if (a1)
    {
      v5 = 0x1000000;
    }

    else
    {
      v5 = 0;
    }

    if ((v4 | v5) == cputype)
    {
      return 0;
    }

    return reexec(v4 | v5, "REEXEC_TO_MATCH_LP64NESS");
  }

  else
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }
}

unint64_t trimdomain(unint64_t __s, uint64_t a2)
{
  v3 = __s;
  if ((trimdomain_first & 1) == 0)
  {
    trimdomain_first = 1;
    if (gethostname(&trimdomain_domain, 0xFFuLL) || (v4 = strchr(&trimdomain_domain, 46)) == 0)
    {
      trimdomain_domain = 0;
    }

    else
    {
      strlen(v4 + 1);
      __memmove_chk();
    }

    __s = strlen(&trimdomain_domain);
    trimdomain_dlen = __s;
  }

  if (trimdomain_domain)
  {
    v5 = a2 + 1;
    __s = memchr(v3, 46, a2 + 1);
    if (__s)
    {
      v6 = __s;
      v7 = trimdomain_dlen;
      __s = strncasecmp((__s + 1), &trimdomain_domain, trimdomain_dlen);
      if (!__s)
      {
        v8 = &v6[v7];
        v9 = &v6[v7];
        v12 = v9[1];
        v11 = v9 + 1;
        v10 = v12;
        if (v12 == 58)
        {
          v13 = v8 + 2;
          __s = strspn(v8 + 2, "0123456789");
          if (__s)
          {
            v14 = &v13[__s];
            if (!v13[__s] || v13[__s] == 46 && (v15 = v14 + 1, (__s = strspn(v14 + 1, "0123456789")) != 0) && !v15[__s])
            {
              __s = strlen(v11);
              if (__s < v3 + v5 - v6)
              {

                return memmove(v6, v11, __s + 1);
              }
            }
          }
        }

        else if (!v10)
        {
          *v6 = 0;
        }
      }
    }
  }

  return __s;
}

uint64_t tzlink(const char *a1)
{
  if (!a1)
  {
    return 22;
  }

  mach_service = xpc_connection_create_mach_service("com.apple.tzlink", 0, 2uLL);
  xpc_connection_set_event_handler(mach_service, &__block_literal_global);
  xpc_connection_resume(mach_service);
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "tz", a1);
  v4 = xpc_connection_send_message_with_reply_sync(mach_service, v3);
  if (MEMORY[0x29C2A5950]() == MEMORY[0x29EDCAA00])
  {
    uint64 = xpc_dictionary_get_uint64(v4, "error");
  }

  else
  {
    uint64 = 5;
  }

  xpc_release(v4);
  xpc_release(v3);
  xpc_release(mach_service);
  return uint64;
}

uint64_t wipefs_alloc(int a1, uint64_t a2, uint64_t *a3)
{
  *&v22[1023] = *MEMORY[0x29EDCA608];
  v20 = 0;
  v19 = 0;
  memset(&v18, 0, sizeof(v18));
  *a3 = 0;
  fstat(a1, &v18);
  v6 = v18.st_mode & 0xF000;
  switch(v6)
  {
    case 0x2000:
      goto LABEL_5;
    case 0x8000:
      v12 = 0;
      st_blksize = v18.st_blksize;
      v19 = v18.st_blksize;
      st_size = v18.st_size;
      v20 = v18.st_size / v18.st_blksize;
      goto LABEL_23;
    case 0x6000:
LABEL_5:
      if (ioctl(a1, 0x40046418uLL, &v19) < 0 || ioctl(a1, 0x40086419uLL, &v20) < 0)
      {
        v13 = *__error();
        if (!v13)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      st_size = v20 * v19;
      if (fcntl(a1, 50, &__s) == -1)
      {
        goto LABEL_16;
      }

      v8 = strrchr(&__s, 47);
      if (v8)
      {
        p_s = v8 + 1;
      }

      else
      {
        p_s = &__s;
      }

      v10 = v8 + 2;
      if (!v8)
      {
        v10 = v22;
      }

      v11 = *p_s == 114 ? v10 : p_s;
      if (!strncmp(v11, "disk", 4uLL))
      {
        v12 = strdup(v11);
      }

      else
      {
LABEL_16:
        v12 = 0;
      }

      st_blksize = v19;
LABEL_23:
      if (a2)
      {
        v15 = a2;
      }

      else
      {
        v15 = st_blksize;
      }

      v13 = 22;
      if (v15 && st_size)
      {
        operator new();
      }

      if (v12)
      {
        free(v12);
      }

LABEL_31:
      wipefs_free(a3);
      goto LABEL_32;
  }

  v13 = 0;
  *__error() = 22;
LABEL_32:
  v16 = *MEMORY[0x29EDCA608];
  return v13;
}

void wipefs_free(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = *(v1 + 64);
    if (!v3 || (free(v3), (v1 = *a1) != 0))
    {
      std::__list_imp<ExtentInfo>::clear((v1 + 40));
      MEMORY[0x29C2A54D0](v1, 0x1030C409164897FLL);
    }

    *a1 = 0;
  }
}

void sub_29997B6A8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x29997B6A0);
}

void sub_29997B6D8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x29997B6D0);
}

void wipefs_wipe(uint64_t a1)
{
  v24 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 64);
  if (v2)
  {
    v17 = 0;
    v16 = 0;
    v15 = 0;
    v22 = 0;
    strcpy(v23, "xartutil");
    strcpy(v18, "--erase-disk");
    __argv = v23;
    v20 = v18;
    v21 = v2;
    if (posix_spawn_file_actions_init(&v16))
    {
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        wipefs_wipe_cold_1();
      }
    }

    else
    {
      posix_spawn_file_actions_addopen(&v16, 1, "/dev/null", 1, 0);
      posix_spawn_file_actions_addopen(&v16, 2, "/dev/null", 1, 0);
      if (posix_spawn(&v17, "/usr/sbin/xartutil", &v16, 0, &__argv, 0))
      {
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
        {
          wipefs_wipe_cold_2();
        }

        goto LABEL_24;
      }

      do
      {
        if (waitpid(v17, &v15, 0) != -1)
        {
          v3 = v15;
          if ((v15 & 0x7F) == 0x7F)
          {
            v4 = os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
            if (v3 >> 8 == 19)
            {
              if (v4)
              {
                wipefs_wipe_cold_4();
              }
            }

            else if (v4)
            {
              wipefs_wipe_cold_3(v3, v5, v6, v7, v8, v9, v10, v11);
            }
          }

          else if ((v15 & 0x7F) != 0)
          {
            if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
            {
              wipefs_wipe_cold_6();
            }
          }

          else if (BYTE1(v15) && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
          {
            wipefs_wipe_cold_5();
          }

          goto LABEL_24;
        }
      }

      while (*__error() == 4);
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        wipefs_wipe_cold_7();
      }

LABEL_24:
      posix_spawn_file_actions_destroy(&v16);
    }
  }

  v12 = *a1;
  v13 = *(a1 + 24);
  __argv = 0;
  v20 = v13;
  v18[0] = &__argv;
  v18[1] = 0x100000001;
  ioctl(v12, 0x8010641FuLL, v18);
  if (*(a1 + 16) > 0x20000uLL)
  {
    v14 = *(a1 + 16);
  }

  operator new[]();
}

void *std::__list_imp<ExtentInfo>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void wipefs_wipe_cold_1()
{
  v7 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_299979000, MEMORY[0x29EDCA988], v0, "Warning, init xartutil file actions error: %d", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x29EDCA608];
}

void wipefs_wipe_cold_2()
{
  v7 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_299979000, MEMORY[0x29EDCA988], v0, "Warning, unable to start xartutil, spawn error: %d", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x29EDCA608];
}

void wipefs_wipe_cold_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0(&dword_299979000, MEMORY[0x29EDCA988], a3, "Warning, xartutil stopped by signal: %u", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x29EDCA608];
}

void wipefs_wipe_cold_4()
{
  v7 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_299979000, MEMORY[0x29EDCA988], v0, "Warning, xartutil terminated abnormally, status 0x%x", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x29EDCA608];
}

void wipefs_wipe_cold_5()
{
  v7 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_299979000, MEMORY[0x29EDCA988], v0, "Warning, xartutil returned status %d", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x29EDCA608];
}

void wipefs_wipe_cold_6()
{
  v7 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_299979000, MEMORY[0x29EDCA988], v0, "Warning, xartutil terminated by signal: %u", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x29EDCA608];
}

void wipefs_wipe_cold_7()
{
  v7 = *MEMORY[0x29EDCA608];
  v0 = *__error();
  OUTLINED_FUNCTION_0(&dword_299979000, MEMORY[0x29EDCA988], v1, "Warning, unable to start xartutil, waitpid error: %d", v2, v3, v4, v5, 0);
  v6 = *MEMORY[0x29EDCA608];
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}