uint64_t first_wday_of(int a1)
{
  v1 = a1 % 100;
  HIDWORD(v2) = -1030792151 * a1 + 85899344;
  LODWORD(v2) = HIDWORD(v2);
  if ((v2 >> 4) >= 0xA3D70B)
  {
    v3 = 0;
  }

  else
  {
    v3 = 6;
  }

  if (v1)
  {
    v4 = 6;
  }

  else
  {
    v4 = v3;
  }

  if ((a1 & 3) != 0)
  {
    v4 = 0;
  }

  v5 = (a1 / 100) & 3;
  if (a1 / -100 >= 0)
  {
    v5 = -((a1 / -100) & 3);
  }

  return ((v1 - 2 * v5 + ((v1 + ((v1 >> 13) & 3)) >> 2) + v4 + 7) % 7);
}

uint64_t timeoff(_DWORD *a1, uint64_t a2)
{
  if (a1)
  {
    a1[8] = 0;
  }

  return _st_time1(a1, gmtsub, a2, 1);
}

int sigaltstack(const stack_t *a1, stack_t *a2)
{
  if (!a1 || a1->ss_size >> 15)
  {

    return MEMORY[0x1EEE72268]();
  }

  else
  {
    *__error() = 12;
    return -1;
  }
}

uint64_t sigvec__(uint64_t a1, const sigaction *a2, sigaction *a3, int a4)
{
  if (a2)
  {
    a2->sa_flags ^= 2u;
  }

  if (a4)
  {
    result = sigaction(a1, a2, a3);
    if (!a3)
    {
      return result;
    }
  }

  else
  {
    result = _sigaction_nobind(a1, a2, a3);
    if (!a3)
    {
      return result;
    }
  }

  if (!result)
  {
    a3->sa_flags ^= 2u;
  }

  return result;
}

int sigsetmask(int a1)
{
  v3 = a1;
  v2 = 0;
  result = sigprocmask(3, &v3, &v2);
  if (!result)
  {
    return v2;
  }

  return result;
}

int sigblock(int a1)
{
  v3 = a1;
  v2 = 0;
  result = sigprocmask(1, &v3, &v2);
  if (!result)
  {
    return v2;
  }

  return result;
}

uint64_t sigpause_NOCANCEL(int a1)
{
  v1 = a1;
  if (!*MEMORY[0x1E69E9B90])
  {
    *MEMORY[0x1E69E9B90] = 1;
  }

  v3 = 0;
  if ((a1 - 32) > 0xFFFFFFE0)
  {
    if ((sigprocmask(1, 0, &v3) & 0x80000000) == 0)
    {
      v3 &= ~(1 << (v1 - 1));
      return sigsuspend_NOCANCEL();
    }
  }

  else
  {
    *__error() = 22;
  }

  return 0xFFFFFFFFLL;
}

int sighold(int a1)
{
  if ((a1 - 32) > 0xFFFFFFE0)
  {
    v2 = 1 << (a1 - 1);
    return sigprocmask(1, &v2, 0);
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

int sigrelse(int a1)
{
  if ((a1 - 32) > 0xFFFFFFE0)
  {
    v2 = 1 << (a1 - 1);
    return sigprocmask(2, &v2, 0);
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

int sigignore(int a1)
{
  if (signal(a1, 1) == -1)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

void (__cdecl *__cdecl sigset(int a1, void (__cdecl *a2)(int)))(int)
{
  v9 = 0;
  v8.__sigaction_u.__sa_handler = 0;
  *&v8.sa_mask = 0;
  if ((a1 - 32) <= 0xFFFFFFE0)
  {
    *__error() = 22;
    return -1;
  }

  if (sigprocmask(0, 0, &v9) == -1)
  {
    return -1;
  }

  v4 = v9 & (1 << (a1 - 1));
  if (a2 == 5)
  {
    if (v4)
    {
      return 5;
    }

    if (sigaction(a1, 0, &v8) != -1 && sighold(a1) != -1)
    {
      return v8.__sigaction_u.__sa_handler;
    }

    return -1;
  }

  if (v4 && sigrelse(a1) == -1)
  {
    return -1;
  }

  v5 = signal(a1, a2);
  v6 = 5;
  if (!v4)
  {
    v6 = v5;
  }

  if (v5 == -1)
  {
    return -1;
  }

  else
  {
    return v6;
  }
}

int clock_getres(clockid_t __clock_id, timespec *__res)
{
  if (__clock_id > _CLOCK_THREAD_CPUTIME_ID)
  {
    goto LABEL_4;
  }

  if (((1 << __clock_id) & 0x10330) != 0)
  {
    info = 0;
    result = mach_timebase_info(&info);
    if (result)
    {
LABEL_4:
      *__error() = 22;
      return -1;
    }

    v4 = info.numer / info.denom;
    if (info.numer % info.denom)
    {
      v5 = v4 + 1;
    }

    else
    {
      v5 = v4;
    }

    __res->tv_sec = 0;
    __res->tv_nsec = v5;
  }

  else
  {
    if (((1 << __clock_id) & 0x1041) == 0)
    {
      goto LABEL_4;
    }

    result = 0;
    *__res = xmmword_18E989800;
  }

  return result;
}

int clock_settime(clockid_t __clock_id, const timespec *__tp)
{
  if (__clock_id)
  {
    *__error() = 22;
    return -1;
  }

  else
  {
    tv_nsec = __tp->tv_nsec;
    v4.tv_sec = __tp->tv_sec;
    *&v4.tv_usec = (tv_nsec / 1000);
    return settimeofday(&v4, 0);
  }
}

uint64_t _boottime_fallback_usec()
{
  v2 = 0;
  v3 = 0;
  v1 = 16;
  if (sysctlbyname("kern.boottime", &v2, &v1, 0, 0) == -1)
  {
    return 0;
  }

  else
  {
    return v3 + 1000000 * v2;
  }
}

void *__cdecl sbrk(int a1)
{
  if ((sbrk_needs_init & 1) == 0)
  {
    sbrk_needs_init = 1;
    if (vm_allocate(*MEMORY[0x1E69E9A60], &sbrk_curbrk, sbrk_region_size, 83886081))
    {
      goto LABEL_5;
    }
  }

  if (a1 <= 0)
  {
    return sbrk_curbrk;
  }

  if (sbrk_region_size < a1)
  {
LABEL_5:
    *__error() = 12;
    return -1;
  }

  result = sbrk_curbrk;
  sbrk_curbrk += a1;
  sbrk_region_size -= a1;
  return result;
}

void (__cdecl *__cdecl bsd_signal(int a1, void (__cdecl *a2)(int)))(int)
{
  v4.__sigaction_u.__sa_handler = 0;
  *&v4.sa_mask = 0;
  v5.__sigaction_u.__sa_handler = a2;
  v2 = 1 << (a1 - 1);
  if (a1 > 32)
  {
    v2 = 0;
  }

  v5.sa_mask = v2;
  v5.sa_flags = 2;
  if (sigaction(a1, &v5, &v4) == -1)
  {
    return -1;
  }

  else
  {
    return v4.__sigaction_u.__sa_handler;
  }
}

char *strtoencf16(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  if (!v4)
  {
    v4 = &__global_locale;
  }

  v12 = 0uLL;
  v7 = xmmword_18E989810;
  v8 = 0x5FFFFFFF9;
  LODWORD(v9) = 22;
  *(&v9 + 1) = a1;
  *&v10 = a2;
  *(&v10 + 1) = a3;
  *&v11 = v4;
  v13 = 0uLL;
  result = fastParse64(&v7);
  if (result)
  {
    v6 = fegetround();
    return generalSlowpath(&v7, v6, v14, 8);
  }

  return result;
}

uint64_t strtoencf32(float *a1, uint64_t a2, uint64_t a3)
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

  return _ffpp_strtoencf32_l(a1, a2, a3, v5);
}

uint64_t strtoencf64(double *a1, uint64_t a2, uint64_t a3)
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

  return _ffpp_strtoencf64_l(a1, a2, a3, v5);
}

uint64_t strtoencf64x(double *a1, uint64_t a2, uint64_t a3)
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

  return _ffpp_strtoencf64_l(a1, a2, a3, v5);
}

long double strtold(const char *a1, char **a2)
{
  v6 = 0.0;
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

  _ffpp_strtoencf64_l(&v6, a1, a2, v4);
  return v6;
}

long double strtold_l(const char *a1, char **a2, locale_t a3)
{
  v4 = 0.0;
  _ffpp_strtoencf64_l(&v4, a1, a2, a3);
  return v4;
}

uint64_t underflow(uint64_t a1)
{
  *__error() = 34;
  result = fegetround();
  if (result == 0x400000)
  {
    if ((*(a1 + 96) & 1) == 0)
    {
LABEL_4:
      v3 = 1;
      goto LABEL_7;
    }
  }

  else if (result == 0x800000 && (*(a1 + 96) & 1) != 0)
  {
    goto LABEL_4;
  }

  v3 = 0;
LABEL_7:
  v4 = *(a1 + 12);
  switch(v4)
  {
    case 8:
      v7 = 0x8000000000000000;
      if (!*(a1 + 96))
      {
        v7 = 0;
      }

      **(a1 + 32) = v7 | v3;
      break;
    case 4:
      if (*(a1 + 96))
      {
        v6 = 0x80000000;
      }

      else
      {
        v6 = 0;
      }

      **(a1 + 32) = v6 | v3;
      break;
    case 2:
      if (*(a1 + 96))
      {
        v5 = 0x8000;
      }

      else
      {
        v5 = 0;
      }

      **(a1 + 32) = v5 | v3;
      break;
  }

  return result;
}

uint64_t addToMP(uint64_t result, unint64_t a2)
{
  v2 = *result;
  if (a2)
  {
    v3 = *(result + 8);
    do
    {
      if (v2 >= v3)
      {
        break;
      }

      v4 = a2 + *v2;
      *v2++ = v4;
      a2 = HIDWORD(v4);
    }

    while (HIDWORD(v4));
    for (; a2; a2 >>= 32)
    {
      *v2++ = a2;
    }
  }

  if (v2 > *(result + 8))
  {
    *(result + 8) = v2;
  }

  return result;
}

int lchflags(const char *a1, __uint32_t a2)
{
  v5 = a2;
  v3 = xmmword_18E989FA8;
  v4 = 0;
  return setattrlist(a1, &v3, &v5, 4uLL, 1u);
}

int lchmod(const char *a1, mode_t a2)
{
  v4[1] = 0;
  v4[2] = 0;
  v4[0] = 0x2000000000005;
  v3 = a2;
  return setattrlist(a1, v4, &v3, 4uLL, 1u);
}

int lutimes(const char *a1, const timeval *a2)
{
  memset(&v12, 0, sizeof(v12));
  v9 = 0u;
  v10 = 0u;
  if ((lstat(a1, &v12) & 0x80000000) == 0)
  {
    if ((v12.st_mode & 0xF000) != 0xA000)
    {
      return utimes(a1, a2);
    }

    v11[1] = 0;
    v11[2] = 0;
    v11[0] = 0x140000000005;
    if (a2)
    {
      v4 = 1000 * a2->tv_usec;
      *&v10 = a2->tv_sec;
      *(&v10 + 1) = v4;
      tv_sec = a2[1].tv_sec;
      v6 = 1000 * a2[1].tv_usec;
LABEL_8:
      *&v9 = tv_sec;
      *(&v9 + 1) = v6;
      return setattrlist(a1, v11, &v9, 0x20uLL, 1u);
    }

    v8.tv_sec = 0;
    *&v8.tv_usec = 0;
    if ((gettimeofday(&v8, 0) & 0x80000000) == 0)
    {
      tv_sec = v8.tv_sec;
      v6 = 1000 * v8.tv_usec;
      *&v10 = v8.tv_sec;
      *(&v10 + 1) = v6;
      goto LABEL_8;
    }
  }

  return -1;
}

int fstatvfs(int a1, statvfs *a2)
{
  memset(&v9, 0, 512);
  result = fstatfs(a1, &v9);
  if (!result)
  {
    f_bsize = v9.f_bsize;
    a2->f_bsize = v9.f_iosize;
    a2->f_frsize = f_bsize;
    *&a2->f_blocks = vuzp1q_s32(*&v9.f_blocks, *&v9.f_bavail);
    f_ffree = v9.f_ffree;
    v6 = v9.f_fsid.val[0];
    a2->f_ffree = v9.f_ffree;
    a2->f_favail = f_ffree;
    a2->f_namemax = 255;
    f_flags = v9.f_flags;
    v8 = v9.f_flags & 1;
    a2->f_fsid = v6;
    a2->f_flag = v8;
    if ((f_flags & 8) != 0)
    {
      a2->f_flag = v8 | 2;
    }
  }

  return result;
}

int statvfs(const char *a1, statvfs *a2)
{
  memset(&v9, 0, 512);
  result = statfs(a1, &v9);
  if (!result)
  {
    f_bsize = v9.f_bsize;
    a2->f_bsize = v9.f_iosize;
    a2->f_frsize = f_bsize;
    *&a2->f_blocks = vuzp1q_s32(*&v9.f_blocks, *&v9.f_bavail);
    f_ffree = v9.f_ffree;
    v6 = v9.f_fsid.val[0];
    a2->f_ffree = v9.f_ffree;
    a2->f_favail = f_ffree;
    a2->f_namemax = 255;
    f_flags = v9.f_flags;
    v8 = v9.f_flags & 1;
    a2->f_fsid = v6;
    a2->f_flag = v8;
    if ((f_flags & 8) != 0)
    {
      a2->f_flag = v8 | 2;
    }
  }

  return result;
}

uint64_t (*backtrace_set_pcs_func(uint64_t (*result)(uint64_t a1, int a2, unsigned int *a3, int a4, uintptr_t a5)))(uint64_t a1, int a2, unsigned int *a3, int a4, uintptr_t a5)
{
  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = _thread_stack_pcs;
  }

  backtrace_get_pcs_func = v1;
  return result;
}

size_t backtrace_async(void **array, size_t length, uint32_t *task_id)
{
  v9 = 0;
  v5 = _thread_stack_async_pcs(array, length, &v9, 1, 0);
  LODWORD(v6) = v9;
  if (!v9)
  {
    v6 = 0;
    if (!task_id)
    {
      return v6;
    }

    goto LABEL_6;
  }

  while (1)
  {
    v7 = (v6 - 1);
    if (array[v7])
    {
      break;
    }

    LODWORD(v6) = v6 - 1;
    if (!v7)
    {
      LODWORD(v6) = 0;
      break;
    }
  }

  v6 = v6;
  if (task_id)
  {
LABEL_6:
    *task_id = v5;
  }

  return v6;
}

int backtrace_from_fp(void *startfp, void **array, int size)
{
  v6 = 0;
  _thread_stack_pcs(array, size, &v6, 1, startfp);
  result = v6;
  if (v6)
  {
    while (1)
    {
      v5 = (result - 1);
      if (array[v5])
      {
        break;
      }

      --result;
      if (!v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void backtrace_symbols_fd(void *const *a1, int a2, int a3)
{
  v7 = v11;
  v9 = "\n";
  v10 = 1;
  if (a2 >= 1)
  {
    v4 = 0;
    v5 = a2;
    do
    {
      memset(&v6, 0, sizeof(v6));
      dladdr(a1[v4], &v6);
      v8 = _backtrace_snprintf(v11, 0x400uLL, v4, a1[v4], &v6);
      writev_NOCANCEL();
      ++v4;
    }

    while (v5 != v4);
  }
}

char *__cdecl crypt(const char *a1, const char *a2)
{
  v4 = 0;
  v31 = 0;
  do
  {
    v5 = 2 * *a1;
    if (*a1)
    {
      ++a1;
    }

    *(&v31 + v4++) = v5;
  }

  while (v4 != 8);
  v30 = 0;
  __crypt_des_setkey(&v31);
  v6 = cryptresult;
  if (*a2 == 95)
  {
    if (*a1)
    {
      do
      {
        __crypt_des_cipher(&v31, &v31, 0, 1);
        for (i = 0; i != 8; ++i)
        {
          v8 = *a1;
          if (*a1)
          {
            ++a1;
          }

          *(&v31 + i) ^= 2 * v8;
        }

        __crypt_des_setkey(&v31);
      }

      while (*a1);
      v9 = *a2;
    }

    else
    {
      v9 = 95;
    }

    v10 = 0;
    cryptresult[0] = v9;
    v12 = 4u;
    do
    {
      v13 = a2[v12];
      if (!a2[v12])
      {
        v13 = 46;
      }

      cryptresult[v12] = v13;
      v10 = a64toi[v13] | (v10 << 6);
    }

    while (v12-- > 1);
    a2 += 5;
    v6 = &byte_1EAC9E15D;
    v11 = 4;
  }

  else
  {
    v10 = 25;
    v11 = 2;
  }

  v15 = 0;
  v16 = v11 - 1;
  do
  {
    v17 = a2[v16];
    if (!a2[v16])
    {
      v17 = 46;
    }

    v6[v16] = v17;
    v15 = a64toi[v17] | (v15 << 6);
    v18 = v16-- + 1;
  }

  while (v18 > 1);
  __crypt_des_cipher(&constdatablock, &v30, v15, v10);
  v19 = &v6[v11];
  v20 = v30;
  v21 = (BYTE1(v30) << 8) | (v30 << 16);
  v22 = BYTE2(v30) | (BYTE1(v30) << 8);
  v19[3] = itoa64[BYTE2(v30) & 0x3F];
  v19[2] = itoa64[(v22 >> 6) & 0x3F];
  v19[1] = itoa64[(v21 >> 12) & 0x3F];
  *v19 = itoa64[v20 >> 2];
  v23 = BYTE3(v30);
  v24 = (BYTE4(v30) << 8) | (BYTE3(v30) << 16);
  v25 = itoa64[((BYTE5(v30) | (BYTE4(v30) << 8)) >> 6) & 0x3F];
  v19[7] = itoa64[BYTE5(v30) & 0x3F];
  v19[6] = v25;
  v19[5] = itoa64[(v24 >> 12) & 0x3F];
  v19[4] = itoa64[v23 >> 2];
  v26 = BYTE6(v30);
  LODWORD(v20) = 4 * HIBYTE(v30);
  v27 = v20 | (BYTE6(v30) << 10);
  v19[10] = itoa64[v20 & 0x3C];
  v28 = itoa64[v26 >> 2];
  v19[9] = itoa64[(v27 >> 6) & 0x3F];
  v19[8] = v28;
  result = cryptresult;
  v19[11] = 0;
  return result;
}

uint64_t __crypt_des_setkey(unsigned __int8 *a1)
{
  if ((__crypt_des_setkey_des_ready & 1) == 0)
  {
    v2 = 0;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    do
    {
      if (((0x303030300000000uLL >> v2) & 1) == 0)
      {
        v3 = PC2[v2];
        HIDWORD(v4) = -1227133513 * v3;
        LODWORD(v4) = -1227133513 * v3;
        if ((v4 >> 2) < 0x924924A)
        {
          v3 -= 28;
        }

        *(&v50 + v2) = ((PC1[v3] - 1) ^ 7) + 1;
      }

      ++v2;
    }

    while (v2 != 64);
    PC1ROT = malloc_type_calloc(8uLL, 0x100uLL, 0x100004000313F17uLL);
    PC2ROT[0] = malloc_type_calloc(8uLL, 0x100uLL, 0x100004000313F17uLL);
    qword_1EAC9E210 = malloc_type_calloc(8uLL, 0x100uLL, 0x100004000313F17uLL);
    init_perm(PC1ROT, &v50);
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = 0;
      v8 = v6;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      do
      {
        if (((0x303030300000000uLL >> v7) & 1) == 0)
        {
          *(&v46 + PC2[v7] - 1) = v7 + 1;
        }

        ++v7;
      }

      while (v7 != 64);
      for (i = 0; i != 64; ++i)
      {
        if (((0x303030300000000uLL >> i) & 1) == 0)
        {
          v10 = v5 + PC2[i];
          if (v10 % 0x1C <= v5)
          {
            v10 -= 28;
          }

          *(&v50 + i) = *(&v46 + v10);
        }
      }

      init_perm(PC2ROT[v5], &v50);
      v6 = 0;
      v5 = 1;
    }

    while ((v8 & 1) != 0);
    v11 = 0;
    v12 = &IP[62];
    v13 = &v50;
    do
    {
      for (j = 0; j != 8; ++j)
      {
        if (j >= 2)
        {
          v16 = v12[j] - 1;
          v17 = IP[v16];
          if ((0xF0F0F0F0F0F0F0FuLL >> v16))
          {
            v18 = -32;
          }

          else
          {
            v18 = -1;
          }

          v19 = __OFADD__(v18, v17);
          v21 = v18 + v17;
          v20 = (v21 < 0) ^ v19 | (v21 == 0);
          v22 = (v21 - 1) ^ 7;
          if (v20)
          {
            v15 = 0;
          }

          else
          {
            v15 = v22 + 1;
          }
        }

        else
        {
          v15 = 0;
        }

        *(v13 + j) = v15;
      }

      ++v11;
      v13 = (v13 + 8);
      v12 += 6;
    }

    while (v11 != 8);
    IE3264 = malloc_type_calloc(8uLL, 0x80uLL, 0x100004000313F17uLL);
    init_perm(IE3264, &v50);
    for (k = 0; k != 64; *(&v50 + v24) = k)
    {
      v24 = (IP[CIFP[k++] - 1] - 1) ^ 7;
    }

    CF6464 = malloc_type_calloc(8uLL, 0x100uLL, 0x100004000313F17uLL);
    v25 = malloc_type_calloc(8uLL, 0x400uLL, 0x100004000313F17uLL);
    SPE = v25;
    init_perm(CF6464, &v50);
    for (m = 0; m != 48; ++m)
    {
      *(&v50 + m) = P32Tr[ExpandTr[m] - 1];
    }

    for (n = 0; n != 8; ++n)
    {
      v28 = 0;
      v29 = n << 6;
      do
      {
        v30 = 0;
        v46 = 0uLL;
        v47 = 0uLL;
        v31 = vdupq_n_s64(__rbit32(S[64 * n + (v28 & 4 | (8 * ((v28 >> 1) & 1)) & 0xFFFFFFFFFFFFFFDCLL | (32 * (v28 & 1)) | (v28 >> 2) & 2 | (v28 >> 4) & 1 | (v28 >> 1) & 0x10)]) >> 28);
        *(&v46 + n) = vuzp1_s8((*&vmovn_s32(vuzp1q_s32(vshlq_u64(v31, xmmword_18E989FE0), vshlq_u64(v31, xmmword_18E989FD0))) & 0xFFF1FFF1FFF1FFF1), 0).u32[0];
        v32 = 23;
        do
        {
          v33 = v30;
          v30 = *(&v46 + *(&v50 + v32) - 1) | (2 * v30);
          v34 = v32-- + 1;
        }

        while (v34 > 1);
        v35 = 0;
        v25[v28 + v29] = 4 * ((32 * v33) & 0x3F0000 | (((v33 >> 17) & 0x3F) << 24) | v30 & 0x3F | (((v30 >> 6) & 0x3F) << 8));
        v36 = 47;
        do
        {
          v37 = v35;
          v35 = *(&v46 + *(&v50 + v36) - 1) | (2 * v35);
          v38 = v36 - 23;
          --v36;
        }

        while (v38 > 1);
        v25[v28 + 512 + v29] = 4 * ((32 * v37) & 0x3F0000 | (((v37 >> 17) & 0x3F) << 24) | v35 & 0x3F | (((v35 >> 6) & 0x3F) << 8));
        ++v28;
      }

      while (v28 != 64);
    }

    __crypt_des_setkey_des_ready = 1;
  }

  *&v50 = 0;
  permute(a1, &v50, PC1ROT, 8);
  v39 = v50;
  KS = v50 & 0xFFFFFFFFFCFCFCFCLL;
  v40 = &qword_1EAC9E190;
  v41 = &byte_18E98A071;
  v42 = 15;
  do
  {
    *v40 = v39;
    v43 = *v41++;
    v44 = PC2ROT[v43 - 1];
    *&v50 = 0;
    permute(v40, &v50, v44, 8);
    v39 = v50;
    *v40 = v50 & 0xFFFFFFFFFCFCFCFCLL;
    v40 += 8;
    --v42;
  }

  while (v42);
  __crypt_des_setkey_called = 1;
  return 0;
}

unsigned __int8 *permute(unsigned __int8 *result, unint64_t *a2, uint64_t a3, int a4)
{
  v4 = 0;
  v5 = 0;
  v6 = a4 + 1;
  do
  {
    v7 = *result++;
    v8 = *(a3 + 8 * (v7 & 0xF)) | *(a3 + ((v7 >> 1) & 0x78) + 128);
    v4 |= v8;
    v5 |= v8 >> 32;
    a3 += 256;
    --v6;
  }

  while (v6 > 1);
  *a2 = v4 | (v5 << 32);
  return result;
}

uint64_t __crypt_des_cipher(void *a1, uint64_t *a2, unint64_t a3, int a4)
{
  v6 = (2 * *a1) & 0xAAAAAAAALL | HIDWORD(*a1) & 0x5555555555555555 | (((*a1 >> 33) & 0x55555555 | *a1 & 0xAAAAAAAA) << 32);
  v77 = 0;
  v78 = v6;
  v7 = IE3264;
  permute(&v78, &v77, IE3264, 4);
  v8 = v77;
  v9 = v77 >> 32;
  v77 = 0;
  permute(&v78 + 4, &v77, v7, 4);
  v10 = v77;
  v11 = v77 >> 32;
  if (a4 >= 0)
  {
    v12 = 8;
  }

  else
  {
    v12 = -8;
  }

  if (a4)
  {
    v13 = a3 & 0x3F | (((a3 >> 12) & 0x3F) << 16) & 0xFFFFFFFFC0FFC0FFLL | (((a3 >> 18) & 0x3F) << 24) | (((a3 >> 6) & 0x3F) << 8);
    v14 = 4 * v13;
    if (a4 >= 0)
    {
      v15 = a4;
    }

    else
    {
      v15 = -a4;
    }

    if (a4 < 0)
    {
      v16 = &unk_1EAC9E200;
    }

    else
    {
      v16 = &KS;
    }

    v17 = SPE + 4096;
    v73 = SPE + 512;
    v18 = SPE + 4608;
    v19 = SPE + 1024;
    v71 = SPE + 5120;
    v72 = SPE + 1536;
    v20 = SPE + 2048;
    v21 = SPE + 6144;
    v22 = SPE + 2560;
    v23 = SPE + 6656;
    v24 = SPE + 3072;
    v25 = SPE + 7168;
    v26 = SPE + 5632;
    v27 = SPE + 3584;
    v28 = SPE + 7680;
    v68 = -16 * v12;
    v29 = v8;
    v76 = 4 * v13;
    v70 = v12;
    do
    {
      v69 = v15;
      v30 = v10;
      v31 = v11;
      v32 = -8;
      v10 = v29;
      v11 = v9;
      v29 = v30;
      v9 = v31;
      do
      {
        v75 = v32;
        v33 = (v9 ^ v29) & v14;
        v34 = *v16 ^ v29 ^ v33;
        v35 = v9 ^ v33 ^ *(v16 + 1);
        v78 = v34 | (v35 << 32);
        v36 = 2 * v34;
        v37 = (v34 >> 7) & 0x1FE;
        v38 = *(v17 + v36) ^ v11;
        v39 = *(SPE + v36) ^ v10 ^ *(v73 + v37);
        v40 = v38 ^ *(v18 + v37);
        v41 = (v34 >> 15) & 0x1FE;
        v42 = (v34 >> 23) & 0x1FE;
        v43 = v39 ^ *(v19 + v41) ^ *(v72 + v42);
        v44 = v40 ^ *(v71 + v41) ^ *(v26 + v42);
        v45 = 2 * v35;
        v46 = (v35 >> 7) & 0x1FELL;
        v47 = *(v20 + v45) ^ *(v22 + v46);
        v48 = *(v21 + v45) ^ *(v23 + v46);
        v49 = (v35 >> 15) & 0x1FELL;
        v50 = v47 ^ *(v24 + v49);
        v51 = (v35 >> 23) & 0x1FELL;
        v10 = v43 ^ v50 ^ *(v27 + v51);
        v11 = v44 ^ v48 ^ *(v25 + v49) ^ *(v28 + v51);
        v52 = (v11 ^ v10) & v76;
        v74 = v16 + v12;
        v53 = *(v16 + v12) ^ v10 ^ v52;
        v54 = v11 ^ *(v16 + v12 + 4) ^ v52;
        LODWORD(v49) = v54 >> 23;
        v78 = v53 | v34 & 0xFFFFFFFF00000000 | (v35 << 32);
        LODWORD(v51) = v54 >> 15;
        LODWORD(v42) = v54 >> 7;
        v55 = 2 * v53;
        v56 = v53 | (v54 << 32);
        v57 = (v53 >> 7) & 0x1FE;
        v58 = (v53 >> 15) & 0x1FE;
        v59 = (v53 >> 23) & 0x1FE;
        v60 = 2 * v54;
        v61 = v42 & 0x1FE;
        v62 = v51 & 0x1FE;
        v63 = v49 & 0x1FE;
        v29 ^= *(SPE + v55) ^ *(v73 + v57) ^ *(v19 + v58) ^ *(v72 + v59) ^ *(v20 + v60) ^ *(v22 + v61) ^ *(v24 + v62) ^ *(v27 + v63);
        v64 = v56;
        v28 = SPE + 7680;
        v65 = *(v21 + v60) ^ *(v23 + v61) ^ *(v25 + v62);
        v17 = SPE + 4096;
        v14 = v76;
        v9 ^= *(SPE + 4096 + v55) ^ *(v18 + v57) ^ *(v71 + v58) ^ *(v26 + v59) ^ v65 ^ *(SPE + 7680 + v63);
        v78 = v64;
        v12 = v70;
        v16 = &v74[v70];
        v32 = v75 + 1;
      }

      while (v75 != -1);
      v16 = (v16 + v68);
      v15 = v69 - 1;
    }

    while (v69 > 1);
  }

  else
  {
    v29 = v8;
  }

  v77 = 0;
  v78 = (v29 >> 3) & 0xF0F0F0F | (2 * v9) & 0xF0F0F0F0 | (((2 * v11) & 0xF0F0F0F0 | (v10 >> 3) & 0xF0F0F0F) << 32);
  permute(&v78, &v77, CF6464, 8);
  *a2 = v77;
  return 0;
}

void setkey(const char *a1)
{
  v1 = 0;
  v4 = 0;
  do
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v3 = a1[v2++] | (2 * v3);
    }

    while (v2 != 8);
    a1 += 8;
    *(&v4 + v1++) = v3;
  }

  while (v1 != 8);
  __crypt_des_setkey(&v4);
}

void encrypt(char *a1, int a2)
{
  v13 = 0;
  if (!__crypt_des_setkey_called)
  {
    __crypt_des_setkey(&v13);
  }

  for (i = 0; i != 8; ++i)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v6 = a1[v5++] | (2 * v6);
    }

    while (v5 != 8);
    a1 += 8;
    *(&v13 + i) = v6;
  }

  if (a2)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  __crypt_des_cipher(&v13, &v13, 0, v7);
  v8 = 7;
  do
  {
    v9 = v8;
    v10 = *(&v13 + v8);
    v11 = -8;
    do
    {
      *--a1 = v10 & 1;
      v10 >>= 1;
    }

    while (!__CFADD__(v11++, 1));
    v8 = v9 - 1;
  }

  while (v9);
}

