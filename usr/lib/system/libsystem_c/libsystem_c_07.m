uint64_t __rshift_D2A(uint64_t result, int a2)
{
  v2 = (result + 24);
  v3 = a2 >> 5;
  v4 = *(result + 20);
  v5 = (result + 24);
  if (a2 >> 5 < v4)
  {
    v6 = &v2[4 * v4];
    v7 = a2 & 0x1F;
    if ((a2 & 0x1F) != 0)
    {
      v8 = &v2[4 * v3];
      v10 = *v8;
      v9 = (v8 + 4);
      v11 = v10 >> v7;
      if (v9 >= v6)
      {
        v12 = (result + 24);
      }

      else
      {
        v12 = (result + 24);
        do
        {
          *v12++ = (*v9 << (32 - v7)) | v11;
          v13 = *v9++;
          v11 = v13 >> v7;
        }

        while (v9 < v6);
      }

      *v12 = v11;
      v5 = &v12[v11 != 0];
    }

    else
    {
      v14 = v3;
      v15 = (result + 24);
      do
      {
        v5 = (v15 + 1);
        *v15 = v15[v14];
        v16 = &v15[v14 + 1];
        ++v15;
      }

      while (v16 < v6);
    }
  }

  v17 = (v5 - v2) >> 2;
  *(result + 20) = v17;
  if (!v17)
  {
    *v2 = 0;
  }

  return result;
}

uint64_t __trailz_D2A(uint64_t a1)
{
  v1 = *(a1 + 20);
  if (v1 < 1)
  {
    return 0;
  }

  LODWORD(v2) = 0;
  v3 = a1 + 4 * v1 + 24;
  v4 = (a1 + 24);
  while (!*v4)
  {
    v2 = (v2 + 32);
    if (++v4 >= v3)
    {
      return v2;
    }
  }

  v6 = *v4;
  return __lo0bits_D2A(&v6) + v2;
}

double __b2d_D2A(uint64_t a1, _DWORD *a2)
{
  v3 = a1 + 24;
  v4 = *(a1 + 20);
  v5 = a1 + 4 * v4;
  v7 = v5 + 20;
  v6 = *(v5 + 20);
  v8 = __hi0bits_D2A(v6);
  *a2 = 32 - v8;
  if (v8 > 0xA)
  {
    if (v4 < 2)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(v5 + 16);
      v7 = v5 + 16;
    }

    v12 = v8 - 11;
    if (v8 == 11)
    {
      v9 = v6;
    }

    else
    {
      v9 = (v6 << v12) | (v11 >> (43 - v8));
      if (v7 <= v3)
      {
        v13 = 0;
      }

      else
      {
        v13 = *(v7 - 4);
      }

      v11 = (v13 >> (43 - v8)) | (v11 << v12);
    }
  }

  else
  {
    v9 = v6 >> (11 - v8);
    if (v7 <= v3)
    {
      v10 = 0;
    }

    else
    {
      v10 = *(v5 + 16);
    }

    v11 = (v10 >> (11 - v8)) | (v6 << (v8 + 21));
  }

  *&result = v11 | ((v9 | 0x3FF00000u) << 32);
  return result;
}

_BYTE *__strcp_D2A(_BYTE *result, unsigned __int8 *a2)
{
  v2 = *a2;
  *result = v2;
  if (v2)
  {
    v3 = a2 + 1;
    do
    {
      v4 = *v3++;
      *++result = v4;
    }

    while (v4);
  }

  return result;
}

char *__s2b_D2A(uint64_t a1, int a2, int a3, int a4, int a5)
{
  if (a3 < 10)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = (a3 + 8) / 9 <= 2 * v11;
      v11 *= 2;
      ++v10;
    }

    while (!v12);
  }

  result = __Balloc_D2A(v10);
  *(result + 5) = 1;
  *(result + 6) = a4;
  if (a2 < 10)
  {
    v17 = (a1 + a5 + 9);
    a2 = 9;
  }

  else
  {
    v14 = (a1 + 9);
    v15 = a2 - 9;
    do
    {
      v16 = *v14++;
      result = __multadd_D2A(result, 10, v16 - 48);
      --v15;
    }

    while (v15);
    v17 = &v14[a5];
  }

  v18 = __OFSUB__(a3, a2);
  v19 = a3 - a2;
  if (!((v19 < 0) ^ v18 | (v19 == 0)))
  {
    do
    {
      v20 = *v17++;
      result = __multadd_D2A(result, 10, v20 - 48);
      --v19;
    }

    while (v19);
  }

  return result;
}

double __ratio_D2A(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v4 = __b2d_D2A(a1, &v9 + 1);
  v5 = __b2d_D2A(a2, &v9);
  v6 = HIDWORD(v9) - v9 + 32 * (*(a1 + 20) - *(a2 + 20));
  *&v7 = LODWORD(v4) | ((HIDWORD(v4) + (v6 << 20)) << 32);
  if (v6 < 1)
  {
    v7 = v4;
    *&v5 = LODWORD(v5) | ((HIDWORD(v5) - (v6 << 20)) << 32);
  }

  return v7 / v5;
}

uint64_t __match_D2A(void *a1, _BYTE *a2)
{
  v2 = (*a1 + 1);
  while (1)
  {
    v3 = *a2;
    if (!*a2)
    {
      break;
    }

    v5 = *v2++;
    v4 = v5;
    ++a2;
    v6 = v5 | 0x20;
    if ((v5 - 65) < 0x1A)
    {
      v4 = v6;
    }

    if (v4 != v3)
    {
      return 0;
    }
  }

  *a1 = v2;
  return 1;
}

_DWORD *__copybits_D2A(_DWORD *result, int a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  if (v3 < 1)
  {
    v7 = result;
  }

  else
  {
    v4 = a3 + 4 * v3 + 24;
    v5 = (a3 + 24);
    v6 = result;
    v7 = result;
    do
    {
      v8 = *v5++;
      *v7++ = v8;
      ++v6;
    }

    while (v5 < v4);
  }

  if (v7 < &result[((a2 - 1) >> 5) + 1])
  {
    JUMPOUT(0x193AD5FD0);
  }

  return result;
}

uint64_t __any_on_D2A(uint64_t a1, int a2)
{
  v2 = *(a1 + 20);
  v3 = a2 >> 5 < v2;
  if (a2 >> 5 <= v2)
  {
    v4 = a2 & 0x1F;
    if (!v3 || v4 == 0)
    {
      v2 = a2 >> 5;
    }

    else
    {
      v9 = -1 << v4;
      v2 = a2 >> 5;
      if ((*(a1 + 24 + 4 * (a2 >> 5)) & ~v9) != 0)
      {
        return 1;
      }
    }
  }

  for (i = 4 * v2; i + 24 >= 25; i -= 4)
  {
    if (*(a1 + 20 + i))
    {
      return 1;
    }
  }

  return 0;
}

char *__sum_D2A(int *a1, int *a2)
{
  v2 = a1[5];
  v3 = a2[5];
  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (v2 >= v3)
  {
    v5 = a2;
  }

  else
  {
    v5 = a1;
  }

  v6 = __Balloc_D2A(v4[2]);
  v7 = v6;
  v8 = 0;
  v9 = v4[5];
  v6[5] = v9;
  v10 = (v4 + 6);
  v11 = (v5 + 6);
  v12 = v6 + 6;
  v13 = v5[5];
  v14 = &v6[v13 + 6];
  do
  {
    v16 = *v10++;
    v15 = v16;
    v17 = *v11++;
    v18 = v8 + v15 + v17;
    v19 = HIWORD(v17) + HIWORD(v15) + (HIWORD(v18) & 1);
    v8 = HIWORD(v19);
    v12[1] = v19;
    *v12 = v18;
    v12 += 2;
  }

  while (v12 < v14);
  v20 = v14 + 4 * (v9 - v13);
  if (v12 < v20)
  {
    v21 = 0;
    v22 = v12;
    do
    {
      v23 = v10[v21 / 2];
      v24 = v8 + v23;
      v25 = HIWORD(v24) + HIWORD(v23);
      v8 = HIWORD(v25);
      v22[1] = v25;
      v12[v21] = v24;
      v22 += 2;
      v21 += 2;
    }

    while (v22 < v20);
  }

  if (v8)
  {
    if (v9 == v6[3])
    {
      v26 = __Balloc_D2A(v6[2] + 1);
      j__mkdtempat_np(v26 + 16, v7 + 16);
      __Bfree_D2A(v7);
      v9 = *(v26 + 5);
      v7 = v26;
    }

    *(v7 + 5) = v9 + 1;
    *&v7[4 * v9 + 24] = 1;
  }

  return v7;
}

double __ulp_D2A(uint64_t a1)
{
  v1 = *(a1 + 4) & 0x7FF00000;
  v2 = (54525952 - v1) >> 20;
  LODWORD(v3) = 1 << (51 - v2);
  if (v1 < 0x200000)
  {
    v3 = 1;
  }

  else
  {
    v3 = v3;
  }

  v4 = 0x80000uLL >> v2 << 32;
  if (v1 < 0x2000001)
  {
    v4 = v3;
  }

  if (v1 < 0x3400001)
  {
    return *&v4;
  }

  *&v5 = (v1 - 54525952) << 32;
  return v5;
}

unsigned int alarm(unsigned int a1)
{
  v5.it_interval = 0u;
  *(&v5.it_value.tv_usec + 1) = 0;
  memset(&v4, 0, sizeof(v4));
  v5.it_interval.tv_usec = 0;
  v5.it_value.tv_sec = a1;
  v5.it_value.tv_usec = 0;
  v1 = setitimer(0, &v5, &v4);
  if (v4.it_value.tv_usec)
  {
    tv_sec = LODWORD(v4.it_value.tv_sec) + 1;
  }

  else
  {
    tv_sec = v4.it_value.tv_sec;
  }

  if (v1 < 0)
  {
    return -1;
  }

  else
  {
    return tv_sec;
  }
}

clock_t clock(void)
{
  memset(&v1, 0, sizeof(v1));
  if (getrusage(0, &v1))
  {
    return -1;
  }

  else
  {
    return v1.ru_stime.tv_usec + v1.ru_utime.tv_usec + 1000000 * (v1.ru_stime.tv_sec + v1.ru_utime.tv_sec);
  }
}

char *__cdecl ctermid(char *result)
{
  if (!result)
  {
    return ctermid_def;
  }

  v1 = *ctermid_def;
  result[8] = ctermid_def[8];
  *result = v1;
  return result;
}

char *__cdecl ctermid_r(char *result)
{
  if (result)
  {
    v1 = *ctermid_def;
    result[8] = ctermid_def[8];
    *result = v1;
  }

  return result;
}

int daemon(int a1, int a2)
{
  v15.__sigaction_u.__sa_handler = 0;
  *&v15.sa_mask = 0;
  v14.__sigaction_u.__sa_handler = 1;
  *&v14.sa_mask = 0;
  v4 = sigaction(1, &v14, &v15);
  v5 = 0;
  parent_port = 0;
  v6 = MEMORY[0x1E69E99F8];
  v7 = MEMORY[0x1E69E9A60];
  while (1)
  {
    if (v5)
    {
      mach_port_deallocate(*v7, v5);
      p_parent_port = &parent_port;
    }

    else
    {
      p_parent_port = v6;
    }

    v5 = *p_parent_port;
    if (bootstrap_parent(*p_parent_port, &parent_port))
    {
      break;
    }

    if (parent_port == v5)
    {
      task_set_special_port(*v7, 4, v5);
      *v6 = parent_port;
      break;
    }
  }

  result = fork();
  if (result != -1)
  {
    if (result)
    {
      __exit();
    }

    v10 = setsid();
    v11 = *__error();
    if (v4 != -1)
    {
      sigaction(1, &v15, 0);
    }

    if (v10 == -1)
    {
      *__error() = v11;
      return -1;
    }

    if (a1)
    {
      if (!a2)
      {
LABEL_18:
        v12 = open_NOCANCEL();
        if (v12 != -1)
        {
          v13 = v12;
          dup2(v12, 0);
          dup2(v13, 1);
          dup2(v13, 2);
          if (v13 >= 3)
          {
            close_NOCANCEL();
          }
        }
      }
    }

    else
    {
      chdir("/");
      if (!a2)
      {
        goto LABEL_18;
      }
    }

    return 0;
  }

  return result;
}

char *__cdecl dirname(char *a1)
{
  v2 = dirname_dname;
  if (dirname_dname || (result = malloc_type_malloc(0x400uLL, 0x100004077774924uLL), v2 = result, (dirname_dname = result) != 0))
  {

    return dirname_r(a1, v2);
  }

  return result;
}

double drand48(void)
{
  _rand48_seed = _rand48_add + _rand48_mult * _rand48_seed;
  v0 = _rand48_seed & 0xFFFFFFFFFFFFLL;
  if ((_rand48_seed & 0xFFFFFFFFFFFFLL) == 0)
  {
    return 0.0;
  }

  v1 = 32 * v0;
  v2 = v0 >> 47;
  v3 = __clz(v1);
  v4 = v1 << (52 - (v3 ^ 0x3Fu));
  v5 = 0x4090000000000000 - (v3 << 52);
  v6 = v2 == 0;
  if (v2)
  {
    v7 = v1;
  }

  else
  {
    v7 = v4;
  }

  if (v6)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0x3FE0000000000000;
  }

  *&result = v8 | v7 & 0x800FFFFFFFFFFFE0;
  return result;
}

double erand48(unsigned __int16 a1[3])
{
  v1 = _rand48_add + (*a1 | (a1[2] << 32)) * _rand48_mult;
  *a1 = _rand48_add + *a1 * _rand48_mult;
  a1[1] = WORD1(v1);
  a1[2] = WORD2(v1);
  v2 = v1 & 0xFFFFFFFFFFFFLL;
  if (!v2)
  {
    return 0.0;
  }

  v3 = 32 * v2;
  v4 = v2 >> 47;
  v5 = __clz(v3);
  v6 = v3 << (52 - (v5 ^ 0x3Fu));
  v7 = 0x4090000000000000 - (v5 << 52);
  v8 = v4 == 0;
  if (v4)
  {
    v9 = v3;
  }

  else
  {
    v9 = v6;
  }

  if (v8)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0x3FE0000000000000;
  }

  *&result = v10 | v9 & 0x800FFFFFFFFFFFE0;
  return result;
}

void _e_visprintf(FILE *a1, const char *a2, char *a3)
{
  v14[0] = 0;
  v14[1] = a3;
  vasprintf(v14, a2, a3);
  if (!v14[0])
  {
    goto LABEL_13;
  }

  v7 = j__strsignal_r(v14[0], v5, v6);
  v8 = malloc_type_malloc((4 * v7) | 1, 0xFF12A32uLL);
  if (!v8)
  {
    free(v14[0]);
LABEL_13:
    vfprintf(a1, a2, a3);
    return;
  }

  v9 = *v14[0];
  v10 = v8;
  if (*v14[0])
  {
    v11 = v14[0] + 1;
    v10 = v8;
    do
    {
      if (escape[v9] == 255)
      {
        sprintf(v10, "\\%03o", v9);
        v10 += 4;
      }

      else if (escape[v9])
      {
        *v10 = 92;
        v10[1] = escape[*(v11 - 1)];
        v10 += 2;
      }

      else
      {
        *v10++ = v9;
      }

      v12 = *v11++;
      v9 = v12;
    }

    while (v12);
  }

  *v10 = 0;
  fputs(v8, a1);
  free(v8);
  free(v14[0]);
}

void err_set_file(void *a1)
{
  v1 = __stderrp;
  if (a1)
  {
    v1 = a1;
  }

  _e_err_file = v1;
}

void err_set_exit(void (__cdecl *a1)(int))
{
  if (_e_err_exit == 1)
  {
    _Block_release(off_1EAC9EA30);
  }

  _e_err_exit = 2 * (a1 != 0);
  off_1EAC9EA30 = a1;
}

void err_set_exit_b(void *a1)
{
  if (_e_err_exit == 1)
  {
    _Block_release(off_1EAC9EA30);
  }

  _e_err_exit = a1 != 0;
  off_1EAC9EA30 = _Block_copy(a1);
}

int execl(const char *__path, const char *__arg0, ...)
{
  va_start(va, __arg0);
  va_copy(v13, va);
  v4 = 8;
  do
  {
    v5 = v13;
    v13 += 8;
    v4 += 8;
  }

  while (*v5);
  MEMORY[0x1EEE9AC00](__path, v4);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x193AD5FD0](v7);
  va_copy(v13, va);
  *v7 = __arg0;
  v8 = 1;
  do
  {
    v9 = v13;
    v13 += 8;
    v10 = *v9;
    v7[v8++] = v10;
  }

  while (v10);
  v11 = _NSGetEnviron();
  return execve(__path, v7, *v11);
}

int execle(const char *__path, const char *__arg0, ...)
{
  va_start(va, __arg0);
  va_copy(v13, va);
  v4 = 8;
  do
  {
    v5 = v13;
    v13 += 8;
    v4 += 8;
  }

  while (*v5);
  MEMORY[0x1EEE9AC00](__path, v4);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x193AD5FD0](v7);
  va_copy(v13, va);
  *v7 = __arg0;
  v8 = 1;
  do
  {
    v9 = v13;
    v13 += 8;
    v10 = *v9;
    v7[v8++] = v10;
  }

  while (v10);
  v11 = v13;
  v13 += 8;
  return execve(__path, v7, *v11);
}

int execlp(const char *__file, const char *__arg0, ...)
{
  va_start(va, __arg0);
  va_copy(v12, va);
  v4 = 8;
  do
  {
    v5 = v12;
    v12 += 8;
    v4 += 8;
  }

  while (*v5);
  MEMORY[0x1EEE9AC00](__file, v4);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x193AD5FD0](v7);
  va_copy(v12, va);
  *v7 = __arg0;
  v8 = 1;
  do
  {
    v9 = v12;
    v12 += 8;
    v10 = *v9;
    v7[v8++] = v10;
  }

  while (v10);
  execvp(__file, v7);
  return -1;
}

int execvp(const char *__file, char *const *__argv)
{
  v4 = *_NSGetEnviron();
  v5 = getenv("PATH");
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = "/usr/bin:/bin";
  }

  execvPe(__file, v6, __argv, v4);
  return -1;
}

int execv(const char *__path, char *const *__argv)
{
  v4 = _NSGetEnviron();
  execve(__path, __argv, *v4);
  return -1;
}

int execvP(const char *__file, const char *__searchpath, char *const *__argv)
{
  v6 = _NSGetEnviron();
  execvPe(__file, __searchpath, __argv, *v6);
  return -1;
}

uint64_t execvPe(char *a1, unsigned __int8 *a2, uint64_t a3, char *const *a4)
{
  v33 = a4;
  v6 = a1;
  memset(&v36, 0, sizeof(v36));
  j__strmode(a1, 0x2F);
  v31 = a3;
  if (!v9)
  {
    if (*v6)
    {
      v30 = v6;
      result = j__strsignal_r(v6, v7, v8);
      v32 = 0;
      v34 = v37;
      v35 = result;
      v29 = a2;
      goto LABEL_5;
    }

    goto LABEL_28;
  }

  v29 = 0;
  v30 = v6;
  v35 = 0;
  v32 = 0;
  a2 = 0;
  while (1)
  {
    execve(v6, a3, v33);
    result = __error();
    v19 = *result;
    v34 = v6;
    if (v19 <= 0x3F)
    {
      if (((1 << v19) & 0xC000000000100004) != 0)
      {
        goto LABEL_5;
      }

      if (((1 << v19) & 0x4001080) != 0)
      {
        return result;
      }

      if (v19 == 8)
      {
        v21 = 0;
        v22 = 1;
        do
        {
          v23 = *(a3 + v21);
          v21 += 8;
          ++v22;
        }

        while (v23);
        v24 = 3;
        if (v22 > 3)
        {
          v24 = v22;
        }

        MEMORY[0x1EEE9AC00](result, 8 * v24);
        v26 = &v28 - v25;
        MEMORY[0x193AD5FD0](&v28 - v25);
        if (v22 == 2)
        {
          *(v26 + 2) = 0;
          v27 = "sh";
        }

        else
        {
          v27 = *a3;
          j__mkdtempat_np(v26 + 16, (a3 + 8));
        }

        *v26 = v27;
        *(v26 + 1) = v6;
        return execve("/bin/sh", v26, v33);
      }
    }

    v20 = *__error();
    result = stat(v6, &v36);
    if (!result)
    {
      v32 = 1;
      if (v20 != 13)
      {
        result = __error();
        *result = v20;
        return result;
      }
    }

LABEL_5:
    if (!a2)
    {
      break;
    }

    while (1)
    {
      v12 = strchrnul(a2, 0x3A, v11);
      v13 = v12 == a2 ? 1 : v12 - a2;
      if (v12 == a2)
      {
        v14 = ".";
      }

      else
      {
        LODWORD(v14) = a2;
      }

      v16 = v12 + 1;
      v15 = *v12;
      v17 = v13 + v35;
      if ((v13 + v35 - 1023) > 0xFFFFFFFFFFFFFBFELL)
      {
        break;
      }

      write_NOCANCEL();
      write_NOCANCEL();
      result = write_NOCANCEL();
      a2 = v16;
      if (!v15)
      {
        goto LABEL_14;
      }
    }

    if (*v12)
    {
      a2 = v12 + 1;
    }

    else
    {
      a2 = 0;
    }

    j__mkostemp(v37, v14);
    v37[v13] = 47;
    j__mkdtempat_np(&v37[v13] + 1, v30);
    v37[v17 + 1] = 0;
    a3 = v31;
    v6 = v34;
  }

LABEL_14:
  if (v32)
  {
    result = __error();
    v18 = 13;
    goto LABEL_29;
  }

  if (v29)
  {
LABEL_28:
    result = __error();
    v18 = 2;
LABEL_29:
    *result = v18;
  }

  return result;
}

int fmtmsg(uint64_t a1, const char *a2, int a3, const char *a4, const char *a5, const char *a6)
{
  v8 = *&a3;
  v10 = a1;
  if (a5)
  {
    v11 = a5;
  }

  else
  {
    v11 = "";
  }

  if ((a1 & 0x100) != 0)
  {
    v13 = getenv("MSGVERB");
    if (v13)
    {
      v16 = v13;
      if (*v13)
      {
        if (j__strsignal_r(v13, v14, v15) <= 0x1E)
        {
          v17 = strdup(v16);
          if (!v17)
          {
            return 3;
          }

          v18 = v17;
          v19 = nextcomp(v17);
          if (v19)
          {
            v22 = v19;
            v35 = a6;
            v23 = 0;
            do
            {
              v24 = 0;
              --v23;
              do
              {
                if (!j__strncasecmp_l(v22, validlist[v24], v20, v21))
                {
                  ++v23;
                }

                ++v24;
              }

              while (v24 != 5);
              v22 = nextcomp(v18);
            }

            while (v22);
            if (v23)
            {
              free(v18);
              a6 = v35;
              goto LABEL_20;
            }

            a6 = v35;
          }

LABEL_21:
          v25 = printfmt(v18, a2, v8, a4, v11, a6);
          if (v25)
          {
            v26 = v25;
            if (*v25)
            {
              v12 = fprintf(__stderrp, "%s", v25) >> 31;
            }

            else
            {
              v12 = 0;
            }

            free(v18);
            free(v26);
            if ((v10 & 0x200) == 0)
            {
              return v12;
            }

            goto LABEL_28;
          }

          free(v18);
          return 3;
        }
      }
    }

LABEL_20:
    v18 = strdup("label:severity:text:action:tag");
    if (!v18)
    {
      return 3;
    }

    goto LABEL_21;
  }

  v12 = 0;
  if ((a1 & 0x200) == 0)
  {
    return v12;
  }

LABEL_28:
  v27 = printfmt("label:severity:text:action:tag", a2, v8, a4, v11, a6);
  if (!v27)
  {
    return 2;
  }

  v28 = v27;
  if (*v27)
  {
    memset(&v36, 0, sizeof(v36));
    v29 = stat("/var/log/console", &v36);
    if ((v36.st_mode & 0xF000) == 0x4000 && v29 == 0)
    {
      v31 = "/var/log/console";
    }

    else
    {
      v31 = "/dev/console";
    }

    v32 = fopen(v31, "a");
    if (v32)
    {
      v33 = v32;
      fputs(v28, v32);
      fclose(v33);
    }

    else if (v12)
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }
  }

  free(v28);
  return v12;
}

_BYTE *printfmt(uint64_t a1, char *__sig, size_t a3, char *a4, char *a5, char *a6)
{
  v9 = a3;
  if (__sig)
  {
    v12 = j__strsignal_r(__sig, __sig, a3) + 32;
  }

  else
  {
    v12 = 32;
  }

  v13 = (v9 - 1);
  if (v13 <= 3)
  {
    v12 += j__strsignal_r(off_1E72799A0[v13], __sig, a3);
  }

  if (a4)
  {
    v12 += j__strsignal_r(a4, __sig, a3);
  }

  if (a5)
  {
    v12 += j__strsignal_r(a5, __sig, a3);
  }

  if (a6)
  {
    v12 += j__strsignal_r(a6, __sig, a3);
  }

  v14 = malloc_type_malloc(v12, 0xEDCCEE8BuLL);
  v15 = v14;
  if (v14)
  {
    *v14 = 0;
    v16 = nextcomp(a1);
    if (v16)
    {
      v19 = v16;
      do
      {
        v20 = j__strncasecmp_l(v19, "label", v17, v18);
        if (!__sig || v20)
        {
          v25 = j__strncasecmp_l(v19, "severity", v21, v22);
          if (v13 > 3 || v25)
          {
            v28 = j__strncasecmp_l(v19, "text", v26, v27);
            if (!a4 || v28)
            {
              v31 = j__strncasecmp_l(v19, "action", v29, v30);
              if (!a5 || v31)
              {
                v34 = j__strncasecmp_l(v19, "tag", v32, v33);
                if (!a6 || v34)
                {
                  goto LABEL_36;
                }

                if (*v15)
                {
                  MEMORY[0x193AD6A20](v15, " ", v12);
                }

                v23 = v15;
                v24 = a6;
              }

              else
              {
                if (*v15)
                {
                  MEMORY[0x193AD6A20](v15, "\n", v12);
                }

                MEMORY[0x193AD6A20](v15, "TO FIX: ", v12);
                v23 = v15;
                v24 = a5;
              }
            }

            else
            {
              if (*v15)
              {
                MEMORY[0x193AD6A20](v15, ": ", v12);
              }

              v23 = v15;
              v24 = a4;
            }
          }

          else
          {
            if (*v15)
            {
              MEMORY[0x193AD6A20](v15, ": ", v12);
            }

            v24 = off_1E72799A0[v13];
            v23 = v15;
          }
        }

        else
        {
          if (*v15)
          {
            MEMORY[0x193AD6A20](v15, ": ", v12);
          }

          v23 = v15;
          v24 = __sig;
        }

        MEMORY[0x193AD6A20](v23, v24, v12);
LABEL_36:
        v19 = nextcomp(a1);
      }

      while (v19);
    }

    if (*v15)
    {
      MEMORY[0x193AD6A20](v15, "\n", v12);
    }
  }

  return v15;
}

char *nextcomp(uint64_t a1)
{
  if (nextcomp_lmsgverb)
  {
    v1 = 0;
  }

  else
  {
    MEMORY[0x193AD6A30](&nextcomp_lmsgverb, a1, 31);
    v1 = &nextcomp_lmsgverb;
  }

  result = strtok_r(v1, ":", &nextcomp_state);
  if (!result)
  {
    nextcomp_lmsgverb = 0;
  }

  return result;
}

uint64_t rangematch(const char *a1, unsigned int a2, const char *a3, char a4, void *a5, const char **a6, mbstate_t *a7, mbstate_t *a8, locale_t a9)
{
  v12 = a1;
  v93 = 0;
  v92 = 0;
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v13 = *a1;
  if (v13 == 94 || v13 == 33)
  {
    v12 = a1 + 1;
    v89 = 1;
  }

  else
  {
    v89 = 0;
  }

  if ((a4 & 0x10) != 0)
  {
    if (a2 > 0x7F)
    {
      a2 = ___tolower_l(a2, a9);
    }

    else
    {
      a2 = _DefaultRuneLocale.__maplower[a2];
    }
  }

  LODWORD(v14) = 0;
  v94 = 0;
  v15 = *v12;
  v16 = &__global_locale;
  if (a9 != -1)
  {
    v16 = a9;
  }

  if (a9)
  {
    v17 = v16;
  }

  else
  {
    v17 = &__c_locale;
  }

  v18 = a2;
  v87 = v17;
  v19 = v12;
  while (1)
  {
    if (v15 == 47)
    {
      v20 = (a4 & 1) == 0;
      if ((a4 & 2) != 0)
      {
        return 0;
      }
    }

    else
    {
      if (!v15)
      {
        return 0xFFFFFFFFLL;
      }

      if ((a4 & 1) != 0 || v15 != 92)
      {
        if (v15 == 91)
        {
          v21 = *(v19 + 1);
          v14 = v21;
          if (v21 <= 0x3D && ((1 << v21) & 0x2400400000000000) != 0)
          {
            __sig = a3;
            v22 = (v19 + 2);
            v23 = v19 + 2;
            do
            {
              j__strmode(v23, v14);
              if (!v24)
              {
                return 0xFFFFFFFFLL;
              }

              v25 = v24;
              v26 = *(v24 + 1);
              v23 = v24 + 1;
            }

            while (v26 != 93);
            if (v14 == 61)
            {
              v41 = *(&a7->_mbstateL + 5);
              v100 = *(&a7->_mbstateL + 4);
              v101 = v41;
              v42 = *(&a7->_mbstateL + 7);
              v102 = *(&a7->_mbstateL + 6);
              v103 = v42;
              v43 = *(&a7->_mbstateL + 1);
              v96 = *a7->__mbstate8;
              v97 = v43;
              v44 = *(&a7->_mbstateL + 3);
              v27 = v25 - v22;
              v98 = *(&a7->_mbstateL + 2);
              v99 = v44;
              v45 = __collate_equiv_class(v22, v25 - v22, a7, a9);
              if (v45 < 0)
              {
                return 0xFFFFFFFFLL;
              }

              v48 = v45;
              if (v45)
              {
                v19 = (v25 + 2);
                if (*(v25 + 2) != 45 || *(v25 + 3) == 93 || !*(v25 + 3))
                {
                  a3 = __sig;
                  v49 = j__strsignal_r(__sig, v46, v47);
                  v50 = __collate_equiv_match(v48, 0, 0, v18, __sig, v49, a8, &v92, a9);
                  if (!v50)
                  {
                    LODWORD(v14) = 61;
                    goto LABEL_53;
                  }

                  if (v50 != -1)
                  {
                    a3 = &__sig[v92];
                    goto LABEL_118;
                  }
                }

                return 0xFFFFFFFFLL;
              }

              v55 = v101;
              *(&a7->_mbstateL + 4) = v100;
              *(&a7->_mbstateL + 5) = v55;
              v56 = v103;
              *(&a7->_mbstateL + 6) = v102;
              *(&a7->_mbstateL + 7) = v56;
              v57 = v97;
              *a7->__mbstate8 = v96;
              *(&a7->_mbstateL + 1) = v57;
              v58 = v99;
              *(&a7->_mbstateL + 2) = v98;
              *(&a7->_mbstateL + 3) = v58;
              goto LABEL_94;
            }

            if (v14 == 46)
            {
              v27 = v25 - v22;
LABEL_94:
              v59 = __collate_collating_symbol(&v104, 0x18uLL, v22, v27, a7, a9);
              if (v59 + 1 < 2)
              {
                return 0xFFFFFFFFLL;
              }

              v19 = (v25 + 2);
              if (v59 < 2)
              {
                v94 = v104;
                v20 = (a4 & 1) == 0;
                a3 = __sig;
                if (v104)
                {
                  goto LABEL_34;
                }

                goto LABEL_32;
              }

              *v95 = 0;
              if (*v19 == 45 && *(v25 + 3) && *(v25 + 3) != 93)
              {
                return 0xFFFFFFFFLL;
              }

              if (v18 == v104)
              {
                v60 = *a8->__mbstate8;
                v61 = *(&a8->_mbstateL + 1);
                v62 = *(&a8->_mbstateL + 3);
                v98 = *(&a8->_mbstateL + 2);
                v99 = v62;
                v96 = v60;
                v97 = v61;
                v63 = *(&a8->_mbstateL + 4);
                v64 = *(&a8->_mbstateL + 5);
                v65 = *(&a8->_mbstateL + 7);
                v102 = *(&a8->_mbstateL + 6);
                v103 = v65;
                v100 = v63;
                v101 = v64;
                v66 = v59 - 1;
                a3 = __sig;
                v67 = &v105;
                while (1)
                {
                  v68 = mbrtowc_l(v95, a3, 6uLL, a8, a9);
                  v92 = v68;
                  if (v68 <= 0xFFFFFFFFFFFFFFFDLL)
                  {
                    v69 = *v95;
                  }

                  else
                  {
                    a8 = 0;
                    v69 = *a3;
                    *v95 = v69;
                    v92 = 1;
                    v68 = 1;
                  }

                  if (v69 != *v67)
                  {
                    break;
                  }

                  a3 += v68;
                  ++v67;
                  if (!--v66)
                  {
                    goto LABEL_118;
                  }
                }

                v70 = v96;
                v71 = v97;
                v72 = v99;
                *(&a8->_mbstateL + 2) = v98;
                *(&a8->_mbstateL + 3) = v72;
                *a8->__mbstate8 = v70;
                *(&a8->_mbstateL + 1) = v71;
                v73 = v100;
                v74 = v101;
                v75 = v103;
                *(&a8->_mbstateL + 6) = v102;
                *(&a8->_mbstateL + 7) = v75;
                *(&a8->_mbstateL + 4) = v73;
                *(&a8->_mbstateL + 5) = v74;
                a3 = __sig;
              }

              else
              {
                a3 = __sig;
              }

              goto LABEL_53;
            }

            v19 = (v25 + 2);
            if (*(v25 + 2) == 45 && *(v25 + 3) != 93 && *(v25 + 3))
            {
              return 0xFFFFFFFFLL;
            }

            if (v25 - v22 > 14)
            {
              return 0xFFFFFFFFLL;
            }

            MEMORY[0x193AD6A30](v95, v22, v25 - v22 + 1);
            v51 = wctype(v95);
            if (!v51)
            {
              return 0xFFFFFFFFLL;
            }

            v52 = v51;
            if (v18 > 0x7F)
            {
              a3 = __sig;
              if (v18 < 0x100)
              {
                v54 = *(*(*(v87 + 166) + 120) + 4 * v18 + 60);
              }

              else
              {
                v54 = ___runetype_l(v18, a9);
              }

              v53 = (v54 & v52);
            }

            else
            {
              v53 = _DefaultRuneLocale.__runetype[v18] & v51;
              a3 = __sig;
            }

            if (!v53)
            {
              goto LABEL_53;
            }

LABEL_118:
            v76 = 1;
            goto LABEL_119;
          }
        }

        v20 = (a4 & 1) == 0;
      }

      else
      {
        ++v19;
        v20 = 1;
      }
    }

LABEL_32:
    v28 = mbrtowc_l(&v94, v19, 6uLL, a7, a9);
    if (v28 > 0xFFFFFFFFFFFFFFFDLL)
    {
      return 0xFFFFFFFFLL;
    }

    v19 += v28;
LABEL_34:
    if ((a4 & 0x10) != 0)
    {
      if (v94 > 0x7F)
      {
        v29 = ___tolower_l(v94, a9);
      }

      else
      {
        v29 = _DefaultRuneLocale.__maplower[v94];
      }

      v94 = v29;
    }

    if (*v19 == 45)
    {
      v30 = *(v19 + 1);
      if (v19[1])
      {
        if (v30 != 93)
        {
          break;
        }
      }
    }

    if (v94 == v18)
    {
      goto LABEL_118;
    }

LABEL_53:
    v94 = 0;
    v15 = *v19;
    if (v15 == 93 && v19 > v12)
    {
      v76 = 0;
LABEL_119:
      v78 = 0;
      while (1)
      {
        v79 = *v19;
        if (!*v19)
        {
          break;
        }

        if (v79 == 93)
        {
          *a5 = v19 + 1;
          *a6 = a3;
          return v76 != v89;
        }

        if (v78 == v79)
        {
          v81 = *++v19;
          if (v81 == 93)
          {
            ++v19;
            v78 = 0;
          }
        }

        else if (!v78 && v79 == 91)
        {
          v82 = (v19 + 2);
          v84 = *++v19;
          v83 = v84;
          if (((1 << v84) & 0x2400400000000000) != 0)
          {
            v85 = v83;
          }

          else
          {
            v82 = v19;
            v85 = 0;
          }

          if (v83 > 0x3D)
          {
            v78 = 0;
          }

          else
          {
            v19 = v82;
            v78 = v85;
          }
        }

        else
        {
          v80 = mbrtowc_l(&v94, v19, 6uLL, a7, a9);
          if (v80 > 0xFFFFFFFFFFFFFFFDLL)
          {
            return 0xFFFFFFFFLL;
          }

          v19 += v80;
        }
      }

      return 0xFFFFFFFFLL;
    }
  }

  v31 = (v19 + 2);
  if (!v20)
  {
    v31 = (v19 + 1);
  }

  if (v30 == 92)
  {
    v32 = v31;
  }

  else
  {
    v32 = v19 + 1;
  }

  v33 = mbrtowc_l(&v93, v32, 6uLL, a7, a9);
  if (v33 > 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0xFFFFFFFFLL;
  }

  v19 = &v32[v33];
  v34 = v93;
  if (v93 != 91)
  {
    if (!v93 || v14 == 61)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_58;
  }

  v35 = *v19;
  v14 = v35;
  if (v35 != 46)
  {
    if (v35 == 61)
    {
      return 0xFFFFFFFFLL;
    }

LABEL_58:
    if (v14 == 58)
    {
      return 0xFFFFFFFFLL;
    }

    if ((a4 & 0x10) != 0)
    {
LABEL_60:
      if (v34 > 0x7F)
      {
        v34 = ___tolower_l(v34, a9);
      }

      else
      {
        v34 = _DefaultRuneLocale.__maplower[v34];
      }

      v93 = v34;
    }

LABEL_70:
    if (*(*(a9 + 165) + 64))
    {
      if (v94 <= v18 && v18 <= v34)
      {
        goto LABEL_118;
      }
    }

    else if (__collate_range_cmp(v94, v18, a9) <= 0 && __collate_range_cmp(v18, v93, a9) < 1)
    {
      goto LABEL_118;
    }

    goto LABEL_53;
  }

  v36 = a3;
  v37 = v19 + 1;
  while (1)
  {
    j__strmode(v37, v14);
    if (!v38)
    {
      return 0xFFFFFFFFLL;
    }

    v39 = v38;
    v40 = *(v38 + 1);
    v37 = v38 + 1;
    if (v40 == 93)
    {
      if (__collate_collating_symbol(&v104, 0x18uLL, v19 + 1, v39 - (v19 + 1), a7, a9) != 1)
      {
        return 0xFFFFFFFFLL;
      }

      v19 = (v39 + 2);
      v34 = v104;
      v93 = v104;
      a3 = v36;
      if ((a4 & 0x10) != 0)
      {
        goto LABEL_60;
      }

      goto LABEL_70;
    }
  }
}

key_t ftok(const char *a1, int a2)
{
  memset(&v4, 0, sizeof(v4));
  if (stat(a1, &v4) < 0)
  {
    return -1;
  }

  else
  {
    return LOWORD(v4.st_ino) | (a2 << 24) | (LOBYTE(v4.st_dev) << 16);
  }
}

char *__cdecl getbsize(int *a1, uint64_t *a2)
{
  v4 = getenv("BLOCKSIZE");
  if (!v4)
  {
    goto LABEL_21;
  }

  v5 = v4;
  if (!*v4)
  {
    goto LABEL_21;
  }

  __endptr = 0;
  v6 = strtol(v4, &__endptr, 10);
  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_20:
    warnx("minimum blocksize is 512");
LABEL_21:
    v9 = "";
    v11 = 512;
    v12 = 512;
    goto LABEL_22;
  }

  if (v6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  if (*__endptr)
  {
    if (__endptr[1])
    {
      goto LABEL_24;
    }

    v8 = *__endptr - 71;
    if (v8 > 0x26)
    {
      goto LABEL_24;
    }

    if (((1 << v8) & 0x100000001) != 0)
    {
      v9 = "G";
      v10 = 0x40000000;
      v11 = 1;
    }

    else
    {
      if (((1 << v8) & 0x1000000010) == 0)
      {
        if (((1 << v8) & 0x4000000040) != 0)
        {
          v9 = "M";
          v10 = 0x100000;
          v11 = 1024;
          goto LABEL_17;
        }

LABEL_24:
        warnx("%s: unknown blocksize", v5);
        v9 = "";
        v11 = 512;
        v10 = 1;
        goto LABEL_19;
      }

      v9 = "K";
      v10 = 1024;
      v11 = 0x100000;
    }
  }

  else
  {
    v9 = "";
    v10 = 1;
    v11 = 0x40000000;
  }

LABEL_17:
  if (v6 > v11)
  {
    warnx("maximum blocksize is %ldG", 1);
  }

  else
  {
    v11 = v7;
  }

LABEL_19:
  v12 = v11 * v10;
  if (v11 * v10 <= 0x1FF)
  {
    goto LABEL_20;
  }

LABEL_22:
  snprintf(getbsize_header, 0x14uLL, "%ld%s-blocks", v11, v9);
  *a1 = j__strsignal_r(getbsize_header, v13, v14);
  *a2 = v12;
  return getbsize_header;
}

int cgetset(const char *a1)
{
  if (a1)
  {
    topreclen = j__strsignal_r(a1, v1, v2);
    v4 = malloc_type_malloc(topreclen + 1, 0xA69B3CBAuLL);
    toprec = v4;
    if (v4)
    {
      gottoprec = 0;
      j__strnstr(v4, a1, v5);
      return 0;
    }

    else
    {
      *__error() = 12;
      return -1;
    }
  }

  else
  {
    if (toprec)
    {
      free(toprec);
    }

    result = 0;
    toprec = 0;
    topreclen = 0;
  }

  return result;
}

char *__cdecl cgetcap(char *result, const char *a2, int a3)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v3 = *result;
        if (!*result)
        {
          return 0;
        }

        ++result;
        if (v3 == 58)
        {
          v4 = *a2;
          v5 = *result;
          if (v4 == v5 && v5 != 0)
          {
            v7 = a2 + 1;
            do
            {
              v8 = *++result;
              v5 = v8;
              v9 = *v7++;
              v4 = v9;
            }

            while (v9 == v5 && v5 != 0);
          }

          if (!v4)
          {
            break;
          }
        }
      }

      if (v5 == 64)
      {
        return 0;
      }

      if (a3 != 58)
      {
        break;
      }

      if (!v5 || v5 == 58)
      {
        return result;
      }
    }
  }

  while (v5 != a3);
  v11 = *++result;
  if (v11 == 64)
  {
    return 0;
  }

  return result;
}