uint64_t init_perm(uint64_t result, uint64_t a2)
{
  for (i = 0; i != 64; ++i)
  {
    v3 = *(a2 + i);
    if (*(a2 + i))
    {
      v4 = 0;
      v5 = (v3 - 1);
      v6 = 1 << ((v3 - 1) & 3);
      v7 = (result + (i >> 3) + (((v5 >> 2) & 0x7FFFFFF) << 7));
      do
      {
        if ((v6 & v4) != 0)
        {
          *v7 |= 1 << (i & 7);
        }

        ++v4;
        v7 += 8;
      }

      while (v4 != 16);
    }
  }

  return result;
}

char *__cdecl devname_r(dev_t a1, mode_t a2, char *buf, int len)
{
  v6 = a2;
  strcpy(v15, "/dev/");
  v8 = opendir("/dev/");
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  memset(&v14, 0, sizeof(v14));
  v10 = readdir(v8);
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = v10;
  while (1)
  {
    j__mkostemp(&v15[5], v11 + 21);
    if (!lstat(v15, &v14) && v14.st_rdev == a1 && (v14.st_mode & 0xF000) == v6)
    {
      break;
    }

    v11 = readdir(v9);
    if (!v11)
    {
      goto LABEL_12;
    }
  }

  if (v11->d_namlen < len)
  {
    j__strnstr(buf, v11->d_name, v12);
  }

  else
  {
LABEL_12:
    buf = 0;
  }

  closedir(v9);
  return buf;
}

char *__cdecl devname(dev_t a1, mode_t a2)
{
  v4 = devname_buf;
  if (devname_buf || (result = malloc_type_malloc(0xFFuLL, 0x96F91E2CuLL), v4 = result, (devname_buf = result) != 0))
  {

    return devname_r(a1, a2, v4, 255);
  }

  return result;
}

char *getdiskbyname(char *a1)
{
  v58 = 0;
  *v59 = xmmword_1E7279028;
  if (cgetent(&v58, v59, a1) < 0)
  {
    return 0;
  }

  result = getdiskbyname_dp;
  if (getdiskbyname_dp || (result = malloc_type_malloc(0x118uLL, 0x101204068DD910EuLL), (getdiskbyname_dp = result) != 0))
  {
    *(result + 34) = 0;
    *(result + 15) = 0u;
    *(result + 16) = 0u;
    *(result + 13) = 0u;
    *(result + 14) = 0u;
    *(result + 11) = 0u;
    *(result + 12) = 0u;
    *(result + 9) = 0u;
    *(result + 10) = 0u;
    *(result + 7) = 0u;
    *(result + 8) = 0u;
    *(result + 5) = 0u;
    *(result + 6) = 0u;
    *(result + 3) = 0u;
    *(result + 4) = 0u;
    *(result + 1) = 0u;
    *(result + 2) = 0u;
    *result = 0u;
    v2 = result + 8;
    v57 = result + 8;
    v3 = v58;
    do
    {
      v4 = *v3;
      *v2 = v4;
      v2 = v57;
      if (!v4)
      {
        break;
      }

      v5 = *v57;
      if (v5 == 58)
      {
        break;
      }

      if (v5 == 124)
      {
        break;
      }

      v2 = v57 + 1;
      v57 = v2;
      ++v3;
    }

    while (v2 < getdiskbyname_dp + 23);
    *v2 = 0;
    cgetstr(v58, "b0", (getdiskbyname_dp + 24));
    cgetstr(v58, "b1", (getdiskbyname_dp + 32));
    v6 = cgetstr(v58, "ty", &v57);
    v9 = v57;
    if (v6 < 1 || j__strncasecmp_l(v57, "removable", v7, v8))
    {
      if (!v9 || j__strncasecmp_l(v9, "simulated", v7, v8))
      {
        goto LABEL_17;
      }

      v10 = 8;
    }

    else
    {
      v10 = 1;
    }

    *(getdiskbyname_dp + 88) |= v10;
LABEL_17:
    if (cgetcap(v58, "sf", 58))
    {
      *(getdiskbyname_dp + 88) |= 4u;
    }

    v53 = 0;
    v11 = cgetnum(v58, "se", &v53);
    v12 = v53;
    if (v11 == -1)
    {
      v12 = 512;
    }

    v13 = getdiskbyname_dp;
    *(getdiskbyname_dp + 40) = v12;
    cgetnum(v58, "nt", (v13 + 48));
    cgetnum(v58, "ns", (getdiskbyname_dp + 44));
    cgetnum(v58, "nc", (getdiskbyname_dp + 52));
    if (cgetstr(v58, "dt", &v57) < 1)
    {
      v53 = 0;
      v14 = cgetnum(v58, "dt", &v53);
      v15 = v53;
      if (v14 == -1)
      {
        v15 = 0;
      }

      *(getdiskbyname_dp + 4) = v15;
    }

    else
    {
      *(getdiskbyname_dp + 4) = gettype(v57, dktypenames);
    }

    v53 = 0;
    if (cgetnum(v58, "sc", &v53) == -1)
    {
      v17 = getdiskbyname_dp;
      v16 = v17[12] * v17[11];
    }

    else
    {
      v16 = v53;
      v17 = getdiskbyname_dp;
    }

    v17[14] = v16;
    v53 = 0;
    if (cgetnum(v58, "su", &v53) == -1)
    {
      v19 = getdiskbyname_dp;
      v18 = v19[13] * v19[14];
    }

    else
    {
      v18 = v53;
      v19 = getdiskbyname_dp;
    }

    v19[15] = v18;
    v53 = 0;
    v20 = cgetnum(v58, "rm", &v53);
    v21 = v53;
    if (v20 == -1)
    {
      v21 = 3600;
    }

    *(getdiskbyname_dp + 72) = v21;
    v53 = 0;
    v22 = cgetnum(v58, "il", &v53);
    v23 = v53;
    if (v22 == -1)
    {
      v23 = 1;
    }

    *(getdiskbyname_dp + 74) = v23;
    v53 = 0;
    v24 = cgetnum(v58, "sk", &v53);
    v25 = v53;
    if (v24 == -1)
    {
      v25 = 0;
    }

    *(getdiskbyname_dp + 76) = v25;
    v53 = 0;
    v26 = cgetnum(v58, "cs", &v53);
    v27 = v53;
    if (v26 == -1)
    {
      v27 = 0;
    }

    *(getdiskbyname_dp + 78) = v27;
    v53 = 0;
    v28 = cgetnum(v58, "hs", &v53);
    v29 = v53;
    if (v28 == -1)
    {
      v29 = 0;
    }

    *(getdiskbyname_dp + 80) = v29;
    v53 = 0;
    v30 = cgetnum(v58, "ts", &v53);
    v31 = v53;
    if (v30 == -1)
    {
      v31 = 0;
    }

    *(getdiskbyname_dp + 84) = v31;
    v53 = 0;
    v32 = cgetnum(v58, "bs", &v53);
    v33 = v53;
    if (v32 == -1)
    {
      v33 = 0x2000;
    }

    *(getdiskbyname_dp + 140) = v33;
    v53 = 0;
    v34 = cgetnum(v58, "sb", &v53);
    v35 = v53;
    if (v34 == -1)
    {
      v35 = 0x2000;
    }

    v36 = getdiskbyname_dp;
    *(getdiskbyname_dp + 144) = v35;
    strcpy(&v56[4], "px");
    strcpy(v56, "bx");
    strcpy(&v55[4], "fx");
    strcpy(v55, "ox");
    strcpy(v54, "tx");
    v37 = v36 + 148;
    v38 = 97;
    v39 = 96;
    do
    {
      v54[1] = v38;
      v55[1] = v38;
      v55[5] = v38;
      v56[1] = v38;
      v56[5] = v38;
      if (cgetnum(v58, &v56[4], v37) == -1)
      {
        *v37 = 0;
      }

      else
      {
        cgetnum(v58, v55, (v37 + 4));
        v53 = 0;
        v40 = cgetnum(v58, &v55[4], &v53);
        v41 = v53;
        if (v40 == -1)
        {
          v41 = 0;
        }

        *(v37 + 8) = v41;
        if (v41)
        {
          v53 = 0;
          if (cgetnum(v58, v56, &v53))
          {
            LOBYTE(v42) = 8;
          }

          else
          {
            v42 = v53 / *(v37 + 8);
          }

          *(v37 + 13) = v42;
        }

        v53 = 0;
        v43 = cgetnum(v58, v54, &v53);
        v44 = v53;
        if (v43 == -1)
        {
          v44 = 0;
        }

        *(v37 + 12) = v44;
        v39 = v38;
        if (!v44)
        {
          v39 = v38;
          if (cgetstr(v58, v54, &v57) >= 1)
          {
            *(v37 + 12) = gettype(v57, fstypenames);
            v39 = v38;
          }
        }
      }

      v45 = v38++;
      v37 += 16;
    }

    while (v45 < 0x68);
    v46 = getdiskbyname_dp;
    *(getdiskbyname_dp + 138) = v39 - 96;
    strcpy(&v56[4], "dx");
    v47 = (v46 + 92);
    v48 = 48;
    do
    {
      v56[5] = v48;
      v53 = 0;
      v49 = cgetnum(v58, &v56[4], &v53);
      v50 = v53;
      if (v49 == -1)
      {
        v50 = 0;
      }

      *v47++ = v50;
    }

    while (v48++ < 0x34);
    v52 = getdiskbyname_dp;
    *getdiskbyname_dp = -2108275369;
    *(v52 + 132) = -2108275369;
    free(v58);
    return getdiskbyname_dp;
  }

  return result;
}

uint64_t gettype(char *a1, const char **a2)
{
  v4 = *a2;
  if (v4)
  {
    v5 = 0;
    v6 = a2 + 1;
    while (strcasecmp(a1, v4))
    {
      v4 = v6[v5++];
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    return v5;
  }

LABEL_5:
  if ((*a1 - 48) > 9)
  {
    return 0;
  }

  return atoi(a1);
}

filesec_t filesec_init(void)
{
  result = malloc_type_malloc(0x40uLL, 0x108004043B192EBuLL);
  if (result)
  {
    *result = 0;
  }

  return result;
}

int filesec_query_property(filesec_t a1, filesec_property_t a2, int *a3)
{
  if (a2 > FILESEC_MODE)
  {
    if (a2 - 100 < 2 || a2 == FILESEC_ACL)
    {
      a2 = 32;
      goto LABEL_13;
    }

    if (a2 == FILESEC_GRPUUID)
    {
      a2 = 8;
      goto LABEL_13;
    }
  }

  else
  {
    if (a2 - 1 < 2)
    {
LABEL_13:
      v3 = 0;
      *a3 = *a1 & a2;
      return v3;
    }

    if (a2 == FILESEC_UUID)
    {
      a2 = FILESEC_MODE;
      goto LABEL_13;
    }

    if (a2 == FILESEC_MODE)
    {
      a2 = 16;
      goto LABEL_13;
    }
  }

  *__error() = 22;
  return -1;
}

FTS *__cdecl fts_open_b(char *const *a1, int a2, void *a3)
{
  if ((a2 & 0xFFFFF300) != 0)
  {
    *__error() = 22;
    return 0;
  }

  v5 = a2;
  v7 = malloc_type_calloc(1uLL, 0x48uLL, 0x10B0040C1B4BCF7uLL);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  if (v5 >= 0x800)
  {
    v5 |= 8u;
  }

  v7[7] = _Block_copy(a3);
  *(v8 + 64) = v5 | 0x80000000;

  return __fts_open(a1, v8, v9);
}

int fts_set(FTS *a1, FTSENT *a2, int a3)
{
  if (a3 < 5)
  {
    result = 0;
    a2->fts_instr = a3;
  }

  else
  {
    *__error() = 22;
    return 1;
  }

  return result;
}

FTSENT *__cdecl fts_children(FTS *a1, int a2)
{
  if ((a2 & 0xFFFFFEFF) != 0)
  {
    v2 = __error();
    result = 0;
    *v2 = 22;
    return result;
  }

  fts_cur = a1->fts_cur;
  *__error() = 0;
  if ((a1->fts_options & 0x200) != 0)
  {
    return 0;
  }

  fts_info = fts_cur->fts_info;
  if (fts_info != 1)
  {
    if (fts_info == 9)
    {
      return fts_cur->fts_link;
    }

    return 0;
  }

  fts_child = a1->fts_child;
  if (fts_child)
  {
    do
    {
      fts_link = fts_child->fts_link;
      fts_free(fts_child);
      fts_child = fts_link;
    }

    while (fts_link);
  }

  if (a2 == 256)
  {
    a1->fts_options |= 0x100u;
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  if (fts_cur->fts_level || *fts_cur->fts_accpath == 47 || (a1->fts_options & 4) != 0)
  {
    a1->fts_child = fts_build(a1, v10);
    if (*__error())
    {
      fts_cur->fts_errno = *__error();
    }
  }

  else
  {
    v11 = open_NOCANCEL();
    if (v11 < 0)
    {
      return 0;
    }

    v12 = v11;
    a1->fts_child = fts_build(a1, v10);
    if (*__error())
    {
      fts_cur->fts_errno = *__error();
    }

    v13 = fts_fchdir(a1, v12);
    close_NOCANCEL();
    if (v13)
    {
      return 0;
    }
  }

  return a1->fts_child;
}

uint64_t fts_sort(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = a2;
  if (*(a1 + 48) >= a3)
  {
    v6 = *(a1 + 16);
    if (!a2)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  *(a1 + 48) = a3 + 40;
  v6 = reallocarray_DARWIN_EXTSN();
  if (!v6)
  {
    free(*(a1 + 16));
    *(a1 + 16) = 0;
    *(a1 + 48) = 0;
    return v4;
  }

  for (*(a1 + 16) = v6; v4; v4 = *(v4 + 16))
  {
LABEL_6:
    *v6++ = v4;
  }

LABEL_7:
  v7 = *(a1 + 16);
  v8 = *(a1 + 56);
  if ((*(a1 + 64) & 0x80000000) != 0)
  {
    qsort_b(v7, a3, 8uLL, v8);
  }

  else
  {
    qsort(v7, a3, 8uLL, v8);
  }

  v9 = *(a1 + 16);
  v4 = *v9;
  v10 = *v9;
  v11 = a3 - 1;
  if (a3 != 1)
  {
    v12 = v9 + 1;
    v13 = v4;
    do
    {
      v14 = *v12++;
      v10 = v14;
      *(v13 + 16) = v14;
      v13 = v14;
      --v11;
    }

    while (v11);
  }

  *(v10 + 16) = 0;
  return v4;
}

BOOL compat_mode(const char *function, const char *mode)
{
  v2 = mode;
  v3 = 0;
  v4 = mode - 1;
  if ((parsed & 1) == 0)
  {
    pthread_once(&threadsafe, check_env_var);
    parsed = 1;
  }

  while (1)
  {
    if (!strcasecmp("unix2003", v2))
    {
      v7 = unix2003_mode ^ 1;
      return (v3 ^ v7) & 1;
    }

    if (!strcasecmp("legacy", v2))
    {
      v7 = unix2003_mode;
      return (v3 ^ v7) & 1;
    }

    if (!strcasecmp("bootstrap", v2))
    {
      goto LABEL_19;
    }

    if (!strcasecmp("error", v2))
    {
      v7 = parse_error;
      return (v3 ^ v7) & 1;
    }

    v5 = strpbrk(v2, "!^&|");
    if (!v5)
    {
      goto LABEL_18;
    }

    v6 = v5;
    if (*v5 != 33)
    {
      break;
    }

    if (v2 != v5)
    {
      goto LABEL_18;
    }

    ++v2;
    v3 ^= 1u;
    ++v4;
  }

  v8 = malloc_type_malloc(v5 - v4, 0xCDFBE6E6uLL);
  MEMORY[0x193AD6A30](v8, v2, v6 - v4);
  v9 = compat_mode(function, v8);
  free(v8);
  v10 = compat_mode(function, v6 + 1);
  v11 = *v6;
  switch(v11)
  {
    case '&':
      v7 = v9 && v10;
      break;
    case '|':
      v7 = v9 || v10;
      break;
    case '^':
      v7 = v9 ^ v10;
      return (v3 ^ v7) & 1;
    default:
LABEL_18:
      fprintf(__stderrp, "invalid mode %s (while checking for %s)\n", v2, function);
LABEL_19:
      v7 = 0;
      return (v3 ^ v7) & 1;
  }

  return (v3 ^ v7) & 1;
}

const char *check_env_var()
{
  result = getenv("COMMAND_MODE");
  if (result)
  {
    v1 = result;
    result = strcasecmp(result, "legacy");
    v2 = result;
    if (result)
    {
      result = strcasecmp(v1, "unix2003");
      if (result)
      {
        parse_error = 1;
      }
    }

    unix2003_mode = v2 == 0;
  }

  return result;
}

int getloadavg(double a1[], int a2)
{
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  *v13 = 0x200000002;
  v10 = 24;
  if (sysctl(v13, 2u, v11, &v10, 0, 0) < 0)
  {
    LODWORD(v4) = -1;
  }

  else
  {
    if (a2 >= 3)
    {
      v4 = 3;
    }

    else
    {
      v4 = a2;
    }

    if (a2)
    {
      v5 = v12;
      v6 = v11;
      v7 = v4;
      do
      {
        v8 = *v6++;
        *a1++ = v8 / v5;
        --v7;
      }

      while (v7);
    }
  }

  return v4;
}

ttyent *__cdecl getttynam(const char *a1)
{
  setttyent();
  do
  {
    v2 = getttyent();
    v5 = v2;
  }

  while (v2 && j__strncasecmp_l(a1, v2->ty_name, v3, v4));
  if (tf)
  {
    fclose(tf);
    tf = 0;
  }

  return v5;
}

int setttyent(void)
{
  v0 = seq;
  if (seq)
  {
    goto LABEL_2;
  }

  if (regcomp(&brapreg, "\\[(.*)]", 1))
  {
    return 0;
  }

  if (regcomp(&decpreg, "^([0-9]+)-([0-9]+)$", 1))
  {
LABEL_8:
    regfree(&brapreg);
    return 0;
  }

  if (regcomp(&hexpreg, "^0x([0-9a-f]+)-0x([0-9a-f]+)$", 3))
  {
LABEL_7:
    regfree(&decpreg);
    goto LABEL_8;
  }

  v0 = malloc_type_malloc(0x11CuLL, 0x1000040F3ACBFE9uLL);
  seq = v0;
  if (!v0)
  {
    regfree(&hexpreg);
    goto LABEL_7;
  }

LABEL_2:
  *v0 = 0;
  slot = 1;
  if (tf)
  {
    rewind(tf);
    return 1;
  }

  else
  {
    tf = fopen("/etc/ttys", "r");
    return tf != 0;
  }
}

ttyent *getttyent(void)
{
  v0 = __locale_key;
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v0);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = &__global_locale;
  }

  if (!getttyent_line)
  {
    getttyent_line = malloc_type_malloc(0x400uLL, 0x8DAB00FDuLL);
    if (!getttyent_line)
    {
      return 0;
    }
  }

  if (!tf && !setttyent())
  {
    return 0;
  }

  v3 = slot;
  v4 = seq;
  v5 = *seq;
  if (slot >= *seq)
  {
    v6 = &getttyent_tty;
    do
    {
      if (*(v4 + 4) >= 1)
      {
        v55 = getttyent_tty;
        v56 = *(v4 + 8);
        *(v4 + 8) = v56 + 1;
        sprintf(v55, (v4 + 12), v56);
        ++slot;
        --*(seq + 4);
        return v6;
      }

      if (v3 == v5)
      {
        v57 = v5 + 1;
        goto LABEL_112;
      }

      do
      {
        while (1)
        {
          v7 = getttyent_line;
          if (!fgets(getttyent_line, 1024, tf))
          {
            return 0;
          }

          v8.s_addr = v7;
          if (j__inet_lnaof(v8))
          {
            break;
          }

          do
          {
            v12 = getc(tf);
          }

          while (v12 != 10 && v12 != -1);
        }

        v9 = (v7 - 1);
        do
        {
          v10 = v9[1];
          if (v10 < 0)
          {
            LOWORD(v11) = ___runetype_l(v10, v2);
          }

          else
          {
            v11 = _DefaultRuneLocale.__runetype[v10];
          }

          ++v9;
        }

        while ((v11 & 0x4000) != 0);
      }

      while (!*v9 || *v9 == 35);
      zapchar = 0;
      getttyent_tty = v9;
      v14 = skip(v9);
      v17 = v14;
      qword_1EAC9DF18 = v14;
      if (*v14)
      {
        v18 = skip(v14);
        v17 = v18;
        qword_1EAC9DF20 = v18;
        if (*v18)
        {
          v17 = skip(v18);
        }

        else
        {
          qword_1EAC9DF20 = 0;
        }
      }

      else
      {
        qword_1EAC9DF18 = 0;
        qword_1EAC9DF20 = 0;
      }

      dword_1EAC9DF28 = 0;
      qword_1EAC9DF38 = 0;
      qword_1EAC9DF40 = 0;
      qword_1EAC9DF30 = 0;
      v19 = *v17;
      if (*v17)
      {
        v61 = -1;
        while (1)
        {
          if (v19 == 111)
          {
            if (v17[1] != 102 || v17[2] != 102)
            {
              goto LABEL_42;
            }

            v20 = v17[3];
            if (v20 < 0)
            {
              if ((___runetype_l(v20, v2) & 0x4000) != 0)
              {
LABEL_76:
                v42 = dword_1EAC9DF28 & 0xFFFFFFFE;
                goto LABEL_77;
              }
            }

            else if ((_DefaultRuneLocale.__runetype[v20] & 0x4000) != 0)
            {
              goto LABEL_76;
            }

            if (*v17 == 111)
            {
LABEL_42:
              if (v17[1] == 110)
              {
                v21 = v17[2];
                if (v21 < 0)
                {
                  if ((___runetype_l(v21, v2) & 0x4000) != 0)
                  {
LABEL_74:
                    v42 = dword_1EAC9DF28 | 1;
                    goto LABEL_77;
                  }
                }

                else if ((_DefaultRuneLocale.__runetype[v21] & 0x4000) != 0)
                {
                  goto LABEL_74;
                }
              }
            }
          }

          if (!j__strsvisx(v17, "secure", 6uLL, v15, v16))
          {
            v41 = v17[6];
            if (v41 < 0)
            {
              if ((___runetype_l(v41, v2) & 0x4000) != 0)
              {
LABEL_72:
                v42 = dword_1EAC9DF28 | 2;
LABEL_77:
                dword_1EAC9DF28 = v42;
                goto LABEL_78;
              }
            }

            else if ((_DefaultRuneLocale.__runetype[v41] & 0x4000) != 0)
            {
              goto LABEL_72;
            }
          }

          if (j__strsvisx(v17, "window", 6uLL, v22, v23) || v17[6] != 61)
          {
            if (j__strsvisx(v17, "onerror", 7uLL, v24, v25) || v17[7] != 61)
            {
              if (j__strsvisx(v17, "onoption", 8uLL, v29, v30) || v17[8] != 61)
              {
                if (j__strsvisx(v17, "slot", 4uLL, v34, v35) || v17[4] != 61)
                {
                  goto LABEL_81;
                }

                v39.s_addr = v17;
                v40 = j__inet_lnaof(v39);
                if (v40)
                {
                  v61 = atoi((v40 + 1));
                }
              }

              else
              {
                v36.s_addr = v17;
                v37 = j__inet_lnaof(v36);
                if (v37)
                {
                  v38 = v37 + 1;
                }

                else
                {
                  v38 = 0;
                }

                qword_1EAC9DF40 = v38;
              }
            }

            else
            {
              v31.s_addr = v17;
              v32 = j__inet_lnaof(v31);
              if (v32)
              {
                v33 = v32 + 1;
              }

              else
              {
                v33 = 0;
              }

              qword_1EAC9DF38 = v33;
            }
          }

          else
          {
            v26.s_addr = v17;
            v27 = j__inet_lnaof(v26);
            if (v27)
            {
              v28 = v27 + 1;
            }

            else
            {
              v28 = 0;
            }

            qword_1EAC9DF30 = v28;
          }

LABEL_78:
          v17 = skip(v17);
          v19 = *v17;
          if (!*v17)
          {
            goto LABEL_81;
          }
        }
      }

      v61 = -1;
LABEL_81:
      if (zapchar == 35 || *v17 == 35)
      {
        do
        {
          v44 = *++v17;
          v43 = v44;
        }

        while (v44 == 32 || v43 == 9);
      }

      qword_1EAC9DF48 = v17;
      if (*v17)
      {
        v46 = v17;
      }

      else
      {
        v46 = 0;
      }

      qword_1EAC9DF48 = v46;
      v47.s_addr = v17;
      v48 = j__inet_lnaof(v47);
      if (v48)
      {
        *v48 = 0;
      }

      if (regexec(&brapreg, getttyent_tty, 3uLL, &__pmatch, 0))
      {
        goto LABEL_93;
      }

      rm_eo = __pmatch.rm_eo;
      rm_so = __pmatch.rm_so;
      v62 = v64;
      __pmatch = v64;
      v58 = regexec(&decpreg, getttyent_tty, 3uLL, &__pmatch, 4);
      if (v58)
      {
        __pmatch = v62;
        if (regexec(&hexpreg, getttyent_tty, 3uLL, &__pmatch, 4))
        {
          goto LABEL_93;
        }

        v49 = 16;
      }

      else
      {
        v49 = 10;
      }

      v50 = strtol((getttyent_tty + v64.rm_so), 0, v49);
      v51 = strtol((getttyent_tty + v65), 0, v49);
      if (v51 < v50)
      {
        v3 = slot;
        v4 = seq;
        goto LABEL_103;
      }

      v52 = seq;
      *(seq + 4) = v51 - v50 + 1;
      *(v52 + 8) = v50;
      v53 = 120;
      if (!v58)
      {
        v53 = 100;
      }

      sprintf((v52 + 12), "%.*s%%0%d%c%s", rm_so, getttyent_tty, LODWORD(v64.rm_eo) - LODWORD(v64.rm_so), v53, (getttyent_tty + rm_eo));
LABEL_93:
      v3 = slot;
      v4 = seq;
      if (v61 <= slot)
      {
        if (*(seq + 4) <= 0)
        {
          v57 = slot + 1;
LABEL_112:
          slot = v57;
          return &getttyent_tty;
        }
      }

      else
      {
        *seq = v61;
      }

LABEL_103:
      v5 = *v4;
    }

    while (v3 >= *v4);
  }

  slot = v3 + 1;
  return &getttyent_nonexistent;
}

int endttyent(void)
{
  if (!tf)
  {
    return 1;
  }

  result = fclose(tf) != -1;
  tf = 0;
  return result;
}

char *skip(char *result)
{
  v1 = 0;
  v2 = result;
  while (1)
  {
    v3 = *result;
    if (v3 == 34)
    {
      v1 ^= 1u;
      goto LABEL_13;
    }

    if (!*result)
    {
      goto LABEL_26;
    }

    if (v1 == 1 && v3 == 92)
    {
      v4 = result[1];
      v5 = v4 == 34;
      if (v4 == 34)
      {
        v6 = 34;
      }

      else
      {
        v6 = 92;
      }

      if (v5)
      {
        ++result;
      }

      *v2++ = v6;
      v1 = 1;
      goto LABEL_13;
    }

    *v2++ = v3;
    if (v1 == 1)
    {
      goto LABEL_13;
    }

    if ((v3 - 9) < 2 || v3 == 32)
    {
      break;
    }

    if (v3 == 35)
    {
      zapchar = 35;
      *result = 0;
      goto LABEL_26;
    }

    v1 = 0;
LABEL_13:
    ++result;
  }

  zapchar = v3;
  *result++ = 0;
  while (1)
  {
    v7 = *result;
    v8 = v7 > 0x20;
    v9 = (1 << v7) & 0x100000600;
    if (v8 || v9 == 0)
    {
      break;
    }

    ++result;
  }

LABEL_26:
  *(v2 - 1) = 0;
  return result;
}

char *getusershell(void)
{
  v0 = curshell;
  if (!curshell)
  {
    v0 = initshells();
    curshell = v0;
  }

  v1 = *v0;
  if (*v0)
  {
    curshell = (v0 + 1);
  }

  return v1;
}

char **initshells()
{
  memset(&v13, 0, sizeof(v13));
  v0 = __locale_key;
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v0);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = &__global_locale;
  }

  if (shells)
  {
    free(shells);
  }

  shells = 0;
  if (strings)
  {
    free(strings);
  }

  strings = 0;
  v3 = fopen("/etc/shells", "r");
  if (!v3)
  {
    return okshells;
  }

  v4 = v3;
  v5 = fileno(v3);
  if (fstat(v5, &v13) == -1 || (strings = malloc_type_malloc(LODWORD(v13.st_size), 0xEC8A1E11uLL)) == 0)
  {
    fclose(v4);
    return okshells;
  }

  v6 = malloc_type_calloc(LODWORD(v13.st_size) / 3uLL, 8uLL, 0x10040436913F5uLL);
  shells = v6;
  if (!v6)
  {
    fclose(v4);
    free(strings);
    strings = 0;
    return okshells;
  }

  v7 = v6;
  for (i = strings; fgets(i, 1025, v4); *(i - 1) = 0)
  {
    for (j = i; ; ++j)
    {
      ++i;
      while (1)
      {
        v10 = *j;
        if (*j)
        {
          if (v10 != 35)
          {
            break;
          }
        }

        if (!fgets(j, 1025, v4))
        {
          goto LABEL_30;
        }
      }

      if (v10 == 47)
      {
        break;
      }
    }

    *v7++ = j;
    while (1)
    {
      v11 = *(i - 1);
      if (v11 < 0)
      {
        if ((___runetype_l(v11, v2) & 0x4000) != 0)
        {
          break;
        }
      }

      else if ((_DefaultRuneLocale.__runetype[v11] & 0x4000) != 0)
      {
        break;
      }

      if (!*(i - 1) || *(i - 1) == 35)
      {
        break;
      }

      ++i;
    }
  }

LABEL_30:
  *v7 = 0;
  fclose(v4);
  return shells;
}

void endusershell(void)
{
  if (shells)
  {
    free(shells);
  }

  shells = 0;
  if (strings)
  {
    free(strings);
  }

  strings = 0;
  curshell = 0;
}

int getvfsbyname(const char *a1, vfsconf *a2)
{
  v9 = 0;
  *v10 = 3;
  v11 = 1;
  v8 = 4;
  if ((sysctl(v10, 3u, &v9, &v8, 0, 0) & 0x80000000) == 0)
  {
    v11 = 2;
    v8 = 40;
    if (v9 >= 1)
    {
      for (i = 0; i < v9; ++i)
      {
        v12 = i;
        if (sysctl(v10, 4u, a2, &v8, 0, 0) < 0)
        {
          if (*__error() != 45)
          {
            return -1;
          }
        }

        else
        {
          result = j__strncasecmp_l(a1, a2->vfc_name, v5, v6);
          if (!result)
          {
            return result;
          }
        }
      }
    }

    *__error() = 2;
  }

  return -1;
}