uint64_t getent(char **a1, int *a2, const char **a3, uint64_t a4, const char *a5, int a6)
{
  if (a6 > 32)
  {
    return 4294967293;
  }

  v7 = a6;
  if (a6 || !toprec || cgetmatch(toprec, a5))
  {
    v12 = malloc_type_malloc(0x400uLL, 0xB942A48uLL);
    if (v12)
    {
      v13 = v12;
      v14 = *a3;
      if (!*a3)
      {
        goto LABEL_32;
      }

      v67 = a1;
      v68 = a2;
      v15 = (v12 + 1024);
      v16 = a3;
LABEL_9:
      if ((a4 & 0x80000000) != 0)
      {
        snprintf(__str, 0x100uLL, "%s.db", v14);
        v18 = dbopen(__str, 0, 0, DB_HASH, 0);
        if (v18)
        {
          v54 = v18;
          free(v13);
          v55 = strdup(a5);
          if (v55)
          {
            v58 = v55;
            v72 = 0;
            v73 = 0;
            v74[0] = v55;
            for (i = j__strsignal_r(v55, v56, v57); ; i = (v73 - 1))
            {
              v74[1] = i;
              v60 = (v54->get)(v54, v74, &v72, 0);
              if (v60 == -1)
              {
                break;
              }

              if (v60 == 1)
              {
                v6 = 0xFFFFFFFFLL;
                goto LABEL_83;
              }

              v61 = v72;
              v62 = v72 + 1;
              if (*v72 != 2)
              {
                free(v58);
                v6 = *v61 == 1;
                v13 = strdup(v62);
                if (((v54->close)(v54) & 0x80000000) != 0)
                {
                  goto LABEL_91;
                }

                if (v13)
                {
                  *v68 = j__strsignal_r(v13, v63, v64);
                  *v67 = v13;
                  return v6;
                }

                goto LABEL_64;
              }

              v74[0] = v72 + 1;
            }

            v6 = 4294967294;
LABEL_83:
            free(v58);
          }

          else
          {
            v6 = 4294967294;
          }

          (v54->close)(v54);
          return v6;
        }

        v17 = open_NOCANCEL();
        if ((v17 & 0x80000000) != 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        lseek(a4, 0, 0);
        v17 = a4;
      }

      a3 = v16;
      v70 = a4 >= 0;
      v19 = v74;
      v20 = v13;
      v21 = v74;
      while (1)
      {
        v22 = v20;
        if (v21 >= v19)
        {
          NOCANCEL = read_NOCANCEL();
          v24 = NOCANCEL;
          if (NOCANCEL <= 0)
          {
            if ((a4 & 0x80000000) != 0)
            {
              close_NOCANCEL();
            }

            if ((v24 & 0x80000000) == 0)
            {
              *v20 = 0;
              v17 = 0xFFFFFFFFLL;
              v16 = a3;
LABEL_31:
              v28 = v16[1];
              ++v16;
              v14 = v28;
              a4 = v17;
              if (!v28)
              {
LABEL_32:
                free(v13);
                return 0xFFFFFFFFLL;
              }

              goto LABEL_9;
            }

LABEL_91:
            free(v13);
            return 4294967294;
          }

          v21 = v74;
          v19 = (v74 + (NOCANCEL & 0x7FFFFFFF));
        }

        v26 = *v21;
        v21 = (v21 + 1);
        v25 = v26;
        if (v26 == 10)
        {
          if (v20 <= v13 || (--v20, *(v22 - 1) != 92))
          {
            *v22 = 0;
            v20 = v13;
            if (*v13)
            {
              v20 = v13;
              if (*v13 != 35)
              {
                v20 = v13;
                if (!cgetmatch(v13, a5))
                {
                  a4 = v17;
                  v7 = a6;
                  goto LABEL_35;
                }
              }
            }
          }
        }

        else
        {
          *v20++ = v25;
          if ((v22 + 1) >= v15)
          {
            v27 = reallocf(v13, v15 - v13 + 1024);
            if (!v27)
            {
              *__error() = 12;
              if ((a4 & 0x80000000) != 0)
              {
                close_NOCANCEL();
              }

              return 4294967294;
            }

            v15 = &v27[v15 - v13 + 1024];
            v20 = &v27[v20 - v13];
            v13 = v27;
          }
        }
      }
    }

LABEL_64:
    *__error() = 12;
    return 4294967294;
  }

  v29 = malloc_type_malloc(topreclen + 1024, 0x96AA5C56uLL);
  if (!v29)
  {
    goto LABEL_64;
  }

  v13 = v29;
  v67 = a1;
  v68 = a2;
  v22 = &j__strnstr(v29, toprec, v30)[topreclen];
  v15 = (v22 + 1025);
  v70 = 1;
LABEL_35:
  v31 = v22 + 1;
  LODWORD(v72) = 0;
  v74[0] = 0;
  v32 = cgetcap(v13, "tc", 61);
  if (!v32)
  {
    v6 = 0;
LABEL_60:
    if (!v70)
    {
      close_NOCANCEL();
    }

    *v68 = ~v13 + v31;
    if (v15 <= v31)
    {
      v52 = v67;
    }

    else
    {
      v13 = reallocf(v13, v31 - v13);
      v52 = v67;
      if (!v13)
      {
        goto LABEL_64;
      }
    }

    *v52 = v13;
    return v6;
  }

  v33 = v32;
  LODWORD(v6) = 0;
  while (1)
  {
    v34 = v33;
    while (1)
    {
      v35 = v34;
      v36 = *v34;
      if (!*v34)
      {
        break;
      }

      ++v34;
      if (v36 == 58)
      {
        *v35 = 0;
        break;
      }
    }

    v37 = getent(v74, &v72, a3, a4, v33, (v7 + 1));
    if (!v37)
    {
      v39 = v33 - 3;
      v40 = v33 - 3 - v34;
      goto LABEL_49;
    }

    v38 = v37;
    if (v37 <= -2)
    {
      break;
    }

    if (v37 == -1)
    {
      *(v34 - 1) = 58;
      v33 = cgetcap(v34 - 1, "tc", 61);
      v6 = 1;
      if (!v33)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v39 = v33 - 3;
      v40 = v33 - 3 - v34;
      if (v37 == 1)
      {
        LODWORD(v6) = 1;
      }

LABEL_49:
      v41 = v74[0];
      do
      {
        v42 = *v41;
        if (!*v41)
        {
          break;
        }

        ++v41;
      }

      while (v42 != 58);
      v43 = v72 + LODWORD(v74[0]) - v41;
      v44 = &v41[v43];
      if (*(v44 - 1) != 58)
      {
        *v44 = 58;
        ++v43;
      }

      v66 = v43 + v40;
      if ((v15 - v31) <= v66)
      {
        v65 = v31;
        v45 = v39;
        v46 = v15 - v13 + v43 + v40 + 1024;
        v47 = reallocf(v13, v46);
        if (!v47)
        {
          *__error() = 12;
          if (!v70)
          {
            close_NOCANCEL();
          }

          v38 = 4294967294;
          v13 = v74[0];
          goto LABEL_70;
        }

        v48 = (v45 - v13);
        v15 = &v47[v46];
        v31 = &v47[v65 - v13];
        v39 = &v47[v48];
        LODWORD(v34) = v47 + v34 - v13;
        v13 = v47;
      }

      v49 = &v39[v43];
      v50 = v34;
      v51 = v39;
      j__mkostemp(v49, v50);
      j__mkostemp(v51, v41);
      v31 += v66;
      free(v74[0]);
      v33 = cgetcap(v49 - 1, "tc", 61);
      v7 = a6;
      if (!v33)
      {
        v6 = v6 != 0;
        goto LABEL_60;
      }
    }
  }

  if (!v70)
  {
    close_NOCANCEL();
  }

LABEL_70:
  free(v13);
  return v38;
}

int cgetmatch(const char *a1, const char *a2)
{
  if (a2 && *a2)
  {
LABEL_3:
    v2 = a2;
    while (1)
    {
      v3 = *v2;
      if (!*v2)
      {
        break;
      }

      v4 = *a1++;
      ++v2;
      if (v4 != v3)
      {
        goto LABEL_10;
      }
    }

    v5 = *a1;
    if (!*a1 || v5 == 58 || v5 == 124)
    {
      return 0;
    }

LABEL_10:
    --a1;
    while (1)
    {
      v6 = *a1;
      if (!*a1 || v6 == 58)
      {
        break;
      }

      ++a1;
      if (v6 == 124)
      {
        goto LABEL_3;
      }
    }
  }

  return -1;
}

int cgetfirst(char **a1, char **a2)
{
  if (pfp)
  {
    fclose(pfp);
    pfp = 0;
  }

  dbp = 0;
  gottoprec = 0;
  slash = 0;

  return cgetnext(a1, a2);
}

int cgetclose(void)
{
  if (pfp)
  {
    fclose(pfp);
    pfp = 0;
  }

  dbp = 0;
  gottoprec = 0;
  slash = 0;
  return 0;
}

int cgetnext(char **a1, char **a2)
{
  v29 = 0;
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

  v7 = dbp;
  if (!dbp)
  {
    dbp = a2;
    v7 = a2;
  }

  v8 = pfp;
  if (pfp || (v8 = fopen(*v7, "r"), (pfp = v8) != 0))
  {
    v28 = 0;
    v9 = toprec;
    if (toprec)
    {
      v10 = gottoprec == 0;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
      if (v6 == -1)
      {
        v11 = &__global_locale;
      }

      else
      {
        v11 = v6;
      }

      do
      {
        v9 = fgetln(v8, &v29);
        v8 = pfp;
        if (v9 || !pfp)
        {
          v13 = 0;
          v9[v29 - 1] = 0;
          if (v29 != 1)
          {
            if (*v9 < 0)
            {
              runetype = (*(v11[166] + 120) + 60);
            }

            else
            {
              runetype = _DefaultRuneLocale.__runetype;
            }

            v15 = *v9;
            v16 = runetype[*v9] & 0x4000;
            if (v15 != 58 && v16 == 0 && v15 != 35 && slash == 0)
            {
              slash = v9[v29 - 2] == 92;
              goto LABEL_39;
            }

            v13 = v9[v29 - 2] == 92;
          }

          slash = v13;
        }

        else
        {
          if (ferror(pfp))
          {
LABEL_65:
            v26 = *__error();
            fclose(pfp);
            pfp = 0;
            dbp = 0;
            gottoprec = 0;
            slash = 0;
            *__error() = v26;
            goto LABEL_66;
          }

          fclose(v8);
          pfp = 0;
          v12 = *(dbp + 8);
          dbp += 8;
          if (!v12)
          {
            dbp = 0;
            gottoprec = 0;
            goto LABEL_68;
          }

          v8 = fopen(v12, "r");
          pfp = v8;
          if (!v8)
          {
            dbp = 0;
            gottoprec = 0;
            LODWORD(v12) = -1;
LABEL_68:
            slash = 0;
            return v12;
          }
        }

        v9 = toprec;
      }

      while (!toprec || (gottoprec & 1) != 0);
    }

    gottoprec = 1;
LABEL_39:
    v19 = v30;
    while (1)
    {
      while (1)
      {
        v20 = *v9;
        if (!*v9 || v20 == 92)
        {
          break;
        }

        if (v20 == 58)
        {
          v23 = 0;
          *v19 = 58;
          while (1)
          {
            v24 = v30[v23];
            if (!v30[v23] || v24 == 58 || v24 == 124)
            {
              break;
            }

            v31[v23++] = v24;
          }

          v31[v23] = 0;
          v25 = getent(a1, &v28, a2, 0xFFFFFFFFLL, v31, 0);
          if ((v25 + 3) <= 1)
          {
            if (pfp)
            {
              fclose(pfp);
              pfp = 0;
            }

            dbp = 0;
            gottoprec = 0;
            slash = 0;
          }

          LODWORD(v12) = v25 + 1;
          return v12;
        }

        *v19++ = v20;
        ++v9;
      }

      v9 = fgetln(pfp, &v29);
      v21 = pfp;
      if (!v9 && pfp != 0)
      {
        break;
      }

      v9[v29 - 1] = 0;
    }

    if (ferror(pfp))
    {
      goto LABEL_65;
    }

    fclose(v21);
    pfp = 0;
    dbp = 0;
    gottoprec = 0;
  }

  else
  {
    dbp = 0;
    gottoprec = 0;
  }

  slash = 0;
LABEL_66:
  LODWORD(v12) = -1;
  return v12;
}

int cgetstr(char *a1, const char *a2, char **a3)
{
  v4 = cgetcap(a1, a2, 61);
  if (!v4)
  {
    return -1;
  }

  v5 = v4;
  v6 = malloc_type_malloc(0x64uLL, 0x818C4A9CuLL);
  if (v6)
  {
    v7 = v6;
LABEL_4:
    v8 = 100;
    while (1)
    {
      v9 = *v5;
      if (v9 <= 0x5D)
      {
        break;
      }

      if (v9 != 94)
      {
        goto LABEL_21;
      }

      v9 = v5[1];
      if (v9 == 63)
      {
        *v7 = 127;
        v5 += 2;
        goto LABEL_32;
      }

      if (!v5[1] || v9 == 58)
      {
LABEL_59:
        *v7 = 0;
        v16 = v7 - v6;
        v17 = v16 + 1;
        if (v8 == 1 || (v6 = reallocf(v6, v16 + 1)) != 0)
        {
          v15 = v17 - 1;
          *a3 = v6;
          return v15;
        }

        return -2;
      }

      v5 += 2;
      LOBYTE(v9) = v9 & 0x1F;
LABEL_22:
      *v7 = v9;
LABEL_32:
      ++v7;
      if (!--v8)
      {
        v14 = v7 - v6;
        v6 = reallocf(v6, v7 - v6 + 100);
        v7 = &v6[v14];
        v15 = -2;
        if (v6)
        {
          goto LABEL_4;
        }

        return v15;
      }
    }

    if (v9 == 92)
    {
      v9 = v5[1];
      if (!v5[1] || v9 == 58)
      {
        goto LABEL_59;
      }

      if ((v9 & 0xF8) == 0x30)
      {
        v10 = 0;
        v11 = (v5 + 4);
        v12 = -2;
        ++v5;
        while (1)
        {
          v10 = v9 + 8 * v10 - 48;
          if (!v12)
          {
            break;
          }

          v13 = *++v5;
          LOBYTE(v9) = v13;
          ++v12;
          if ((v13 & 0xF8) != 0x30)
          {
            goto LABEL_31;
          }
        }

        v5 = v11;
LABEL_31:
        *v7 = v10;
        goto LABEL_32;
      }

      v5 += 2;
      if (v9 > 97)
      {
        if (v9 <= 101)
        {
          switch(v9)
          {
            case 'b':
LABEL_55:
              *v7 = 8;
              goto LABEL_32;
            case 'c':
LABEL_56:
              *v7 = 58;
              goto LABEL_32;
            case 'e':
LABEL_46:
              *v7 = 27;
              goto LABEL_32;
          }
        }

        else if (v9 > 113)
        {
          if (v9 == 114)
          {
LABEL_54:
            *v7 = 13;
            goto LABEL_32;
          }

          if (v9 == 116)
          {
LABEL_52:
            *v7 = 9;
            goto LABEL_32;
          }
        }

        else
        {
          if (v9 == 102)
          {
LABEL_53:
            *v7 = 12;
            goto LABEL_32;
          }

          if (v9 == 110)
          {
LABEL_38:
            *v7 = 10;
            goto LABEL_32;
          }
        }
      }

      else if (v9 <= 69)
      {
        switch(v9)
        {
          case 'B':
            goto LABEL_55;
          case 'C':
            goto LABEL_56;
          case 'E':
            goto LABEL_46;
        }
      }

      else if (v9 > 81)
      {
        if (v9 == 82)
        {
          goto LABEL_54;
        }

        if (v9 == 84)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (v9 == 70)
        {
          goto LABEL_53;
        }

        if (v9 == 78)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_22;
    }

    if (!*v5 || v9 == 58)
    {
      goto LABEL_59;
    }

LABEL_21:
    ++v5;
    goto LABEL_22;
  }

  *__error() = 12;
  return -2;
}

int cgetustr(char *a1, const char *a2, char **a3)
{
  v4 = cgetcap(a1, a2, 61);
  if (!v4)
  {
    return -1;
  }

  v5 = v4;
  v6 = malloc_type_malloc(0x64uLL, 0x6FC78392uLL);
  if (v6)
  {
    v7 = v6;
    v8 = v6;
LABEL_4:
    v9 = 0;
    while (1)
    {
      v10 = v5[v9];
      if (!v5[v9] || v10 == 58)
      {
        break;
      }

      v7[v9++] = v10;
      if (v9 == 100)
      {
        v11 = v7 - v8 + v9;
        v8 = reallocf(v8, v11 + 100);
        v7 = &v8[v11];
        v5 += v9;
        result = -2;
        if (v8)
        {
          goto LABEL_4;
        }

        return result;
      }
    }

    v7[v9] = 0;
    v13 = v8;
    if (v9 == 99 || (v13 = reallocf(v8, v7 - v8 + v9 + 1)) != 0)
    {
      result = v7 - v8 + v9;
      *a3 = v13;
      return result;
    }
  }

  else
  {
    *__error() = 12;
  }

  return -2;
}

int cgetnum(char *a1, const char *a2, uint64_t *a3)
{
  v4 = cgetcap(a1, a2, 35);
  if (!v4)
  {
    return -1;
  }

  if (*v4 == 48)
  {
    v5 = v4 + 2;
    v6 = *++v4;
    v7 = (v6 | 0x20) == 120;
    if ((v6 | 0x20) == 0x78)
    {
      v8 = 16;
    }

    else
    {
      v8 = 8;
    }

    if (v7)
    {
      v4 = v5;
    }
  }

  else
  {
    v8 = 10;
  }

  v10 = 0;
  while (1)
  {
    v11 = *v4;
    v12 = v11 - 48;
    if ((v11 - 48) >= 0xA)
    {
      if ((v11 - 97) > 5)
      {
        if ((v11 - 65) > 5)
        {
          break;
        }

        v12 = v11 - 55;
      }

      else
      {
        v12 = v11 - 87;
      }
    }

    if (v8 <= v12)
    {
      break;
    }

    v10 = v10 * v8 + v12;
    ++v4;
  }

  result = 0;
  *a3 = v10;
  return result;
}

char *getlogin(void)
{
  pthread_mutex_lock(&__logname_mutex);
  v0 = getlogin_basic(&v2);
  pthread_mutex_unlock(&__logname_mutex);
  return v0;
}

_BYTE *getlogin_basic(int *a1)
{
  result = __logname;
  if (!__logname)
  {
    result = malloc_type_calloc(1uLL, 0xFFuLL, 0x10CAF847uLL);
    __logname = result;
    if (!result)
    {
      v3 = 12;
LABEL_11:
      *a1 = v3;
      return result;
    }
  }

  if (*result)
  {
    goto LABEL_6;
  }

  if ((__getlogin() & 0x80000000) != 0)
  {
    v4 = __error();
    result = 0;
    v3 = *v4;
    goto LABEL_11;
  }

  result = __logname;
LABEL_6:
  *a1 = 0;
  if (!*result)
  {
    return 0;
  }

  return result;
}

int getlogin_r(char *a1, size_t a2)
{
  v6 = 0;
  pthread_mutex_lock(&__logname_mutex);
  getlogin_basic(&v6);
  v4 = v6;
  if (!v6)
  {
    if (MEMORY[0x193AD6A30](a1, __logname, a2) <= a2)
    {
      v4 = 0;
    }

    else
    {
      v4 = 34;
    }
  }

  pthread_mutex_unlock(&__logname_mutex);
  return v4;
}

int getmntinfo(statfs **a1, int a2)
{
  result = getmntinfo_internal(&getmntinfo_vars, a2);
  *a1 = getmntinfo_vars;
  return result;
}

int getpeereid(int a1, uid_t *a2, gid_t *a3)
{
  memset(v8, 0, 76);
  v7 = 76;
  result = getsockopt(a1, 0, 1, v8, &v7);
  if (!result)
  {
    if (LODWORD(v8[0]))
    {
      *__error() = 22;
      return -1;
    }

    else
    {
      result = 0;
      v6 = HIDWORD(v8[0]);
      *a2 = DWORD1(v8[0]);
      *a3 = v6;
    }
  }

  return result;
}

int glob_b(const char *a1, int a2, void *a3, glob_t *a4)
{
  a4->gl_flags = a2 & 0x7FFFFEFF | 0x80000000;
  a4->gl_errfunc = a3;
  return __glob(a1, a4);
}

uint64_t globexp1(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v6 = v5;
  v7 = v4;
  v8 = v3;
  v9 = v2;
  v10 = 0;
  do
  {
    v11 = *&v2[v10];
    if (v11 == 123)
    {
      if ((*(v3 + 25) & 0x10) != 0)
      {
        v13 = (*v4)++;
        if (v13 >= 0x80)
        {
          *__error() = 7;
          return 0xFFFFFFFFLL;
        }
      }

      v14 = v34;
      if (v10)
      {
        j__mkdtempat_np(v34, v2);
        v14 = &v34[v10];
      }

      v15 = 0;
      *v14 = 0;
      v16 = (v9 + v10 + 8);
      for (i = v16; ; ++i)
      {
        v18 = *i;
        if (*i <= 122)
        {
          if (v18 == 91)
          {
            v19 = i;
            do
            {
              v21 = v19[1];
              ++v19;
              v20 = v21;
            }

            while (v21 != 93 && v20 != 0);
            if (v20)
            {
              i = v19;
            }
          }

          else if (!v18)
          {
            return glob0(v9, v8);
          }
        }

        else if (v18 == 123)
        {
          ++v15;
        }

        else if (v18 == 125)
        {
          if (!v15)
          {
            if (v16 > i)
            {
              return 0;
            }

            v23 = 0;
            v24 = v16;
            while (2)
            {
              v25 = *v24;
              if (*v24 > 122)
              {
                if (v25 == 123)
                {
                  ++v23;
                  goto LABEL_59;
                }

                if (v25 != 125)
                {
                  goto LABEL_59;
                }

                if (v23)
                {
                  --v23;
                  goto LABEL_59;
                }
              }

              else
              {
                if (v25 != 44)
                {
                  if (v25 == 91)
                  {
                    v26 = v24;
                    do
                    {
                      v28 = v26[1];
                      ++v26;
                      v27 = v28;
                    }

                    while (v28 != 93 && v27 != 0);
                    if (v27)
                    {
                      v24 = v26;
                    }
                  }

LABEL_59:
                  if (++v24 > i)
                  {
                    return 0;
                  }

                  continue;
                }

                if (v23)
                {
                  goto LABEL_59;
                }
              }

              break;
            }

            v30 = v14;
            if (v16 < v24)
            {
              v30 = v14;
              do
              {
                v31 = *v16++;
                *v30++ = v31;
              }

              while (v16 < v24);
            }

            v32 = i + 1;
            do
            {
              v33 = *v32++;
              *v30++ = v33;
            }

            while (v33);
            result = globexp1(v34, v8, v7, v6);
            if (result)
            {
              return result;
            }

            v16 = v24 + 1;
            goto LABEL_59;
          }

          --v15;
        }
      }
    }

    v10 += 8;
  }

  while (v11);

  return glob0(v2, v3);
}

uint64_t g_stat(__int32 *a1, stat *a2, uint64_t a3, _xlocale *a4)
{
  if (__gl_g_Ctoc(a1, v7, 0x405uLL, a4))
  {
    *__error() = 63;
    return 0xFFFFFFFFLL;
  }

  else if ((*(a3 + 24) & 0x40) != 0)
  {
    return (*(a3 + 80))(v7, a2);
  }

  else
  {
    return stat(v7, a2);
  }
}

uint64_t err_aborted(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 24) & 0x80000000) != 0)
  {
    v7 = *(a1 + 40);
    v8 = __error();
    if ((*(v7 + 16))(v7, a2, *v8))
    {
      return 4294967294;
    }
  }

  v4 = *(a1 + 40);
  if (v4 && (v5 = __error(), v4(a2, *v5)))
  {
    return 4294967294;
  }

  else
  {
    return (*(a1 + 24) << 29 >> 31) & 0xFFFFFFFE;
  }
}

uint64_t jrand48(unsigned __int16 a1[3])
{
  v1 = _rand48_add + (*a1 | (a1[2] << 32)) * _rand48_mult;
  *a1 = _rand48_add + *a1 * _rand48_mult;
  a1[1] = WORD1(v1);
  a1[2] = WORD2(v1);
  return (v1 >> 16);
}

void lcong48(unsigned __int16 a1[7])
{
  _rand48_seed = *a1 | (a1[2] << 32);
  _rand48_mult = *(a1 + 3) | (a1[5] << 32);
  _rand48_add = a1[6];
}

uint64_t lockf_NOCANCEL(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (a2 <= 1)
    {
      return __fcntl_nocancel();
    }

    goto LABEL_9;
  }

  if (a2 != 2)
  {
    if (a2 == 3)
    {
      result = __fcntl_nocancel();
      if (result == -1)
      {
        return result;
      }

      if (!getpid())
      {
        return 0;
      }

      v3 = __error();
      v4 = 35;
LABEL_10:
      *v3 = v4;
      return 0xFFFFFFFFLL;
    }

LABEL_9:
    v3 = __error();
    v4 = 22;
    goto LABEL_10;
  }

  return __fcntl_nocancel();
}