int sigaddset(sigset_t *a1, int a2)
{
  if (a2 < 0x21)
  {
    if (a2)
    {
      result = 0;
      *a1 |= 1 << (a2 - 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    *__error() = 22;
    return -1;
  }

  return result;
}

int sigdelset(sigset_t *a1, int a2)
{
  if (a2 < 0x21)
  {
    if (a2)
    {
      result = 0;
      *a1 &= ~(1 << (a2 - 1));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    *__error() = 22;
    return -1;
  }

  return result;
}

int sigismember(const sigset_t *a1, int a2)
{
  if (a2 < 0x21)
  {
    if (a2)
    {
      return (*a1 >> (a2 - 1)) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

char *__cdecl fflagstostr(unint64_t a1)
{
  result = malloc_type_malloc(0x111uLL, 0x100004077774924uLL);
  if (result)
  {
    v3 = 0;
    v4 = result;
    do
    {
      v5 = &(&mapping)[3 * v3];
      v6 = v5[1];
      if ((v6 & a1) != 0)
      {
        if (v4 > result)
        {
          *v4++ = 44;
        }

        v7 = *v5;
        v8 = 2 * (*(v5 + 4) == 0);
        v9 = (*v5)[v8];
        if (v9)
        {
          v10 = &v7[v8 + 1];
          do
          {
            *v4++ = v9;
            v11 = *v10++;
            LOBYTE(v9) = v11;
          }

          while (v11);
        }

        a1 &= ~v6;
      }

      ++v3;
    }

    while (v3 != 21);
    *v4 = 0;
  }

  return result;
}

int strtofflags(char **a1, unint64_t *a2, unint64_t *a3)
{
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  __stringp = *a1;
  v6 = strsep(&__stringp, "\t ,");
  if (v6)
  {
    v9 = v6;
    while (1)
    {
      *a1 = v9;
      if (*v9)
      {
        break;
      }

LABEL_21:
      v6 = strsep(&__stringp, "\t ,");
      v9 = v6;
      if (!v6)
      {
        return v6;
      }
    }

    v10 = 0;
    v11 = &dword_1E7279400;
    while (1)
    {
      v12 = *(v11 - 2);
      if (!j__strncasecmp_l(v9, v12 + 2, v7, v8))
      {
        break;
      }

      if (!j__strncasecmp_l(v9, v12, v13, v14))
      {
        if (*v11)
        {
          goto LABEL_17;
        }

LABEL_14:
        if (!a3)
        {
          goto LABEL_20;
        }

        v15 = a3;
        goto LABEL_19;
      }

      ++v10;
      v11 += 6;
      if (v10 == 21)
      {
        goto LABEL_23;
      }
    }

    if (*v11)
    {
      goto LABEL_14;
    }

LABEL_17:
    if (!a2)
    {
      goto LABEL_20;
    }

    v15 = a2;
LABEL_19:
    *v15 |= *(v11 - 1);
LABEL_20:
    if (v10 != 21)
    {
      goto LABEL_21;
    }

LABEL_23:
    LODWORD(v6) = 1;
  }

  return v6;
}

lastlogx *__cdecl getlastlogx(uid_t a1, lastlogx *a2)
{
  memset(&v7, 0, sizeof(v7));
  v3 = _pwuid_r(a1, &v7);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = getlastlogxbyname(v7.pw_name, a2);
  free(v4);
  return v5;
}

char *_pwuid_r(uid_t a1, passwd *a2)
{
  v4 = pw_size;
  if (!pw_size)
  {
    v4 = sysconf(71);
    pw_size = v4;
    if (!v4)
    {
      return 0;
    }
  }

  v5 = malloc_type_malloc(v4, 0xF05DE905uLL);
  if (v5)
  {
    v7 = 0;
    getpwuid_r(a1, a2, v5, pw_size, &v7);
    if (!v7)
    {
      free(v5);
      return 0;
    }
  }

  return v5;
}

lastlogx *__cdecl getlastlogxbyname(const char *a1, lastlogx *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!*a1)
  {
    return 0;
  }

  v4 = asl_new(1u);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  asl_set_query(v4, "Facility", "com.apple.system.lastlog", 1u);
  asl_set_query(v5, "ut_user", a1, 1u);
  v6 = asl_new(2u);
  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = v6;
  asl_append(v6, v5);
  asl_release(v5);
  v15 = 0;
  v5 = MEMORY[0x193AD5F40](0, v7, &v15, -1, 1, 4000000, 0xFFFFFFFFLL);
  asl_release(v7);
  if (!v5)
  {
    return 0;
  }

  v8 = MEMORY[0x193AD5F60](v5);
  if (!v8)
  {
LABEL_18:
    asl_release(v5);
    return 0;
  }

  v9 = v8;
  if (a2 || (a2 = malloc_type_malloc(0x130uLL, 0x1000040DDA6C183uLL)) != 0)
  {
    *&a2->ll_host[224] = 0u;
    *&a2->ll_host[240] = 0u;
    *&a2->ll_host[192] = 0u;
    *&a2->ll_host[208] = 0u;
    *&a2->ll_host[160] = 0u;
    *&a2->ll_host[176] = 0u;
    *&a2->ll_host[128] = 0u;
    *&a2->ll_host[144] = 0u;
    *&a2->ll_host[96] = 0u;
    *&a2->ll_host[112] = 0u;
    *&a2->ll_host[64] = 0u;
    *&a2->ll_host[80] = 0u;
    *&a2->ll_host[32] = 0u;
    *&a2->ll_host[48] = 0u;
    *a2->ll_host = 0u;
    *&a2->ll_host[16] = 0u;
    *a2->ll_line = 0u;
    *&a2->ll_line[16] = 0u;
    a2->ll_tv = 0u;
    v10 = asl_get(v9, "ut_line");
    if (v10)
    {
      j__strtod(a2->ll_line, v10);
    }

    v11 = asl_get(v9, "ut_tv.tv_sec");
    if (v11)
    {
      a2->ll_tv.tv_sec = strtol(v11, 0, 10);
    }

    v12 = asl_get(v9, "ut_tv.tv_usec");
    if (v12)
    {
      a2->ll_tv.tv_usec = strtol(v12, 0, 10);
    }

    v13 = asl_get(v9, "ut_host");
    if (v13)
    {
      j__strtod(a2->ll_host, v13);
    }
  }

  asl_release(v5);
  return a2;
}

void _utmpx_asl(uint64_t a1)
{
  v2 = asl_open(0, 0, 4u);
  if (*(a1 + 296))
  {
    v3 = v2;
    v4 = asl_new(0);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 296) == 7)
      {
        v6 = "com.apple.system.lastlog";
      }

      else
      {
        v6 = "com.apple.system.utmpx";
      }

      asl_set(v4, "Facility", v6);
      asl_set(v5, "Level", "5");
      if (*a1)
      {
        j__strtod(value, a1);
        v14 = 0;
        asl_set(v5, "ut_user", value);
      }

      v7 = (a1 + 259);
      v8 = 260;
      while (v8 >= 0x101)
      {
        v9 = *v7;
        if (v9 < 0)
        {
          v10 = ___runetype(v9);
        }

        else
        {
          LODWORD(v10) = _DefaultRuneLocale.__runetype[v9];
        }

        --v7;
        --v8;
        if ((v10 & 0x40000) == 0)
        {
          snprintf(value, 0x101uLL, "0x%02x 0x%02x 0x%02x 0x%02x", *(a1 + 256), *(a1 + 257), *(a1 + 258), *(a1 + 259));
          goto LABEL_20;
        }
      }

      if (!*(a1 + 256))
      {
        goto LABEL_21;
      }

      j__strtod(value, (a1 + 256));
      value[4] = 0;
LABEL_20:
      asl_set(v5, "ut_id", value);
LABEL_21:
      if (*(a1 + 260))
      {
        j__strtod(value, (a1 + 260));
        value[32] = 0;
        asl_set(v5, "ut_line", value);
      }

      if (*(a1 + 292) >= 1)
      {
        snprintf(value, 0x101uLL, "%d", *(a1 + 292));
        asl_set(v5, "ut_pid", value);
      }

      snprintf(value, 0x101uLL, "%d", *(a1 + 296));
      asl_set(v5, "ut_type", value);
      snprintf(value, 0x101uLL, "%ld", *(a1 + 304));
      asl_set(v5, "ut_tv.tv_sec", value);
      snprintf(value, 0x101uLL, "%d", *(a1 + 312));
      asl_set(v5, "ut_tv.tv_usec", value);
      if (*(a1 + 320))
      {
        j__strtod(value, (a1 + 320));
        v14 = 0;
        asl_set(v5, "ut_host", value);
      }

      v12 = *(a1 + 296);
      if (v12 <= 0xB)
      {
        if (((1 << v12) & 0x81C) != 0)
        {
          sprintf(value, "%s: %ld %d");
          goto LABEL_34;
        }

        if (((1 << v12) & 0x60) != 0)
        {
          sprintf(value, "%s: %d");
          goto LABEL_34;
        }

        if (((1 << v12) & 0x180) != 0)
        {
          sprintf(value, "%s: %d %.*s");
LABEL_34:
          asl_set(v5, "Message", value);
          asl_send(v3, v5);
          asl_release(v5);
          asl_release(v3);
          return;
        }
      }

      if (v12 > 0xB)
      {
        sprintf(value, "ut_type=%d");
      }

      else
      {
        j__strnstr(value, utmpx_types[v12], v11);
      }

      goto LABEL_34;
    }

    asl_release(v3);
  }
}

char *_utmpx_working_copy(char *path, uint64_t dfd, int a3)
{
  if (*(path + 148) < 0x4000u)
  {
    return path;
  }

  v4 = dfd;
  j__mkdtempat_np(dfd, path);
  v6 = *(v4 + 296) & 0x3FFF;
  *(v4 + 296) = v6;
  if ((*(path + 148) & 0x80000000) == 0)
  {
    return v4;
  }

  v7 = 16;
  if (v6 <= 5)
  {
    if (!v6)
    {
      return v4;
    }

    if (v6 == 5)
    {
      v7 = 24;
    }

    else
    {
      v7 = 16;
    }
  }

  else if (v6 == 6)
  {
    v7 = 25;
  }

  else
  {
    if (v6 == 8)
    {
      v8 = *(v4 + 256) == _utmpx_working_copy_idzero;
      v7 = 30;
      v9 = 24;
    }

    else
    {
      if (v6 != 7)
      {
        goto LABEL_17;
      }

      v8 = *(v4 + 256) == _utmpx_working_copy_idzero;
      v7 = 31;
      v9 = 29;
    }

    if (!v8)
    {
      v7 = v9;
    }
  }

LABEL_17:
  if (a3)
  {
    v10 = (v7 << 30 >> 31) & 6;
  }

  else
  {
    v10 = v7;
  }

  if ((v10 & 4) != 0 && !*(v4 + 260))
  {
    if (ttyname_r(0, v21, 0x100uLL) && ttyname_r(1, v21, 0x100uLL) && ttyname_r(2, v21, 0x100uLL))
    {
      return 0;
    }

    v11 = strrchr(v21, 47);
    if (v11)
    {
      v12 = (v11 + 1);
    }

    else
    {
      v12 = v21;
    }

    j__strtod((v4 + 260), &v12->pw_name);
  }

  if ((v10 & 2) != 0)
  {
    v13 = (v4 + 260);
    v14 = 33;
    v15 = (v4 + 260);
    while (*v15)
    {
      ++v15;
      if (--v14 <= 1)
      {
        v15 = (v4 + 292);
        break;
      }
    }

    v16 = (v4 + 256);
    if ((v15 - v13) < 4)
    {
      j__mkdtempat_np(v16, v13);
    }

    else
    {
      *v16 = *(v15 - 1);
    }
  }

  if ((v10 & 8) != 0 && !*(v4 + 292))
  {
    *(v4 + 292) = getpid();
  }

  if ((v10 & 1) == 0 || *v4)
  {
    goto LABEL_44;
  }

  memset(v21, 0, 72);
  v17 = getuid();
  v18 = _pwuid_r(v17, v21);
  if (!v18)
  {
    return 0;
  }

  v19 = v18;
  j__strtod(v4, v21[0].pw_name);
  free(v19);
LABEL_44:
  if (!a3 && !*(v4 + 304) && !*(v4 + 312))
  {
    gettimeofday((v4 + 304), 0);
  }

  return v4;
}

int wtmpxname(const char *a1)
{
  if (a1)
  {
    v4 = j__strsignal_r(a1, v1, v2);
    if (v4 <= 0x3FF && a1[v4 - 1] == 120)
    {
      if (wtmp_func_0)
      {
        if ((wtmp_file_0 & 0x80000000) == 0)
        {
          close_NOCANCEL();
          wtmp_file_0 = -1;
        }
      }

      else
      {
        if (wtmp_asl_2)
        {
          asl_release(wtmp_asl_2);
          wtmp_asl_2 = 0;
        }

        wtmp_asl_3 = 0;
        wtmp_asl_4 = 0;
      }

      if (wtmp_file_2)
      {
        free(wtmp_file_2);
      }

      v5 = strdup(a1);
      wtmp_file_2 = v5;
      if (v5)
      {
        LODWORD(v5) = 1;
        wtmp_func_0 = 1;
        wtmp_func_1 = end_file;
        wtmp_func_2 = get_file;
        wtmp_func_3 = set_file;
      }
    }

    else
    {
      LODWORD(v5) = 0;
    }
  }

  else
  {
    if (wtmp_func_0)
    {
      end_file();
      wtmp_func_0 = 0;
      wtmp_func_1 = end_asl;
      wtmp_func_2 = get_asl;
      wtmp_func_3 = set_asl;
    }

    else
    {
      if (wtmp_asl_2)
      {
        asl_release(wtmp_asl_2);
        wtmp_asl_2 = 0;
      }

      wtmp_asl_3 = 0;
      wtmp_asl_4 = 0;
    }

    LODWORD(v5) = 1;
  }

  return v5;
}

void end_asl()
{
  if (wtmp_asl_2)
  {
    asl_release(wtmp_asl_2);
    wtmp_asl_2 = 0;
  }

  wtmp_asl_3 = 0;
  wtmp_asl_4 = 0;
}

void end_file()
{
  if ((wtmp_file_0 & 0x80000000) == 0)
  {
    close_NOCANCEL();
    wtmp_file_0 = -1;
  }

  if (wtmp_file_5)
  {
    free(wtmp_file_5);
    wtmp_file_5 = 0;
  }
}

__asl_object_s *get_asl()
{
  if ((wtmp_asl_3 & 1) == 0)
  {
    set_asl(-1);
  }

  if (wtmp_asl_4)
  {
    return 0;
  }

  v0 = MEMORY[0x193AD5F60](wtmp_asl_2);
  if (v0)
  {
    MEMORY[0x193AD5FD0](get_asl_utx, 640);
    v1 = asl_get(v0, "ut_user");
    if (v1)
    {
      j__strtod(get_asl_utx, v1);
    }

    v2 = asl_get(v0, "ut_id");
    if (v2)
    {
      j__strtod(byte_1EAC9E3C0, v2);
    }

    v3 = asl_get(v0, "ut_line");
    if (v3)
    {
      j__strtod(byte_1EAC9E3C4, v3);
    }

    v4 = asl_get(v0, "ut_pid");
    if (v4)
    {
      dword_1EAC9E3E4 = strtol(v4, 0, 10);
    }

    v5 = asl_get(v0, "ut_type");
    if (v5)
    {
      word_1EAC9E3E8 = strtol(v5, 0, 10);
    }

    v6 = asl_get(v0, "ut_tv.tv_sec");
    if (v6)
    {
      qword_1EAC9E3F0 = strtol(v6, 0, 10);
    }

    v7 = asl_get(v0, "ut_tv.tv_usec");
    if (v7)
    {
      dword_1EAC9E3F8 = strtol(v7, 0, 10);
    }

    v8 = asl_get(v0, "ut_host");
    v0 = get_asl_utx;
    if (v8)
    {
      j__strtod(byte_1EAC9E400, v8);
    }
  }

  else
  {
    asl_release(wtmp_asl_2);
    wtmp_asl_2 = 0;
    wtmp_asl_4 = 1;
  }

  return v0;
}

void set_asl(int a1)
{
  if ((a1 & 0x80000000) == 0)
  {
    wtmp_asl_1 = a1 == 0;
    wtmp_asl_0 = a1 != 0;
    wtmp_file_1 = a1 != 0;
  }

  wtmp_asl_3 = 0;
  wtmp_asl_4 = 0;
  if (wtmp_asl_2)
  {
    asl_release(wtmp_asl_2);
    wtmp_asl_2 = 0;
  }

  v1 = asl_new(1u);
  if (v1)
  {
    v2 = v1;
    asl_set_query(v1, "Facility", "com.apple.system.utmpx", 1u);
    v3 = asl_new(1u);
    if (v3)
    {
      v4 = v3;
      asl_set_query(v3, "Facility", "com.apple.system.lastlog", 1u);
      v5 = asl_new(2u);
      if (v5)
      {
        v6 = v5;
        asl_append(v5, v2);
        asl_append(v6, v4);
        asl_release(v2);
        asl_release(v4);
        v9 = 0;
        if (wtmp_asl_1)
        {
          v7 = 0xFFFFFFFFLL;
        }

        else
        {
          v7 = 1;
        }

        wtmp_asl_2 = MEMORY[0x193AD5F40](0, v6, &v9, wtmp_asl_0 - 1, 0, 4000000, v7);
        asl_release(v6);
        if (wtmp_asl_2)
        {
          wtmp_asl_3 = 1;
          wtmp_asl_4 = 0;
        }

        return;
      }

      asl_release(v2);
      v8 = v4;
    }

    else
    {
      v8 = v2;
    }

    asl_release(v8);
  }
}

void *get_file()
{
  while (1)
  {
    v0 = wtmp_file_7 - 1;
    if (wtmp_file_7 >= 1)
    {
      break;
    }

    if ((wtmp_file_0 & 0x80000000) == 0)
    {
      if (!wtmp_file_4)
      {
        return 0;
      }

      v1 = wtmp_file_5;
      if (wtmp_file_1 == 1)
      {
        wtmp_file_6 = wtmp_file_5;
      }

      else
      {
        wtmp_file_6 = wtmp_file_5 + 19468;
        wtmp_file_3 -= 20096;
        if (lseek(wtmp_file_0, wtmp_file_3, 0) < 0)
        {
LABEL_24:
          v2 = 0;
          wtmp_file_4 = 0;
          return v2;
        }

        v1 = wtmp_file_5;
      }

      v3 = 20096;
      do
      {
        NOCANCEL = read_NOCANCEL();
        v5 = NOCANCEL;
        if (NOCANCEL <= 0)
        {
          if ((NOCANCEL & 0x80000000) == 0 || *__error() != 4 && *__error() != 35)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v1 += NOCANCEL & 0x7FFFFFFF;
        }

        v6 = __OFSUB__(v3, v5);
        v3 -= v5;
      }

      while (!((v3 < 0) ^ v6 | (v3 == 0)));
      wtmp_file_4 -= 32;
      v0 = 31;
      break;
    }

    set_file(-1);
    if (wtmp_file_0 < 0)
    {
      return 0;
    }
  }

  v7 = wtmp_file_6;
  v8 = 628;
  if (!wtmp_file_1)
  {
    v8 = -628;
  }

  wtmp_file_6 += v8;
  wtmp_file_7 = v0;
  v2 = &get_file_ux;
  MEMORY[0x193AD5FD0](&get_file_ux, 640);
  j__mkdtempat_np(&get_file_ux, v7);
  qword_1EAC9E670 = *(v7 + 300);
  dword_1EAC9E678 = *(v7 + 304);
  j__mkdtempat_np(&unk_1EAC9E680, (v7 + 308));
  return v2;
}

uint64_t set_file(int a1)
{
  if ((a1 & 0x80000000) == 0)
  {
    wtmp_asl_1 = a1 == 0;
    wtmp_asl_0 = a1 != 0;
    wtmp_file_1 = a1 != 0;
  }

  if (!wtmp_file_5)
  {
    result = malloc_type_malloc(0x4E80uLL, 0x1000040EE4658C1uLL);
    wtmp_file_5 = result;
    if (!result)
    {
      return result;
    }
  }

  if ((wtmp_file_0 & 0x80000000) == 0)
  {
    close_NOCANCEL();
  }

  result = open_NOCANCEL();
  wtmp_file_0 = result;
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  memset(&v11, 0, sizeof(v11));
  if (fstat(result, &v11) < 0)
  {
    goto LABEL_28;
  }

  wtmp_file_4 = v11.st_size / 0x274uLL;
  if (v11.st_size < 0x4E8uLL)
  {
    goto LABEL_28;
  }

  if (read_NOCANCEL() != 628)
  {
    goto LABEL_28;
  }

  v4 = wtmp_file_5;
  if (j__strncasecmp_l(wtmp_file_5, "utmpx-1.00", v2, v3) || *(v4 + 296) != 10)
  {
    goto LABEL_28;
  }

  v5 = (wtmp_file_4 - 2) & 0xFFFFFFFFFFFFFFE0;
  v6 = wtmp_file_4 - 1 - v5;
  wtmp_file_7 = v6;
  wtmp_file_4 = wtmp_file_4 - 1 - v6;
  if (wtmp_file_1)
  {
    goto LABEL_16;
  }

  wtmp_file_3 = 628 * v5 + 628;
  if (lseek(wtmp_file_0, 628 * v5 + 628, 0) < 0)
  {
LABEL_28:
    wtmp_file_7 = 0;
    result = close_NOCANCEL();
    wtmp_file_0 = -1;
    return result;
  }

  v6 = wtmp_file_7;
  v4 = wtmp_file_5;
LABEL_16:
  v7 = 628 * v6;
  do
  {
    result = read_NOCANCEL();
    v8 = result;
    if (result <= 0)
    {
      if ((result & 0x80000000) == 0)
      {
        goto LABEL_28;
      }

      result = __error();
      if (*result != 4)
      {
        result = __error();
        if (*result != 35)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      v4 += result & 0x7FFFFFFF;
    }

    v9 = __OFSUB__(v7, v8);
    v7 -= v8;
  }

  while (!((v7 < 0) ^ v9 | (v7 == 0)));
  if (wtmp_file_1)
  {
    v10 = wtmp_file_5;
  }

  else
  {
    v10 = wtmp_file_5 + 628 * wtmp_file_7 - 628;
  }

  wtmp_file_6 = v10;
  return result;
}

char *_utmpx32_64(uint64_t a1, uint64_t a2)
{
  MEMORY[0x193AD5FD0](a2, 640);
  j__mkdtempat_np(a2, a1);
  *(a2 + 304) = *(a1 + 300);
  *(a2 + 312) = *(a1 + 304);

  return j__mkdtempat_np(a2 + 320, (a1 + 308));
}

char *_utmpx64_32(uint64_t a1, uint64_t a2)
{
  MEMORY[0x193AD5FD0](a2, 628);
  j__mkdtempat_np(a2, a1);
  *(a2 + 300) = *(a1 + 304);
  *(a2 + 304) = *(a1 + 312);

  return j__mkdtempat_np(a2 + 308, (a1 + 320));
}

void **_openutx(char *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x2E0uLL, 0x10300404E040BDAuLL);
  v4 = v2;
  if (v2)
  {
    *v2 = 0x17600787475;
    v2[81] = 850045863;
    *(v2 + 41) = 0u;
    *(v2 + 42) = 0u;
    *(v2 + 43) = 0u;
    v2[88] = 0;
    if (!__utmpxname(v2, a1, v3))
    {
      if ((v4[91] & 1) == 0)
      {
        free(v4[89]);
      }

      free(v4);
      v4 = 0;
      *__error() = 22;
    }
  }

  return v4;
}

uint64_t _closeutx(void *a1)
{
  if (a1 && *a1 == 0x17600787475)
  {
    pthread_mutex_lock((a1 + 81));
    __endutxent(a1);
    if ((a1[91] & 1) == 0)
    {
      free(a1[89]);
    }

    pthread_mutex_unlock((a1 + 81));
    free(a1);
    return 0;
  }

  else
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }
}

uint64_t _os_debug_log_write_error()
{
  v2[0] = 0;
  v0 = __error();
  strerror_r(*v0, v2, 0xF0uLL);
  return _simple_asl_log();
}

uint64_t _os_debug_log_open_file(uint64_t a1)
{
  if (a1)
  {
    return open_NOCANCEL();
  }

  v2 = getprogname();
  v3 = getpid();
  snprintf(__str, 0x400uLL, "os_debug_log.%s.%d.log", v2, v3);
  strcpy(v5, "/var/tmp/");
  if (access(v5, 2) || (MEMORY[0x193AD6A20](v5, __str, 1024), result = open_NOCANCEL(), (result & 0x80000000) != 0))
  {
    v4 = getenv("TMPDIR");
    if (!v4)
    {
      return 0xFFFFFFFFLL;
    }

    MEMORY[0x193AD6A30](v5, v4, 1024);
    if (access(v5, 2))
    {
      return 0xFFFFFFFFLL;
    }

    MEMORY[0x193AD6A20](v5, __str, 1024);
    result = open_NOCANCEL();
    if ((result & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

int isalnum(int _c)
{
  if (_c <= 0x7F)
  {
    v1 = &_DefaultRuneLocale;
LABEL_8:
    v2 = v1->__runetype[_c];
    return (v2 & 0x500) != 0;
  }

  if (_c < 0x100)
  {
    v3 = __locale_key;
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
    if (!v4)
    {
      v4 = &__global_locale;
    }

    v1 = *(v4[166] + 120);
    goto LABEL_8;
  }

  LOWORD(v2) = ___runetype(_c);
  return (v2 & 0x500) != 0;
}

int isalpha(int _c)
{
  if (_c <= 0x7F)
  {
    v1 = &_DefaultRuneLocale;
LABEL_8:
    v2 = v1->__runetype[_c];
    return (v2 >> 8) & 1;
  }

  if (_c < 0x100)
  {
    v3 = __locale_key;
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
    if (!v4)
    {
      v4 = &__global_locale;
    }

    v1 = *(v4[166] + 120);
    goto LABEL_8;
  }

  v2 = ___runetype(_c);
  return (v2 >> 8) & 1;
}

int isblank(int _c)
{
  if (_c <= 0x7F)
  {
    v1 = &_DefaultRuneLocale;
LABEL_8:
    v2 = v1->__runetype[_c];
    return (v2 >> 17) & 1;
  }

  if (_c < 0x100)
  {
    v3 = __locale_key;
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
    if (!v4)
    {
      v4 = &__global_locale;
    }

    v1 = *(v4[166] + 120);
    goto LABEL_8;
  }

  v2 = ___runetype(_c);
  return (v2 >> 17) & 1;
}

int iscntrl(int _c)
{
  if (_c <= 0x7F)
  {
    v1 = &_DefaultRuneLocale;
LABEL_8:
    v2 = v1->__runetype[_c];
    return (v2 >> 9) & 1;
  }

  if (_c < 0x100)
  {
    v3 = __locale_key;
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
    if (!v4)
    {
      v4 = &__global_locale;
    }

    v1 = *(v4[166] + 120);
    goto LABEL_8;
  }

  v2 = ___runetype(_c);
  return (v2 >> 9) & 1;
}

int isdigit(int _c)
{
  if (_c <= 0xFF)
  {
    return (_DefaultRuneLocale.__runetype[_c] >> 10) & 1;
  }

  else
  {
    return 0;
  }
}

int isgraph(int _c)
{
  if (_c <= 0x7F)
  {
    v1 = &_DefaultRuneLocale;
LABEL_8:
    v2 = v1->__runetype[_c];
    return (v2 >> 11) & 1;
  }

  if (_c < 0x100)
  {
    v3 = __locale_key;
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
    if (!v4)
    {
      v4 = &__global_locale;
    }

    v1 = *(v4[166] + 120);
    goto LABEL_8;
  }

  v2 = ___runetype(_c);
  return (v2 >> 11) & 1;
}

int islower(int _c)
{
  if (_c <= 0x7F)
  {
    v1 = &_DefaultRuneLocale;
LABEL_8:
    v2 = v1->__runetype[_c];
    return (v2 >> 12) & 1;
  }

  if (_c < 0x100)
  {
    v3 = __locale_key;
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
    if (!v4)
    {
      v4 = &__global_locale;
    }

    v1 = *(v4[166] + 120);
    goto LABEL_8;
  }

  v2 = ___runetype(_c);
  return (v2 >> 12) & 1;
}

int isprint(int _c)
{
  if (_c <= 0x7F)
  {
    v1 = &_DefaultRuneLocale;
LABEL_8:
    v2 = v1->__runetype[_c];
    return (v2 >> 18) & 1;
  }

  if (_c < 0x100)
  {
    v3 = __locale_key;
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
    if (!v4)
    {
      v4 = &__global_locale;
    }

    v1 = *(v4[166] + 120);
    goto LABEL_8;
  }

  v2 = ___runetype(_c);
  return (v2 >> 18) & 1;
}

int ispunct(int _c)
{
  if (_c <= 0x7F)
  {
    v1 = &_DefaultRuneLocale;
LABEL_8:
    v2 = v1->__runetype[_c];
    return (v2 >> 13) & 1;
  }

  if (_c < 0x100)
  {
    v3 = __locale_key;
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
    if (!v4)
    {
      v4 = &__global_locale;
    }

    v1 = *(v4[166] + 120);
    goto LABEL_8;
  }

  v2 = ___runetype(_c);
  return (v2 >> 13) & 1;
}

int isspace(int _c)
{
  if (_c <= 0x7F)
  {
    v1 = &_DefaultRuneLocale;
LABEL_8:
    v2 = v1->__runetype[_c];
    return (v2 >> 14) & 1;
  }

  if (_c < 0x100)
  {
    v3 = __locale_key;
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
    if (!v4)
    {
      v4 = &__global_locale;
    }

    v1 = *(v4[166] + 120);
    goto LABEL_8;
  }

  v2 = ___runetype(_c);
  return (v2 >> 14) & 1;
}

int isupper(int _c)
{
  if (_c <= 0x7F)
  {
    v1 = &_DefaultRuneLocale;
LABEL_8:
    v2 = v1->__runetype[_c];
    return (v2 >> 15) & 1;
  }

  if (_c < 0x100)
  {
    v3 = __locale_key;
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
    if (!v4)
    {
      v4 = &__global_locale;
    }

    v1 = *(v4[166] + 120);
    goto LABEL_8;
  }

  v2 = ___runetype(_c);
  return (v2 >> 15) & 1;
}

int isxdigit(int _c)
{
  if (_c <= 0xFF)
  {
    return HIWORD(_DefaultRuneLocale.__runetype[_c]) & 1;
  }

  else
  {
    return 0;
  }
}

int tolower(int _c)
{
  if (_c >= 0x100)
  {
    return ___tolower(_c);
  }

  v2 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v2);
  if (!v3)
  {
    v3 = &__global_locale;
  }

  return *(*(v3[166] + 120) + 4 * _c + 1084);
}

int toupper(int _c)
{
  if (_c >= 0x100)
  {
    return ___toupper(_c);
  }

  v2 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v2);
  if (!v3)
  {
    v3 = &__global_locale;
  }

  return *(*(v3[166] + 120) + 4 * _c + 2108);
}

int digittoint(int _c)
{
  if (_c < 0x100)
  {
    v2 = __locale_key;
    v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v2);
    if (!v3)
    {
      v3 = &__global_locale;
    }

    v1 = *(*(v3[166] + 120) + 4 * _c + 60);
  }

  else
  {
    LOBYTE(v1) = ___runetype(_c);
  }

  return v1 & 0xF;
}

int ishexnumber(int _c)
{
  if (_c <= 0x7F)
  {
    v1 = &_DefaultRuneLocale;
LABEL_8:
    v2 = v1->__runetype[_c];
    return HIWORD(v2) & 1;
  }

  if (_c < 0x100)
  {
    v3 = __locale_key;
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
    if (!v4)
    {
      v4 = &__global_locale;
    }

    v1 = *(v4[166] + 120);
    goto LABEL_8;
  }

  v2 = ___runetype(_c);
  return HIWORD(v2) & 1;
}

int isideogram(int _c)
{
  if (_c <= 0x7F)
  {
    v1 = &_DefaultRuneLocale;
LABEL_8:
    v2 = v1->__runetype[_c];
    return (v2 >> 19) & 1;
  }

  if (_c < 0x100)
  {
    v3 = __locale_key;
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
    if (!v4)
    {
      v4 = &__global_locale;
    }

    v1 = *(v4[166] + 120);
    goto LABEL_8;
  }

  v2 = ___runetype(_c);
  return (v2 >> 19) & 1;
}

int isnumber(int _c)
{
  if (_c <= 0x7F)
  {
    v1 = &_DefaultRuneLocale;
LABEL_8:
    v2 = v1->__runetype[_c];
    return (v2 >> 10) & 1;
  }

  if (_c < 0x100)
  {
    v3 = __locale_key;
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
    if (!v4)
    {
      v4 = &__global_locale;
    }

    v1 = *(v4[166] + 120);
    goto LABEL_8;
  }

  v2 = ___runetype(_c);
  return (v2 >> 10) & 1;
}

int isphonogram(int _c)
{
  if (_c <= 0x7F)
  {
    v1 = &_DefaultRuneLocale;
LABEL_8:
    v2 = v1->__runetype[_c];
    return (v2 >> 21) & 1;
  }

  if (_c < 0x100)
  {
    v3 = __locale_key;
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
    if (!v4)
    {
      v4 = &__global_locale;
    }

    v1 = *(v4[166] + 120);
    goto LABEL_8;
  }

  v2 = ___runetype(_c);
  return (v2 >> 21) & 1;
}

int isrune(int _c)
{
  if (_c <= 0x7F)
  {
    v1 = &_DefaultRuneLocale;
LABEL_8:
    v2 = v1->__runetype[_c];
    return v2 > 0xF;
  }

  if (_c < 0x100)
  {
    v3 = __locale_key;
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
    if (!v4)
    {
      v4 = &__global_locale;
    }

    v1 = *(v4[166] + 120);
    goto LABEL_8;
  }

  v2 = ___runetype(_c);
  return v2 > 0xF;
}

int isspecial(int _c)
{
  if (_c <= 0x7F)
  {
    v1 = &_DefaultRuneLocale;
LABEL_8:
    v2 = v1->__runetype[_c];
    return (v2 >> 20) & 1;
  }

  if (_c < 0x100)
  {
    v3 = __locale_key;
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
    if (!v4)
    {
      v4 = &__global_locale;
    }

    v1 = *(v4[166] + 120);
    goto LABEL_8;
  }

  v2 = ___runetype(_c);
  return (v2 >> 20) & 1;
}

int digittoint_l(int c, locale_t l)
{
  if (c < 0x100)
  {
    v3 = &__c_locale;
    v4 = &__global_locale;
    if (l != -1)
    {
      v4 = l;
    }

    if (l)
    {
      v3 = v4;
    }

    v2 = *(*(*(v3 + 166) + 120) + 4 * c + 60);
  }

  else
  {
    LOBYTE(v2) = ___runetype_l(c, l);
  }

  return v2 & 0xF;
}

int isalnum_l(int c, locale_t l)
{
  if (c <= 0x7F)
  {
    v2 = &_DefaultRuneLocale;
LABEL_10:
    v3 = v2->__runetype[c];
    return (v3 & 0x500) != 0;
  }

  if (c < 0x100)
  {
    v4 = &__c_locale;
    v5 = &__global_locale;
    if (l != -1)
    {
      v5 = l;
    }

    if (l)
    {
      v4 = v5;
    }

    v2 = *(*(v4 + 166) + 120);
    goto LABEL_10;
  }

  LOWORD(v3) = ___runetype_l(c, l);
  return (v3 & 0x500) != 0;
}

int isalpha_l(int c, locale_t l)
{
  if (c <= 0x7F)
  {
    v2 = &_DefaultRuneLocale;
LABEL_10:
    v3 = v2->__runetype[c];
    return (v3 >> 8) & 1;
  }

  if (c < 0x100)
  {
    v4 = &__c_locale;
    v5 = &__global_locale;
    if (l != -1)
    {
      v5 = l;
    }

    if (l)
    {
      v4 = v5;
    }

    v2 = *(*(v4 + 166) + 120);
    goto LABEL_10;
  }

  v3 = ___runetype_l(c, l);
  return (v3 >> 8) & 1;
}

int isblank_l(int c, locale_t l)
{
  if (c <= 0x7F)
  {
    v2 = &_DefaultRuneLocale;
LABEL_10:
    v3 = v2->__runetype[c];
    return (v3 >> 17) & 1;
  }

  if (c < 0x100)
  {
    v4 = &__c_locale;
    v5 = &__global_locale;
    if (l != -1)
    {
      v5 = l;
    }

    if (l)
    {
      v4 = v5;
    }

    v2 = *(*(v4 + 166) + 120);
    goto LABEL_10;
  }

  v3 = ___runetype_l(c, l);
  return (v3 >> 17) & 1;
}

int iscntrl_l(int c, locale_t l)
{
  if (c <= 0x7F)
  {
    v2 = &_DefaultRuneLocale;
LABEL_10:
    v3 = v2->__runetype[c];
    return (v3 >> 9) & 1;
  }

  if (c < 0x100)
  {
    v4 = &__c_locale;
    v5 = &__global_locale;
    if (l != -1)
    {
      v5 = l;
    }

    if (l)
    {
      v4 = v5;
    }

    v2 = *(*(v4 + 166) + 120);
    goto LABEL_10;
  }

  v3 = ___runetype_l(c, l);
  return (v3 >> 9) & 1;
}

int isdigit_l(int c, locale_t l)
{
  if (c <= 0x7F)
  {
    v2 = &_DefaultRuneLocale;
LABEL_10:
    v3 = v2->__runetype[c];
    return (v3 >> 10) & 1;
  }

  if (c < 0x100)
  {
    v4 = &__c_locale;
    v5 = &__global_locale;
    if (l != -1)
    {
      v5 = l;
    }

    if (l)
    {
      v4 = v5;
    }

    v2 = *(*(v4 + 166) + 120);
    goto LABEL_10;
  }

  v3 = ___runetype_l(c, l);
  return (v3 >> 10) & 1;
}

int isgraph_l(int c, locale_t l)
{
  if (c <= 0x7F)
  {
    v2 = &_DefaultRuneLocale;
LABEL_10:
    v3 = v2->__runetype[c];
    return (v3 >> 11) & 1;
  }

  if (c < 0x100)
  {
    v4 = &__c_locale;
    v5 = &__global_locale;
    if (l != -1)
    {
      v5 = l;
    }

    if (l)
    {
      v4 = v5;
    }

    v2 = *(*(v4 + 166) + 120);
    goto LABEL_10;
  }

  v3 = ___runetype_l(c, l);
  return (v3 >> 11) & 1;
}

int ishexnumber_l(int c, locale_t l)
{
  if (c <= 0x7F)
  {
    v2 = &_DefaultRuneLocale;
LABEL_10:
    v3 = v2->__runetype[c];
    return HIWORD(v3) & 1;
  }

  if (c < 0x100)
  {
    v4 = &__c_locale;
    v5 = &__global_locale;
    if (l != -1)
    {
      v5 = l;
    }

    if (l)
    {
      v4 = v5;
    }

    v2 = *(*(v4 + 166) + 120);
    goto LABEL_10;
  }

  v3 = ___runetype_l(c, l);
  return HIWORD(v3) & 1;
}

int isideogram_l(int c, locale_t l)
{
  if (c <= 0x7F)
  {
    v2 = &_DefaultRuneLocale;
LABEL_10:
    v3 = v2->__runetype[c];
    return (v3 >> 19) & 1;
  }

  if (c < 0x100)
  {
    v4 = &__c_locale;
    v5 = &__global_locale;
    if (l != -1)
    {
      v5 = l;
    }

    if (l)
    {
      v4 = v5;
    }

    v2 = *(*(v4 + 166) + 120);
    goto LABEL_10;
  }

  v3 = ___runetype_l(c, l);
  return (v3 >> 19) & 1;
}

int islower_l(int c, locale_t l)
{
  if (c <= 0x7F)
  {
    v2 = &_DefaultRuneLocale;
LABEL_10:
    v3 = v2->__runetype[c];
    return (v3 >> 12) & 1;
  }

  if (c < 0x100)
  {
    v4 = &__c_locale;
    v5 = &__global_locale;
    if (l != -1)
    {
      v5 = l;
    }

    if (l)
    {
      v4 = v5;
    }

    v2 = *(*(v4 + 166) + 120);
    goto LABEL_10;
  }

  v3 = ___runetype_l(c, l);
  return (v3 >> 12) & 1;
}

int isnumber_l(int c, locale_t l)
{
  if (c <= 0x7F)
  {
    v2 = &_DefaultRuneLocale;
LABEL_10:
    v3 = v2->__runetype[c];
    return (v3 >> 10) & 1;
  }

  if (c < 0x100)
  {
    v4 = &__c_locale;
    v5 = &__global_locale;
    if (l != -1)
    {
      v5 = l;
    }

    if (l)
    {
      v4 = v5;
    }

    v2 = *(*(v4 + 166) + 120);
    goto LABEL_10;
  }

  v3 = ___runetype_l(c, l);
  return (v3 >> 10) & 1;
}

int isphonogram_l(int c, locale_t l)
{
  if (c <= 0x7F)
  {
    v2 = &_DefaultRuneLocale;
LABEL_10:
    v3 = v2->__runetype[c];
    return (v3 >> 21) & 1;
  }

  if (c < 0x100)
  {
    v4 = &__c_locale;
    v5 = &__global_locale;
    if (l != -1)
    {
      v5 = l;
    }

    if (l)
    {
      v4 = v5;
    }

    v2 = *(*(v4 + 166) + 120);
    goto LABEL_10;
  }

  v3 = ___runetype_l(c, l);
  return (v3 >> 21) & 1;
}

int isprint_l(int c, locale_t l)
{
  if (c <= 0x7F)
  {
    v2 = &_DefaultRuneLocale;
LABEL_10:
    v3 = v2->__runetype[c];
    return (v3 >> 18) & 1;
  }

  if (c < 0x100)
  {
    v4 = &__c_locale;
    v5 = &__global_locale;
    if (l != -1)
    {
      v5 = l;
    }

    if (l)
    {
      v4 = v5;
    }

    v2 = *(*(v4 + 166) + 120);
    goto LABEL_10;
  }

  v3 = ___runetype_l(c, l);
  return (v3 >> 18) & 1;
}

int ispunct_l(int c, locale_t l)
{
  if (c <= 0x7F)
  {
    v2 = &_DefaultRuneLocale;
LABEL_10:
    v3 = v2->__runetype[c];
    return (v3 >> 13) & 1;
  }

  if (c < 0x100)
  {
    v4 = &__c_locale;
    v5 = &__global_locale;
    if (l != -1)
    {
      v5 = l;
    }

    if (l)
    {
      v4 = v5;
    }

    v2 = *(*(v4 + 166) + 120);
    goto LABEL_10;
  }

  v3 = ___runetype_l(c, l);
  return (v3 >> 13) & 1;
}

int isrune_l(int c, locale_t l)
{
  if (c > 0x7F)
  {
    if (c < 0x100)
    {
      v4 = &__c_locale;
      v5 = &__global_locale;
      if (l != -1)
      {
        v5 = l;
      }

      if (l)
      {
        v4 = v5;
      }

      v3 = *(*(*(v4 + 166) + 120) + 4 * c + 60);
    }

    else
    {
      v3 = ___runetype_l(c, l);
    }

    v2 = (v3 & 0xFFFFFFF0);
  }

  else
  {
    v2 = _DefaultRuneLocale.__runetype[c] & 0xFFFFFFF0;
  }

  return v2 != 0;
}

int isspace_l(int c, locale_t l)
{
  if (c <= 0x7F)
  {
    v2 = &_DefaultRuneLocale;
LABEL_10:
    v3 = v2->__runetype[c];
    return (v3 >> 14) & 1;
  }

  if (c < 0x100)
  {
    v4 = &__c_locale;
    v5 = &__global_locale;
    if (l != -1)
    {
      v5 = l;
    }

    if (l)
    {
      v4 = v5;
    }

    v2 = *(*(v4 + 166) + 120);
    goto LABEL_10;
  }

  v3 = ___runetype_l(c, l);
  return (v3 >> 14) & 1;
}

int isspecial_l(int c, locale_t l)
{
  if (c <= 0x7F)
  {
    v2 = &_DefaultRuneLocale;
LABEL_10:
    v3 = v2->__runetype[c];
    return (v3 >> 20) & 1;
  }

  if (c < 0x100)
  {
    v4 = &__c_locale;
    v5 = &__global_locale;
    if (l != -1)
    {
      v5 = l;
    }

    if (l)
    {
      v4 = v5;
    }

    v2 = *(*(v4 + 166) + 120);
    goto LABEL_10;
  }

  v3 = ___runetype_l(c, l);
  return (v3 >> 20) & 1;
}

int isupper_l(int c, locale_t l)
{
  if (c <= 0x7F)
  {
    v2 = &_DefaultRuneLocale;
LABEL_10:
    v3 = v2->__runetype[c];
    return (v3 >> 15) & 1;
  }

  if (c < 0x100)
  {
    v4 = &__c_locale;
    v5 = &__global_locale;
    if (l != -1)
    {
      v5 = l;
    }

    if (l)
    {
      v4 = v5;
    }

    v2 = *(*(v4 + 166) + 120);
    goto LABEL_10;
  }

  v3 = ___runetype_l(c, l);
  return (v3 >> 15) & 1;
}

int isxdigit_l(int c, locale_t l)
{
  if (c <= 0x7F)
  {
    v2 = &_DefaultRuneLocale;
LABEL_10:
    v3 = v2->__runetype[c];
    return HIWORD(v3) & 1;
  }

  if (c < 0x100)
  {
    v4 = &__c_locale;
    v5 = &__global_locale;
    if (l != -1)
    {
      v5 = l;
    }

    if (l)
    {
      v4 = v5;
    }

    v2 = *(*(v4 + 166) + 120);
    goto LABEL_10;
  }

  v3 = ___runetype_l(c, l);
  return HIWORD(v3) & 1;
}

int tolower_l(int c, locale_t l)
{
  if (c > 0x7F)
  {
    return ___tolower_l(c, l);
  }

  else
  {
    return _DefaultRuneLocale.__maplower[c];
  }
}

int toupper_l(int c, locale_t l)
{
  if (c > 0x7F)
  {
    return ___toupper_l(c, l);
  }

  else
  {
    return _DefaultRuneLocale.__mapupper[c];
  }
}

int iswalnum(wint_t _wc)
{
  if (_wc <= 0x7F)
  {
    v1 = &_DefaultRuneLocale;
LABEL_8:
    v2 = v1->__runetype[_wc];
    return (v2 & 0x500) != 0;
  }

  if (_wc < 0x100)
  {
    v3 = __locale_key;
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
    if (!v4)
    {
      v4 = &__global_locale;
    }

    v1 = *(v4[166] + 120);
    goto LABEL_8;
  }

  LOWORD(v2) = ___runetype(_wc);
  return (v2 & 0x500) != 0;
}

int iswalpha(wint_t _wc)
{
  if (_wc <= 0x7F)
  {
    v1 = &_DefaultRuneLocale;
LABEL_8:
    v2 = v1->__runetype[_wc];
    return (v2 >> 8) & 1;
  }

  if (_wc < 0x100)
  {
    v3 = __locale_key;
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
    if (!v4)
    {
      v4 = &__global_locale;
    }

    v1 = *(v4[166] + 120);
    goto LABEL_8;
  }

  v2 = ___runetype(_wc);
  return (v2 >> 8) & 1;
}

int iswcntrl(wint_t _wc)
{
  if (_wc <= 0x7F)
  {
    v1 = &_DefaultRuneLocale;
LABEL_8:
    v2 = v1->__runetype[_wc];
    return (v2 >> 9) & 1;
  }

  if (_wc < 0x100)
  {
    v3 = __locale_key;
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
    if (!v4)
    {
      v4 = &__global_locale;
    }

    v1 = *(v4[166] + 120);
    goto LABEL_8;
  }

  v2 = ___runetype(_wc);
  return (v2 >> 9) & 1;
}

int iswctype(wint_t _wc, wctype_t _charclass)
{
  if (_wc <= 0x7F)
  {
    v3 = &_DefaultRuneLocale;
LABEL_8:
    v4 = v3->__runetype[_wc];
    return (v4 & _charclass) != 0;
  }

  if (_wc < 0x100)
  {
    v5 = __locale_key;
    v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
    if (!v6)
    {
      v6 = &__global_locale;
    }

    v3 = *(v6[166] + 120);
    goto LABEL_8;
  }

  v4 = ___runetype(_wc);
  return (v4 & _charclass) != 0;
}

int iswdigit(wint_t _wc)
{
  if (_wc <= 0xFF)
  {
    return (_DefaultRuneLocale.__runetype[_wc] >> 10) & 1;
  }

  else
  {
    return 0;
  }
}

int iswgraph(wint_t _wc)
{
  if (_wc <= 0x7F)
  {
    v1 = &_DefaultRuneLocale;
LABEL_8:
    v2 = v1->__runetype[_wc];
    return (v2 >> 11) & 1;
  }

  if (_wc < 0x100)
  {
    v3 = __locale_key;
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
    if (!v4)
    {
      v4 = &__global_locale;
    }

    v1 = *(v4[166] + 120);
    goto LABEL_8;
  }

  v2 = ___runetype(_wc);
  return (v2 >> 11) & 1;
}

int iswlower(wint_t _wc)
{
  if (_wc <= 0x7F)
  {
    v1 = &_DefaultRuneLocale;
LABEL_8:
    v2 = v1->__runetype[_wc];
    return (v2 >> 12) & 1;
  }

  if (_wc < 0x100)
  {
    v3 = __locale_key;
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
    if (!v4)
    {
      v4 = &__global_locale;
    }

    v1 = *(v4[166] + 120);
    goto LABEL_8;
  }

  v2 = ___runetype(_wc);
  return (v2 >> 12) & 1;
}

int iswprint(wint_t _wc)
{
  if (_wc <= 0x7F)
  {
    v1 = &_DefaultRuneLocale;
LABEL_8:
    v2 = v1->__runetype[_wc];
    return (v2 >> 18) & 1;
  }

  if (_wc < 0x100)
  {
    v3 = __locale_key;
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
    if (!v4)
    {
      v4 = &__global_locale;
    }

    v1 = *(v4[166] + 120);
    goto LABEL_8;
  }

  v2 = ___runetype(_wc);
  return (v2 >> 18) & 1;
}

int iswpunct(wint_t _wc)
{
  if (_wc <= 0x7F)
  {
    v1 = &_DefaultRuneLocale;
LABEL_8:
    v2 = v1->__runetype[_wc];
    return (v2 >> 13) & 1;
  }

  if (_wc < 0x100)
  {
    v3 = __locale_key;
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
    if (!v4)
    {
      v4 = &__global_locale;
    }

    v1 = *(v4[166] + 120);
    goto LABEL_8;
  }

  v2 = ___runetype(_wc);
  return (v2 >> 13) & 1;
}

int iswspace(wint_t _wc)
{
  if (_wc <= 0x7F)
  {
    v1 = &_DefaultRuneLocale;
LABEL_8:
    v2 = v1->__runetype[_wc];
    return (v2 >> 14) & 1;
  }

  if (_wc < 0x100)
  {
    v3 = __locale_key;
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
    if (!v4)
    {
      v4 = &__global_locale;
    }

    v1 = *(v4[166] + 120);
    goto LABEL_8;
  }

  v2 = ___runetype(_wc);
  return (v2 >> 14) & 1;
}

int iswupper(wint_t _wc)
{
  if (_wc <= 0x7F)
  {
    v1 = &_DefaultRuneLocale;
LABEL_8:
    v2 = v1->__runetype[_wc];
    return (v2 >> 15) & 1;
  }

  if (_wc < 0x100)
  {
    v3 = __locale_key;
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
    if (!v4)
    {
      v4 = &__global_locale;
    }

    v1 = *(v4[166] + 120);
    goto LABEL_8;
  }

  v2 = ___runetype(_wc);
  return (v2 >> 15) & 1;
}

int iswxdigit(wint_t _wc)
{
  if (_wc <= 0xFF)
  {
    return HIWORD(_DefaultRuneLocale.__runetype[_wc]) & 1;
  }

  else
  {
    return 0;
  }
}

wint_t towlower(wint_t _wc)
{
  if (_wc >= 0x100)
  {
    return ___tolower(_wc);
  }

  v2 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v2);
  if (!v3)
  {
    v3 = &__global_locale;
  }

  return *(*(v3[166] + 120) + 4 * _wc + 1084);
}

wint_t towupper(wint_t _wc)
{
  if (_wc >= 0x100)
  {
    return ___toupper(_wc);
  }

  v2 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v2);
  if (!v3)
  {
    v3 = &__global_locale;
  }

  return *(*(v3[166] + 120) + 4 * _wc + 2108);
}

int iswalnum_l(wint_t _wc, locale_t _l)
{
  if (_wc <= 0x7F)
  {
    v2 = &_DefaultRuneLocale;
LABEL_10:
    v3 = v2->__runetype[_wc];
    return (v3 & 0x500) != 0;
  }

  if (_wc < 0x100)
  {
    v4 = &__c_locale;
    v5 = &__global_locale;
    if (_l != -1)
    {
      v5 = _l;
    }

    if (_l)
    {
      v4 = v5;
    }

    v2 = *(*(v4 + 166) + 120);
    goto LABEL_10;
  }

  LOWORD(v3) = ___runetype_l(_wc, _l);
  return (v3 & 0x500) != 0;
}

int iswalpha_l(wint_t _wc, locale_t _l)
{
  if (_wc <= 0x7F)
  {
    v2 = &_DefaultRuneLocale;
LABEL_10:
    v3 = v2->__runetype[_wc];
    return (v3 >> 8) & 1;
  }

  if (_wc < 0x100)
  {
    v4 = &__c_locale;
    v5 = &__global_locale;
    if (_l != -1)
    {
      v5 = _l;
    }

    if (_l)
    {
      v4 = v5;
    }

    v2 = *(*(v4 + 166) + 120);
    goto LABEL_10;
  }

  v3 = ___runetype_l(_wc, _l);
  return (v3 >> 8) & 1;
}

int iswcntrl_l(wint_t _wc, locale_t _l)
{
  if (_wc <= 0x7F)
  {
    v2 = &_DefaultRuneLocale;
LABEL_10:
    v3 = v2->__runetype[_wc];
    return (v3 >> 9) & 1;
  }

  if (_wc < 0x100)
  {
    v4 = &__c_locale;
    v5 = &__global_locale;
    if (_l != -1)
    {
      v5 = _l;
    }

    if (_l)
    {
      v4 = v5;
    }

    v2 = *(*(v4 + 166) + 120);
    goto LABEL_10;
  }

  v3 = ___runetype_l(_wc, _l);
  return (v3 >> 9) & 1;
}

int iswctype_l(wint_t _wc, wctype_t _charclass, locale_t _l)
{
  if (_wc > 0x7F)
  {
    if (_wc < 0x100)
    {
      v6 = &__c_locale;
      v7 = &__global_locale;
      if (_l != -1)
      {
        v7 = _l;
      }

      if (_l)
      {
        v6 = v7;
      }

      v5 = *(*(*(v6 + 166) + 120) + 4 * _wc + 60);
    }

    else
    {
      v5 = ___runetype_l(_wc, _l);
    }

    v4 = (v5 & _charclass);
  }

  else
  {
    v4 = _DefaultRuneLocale.__runetype[_wc] & _charclass;
  }

  return v4 != 0;
}

int iswdigit_l(wint_t _wc, locale_t _l)
{
  if (_wc <= 0x7F)
  {
    v2 = &_DefaultRuneLocale;
LABEL_10:
    v3 = v2->__runetype[_wc];
    return (v3 >> 10) & 1;
  }

  if (_wc < 0x100)
  {
    v4 = &__c_locale;
    v5 = &__global_locale;
    if (_l != -1)
    {
      v5 = _l;
    }

    if (_l)
    {
      v4 = v5;
    }

    v2 = *(*(v4 + 166) + 120);
    goto LABEL_10;
  }

  v3 = ___runetype_l(_wc, _l);
  return (v3 >> 10) & 1;
}

int iswgraph_l(wint_t _wc, locale_t _l)
{
  if (_wc <= 0x7F)
  {
    v2 = &_DefaultRuneLocale;
LABEL_10:
    v3 = v2->__runetype[_wc];
    return (v3 >> 11) & 1;
  }

  if (_wc < 0x100)
  {
    v4 = &__c_locale;
    v5 = &__global_locale;
    if (_l != -1)
    {
      v5 = _l;
    }

    if (_l)
    {
      v4 = v5;
    }

    v2 = *(*(v4 + 166) + 120);
    goto LABEL_10;
  }

  v3 = ___runetype_l(_wc, _l);
  return (v3 >> 11) & 1;
}

int iswlower_l(wint_t _wc, locale_t _l)
{
  if (_wc <= 0x7F)
  {
    v2 = &_DefaultRuneLocale;
LABEL_10:
    v3 = v2->__runetype[_wc];
    return (v3 >> 12) & 1;
  }

  if (_wc < 0x100)
  {
    v4 = &__c_locale;
    v5 = &__global_locale;
    if (_l != -1)
    {
      v5 = _l;
    }

    if (_l)
    {
      v4 = v5;
    }

    v2 = *(*(v4 + 166) + 120);
    goto LABEL_10;
  }

  v3 = ___runetype_l(_wc, _l);
  return (v3 >> 12) & 1;
}

int iswprint_l(wint_t _wc, locale_t _l)
{
  if (_wc <= 0x7F)
  {
    v2 = &_DefaultRuneLocale;
LABEL_10:
    v3 = v2->__runetype[_wc];
    return (v3 >> 18) & 1;
  }

  if (_wc < 0x100)
  {
    v4 = &__c_locale;
    v5 = &__global_locale;
    if (_l != -1)
    {
      v5 = _l;
    }

    if (_l)
    {
      v4 = v5;
    }

    v2 = *(*(v4 + 166) + 120);
    goto LABEL_10;
  }

  v3 = ___runetype_l(_wc, _l);
  return (v3 >> 18) & 1;
}

int iswpunct_l(wint_t _wc, locale_t _l)
{
  if (_wc <= 0x7F)
  {
    v2 = &_DefaultRuneLocale;
LABEL_10:
    v3 = v2->__runetype[_wc];
    return (v3 >> 13) & 1;
  }

  if (_wc < 0x100)
  {
    v4 = &__c_locale;
    v5 = &__global_locale;
    if (_l != -1)
    {
      v5 = _l;
    }

    if (_l)
    {
      v4 = v5;
    }

    v2 = *(*(v4 + 166) + 120);
    goto LABEL_10;
  }

  v3 = ___runetype_l(_wc, _l);
  return (v3 >> 13) & 1;
}

int iswspace_l(wint_t _wc, locale_t _l)
{
  if (_wc <= 0x7F)
  {
    v2 = &_DefaultRuneLocale;
LABEL_10:
    v3 = v2->__runetype[_wc];
    return (v3 >> 14) & 1;
  }

  if (_wc < 0x100)
  {
    v4 = &__c_locale;
    v5 = &__global_locale;
    if (_l != -1)
    {
      v5 = _l;
    }

    if (_l)
    {
      v4 = v5;
    }

    v2 = *(*(v4 + 166) + 120);
    goto LABEL_10;
  }

  v3 = ___runetype_l(_wc, _l);
  return (v3 >> 14) & 1;
}

int iswupper_l(wint_t _wc, locale_t _l)
{
  if (_wc <= 0x7F)
  {
    v2 = &_DefaultRuneLocale;
LABEL_10:
    v3 = v2->__runetype[_wc];
    return (v3 >> 15) & 1;
  }

  if (_wc < 0x100)
  {
    v4 = &__c_locale;
    v5 = &__global_locale;
    if (_l != -1)
    {
      v5 = _l;
    }

    if (_l)
    {
      v4 = v5;
    }

    v2 = *(*(v4 + 166) + 120);
    goto LABEL_10;
  }

  v3 = ___runetype_l(_wc, _l);
  return (v3 >> 15) & 1;
}

int iswxdigit_l(wint_t _wc, locale_t _l)
{
  if (_wc <= 0x7F)
  {
    v2 = &_DefaultRuneLocale;
LABEL_10:
    v3 = v2->__runetype[_wc];
    return HIWORD(v3) & 1;
  }

  if (_wc < 0x100)
  {
    v4 = &__c_locale;
    v5 = &__global_locale;
    if (_l != -1)
    {
      v5 = _l;
    }

    if (_l)
    {
      v4 = v5;
    }

    v2 = *(*(v4 + 166) + 120);
    goto LABEL_10;
  }

  v3 = ___runetype_l(_wc, _l);
  return HIWORD(v3) & 1;
}

wint_t towlower_l(wint_t _wc, locale_t _l)
{
  if (_wc > 0x7F)
  {
    return ___tolower_l(_wc, _l);
  }

  else
  {
    return _DefaultRuneLocale.__maplower[_wc];
  }
}

wint_t towupper_l(wint_t _wc, locale_t _l)
{
  if (_wc > 0x7F)
  {
    return ___toupper_l(_wc, _l);
  }

  else
  {
    return _DefaultRuneLocale.__mapupper[_wc];
  }
}

int iswblank(wint_t _wc)
{
  if (_wc <= 0x7F)
  {
    v1 = &_DefaultRuneLocale;
LABEL_8:
    v2 = v1->__runetype[_wc];
    return (v2 >> 17) & 1;
  }

  if (_wc < 0x100)
  {
    v3 = __locale_key;
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
    if (!v4)
    {
      v4 = &__global_locale;
    }

    v1 = *(v4[166] + 120);
    goto LABEL_8;
  }

  v2 = ___runetype(_wc);
  return (v2 >> 17) & 1;
}

int iswhexnumber(wint_t _wc)
{
  if (_wc <= 0x7F)
  {
    v1 = &_DefaultRuneLocale;
LABEL_8:
    v2 = v1->__runetype[_wc];
    return HIWORD(v2) & 1;
  }

  if (_wc < 0x100)
  {
    v3 = __locale_key;
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
    if (!v4)
    {
      v4 = &__global_locale;
    }

    v1 = *(v4[166] + 120);
    goto LABEL_8;
  }

  v2 = ___runetype(_wc);
  return HIWORD(v2) & 1;
}