int nice(int a1)
{
  *__error() = 0;
  v2 = getpriority(0, 0);
  if (v2 == -1 && *__error())
  {
    return -1;
  }

  if (v2 + a1 <= 19)
  {
    v3 = a1;
  }

  else
  {
    v3 = 19 - v2;
  }

  if (setpriority(0, 0, v3 + v2) == -1)
  {
    if (*__error() == 13)
    {
      *__error() = 1;
    }

    return -1;
  }

  return getpriority(0, 0);
}

uint64_t nrand48(unsigned __int16 a1[3])
{
  v1 = _rand48_add + (*a1 | (a1[2] << 32)) * _rand48_mult;
  *a1 = _rand48_add + *a1 * _rand48_mult;
  a1[1] = WORD1(v1);
  a1[2] = WORD2(v1);
  return (v1 >> 17) & 0x7FFFFFFF;
}

uint64_t _filldir(uint64_t a1, int a2)
{
  v4 = getpagesize();
  if ((v4 & 0x3FF) != 0)
  {
    v5 = 1024;
  }

  else
  {
    v5 = v4;
  }

  v6 = openat_NOCANCEL();
  if (v6 == -1)
  {
    return 0;
  }

  v7 = v6;
  if (!a2 || (v8 = lseek(*a1, 0, 1), v8 != -1) && lseek(v7, v8, 0) != -1)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    while (1)
    {
      if (v12 > 1023)
      {
        v14 = v10;
      }

      else
      {
        v13 = reallocf(v9, v11 + v5);
        if (!v13)
        {
          break;
        }

        v9 = v13;
        v14 = &v13[v11 - v12];
        v11 += v5;
        v12 += v5;
      }

      v15 = __getdirentries64();
      if (v15 < 0)
      {
        break;
      }

      v10 = &v14[v15 & 0x7FFFFFFF];
      v12 -= v15;
      if (!v15)
      {
        close_NOCANCEL();
        v16 = 0;
        *(a1 + 24) = v9;
        while (1)
        {
          if (v9 >= v14)
          {
            v17 = 0;
            v18 = v9;
          }

          else
          {
            v17 = 0;
            v18 = v9;
            do
            {
              if ((v18 & 3) != 0)
              {
                break;
              }

              v19 = *(v18 + 8);
              if (!*(v18 + 8) || v14 + 1 - v18 < v19)
              {
                break;
              }

              if (*v18)
              {
                if (v16)
                {
                  v16[v17] = v18;
                }

                ++v17;
              }

              v18 += v19;
            }

            while (v18 < v14);
          }

          if (v16)
          {
            break;
          }

          v16 = malloc_type_malloc(8 * v17 + 8, 0x2004093837F09uLL);
          if (!v16)
          {
            goto LABEL_45;
          }
        }

        mergesort(v16, v17, 8uLL, opendir_compar);
        v16[v17] = 0;
        v26 = *v16;
        if (*v16)
        {
          v27 = 0;
          v28 = v16 + 1;
          do
          {
            v29 = v27;
            v27 = v26;
            if (v29)
            {
              v30 = j__strncasecmp_l((v26 + 21), (v29 + 21), v24, v25);
              v27 = v26;
              if (!v30)
              {
                *v26 = 0;
                v27 = v29;
              }
            }

            if (*(v26 + 20) == 14 && (*(a1 + 56) & 1) != 0)
            {
              *v26 = 0;
            }

            v31 = *v28++;
            v26 = v31;
          }

          while (v31);
        }

        free(v16);
LABEL_45:
        *(a1 + 32) = v11;
        *(a1 + 16) = &v18[-*(a1 + 24)];
        return 1;
      }
    }
  }

  v21 = *__error();
  close_NOCANCEL();
  v22 = __error();
  result = 0;
  *v22 = v21;
  return result;
}

uint64_t pause_NOCANCEL()
{
  v1 = 0;
  sigprocmask(0, 0, &v1);
  return sigsuspend_NOCANCEL();
}

FILE *__cdecl popen(const char *a1, const char *a2)
{
  if (off_1EAC9EA80)
  {
    (off_1EAC9EA80)(a1);
    if (off_1EAC9EA80)
    {
      (off_1EAC9EA80)(a2);
    }
  }

  v18 = 0;
  *__argv = 0u;
  v20 = 0u;
  v17 = 0;
  if (!a2)
  {
    goto LABEL_10;
  }

  v4 = *a2;
  if (v4 == 119)
  {
    goto LABEL_48;
  }

  if (v4 != 114)
  {
LABEL_10:
    v5 = 0;
    *__error() = 22;
    return v5;
  }

  if (a2[1] != 43 || a2[2])
  {
LABEL_48:
    if (a2[1])
    {
      goto LABEL_10;
    }

    if ((pipe(v21) & 0x80000000) == 0)
    {
      v7 = 0;
      goto LABEL_16;
    }

    return 0;
  }

  v7 = 1;
  if (socketpair(1, 1, 0, v21) < 0)
  {
    return 0;
  }

  a2 = "r+";
LABEL_16:
  if (*a2 == 114)
  {
    v5 = fdopen(v21[0], a2);
    if (v5)
    {
      goto LABEL_18;
    }

LABEL_22:
    close_NOCANCEL();
    close_NOCANCEL();
    return v5;
  }

  v5 = fdopen(v21[1], a2);
  if (!v5)
  {
    goto LABEL_22;
  }

LABEL_18:
  v8 = malloc_type_malloc(0x18uLL, 0x102004062D53EE8uLL);
  if (!v8)
  {
    fclose(v5);
    close_NOCANCEL();
    return 0;
  }

  v9 = v8;
  v10 = posix_spawn_file_actions_init(&v17);
  if (v10)
  {
    v11 = v10;
    fclose(v5);
    close_NOCANCEL();
    free(v9);
    v5 = 0;
    *__error() = v11;
  }

  else
  {
    if (*a2 == 114)
    {
      posix_spawn_file_actions_addclose(&v17, v21[0]);
      if (v21[1] != 1)
      {
        posix_spawn_file_actions_adddup2(&v17, v21[1], 1);
        posix_spawn_file_actions_addclose(&v17, v21[1]);
      }

      if (v7)
      {
        posix_spawn_file_actions_adddup2(&v17, 1, 0);
      }
    }

    else
    {
      if (v21[0])
      {
        posix_spawn_file_actions_adddup2(&v17, v21[0], 0);
        posix_spawn_file_actions_addclose(&v17, v21[0]);
      }

      posix_spawn_file_actions_addclose(&v17, v21[1]);
    }

    pthread_mutex_lock(&__popen_pidlist_mutex);
    for (i = __popen_pidlist; i; i = *i)
    {
      posix_spawn_file_actions_addclose(&v17, *(i + 16));
    }

    __argv[0] = "sh";
    __argv[1] = "-c";
    v20 = a1;
    v13 = _NSGetEnviron();
    v14 = posix_spawn(&v18, "/bin/sh", &v17, 0, __argv, *v13);
    pthread_mutex_unlock(&__popen_pidlist_mutex);
    posix_spawn_file_actions_destroy(&v17);
    if (v14)
    {
      if (v14 == 35 || v14 == 12)
      {
        fclose(v5);
        close_NOCANCEL();
        free(v9);
        v5 = 0;
        *__error() = v14;
        return v5;
      }

      v18 = -1;
    }

    if (*a2 == 114)
    {
      v16 = v21[0];
    }

    else
    {
      v16 = v21[1];
    }

    *(v9 + 4) = v16;
    close_NOCANCEL();
    v9[1] = v5;
    *(v9 + 5) = v18;
    pthread_mutex_lock(&__popen_pidlist_mutex);
    *v9 = __popen_pidlist;
    __popen_pidlist = v9;
    pthread_mutex_unlock(&__popen_pidlist_mutex);
    fwide(v5, -1);
  }

  return v5;
}

int pclose(FILE *a1)
{
  if (off_1EAC9EA78)
  {
    (off_1EAC9EA78)(a1, 152);
  }

  pthread_mutex_lock(&__popen_pidlist_mutex);
  v2 = 0;
  v3 = &__popen_pidlist;
  v4 = &__popen_pidlist;
  do
  {
    v4 = *v4;
    if (!v4)
    {
      pthread_mutex_unlock(&__popen_pidlist_mutex);
      return -1;
    }

    v5 = v2;
    v2 = v4;
  }

  while (*(v4 + 1) != a1);
  if (v5)
  {
    v3 = v5;
  }

  *v3 = **v3;
  pthread_mutex_unlock(&__popen_pidlist_mutex);
  fclose(a1);
  if (v4[5] < 0)
  {
    free(v4);
    return 32512;
  }

  else
  {
    v8 = 0;
    do
    {
      v6 = wait4(v4[5], &v8, 0, 0);
    }

    while (v6 == -1 && *__error() == 4);
    free(v4);
    if (v6 == -1)
    {
      return -1;
    }

    else
    {
      return v8;
    }
  }
}

void psignal(int a1, const char *a2)
{
  if (a1 > 0x1F)
  {
    v3 = "Unknown signal";
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v3 = sys_siglist[a1];
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  if (*a2)
  {
    j__strsignal_r(a2, a2, v2);
    write_NOCANCEL();
    write_NOCANCEL();
  }

LABEL_7:
  j__strsignal_r(v3, a2, v2);
  write_NOCANCEL();

  write_NOCANCEL();
}

char *__cdecl readpassphrase(const char *a1, char *a2, size_t a3, int a4)
{
  __sig = a1;
  memset(&v44, 0, sizeof(v44));
  memset(&v43[1], 0, 72);
  v42.__sigaction_u.__sa_handler = 0;
  *&v42.sa_mask = 0;
  v41.__sigaction_u.__sa_handler = 0;
  *&v41.sa_mask = 0;
  v40.__sigaction_u.__sa_handler = 0;
  *&v40.sa_mask = 0;
  v39.__sigaction_u.__sa_handler = 0;
  *&v39.sa_mask = 0;
  v38.__sigaction_u.__sa_handler = 0;
  *&v38.sa_mask = 0;
  v37.__sigaction_u.__sa_handler = 0;
  *&v37.sa_mask = 0;
  v36.__sigaction_u.__sa_handler = 0;
  *&v36.sa_mask = 0;
  v35.__sigaction_u.__sa_handler = 0;
  *&v35.sa_mask = 0;
  v34.__sigaction_u.__sa_handler = 0;
  *&v34.sa_mask = 0;
  v33.__sigaction_u.__sa_handler = 0;
  *&v33.sa_mask = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = *(StatusReg + 8 * __locale_key);
  if (!v5)
  {
    v5 = &__global_locale;
  }

  v30 = v5;
  v43[0] = 0;
  if (!a3)
  {
    v26 = __error();
    result = 0;
    v27 = 22;
    goto LABEL_70;
  }

  v6 = a4;
  v7 = 0;
  v8 = &a2[a3 - 1];
  do
  {
    do
    {
      signo[v7++] = 0;
    }

    while (v7 != 32);
    if ((v6 & 0x20) != 0)
    {
      goto LABEL_11;
    }

    v9 = open_NOCANCEL();
    if (v9 == -1)
    {
      if ((v6 & 2) == 0)
      {
LABEL_11:
        v11 = 0;
        v32 = 1;
        goto LABEL_12;
      }

      v26 = __error();
      result = 0;
      v27 = 25;
LABEL_70:
      *v26 = v27;
      return result;
    }

    v10 = v9;
    if (!tcgetattr(v9, &v43[1]))
    {
      v44 = *&v43[1];
      v12 = a2;
      if ((v6 & 1) == 0)
      {
        v44.c_lflag &= 0xFFFFFFFFFFFFFFE7;
      }

      if (v44.c_cc[18] != 255)
      {
        v44.c_cc[18] = -1;
      }

      tcsetattr(v10, 18, &v44);
      v32 = 0;
      v11 = v10;
      goto LABEL_13;
    }

    v32 = 0;
    v11 = v10;
LABEL_12:
    v12 = a2;
    memset(v44.c_cc, 0, 40);
    memset(&v44, 0, 24);
    v44.c_lflag = 8;
    memset(&v43[1], 0, 24);
    memset(&v43[33], 0, 40);
    *&v43[25] = 8;
LABEL_13:
    v42.__sigaction_u.__sa_handler = handler;
    *&v42.sa_mask = 0;
    sigaction(14, &v42, &v41);
    sigaction(1, &v42, &v39);
    sigaction(2, &v42, &v40);
    sigaction(13, &v42, &v33);
    sigaction(3, &v42, &v38);
    sigaction(15, &v42, &v37);
    sigaction(18, &v42, &v36);
    sigaction(21, &v42, &v35);
    sigaction(22, &v42, &v34);
    if ((v6 & 0x20) == 0)
    {
      j__strsignal_r(__sig, v13, v14);
      write_NOCANCEL();
    }

    while (1)
    {
      NOCANCEL = read_NOCANCEL();
      if (NOCANCEL != 1)
      {
        v20 = NOCANCEL;
        goto LABEL_40;
      }

      if (v43[0] == 10 || v43[0] == 13)
      {
        break;
      }

      if (v12 < v8)
      {
        if ((v6 & 0x10) != 0)
        {
          v17 = v43[0] & 0x7F;
          v43[0] &= ~0x80u;
        }

        else
        {
          v17 = v43[0];
          if ((v43[0] & 0x80) != 0)
          {
            LOWORD(v18) = ___runetype_l(v43[0], v30);
            goto LABEL_26;
          }
        }

        v18 = _DefaultRuneLocale.__runetype[v17];
LABEL_26:
        LOBYTE(v19) = v43[0];
        if ((v18 & 0x100) != 0)
        {
          if ((v6 & 4) != 0)
          {
            if ((v43[0] & 0x80000000) != 0)
            {
              LOBYTE(v19) = ___tolower_l(v43[0], v30);
            }

            else
            {
              v19 = _DefaultRuneLocale.__maplower[v43[0]];
            }

            v43[0] = v19;
          }

          if ((v6 & 8) != 0)
          {
            if ((v19 & 0x80) != 0)
            {
              LOBYTE(v19) = ___toupper_l(v19, v30);
            }

            else
            {
              v19 = _DefaultRuneLocale.__mapupper[v19];
            }

            v43[0] = v19;
          }
        }

        *v12++ = v19;
      }
    }

    v20 = 1;
LABEL_40:
    *v12 = 0;
    v29 = *__error();
    if ((v44.c_lflag & 8) == 0)
    {
      write_NOCANCEL();
    }

    if (j__mkdtemp(&v44))
    {
        ;
      }
    }

    sigaction(14, &v41, 0);
    sigaction(1, &v39, 0);
    sigaction(2, &v40, 0);
    sigaction(3, &v38, 0);
    sigaction(13, &v33, 0);
    sigaction(15, &v37, 0);
    sigaction(18, &v36, 0);
    sigaction(21, &v35, 0);
    sigaction(22, &v34, 0);
    if ((v32 & 1) == 0)
    {
      close_NOCANCEL();
    }

    v21 = 0;
    v22 = 0;
    do
    {
      if (signo[v21])
      {
        v23 = getpid();
        kill(v23, v21);
        v24 = ((1 << v21) & 0x640000) != 0 ? 1 : v22;
        if (v21 <= 0x16)
        {
          v22 = v24;
        }
      }

      ++v21;
    }

    while (v21 != 32);
    v7 = 0;
  }

  while (v22);
  if (v29)
  {
    *__error() = v29;
  }

  if (v20 == -1)
  {
    return 0;
  }

  else
  {
    return a2;
  }
}

char *__cdecl getpass(const char *a1)
{
  v2 = getpass_buf;
  if (getpass_buf || (result = malloc_type_malloc(0x81uLL, 0x1A68FF4FuLL), v2 = result, (getpass_buf = result) != 0))
  {
    v4 = readpassphrase(a1, v2, 0x81uLL, 0);
    result = getpass_buf;
    if (!v4)
    {
      *getpass_buf = 0;
    }
  }

  return result;
}

unsigned __int16 *__cdecl seed48(unsigned __int16 a1[3])
{
  seed48_sseed = _rand48_seed;
  word_1EAC9E914 = WORD2(_rand48_seed);
  _rand48_seed = *a1 | (a1[2] << 32);
  _rand48_mult = 0x5DEECE66DLL;
  _rand48_add = 11;
  return &seed48_sseed;
}

void seekdir(DIR *a1, uint64_t a2)
{
  pthread_mutex_lock(&a1->__dd_lock);
  _seekdir(a1, a2);

  pthread_mutex_unlock(&a1->__dd_lock);
}