int iswideogram(wint_t _wc)
{
  if (_wc <= 0x7F)
  {
    v1 = &_DefaultRuneLocale;
LABEL_8:
    v2 = v1->__runetype[_wc];
    return (v2 >> 19) & 1;
  }

  if (_wc < 0x100)
  {
    v3 = __locale_key;
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
    if (!v4)
    {
      v4 = &__global_locale;
    }

    v1 = *(v4[166] + 120);
    goto LABEL_8;
  }

  v2 = ___runetype(_wc);
  return (v2 >> 19) & 1;
}

int iswnumber(wint_t _wc)
{
  if (_wc <= 0x7F)
  {
    v1 = &_DefaultRuneLocale;
LABEL_8:
    v2 = v1->__runetype[_wc];
    return (v2 >> 10) & 1;
  }

  if (_wc < 0x100)
  {
    v3 = __locale_key;
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
    if (!v4)
    {
      v4 = &__global_locale;
    }

    v1 = *(v4[166] + 120);
    goto LABEL_8;
  }

  v2 = ___runetype(_wc);
  return (v2 >> 10) & 1;
}

int iswphonogram(wint_t _wc)
{
  if (_wc <= 0x7F)
  {
    v1 = &_DefaultRuneLocale;
LABEL_8:
    v2 = v1->__runetype[_wc];
    return (v2 >> 21) & 1;
  }

  if (_wc < 0x100)
  {
    v3 = __locale_key;
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
    if (!v4)
    {
      v4 = &__global_locale;
    }

    v1 = *(v4[166] + 120);
    goto LABEL_8;
  }

  v2 = ___runetype(_wc);
  return (v2 >> 21) & 1;
}

int iswrune(wint_t _wc)
{
  if (_wc <= 0x7F)
  {
    v1 = &_DefaultRuneLocale;
LABEL_8:
    v2 = v1->__runetype[_wc];
    return v2 > 0xF;
  }

  if (_wc < 0x100)
  {
    v3 = __locale_key;
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
    if (!v4)
    {
      v4 = &__global_locale;
    }

    v1 = *(v4[166] + 120);
    goto LABEL_8;
  }

  v2 = ___runetype(_wc);
  return v2 > 0xF;
}

int iswspecial(wint_t _wc)
{
  if (_wc <= 0x7F)
  {
    v1 = &_DefaultRuneLocale;
LABEL_8:
    v2 = v1->__runetype[_wc];
    return (v2 >> 20) & 1;
  }

  if (_wc < 0x100)
  {
    v3 = __locale_key;
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
    if (!v4)
    {
      v4 = &__global_locale;
    }

    v1 = *(v4[166] + 120);
    goto LABEL_8;
  }

  v2 = ___runetype(_wc);
  return (v2 >> 20) & 1;
}

int iswblank_l(wint_t _wc, locale_t _l)
{
  if (_wc <= 0x7F)
  {
    v2 = &_DefaultRuneLocale;
LABEL_10:
    v3 = v2->__runetype[_wc];
    return (v3 >> 17) & 1;
  }

  if (_wc < 0x100)
  {
    v4 = &__c_locale;
    v5 = &__global_locale;
    if (_l != -1)
    {
      v5 = _l;
    }

    if (_l)
    {
      v4 = v5;
    }

    v2 = *(*(v4 + 166) + 120);
    goto LABEL_10;
  }

  v3 = ___runetype_l(_wc, _l);
  return (v3 >> 17) & 1;
}

int iswhexnumber_l(wint_t _wc, locale_t _l)
{
  if (_wc <= 0x7F)
  {
    v2 = &_DefaultRuneLocale;
LABEL_10:
    v3 = v2->__runetype[_wc];
    return HIWORD(v3) & 1;
  }

  if (_wc < 0x100)
  {
    v4 = &__c_locale;
    v5 = &__global_locale;
    if (_l != -1)
    {
      v5 = _l;
    }

    if (_l)
    {
      v4 = v5;
    }

    v2 = *(*(v4 + 166) + 120);
    goto LABEL_10;
  }

  v3 = ___runetype_l(_wc, _l);
  return HIWORD(v3) & 1;
}

int iswideogram_l(wint_t _wc, locale_t _l)
{
  if (_wc <= 0x7F)
  {
    v2 = &_DefaultRuneLocale;
LABEL_10:
    v3 = v2->__runetype[_wc];
    return (v3 >> 19) & 1;
  }

  if (_wc < 0x100)
  {
    v4 = &__c_locale;
    v5 = &__global_locale;
    if (_l != -1)
    {
      v5 = _l;
    }

    if (_l)
    {
      v4 = v5;
    }

    v2 = *(*(v4 + 166) + 120);
    goto LABEL_10;
  }

  v3 = ___runetype_l(_wc, _l);
  return (v3 >> 19) & 1;
}

int iswnumber_l(wint_t _wc, locale_t _l)
{
  if (_wc <= 0x7F)
  {
    v2 = &_DefaultRuneLocale;
LABEL_10:
    v3 = v2->__runetype[_wc];
    return (v3 >> 10) & 1;
  }

  if (_wc < 0x100)
  {
    v4 = &__c_locale;
    v5 = &__global_locale;
    if (_l != -1)
    {
      v5 = _l;
    }

    if (_l)
    {
      v4 = v5;
    }

    v2 = *(*(v4 + 166) + 120);
    goto LABEL_10;
  }

  v3 = ___runetype_l(_wc, _l);
  return (v3 >> 10) & 1;
}

int iswphonogram_l(wint_t _wc, locale_t _l)
{
  if (_wc <= 0x7F)
  {
    v2 = &_DefaultRuneLocale;
LABEL_10:
    v3 = v2->__runetype[_wc];
    return (v3 >> 21) & 1;
  }

  if (_wc < 0x100)
  {
    v4 = &__c_locale;
    v5 = &__global_locale;
    if (_l != -1)
    {
      v5 = _l;
    }

    if (_l)
    {
      v4 = v5;
    }

    v2 = *(*(v4 + 166) + 120);
    goto LABEL_10;
  }

  v3 = ___runetype_l(_wc, _l);
  return (v3 >> 21) & 1;
}

int iswrune_l(wint_t _wc, locale_t _l)
{
  if (_wc > 0x7F)
  {
    if (_wc < 0x100)
    {
      v4 = &__c_locale;
      v5 = &__global_locale;
      if (_l != -1)
      {
        v5 = _l;
      }

      if (_l)
      {
        v4 = v5;
      }

      v3 = *(*(*(v4 + 166) + 120) + 4 * _wc + 60);
    }

    else
    {
      v3 = ___runetype_l(_wc, _l);
    }

    v2 = (v3 & 0xFFFFFFF0);
  }

  else
  {
    v2 = _DefaultRuneLocale.__runetype[_wc] & 0xFFFFFFF0;
  }

  return v2 != 0;
}

int iswspecial_l(wint_t _wc, locale_t _l)
{
  if (_wc <= 0x7F)
  {
    v2 = &_DefaultRuneLocale;
LABEL_10:
    v3 = v2->__runetype[_wc];
    return (v3 >> 20) & 1;
  }

  if (_wc < 0x100)
  {
    v4 = &__c_locale;
    v5 = &__global_locale;
    if (_l != -1)
    {
      v5 = _l;
    }

    if (_l)
    {
      v4 = v5;
    }

    v2 = *(*(v4 + 166) + 120);
    goto LABEL_10;
  }

  v3 = ___runetype_l(_wc, _l);
  return (v3 >> 20) & 1;
}

locale_t duplocale(locale_t a1)
{
  if (a1 + 1 < 2 || *(a1 + 163) == 0x786C6F63616C6530)
  {

    return _duplocale(a1);
  }

  else
  {
    *__error() = 22;
    return 0;
  }
}

locale_t __numeric_ctype(uint64_t a1, uint64_t a2, size_t a3, _xlocale *a4)
{
  v4 = a1;
  if (*(a1 + 1318) == 2)
  {
    return *(a1 + 1368);
  }

  if (!*(a1 + 1318))
  {
    if (*(a1 + 1314))
    {
      v5 = *(*(a1 + 1344) + 64);
    }

    else
    {
      v5 = &C;
    }

    if (j__strncasecmp_l((*(a1 + 1328) + 16), v5, a3, a4) && (v6 = newlocale(2, v5, __c_locale), (*(v4 + 1368) = v6) != 0))
    {
      *(v4 + 1318) = 2;
      return v6;
    }

    else
    {
      *(v4 + 1318) = 1;
    }
  }

  return v4;
}

const char *__cdecl querylocale(int a1, locale_t a2)
{
  v2 = a2 + 1 >= 2 && *(a2 + 163) != 0x786C6F63616C6530;
  if ((a1 & 0x3F) != 0 && !v2 && (!a2 ? ((v4 = __locale_key, (v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4)) != 0) ? (v3 = v5) : (v3 = &__global_locale)) : a2 != -1 ? (v3 = a2) : (v3 = &__global_locale), v6 = __clz(__rbit32(a1)), v6 < 6))
  {
    v8 = querylocale_mapping[v6];
    os_unfair_lock_lock(v3 + 324);
    v9 = *(v3 + v8 + 165);
    if (v9)
    {
      v7 = (v9 + 16);
    }

    else
    {
      v7 = &C;
    }

    os_unfair_lock_unlock(v3 + 324);
  }

  else
  {
    v7 = 0;
    *__error() = 22;
  }

  return v7;
}

locale_t uselocale(locale_t a1)
{
  if (a1 == -1)
  {
LABEL_5:
    v2 = a1 == -1 || a1 == &__global_locale;
    if (v2)
    {
      v3 = 0;
    }

    else
    {
      v3 = a1;
    }

    if (!v2)
    {
      atomic_fetch_add(a1, 1u);
    }

    v1 = pthread_getspecific(__locale_key);
    pthread_setspecific(__locale_key, v3);
    if (v1)
    {
      if (atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
      {
        v4 = *(v1 + 1);
        if (v4)
        {
          v4(v1);
        }
      }
    }

    goto LABEL_17;
  }

  if (a1)
  {
    if (*(a1 + 163) != 0x786C6F63616C6530)
    {
      v6 = __error();
      result = 0;
      *v6 = 22;
      return result;
    }

    goto LABEL_5;
  }

  v1 = pthread_getspecific(__locale_key);
LABEL_17:
  if (v1)
  {
    return v1;
  }

  else
  {
    return -1;
  }
}

int ___mb_cur_max(void)
{
  v0 = __locale_key;
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v0);
  if (!v1)
  {
    v1 = &__global_locale;
  }

  return *(v1[166] + 64);
}

int ___mb_cur_max_l(locale_t a1)
{
  v1 = &__global_locale;
  if (a1 != -1)
  {
    v1 = a1;
  }

  if (!a1)
  {
    v1 = &__c_locale;
  }

  return *(*(v1 + 166) + 64);
}

uint64_t __xlocale_release(uint64_t result)
{
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    v1 = *(result + 8);
    if (v1)
    {
      return v1();
    }
  }

  return result;
}

acl_t acl_dup(acl_t acl)
{
  v1 = acl;
  if (acl <= 16 && acl > -17 || *acl != -1407532798)
  {
    *__error() = 22;
    return 0;
  }

  v2 = malloc_type_malloc(0x1010uLL, 0x1000040A06A8C30uLL);
  if (!v2)
  {
    return 0;
  }

  return j__mkostemp(v2, v1);
}

int acl_valid(acl_t acl)
{
  if ((acl > 16 || acl <= -17) && *acl == -1407532798)
  {
    return 0;
  }

  *__error() = 22;
  return -1;
}

int acl_copy_entry(acl_entry_t dest_d, acl_entry_t src_d)
{
  if ((dest_d > 16 || dest_d <= -17) && *dest_d == -1407532799 && (src_d > 16 || src_d <= -17) && *src_d == -1407532799 && dest_d != src_d)
  {
    v2 = 0;
    v3 = *(src_d + 1);
    *dest_d = *src_d;
    *(dest_d + 1) = v3;
  }

  else
  {
    *__error() = 22;
    return -1;
  }

  return v2;
}

int acl_create_entry_np(acl_t *acl_p, acl_entry_t *entry_p, int entry_index)
{
  v3 = *acl_p;
  v4 = *acl_p > 16 || v3 <= -17;
  if (!v4 || *v3 != -1407532798)
  {
    v6 = __error();
    v7 = 22;
    goto LABEL_10;
  }

  v5 = *(v3 + 1);
  if (v5 >= 0x80)
  {
    v6 = __error();
    v7 = 12;
LABEL_10:
    *v6 = v7;
    return -1;
  }

  if (entry_index == -2)
  {
    v9 = v5;
  }

  else
  {
    v9 = entry_index;
  }

  if (v9 > v5)
  {
    v6 = __error();
    v7 = 34;
    goto LABEL_10;
  }

  if (v5 > v9)
  {
    v10 = (v3 + 32 * v5 + 16);
    do
    {
      --v5;
      v11 = *(v10 - 1);
      *v10 = *(v10 - 2);
      v10[1] = v11;
      v10 -= 2;
    }

    while (v5 > v9);
    LODWORD(v5) = *(v3 + 1);
  }

  result = 0;
  *(v3 + 1) = v5 + 1;
  v12 = (v3 + 32 * v9);
  *(v12 + 2) = 2887434497;
  v12 = (v12 + 16);
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = 0;
  *entry_p = v12;
  return result;
}

int acl_delete_entry(acl_t acl, acl_entry_t entry_d)
{
  if ((acl > 16 || acl <= -17) && *acl == -1407532798 && (entry_d > 16 || entry_d <= -17) && *entry_d == -1407532799 && (v2 = (acl + 16), (acl + 16) <= entry_d))
  {
    v5 = *(acl + 1) - 1;
    *(acl + 1) = v5;
    v6 = entry_d - v2;
    v7 = (entry_d - v2) >> 5;
    if (v5 > v7)
    {
      v8 = v6 >> 5;
      v9 = (acl + 32 * (v6 >> 5) + 48);
      do
      {
        v10 = v9[1];
        *(v9 - 2) = *v9;
        *(v9 - 1) = v10;
        v5 = *(acl + 1);
        v9 += 2;
        LODWORD(v8) = v8 + 1;
      }

      while (v5 > v8);
    }

    v3 = 0;
    *(v2 + 8 * v5) = 0;
    v11 = *(acl + 2);
    if (v7 <= v11)
    {
      v3 = 0;
      *(acl + 2) = v11 - 1;
    }
  }

  else
  {
    *__error() = 22;
    return -1;
  }

  return v3;
}

int acl_get_entry(acl_t acl, int entry_id, acl_entry_t *entry_p)
{
  if (acl <= 16 && acl > -17 || *acl != -1407532798 || (entry_id - 1) <= 0xFFFFFFFC && (entry_id < 0 || *(acl + 1) <= entry_id))
  {
    goto LABEL_14;
  }

  if (entry_id == -1)
  {
    v3 = 1;
    v4 = 8;
  }

  else
  {
    if (entry_id != -2)
    {
      goto LABEL_12;
    }

    v3 = -1;
    v4 = 4;
  }

  entry_id = *(acl + v4) + v3;
LABEL_12:
  if (entry_id >= *(acl + 1))
  {
LABEL_14:
    *__error() = 22;
    return -1;
  }

  v5 = 0;
  *entry_p = (acl + 32 * entry_id + 16);
  *(acl + 2) = entry_id;
  return v5;
}

void *__cdecl acl_get_qualifier(acl_entry_t entry_d)
{
  if ((entry_d > 16 || entry_d <= -17) && *entry_d == -1407532799 && (*(entry_d + 1) - 1) <= 1)
  {
    result = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
    if (result)
    {
      *result = *(entry_d + 8);
      return result;
    }
  }

  else
  {
    *__error() = 22;
  }

  return 0;
}

int acl_get_tag_type(acl_entry_t entry_d, acl_tag_t *tag_type_p)
{
  if ((entry_d > 16 || entry_d <= -17) && *entry_d == -1407532799)
  {
    v2 = 0;
    *tag_type_p = *(entry_d + 1);
  }

  else
  {
    *__error() = 22;
    return -1;
  }

  return v2;
}

int acl_set_qualifier(acl_entry_t entry_d, const void *tag_qualifier_p)
{
  if ((entry_d > 16 || entry_d <= -17) && *entry_d == -1407532799 && (*(entry_d + 1) - 1) <= 1)
  {
    v2 = 0;
    *(entry_d + 8) = *tag_qualifier_p;
  }

  else
  {
    *__error() = 22;
    return -1;
  }

  return v2;
}

int acl_set_tag_type(acl_entry_t entry_d, acl_tag_t tag_type)
{
  if ((entry_d > 16 || entry_d <= -17) && *entry_d == -1407532799 && tag_type - 1 <= 1)
  {
    v2 = 0;
    *(entry_d + 1) = tag_type;
  }

  else
  {
    *__error() = 22;
    return -1;
  }

  return v2;
}

acl_t acl_get_fd_np(int fd, acl_type_t type)
{
  memset(&v6, 0, sizeof(v6));
  if (type == ACL_TYPE_EXTENDED)
  {
    result = filesec_init();
    if (result)
    {
      v4 = result;
      v7 = 0;
      if (!fstatx_np(fd, &v6, result))
      {
        filesec_get_property(v4, FILESEC_ACL, &v7);
      }

      filesec_free(v4);
      return v7;
    }
  }

  else
  {
    v5 = __error();
    result = 0;
    *v5 = 22;
  }

  return result;
}

_filesec *acl_get_file1(const char *a1, int a2, int a3)
{
  memset(&v8, 0, sizeof(v8));
  if (a2 == 256)
  {
    result = filesec_init();
    if (result)
    {
      v6 = result;
      v9 = 0;
      if (a3)
      {
        if (statx_np(a1, &v8, result))
        {
LABEL_6:
          filesec_free(v6);
          return v9;
        }
      }

      else if (lstatx_np(a1, &v8, result))
      {
        goto LABEL_6;
      }

      filesec_get_property(v6, FILESEC_ACL, &v9);
      goto LABEL_6;
    }
  }

  else
  {
    v7 = __error();
    result = 0;
    *v7 = 22;
  }

  return result;
}