int sethostname(const char *a1, int a2)
{
  v3 = 0xA00000001;
  if (sysctl(&v3, 2u, 0, 0, a1, a2) == -1)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

mode_t getmode(const void *a1, mode_t a2)
{
  v2 = a2 & 0x4049;
  for (i = a1 + 2; ; i += 2)
  {
    v4 = *(i - 2);
    if (v4 <= 0x66)
    {
      if (v4 == 43)
      {
        goto LABEL_7;
      }

      if (v4 == 45)
      {
        *&a2 = a2 & ~*i;
        continue;
      }

      if (v4 != 88)
      {
        return a2;
      }

      if (v2)
      {
LABEL_7:
        v5 = *i;
        goto LABEL_33;
      }

      continue;
    }

    if (v4 != 103)
    {
      break;
    }

    v6 = a2 >> 3;
LABEL_13:
    v7 = v6 & 7;
    if (*(i - 1))
    {
      if ((*(i - 1) & 2) != 0)
      {
        v8 = 7;
      }

      else
      {
        v8 = v6 & 7;
      }

      if ((*(i - 1) & 0x10) != 0)
      {
        *&a2 = a2 & ~(*i & (v8 << 6));
        if ((*(i - 1) & 4) != 0)
        {
LABEL_28:
          *&a2 = a2 & ~(*i & (8 * v8));
          if ((*(i - 1) & 8) == 0)
          {
            goto LABEL_21;
          }

LABEL_20:
          *&a2 = a2 & ~(*i & v8);
          goto LABEL_21;
        }
      }

      else if ((*(i - 1) & 4) != 0)
      {
        goto LABEL_28;
      }

      if ((*(i - 1) & 8) != 0)
      {
        goto LABEL_20;
      }
    }

LABEL_21:
    if ((*(i - 1) & 2) == 0)
    {
      continue;
    }

    if ((*(i - 1) & 0x10) != 0)
    {
      *&a2 = *i & (v7 << 6) | a2;
      if ((*(i - 1) & 4) != 0)
      {
LABEL_31:
        *&a2 = *i & (8 * v7) | a2;
        if ((*(i - 1) & 8) == 0)
        {
          continue;
        }

LABEL_32:
        v5 = (*i & v7);
LABEL_33:
        *&a2 = v5 | a2;
        continue;
      }
    }

    else if ((*(i - 1) & 4) != 0)
    {
      goto LABEL_31;
    }

    if ((*(i - 1) & 8) != 0)
    {
      goto LABEL_32;
    }
  }

  LOBYTE(v6) = a2;
  if (v4 == 111)
  {
    goto LABEL_13;
  }

  if (v4 == 117)
  {
    v6 = a2 >> 6;
    goto LABEL_13;
  }

  return a2;
}

void *__cdecl setmode(const char *a1)
{
  if (!*a1)
  {
    return 0;
  }

  v1 = a1;
  v32 = 0;
  v33 = -1;
  sigprocmask(1, &v33, &v32);
  v2 = umask(0);
  umask(v2);
  sigprocmask(3, &v32, 0);
  v3 = malloc_type_malloc(0x20uLL, 0x100004052888210uLL);
  v4 = v3;
  if (!v3)
  {
    return v4;
  }

  __endptr = 0;
  if (*v1 - 48 < 0xA)
  {
    v5 = strtol(v1, &__endptr, 8);
    if (!*__endptr && v5 < 0x1000)
    {
      *v4 = 45;
      *(v4 + 1) = 4095;
      v4[4] = 43;
      *(v4 + 3) = v5;
      v4[8] = 0;
      return v4;
    }

    v27 = v4;
    goto LABEL_90;
  }

  v6 = 0;
  v7 = (v3 + 24);
  v8 = ~v2;
  v31 = 8;
  v9 = v3;
  v29 = ~v2;
LABEL_8:
  v10 = 0;
  while (1)
  {
    v11 = *v1;
    if (v11 > 0x6E)
    {
      break;
    }

    if (v11 == 97)
    {
      v10 = 4095;
    }

    else
    {
      if (v11 != 103)
      {
        goto LABEL_19;
      }

      v10 |= 0x438u;
    }

LABEL_18:
    ++v1;
  }

  if (v11 == 111)
  {
    v10 |= 7u;
    goto LABEL_18;
  }

  if (v11 == 117)
  {
    v10 |= 0x9C0u;
    goto LABEL_18;
  }

LABEL_19:
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  v30 = v12;
  while (2)
  {
    if (v11 > 0x3Du || ((1 << v11) & 0x2000280000000000) == 0)
    {
      goto LABEL_88;
    }

    v13 = 0;
    v14 = v11;
    if (v11 == 61)
    {
      v6 = 0;
    }

LABEL_27:
    v15 = 0;
    while (2)
    {
      while (1)
      {
        v16 = v13;
        do
        {
          v13 = v16;
          v18 = *++v1;
          v17 = v18;
          v16 = 73;
        }

        while (v18 == 88);
        if (v17 <= 115)
        {
          break;
        }

        if (v17 <= 118)
        {
          if (v17 != 116)
          {
            if (v17 != 117)
            {
              goto LABEL_65;
            }

LABEL_48:
            if (v15)
            {
              if (v4 >= v7)
              {
                v20 = malloc_type_realloc(v9, 4 * (v31 + 4), 0x100004052888210uLL);
                if (!v20)
                {
                  goto LABEL_88;
                }

                v4 = &v20[v4 - v9];
                v7 = &v20[4 * v31 + 8];
                v9 = v20;
                v31 += 4;
                v8 = v29;
              }

              v4 = addcmd(v4, v14, v10, v15, v8);
            }

            if (v14 == 61)
            {
              v6 = 1;
            }

            if (v14 == 43 && v13)
            {
              if (v4 >= v7)
              {
                v21 = malloc_type_realloc(v9, 4 * (v31 + 4), 0x100004052888210uLL);
                if (!v21)
                {
                  goto LABEL_88;
                }

                v4 = &v21[v4 - v9];
                v7 = &v21[4 * v31 + 8];
                v9 = v21;
                v31 += 4;
              }

              *v4 = 88;
              *(v4 + 1) = v13 & v30;
              v4 += 4;
              v13 = 0;
            }

            if (v4 >= v7)
            {
              v22 = malloc_type_realloc(v9, 4 * (v31 + 4), 0x100004052888210uLL);
              if (!v22)
              {
                goto LABEL_88;
              }

              v4 = &v22[v4 - v9];
              v7 = &v22[4 * v31 + 8];
              v9 = v22;
              v31 += 4;
            }

            v4 = addcmd(v4, *v1, v10, v14, v8);
            goto LABEL_27;
          }

          v19 = v15 | 0x200;
LABEL_37:
          if (v10 - 1 >= 7)
          {
            v15 = v19;
          }

          continue;
        }

        if (v17 == 119)
        {
          v15 |= 0x92u;
        }

        else
        {
          if (v17 != 120)
          {
            goto LABEL_65;
          }

          v15 |= 0x49u;
        }
      }

      if (v17 > 113)
      {
        if (v17 == 114)
        {
          v15 |= 0x124u;
          continue;
        }

        v19 = v15 | 0xC00;
        goto LABEL_37;
      }

      break;
    }

    if (v17 == 103 || v17 == 111)
    {
      goto LABEL_48;
    }

LABEL_65:
    v24 = v14 != 61 || v6 != 0;
    if (v15 || !v24)
    {
      if (v14 == 61)
      {
        v6 = 1;
      }

      if (v4 >= v7)
      {
        v25 = malloc_type_realloc(v9, 4 * (v31 + 4), 0x100004052888210uLL);
        if (!v25)
        {
          goto LABEL_88;
        }

        v4 = &v25[v4 - v9];
        v7 = &v25[4 * v31 + 8];
        v9 = v25;
        v31 += 4;
        v8 = v29;
      }

      v4 = addcmd(v4, v14, v10, v15, v8);
      if (!v13)
      {
        goto LABEL_85;
      }

LABEL_81:
      if (v4 < v7)
      {
LABEL_84:
        *v4 = 88;
        *(v4 + 1) = v13 & v30;
        v4 += 4;
        goto LABEL_85;
      }

      v26 = malloc_type_realloc(v9, 4 * (v31 + 4), 0x100004052888210uLL);
      if (v26)
      {
        v4 = &v26[v4 - v9];
        v7 = &v26[4 * v31 + 8];
        v9 = v26;
        v31 += 4;
        goto LABEL_84;
      }

LABEL_88:
      v27 = v9;
LABEL_90:
      free(v27);
      return 0;
    }

    if (v13)
    {
      goto LABEL_81;
    }

LABEL_85:
    v11 = *v1;
    if (*v1)
    {
      if (v11 != 44)
      {
        continue;
      }

      ++v1;
      goto LABEL_8;
    }

    break;
  }

  *v4 = 0;
  _sm_compress_mode(v9);
  return v9;
}

uint64_t addcmd(uint64_t a1, int a2, unsigned int a3, int a4, __int16 a5)
{
  if (a2 <= 87)
  {
    if (a2 != 43 && a2 != 45)
    {
      if (a2 != 61)
      {
        return a1 + 4;
      }

      *a1 = 45;
      if (a3)
      {
        v5 = a3;
      }

      else
      {
        v5 = 4095;
      }

      *(a1 + 2) = v5;
      a1 += 4;
      LOBYTE(a2) = 43;
    }

    goto LABEL_13;
  }

  if (a2 > 110)
  {
    if (a2 != 111 && a2 != 117)
    {
      return a1 + 4;
    }

    goto LABEL_19;
  }

  if (a2 == 88)
  {
LABEL_13:
    *a1 = a2;
    if (a3)
    {
      v6 = a3;
    }

    else
    {
      v6 = a5;
    }

    *(a1 + 2) = v6 & a4;
    return a1 + 4;
  }

  if (a2 != 103)
  {
    return a1 + 4;
  }

LABEL_19:
  *a1 = a2;
  if (a3)
  {
    v7 = (a3 >> 4) & 0x10 | (a3 >> 3) & 4 | (8 * ((a3 >> 2) & 1));
  }

  else
  {
    LOBYTE(v7) = 28;
  }

  if (a3)
  {
    v8 = -1;
  }

  else
  {
    v8 = a5;
  }

  *(a1 + 1) = v7;
  *(a1 + 2) = v8;
  switch(a4)
  {
    case '=':
      v9 = v7 | 3;
      goto LABEL_31;
    case '-':
      v9 = v7 | 1;
      goto LABEL_31;
    case '+':
      v9 = v7 | 2;
LABEL_31:
      *(a1 + 1) = v9;
      break;
  }

  return a1 + 4;
}

unsigned __int8 *_sm_compress_mode(unsigned __int8 *result)
{
  v1 = result;
  do
  {
    while (1)
    {
      v2 = *v1;
      if ((v2 - 43) > 0x2D || ((1 << (v2 - 43)) & 0x200000000005) == 0)
      {
        break;
      }

      v4 = 0;
      v5 = 0;
      v6 = 0;
      while (1)
      {
        if (v2 == 43)
        {
          v7 = *(v1 + 1);
          v4 |= v7;
          v5 &= ~v7;
          goto LABEL_13;
        }

        if (v2 == 88)
        {
          v6 |= *(v1 + 1) & ~v4;
          goto LABEL_14;
        }

        if (v2 != 45)
        {
          break;
        }

        v7 = *(v1 + 1);
        v5 |= v7;
        v4 &= ~v7;
LABEL_13:
        v6 &= ~v7;
LABEL_14:
        v8 = v1[4];
        v1 += 4;
        v2 = v8;
      }

      if (v5)
      {
        *result = 45;
        *(result + 1) = v5;
        result += 4;
      }

      if (v4)
      {
        *result = 43;
        *(result + 1) = v4;
        result += 4;
      }

      if (v6)
      {
        *result = 88;
        *(result + 1) = v6;
        result += 4;
      }
    }

    v9 = *v1;
    v1 += 4;
    *result = v9;
    result += 4;
  }

  while (v2);
  return result;
}

void setprogname(const char *a1)
{
  v1 = a1;
  v2 = strrchr(a1, 47);
  if (v2)
  {
    v1 = v2 + 1;
  }

  *_NSGetProgname() = v1;
  MEMORY[0x193AD6A30](v7, v1, 33);
  *v6 = 0x3E00000001;
  v5 = j__strsignal_r(v7, v3, v4);
  sysctl(v6, 2u, 0, 0, v7, v5);
}

int siginterrupt(int a1, int a2)
{
  v8.__sigaction_u.__sa_handler = 0;
  *&v8.sa_mask = 0;
  result = sigaction(a1, 0, &v8);
  if ((result & 0x80000000) == 0)
  {
    v5 = 1 << (a1 - 1);
    if (a2)
    {
      if (a1 > 32)
      {
        v5 = 0;
      }

      _sigintr |= v5;
      v6 = v8.sa_flags & 0xFFFFFFFD;
    }

    else
    {
      if (a1 <= 32)
      {
        v7 = ~v5;
      }

      else
      {
        v7 = -1;
      }

      _sigintr &= v7;
      v6 = v8.sa_flags | 2;
    }

    v8.sa_flags = v6;
    return sigaction(a1, &v8, 0);
  }

  return result;
}

void srand48(uint64_t a1)
{
  _rand48_seed = (a1 << 16) | 0x330E;
  _rand48_mult = 0x5DEECE66DLL;
  _rand48_add = 11;
}

StringList *sl_init(void)
{
  v0 = malloc_type_malloc(0x18uLL, 0x1080040468F112EuLL);
  if (!v0)
  {
    sl_init_cold_1();
  }

  v1 = v0;
  *(v0 + 8) = xmmword_18E98A810;
  v2 = malloc_type_malloc(0xA0uLL, 0x10040436913F5uLL);
  v1->sl_str = v2;
  if (!v2)
  {
    sl_init_cold_1();
  }

  return v1;
}

int sl_add(StringList *a1, char *a2)
{
  sl_max = a1->sl_max;
  sl_cur = a1->sl_cur;
  sl_str = a1->sl_str;
  if (sl_cur == sl_max - 1)
  {
    v7 = sl_max + 20;
    a1->sl_max = v7;
    sl_str = reallocf(sl_str, 8 * v7);
    a1->sl_str = sl_str;
    if (!sl_str)
    {
      return -1;
    }

    sl_cur = a1->sl_cur;
  }

  v8 = 0;
  a1->sl_cur = sl_cur + 1;
  *(sl_str + sl_cur) = a2;
  return v8;
}

void sl_free(StringList *a1, int a2)
{
  if (a1)
  {
    sl_str = a1->sl_str;
    if (sl_str)
    {
      if (a2 && a1->sl_cur)
      {
        v4 = 0;
        do
        {
          free(a1->sl_str[v4++]);
        }

        while (v4 < a1->sl_cur);
        sl_str = a1->sl_str;
      }

      free(sl_str);
    }

    free(a1);
  }
}

char *__cdecl sl_find(StringList *a1, char *a2)
{
  sl_cur = a1->sl_cur;
  if (!sl_cur)
  {
    return 0;
  }

  for (i = a1->sl_str; ; ++i)
  {
    v7 = *i;
    if (!j__strncasecmp_l(*i, a2, v2, v3))
    {
      break;
    }

    if (!--sl_cur)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t telldir(DIR *a1)
{
  pthread_mutex_lock(&a1->__dd_lock);
  dd_td = a1->__dd_td;
  v3 = *dd_td;
  if (*dd_td)
  {
    v4 = *(dd_td + 2);
    while (v3[3] != v4 || v3[4] != a1->__dd_loc)
    {
      v3 = *v3;
      if (!v3)
      {
        goto LABEL_6;
      }
    }

    v8 = v3[2];
  }

  else
  {
LABEL_6:
    v5 = malloc_type_malloc(0x28uLL, 0x10A00404BF391D6uLL);
    if (v5)
    {
      v6 = a1->__dd_td;
      v7 = *(v6 + 8);
      v8 = *(v6 + 1);
      *(v6 + 1) = v8 + 1;
      v5[1] = v7;
      *(v5 + 4) = a1->__dd_loc;
      v9 = *v6;
      *v5 = *v6;
      if (v9)
      {
        *(v9 + 8) = v5;
      }

      *v6 = v5;
      *(v5 + 1) = v6;
    }

    else
    {
      v8 = -1;
    }
  }

  pthread_mutex_unlock(&a1->__dd_lock);
  return v8;
}

unint64_t _seekdir(unint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 128);
  while (1)
  {
    v3 = *v3;
    if (!v3)
    {
      break;
    }

    if (v3[2] == a2)
    {
      v4 = v3[3];
      v5 = v3[4];
      v6 = *(*(result + 128) + 16);
      if (v5 != *(result + 8) || v4 != v6)
      {
        if (v4 == v6)
        {
          if (!v5)
          {
            *(result + 56) |= 0x10u;
          }

          *(result + 8) = v5;
        }

        else
        {
          result = lseek(*result, v4, 0);
          *(*(v2 + 128) + 16) = v3[3];
          *(v2 + 8) = 0;
          *(v2 + 56) &= 0xFFFFFFCF;
          do
          {
            if (*(v2 + 8) >= v3[4])
            {
              break;
            }

            result = _readdir_unlocked(v2, 0);
          }

          while (result);
        }
      }

      return result;
    }
  }

  return result;
}

int tcsetattr(int a1, int a2, const termios *a3)
{
  c_ospeed = 0;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  if ((a2 & 0x10) != 0)
  {
    v3 = *&a3->c_cc[16];
    v9 = *a3->c_cc;
    v10 = v3;
    c_ospeed = a3->c_ospeed;
    v4 = *&a3->c_cflag;
    v7 = *&a3->c_iflag;
    *(&v8 + 1) = *(&v4 + 1);
    *&v8 = v4 | 1;
    a3 = &v7;
  }

  v5 = a2 & 0xFFFFFFEF;
  if ((a2 & 0xFFFFFFEF) == 2)
  {
    return ioctl(a1, 0x80487416uLL, a3);
  }

  if (v5 == 1)
  {
    return ioctl(a1, 0x80487415uLL, a3);
  }

  if (!v5)
  {
    return ioctl(a1, 0x80487414uLL, a3);
  }

  *__error() = 22;
  return -1;
}

int tcsetpgrp(int a1, pid_t a2)
{
  if (!isatty(a1))
  {
    return -1;
  }

  v5 = a2;
  return ioctl(a1, 0x80047476uLL, &v5);
}

pid_t tcgetpgrp(int a1)
{
  if (!isatty(a1))
  {
    return -1;
  }

  v3 = 0;
  if (ioctl(a1, 0x40047477uLL, &v3) < 0)
  {
    return -1;
  }

  else
  {
    return v3;
  }
}

int cfsetspeed(termios *a1, speed_t a2)
{
  a1->c_ispeed = a2;
  a1->c_ospeed = a2;
  return 0;
}

void cfmakeraw(termios *a1)
{
  v1 = a1->c_oflag & 0xFFFFFFFFFFFFFFFELL;
  a1->c_iflag = a1->c_iflag & 0xFFFFFFFFFFFFD800 | 1;
  a1->c_oflag = v1;
  v2 = a1->c_lflag & 0x5FBFFA61;
  a1->c_cflag = a1->c_cflag & 0xFFFFFFFFFFFFE4FFLL | 0xB00;
  a1->c_lflag = v2;
  *&a1->c_cc[16] = 1;
}

int tcsendbreak(int a1, int a2)
{
  result = ioctl(a1, 0x2000747BuLL, 0);
  if (result != -1)
  {
    select_NOCANCEL();
    if (ioctl(a1, 0x2000747AuLL, 0) == -1)
    {
      return -1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

int tcflush(int a1, int a2)
{
  switch(a2)
  {
    case 3:
      v2 = 3;
      goto LABEL_7;
    case 2:
      v2 = 2;
      goto LABEL_7;
    case 1:
      v2 = 1;
LABEL_7:
      v4 = v2;
      return ioctl(a1, 0x80047410uLL, &v4);
  }

  *__error() = 22;
  return -1;
}

int tcflow(int a1, int a2)
{
  if (a2 > 2)
  {
    if (a2 != 3)
    {
      if (a2 == 4)
      {
        return ioctl(a1, 0x20007481uLL, 0);
      }

      goto LABEL_8;
    }

    return ioctl(a1, 0x20007480uLL, 0);
  }

  else
  {
    if (a2 != 1)
    {
      if (a2 == 2)
      {
        return ioctl(a1, 0x2000746EuLL, 0);
      }

LABEL_8:
      *__error() = 22;
      return -1;
    }

    return ioctl(a1, 0x2000746FuLL, 0);
  }
}

clock_t times(tms *a1)
{
  memset(&v6, 0, sizeof(v6));
  if (getrusage(0, &v6) < 0)
  {
    return -1;
  }

  v2 = 100 * v6.ru_stime.tv_sec + v6.ru_stime.tv_usec / 10000;
  a1->tms_utime = 100 * v6.ru_utime.tv_sec + v6.ru_utime.tv_usec / 10000;
  a1->tms_stime = v2;
  if (getrusage(-1, &v6) < 0)
  {
    return -1;
  }

  v5.tv_sec = 0;
  *&v5.tv_usec = 0;
  v3 = 100 * v6.ru_stime.tv_sec + v6.ru_stime.tv_usec / 10000;
  a1->tms_cutime = 100 * v6.ru_utime.tv_sec + v6.ru_utime.tv_usec / 10000;
  a1->tms_cstime = v3;
  if (gettimeofday(&v5, 0))
  {
    return -1;
  }

  else
  {
    return 100 * v5.tv_sec + v5.tv_usec / 10000;
  }
}

char *__cdecl ttyname(int a1)
{
  if ((ttyname_init & 1) == 0)
  {
    pthread_mutex_lock(&ttyname_lock);
    if ((ttyname_init & 1) == 0)
    {
      ttyname_key = 1;
      if (pthread_key_init_np())
      {
        v2 = *__error();
        pthread_mutex_unlock(&ttyname_lock);
LABEL_20:
        v7 = __error();
        result = 0;
        *v7 = v2;
        return result;
      }

      ttyname_init = 1;
    }

    pthread_mutex_unlock(&ttyname_lock);
  }

  if (ttyname_key)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = pthread_getspecific(v3);
  if (!v4)
  {
    result = malloc_type_malloc(0x105uLL, 0x1000040274DC3F3uLL);
    if (!result)
    {
      return result;
    }

    v4 = result;
    v6 = ttyname_key ? 16 : 0;
    if (pthread_setspecific(v6, v4))
    {
      v2 = *__error();
      free(v4);
      goto LABEL_20;
    }
  }

  if (ttyname_r(a1, v4, 0x105uLL))
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

int ttyname_r(int a1, char *a2, size_t a3)
{
  memset(&v12, 0, sizeof(v12));
  if (fstat(a1, &v12) < 0)
  {
    return 9;
  }

  if (!isatty(a1) || (v12.st_mode & 0xF000) != 0x2000)
  {
    return 25;
  }

  v6 = 34;
  if (a3 >= 7)
  {
    MEMORY[0x193AD6A30](a2, "/dev/", a3);
    st_rdev = v12.st_rdev;
    v10 = j__strsignal_r(a2, v8, v9);
    if (devname_r(st_rdev, 0x2000u, &a2[v10], a3 - v10))
    {
      return 0;
    }

    else
    {
      return 34;
    }
  }

  return v6;
}

useconds_t ualarm(useconds_t a1, useconds_t a2)
{
  *(&v4.it_value.tv_usec + 1) = 0;
  memset(&v3, 0, sizeof(v3));
  v4.it_interval.tv_sec = a2 / 0xF4240uLL;
  *(&v4.it_interval.tv_usec + 1) = 0;
  v4.it_interval.tv_usec = a2 % 0xF4240;
  v4.it_value.tv_usec = a1 % 0xF4240;
  v4.it_value.tv_sec = a1 / 0xF4240uLL;
  if (setitimer(0, &v4, &v3))
  {
    return -1;
  }

  else
  {
    return v3.it_value.tv_usec + 1000000 * LODWORD(v3.it_value.tv_sec);
  }
}

uint64_t ulimit(int a1, ...)
{
  va_start(va, a1);
  v3 = va_arg(va, void);
  v2.rlim_cur = 0;
  v2.rlim_max = 0;
  if (a1 == 2)
  {
    v2.rlim_cur = v3 << 9;
    v2.rlim_max = v3 << 9;
    if (setrlimit(1, &v2) == -1)
    {
      return -1;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    if (a1 == 1)
    {
      if (getrlimit(1, &v2) != -1)
      {
        return v2.rlim_cur >> 9;
      }
    }

    else
    {
      *__error() = 22;
    }

    return -1;
  }
}

int unvis(char *a1, int a2, int *a3, int a4)
{
  if (!a1)
  {
    unvis_cold_2();
  }

  if (!a3)
  {
    unvis_cold_1();
  }

  v5 = *a3;
  if ((a4 & 0x1000) == 0)
  {
    v6 = a2;
    switch(*a3)
    {
      case 0u:
        *a1 = 0;
        if (a2 == 92 && (a4 & 0x800) == 0)
        {
          v8 = 1;
          goto LABEL_119;
        }

        if (a2 == 37 && (a4 & 0x80) != 0)
        {
          v8 = 8;
          goto LABEL_119;
        }

        if (a2 == 38 && (a4 & 0x400) != 0)
        {
          v8 = 13;
          goto LABEL_119;
        }

        if (a2 == 61 && (a4 & 0x200) != 0)
        {
          v8 = 10;
          goto LABEL_119;
        }

        *a1 = a2;
        return 1;
      case 1u:
        if (a2 <= 91)
        {
          if (a2 > 47)
          {
            if ((a2 - 48) < 8)
            {
              *a1 = a2 - 48;
              v8 = 5;
              goto LABEL_119;
            }

            if (a2 != 69)
            {
              if (a2 == 77)
              {
                *a1 = 0x80;
                v8 = 2;
                goto LABEL_119;
              }

              goto LABEL_127;
            }

            v13 = 27;
            goto LABEL_93;
          }

          if (a2 == 10 || a2 == 36)
          {
            *a3 = 0;
            return 3;
          }

LABEL_127:
          if (!isgraph(a2))
          {
            goto LABEL_87;
          }

          goto LABEL_128;
        }

        if (a2 <= 109)
        {
          if (a2 <= 96)
          {
            if (a2 == 92)
            {
LABEL_128:
              *a1 = v6;
              goto LABEL_94;
            }

            if (a2 == 94)
            {
              goto LABEL_34;
            }

            goto LABEL_127;
          }

          switch(a2)
          {
            case 'a':
              v13 = 7;
              break;
            case 'b':
              v13 = 8;
              break;
            case 'f':
              v13 = 12;
              break;
            default:
              goto LABEL_127;
          }
        }

        else if (a2 > 115)
        {
          switch(a2)
          {
            case 't':
              v13 = 9;
              break;
            case 'v':
              v13 = 11;
              break;
            case 'x':
              v8 = 7;
              goto LABEL_119;
            default:
              goto LABEL_127;
          }
        }

        else
        {
          switch(a2)
          {
            case 'n':
              v13 = 10;
              break;
            case 'r':
              v13 = 13;
              break;
            case 's':
              v13 = 32;
              break;
            default:
              goto LABEL_127;
          }
        }

LABEL_93:
        *a1 = v13;
        goto LABEL_94;
      case 2u:
        if (a2 == 45)
        {
          v8 = 3;
        }

        else
        {
          if (a2 != 94)
          {
            goto LABEL_87;
          }

LABEL_34:
          v8 = 4;
        }

        goto LABEL_119;
      case 3u:
        *a3 = 0;
        v15 = *a1 | a2;
        goto LABEL_50;
      case 4u:
        v12 = a2 & 0x1F;
        if (a2 == 63)
        {
          v12 = 127;
        }

        v13 = *a1 | v12;
        goto LABEL_93;
      case 5u:
        if ((a2 & 0xF8) != 0x30)
        {
          goto LABEL_56;
        }

        *a1 = a2 + 8 * *a1 - 48;
        v8 = 6;
        goto LABEL_119;
      case 6u:
        *a3 = 0;
        if ((a2 & 0xF8) != 0x30)
        {
          return 2;
        }

        v15 = a2 + 8 * *a1 - 48;
        goto LABEL_50;
      case 7u:
        v19 = a2;
        if ((_DefaultRuneLocale.__runetype[a2] & 0x10000) == 0)
        {
          goto LABEL_87;
        }

        goto LABEL_55;
      case 8u:
        v19 = a2;
LABEL_55:
        if ((_DefaultRuneLocale.__runetype[v19] & 0x10000) != 0)
        {
          v20 = v19 - 48;
          if ((v19 - 48) >= 0xA)
          {
            v20 = tolower(v19) - 87;
          }

          *a1 = v20;
          v8 = 9;
          goto LABEL_119;
        }

LABEL_56:
        *a3 = 0;
        return 2;
      case 9u:
        *a3 = 0;
        if ((_DefaultRuneLocale.__runetype[a2] & 0x10000) == 0)
        {
          return 2;
        }

        LOBYTE(v11) = a2 - 48;
        if (a2 - 48 >= 0xA)
        {
          v11 = tolower(a2) - 87;
        }

        goto LABEL_31;
      case 0xAu:
        if (a2 == 13 || a2 == 10)
        {
          v8 = 12;
          goto LABEL_119;
        }

        if ((_DefaultRuneLocale.__runetype[a2] & 0x10000) == 0)
        {
          goto LABEL_87;
        }

        v27 = a2 - 48;
        if (v27 >= 0xA && !isupper(a2))
        {
          goto LABEL_87;
        }

        v28 = v6 - 55;
        if (v27 < 0xA)
        {
          v28 = v27;
        }

        *a1 = v28;
        v8 = 11;
        goto LABEL_119;
      case 0xBu:
        if ((_DefaultRuneLocale.__runetype[a2] & 0x10000) == 0)
        {
          goto LABEL_87;
        }

        v10 = a2 - 48;
        if (v10 >= 0xA && !isupper(a2))
        {
          goto LABEL_87;
        }

        *a3 = 0;
        LOBYTE(v11) = v6 - 55;
        if (v10 < 0xA)
        {
          LOBYTE(v11) = v10;
        }

LABEL_31:
        v15 = v11 | (16 * *a1);
LABEL_50:
        *a1 = v15;
        return 1;
      case 0xCu:
        result = 3;
        if (a2 == 10 || a2 == 13)
        {
          return result;
        }

        if (a2 != 61)
        {
          goto LABEL_128;
        }

        *a3 = 10;
        return result;
      case 0xDu:
        *a1 = 0;
        if (a2 == 35)
        {
          v8 = 14;
          goto LABEL_119;
        }

        v17 = 0;
        v18 = 0;
        v5 = 15;
        *a3 = 15;
        LODWORD(v16) = *a1;
        goto LABEL_66;
      case 0xEu:
        if (a2 == 59)
        {
          return 1;
        }

        if (a2 - 48 > 9)
        {
          goto LABEL_87;
        }

        *a1 = *a1 + a2 + 10 * *a1 - 48;
        return 3;
      case 0xFu:
        v16 = *a1;
        v17 = HIBYTE(v5);
        if (HIBYTE(v5))
        {
          v21 = 0;
          v18 = nv[8 * v16 - 1 + v17];
        }

        else
        {
          v18 = 0;
LABEL_66:
          v21 = 1;
        }

        if (a2 == 59)
        {
          v22 = 0;
        }

        else
        {
          v22 = a2;
        }

        v23 = v16;
        if (v16 > 0x63)
        {
          goto LABEL_77;
        }

        v24 = v17 - 1;
        v25 = &nv[8 * v16 + v17];
        v26 = &nv[8 * v16 + v24];
        do
        {
          if ((v21 & 1) == 0 && v18 != *v26)
          {
            goto LABEL_87;
          }

          if (*v25 == v22)
          {
            LOBYTE(v16) = v23;
            goto LABEL_90;
          }

          ++v23;
          v25 += 8;
          v26 += 8;
        }

        while (v23 != 100);
        v23 = 100;
        LODWORD(v16) = 100;
LABEL_77:
        if (v16 == 100)
        {
LABEL_87:
          *a3 = 0;
          return -1;
        }

LABEL_90:
        if (!v22)
        {
          v13 = nv[8 * v23 + 7];
          goto LABEL_93;
        }

        *a1 = v16;
        v8 = (v5 & 0xFF000000) + 16777231;
LABEL_119:
        *a3 = v8;
        return 3;
      default:
        goto LABEL_87;
    }
  }

  v9 = *a3;
  if ((v9 - 5) >= 2)
  {
    if (!*a3)
    {
      return 3;
    }

    if (v9 != 9)
    {
      return -1;
    }
  }

LABEL_94:
  *a3 = 0;
  return 1;
}

int strnunvisx(char *a1, size_t a2, const char *a3, int a4)
{
  v16 = 0;
  v15 = 0;
  if (!a3)
  {
    strnunvisx_cold_2();
  }

  v4 = a1;
  if (!a1)
  {
    strnunvisx_cold_1();
  }

  v5 = a3;
  v7 = *a3;
  if (*a3)
  {
    v9 = a1;
    do
    {
      ++v5;
      v10 = v7;
      while (1)
      {
        v11 = unvis(&v16, v10, &v15, a4);
        if (v11 != 2)
        {
          break;
        }

        if (!a2)
        {
          goto LABEL_23;
        }

        --a2;
        *v9++ = v16;
      }

      if (v11 > 0)
      {
        if (v11 != 3)
        {
          if (!a2)
          {
            goto LABEL_23;
          }

          --a2;
          *v9++ = v16;
        }
      }

      else if (v11 == -1)
      {
        v13 = __error();
        v14 = 22;
        goto LABEL_25;
      }

      v7 = *v5;
    }

    while (*v5);
    if (v15 <= 9u && ((1 << v15) & 0x260) != 0)
    {
      v15 = 0;
      if (!a2)
      {
        goto LABEL_23;
      }

      --a2;
      *v9++ = v16;
    }
  }

  else
  {
    v9 = a1;
  }

  if (a2)
  {
    *v9 = 0;
    return v9 - v4;
  }

  else
  {
LABEL_23:
    v13 = __error();
    v14 = 28;
LABEL_25:
    *v13 = v14;
    return -1;
  }
}

uint64_t usleep_NOCANCEL(unsigned int a1)
{
  v2[0] = a1 / 0xF4240uLL;
  v2[1] = 1000 * (a1 % 0xF4240);
  return nanosleep_NOCANCEL(v2, 0);
}

int utime(const char *a1, const utimbuf *a2)
{
  if (a2)
  {
    modtime = a2->modtime;
    v4.tv_sec = a2->actime;
    v5 = modtime;
    v6 = 0;
    v4.tv_usec = 0;
    a2 = &v4;
  }

  return utimes(a1, a2);
}

char *__cdecl svis(char *a1, int a2, int a3, int a4, const char *a5)
{
  v8 = a1;
  v7[0] = a2;
  v7[1] = a4;
  v5 = istrsenvisx(&v8, 0, v7, 1uLL, a3, a5, 0);
  if (v5 >= 0)
  {
    return &v8[v5];
  }

  else
  {
    return 0;
  }
}

char *__cdecl snvis(char *a1, size_t a2, int a3, int a4, int a5, const char *a6)
{
  v10 = a1;
  v9 = a2;
  v8[0] = a3;
  v8[1] = a5;
  v6 = istrsenvisx(&v10, &v9, v8, 1uLL, a4, a6, 0);
  if (v6 >= 0)
  {
    return &v10[v6];
  }

  else
  {
    return 0;
  }
}

int strsnvis(char *a1, size_t a2, const char *a3, int a4, const char *a5)
{
  v6 = a2;
  v7 = a1;
  return istrsenvisxl(&v7, &v6, a3, a4, a5);
}

int strsnvisx(char *a1, size_t a2, const char *a3, size_t a4, int a5, const char *a6)
{
  v7 = a2;
  v8 = a1;
  return istrsenvisx(&v8, &v7, a3, a4, a5, a6, 0);
}

int strsenvisx(char *a1, size_t a2, const char *a3, size_t a4, int a5, const char *a6, int *a7)
{
  v8 = a2;
  v9 = a1;
  return istrsenvisx(&v9, &v8, a3, a4, a5, a6, a7);
}

char *__cdecl vis(char *a1, int a2, int a3, int a4)
{
  v7 = a1;
  v6[0] = a2;
  v6[1] = a4;
  v4 = istrsenvisx(&v7, 0, v6, 1uLL, a3, "", 0);
  if (v4 >= 0)
  {
    return &v7[v4];
  }

  else
  {
    return 0;
  }
}

char *__cdecl nvis(char *a1, size_t a2, int a3, int a4, int a5)
{
  v9 = a1;
  v8 = a2;
  v7[0] = a3;
  v7[1] = a5;
  v5 = istrsenvisx(&v9, &v8, v7, 1uLL, a4, "", 0);
  if (v5 >= 0)
  {
    return &v9[v5];
  }

  else
  {
    return 0;
  }
}

int strenvisx(char *a1, size_t a2, const char *a3, size_t a4, int a5, int *a6)
{
  v7 = a2;
  v8 = a1;
  return istrsenvisx(&v8, &v7, a3, a4, a5, "", a6);
}

_DWORD *do_hvis(_DWORD *a1, unsigned int a2, __int16 a3, char a4, __int32 *a5)
{
  if (a2 <= 0x7F)
  {
    v10 = &_DefaultRuneLocale;
LABEL_8:
    v11 = v10->__runetype[a2];
    goto LABEL_9;
  }

  if (a2 < 0x100)
  {
    v12 = __locale_key;
    v13 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v12);
    if (!v13)
    {
      v13 = &__global_locale;
    }

    v10 = *(v13[166] + 120);
    goto LABEL_8;
  }

  LOWORD(v11) = ___runetype(a2);
LABEL_9:
  if ((v11 & 0x500) != 0 || a2 - 39 < 8 || a2 - 33 <= 0x3E && ((1 << (a2 - 33)) & 0x4000000000000009) != 0)
  {

    return do_svis(a1, a2, a3, a4, a5);
  }

  else
  {
    *a1 = 37;
    a1[1] = dword_18E98AC04[a2 >> 4];
    a1[2] = dword_18E98AC04[a2 & 0xF];
    return a1 + 3;
  }
}

_DWORD *do_mvis(_DWORD *a1, unsigned int a2, __int16 a3, int a4, __int32 *__s)
{
  if (a2 != 10)
  {
    if (a2 > 0x7F)
    {
      if (a2 >= 0x100)
      {
        if ((___runetype(a2) & 0x4000) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_14;
      }

      v12 = __locale_key;
      v13 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v12);
      if (!v13)
      {
        v13 = &__global_locale;
      }

      v11 = *(v13[166] + 120);
    }

    else
    {
      v11 = &_DefaultRuneLocale;
    }

    if ((v11->__runetype[a2] & 0x4000) == 0)
    {
      goto LABEL_16;
    }

LABEL_14:
    if (a4 == 10 || a4 == 13)
    {
      goto LABEL_29;
    }

LABEL_16:
    if (a2 > 0x7F)
    {
      if (a2 >= 0x100)
      {
        if ((___runetype(a2) & 0x4000) == 0)
        {
LABEL_25:
          if (a2 < 33 || a2 == 61 || a2 > 0x7E)
          {
            goto LABEL_29;
          }
        }

LABEL_28:
        if (!wcschr(dword_18E98AC48, a2))
        {
          goto LABEL_2;
        }

LABEL_29:
        *a1 = 61;
        a1[1] = dword_18E98AC7C[a2 >> 4];
        a1[2] = dword_18E98AC7C[a2 & 0xF];
        return a1 + 3;
      }

      v15 = __locale_key;
      v16 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v15);
      if (!v16)
      {
        v16 = &__global_locale;
      }

      v14 = *(v16[166] + 120);
    }

    else
    {
      v14 = &_DefaultRuneLocale;
    }

    if ((v14->__runetype[a2] & 0x4000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_28;
  }

LABEL_2:

  return do_svis(a1, a2, a3, a4, __s);
}

uint64_t waitpid_NOCANCEL(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0xFFFFFFEC) != 0)
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  else
  {

    return MEMORY[0x1EEE722C0](a1, a2, a3, 0);
  }
}

uint64_t _ascii_init(void *a1)
{
  a1[9] = _ascii_mbrtowc;
  a1[10] = _ascii_mbsinit;
  a1[11] = _ascii_mbsnrtowcs;
  a1[12] = _ascii_wcrtomb;
  a1[13] = _ascii_wcsnrtombs;
  a1[8] = 0x8000000001;
  return 0;
}

uint64_t _ascii_mbrtowc(_DWORD *a1, char *a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  if (!a3)
  {
    return -2;
  }

  v3 = *a2;
  if (v3 < 0)
  {
    *__error() = 92;
    return -1;
  }

  else
  {
    if (a1)
    {
      *a1 = v3;
    }

    return v3 != 0;
  }
}

uint64_t _ascii_mbsnrtowcs(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  if (a1)
  {
    if (a4)
    {
      result = 0;
      while (1)
      {
        if (a3 == result)
        {
          v4 += result;
          a4 = a3;
          goto LABEL_18;
        }

        v7 = v4[result];
        if (v7 < 0)
        {
          *a2 = &v4[result];
          goto LABEL_20;
        }

        *(a1 + 4 * result) = v7;
        if (!v7)
        {
          break;
        }

        if (a4 == ++result)
        {
          v4 += result;
          goto LABEL_18;
        }
      }

      *a2 = 0;
    }

    else
    {
LABEL_18:
      *a2 = v4;
      return a4;
    }
  }

  else
  {
    if (a3)
    {
      v8 = &v4[a3];
      v9 = *a2;
      while (*v9)
      {
        if (*v9 < 0)
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

  return result;
}

uint64_t _ascii_wcrtomb(_BYTE *a1, unsigned int a2)
{
  if (a1)
  {
    if (a2 >= 0x80)
    {
      *__error() = 92;
      return -1;
    }

    *a1 = a2;
  }

  return 1;
}

uint64_t _ascii_wcsnrtombs(uint64_t a1, int **a2, uint64_t a3, uint64_t a4)
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
        if (*v4 >= 0x80)
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
        if (*v9 >= 0x80)
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

uint64_t _BIG5_init(void *a1)
{
  a1[9] = _BIG5_mbrtowc;
  a1[12] = _BIG5_wcrtomb;
  a1[10] = _BIG5_mbsinit;
  a1[8] = 0x8000000002;
  return 0;
}

uint64_t _BIG5_mbrtowc(int *a1, const char *a2, uint64_t a3, int *a4)
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

  if ((v8 - 161) > 0x5D)
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

uint64_t _BIG5_wcrtomb(_BYTE *a1, unsigned int a2, _DWORD *a3)
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

wint_t btowc_l(wint_t result, locale_t a2)
{
  memset(v6, 0, sizeof(v6));
  if (result != -1)
  {
    v4 = 0;
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

    v5 = result;
    if ((*(*(v3 + 166) + 72))(&v4, &v5, 1, v6) > 1)
    {
      return -1;
    }

    else
    {
      return v4;
    }
  }

  return result;
}

wint_t btowc(int a1)
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

  return btowc_l(a1, v3);
}

uint64_t __collate_load_tables(char *a1, uint64_t a2, size_t a3, _xlocale *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(&v63, 0, sizeof(v63));
  if (*a1 == 67)
  {
    v10 = a1[1];
    if (!a1[1] || !j__strncasecmp_l(a1, "POSIX", a3, a4) || v10 == 46)
    {
      goto LABEL_5;
    }
  }

  else if (!j__strncasecmp_l(a1, "POSIX", a3, a4))
  {
LABEL_5:
    if (a2 == &__global_locale)
    {
      __collate_load_error = 1;
    }

    v11 = *(a2 + 1320);
    if (v11 && atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
    {
      v12 = *(v11 + 8);
      if (v12)
      {
        v12(v11, a2, a3, a4, a5, a6, a7, a8, *&v63.st_dev, v63.st_ino, *&v63.st_uid, *&v63.st_rdev);
      }
    }

    v13 = &__xlocale_C_collate;
    *(a2 + 1320) = &__xlocale_C_collate;
    result = 1;
LABEL_12:
    atomic_fetch_add(v13, 1u);
    return result;
  }

  if (__collate_load_tables_cache && !j__strncasecmp_l(a1, (__collate_load_tables_cache + 16), a3, a4))
  {
    if (a2 == &__global_locale)
    {
      __collate_load_error = 0;
    }

    v28 = *(a2 + 1320);
    if (v28)
    {
      if (atomic_fetch_add(v28, 0xFFFFFFFF) == 1)
      {
        v29 = *(v28 + 8);
        if (v29)
        {
          v29(v28, v15, a3, v16, v17, v18, v19, v20, *&v63.st_dev, v63.st_ino, *&v63.st_uid, *&v63.st_rdev);
        }
      }
    }

    v13 = __collate_load_tables_cache;
    *(a2 + 1320) = __collate_load_tables_cache;
    result = 1;
    if (v13)
    {
      goto LABEL_12;
    }

    return result;
  }

  j__strnstr(__big, a1, a3);
  strcpy(&__big[j__strsignal_r(__big, v21, v22)], "/LC_COLLATE");
  result = __open_path_locale(__big, v23, v24);
  if (result == -1)
  {
    return result;
  }

  v25 = result;
  if (fstat(result, &v63) < 0)
  {
    close_NOCANCEL();
    return 0xFFFFFFFFLL;
  }

  if (v63.st_size <= 0xA7uLL)
  {
    close_NOCANCEL();
LABEL_20:
    v26 = __error();
    v27 = 22;
LABEL_34:
    *v26 = v27;
    return 0xFFFFFFFFLL;
  }

  v30 = mmap(0, v63.st_size, 3, 2, v25, 0);
  close_NOCANCEL();
  if (v30 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!j__strsvisx(v30, "1.1A\n", 0xCuLL, v31, v32))
  {
    return __collate_load_tables_legacy(a1, a2, v30, v30, &v63);
  }

  if (j__strsvisx(v30, "DARWIN 1.0\n", 0xCuLL, v33, v34) || (v35 = v30[20], (v35 & 0x80000000) != 0))
  {
    munmap(v30, v63.st_size);
    v26 = __error();
    v27 = 79;
    goto LABEL_34;
  }

  if (v30[19])
  {
    st_size = v63.st_size;
LABEL_66:
    munmap(v30, st_size);
    goto LABEL_20;
  }

  v36 = 136 * v35 + 44 * v30[21] + 10240;
  v37 = *(v30 + 24);
  if (*(v30 + 24))
  {
    v38 = (v30 + 22);
    do
    {
      v39 = *v38++;
      v36 += 100 * v39;
      --v37;
    }

    while (v37);
  }

  st_size = v63.st_size;
  if (v63.st_size - 168 != v36)
  {
    goto LABEL_66;
  }

  v41 = malloc_type_malloc(0xC8uLL, 0x10B004021DA7767uLL);
  if (!v41)
  {
    munmap(v30, v63.st_size);
    v26 = __error();
    v27 = 12;
    goto LABEL_34;
  }

  v43 = v41;
  v44 = v63.st_size;
  *(v41 + 9) = v30;
  *(v41 + 10) = v44;
  *v41 = 2;
  *(v41 + 1) = destruct_collate;
  *(v41 + 24) = v30 + 42;
  v45 = (v30 + 2602);
  v46 = *(v30 + 24);
  if (*(v30 + 24))
  {
    v47 = (v30 + 22);
    v48 = v41 + 96;
    do
    {
      v50 = *v47++;
      v49 = v50;
      if (v50 < 1)
      {
        *v48 = 0;
      }

      else
      {
        *v48 = v45;
        v45 += 100 * v49;
      }

      ++v48;
      --v46;
    }

    while (v46);
  }

  v51 = &v45[136 * v35];
  if (!v35)
  {
    v45 = 0;
  }

  if (v30[21] <= 0)
  {
    v51 = 0;
  }

  *(v41 + 22) = v45;
  *(v41 + 23) = v51;
  j__strnstr(v41 + 16, a1, v42);
  *(v43 + 88) = v30 + 6;
  v59 = __collate_load_tables_cache;
  if (__collate_load_tables_cache)
  {
    if (atomic_fetch_add(__collate_load_tables_cache, 0xFFFFFFFF) == 1)
    {
      v60 = *(v59 + 8);
      if (v60)
      {
        v60(v59, v52, v53, v54, v55, v56, v57, v58, *&v63.st_dev, v63.st_ino, *&v63.st_uid, *&v63.st_rdev);
      }
    }
  }

  __collate_load_tables_cache = v43;
  v61 = *(a2 + 1320);
  if (v61)
  {
    if (atomic_fetch_add(v61, 0xFFFFFFFF) == 1)
    {
      v62 = *(v61 + 8);
      if (v62)
      {
        v62();
      }
    }
  }

  result = 0;
  *(a2 + 1320) = __collate_load_tables_cache;
  *(v43 + 64) = 0;
  if (a2 == &__global_locale)
  {
    result = 0;
    __collate_load_error = 0;
  }

  return result;
}

uint64_t __collate_load_tables_legacy(const char *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  *&v110 = 0;
  v109 = 0x100000001uLL;
  LODWORD(v10) = *(a3 + 13) & 0xF;
  if ((*(a3 + 13) & 0xF) != 0)
  {
    v11 = (a3 + 14);
    v12 = *(a3 + 13) & 0xF;
    do
    {
      v13 = bswap32(*v11);
      *v11 = v13;
      v11[2] = bswap32(v11[2]);
      if ((v13 & 0x80000000) != 0)
      {
        *v11 = -v13;
      }

      ++v11;
      --v12;
    }

    while (v12);
  }

  v14 = *(a3 + 30);
  v15 = vrev32_s8(v14);
  *(a3 + 30) = v15;
  v16 = v15.u32[0];
  if (v15.i32[0] < 0)
  {
    munmap(a4, *(a5 + 96));
    v40 = __error();
    v41 = 79;
LABEL_27:
    *v40 = v41;
    return 0xFFFFFFFFLL;
  }

  v17 = a3 + 38;
  v18 = 12 * v15.u32[0];
  v19 = v18 * 4 + 12 * v15.i32[1] + 2048;
  if (v10)
  {
    v20 = (a3 + 22);
    v10 = v10;
    do
    {
      v21 = *v20++;
      v19 += 44 * v21;
      --v10;
    }

    while (v10);
  }

  v22 = *(a5 + 96);
  if (&a4[v22 - v17] != v19)
  {
    munmap(a4, v22);
    v40 = __error();
    v41 = 22;
    goto LABEL_27;
  }

  v105 = v14.i32[0];
  v23 = malloc_type_malloc(0xC8uLL, 0x10B004021DA7767uLL);
  if (!v23)
  {
    munmap(a4, *(a5 + 96));
LABEL_26:
    v40 = __error();
    v41 = 12;
    goto LABEL_27;
  }

  v24 = v23;
  v25 = *(a5 + 96);
  *(v23 + 9) = a4;
  *(v23 + 10) = v25;
  v26 = 136 * v16 + 44 * *(a3 + 34) + 10384;
  if ((*(a3 + 13) & 0xF) != 0)
  {
    v27 = 0;
    v28 = (a3 + 22);
    v29 = 4 * (*(a3 + 13) & 0xF);
    v30 = *(a3 + 12) & 1;
    do
    {
      if (v27 && v30)
      {
        v31 = *v28;
        v28[v27 / 4] = *v28;
      }

      else
      {
        v31 = v28[v27 / 4];
      }

      v26 += 100 * v31;
      v27 += 4;
    }

    while (v29 != v27);
  }

  v32 = malloc_type_calloc(1uLL, v26, 0x29C33017uLL);
  *(v24 + 11) = v32;
  if (!v32)
  {
    munmap(a4, *(a5 + 96));
    free(v24);
    goto LABEL_26;
  }

  v34 = v32 + 144;
  *v24 = 2;
  *(v24 + 1) = destruct_collate;
  *(v24 + 24) = v32 + 144;
  v35 = *(a3 + 22);
  v36 = (a3 + 2086);
  v37 = v32 + 10384;
  if (v35 < 1)
  {
    v38 = 0;
    v39 = 0;
  }

  else
  {
    *(&v109 + 1) = a3 + 2086;
    v38 = a3 + 2086;
    v36 += 11 * v35;
    v39 = v32 + 10384;
    v37 += 100 * v35;
  }

  *(v24 + 12) = v39;
  v43 = v24 + 24;
  v44 = *(a3 + 26);
  if (v44 < 1)
  {
    *(v24 + 13) = 0;
  }

  else
  {
    *(v24 + 13) = v37;
    v37 += 100 * v44;
    if (*(a3 + 12))
    {
      *&v110 = v38;
    }

    else
    {
      *&v110 = v36;
      v36 += 11 * v44;
    }
  }

  if (v105)
  {
    v45 = v37;
  }

  else
  {
    v45 = 0;
  }

  if (v105)
  {
    v46 = &v36[v18];
  }

  else
  {
    v46 = v36;
  }

  if (v105)
  {
    v47 = v36;
  }

  else
  {
    v47 = 0;
  }

  if (v105)
  {
    v48 = &v37[136 * v16];
  }

  else
  {
    v48 = v37;
  }

  v49 = *(a3 + 34);
  v50 = v49 <= 0;
  if (v49 <= 0)
  {
    v51 = 0;
  }

  else
  {
    v51 = v48;
  }

  if (v50)
  {
    v52 = 0;
  }

  else
  {
    v52 = v46;
  }

  *(v24 + 22) = v45;
  *(v24 + 23) = v51;
  v53 = *(a3 + 13);
  v54 = 255;
  do
  {
    v55 = v54;
    if ((v53 & 0xF) != 0)
    {
      v56 = 0;
      do
      {
        v57 = bswap32(*(v17 + 4 * v56));
        *&v34[4 * v56] = v57;
        if (*(&v109 + v56) <= (v57 + 1))
        {
          v58 = v57 + 1;
        }

        else
        {
          v58 = *(&v109 + v56);
        }

        *(&v109 + v56++) = v58;
        v53 = *(a3 + 13);
      }

      while (v56 < (v53 & 0xFu));
    }

    v34 += 40;
    v17 += 8;
    v54 = v55 - 1;
  }

  while (v55);
  if ((v53 & 0xF) != 0)
  {
    v59 = 0;
    do
    {
      v60 = *(a3 + 22 + 4 * v59);
      if (v60 >= 1)
      {
        v61 = *(&v109 + v59 + 1);
        v62 = *&v43[2 * v59];
        v63 = (v62 + 8);
        do
        {
          v64 = *(v61 + 4);
          v65 = *(v61 + 20);
          *(v62 + 36) = *(v61 + 36);
          *(v62 + 20) = v65;
          *(v62 + 4) = v64;
          *v62 = bswap32(*v61);
          v66 = *(v62 + 4);
          if (v66)
          {
            LODWORD(v33) = 10;
            v67 = v63;
            do
            {
              *(v67 - 1) = bswap32(v66);
              v68 = *v67++;
              v66 = v68;
              if (v68)
              {
                v69 = v33 > 1;
              }

              else
              {
                v69 = 0;
              }

              v33 = (v33 - 1);
            }

            while (v69);
          }

          v61 += 44;
          v62 += 100;
          v63 += 25;
          v50 = v60-- <= 1;
        }

        while (!v50);
        v53 = *(a3 + 13);
      }

      ++v59;
    }

    while (v59 < (v53 & 0xFu));
    v45 = *(v24 + 22);
  }

  if (v105)
  {
    v70 = (v45 + 4);
    do
    {
      v72 = *v47;
      v71 = *(v47 + 1);
      *(v45 + 4) = *(v47 + 4);
      *v45 = v72;
      *(v45 + 1) = v71;
      v73 = *v45;
      if (*v45)
      {
        v74 = 10;
        v75 = v70;
        do
        {
          *(v75 - 1) = bswap32(v73);
          v76 = *v75++;
          v73 = v76;
          if (v76)
          {
            v77 = v74 > 1;
          }

          else
          {
            v77 = 0;
          }

          --v74;
        }

        while (v77);
      }

      if ((*(a3 + 13) & 0xF) != 0)
      {
        v78 = 0;
        do
        {
          v79 = bswap32(v47[v78 + 10]);
          *&v45[4 * v78 + 96] = v79;
          if (*(&v109 + v78) <= (v79 + 1))
          {
            v80 = v79 + 1;
          }

          else
          {
            v80 = *(&v109 + v78);
          }

          *(&v109 + v78++) = v80;
        }

        while (v78 < (*(a3 + 13) & 0xFu));
      }

      v45 += 136;
      v47 += 12;
      v70 += 34;
      v50 = v16 <= 1;
      LODWORD(v16) = v16 - 1;
    }

    while (!v50);
  }

  v81 = *(a3 + 34);
  if (v81 >= 1)
  {
    v82 = *(v24 + 23);
    do
    {
      *v82 = bswap32(*v52);
      if ((*(a3 + 13) & 0xF) != 0)
      {
        v83 = &v109;
        v84 = 1;
        do
        {
          v85 = bswap32(v52[v84]);
          v82[v84] = v85;
          if (*v83 <= (v85 + 1))
          {
            v86 = v85 + 1;
          }

          else
          {
            v86 = *v83;
          }

          *v83++ = v86;
        }

        while (v84++ < (*(a3 + 13) & 0xFu));
      }

      v82 += 11;
      v52 += 3;
      v50 = v81-- <= 1;
    }

    while (!v50);
  }

  j__strnstr(v24 + 16, a1, v33);
  v88 = *(v24 + 11);
  *(v88 + 112) = 0u;
  *(v88 + 128) = 0u;
  *(v88 + 80) = 0u;
  *(v88 + 96) = 0u;
  *(v88 + 48) = 0u;
  *(v88 + 64) = 0u;
  *(v88 + 16) = 0u;
  *(v88 + 32) = 0u;
  *v88 = 0u;
  *v88 = *(a3 + 13) & 0xF;
  *(v88 + 11) = *(a3 + 13) >> 4;
  *(v88 + 52) = *(a3 + 12) | 2;
  *(v88 + 56) = *(a3 + 30);
  v89 = *(a3 + 10);
  v90 = v109;
  *(v88 + 28) = v110;
  *(v88 + 1) = v89;
  *(v88 + 44) = v111;
  *(v88 + 12) = v90;
  *(v88 + 64) = *(a3 + 22);
  *(v88 + 104) = *(a3 + 14);
  v91 = __collate_load_tables_cache;
  if (__collate_load_tables_cache)
  {
    if (atomic_fetch_add(__collate_load_tables_cache, 0xFFFFFFFF) == 1)
    {
      v92 = *(v91 + 8);
      if (v92)
      {
        v92();
      }
    }
  }

  __collate_load_tables_cache = v24;
  v93 = *(a2 + 1320);
  if (v93)
  {
    if (atomic_fetch_add(v93, 0xFFFFFFFF) == 1)
    {
      v94 = *(v93 + 8);
      if (v94)
      {
        v94();
      }
    }
  }

  *(a2 + 1320) = v24;
  v108 = 0;
  v95 = *(v24 + 11);
  v96 = *v95;
  if (!*v95)
  {
    goto LABEL_129;
  }

  v97 = 0;
  v106 = 0;
  v107 = 0;
  do
  {
    if (v95[v97 + 16] < 1)
    {
      goto LABEL_128;
    }

    v98 = 0;
    v99 = *&v43[2 * v97];
    v100 = v99;
    do
    {
      v108 = *(v99 + 100 * v98);
      *(v99 + 100 * v98) = v98 | 0x40000000;
      v107 = v98 | 0x40000000;
      v101 = chainsearch(v24, &v108, &v106);
      if (v101)
      {
        v102 = (v101 + 24);
      }

      else if (v108 > 255)
      {
        if (v95[15] < 1)
        {
          goto LABEL_126;
        }

        v103 = largesearch(v24, v108);
        if (!v103)
        {
          goto LABEL_126;
        }

        v102 = (v103 + 1);
      }

      else
      {
        v102 = *(v24 + 24) + 40 * v108;
      }

      *(v102 + 4 * v97) = v98 | 0x40000000;
      for (i = 4; i != 388; i += 4)
      {
        v108 = *(v100 + i);
        if (!v108)
        {
          break;
        }

        __collate_lookup_which(&v108, &v106, &v107, 0, a2);
        *(v100 + i) = v107;
      }

      v95 = *(v24 + 11);
LABEL_126:
      ++v98;
      v100 += 100;
    }

    while (v98 < v95[v97 + 16]);
    v96 = *v95;
    v43 = v24 + 24;
LABEL_128:
    ++v97;
  }

  while (v97 < v96);
LABEL_129:
  result = 0;
  v95[13] &= ~1u;
  *(v24 + 64) = 0;
  if (a2 == &__global_locale)
  {
    result = 0;
    __collate_load_error = 0;
  }

  return result;
}

void destruct_collate(void *a1)
{
  v2 = a1[11];
  if ((v2[52] & 2) != 0)
  {
    free(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    v4 = a1[10];
    if (v4)
    {
      munmap(v3, v4);
    }
  }

  free(a1);
}

void __collate_err(int a1, int a2)
{
  v4 = *__error();
  v5 = getprogname();
  j__strsignal_r(v5, v6, v7);
  write_NOCANCEL();
  write_NOCANCEL();
  j__strsignal_r(a2, v8, v9);
  write_NOCANCEL();
  write_NOCANCEL();
  v10 = strerror(v4);
  j__strsignal_r(v10, v11, v12);
  write_NOCANCEL();
  write_NOCANCEL();
  exit(a1);
}

_DWORD *_collate_lookup(_DWORD *result, __int32 *a2, _DWORD *a3, int *a4, int a5, int **a6)
{
  v10 = *(result + 11);
  if (*v10 <= a5)
  {
    *a4 = *a2;
    *a3 = 1;
    *a6 = 0;
    return result;
  }

  v11 = *a6;
  if (*a6)
  {
    *a4 = *v11;
    v13 = v11[1];
    v12 = v11 + 1;
    if (!v13)
    {
      v12 = 0;
    }

    *a6 = v12;
    *a3 = 0;
    return result;
  }

  v15 = result;
  v21 = 0;
  *a3 = 1;
  result = chainsearch(result, a2, &v21);
  if (result)
  {
    v16 = result[a5 + 24];
    if ((v16 & 0x80000000) == 0)
    {
      *a3 = v21;
LABEL_16:
      *a4 = v16;
      result = lookup_substsearch(v15, v16, a5);
      if (result)
      {
        v18 = *result;
        *a4 = *result;
        if (v18 >= 1)
        {
          v19 = result[1];
          ++result;
          if (v19)
          {
            v20 = result;
          }

          else
          {
            v20 = 0;
          }

          *a6 = v20;
        }
      }

      return result;
    }
  }

  v17 = *a2;
  if (*a2 <= 255)
  {
    v16 = *(*(v15 + 24) + 40 * v17 + 4 * a5);
    goto LABEL_16;
  }

  if (v10[15] >= 1)
  {
    result = largesearch(v15, *a2);
    if (result)
    {
      v16 = result[a5 + 1];
      goto LABEL_16;
    }
  }

  if ((*(v10 + a5 + 1) & 8) == 0)
  {
    v17 = v10[a5 + 26];
  }

  *a4 = v17;
  return result;
}

_DWORD *chainsearch(uint64_t a1, __int32 *a2, _DWORD *a3)
{
  v3 = *(*(a1 + 88) + 56);
  v4 = v3 - 1;
  if (v3 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = *(a1 + 176);
  v8 = *a2;
  while (1)
  {
    v9 = (v4 + v6) >> 1;
    v10 = (v7 + 136 * v9);
    v11 = v8 - *v10;
    if (v8 == *v10)
    {
      if (*v10)
      {
        v12 = 0;
        do
        {
          v13 = *(v7 + 4 + 136 * v9 + 4 * v12);
          v14 = v12++;
          if (v13)
          {
            v15 = v14 >= 0x17;
          }

          else
          {
            v15 = 1;
          }
        }

        while (!v15);
        v16 = v12;
      }

      else
      {
        v16 = 0;
      }

      v11 = wcsncmp(a2, (v7 + 136 * v9), v16);
      if (!v11)
      {
        break;
      }
    }

    if (v11 <= 0)
    {
      v4 = v9 - 1;
    }

    else
    {
      v6 = v9 + 1;
    }

    if (v6 > v4)
    {
      return 0;
    }
  }

  *a3 = v16;
  return v10;
}

_DWORD *largesearch(uint64_t a1, int a2)
{
  v2 = *(*(a1 + 88) + 60);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v4 < 0 != v3)
  {
    return 0;
  }

  v5 = 0;
  v6 = *(a1 + 184);
  while (1)
  {
    v7 = (v4 + v5) >> 1;
    result = (v6 + 44 * v7);
    if (*result == a2)
    {
      break;
    }

    if (*result >= a2)
    {
      v4 = v7 - 1;
    }

    else
    {
      v5 = v7 + 1;
    }

    if (v5 > v4)
    {
      return 0;
    }
  }

  return result;
}

_DWORD *lookup_substsearch(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 88);
  if (!*&v3[4 * a3 + 64])
  {
    return 0;
  }

  v4 = 0;
  if ((a2 & 0x40000000) != 0 && *v3 > a3)
  {
    v5 = (*(a1 + 8 * a3 + 96) + 100 * (a2 & 0xBFFFFFFF));
    if (*v5 != a2)
    {
      lookup_substsearch_cold_1();
    }

    return v5 + 1;
  }

  return v4;
}

__int32 *__collate_lookup_l(__int32 *result, _DWORD *a2, int *a3, int *a4, char *a5)
{
  v8 = *result;
  if (!*result)
  {
    *a2 = 0;
    *a3 = 0;
    goto LABEL_9;
  }

  v9 = result;
  v10 = __c_locale;
  v11 = &__global_locale;
  if (a5 != -1)
  {
    v11 = a5;
  }

  if (a5)
  {
    v10 = v11;
  }

  v12 = *(v10 + 165);
  if (*(v12 + 64))
  {
    v8 = 0;
    *a2 = 1;
    *a3 = *result;
LABEL_9:
    *a4 = v8;
    return result;
  }

  v18 = 0;
  *a2 = 1;
  result = chainsearch(v12, result, &v18);
  if (!result || result[24] < 0)
  {
    v14 = *v9;
    if (*v9 > 255)
    {
      v16 = *(v12 + 88);
      if (v16[15] < 1 || (result = largesearch(v12, *v9)) == 0)
      {
        v17 = v16[26];
        if (v17 < 0)
        {
          v17 = v14 - v17;
        }

        *a3 = v17;
        v8 = v16[27];
        if (v8 < 0)
        {
          v8 = *v9 - v8;
        }

        goto LABEL_9;
      }

      *a3 = result[1];
      v13 = result + 2;
    }

    else
    {
      v15 = *(v12 + 192);
      *a3 = *(v15 + 40 * v14);
      v13 = (v15 + 40 * *v9 + 4);
    }
  }

  else
  {
    *a2 = v18;
    *a3 = result[24];
    v13 = result + 25;
  }

  *a4 = *v13;
  if ((*a3 & 0x80000000) == 0)
  {
    result = lookup_substsearch(v12, *a3, 0);
    if (result)
    {
      *a3 = *result;
    }
  }

  if ((*a4 & 0x80000000) == 0)
  {
    result = lookup_substsearch(v12, *a4, 1);
    if (result)
    {
      v8 = result[1];
      goto LABEL_9;
    }
  }

  return result;
}

int *__collate_lookup(int *result, _DWORD *a2, int *a3, int *a4)
{
  v7 = __locale_key;
  v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v7);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = &__global_locale;
  }

  if (*result)
  {
    v10 = result;
    if (*(*(v9 + 165) + 64) || (v12 = __collate_mbstowcs(result, v9)) == 0)
    {
      *a2 = 1;
      *a3 = *v10;
      *a4 = 0;
      v11 = *__error();
    }

    else
    {
      v13 = v12;
      __collate_lookup_l(v12, a2, a3, a4, v9);
      v11 = *__error();
      free(v13);
    }

    result = __error();
    *result = v11;
  }

  else
  {
    *a2 = 0;
    *a3 = 0;
    *a4 = 0;
  }

  return result;
}

int *__collate_lookup_which(__int32 *a1, _DWORD *a2, int *a3, int a4, uint64_t a5)
{
  v14 = 0;
  v9 = *(a5 + 1320);
  *a2 = 1;
  result = chainsearch(v9, a1, &v14);
  if (result)
  {
    v11 = result[a4 + 24];
    if ((v11 & 0x80000000) == 0)
    {
      *a2 = v14;
      goto LABEL_9;
    }
  }

  v12 = *a1;
  if (*a1 <= 255)
  {
    v11 = *(*(v9 + 192) + 40 * v12 + 4 * a4);
    goto LABEL_9;
  }

  v13 = *(v9 + 88);
  if (*(v13 + 60) >= 1)
  {
    result = largesearch(v9, v12);
    if (result)
    {
      v11 = result[a4 + 1];
LABEL_9:
      *a3 = v11;
      result = lookup_substsearch(v9, v11, 0);
      if (!result)
      {
        return result;
      }

      goto LABEL_10;
    }
  }

  if ((*(v13 + a4 + 1) & 8) != 0)
  {
    goto LABEL_11;
  }

  result = (v13 + 4 * a4 + 104);
LABEL_10:
  v12 = *result;
LABEL_11:
  *a3 = v12;
  return result;
}

uint64_t __collate_collating_symbol(__int32 *a1, unint64_t a2, char *a3, size_t a4, mbstate_t *a5, _xlocale *a6)
{
  v6 = a4;
  v7 = a3;
  v10 = *(a6 + 165);
  if (!*(v10 + 64))
  {
    if (a4)
    {
      v15 = 0;
      v24 = 0;
      v16 = v25;
      do
      {
        v17 = mbrtowc_l(&v24, v7, v6, a5, a6);
        if (v17 > 0xFFFFFFFFFFFFFFFDLL)
        {
          return -1;
        }

        if (!v17)
        {
          break;
        }

        if (v15 == 24)
        {
          return -1;
        }

        *v16++ = v24;
        v7 += v17;
        ++v15;
        v6 -= v17;
      }

      while (v6);
      if (v15 - 1 >= a2)
      {
        return -1;
      }

      if (v15 == 1)
      {
        v18 = v25[0];
        v19 = *(a6 + 165);
        if (v25[0] > 255)
        {
          if (*(*(v19 + 88) + 60) < 1)
          {
            return 0;
          }

          v21 = largesearch(v10, v25[0]);
          if (!v21 || (v21[1] & 0x80000000) != 0)
          {
            return 0;
          }
        }

        else if ((*(*(v19 + 192) + 40 * v25[0]) & 0x80000000) != 0)
        {
          return 0;
        }

        *a1 = v18;
        return 1;
      }

      *v16 = 0;
      if (*(*(*(a6 + 165) + 88) + 56) >= 1)
      {
        v23 = 0;
        if (chainsearch(v10, v25, &v23))
        {
          v12 = v23;
          if (v23 >= a2)
          {
            v20 = a2;
          }

          else
          {
            v20 = v23;
          }

          wcsncpy(a1, v25, v20);
          return v12;
        }
      }

      return 0;
    }

    return -1;
  }

  if (!a2)
  {
    return -1;
  }

  if (a4 != 1)
  {
    return 0;
  }

  v11 = *a3;
  if (v11 < 0)
  {
    return 0;
  }

  *a1 = v11;
  return 1;
}

uint64_t __collate_equiv_class(char *a1, size_t a2, mbstate_t *a3, _xlocale *a4)
{
  v4 = *(a4 + 165);
  if (*(v4 + 64))
  {
    return 0;
  }

  v6 = a2;
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = 0;
  v19 = 0;
  v11 = v20;
  do
  {
    v12 = mbrtowc_l(&v19, a1, v6, a3, a4);
    if (v12 > 0xFFFFFFFFFFFFFFFDLL)
    {
      return 0xFFFFFFFFLL;
    }

    if (!v12)
    {
      break;
    }

    if (v10 == 24)
    {
      return 0xFFFFFFFFLL;
    }

    *v11++ = v19;
    a1 += v12;
    ++v10;
    v6 -= v12;
  }

  while (v6);
  if (!v10)
  {
    return 0xFFFFFFFFLL;
  }

  if (v10 == 1)
  {
    v13 = *(a4 + 165);
    if (v20[0] <= 255)
    {
      v14 = (*(v13 + 192) + 40 * v20[0]);
      goto LABEL_25;
    }

    if (*(*(v13 + 88) + 60) < 1)
    {
      return 0;
    }

    result = largesearch(v4, v20[0]);
    if (result)
    {
      v14 = (result + 4);
LABEL_25:
      v17 = *v14;
      if (v17)
      {
        return v17 & ~(v17 >> 31);
      }

      else
      {
        return 1;
      }
    }
  }

  else
  {
    *v11 = 0;
    if (*(*(*(a4 + 165) + 88) + 56) < 1)
    {
      return 0;
    }

    result = chainsearch(v4, v20, &v18);
    if (result)
    {
      v15 = *(result + 96);
      v16 = v15 == 0;
      if (v15 < 0)
      {
        v15 = -v15;
      }

      if (v16)
      {
        return 1;
      }

      else
      {
        return v15;
      }
    }
  }

  return result;
}

unint64_t __collate_equiv_match(int a1, uint64_t a2, unint64_t a3, int a4, char *a5, size_t a6, mbstate_t *a7, void *a8, locale_t a9)
{
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v9 = *(a9 + 165);
  if (*(v9 + 64))
  {
    return -1;
  }

  v12 = a8;
  v14 = a6;
  v15 = a5;
  v16 = a2;
  if (a1 == 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = a1;
  }

  v52 = v17;
  if (a7)
  {
    v18 = *(&a7->_mbstateL + 5);
    v59 = *(&a7->_mbstateL + 4);
    v60 = v18;
    v19 = *(&a7->_mbstateL + 7);
    v61 = *(&a7->_mbstateL + 6);
    v62 = v19;
    v20 = *(&a7->_mbstateL + 1);
    v55 = *a7->__mbstate8;
    v56 = v20;
    v21 = *(&a7->_mbstateL + 3);
    v57 = *(&a7->_mbstateL + 2);
    v58 = v21;
  }

  v22 = path;
  if (a4)
  {
    v22 = &v64;
    *path = a4;
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  v54 = 0;
  if (!a6)
  {
    v23 = 0;
    *v22 = 0;
    goto LABEL_25;
  }

  v23 = 0;
  v24 = a6;
  v25 = a5;
  do
  {
    if (v10 >= *(*(*(a9 + 165) + 88) + 11))
    {
      break;
    }

    v26 = mbrtowc_l(&v54, v25, v24, a7, a9);
    if (v26 + 2 < 3)
    {
      break;
    }

    *v22 = v54;
    v22 += 4;
    v25 += v26;
    v23 += v26;
    ++v10;
    v24 -= v26;
  }

  while (v24);
  v53 = 0;
  *v22 = 0;
  v16 = a2;
  if (v10 < 2)
  {
    v12 = a8;
    goto LABEL_25;
  }

  v27 = chainsearch(v9, path, &v53);
  v12 = a8;
  if (!v27)
  {
    goto LABEL_25;
  }

  v28 = v27[24];
  if (v28 < 0)
  {
    v28 = -v28;
  }

  if (v28 != v52)
  {
LABEL_25:
    v30 = *(a9 + 165);
    if (*path > 255)
    {
      if (*(*(v30 + 88) + 60) < 1)
      {
        goto LABEL_39;
      }

      v32 = largesearch(v9, *path);
      if (!v32)
      {
        goto LABEL_39;
      }

      v31 = v32[1];
    }

    else
    {
      v31 = *(*(v30 + 192) + 40 * *path);
    }

    if (v52 == v31)
    {
      v29 = 1;
      goto LABEL_32;
    }

LABEL_39:
    v10 = 0;
    if (a7)
    {
      v40 = v60;
      *(&a7->_mbstateL + 4) = v59;
      *(&a7->_mbstateL + 5) = v40;
      v41 = v62;
      *(&a7->_mbstateL + 6) = v61;
      *(&a7->_mbstateL + 7) = v41;
      v42 = v56;
      *a7->__mbstate8 = v55;
      *(&a7->_mbstateL + 1) = v42;
      v43 = v58;
      *(&a7->_mbstateL + 2) = v57;
      *(&a7->_mbstateL + 3) = v43;
    }

    return v10;
  }

  v29 = v53;
LABEL_32:
  if (v10 > v29)
  {
    v33 = v16;
    v10 = v29;
    if (a7)
    {
      v34 = v60;
      *(&a7->_mbstateL + 4) = v59;
      *(&a7->_mbstateL + 5) = v34;
      v35 = v62;
      *(&a7->_mbstateL + 6) = v61;
      *(&a7->_mbstateL + 7) = v35;
      v36 = v56;
      *a7->__mbstate8 = v55;
      *(&a7->_mbstateL + 1) = v36;
      v37 = v58;
      *(&a7->_mbstateL + 2) = v57;
      *(&a7->_mbstateL + 3) = v37;
    }

    v38 = v29 - (a4 != 0);
    if (v38 < 1)
    {
      v23 = 0;
    }

    else
    {
      v23 = 0;
      do
      {
        --v38;
        v39 = mbrtowc_l(&v54, v15, v14, a7, a9);
        v15 += v39;
        v23 += v39;
        v14 -= v39;
      }

      while (v38);
    }

    v16 = v33;
  }

  if (v16)
  {
    if (v10 > a3)
    {
      if (a7)
      {
        v44 = v60;
        *(&a7->_mbstateL + 4) = v59;
        *(&a7->_mbstateL + 5) = v44;
        v45 = v62;
        *(&a7->_mbstateL + 6) = v61;
        *(&a7->_mbstateL + 7) = v45;
        v46 = v56;
        *a7->__mbstate8 = v55;
        *(&a7->_mbstateL + 1) = v46;
        v47 = v58;
        *(&a7->_mbstateL + 2) = v57;
        *(&a7->_mbstateL + 3) = v47;
      }

      return -1;
    }

    if (v10)
    {
      j__mkdtempat_np(v16, path);
      v10 = 0;
    }
  }

  if (v12)
  {
    *v12 = v23;
  }

  return v10;
}

uint64_t __collate_equiv_wchar(locale_t a1, unsigned int a2, int a3, int a4)
{
  v5 = a3;
  v6 = a2;
  v8 = *(a1 + 165);
  if (*(v8 + 64))
  {
    result = 0xFFFFFFFFLL;
    if (a2 <= 255 && a3 <= 255)
    {
      if (!a4)
      {
        return v6 == v5;
      }

      if (a2 < 0x80)
      {
        if ((_DefaultRuneLocale.__runetype[a2] & 0x1000) == 0)
        {
          v6 = _DefaultRuneLocale.__maplower[a2];
        }

        goto LABEL_31;
      }

      if (a2 < 0x100)
      {
        v20 = &__global_locale;
        if (a1 != -1)
        {
          v20 = a1;
        }

        if ((*(*(*(v20 + 166) + 120) + 4 * a2 + 60) & 0x1000) != 0)
        {
          goto LABEL_31;
        }
      }

      else if ((___runetype_l(a2, a1) & 0x1000) != 0)
      {
        goto LABEL_31;
      }

      v6 = ___tolower_l(v6, a1);
LABEL_31:
      if (v5 < 0x80)
      {
        if ((_DefaultRuneLocale.__runetype[v5] & 0x1000) == 0)
        {
          v5 = _DefaultRuneLocale.__maplower[v5];
        }

        return v6 == v5;
      }

      if (v5 < 0x100)
      {
        v21 = &__global_locale;
        if (a1 != -1)
        {
          v21 = a1;
        }

        if ((*(*(*(v21 + 166) + 120) + 4 * v5 + 60) & 0x1000) != 0)
        {
          return v6 == v5;
        }
      }

      else if ((___runetype_l(v5, a1) & 0x1000) != 0)
      {
        return v6 == v5;
      }

      v5 = ___tolower_l(v5, a1);
      return v6 == v5;
    }
  }

  else
  {
    result = __collate_pri_for (a1, a2);
    if (result)
    {
      v10 = result;
      result = __collate_pri_for (a1, v5);
      if (result)
      {
        v11 = result;
        if (*v10 == *result)
        {
          result = 1;
          if (!a4)
          {
            v12 = **(v8 + 88);
            if (v12 >= 3)
            {
              v13 = 0;
              v14 = v12 - 1;
              v15 = 1;
              do
              {
                v16 = v10[v15];
                if ((v16 & 0x40000000) != 0)
                {
                  v17 = lookup_substsearch(v8, v10[v15], v15);
                  if (!v17)
                  {
                    __collate_equiv_wchar_cold_1();
                  }

                  v16 = *v17;
                }

                v18 = *(v11 + 4 * v15);
                if ((v18 & 0x40000000) != 0)
                {
                  v19 = lookup_substsearch(v8, v18, v15);
                  if (!v19)
                  {
                    __collate_equiv_wchar_cold_2();
                  }

                  v18 = *v19;
                }

                if (v16 != v18)
                {
                  break;
                }

                v13 = ++v15 >= v14;
              }

              while (v14 != v15);
              return v13;
            }
          }
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

uint64_t __collate_pri_for (uint64_t a1, int a2)
{
  v2 = *(a1 + 1320);
  if (*(v2 + 64))
  {
    __collate_pri_for_cold_1();
  }

  if (a2 <= 255)
  {
    return *(v2 + 192) + 40 * a2;
  }

  v4 = largesearch(v2, a2);
  if (v4)
  {
    return (v4 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _collate_wxfrm(uint64_t a1, __int32 *a2, int *a3, uint64_t a4)
{
  if (!a2)
  {
    _collate_wxfrm_cold_1();
  }

  v27 = **(a1 + 88);
  if (!**(a1 + 88))
  {
    v11 = 0;
    v9 = 0;
LABEL_55:
    free(v11);
    return v9;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v29 = 0;
  while (1)
  {
    v28 = 0;
    if (v8)
    {
      if (a4)
      {
        *a3++ = 1;
        --a4;
      }

      ++v10;
    }

    v12 = *(*(a1 + 88) + v8 + 1);
    if ((v12 & 2) != 0)
    {
      free(v11);
      v14 = wcsdup(a2);
      if (!v14)
      {
        *__error() = 12;
        return -1;
      }

      v13 = v14;
      v15 = &v14[wcslen(v14) - 1];
      if (v13 < v15)
      {
        v16 = v13 + 1;
        do
        {
          v17 = *(v16 - 1);
          *(v16 - 1) = *v15;
          *v15-- = v17;
        }

        while (v16++ < v15);
      }

      v11 = v13;
    }

    else
    {
      v13 = a2;
    }

    if (*v13)
    {
      v19 = 0;
    }

    else
    {
      v19 = v28 == 0;
    }

    v20 = !v19;
    if ((v12 & 4) == 0)
    {
      if (v20)
      {
        do
        {
          while (1)
          {
            _collate_lookup(a1, v13, &v29, &v29 + 1, v8, &v28);
            v13 += v29;
            if (v29 <= 0)
            {
              break;
            }

            if (a4)
            {
              *a3++ = HIDWORD(v29);
              --a4;
            }

            v9 = v10 + 1;
            if (*v13)
            {
              v21 = 0;
            }

            else
            {
              v21 = v28 == 0;
            }

            ++v10;
            if (v21)
            {
              goto LABEL_49;
            }
          }

          if (v29 < 0)
          {
            goto LABEL_51;
          }

          v28 = 0;
        }

        while (*v13);
      }

      goto LABEL_49;
    }

    if (v20)
    {
      break;
    }

LABEL_49:
    if (++v8 == v27)
    {
      goto LABEL_55;
    }
  }

  while (1)
  {
    _collate_lookup(a1, v13, &v29, &v29 + 1, v8, &v28);
    v22 = HIDWORD(v29);
    v23 = v29;
    if (v29 <= 0)
    {
      break;
    }

    if (a4)
    {
      goto LABEL_39;
    }

LABEL_40:
    v13 += v23;
    ++v10;
    if (*v13)
    {
      v24 = 0;
    }

    else
    {
      v24 = v28 == 0;
    }

    v9 = v10;
    if (v24)
    {
      goto LABEL_49;
    }
  }

  if ((v29 & 0x8000000000000000) == 0)
  {
    v28 = 0;
    v22 = 0x7FFFFFFF;
    HIDWORD(v29) = 0x7FFFFFFF;
    if (!a4)
    {
      goto LABEL_40;
    }

LABEL_39:
    *a3++ = v22;
    --a4;
    goto LABEL_40;
  }

LABEL_51:
  *__error() = 22;
  if (v11)
  {
    v25 = *__error();
    free(v11);
    *__error() = v25;
  }

  return -1;
}

uint64_t _collate_sxfrm(uint64_t a1, const __int32 *a2, _BYTE *a3, uint64_t a4)
{
  if (!a2)
  {
    _collate_sxfrm_cold_1();
  }

  v31 = **(a1 + 88);
  if (!**(a1 + 88))
  {
    v33 = 0;
    v8 = 0;
LABEL_63:
    free(v33);
    return v8;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v33 = 0;
  v36 = 0;
  while (1)
  {
    v35 = 0;
    if (v7)
    {
      if (a4)
      {
        *a3++ = 46;
        --a4;
      }

      ++v9;
    }

    v10 = *(*(a1 + 88) + v7 + 1);
    if ((v10 & 2) != 0)
    {
      free(v33);
      v12 = wcsdup(a2);
      if (!v12)
      {
        *__error() = 12;
        return -1;
      }

      v11 = v12;
      v13 = &v12[wcslen(v12) - 1];
      if (v11 < v13)
      {
        v14 = v11 + 1;
        do
        {
          v15 = *(v14 - 1);
          *(v14 - 1) = *v13;
          *v13-- = v15;
        }

        while (v14++ < v13);
      }

      v33 = v11;
    }

    else
    {
      v11 = a2;
    }

    if (*v11)
    {
      v17 = 0;
    }

    else
    {
      v17 = v35 == 0;
    }

    v18 = !v17;
    if ((v10 & 4) == 0)
    {
      if (v18)
      {
        do
        {
          while (1)
          {
            _collate_lookup(a1, v11, &v36, &v36 + 1, v7, &v35);
            v19 = HIDWORD(v36);
            v11 += v36;
            if (v36 <= 0)
            {
              break;
            }

            v20 = *(*(a1 + 88) + 4 * v7 + 12);
            if (v20)
            {
              v21 = 0;
              do
              {
                v34[v21 + 1] = (v19 & 0x3F) + 48;
                v19 >>= 6;
                ++v21;
                v22 = v20 > 0x3F;
                v20 >>= 6;
              }

              while (v22);
              v9 += v21;
              if (a4)
              {
                do
                {
                  if (a4)
                  {
                    *a3++ = v34[v21];
                    --a4;
                  }

                  --v21;
                }

                while (v21);
              }
            }

            if (*v11)
            {
              v23 = 0;
            }

            else
            {
              v23 = v35 == 0;
            }

            v8 = v9;
            if (v23)
            {
              goto LABEL_57;
            }
          }

          if (v36 < 0)
          {
            goto LABEL_59;
          }

          v35 = 0;
        }

        while (*v11);
      }

      goto LABEL_57;
    }

    if (v18)
    {
      break;
    }

LABEL_57:
    if (++v7 == v31)
    {
      goto LABEL_63;
    }
  }

  while (1)
  {
    _collate_lookup(a1, v11, &v36, &v36 + 1, v7, &v35);
    v24 = HIDWORD(v36);
    v25 = v36;
    if (SHIDWORD(v36) > 0)
    {
      goto LABEL_45;
    }

    if (v36 < 0)
    {
      break;
    }

    v35 = 0;
    v24 = 0x7FFFFFFF;
    HIDWORD(v36) = 0x7FFFFFFF;
LABEL_45:
    v26 = *(*(a1 + 88) + 4 * v7 + 12);
    if (v26)
    {
      v27 = 0;
      do
      {
        v34[v27 + 1] = (v24 & 0x3F) + 48;
        v24 >>= 6;
        ++v27;
        v22 = v26 > 0x3F;
        v26 >>= 6;
      }

      while (v22);
      v9 += v27;
      if (a4)
      {
        do
        {
          if (a4)
          {
            *a3++ = v34[v27];
            --a4;
          }

          --v27;
        }

        while (v27);
      }
    }

    v11 += v25;
    if (*v11)
    {
      v28 = 0;
    }

    else
    {
      v28 = v35 == 0;
    }

    v8 = v9;
    if (v28)
    {
      goto LABEL_57;
    }
  }

LABEL_59:
  *__error() = 22;
  if (v33)
  {
    v29 = *__error();
    free(v33);
    *__error() = v29;
  }

  return -1;
}

uint64_t __collate_equiv_value(uint64_t a1, __int32 *a2, size_t a3)
{
  if (a3 - 24 < 0xFFFFFFFFFFFFFFE9)
  {
    return 0;
  }

  v5 = *(a1 + 1320);
  if (!*(v5 + 64))
  {
    if (a3 == 1)
    {
      result = __collate_pri_for (a1, *a2);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      if (*(*(v5 + 88) + 56) < 1)
      {
        return 0;
      }

      wcsncpy(v8, a2, a3);
      v8[a3] = 0;
      result = chainsearch(v5, v8, &v7);
      if (!result)
      {
        return result;
      }

      if (!*(result + 96))
      {
        return 0;
      }
    }

    return *a2;
  }

  if (a3 != 1)
  {
    return 0;
  }

  if (*a2 >= 256)
  {
    return 0;
  }

  else
  {
    return *a2;
  }
}

uint64_t __collate_range_cmp(int a1, int a2, _xlocale *a3)
{
  __collate_range_cmp_s1 = a1;
  __collate_range_cmp_s2 = a2;
  return wcscoll_l(&__collate_range_cmp_s1, &__collate_range_cmp_s2, a3);
}

uint64_t _EUC_CN_init(void *a1)
{
  v1 = a1[15];
  *(v1 + 3184) = 0;
  *(v1 + 3192) = 0;
  a1[9] = _EUC_CN_mbrtowc;
  a1[12] = _EUC_CN_wcrtomb;
  a1[11] = _EUC_CN_mbsnrtowcs;
  a1[13] = _EUC_CN_wcsnrtombs;
  a1[10] = _EUC_mbsinit;
  a1[8] = 0x8000000002;
  return 0;
}

uint64_t _EUC_KR_init(void *a1)
{
  v1 = a1[15];
  *(v1 + 3184) = 0;
  *(v1 + 3192) = 0;
  a1[9] = _EUC_KR_mbrtowc;
  a1[12] = _EUC_KR_wcrtomb;
  a1[11] = _EUC_KR_mbsnrtowcs;
  a1[13] = _EUC_KR_wcsnrtombs;
  a1[10] = _EUC_mbsinit;
  a1[8] = 0x8000000002;
  return 0;
}

uint64_t _EUC_JP_init(void *a1)
{
  v1 = a1[15];
  *(v1 + 3184) = 0;
  *(v1 + 3192) = 0;
  a1[9] = _EUC_JP_mbrtowc;
  a1[12] = _EUC_JP_wcrtomb;
  a1[11] = _EUC_JP_mbsnrtowcs;
  a1[13] = _EUC_JP_wcsnrtombs;
  a1[10] = _EUC_mbsinit;
  a1[8] = 0x8000000003;
  return 0;
}

uint64_t _EUC_init(void *a1)
{
  v1 = a1[15];
  *(v1 + 3184) = 0;
  *(v1 + 3192) = 0;
  a1[9] = _EUC_JP_mbrtowc;
  a1[12] = _EUC_JP_wcrtomb;
  a1[11] = _EUC_JP_mbsnrtowcs;
  a1[13] = _EUC_JP_wcsnrtombs;
  a1[10] = _EUC_mbsinit;
  a1[8] = 0x10000000003;
  return 0;
}

uint64_t _EUC_TW_init(void *a1)
{
  v1 = a1[15];
  *(v1 + 3184) = 0;
  *(v1 + 3192) = 0;
  a1[9] = _EUC_TW_mbrtowc;
  a1[12] = _EUC_TW_wcrtomb;
  a1[11] = _EUC_TW_mbsnrtowcs;
  a1[13] = _EUC_TW_wcsnrtombs;
  a1[10] = _EUC_mbsinit;
  a1[8] = 0x8000000004;
  return 0;
}

uint64_t _EUC_mbrtowc_impl(_DWORD *a1, const char *a2, unint64_t a3, int *a4, int a5, unsigned int a6, int a7, unsigned int a8, uint64_t a9)
{
  v9 = a4[1];
  if ((v9 & 0x80000000) != 0 || v9 > *(*(a9 + 1328) + 64))
  {
    v10 = __error();
    v11 = 22;
LABEL_4:
    *v10 = v11;
    return -1;
  }

  if (!a2)
  {
    a3 = 1;
  }

  if (a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = "";
  }

  if (a2)
  {
    v15 = a1;
  }

  else
  {
    v15 = 0;
  }

  if (!a3)
  {
    return -2;
  }

  if (v9)
  {
    v16 = *a4;
  }

  else
  {
    v22 = *v14;
    if ((*v14 & 0x80000000) == 0)
    {
      if (v15)
      {
        *v15 = v22;
      }

      return v22 != 0;
    }

    if (v22 < 0xA1)
    {
      v9 = a6;
      if (v22 != a5)
      {
        v9 = a8;
        if (v22 != a7)
        {
          v10 = __error();
          v11 = 92;
          goto LABEL_4;
        }
      }

      v16 = 0;
      v21 = 0;
      LODWORD(v17) = 0;
      v19 = 0;
      *a4 = 0;
      if (!v9)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v16 = 0;
      *a4 = 0;
      v9 = 2;
    }
  }

  if (a3 >= v9)
  {
    v17 = v9;
  }

  else
  {
    v17 = a3;
  }

  v18 = v17;
  v19 = v16;
  do
  {
    v20 = *v14++;
    v19 = v20 | (v19 << 8);
    --v18;
  }

  while (v18);
  v21 = v9;
LABEL_23:
  if (v21 > v17)
  {
    *a4 = v19;
    a4[1] = v21 - v17;
    *__error() = 92;
    return -2;
  }

  if (v15)
  {
    *v15 = v19;
  }

  a4[1] = 0;
  if (v19)
  {
    return v21;
  }

  else
  {
    return 0;
  }
}

uint64_t _EUC_wcrtomb_impl(_BYTE *a1, int a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  if (*(a3 + 4))
  {
    v7 = __error();
    v8 = 22;
LABEL_3:
    *v7 = v8;
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

  if (a2 <= 0xFF)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  if (HIWORD(a2))
  {
    v12 = 3;
  }

  else
  {
    v12 = v11;
  }

  v13 = __locale_key;
  v14 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v13);
  if (HIBYTE(a2))
  {
    result = 4;
  }

  else
  {
    result = v12;
  }

  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = &__global_locale;
  }

  if (result > *(v15[166] + 64))
  {
LABEL_21:
    v7 = __error();
    v8 = 92;
    goto LABEL_3;
  }

  if ((a2 - 0x10000) <= 0xFFFFA0FF)
  {
    v16 = (a2 >> (8 * result - 8));
    if (v16 == a4)
    {
      if (result != a5)
      {
        goto LABEL_21;
      }
    }

    else if (v16 != a6 || result != a7)
    {
      goto LABEL_21;
    }
  }

  v17 = a1 - 1;
  v18 = result;
  do
  {
    v17[v18] = a2;
    a2 >>= 8;
  }

  while (v18-- > 1);
  return result;
}

unsigned __int8 *__fix_locale_grouping_str(unsigned __int8 *result)
{
  if (!result)
  {
    return &nogrouping;
  }

  v1 = *result;
  if (!*result)
  {
    return &nogrouping;
  }

  v2 = result;
  v3 = result;
  while (v1 == 45)
  {
    v7 = *++v2;
    if (v7 != 49)
    {
      return &nogrouping;
    }

    *v3++ = 127;
LABEL_16:
    v8 = *++v2;
    v1 = v8;
  }

  if (v1 == 59)
  {
    goto LABEL_16;
  }

  if (!v1)
  {
    *v3 = 0;
    return result;
  }

  if (v1 - 48 > 9)
  {
    return &nogrouping;
  }

  v4 = v1 - 48;
  v5 = v2[1];
  v6 = v5 + 10 * v1 - 16;
  if ((v5 - 48) >= 0xA)
  {
    v6 = v4;
  }

  *v3 = v6;
  if (v6)
  {
    if ((v5 - 48) < 0xA)
    {
      ++v2;
    }

    ++v3;
    goto LABEL_16;
  }

  if (v3 == result)
  {
    return &nogrouping;
  }

  return result;
}