int acl_set_fd_np(int fd, acl_t acl, acl_type_t acl_type)
{
  v8 = acl;
  v4 = filesec_init();
  if (!v4)
  {
    return -1;
  }

  v5 = v4;
  if (filesec_set_property(v4, FILESEC_ACL, &v8))
  {
    filesec_free(v5);
    return -1;
  }

  v7 = fchmodx_np(fd, v5);
  filesec_free(v5);
  if (v7)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

int acl_set_file(const char *path_p, acl_type_t type, acl_t acl)
{
  v8 = acl;
  v4 = filesec_init();
  if (!v4)
  {
    return -1;
  }

  v5 = v4;
  if (filesec_set_property(v4, FILESEC_ACL, &v8))
  {
    filesec_free(v5);
    return -1;
  }

  v7 = chmodx_np(path_p, v5);
  filesec_free(v5);
  if (v7)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

int acl_set_link_np(const char *path_p, acl_type_t type, acl_t acl)
{
  memset(&v7, 0, sizeof(v7));
  if (lstat(path_p, &v7) < 0)
  {
    return -1;
  }

  if ((v7.st_mode & 0xF000) == 0xA000)
  {
    *__error() = 45;
    return -1;
  }

  return acl_set_file(path_p, v5, acl);
}

int acl_get_flagset_np(void *obj_p, acl_flagset_t *flagset_p)
{
  if (obj_p > 16 || obj_p <= -17)
  {
    if (*obj_p == -1407532798)
    {
      v2 = 12;
      goto LABEL_8;
    }

    if (*obj_p == -1407532799)
    {
      v2 = 24;
LABEL_8:
      v3 = 0;
      *flagset_p = (obj_p + v2);
      return v3;
    }
  }

  *__error() = 22;
  return -1;
}

int acl_set_flagset_np(void *obj_p, acl_flagset_t flagset_d)
{
  if (obj_p <= 16 && obj_p > -17)
  {
    goto LABEL_6;
  }

  if (*obj_p == -1407532799)
  {
    v2 = 0;
    *(obj_p + 6) = *flagset_d;
    return v2;
  }

  if (*obj_p == -1407532798)
  {
    v2 = 0;
    *(obj_p + 3) = *flagset_d;
  }

  else
  {
LABEL_6:
    *__error() = 22;
    return -1;
  }

  return v2;
}

int acl_add_perm(acl_permset_t permset_d, acl_perm_t perm)
{
  if ((perm & 0xFFEFC001) != 0)
  {
    *__error() = 22;
    return -1;
  }

  else
  {
    result = 0;
    *permset_d |= perm;
  }

  return result;
}

int acl_delete_perm(acl_permset_t permset_d, acl_perm_t perm)
{
  if ((perm & 0xFFEFC001) != 0)
  {
    *__error() = 22;
    return -1;
  }

  else
  {
    result = 0;
    *permset_d &= ~perm;
  }

  return result;
}

int acl_get_perm_np(acl_permset_t permset_d, acl_perm_t perm)
{
  if ((perm & 0xFFEFC001) == 0)
  {
    return (*permset_d & perm) != 0;
  }

  *__error() = 22;
  return -1;
}

int acl_get_permset(acl_entry_t entry_d, acl_permset_t *permset_p)
{
  if ((entry_d > 16 || entry_d <= -17) && *entry_d == -1407532799)
  {
    v2 = 0;
    *permset_p = (entry_d + 28);
  }

  else
  {
    *__error() = 22;
    return -1;
  }

  return v2;
}

int acl_set_permset(acl_entry_t entry_d, acl_permset_t permset_d)
{
  if ((entry_d > 16 || entry_d <= -17) && *entry_d == -1407532799)
  {
    v2 = 0;
    *(entry_d + 7) = *permset_d;
  }

  else
  {
    *__error() = 22;
    return -1;
  }

  return v2;
}

int acl_get_permset_mask_np(acl_entry_t entry_d, acl_permset_mask_t *mask_p)
{
  if ((entry_d > 16 || entry_d <= -17) && *entry_d == -1407532799)
  {
    v2 = 0;
    *mask_p = *(entry_d + 7);
  }

  else
  {
    *__error() = 22;
    return -1;
  }

  return v2;
}

int acl_set_permset_mask_np(acl_entry_t entry_d, acl_permset_mask_t mask)
{
  if ((entry_d > 16 || entry_d <= -17) && *entry_d == -1407532799 && (mask & 0xFFFFFFFFFFEFC001) == 0)
  {
    v2 = 0;
    *(entry_d + 7) = mask;
  }

  else
  {
    *__error() = 22;
    return -1;
  }

  return v2;
}

ssize_t acl_copy_ext(void *buf_p, acl_t acl, ssize_t size)
{
  v6 = acl_size(acl);
  if (v6 < 0)
  {
    return -1;
  }

  v7 = v6;
  if (v6 > size)
  {
    *__error() = 34;
    return -1;
  }

  MEMORY[0x193AD5FD0](buf_p, v6);
  *buf_p = 1841376257;
  if (acl == 1)
  {
    *(buf_p + 9) = -1;
  }

  else
  {
    v9 = *(acl + 1);
    v10 = bswap32(*(acl + 3));
    *(buf_p + 9) = bswap32(v9);
    *(buf_p + 10) = v10;
    if (v9)
    {
      v11 = 0;
      v12 = (acl + 44);
      v13 = buf_p + 64;
      do
      {
        *(v13 - 5) = *(v12 - 5);
        v14 = bswap32(*(v12 - 1) & 0xFFFFFFF0 | *(v12 - 6) & 0xF);
        v15 = *v12;
        v12 += 8;
        *(v13 - 1) = v14;
        *v13 = bswap32(v15);
        ++v11;
        v13 += 6;
      }

      while (v11 < *(acl + 1));
    }
  }

  return v7;
}

acl_t acl_copy_int(const void *buf_p)
{
  if (*buf_p == 1841376257)
  {
    result = acl_init(bswap32(*(buf_p + 9)));
    if (result)
    {
      v3 = *(buf_p + 9);
      *(result + 3) = bswap32(*(buf_p + 10));
      v4 = bswap32(v3);
      *(result + 1) = v4;
      if (v3)
      {
        v5 = 0;
        v6 = (buf_p + 64);
        v7 = result + 24;
        do
        {
          *(v7 - 2) = -1407532799;
          *v7 = *(v6 - 5);
          v8 = *(v6 - 1);
          *(v7 - 1) = HIBYTE(v8) & 0xF;
          v9 = *v6;
          v6 += 6;
          *(v7 + 4) = bswap32(v8 & 0xF0FFFFFF);
          *(v7 + 5) = bswap32(v9);
          ++v5;
          v7 += 32;
        }

        while (v5 < v4);
      }
    }
  }

  else
  {
    v10 = __error();
    result = 0;
    *v10 = 22;
  }

  return result;
}

acl_t acl_from_text(const char *buf_p)
{
  entry_p = 0;
  __str = 0;
  permset_p = 0;
  flagset_p = 0;
  if (!buf_p)
  {
    v57 = __error();
    result = 0;
    *v57 = 22;
    return result;
  }

  result = strdup(buf_p);
  __stringp = result;
  if (result)
  {
    v2 = result;
    result = acl_init(1);
    obj_p = result;
    if (result)
    {
      v3 = strsep(&__stringp, "\n");
      v63 = v3;
      if (v3 && *v3 && ((v4 = strsep(&v63, " "), __str = v4, !*v4) || !j__strsvisx(v4, "!#acl", 5uLL, v5, v6)) && (__str = strsep(&v63, " "), *__error() = 0, __str) && *__str && strtol(__str, 0, 0) == 1)
      {
        v7 = strsep(&v63, " ");
        __str = v7;
        if (v7)
        {
          if (*v7)
          {
            acl_get_flagset_np(obj_p, &flagset_p);
            v8 = strsep(&__str, ",");
            if (v8)
            {
              v11 = v8;
              do
              {
                if (!*v11)
                {
                  break;
                }

                v12 = &off_1E7279670;
                v13 = 7;
                v14 = "inherited";
                while ((*(v12 - 2) & 4) == 0 || j__strncasecmp_l(v14, v11, v9, v10))
                {
                  v15 = *v12;
                  v12 += 3;
                  v14 = v15;
                  if (!--v13)
                  {
                    goto LABEL_102;
                  }
                }

                acl_add_flag_np(flagset_p, *(v12 - 8));
                v11 = strsep(&__str, ",");
              }

              while (v11);
            }
          }
        }

        v16 = strsep(&__stringp, "\n");
        v63 = v16;
        if (!v16)
        {
          free(v2);
          return obj_p;
        }

        v17 = 0;
        v18 = "group";
        while (*v16)
        {
          __str = strsep(&v63, ":");
          if (v17)
          {
            *v17 = 0;
            *(v17 + 1) = 0;
          }

          else
          {
            v17 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040451B5BE8uLL);
            if (!v17)
            {
              v56 = *__error();
              goto LABEL_109;
            }
          }

          if (acl_create_entry(&obj_p, &entry_p) || acl_get_flagset_np(entry_p, &flagset_p) == -1 || acl_get_permset(entry_p, &permset_p) == -1)
          {
            v56 = *__error();
            goto LABEL_108;
          }

          v21 = *__str;
          if (v21 == 103)
          {
            if (j__strncasecmp_l(__str, v18, v19, v20))
            {
              v22 = -1;
            }

            else
            {
              v22 = 1;
            }
          }

          else
          {
            if (v21 != 117)
            {
              goto LABEL_100;
            }

            if (j__strncasecmp_l(__str, "user", v19, v20))
            {
              v22 = -1;
            }

            else
            {
              v22 = 0;
            }
          }

          v23 = strsep(&v63, ":");
          __str = v23;
          if (v23 && *v23)
          {
            uuid_parse(v23, v17);
            v24 = 0;
          }

          else
          {
            v24 = 1;
          }

          v25 = strsep(&v63, ":");
          __str = v25;
          if (v25)
          {
            v26 = v24 ^ 1;
            if (!*v25)
            {
              v26 = 1;
            }

            if ((v26 & 1) == 0)
            {
              if (v22 == 1)
              {
                v28 = getgrnam(v25);
                if (v28 && mbr_gid_to_uuid(v28->gr_gid, v17))
                {
LABEL_100:
                  v56 = 22;
LABEL_108:
                  free(v17);
                  goto LABEL_109;
                }
              }

              else
              {
                if (v22)
                {
                  goto LABEL_100;
                }

                v27 = getpwnam(v25);
                if (v27)
                {
                  if (mbr_uid_to_uuid(v27->pw_uid, v17))
                  {
                    goto LABEL_100;
                  }
                }
              }

              v24 = 0;
            }
          }

          v29 = strsep(&v63, ":");
          __str = v29;
          if (v29 && v24 && *v29)
          {
            v30 = strtol(v29, 0, 10);
            if (v22 == 1)
            {
              v55 = getgrgid(v30);
              if (v55 && mbr_gid_to_uuid(v55->gr_gid, v17))
              {
                goto LABEL_100;
              }
            }

            else if (!v22)
            {
              v31 = getpwuid(v30);
              if (v31)
              {
                if (mbr_uid_to_uuid(v31->pw_uid, v17))
                {
                  goto LABEL_100;
                }
              }
            }
          }

          else if (v24)
          {
            goto LABEL_100;
          }

          v32 = strsep(&v63, ":");
          __str = v32;
          if (!v32 || !*v32)
          {
            goto LABEL_100;
          }

          v33 = v18;
          v34 = strsep(&__str, ",");
          if (v34)
          {
            v37 = v34;
            v38 = ACL_UNDEFINED_TAG;
LABEL_68:
            v39 = v37;
            while (*v39)
            {
              if (v38 == ACL_UNDEFINED_TAG)
              {
                if (j__strncasecmp_l(v37, "allow", v35, v36))
                {
                  if (j__strncasecmp_l(v37, "deny", v44, v45))
                  {
LABEL_106:
                    v56 = 22;
                    goto LABEL_107;
                  }

                  v38 = ACL_EXTENDED_DENY;
                }

                else
                {
                  v38 = ACL_EXTENDED_ALLOW;
                }

                v37 = strsep(&__str, ",");
                if (v37)
                {
                  goto LABEL_68;
                }

                break;
              }

              v40 = &off_1E7279670;
              v41 = 7;
              v42 = "inherited";
              while ((*(v40 - 2) & 3) == 0 || j__strncasecmp_l(v42, v39, v35, v36))
              {
                v43 = *v40;
                v40 += 3;
                v42 = v43;
                if (!--v41)
                {
                  goto LABEL_106;
                }
              }

              acl_add_flag_np(flagset_p, *(v40 - 8));
              v39 = strsep(&__str, ",");
              if (!v39)
              {
                break;
              }
            }
          }

          else
          {
            v38 = ACL_UNDEFINED_TAG;
          }

          v46 = strsep(&v63, ":");
          __str = v46;
          if (v46)
          {
            if (*v46)
            {
              v47 = strsep(&__str, ",");
              if (v47)
              {
                v50 = v47;
                do
                {
                  if (!*v50)
                  {
                    break;
                  }

                  v51 = &off_1E7279730;
                  v52 = 14;
                  v53 = "read";
                  while ((*(v51 - 2) & 3) == 0 || j__strncasecmp_l(v53, v50, v48, v49))
                  {
                    v54 = *v51;
                    v51 += 3;
                    v53 = v54;
                    if (!--v52)
                    {
                      goto LABEL_106;
                    }
                  }

                  acl_add_perm(permset_p, *(v51 - 8));
                  v50 = strsep(&__str, ",");
                }

                while (v50);
              }
            }
          }

          acl_set_tag_type(entry_p, v38);
          acl_set_qualifier(entry_p, v17);
          v16 = strsep(&__stringp, "\n");
          v63 = v16;
          v18 = v33;
          if (!v16)
          {
            break;
          }
        }

        v56 = 0;
LABEL_107:
        if (v17)
        {
          goto LABEL_108;
        }

LABEL_109:
        free(v2);
        if (!v56)
        {
          return obj_p;
        }
      }

      else
      {
LABEL_102:
        free(v2);
        v56 = 22;
      }

      acl_free(obj_p);
      obj_p = 0;
      *__error() = v56;
      return obj_p;
    }
  }

  return result;
}

char *__cdecl acl_to_text(acl_t acl, ssize_t *len_p)
{
  v2 = len_p;
  tag_type_p = ACL_UNDEFINED_TAG;
  flagset_p = 0;
  entry_p = 0;
  *id_type = 0;
  permset_p = 0;
  v36 = 1024;
  if (acl <= 16 && acl > -17 || *acl != -1407532798)
  {
    v12 = __error();
    result = 0;
    v13 = 22;
    goto LABEL_70;
  }

  if (!len_p)
  {
    MEMORY[0x1EEE9AC00](acl, 0);
    v2 = &v34;
    v34 = 0;
  }

  *v2 = 0;
  v35 = malloc_type_malloc(0x400uLL, 0x9BB74672uLL);
  if (!v35)
  {
    goto LABEL_69;
  }

  if (!raosnprintf(&v35, &v36, v2, "!#acl %d", 1))
  {
    goto LABEL_67;
  }

  if (!acl_get_flagset_np(acl, &flagset_p))
  {
    v4 = 0;
    v5 = "inherited";
    v6 = &off_1E7279670;
    v7 = 7;
    do
    {
      if ((*(v6 - 2) & 4) != 0 && acl_get_flag_np(flagset_p, *(v6 - 8)))
      {
        if (v4)
        {
          v8 = ",";
        }

        else
        {
          v8 = " ";
        }

        if (!raosnprintf(&v35, &v36, v2, "%s%s", v8, v5))
        {
          goto LABEL_67;
        }

        ++v4;
      }

      v9 = *v6;
      v6 += 3;
      v5 = v9;
      --v7;
    }

    while (v7);
  }

  if (entry_p)
  {
    v10 = -1;
  }

  else
  {
    v10 = 0;
  }

  if (acl_get_entry(acl, v10, &entry_p))
  {
LABEL_22:
    if (!raosnprintf(&v35, &v36, v2, "\n", v34))
    {
      goto LABEL_67;
    }

    return v35;
  }

  while (1)
  {
    qualifier = acl_get_qualifier(entry_p);
    if (qualifier)
    {
      break;
    }

LABEL_30:
    if (entry_p)
    {
      v16 = -1;
    }

    else
    {
      v16 = 0;
    }

    if (acl_get_entry(acl, v16, &entry_p))
    {
      goto LABEL_22;
    }
  }

  v15 = qualifier;
  if (acl_get_tag_type(entry_p, &tag_type_p) || acl_get_flagset_np(entry_p, &flagset_p) || acl_get_permset(entry_p, &permset_p))
  {
    acl_free(v15);
    goto LABEL_30;
  }

  uuid_unparse_upper(v15, out);
  if (mbr_uuid_to_id(v15, &id_type[1], id_type))
  {
    goto LABEL_36;
  }

  if (id_type[0] == 1)
  {
    v30 = getgrgid(id_type[1]);
    if (v30)
    {
      goto LABEL_61;
    }
  }

  else
  {
    if (id_type[0])
    {
      goto LABEL_36;
    }

    v30 = getpwuid(id_type[1]);
    if (!v30)
    {
      goto LABEL_36;
    }

LABEL_61:
    v31 = strdup(*v30);
    if (v31)
    {
      v19 = v31;
      v32 = "group";
      if (!id_type[0])
      {
        v32 = "user";
      }

      v33 = "deny";
      if (tag_type_p == ACL_EXTENDED_ALLOW)
      {
        v33 = "allow";
      }

      v18 = raosnprintf(&v35, &v36, v2, "\n%s:%s:%s:%d:%s", v32, out, v31, id_type[1], v33);
      goto LABEL_40;
    }
  }

LABEL_36:
  if (tag_type_p == ACL_EXTENDED_ALLOW)
  {
    v17 = "allow";
  }

  else
  {
    v17 = "deny";
  }

  v18 = raosnprintf(&v35, &v36, v2, "\nuser:%s:::%s", out, v17);
  v19 = 0;
LABEL_40:
  free(v19);
  acl_free(v15);
  if (v18)
  {
    v20 = &off_1E7279670;
    v21 = 7;
    v22 = "inherited";
    while ((*(v20 - 2) & 3) == 0 || !acl_get_flag_np(flagset_p, *(v20 - 8)) || raosnprintf(&v35, &v36, v2, ",%s", v22))
    {
      v23 = *v20;
      v20 += 3;
      v22 = v23;
      if (!--v21)
      {
        v24 = 0;
        v25 = &off_1E7279730;
        v26 = 14;
        v27 = "read";
        while (1)
        {
          if ((*(v25 - 2) & 3) != 0 && acl_get_perm_np(permset_p, *(v25 - 8)))
          {
            if (v24)
            {
              v28 = ",";
            }

            else
            {
              v28 = ":";
            }

            if (!raosnprintf(&v35, &v36, v2, "%s%s", v28, v27))
            {
              goto LABEL_67;
            }

            ++v24;
          }

          v29 = *v25;
          v25 += 3;
          v27 = v29;
          if (!--v26)
          {
            goto LABEL_30;
          }
        }
      }
    }
  }

LABEL_67:
  if (v35)
  {
    free(v35);
  }

LABEL_69:
  v12 = __error();
  result = 0;
  v13 = 12;
LABEL_70:
  *v12 = v13;
  return result;
}

uint64_t raosnprintf(void **a1, uint64_t *a2, void *a3, char *__format, ...)
{
  va_start(va, __format);
  while (1)
  {
    v8 = *a2;
    if (*a3 < *a2)
    {
      result = vsnprintf(*a1 + *a3, *a2 - *a3, __format, va);
      v8 = *a2;
      if (*a2 - *a3 > result)
      {
        break;
      }
    }

    v10 = *a1;
    *a2 = 2 * v8;
    result = reallocf(v10, 2 * v8);
    *a1 = result;
    if (!result)
    {
      return result;
    }
  }

  *a3 += result;
  return result;
}

uint64_t open_with_subsystem(uint64_t a1, __int16 a2)
{
  if ((a2 & 0x200) != 0)
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  else
  {
    v3 = open_NOCANCEL();
    if ((v3 & 0x80000000) != 0)
    {
      v4 = __error();
      v6 = subsystem_root_path;
      if (*v4 == 2 && subsystem_root_path != 0)
      {
        while (1)
        {
          next_subsystem_root_path = extract_next_subsystem_root_path(v10, v6, v5);
          if (MEMORY[0x193AD6A20](v10, a1, 1024) > 0x3FF)
          {
            break;
          }

          v3 = open_NOCANCEL();
          if ((v3 & 0x80000000) == 0)
          {
            return v3;
          }

          __error();
          if (!next_subsystem_root_path)
          {
            return v3;
          }

          v6 = next_subsystem_root_path;
        }

        *__error() = 63;
      }
    }
  }

  return v3;
}

uint64_t extract_next_subsystem_root_path(uint64_t a1, char *__sig, size_t a3)
{
  v5 = j__strsignal_r(__sig, __sig, a3);
  v6 = j__mkdirx_np(__sig, 0x3A);
  if (v6)
  {
    v5 = v6 - __sig;
  }

  if (v5 > 0x3FF)
  {
    return 0;
  }

  v8 = v6;
  j__mkdtempat_np(a1, __sig);
  *(a1 + v5) = 0;
  if (v8)
  {
    return v8 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t stat_with_subsystem(const char *a1, stat *a2)
{
  v4 = stat(a1, a2);
  if ((v4 & 0x80000000) != 0)
  {
    v5 = __error();
    v7 = subsystem_root_path;
    if (*v5 == 2 && subsystem_root_path != 0)
    {
      while (1)
      {
        next_subsystem_root_path = extract_next_subsystem_root_path(v11, v7, v6);
        if (MEMORY[0x193AD6A20](v11, a1, 1024) > 0x3FF)
        {
          break;
        }

        v4 = stat(v11, a2);
        if ((v4 & 0x80000000) == 0)
        {
          return v4;
        }

        __error();
        if (!next_subsystem_root_path)
        {
          return v4;
        }

        v7 = next_subsystem_root_path;
      }

      *__error() = 63;
    }
  }

  return v4;
}

tm *__cdecl getdate(const char *a1)
{
  v2 = getenv("DATEMSK");
  if (!v2 || (v3 = v2, v41 = 0, memset(&v40, 0, sizeof(v40)), !*v2))
  {
    v18 = 0;
    getdate_err = 1;
    return v18;
  }

  v4 = *__error();
  v5 = fopen(v3, "r");
  if (!v5)
  {
    getdate_err = 2;
    v19 = __error();
    v18 = 0;
    goto LABEL_29;
  }

  v6 = v5;
  v7 = fileno(v5);
  if (fstat(v7, &v40) < 0)
  {
    v18 = 0;
    v20 = &getmntinfo_vars;
    v21 = 3;
LABEL_27:
    *(v20 + 667) = v21;
    goto LABEL_28;
  }

  if ((v40.st_mode & 0xF000) != 0x8000)
  {
    v18 = 0;
    v20 = &getmntinfo_vars;
    v21 = 4;
    goto LABEL_27;
  }

  v8 = malloc_type_malloc(0x400uLL, 0xFD69E551uLL);
  if (!v8)
  {
    v18 = 0;
    v20 = &getmntinfo_vars;
    v21 = 6;
    goto LABEL_27;
  }

  v9 = 0;
  v10 = 1024;
LABEL_8:
  v11 = v8;
  do
  {
    if (fgets(v11 + v9, v10 - v9, v6))
    {
      v14 = j__strsignal_r(v11, v12, v13);
      v9 = v14;
      if (v10 - 1 == v14 && *(v11 + v14 - 1) != 10)
      {
        v10 += 1024;
        v8 = malloc_type_realloc(v11, v10, 0xED5A769FuLL);
        if (!v8)
        {
          v17 = 6;
LABEL_90:
          v18 = 0;
          getdate_err = v17;
          goto LABEL_91;
        }

        goto LABEL_8;
      }
    }

    else
    {
      if (ferror(v6))
      {
        v17 = 5;
        goto LABEL_90;
      }

      if (!v9)
      {
        v17 = 7;
        goto LABEL_90;
      }

      v9 = j__strsignal_r(v11, v15, v16);
    }

    if (*(v11 + v9 - 1) == 10)
    {
      *(v11 + v9 - 1) = 0;
    }

    getdate_tm = tmundef;
    *&qword_1EAC9E7D8 = unk_18E98A430;
    xmmword_1EAC9E7E8 = xmmword_18E98A440;
    qword_1EAC9E7F8 = 0;
    v9 = 0;
  }

  while (!strptime(a1, v11, &getdate_tm));
  time(&v41);
  v23 = localtime(&v41);
  if (getdate_tm == -1)
  {
    v24 = 2;
  }

  else
  {
    v24 = 3;
  }

  if (DWORD1(getdate_tm) == -1)
  {
    v25 = getdate_tm != -1;
  }

  else
  {
    v25 = v24;
  }

  tm_hour = DWORD2(getdate_tm);
  if (DWORD2(getdate_tm) != -1)
  {
    v25 |= 4u;
  }

  if (HIDWORD(getdate_tm) == -1)
  {
    v27 = 2;
  }

  else
  {
    v27 = 3;
  }

  tm_mon = qword_1EAC9E7D8;
  if (qword_1EAC9E7D8 == -1)
  {
    v27 = HIDWORD(getdate_tm) != -1;
  }

  if (HIDWORD(qword_1EAC9E7D8) == -1)
  {
    v29 = v27;
  }

  else
  {
    v29 = v27 | 4;
  }

  if (v25 > 3)
  {
    if (v25 <= 5)
    {
      if (v25 == 4)
      {
        *&getdate_tm = 0;
      }

      else
      {
        DWORD1(getdate_tm) = 0;
      }

      goto LABEL_66;
    }

    if (v25 != 6)
    {
      goto LABEL_66;
    }

LABEL_60:
    LODWORD(getdate_tm) = 0;
    goto LABEL_66;
  }

  if (v25 <= 1)
  {
    if (v25)
    {
      tm_min = v23->tm_min;
      tm_hour = v23->tm_hour;
      tm_sec = v23->tm_sec;
      DWORD1(getdate_tm) = tm_min;
      DWORD2(getdate_tm) = tm_hour;
      if (getdate_tm < tm_sec)
      {
        DWORD1(getdate_tm) = tm_min + 1;
      }
    }

    else
    {
      *&getdate_tm = *&v23->tm_sec;
      tm_hour = v23->tm_hour;
      DWORD2(getdate_tm) = tm_hour;
    }

    goto LABEL_66;
  }

  if (v25 == 2)
  {
    v30 = v23->tm_min;
    tm_hour = v23->tm_hour;
    DWORD2(getdate_tm) = tm_hour;
    if (SDWORD1(getdate_tm) < v30)
    {
      DWORD2(getdate_tm) = ++tm_hour;
    }

    goto LABEL_60;
  }

  tm_hour = v23->tm_hour;
  DWORD2(getdate_tm) = tm_hour;
  if (getdate_tm + 60 * DWORD1(getdate_tm) < v23->tm_sec + 60 * v23->tm_min)
  {
    DWORD2(getdate_tm) = ++tm_hour;
  }

LABEL_66:
  if (v29 > 3)
  {
    if (v29 > 5)
    {
      if (v29 != 6)
      {
        goto LABEL_86;
      }
    }

    else if (v29 != 4)
    {
      tm_mday = v23->tm_mday;
      tm_mon = v23->tm_mon;
      LODWORD(qword_1EAC9E7D8) = tm_mon;
      goto LABEL_84;
    }

    if ((v29 & 2) == 0)
    {
      tm_mon = 0;
      LODWORD(qword_1EAC9E7D8) = 0;
    }

    goto LABEL_82;
  }

  if ((v29 - 2) < 2)
  {
    v34 = v23->tm_mon;
    tm_year = v23->tm_year;
    HIDWORD(qword_1EAC9E7D8) = tm_year;
    if (qword_1EAC9E7D8 < v34)
    {
      HIDWORD(qword_1EAC9E7D8) = tm_year + 1;
    }

    if (v29)
    {
      goto LABEL_86;
    }

LABEL_82:
    HIDWORD(getdate_tm) = 1;
    goto LABEL_86;
  }

  if (!v29)
  {
    v37 = v23->tm_hour;
    v36 = v23->tm_mday;
    HIDWORD(getdate_tm) = v36;
    if (tm_hour < v37)
    {
      HIDWORD(getdate_tm) = v36 + 1;
    }

    qword_1EAC9E7D8 = *&v23->tm_mon;
    tm_mon = qword_1EAC9E7D8;
    goto LABEL_86;
  }

  qword_1EAC9E7D8 = *&v23->tm_mon;
  tm_mday = v23->tm_mday;
  tm_mon = qword_1EAC9E7D8;
LABEL_84:
  if (SHIDWORD(getdate_tm) < tm_mday)
  {
    LODWORD(qword_1EAC9E7D8) = ++tm_mon;
  }

LABEL_86:
  v38 = dword_1EAC9E7E0;
  dword_1EAC9E7E0 = v23->tm_wday;
  *(&xmmword_1EAC9E7E8 + 1) = v23->tm_gmtoff;
  LODWORD(xmmword_1EAC9E7E8) = -1;
  if (mktime(&getdate_tm) == -1 || (v29 & 2) != 0 && qword_1EAC9E7D8 != tm_mon)
  {
    goto LABEL_89;
  }

  v18 = &getdate_tm;
  if (v38 != -1 && v29 != 7)
  {
    v39 = v38 - dword_1EAC9E7E0;
    if (v38 < dword_1EAC9E7E0)
    {
      v39 = v38 - dword_1EAC9E7E0 + 7;
    }

    HIDWORD(getdate_tm) += v39;
    if (mktime(&getdate_tm) == -1)
    {
LABEL_89:
      v17 = 8;
      goto LABEL_90;
    }
  }

LABEL_91:
  free(v11);
LABEL_28:
  fclose(v6);
  v19 = __error();
LABEL_29:
  *v19 = v4;
  return v18;
}

void free_printf_comp(printf_comp_t __pc)
{
  if (__pc)
  {
    v2 = *(__pc + 10);
    if (v2)
    {
      if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
      {
        v3 = *(v2 + 8);
        if (v3)
        {
          v3();
        }
      }
    }

    free(*(__pc + 11));
    free(*(__pc + 13));
    free(*(__pc + 14));
    pthread_mutex_destroy(__pc);

    free(__pc);
  }
}

printf_comp_t new_printf_comp(printf_domain_t __domain, locale_t __loc, const char *__fmt)
{
  v4 = __loc;
  v6 = j__strsignal_r(__fmt, __loc, __fmt);
  v7 = malloc_type_malloc(v6 + 129, 0x1070040EF53FC4CuLL);
  v9 = v7;
  if (v7)
  {
    *(v7 + 15) = 0;
    *(v7 + 104) = 0u;
    *(v7 + 88) = 0u;
    *(v7 + 72) = 0u;
    *v7 = 850045863;
    *(v7 + 8) = 0u;
    *(v7 + 24) = 0u;
    *(v7 + 40) = 0u;
    *(v7 + 7) = 0;
    *(v7 + 8) = v7 + 128;
    j__strnstr(v7 + 128, __fmt, v8);
    if (v4)
    {
      if (v4 == -1)
      {
        v4 = &__global_locale;
      }
    }

    else
    {
      v10 = __locale_key;
      v11 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v10);
      if (v11)
      {
        v4 = v11;
      }

      else
      {
        v4 = &__global_locale;
      }
    }

    atomic_fetch_add(v4, 1u);
    *(v9 + 80) = v4;
    pthread_once(&__xprintf_domain_once, __xprintf_domain_init);
    pthread_rwlock_rdlock(__domain);
    v12 = __printf_comp(v9, __domain);
    v13 = *__error();
    pthread_rwlock_unlock(__domain);
    if (v12 < 0)
    {
      if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
      {
        v14 = *(v4 + 1);
        if (v14)
        {
          v14(v4);
        }
      }

      pthread_mutex_destroy(v9);
      free(v9);
      v9 = 0;
      *__error() = v13;
    }
  }

  return v9;
}

char *__xprintf_domain_init()
{
  result = malloc_type_calloc(1uLL, 0x9F8uLL, 0x10800406116304FuLL);
  xprintf_domain_default = result;
  if (!result)
  {
    __xprintf_domain_init_cold_1();
  }

  *result = 766030772;
  *(result + 8) = 0u;
  *(result + 24) = 0u;
  *(result + 40) = 0u;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  *(result + 88) = 0u;
  *(result + 104) = 0u;
  *(result + 120) = 0u;
  *(result + 136) = 0u;
  v1 = result + 200;
  *(result + 152) = 0u;
  v2 = 35;
  v3 = 1u;
  *(result + 168) = 0u;
  *(result + 184) = 0u;
  do
  {
    v1[v2 - 33] = 3;
    v2 = _printf_tbl_flags[v3++];
  }

  while (v3 != 30);
  v4 = 6;
  v5 = &_printf_tbl_defaults_fbsd;
  do
  {
    v6 = **v5;
    if (v6)
    {
      v7 = *(v5 + 1);
      v8 = (*v5 + 1);
      do
      {
        v1[v6 - 33] = 2;
        v9 = &result[24 * *(v8 - 1) - 496];
        *v9 = v7;
        *(v9 + 16) = 0;
        v10 = *v8++;
        v6 = v10;
      }

      while (v10);
    }

    v5 += 3;
    v11 = v4-- != 0;
  }

  while (v4 != 0 && v11);
  result[277] = 1;
  *(result + 268) = __printf_arginfo_n;
  *(result + 269) = __printf_render_n;
  *(result + 270) = 0;
  return result;
}

printf_domain_t copy_printf_domain(printf_domain_t __domain)
{
  v2 = malloc_type_malloc(0x9F8uLL, 0x10800406116304FuLL);
  if (v2)
  {
    pthread_once(&__xprintf_domain_once, __xprintf_domain_init);
    pthread_rwlock_rdlock(__domain);
    j__mkdtempat_np(v2, __domain);
    pthread_rwlock_unlock(__domain);
    *v2 = 766030772;
    *(v2 + 8) = 0u;
    *(v2 + 24) = 0u;
    *(v2 + 40) = 0u;
    *(v2 + 56) = 0u;
    *(v2 + 72) = 0u;
    *(v2 + 88) = 0u;
    *(v2 + 104) = 0u;
    *(v2 + 120) = 0u;
    *(v2 + 136) = 0u;
    *(v2 + 152) = 0u;
    *(v2 + 168) = 0u;
    *(v2 + 184) = 0u;
  }

  return v2;
}

void free_printf_domain(printf_domain_t __domain)
{
  if (__domain)
  {
    pthread_rwlock_destroy(__domain);

    free(__domain);
  }
}

printf_domain_t new_printf_domain(void)
{
  pthread_once(&__xprintf_domain_once, __xprintf_domain_init);
  result = malloc_type_malloc(0x9F8uLL, 0x10800406116304FuLL);
  if (result)
  {
    v1 = xprintf_domain_default;

    return j__mkdtempat_np(result, v1);
  }

  return result;
}

int register_printf_domain_function(printf_domain_t __domain, int __spec, printf_function *__render, printf_arginfo_function *__arginfo, void *__context)
{
  pthread_once(&__xprintf_domain_once, __xprintf_domain_init);
  v10 = (__spec - 33);
  if (v10 >= 0x5E || (pthread_once(&__xprintf_domain_once, __xprintf_domain_init), *(__domain + v10 + 200) == 3))
  {
    *__error() = 22;
    return -1;
  }

  else
  {
    pthread_rwlock_wrlock(__domain);
    v12 = 0;
    if (__render)
    {
      if (__arginfo)
      {
        v13 = (__domain + 24 * v10);
        v13[37] = __arginfo;
        v13[38] = __render;
        v13[39] = __context;
        v12 = 1;
      }
    }

    *(__domain + v10 + 200) = v12;
    pthread_rwlock_unlock(__domain);
    return 0;
  }
}

uint64_t register_printf_domain_render(pthread_rwlock_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  pthread_once(&__xprintf_domain_once, __xprintf_domain_init);
  if (a1 && (v8 = (a2 - 33), v8 < 0x5E) && (pthread_once(&__xprintf_domain_once, __xprintf_domain_init), *(&a1[1].__sig + v8) != 3))
  {
    pthread_rwlock_wrlock(a1);
    v10 = 0;
    if (a3)
    {
      if (a4)
      {
        v11 = &a1->__sig + 3 * v8;
        v11[37] = a4;
        v11[38] = a3;
        v11[39] = 0;
        v10 = 2;
      }
    }

    *(&a1[1].__sig + v8) = v10;
    pthread_rwlock_unlock(a1);
    return 0;
  }

  else
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }
}

int register_printf_domain_render_std(printf_domain_t __domain, const char *__specs)
{
  while (1)
  {
    result = *__specs;
    if (result > 0x50)
    {
      switch(result)
      {
        case 'Q':
          v5 = __printf_render_quote;
          v6 = __printf_arginfo_quote;
          break;
        case 'T':
          v5 = __printf_render_time;
          v6 = __printf_arginfo_time;
          break;
        case 'V':
          v5 = __printf_render_vis;
          v6 = __printf_arginfo_vis;
          break;
        default:
          goto LABEL_16;
      }

      goto LABEL_12;
    }

    if (result == 72)
    {
      v5 = __printf_render_hexdump;
      v6 = __printf_arginfo_hexdump;
      goto LABEL_12;
    }

    if (result != 77)
    {
      break;
    }

    v5 = __printf_render_errno;
    v6 = __printf_arginfo_errno;
LABEL_12:
    ++__specs;
    if ((register_printf_domain_render(__domain, result, v5, v6) & 0x80000000) != 0)
    {
      return -1;
    }
  }

  if (*__specs)
  {
LABEL_16:
    *__error() = 22;
    return -1;
  }

  return result;
}

char *__cdecl fparseln(FILE *a1, size_t *a2, size_t *a3, const char a4[3], int a5)
{
  v8 = 0;
  v9 = 0;
  v49 = 0;
  v10 = "\\\\#";
  if (a4)
  {
    v10 = a4;
  }

  __bp = *v10;
  __bp_4 = a5;
  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = *(v10 + 2);
  v14 = 1;
  while (v14)
  {
    if (a3)
    {
      ++*a3;
    }

    v15 = fgetln(a1, &v49);
    if (!v15)
    {
      break;
    }

    v16 = v15;
    v14 = 0;
    v17 = v49;
    if (v49 && v13)
    {
      if (v49 < 1)
      {
        v14 = 0;
      }

      else
      {
        v18 = v15;
        while (1)
        {
          if (*v18 == v13 && v11 != 0)
          {
            v20 = (v18 - 1);
            if (v18 - 1 < v15)
            {
              break;
            }

            v21 = 0;
            do
            {
              if (*v20 != v11)
              {
                break;
              }

              ++v21;
              --v20;
            }

            while (v20 >= v15);
            if ((v21 & 1) == 0)
            {
              break;
            }
          }

          if (++v18 >= &v15[v49])
          {
            v14 = 0;
            goto LABEL_23;
          }
        }

        v17 = v18 - v15;
        v49 = v18 - v15;
        v14 = v18 == v15 && v9 == 0;
        if (!v17)
        {
          goto LABEL_45;
        }
      }

LABEL_33:
      if (v15[v17 - 1] == 10)
      {
        v49 = --v17;
      }

      if (!v17 || !v12)
      {
        goto LABEL_45;
      }

      if (v15[v17 - 1] == v12 && v11)
      {
        v23 = &v15[v17 - 2];
        if (v23 < v15)
        {
          goto LABEL_44;
        }

        v24 = 0;
        do
        {
          if (*v23 != v11)
          {
            break;
          }

          ++v24;
          --v23;
        }

        while (v23 >= v15);
        if ((v24 & 1) == 0)
        {
LABEL_44:
          v49 = --v17;
          v14 = 1;
        }

        goto LABEL_45;
      }

LABEL_47:
      v46 = v12;
      v25 = a2;
      v26 = malloc_type_realloc(v9, v8 + v17 + 1, 0x66A1E3C1uLL);
      if (!v26)
      {
        free(v9);
        return 0;
      }

      v27 = v26;
      j__mkdtempat_np(v26 + v8, v16);
      v8 += v49;
      v27[v8] = 0;
      v9 = v27;
      a2 = v25;
      v12 = v46;
    }

    else
    {
LABEL_23:
      if (v49)
      {
        goto LABEL_33;
      }

LABEL_45:
      if (v17 || !v9)
      {
        goto LABEL_47;
      }
    }
  }

  if ((__bp_4 & 0xF) != 0)
  {
    if (v11)
    {
      if (v9)
      {
        j__strmode(v9, __bp);
        if (v30)
        {
          LOBYTE(v31) = *v9;
          v32 = v9;
          if (*v9)
          {
            v33 = v9;
            v32 = v9;
            do
            {
              if (v11 == v31)
              {
                LOBYTE(v31) = v11;
              }

              else
              {
                do
                {
                  *v32++ = v31;
                  v34 = *++v33;
                  v31 = v34;
                  if (v34)
                  {
                    v35 = v31 == v11;
                  }

                  else
                  {
                    v35 = 1;
                  }
                }

                while (!v35);
                if (!v31)
                {
                  break;
                }
              }

              v36 = v33[1];
              if (!v36)
              {
                break;
              }

              v37 = v33[1];
              v38 = v37 == v13;
              if (v37 == v13)
              {
                v39 = __bp_4 & 4;
              }

              else
              {
                v39 = 0;
              }

              if (v37 == v12)
              {
                v28 = (__bp_4 & 2);
              }

              else
              {
                v28 = 0;
              }

              v40 = v39 | v28;
              if (v37 == v12)
              {
                v38 = 1;
              }

              v41 = v37 == v11;
              if (v37 == v11)
              {
                v42 = __bp_4 & 1;
              }

              else
              {
                v42 = 0;
              }

              v43 = v40 | v42;
              if (v41)
              {
                v38 = 1;
              }

              if (!v38)
              {
                v43 = __bp_4 & 8;
              }

              if (!v43)
              {
                *v32++ = v31;
                v36 = v33[1];
              }

              *v32++ = v36;
              v44 = v33[2];
              v33 += 2;
              LOBYTE(v31) = v44;
            }

            while (v44);
          }

          *v32 = 0;
          v8 = j__strsignal_r(v9, v28, v29);
        }
      }
    }
  }

  if (a2)
  {
    *a2 = v8;
  }

  return v9;
}

int login_tty(int a1)
{
  setsid();
  result = ioctl(a1, 0x20007461uLL, 0);
  if (result != -1)
  {
    dup2(a1, 0);
    dup2(a1, 1);
    dup2(a1, 2);
    result = 0;
    if (a1 >= 3)
    {
      close_NOCANCEL();
      return 0;
    }
  }

  return result;
}

void logwtmp(const char *a1, const char *a2, const char *a3)
{
  MEMORY[0x193AD5FD0](v9, 640);
  if (*a1 == 126 && !a1[1])
  {
    if (j__strncasecmp_l(a2, "reboot", v6, v7))
    {
      v8 = 11;
    }

    else
    {
      v8 = 2;
    }
  }

  else
  {
    j__strtod(v9, a2);
    j__strtod(v10, a1);
    v11 = getpid();
    if (*a2)
    {
      v8 = 7;
    }

    else
    {
      v8 = 8;
    }

    j__strtod(v14, a3);
  }

  v12 = v8;
  gettimeofday(&v13, 0);
  _utmpx_asl(v9);
}

int raise(int a1)
{
  v2 = pthread_self();
  v3 = pthread_kill(v2, a1);
  v4 = v3;
  if (!v3)
  {
    return v4;
  }

  if (v3 != 45)
  {
    *__error() = v3;
    return -1;
  }

  v5 = getpid();

  return kill(v5, a1);
}

int opendev(char *a1, int a2, int a3, char **a4)
{
  v5 = a3;
  if (a4)
  {
    *a4 = a1;
  }

  *__error() = 2;
  if (pthread_once(&opendev_namebuf_once, opendev_namebuf_init) || (v7 = namebuf) == 0)
  {
    v11 = __error();
    v12 = 12;
    goto LABEL_13;
  }

  if ((v5 & 4) != 0)
  {
    v8 = "";
  }

  else
  {
    v8 = "r";
  }

  j__strmode(a1, 0x2F);
  if (v9)
  {

    return open_NOCANCEL();
  }

  if ((v5 & 1) == 0)
  {
LABEL_26:
    if (*__error() != 2)
    {
      return -1;
    }

    if (snprintf(namebuf, 0x400uLL, "%s%s%s", "/dev/", v8, a1) <= 1023)
    {
      result = open_NOCANCEL();
      if (a4)
      {
        *a4 = namebuf;
      }

      return result;
    }

    v11 = __error();
    v12 = 63;
LABEL_13:
    *v11 = v12;
    return -1;
  }

  if (snprintf(v7, 0x400uLL, "%s%s%s", "/dev/", v8, a1) > 1023)
  {
    *__error() = 63;
    goto LABEL_26;
  }

  v13 = namebuf;
  while (1)
  {
    v14 = strrchr(v13, 115);
    if (!v14 || (*(v14 - 1) - 48) > 9)
    {
      break;
    }

    *v14 = 0;
  }

  result = open_NOCANCEL();
  if (a4)
  {
    *a4 = namebuf;
  }

  if (result == -1)
  {
    goto LABEL_26;
  }

  return result;
}

void *opendev_namebuf_init()
{
  result = malloc_type_malloc(0x400uLL, 0x2EE559E2uLL);
  namebuf = result;
  return result;
}

int openpty(int *a1, int *a2, char *a3, termios *a4, winsize *a5)
{
  v10 = posix_openpt(131074);
  if (v10 < 0)
  {
    return -1;
  }

  v11 = v10;
  if (grantpt(v10) < 0 || unlockpt(v11) < 0 || ptsname_r(v11, buffer, 0x80uLL) == -1 || (v12 = open_NOCANCEL(), v12 < 0))
  {
    v15 = *__error();
    close_NOCANCEL();
    *__error() = v15;
    return -1;
  }

  v13 = v12;
  *a1 = v11;
  *a2 = v12;
  if (a3)
  {
    MEMORY[0x193AD6A30](a3, buffer, 128);
  }

  if (a4)
  {
    tcsetattr(v13, 2, a4);
  }

  if (a5)
  {
    ioctl(v13, 0x80087467uLL, a5);
  }

  return 0;
}

pid_t forkpty(int *a1, char *a2, termios *a3, winsize *a4)
{
  *v10 = 0;
  if (openpty(&v10[1], v10, a2, a3, a4) == -1)
  {
    return -1;
  }

  v5 = fork();
  if (v5)
  {
    v6 = v5;
    if (v5 != -1)
    {
      *a1 = v10[1];
      close_NOCANCEL();
      return v6;
    }

    v7 = *__error();
    close_NOCANCEL();
    close_NOCANCEL();
    *__error() = v7;
    return -1;
  }

  close_NOCANCEL();
  v8 = v10[0];
  if (login_tty(v10[0]) < 0)
  {
    syslog(3, "forkpty: login_tty could't make controlling tty");
    dup2(v8, 0);
    dup2(v8, 1);
    dup2(v8, 2);
    if (v8 >= 3)
    {
      close_NOCANCEL();
    }
  }

  return 0;
}

void uuid_generate_time(uuid_t out)
{
  v17 = 0;
  v18 = 0;
  if (uuid_generate_time_has_init)
  {
    goto LABEL_21;
  }

  v2 = socket(2, 2, 0);
  if ((v2 & 0x80000000) == 0)
  {
    v3 = v2;
    MEMORY[0x193AD5FD0](&v21, 1024);
    v19 = 1024;
    v20 = &v21;
    if ((ioctl(v3, 0xC00C6924uLL, &v19, v17, v18) & 0x80000000) == 0 && v19 >= 1)
    {
      v4 = 0;
      while (1)
      {
        v5 = v20 + v4;
        if (v5[17] == 18 && v5[22] == 6)
        {
          v6 = &v5[v5[21]];
          v8 = v6[24];
          v7 = v6 + 24;
          if ((v8 | 2) != 2 || v7[1] || v7[2] || v7[3] || v7[4] || v7[5])
          {
            break;
          }
        }

        v9 = v5[16];
        if (v9 >= 0x10)
        {
          v10 = v9 + 16;
        }

        else
        {
          v10 = 32;
        }

        v4 += v10;
        if (v4 >= v19)
        {
          goto LABEL_18;
        }
      }

      v16 = *v7;
      word_1EAC9E80C = *(v7 + 2);
      uuid_generate_time_node_id = v16;
      close_NOCANCEL();
      goto LABEL_20;
    }

LABEL_18:
    close_NOCANCEL();
  }

  arc4random_buf(&uuid_generate_time_node_id, 6uLL);
  LOBYTE(uuid_generate_time_node_id) = uuid_generate_time_node_id | 1;
LABEL_20:
  uuid_generate_time_has_init = 1;
LABEL_21:
  v21.tv_sec = 0;
  *&v21.tv_usec = 0;
  while (1)
  {
    gettimeofday(&v21, 0);
    v11 = get_clock_last;
    if (get_clock_last)
    {
      v12 = 0;
    }

    else
    {
      v12 = DWORD2(get_clock_last) == 0;
    }

    if (v12)
    {
      arc4random_buf(&get_clock_clock_seq, 2uLL);
      get_clock_clock_seq &= 0x3FFFu;
      get_clock_last = v21;
      v11 = v21.tv_sec - 1;
      *&get_clock_last = v21.tv_sec - 1;
    }

    tv_sec = v21.tv_sec;
    if (v21.tv_sec < v11)
    {
      v11 = v21.tv_sec;
LABEL_36:
      v14 = 0;
      get_clock_clock_seq = (get_clock_clock_seq + 1) & 0x3FFF;
      get_clock_adjustment = 0;
      get_clock_last = v21;
      goto LABEL_38;
    }

    if (v21.tv_sec != v11)
    {
      goto LABEL_37;
    }

    if (v21.tv_usec < SDWORD2(get_clock_last))
    {
      goto LABEL_36;
    }

    if (v21.tv_usec != DWORD2(get_clock_last))
    {
      break;
    }

    if (get_clock_adjustment <= 9)
    {
      v14 = ++get_clock_adjustment;
      goto LABEL_38;
    }
  }

  tv_sec = v11;
LABEL_37:
  v14 = 0;
  get_clock_adjustment = 0;
  get_clock_last = v21;
  v11 = tv_sec;
LABEL_38:
  v15 = 10 * v21.tv_usec + v14 + 10000000 * v11 + 122192928000000000;
  LODWORD(v17) = v15;
  LOWORD(v18) = get_clock_clock_seq | 0x8000;
  WORD2(v17) = WORD2(v15);
  HIWORD(v17) = HIWORD(v15) & 0xFFF | 0x1000;
  *(&v18 + 2) = uuid_generate_time_node_id;
  HIWORD(v18) = word_1EAC9E80C;
  uuid_pack(&v17, out);
}

pid_t tcgetsid(int a1)
{
  v2 = 0;
  if (ioctl(a1, 0x40047463uLL, &v2) < 0)
  {
    return -1;
  }

  else
  {
    return v2;
  }
}

uint64_t __libc_init(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char **a5)
{
  v6[0] = 1;
  v6[1] = a2;
  v6[2] = a3;
  v6[3] = a4;
  v7 = 0u;
  v8 = 0u;
  return _libc_initializer(v6, a2, a5, a1);
}

void _libc_fork_child(uint64_t a1)
{
  qword_1EAC9CAC0 = "crashed on child side of fork pre-exec";
  _arc4_fork_child(a1);
  _init_clock_port();
  __environ_lock_fork_child();

  _locale_lock_fork_child();
}

pid_t fork(void)
{
  if (_libSystem_atfork_prepare_v2)
  {
    _libSystem_atfork_prepare_v2(0);
  }

  else
  {
    _libSystem_atfork_prepare();
  }

  v0 = __fork();
  if (v0)
  {
    v1 = _libSystem_atfork_parent_v2;
    if (!_libSystem_atfork_parent_v2)
    {
      v2 = _libSystem_atfork_parent;
LABEL_10:
      v2();
      return v0;
    }
  }

  else
  {
    v1 = _libSystem_atfork_child_v2;
    if (!_libSystem_atfork_child_v2)
    {
      v2 = _libSystem_atfork_child;
      goto LABEL_10;
    }
  }

  v1(0);
  return v0;
}

pid_t vfork(void)
{
  if (_libSystem_atfork_prepare_v2)
  {
    _libSystem_atfork_prepare_v2(1);
  }

  else
  {
    _libSystem_atfork_prepare();
  }

  v0 = __fork();
  if (v0)
  {
    v1 = _libSystem_atfork_parent_v2;
    if (!_libSystem_atfork_parent_v2)
    {
      v2 = _libSystem_atfork_parent;
LABEL_10:
      v2();
      return v0;
    }
  }

  else
  {
    v1 = _libSystem_atfork_child_v2;
    if (!_libSystem_atfork_child_v2)
    {
      v2 = _libSystem_atfork_child;
      goto LABEL_10;
    }
  }

  v1(1);
  return v0;
}

int openx_np(const char *a1, int a2, filesec_t a3)
{
  if ((a2 & 0x200) != 0 && a3)
  {
    return _mkfilex_np(0, a1, a2, a3);
  }

  else
  {
    return open_NOCANCEL();
  }
}

uint64_t _mkfilex_np(int a1, int a2, int a3, filesec_t a4)
{
  v15 = -101;
  v16 = -101;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  memset(v11, 0, 68);
  if (a4)
  {
    if (filesec_get_property(a4, FILESEC_OWNER, &v16) && *__error() != 2 || filesec_get_property(a4, FILESEC_GROUP, &v15) && *__error() != 2 || filesec_get_property(a4, FILESEC_MODE, &v14) && *__error() != 2 || (filesec_get_property(a4, FILESEC_ACL_RAW, &v12) || filesec_get_property(a4, FILESEC_ACL_ALLOCSIZE, &v13)) && *__error() != 2)
    {
      return 0xFFFFFFFFLL;
    }

    v6 = v12;
    if (v12 == 1)
    {
      *__error() = 22;
      return 0xFFFFFFFFLL;
    }

    v7 = v12 == 0;
    if (!v12)
    {
      memset(&v11[2] + 4, 0, 32);
      memset(v11 + 4, 0, 32);
      v6 = v11;
      v12 = v11;
      LODWORD(v11[0]) = 19710317;
      DWORD1(v11[2]) = -1;
    }

    if (filesec_get_property(a4, FILESEC_UUID, v6 + 4))
    {
      if (*__error() != 2)
      {
        return 0xFFFFFFFFLL;
      }

      v8 = v12;
      *(v12 + 12) = 0;
      *(v8 + 4) = 0;
    }

    else
    {
      v7 = 0;
      v8 = v12;
    }

    if (filesec_get_property(a4, FILESEC_GRPUUID, v8 + 20))
    {
      if (*__error() == 2)
      {
        v9 = v12;
        *(v12 + 28) = 0;
        *(v9 + 20) = 0;
        if (v7)
        {
          v12 = 0;
        }

        goto LABEL_23;
      }

      return 0xFFFFFFFFLL;
    }
  }

LABEL_23:
  if (a1 == 2)
  {
    return __mkdir_extended();
  }

  if (a1 == 1)
  {
    return __mkfifo_extended();
  }

  return __open_extended();
}

int settimeofday(const timeval *a1, const timezone *a2)
{
  v3 = __settimeofday();
  if (!v3)
  {
    notify_post("com.apple.system.clock_set");
    v4 = 0;
    if (!a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = *__error();
  if (a1)
  {
LABEL_3:
    tv_sec = a1->tv_sec;
    tv_usec = a1->tv_usec;
    v8 = 0;
    asprintf(&v8, "settimeofday({%#lx,%#x}) == %d", tv_sec, tv_usec, v3);
    _simple_asl_log();
    free(v8);
  }

LABEL_4:
  *__error() = v4;
  return v3;
}

int umaskx_np(filesec_t a1)
{
  v4 = 0;
  v5 = 0;
  v3 = 0;
  if (a1)
  {
    if (filesec_get_property(a1, FILESEC_MODE, &v3) && *__error() != 2 || (filesec_get_property(a1, FILESEC_ACL_RAW, &v5) || filesec_get_property(a1, FILESEC_ACL_ALLOCSIZE, &v4)) && *__error() != 2)
    {
      return -1;
    }

    if (!v4)
    {
      v5 = 0;
    }
  }

  return __umask_extended();
}

uint64_t _OSThermalNotificationSetLevelForBehavior(uint64_t result, unsigned int a2)
{
  if (a2 <= 0xA)
  {
    v9 = v2;
    v10 = v3;
    v5 = result;
    v6 = (&predicates + 8 * a2);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___OSThermalNotificationSetLevelForBehavior_block_invoke;
    block[3] = &__block_descriptor_tmp_5;
    v8 = a2;
    if (*v6 != -1)
    {
      dispatch_once(v6, block);
    }

    result = notify_set_state(tokens[a2], v5);
    if (a2 == 8)
    {
      if (qword_1EAC9E0A8 != -1)
      {
        _OSThermalNotificationSetLevelForBehavior_cold_1();
      }

      return notify_set_state(dword_1EAC9E048, 0xBuLL);
    }
  }

  return result;
}