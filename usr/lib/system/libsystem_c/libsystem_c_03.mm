char *__cdecl basename(char *a1)
{
  v2 = basename_bname;
  if (basename_bname || (result = malloc_type_malloc(0x400uLL, 0x100004077774924uLL), v2 = result, (basename_bname = result) != 0))
  {

    return basename_r(a1, v2);
  }

  return result;
}

uint64_t advance_directory(uint64_t a1)
{
  if (*(a1 + 52))
  {
    return 1;
  }

  v2 = *(a1 + 48);
  if (v2 == -1)
  {
    fts_build_cold_1();
  }

  v3 = getattrlistbulk(v2, (a1 + 8), *(a1 + 32), 0x8000uLL, 8uLL);
  *(a1 + 56) = v3;
  if (v3 != -1)
  {
    if (!v3)
    {
      *(a1 + 52) = 1;
    }

    *(a1 + 60) = 0;
    *(a1 + 40) = *(a1 + 32);
    return 1;
  }

  v5 = *__error();
  close_NOCANCEL();
  *(a1 + 48) = -1;
  v6 = __error();
  result = 0;
  *v6 = v5;
  return result;
}

uint64_t fts_safe_changedir(uint64_t a1, uint64_t a2, int a3, _BYTE *a4)
{
  if ((*(a1 + 64) & 4) != 0)
  {
    return 0;
  }

  v8 = a3;
  if (a3 < 0)
  {
    v8 = open_NOCANCEL();
    if (v8 < 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  memset(&v17, 0, sizeof(v17));
  if (fstat(v8, &v17))
  {
    goto LABEL_5;
  }

  if (a3 == -1)
  {
    if (*a4 != 46 || a4[1] != 46 || a4[2] || (*(a2 + 90) & 8) == 0)
    {
      goto LABEL_25;
    }

    close_NOCANCEL();
    v8 = *(a2 + 60);
    *(a2 + 60) = -1;
    v15 = *(a2 + 90) & 0xFFF7;
    goto LABEL_24;
  }

  memset(&v16, 0, sizeof(v16));
  v12 = open_NOCANCEL();
  if ((v12 & 0x80000000) == 0)
  {
    v13 = v12;
    if (fstat(v12, &v16))
    {
      v14 = *__error();
      close_NOCANCEL();
      *__error() = v14;
      goto LABEL_5;
    }

    if (v17.st_dev == v16.st_dev)
    {
      close_NOCANCEL();
LABEL_25:
      v9 = fts_fchdir(a1, v8);
      goto LABEL_6;
    }

    *(a2 + 60) = v13;
    v15 = *(a2 + 90) | 8;
LABEL_24:
    *(a2 + 90) = v15;
    goto LABEL_25;
  }

LABEL_5:
  v9 = 0xFFFFFFFFLL;
LABEL_6:
  v10 = *__error();
  if (a3 < 0)
  {
    close_NOCANCEL();
  }

  *__error() = v10;
  return v9;
}

char *__cdecl inet_ntoa(in_addr a1)
{
  s_addr = a1.s_addr;
  strcpy(&inet_ntoa_ret, "[inet_ntoa error]");
  inet_ntop(2, &s_addr, &inet_ntoa_ret, 0x12u);
  return &inet_ntoa_ret;
}

uint64_t _ffpp_strtoencf32_l(float *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v26 = xmmword_18E989820;
  v27 = 0x28FFFFFFD2;
  v28 = 113;
  v29 = a1;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v33 = 0uLL;
  v34 = 0uLL;
  result = fastParse64(&v26);
  if (!result)
  {
    return result;
  }

  v5 = WORD2(v34);
  v6 = v33;
  if ((DWORD1(v34) + 10) <= 0x14 && v33 <= 7)
  {
    if (BYTE8(v34))
    {
      v7 = -DWORD2(v32);
    }

    else
    {
      v7 = DWORD2(v32);
    }

    v8 = v7;
    if ((DWORD1(v34) & 0x80000000) != 0)
    {
      v9 = v8 / _ffpp_strtoencf32_l_floatPowerOf10[-DWORD1(v34)];
    }

    else
    {
      v9 = v8 * _ffpp_strtoencf32_l_floatPowerOf10[DWORD1(v34)];
    }

    *v29 = v9;
    return result;
  }

  result = fegetround();
  if (v6 >= 20)
  {
    v10 = 36;
  }

  else
  {
    v10 = 4;
  }

  if (!(*(&v32 + 1) >> 59) && v6 >= 20)
  {
    _ffpp_strtoencf32_l_cold_2();
  }

  if (v6 >= 20)
  {
    v11 = v6 + v5 - 19;
  }

  else
  {
    v11 = v5;
  }

  v12 = __clz(*(&v32 + 1));
  v13 = (powersOf10_Float[v11 + 70] * (*(&v32 + 1) << v12)) >> 64;
  if (!(v13 >> 62))
  {
    _ffpp_strtoencf32_l_cold_1();
  }

  v14 = __clz(v13);
  v15 = (55732705 * v11) >> 24;
  v16 = v13 << v14;
  v17 = v16 + v10;
  HIDWORD(v19) = result;
  LODWORD(v19) = result;
  v18 = v19 >> 22;
  if (v18 == 1)
  {
    if ((BYTE8(v34) & 1) == 0)
    {
      v16 += 0xFFFFFFFFFFLL;
      v17 += 0x10000000000;
    }
  }

  else if (v18 != 3)
  {
    if (v18 == 2)
    {
      v17 += 0x10000000000;
      if (BYTE8(v34) == 1)
      {
        v16 += 0xFFFFFFFFFFLL;
      }

      else
      {
        v17 = v16 + 4;
      }
    }

    else
    {
      v16 += 0x7FFFFFFFFFLL;
      v17 += 0x8000000000;
    }
  }

  v20 = v16 >> 40;
  v21 = v15 - v12 - v14;
  if (!v20)
  {
    ++v21;
  }

  v22 = v21 + 65;
  if (v22 >= 129)
  {
    return overflow(&v26);
  }

  if (v22 <= -126)
  {
    if (v22 <= 0xFFFFFF6A)
    {
      return underflow(&v26);
    }

    goto LABEL_41;
  }

  if (v17 >> 40 != v20)
  {
LABEL_41:
    v25 = fegetround();
    return generalSlowpath(&v26, v25, v35, 32);
  }

  v23 = v20 & 0x7FFFFF | (v22 << 23);
  if (BYTE8(v34))
  {
    v24 = 0x80000000;
  }

  else
  {
    v24 = 0;
  }

  *v29 = (v23 + 1056964608) | v24;
  return result;
}

void *__cdecl bsearch_b(const void *__key, const void *__base, size_t __nel, size_t __width, void *__compar)
{
  if (!__nel)
  {
    return 0;
  }

  v7 = __nel;
  while (1)
  {
    v10 = __base + (v7 >> 1) * __width;
    v11 = (*(__compar + 2))(__compar, __key, v10);
    if (!v11)
    {
      break;
    }

    if (v11 > 0)
    {
      __base = &v10[__width];
    }

    v12 = v7 - (v11 > 0);
    v7 = v12 >> 1;
    if (v12 <= 1)
    {
      return 0;
    }
  }

  return v10;
}

float strtof(const char *a1, char **a2)
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

  _ffpp_strtoencf32_l(&v6, a1, a2, v4);
  return v6;
}

void close_directory(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    closedir(v2);
    *a1 = 0;
  }

  if (*(a1 + 48) != -1)
  {
    close_NOCANCEL();
    *(a1 + 48) = -1;
  }

  free(*(a1 + 32));
  *(a1 + 32) = 0;
}

int uname(utsname *a1)
{
  *v12 = 0x100000001;
  v11 = 256;
  v2 = sysctl(v12, 2u, a1, &v11, 0, 0);
  *v12 = 0xA00000001;
  v11 = 256;
  v3 = sysctl(v12, 2u, a1->nodename, &v11, 0, 0);
  *v12 = 0x200000001;
  v11 = 256;
  v6 = sysctl(v12, 2u, a1->release, &v11, 0, 0) == -1 || v3 == -1 || v2 == -1;
  *v12 = 0x400000001;
  v11 = 256;
  version = a1->version;
  if (sysctl(v12, 2u, a1->version, &v11, 0, 0) == -1)
  {
    v8 = -1;
  }

  else
  {
    v8 = v6 << 31 >> 31;
    if (v11)
    {
      v9 = v11 - 1;
      do
      {
        if (*version - 9 <= 1)
        {
          *version = 32 * (v9 > 1);
        }

        ++version;
        --v9;
      }

      while (v9 != -1);
    }
  }

  *v12 = 0x100000006;
  v11 = 256;
  if (sysctl(v12, 2u, a1->machine, &v11, 0, 0) == -1)
  {
    return -1;
  }

  else
  {
    return v8;
  }
}

uintptr_t __thread_stack_async_pcs(uint64_t a1, int a2, _DWORD *a3, uint64_t a4)
{
  result = *(a4 - 8);
  return_addr = 0;
  do
  {
    v7 = a2;
    result = pthread_stack_frame_decode_np(result, &return_addr);
    if (!return_addr)
    {
      break;
    }

    v8 = *a3;
    *(a1 + 8 * v8) = return_addr + 1;
    *a3 = v8 + 1;
    if (!result)
    {
      break;
    }

    if (result)
    {
      break;
    }

    a2 = v7 - 1;
  }

  while (v7);
  return result;
}

void psort(void *__base, size_t __nel, size_t __width, int (__cdecl *__compar)(const void *, const void *))
{
  if (__nel >= 0x7D0 && (_get_cpu_capabilities() & 0xFE0000) != 0 && (v17 = 0, v15 = 0u, *group = 0u, v13 = 0u, *v14 = 0u, (v8 = getargs(&v13)) != 0))
  {
    v9 = v8;
    *&v13 = "psort";
    v14[1] = __compar;
    *&v15 = __width;
    group[0] = dispatch_get_global_queue(0, 0);
    group[1] = dispatch_group_create();
    *(v9 + 8) = __base;
    *(v9 + 16) = __nel;
    *(v9 + 24) = 2 * flsl(__nel) - 2;
    *v9 = &v13;
    v10 = flsl(__nel);
    *(&v15 + 1) = ((1 << (v10 / 2)) + (__nel >> (v10 / 2))) >> 1;
    _psort_parallel(v9);
    dispatch_group_wait(group[1], 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(group[1]);
    v11 = v14[0];
    if (v14[0])
    {
      do
      {
        v12 = *v11;
        munmap(v11, 0x1000uLL);
        v11 = v12;
      }

      while (v12);
    }
  }

  else
  {
    qsort(__base, __nel, __width, __compar);
  }
}

int unsetenv(const char *a1)
{
  if (!a1 || !*a1 || (j__strmode(a1, 0x3D), v2))
  {
    *__error() = 22;
    return -1;
  }

  environ_lock_np();
  if (!__env_owned)
  {
    __env_owned = _owned_ptr_alloc();
    if (!__env_owned)
    {
      environ_unlock_np();
      return -1;
    }
  }

  v4 = _NSGetEnviron();
  __unsetenv_locked(a1, *v4, __env_owned);
  environ_unlock_np();
  return 0;
}

void psort_b(void *__base, size_t __nel, size_t __width, void *__compar)
{
  if (__nel >= 0x7D0 && (_get_cpu_capabilities() & 0xFE0000) != 0 && (v17 = 0, v15 = 0u, *group = 0u, v13 = 0u, *v14 = 0u, (v8 = getargs(&v13)) != 0))
  {
    v9 = v8;
    *&v13 = "psort_b";
    v14[1] = __compar;
    *&v15 = __width;
    group[0] = dispatch_get_global_queue(0, 0);
    group[1] = dispatch_group_create();
    *(v9 + 8) = __base;
    *(v9 + 16) = __nel;
    *(v9 + 24) = 2 * flsl(__nel) - 2;
    *v9 = &v13;
    v10 = flsl(__nel);
    *(&v15 + 1) = ((1 << (v10 / 2)) + (__nel >> (v10 / 2))) >> 1;
    _psort_parallel_0(v9);
    dispatch_group_wait(group[1], 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(group[1]);
    v11 = v14[0];
    if (v14[0])
    {
      do
      {
        v12 = *v11;
        munmap(v11, 0x1000uLL);
        v11 = v12;
      }

      while (v12);
    }
  }

  else
  {
    qsort_b(__base, __nel, __width, __compar);
  }
}

_BYTE *__unsetenv_locked(_BYTE *a1, char *a2, uint64_t a3)
{
  v11 = 0;
  for (result = __findenv_locked(a1, &v11 + 1, a2); result; result = __findenv_locked(a1, &v11 + 1, a2))
  {
    v7 = SHIDWORD(v11);
    v8 = *&a2[8 * SHIDWORD(v11)];
    if (!_owned_ptr_search(a3, v8, &v11))
    {
      if (v11 && *(a3 + 8) > v11)
      {
        j__mkostemp((*a3 + 8 * v11), *a3 + 8 * v11 + 8);
        --*(a3 + 8);
        v8 = *&a2[8 * SHIDWORD(v11)];
      }

      free(v8);
      v7 = SHIDWORD(v11);
    }

    v9 = &a2[8 * v7 + 8];
    do
    {
      v10 = *v9;
      *(v9 - 1) = *v9;
      v9 += 8;
    }

    while (v10);
  }

  return result;
}

const char *inet_ntop6(uint64_t a1, const char *a2, unsigned int a3)
{
  v4 = 0;
  v5 = 0;
  v35 = 0u;
  v36 = 0u;
  do
  {
    *(&v35 + (v5 >> 1)) |= *(a1 + v5) << (~v4 & 8);
    ++v5;
    v4 += 8;
  }

  while (v5 != 16);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = -1;
  v10 = -1;
  do
  {
    v12 = v10 == -1 || v7 > v8;
    v13 = !v12;
    if (v12)
    {
      v14 = v9;
    }

    else
    {
      v14 = v10;
    }

    if (v13)
    {
      v15 = v8;
    }

    else
    {
      v15 = v7;
    }

    v16 = v9 == -1;
    if (v9 == -1)
    {
      v14 = v10;
      v15 = v8;
      v9 = v6;
    }

    if (v16)
    {
      v17 = 1;
    }

    else
    {
      v17 = (v7 + 1);
    }

    if (*(&v35 + v6))
    {
      v10 = v14;
      v8 = v15;
      v9 = -1;
    }

    else
    {
      v7 = v17;
    }

    ++v6;
  }

  while (v6 != 8);
  v18 = 0;
  v20 = v10 == -1 || v7 > v8;
  v21 = !v20;
  if (v20)
  {
    v22 = v9;
  }

  else
  {
    v22 = v10;
  }

  if (v21)
  {
    v7 = v8;
  }

  if (v9 == -1)
  {
    v22 = v10;
    v23 = v8;
  }

  else
  {
    v23 = v7;
  }

  if (v23 >= 2 || v22 == -1)
  {
    v25 = v22;
  }

  else
  {
    v25 = 0xFFFFFFFFLL;
  }

  v26 = v25 + v23;
  v27 = __little;
  while (1)
  {
    if (v25 != -1 && v18 >= v25 && v18 < v26)
    {
      if (v25 == v18)
      {
        *v27++ = 58;
      }

      goto LABEL_61;
    }

    if (v18)
    {
      *v27++ = 58;
      if (!v25 && v18 == 6 && (v23 == 6 || v23 == 7 && HIDWORD(v36) != 1 || v23 == 5 && DWORD1(v36) == 0xFFFF))
      {
        break;
      }
    }

    v27 += sprintf(v27, "%x", *(&v35 + v18));
LABEL_61:
    if (++v18 == 8)
    {
      goto LABEL_65;
    }
  }

  v34 = *(a1 + 12);
  if (!inet_ntop4(&v34, v27, __little - v27 + 46))
  {
    goto LABEL_69;
  }

  v27 += j__strsignal_r(v27, v28, v29);
LABEL_65:
  if (v25 != -1 && v26 == 8)
  {
    *v27++ = 58;
  }

  *v27 = 0;
  if (v27 - __little + 1 > a3)
  {
LABEL_69:
    v30 = 0;
    *__error() = 28;
    return v30;
  }

  v30 = a2;
  j__strnstr(a2, __little, v17);
  return v30;
}

int mkstemps(char *a1, int a2)
{
  v3 = 0;
  if (find_temp_path(4294967294, a1, a2, 1, _mkostemps_action, 0, &v3))
  {
    return v3;
  }

  else
  {
    return -1;
  }
}

uint64_t grouping_init(uint64_t a1, int a2, locale_t a3)
{
  v5 = localeconv_l(a3);
  fixed = __fix_nogrouping(v5->grouping);
  *(a1 + 16) = fixed;
  thousands_sep = v5->thousands_sep;
  *a1 = thousands_sep;
  v10 = j__strsignal_r(thousands_sep, v8, v9);
  v11 = 0;
  *(a1 + 8) = v10;
  *(a1 + 28) = 0;
  *(a1 + 32) = 0;
  *(a1 + 24) = a2;
  v12 = *fixed;
  if (v12 != 127)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      if (a2 <= v12)
      {
        break;
      }

      a2 -= v12;
      *(a1 + 24) = a2;
      if (fixed[1])
      {
        *(a1 + 28) = ++v14;
        *(a1 + 16) = ++fixed;
      }

      else
      {
        *(a1 + 32) = ++v13;
      }

      v12 = *fixed;
    }

    while (v12 != 127);
    v11 = v13 + v14;
  }

  return (v11 * v10);
}

uint64_t grouping_init_0(uint64_t a1, int a2, locale_t a3)
{
  v6 = localeconv_l(a3);
  *(a1 + 8) = __fix_nogrouping(v6->grouping);
  v15 = 0;
  memset(&v16, 0, sizeof(v16));
  v7 = localeconv_l(a3);
  v8 = mbrtowc_l(&v15, v7->thousands_sep, *(*(a3 + 166) + 64), &v16, a3);
  result = 0;
  if ((~v8 & 0xFFFFFFFE) != 0)
  {
    v10 = v15;
  }

  else
  {
    v10 = 0;
  }

  *a1 = v10;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = a2;
  v11 = *(a1 + 8);
  v12 = *v11;
  if (v12 != 127)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      if (a2 <= v12)
      {
        break;
      }

      a2 -= v12;
      *(a1 + 16) = a2;
      if (v11[1])
      {
        *(a1 + 20) = ++v14;
        *(a1 + 8) = ++v11;
      }

      else
      {
        *(a1 + 24) = ++v13;
      }

      v12 = *v11;
    }

    while (v12 != 127);
    return (v13 + v14);
  }

  return result;
}

uint64_t fts_fchdir(uint64_t a1, int a2)
{
  if ((*(a1 + 65) & 4) != 0)
  {
    JUMPOUT(0x193AD6710);
  }

  return fchdir(a2);
}

void *gmt_init()
{
  result = gmtptr;
  if (gmtptr || (result = malloc_type_calloc(1uLL, 0x4768uLL, 0x10000402151C985uLL), (gmtptr = result) != 0))
  {
    gmtload(result, v3);
    return notify_register_tz(v3, &gmt_notify, v1, v2);
  }

  return result;
}

uint64_t gmtload(uint64_t a1, const char *a2)
{
  result = tzload("UTC", a1, a2, 1);
  if (result)
  {

    return tzparse("UTC", a1, 1uLL);
  }

  return result;
}

uint64_t __glob(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v4 = v3;
  v5 = v2;
  v28 = 0;
  v6 = __locale_key;
  v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v6);
  memset(v27, 0, sizeof(v27));
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &__global_locale;
  }

  v9 = *(*(v8 + 166) + 64);
  v10 = *(v3 + 24);
  if ((v10 & 1) == 0)
  {
    *v3 = 0;
    *(v3 + 32) = 0;
    if ((v10 & 2) == 0)
    {
      *(v3 + 16) = 0;
    }
  }

  if ((v10 & 0x1000) != 0)
  {
    v11 = *(v3 + 8);
    if (!v11)
    {
      v11 = 1024;
    }

    *(&v27[0] + 1) = v11;
  }

  v26 = 0;
  *(v3 + 8) = 0;
  memset(&v29, 0, sizeof(v29));
  if ((v10 & 0x2000) == 0)
  {
    if (v9 <= 1023)
    {
      v12 = v30;
      v13 = 8176;
      v14 = v2;
      while (1)
      {
        if (*v14 == 92)
        {
          if (!*++v14)
          {
            *v12 = 92;
            goto LABEL_21;
          }

          v16 = 0x4000000000;
        }

        else
        {
          v16 = 0;
        }

        v17 = mbrtowc_l(&v26, v14, 6uLL, &v29, v8);
        if (v17 >= 0xFFFFFFFFFFFFFFFELL)
        {
          goto LABEL_29;
        }

        if (!v17)
        {
          goto LABEL_33;
        }

        *v12 = v16 | v26;
        v14 += v17;
LABEL_21:
        ++v12;
        v18 = v9 <= v13 >> 3;
        v13 -= 8;
        if (!v18)
        {
          goto LABEL_29;
        }
      }
    }

    goto LABEL_29;
  }

  if (v9 > 1023)
  {
LABEL_29:
    if ((*(v4 + 24) & 0x10) != 0 || (*(v4 + 24) & 0x300) == 0x200)
    {
      return __gl_globextend(0, v4, v27, v5, v8);
    }

    else
    {
      return 4294967293;
    }
  }

  v12 = v30;
  v19 = 8176;
  v20 = v2;
  while (1)
  {
    v21 = mbrtowc_l(&v26, v20, 6uLL, &v29, v8);
    if (v21 >= 0xFFFFFFFFFFFFFFFELL)
    {
      goto LABEL_29;
    }

    if (!v21)
    {
      break;
    }

    *v12++ = v26;
    v20 += v21;
    v18 = v9 <= v19 >> 3;
    v19 -= 8;
    if (!v18)
    {
      goto LABEL_29;
    }
  }

LABEL_33:
  *v12 = 0;
  v23 = *(v4 + 24);
  if ((v23 & 0x80) == 0)
  {
    return glob0(v30, v4);
  }

  if (v30[0] == 123 && v30[1] == 125 && !v30[2])
  {
    if ((v23 & 0x1000) != 0)
    {
      v24 = (*&v27[0])++;
      if (v24 >= 0x80)
      {
        *__error() = 7;
        return 0xFFFFFFFFLL;
      }
    }

    return glob0(v30, v4);
  }

  v25 = *v4;
  result = globexp1(v30, v4);
  if (!result)
  {
    return globfinal(v4, v27, v25, v5, v8);
  }

  return result;
}

int glob(const char *a1, int a2, int (__cdecl *a3)(const char *, int), glob_t *a4)
{
  a4->gl_flags = a2 & 0x7FFFFEFF;
  a4->gl_errfunc = a3;
  return __glob(a1, a4);
}

float strtof_l(const char *a1, char **a2, locale_t a3)
{
  v4 = 0.0;
  _ffpp_strtoencf32_l(&v4, a1, a2, a3);
  return v4;
}

size_t mbrtowc_l(__int32 *a1, const char *a2, size_t a3, mbstate_t *a4, locale_t a5)
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

  if (!a4)
  {
    a4 = (v6 + 272);
  }

  return (*(*(v6 + 166) + 72))(a1, a2, a3, a4);
}

uint64_t glob0(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __gl_globtilde(v2, v24);
  if (!v11)
  {
    *__error() = 7;
    return 0xFFFFFFFFLL;
  }

  v12 = *v10;
  v13 = v24;
LABEL_3:
  v14 = v11 + 2;
  while (1)
  {
    v11 = v14;
    v15 = *(v14 - 1);
    if (v15 != 42)
    {
      break;
    }

    *(v10 + 24) |= 0x100u;
    if (v13 != v24)
    {
      v14 = v11 + 2;
      if (*(v13 - 1) == 0x800000002ALL)
      {
        continue;
      }
    }

    *v13 = 0x800000002ALL;
    goto LABEL_35;
  }

  if (v15)
  {
    if (v15 == 63)
    {
      *(v10 + 24) |= 0x100u;
      v15 = 0x800000003FLL;
      goto LABEL_34;
    }

    if (v15 != 91)
    {
      v15 = v15;
      goto LABEL_34;
    }

    v16 = (v11 + 2);
    v17 = *v11;
    if (*v11 != 33)
    {
      v16 = v11;
    }

    if (!*v16)
    {
LABEL_17:
      *v13 = 91;
      if (v17 == 33)
      {
        v20 = -8;
      }

      else
      {
        v20 = 0;
      }

      v11 = (v16 + v20);
      goto LABEL_35;
    }

    v11 = (v16 + 8);
    v18 = 8;
    while (1)
    {
      v19 = *(v16 + v18);
      if (v19 == 93)
      {
        break;
      }

      v18 += 8;
      if (!v19)
      {
        goto LABEL_17;
      }
    }

    *v13 = 0x800000005BLL;
    if (v17 == 33)
    {
      v13[1] = 0x8000000021;
      v13 += 2;
    }

    else
    {
      ++v13;
    }

    LODWORD(v16) = *v16;
    while (1)
    {
      *v13 = v16;
      v16 = *v11;
      if (*v11 == 45)
      {
        v21 = *(v11 + 1);
        if (v21 != 93)
        {
          v13[1] = 0x800000002DLL;
          v13[2] = v21;
          v13 += 3;
          v22 = *(v11 + 2);
          v11 += 4;
          v16 = v22;
          goto LABEL_32;
        }

        v16 = 45;
      }

      ++v13;
LABEL_32:
      v11 += 2;
      if (v16 == 93)
      {
        *(v10 + 24) |= 0x100u;
        v15 = 0x800000005DLL;
LABEL_34:
        *v13 = v15;
LABEL_35:
        ++v13;
        goto LABEL_3;
      }
    }
  }

  *v13 = 0;
  if (!v24[0] || (result = glob2(v25, v25, &v26, v24, v10, v8, v4), !result))
  {
    if (v6)
    {
      return globfinal(v10, v8, v12, v6, v4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

ldiv_t ldiv(uint64_t a1, uint64_t a2)
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

__int32 *__gl_globtilde(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v7 = v2;
  if (*v2 != 126 || (*(v5 + 25) & 8) == 0)
  {
    return v7;
  }

  v8 = v3;
  v9 = &v3[2 * v4 - 2];
  v10 = v2 + 1;
  if (v9 <= v3)
  {
    v11 = v3;
LABEL_13:
    v12 = *v10;
  }

  else
  {
    v11 = v3;
    while (1)
    {
      v12 = *v10;
      if (!*v10)
      {
        break;
      }

      if (v12 == 47 || v12 == 0x400000002FLL)
      {
        break;
      }

      *v11 = v12;
      v11 += 2;
      ++v10;
      if (v11 >= v9)
      {
        goto LABEL_13;
      }
    }
  }

  if (v12)
  {
    v14 = v12 == 0x400000002FLL;
  }

  else
  {
    v14 = 1;
  }

  if (!v14 && v12 != 47)
  {
    return 0;
  }

  v28 = 0;
  *v11 = 0;
  if (*v3)
  {
    if (__gl_g_Ctoc(v3, v30, 0x1000uLL, v6))
    {
      return 0;
    }

    v15 = getpwnam(v30);
    if (!v15)
    {
      return v7;
    }
  }

  else
  {
    if (!issetugid())
    {
      pw_dir = getenv("HOME");
      if (pw_dir)
      {
        goto LABEL_28;
      }
    }

    v16 = getlogin();
    if (!v16 || (v15 = getpwnam(v16)) == 0)
    {
      v17 = getuid();
      v15 = getpwuid(v17);
      if (!v15)
      {
        return v7;
      }
    }
  }

  pw_dir = v15->pw_dir;
LABEL_28:
  v19 = 0;
  memset(&v29, 0, sizeof(v29));
  while (1)
  {
    v20 = mbrtowc(&v28, pw_dir, 6uLL, &v29);
    if (v20 < 0xFFFFFFFFFFFFFFFELL)
    {
      v21 = v28;
    }

    else
    {
      v21 = *pw_dir;
      v28 = v21;
      memset(&v29, 0, sizeof(v29));
      v20 = 1;
    }

    *&v30[v19] = v21;
    if (!v21)
    {
      break;
    }

    pw_dir += v20;
    v22 = v19 >= 0xFF9;
    v19 += 4;
    if (v22)
    {
      return 0;
    }
  }

  v23 = v30;
  v24 = v8;
  if (v9 > v8)
  {
    do
    {
      v25 = *v23;
      if (!v25)
      {
        goto LABEL_44;
      }

      v23 += 4;
      *v24++ = v25 | 0x4000000000;
    }

    while (v24 < v9);
  }

  if (*v23)
  {
    return 0;
  }

LABEL_44:
  if (*v10)
  {
    while (v24 <= v9)
    {
      v27 = *v10++;
      *v24++ = v27;
      if (!v27)
      {
        return v8;
      }
    }

    return 0;
  }

  *v24 = 0;
  return v8;
}

uint64_t __errstr(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = 0;
  if (a1 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = -a1;
  }

  v7 = v11;
  do
  {
    *v7-- = a0123456789[v6 % 0xA];
    v8 = v6 > 9;
    v6 /= 0xAu;
  }

  while (v8);
  if (a1 < 0)
  {
    *v7 = 45;
    v9 = -2;
  }

  else
  {
    v9 = -1;
  }

  *&v7[v9] = 8250;
  MEMORY[0x193AD6A30](a3, a2, a4);
  return MEMORY[0x193AD6A20](a3, &v7[v9], a4);
}

uint64_t glob2(__int32 *a1, uint64_t *a2, unint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, _xlocale *a7)
{
  memset(&v42, 0, sizeof(v42));
  v13 = *a4;
  if (!*a4)
  {
LABEL_17:
    *a2 = 0;
    if (__gl_g_Ctoc(a1, v45, 0x405uLL, a7))
    {
      v20 = __error();
      v21 = 0;
      v22 = 63;
LABEL_19:
      *v20 = v22;
      return v21;
    }

    if ((*(a5 + 24) & 0x40) != 0)
    {
      if ((*(a5 + 72))(v45, &v42))
      {
        return 0;
      }
    }

    else if (lstat(v45, &v42))
    {
      return 0;
    }

    v23 = *(a5 + 24);
    if ((v23 & 0x1000) != 0)
    {
      v24 = *(a6 + 24);
      *(a6 + 24) = v24 + 1;
      if (v24 >= 0x80)
      {
        goto LABEL_39;
      }
    }

    if ((v23 & 8) != 0 && (*(a2 - 1) & 0xFFFFFFBFFFFFFFFFLL) != 0x2F)
    {
      v25 = v42.st_mode & 0xF000;
      if (v25 == 0x4000 || v25 == 40960 && !g_stat(a1, &v42, a5, a7) && (v42.st_mode & 0xF000) == 0x4000)
      {
        if ((a2 + 1) > a3)
        {
          goto LABEL_39;
        }

        *a2 = xmmword_18E98A7D0;
      }
    }

    ++*(a5 + 8);
    return __gl_globextend(a1, a5, a6, 0, a7);
  }

  v14 = a4;
  while (1)
  {
    v15 = 0;
    for (i = 0; v13; ++v15)
    {
      if (v13 == 47 || v13 == 0x400000002FLL)
      {
        break;
      }

      if (&a2[v15 + 1] > a3)
      {
        goto LABEL_39;
      }

      if ((v13 & 0x8000000000) != 0)
      {
        i = 1;
      }

      a2[v15] = v13;
      v13 = v14[v15 + 1];
    }

    v17 = &v14[v15];
    if (i)
    {
      if (a2 > a3)
      {
        goto LABEL_39;
      }

      *a2 = 0;
      if (*(a5 + 40))
      {
        if (__gl_g_Ctoc(a1, v45, 0x405uLL, a7))
        {
          goto LABEL_39;
        }
      }

      v39 = *__error();
      *__error() = 0;
      v41 = g_opendir(a1, a5, a7);
      if (v41)
      {
        if ((*(a5 + 24) & 0x40) != 0)
        {
          v27 = *(a5 + 56);
        }

        else
        {
          v27 = readdir;
        }

        *__error() = 0;
        v21 = (v27)(v41);
        if (v21)
        {
          v40 = v27;
          while (1)
          {
            v43 = 0;
            memset(&v44, 0, sizeof(v44));
            if ((*(a5 + 25) & 0x10) != 0)
            {
              v28 = *(a6 + 16);
              *(a6 + 16) = v28 + 1;
              if (v28 >> 14)
              {
                break;
              }
            }

            v30 = *(v21 + 21);
            v29 = (v21 + 21);
            if (v30 != 46 || (*v14 & 0xFFFFFFBFFFFFFFFFLL) == 0x2E)
            {
              v31 = a2;
              memset(&v44, 0, sizeof(v44));
              while (1)
              {
                v32 = mbrtowc_l(&v43, v29, 6uLL, &v44, a7);
                if (v32 < 0xFFFFFFFFFFFFFFFELL)
                {
                  v33 = v43;
                }

                else
                {
                  v33 = *v29;
                  v43 = v33;
                  memset(&v44, 0, sizeof(v44));
                  v32 = 1;
                }

                *v31 = v33;
                if (!v33)
                {
                  break;
                }

                ++v31;
                v29 += v32;
                if (v31 > a3)
                {
                  v34 = err_aborted(a5, v45);
                  if (v34)
                  {
                    v21 = v34;
                    v37 = 63;
                    goto LABEL_72;
                  }

                  goto LABEL_68;
                }
              }

              if (!__gl_match(a2, v14, v17, a7))
              {
LABEL_68:
                *a2 = 0;
                v27 = v40;
                goto LABEL_69;
              }

              if (!*__error())
              {
                *__error() = v39;
              }

              v35 = glob2(a1, v31, a3, v17, a5, a6, a7);
              v27 = v40;
              if (v35)
              {
                v21 = v35;
                goto LABEL_73;
              }
            }

LABEL_69:
            *__error() = 0;
            v21 = (v27)(v41);
            if (!v21)
            {
              goto LABEL_70;
            }
          }

          v21 = 0xFFFFFFFFLL;
          v37 = 7;
LABEL_72:
          *__error() = v37;
LABEL_73:
          v36 = 0;
        }

        else
        {
LABEL_70:
          v36 = 1;
        }

        v38 = *__error();
        if ((*(a5 + 24) & 0x40) != 0)
        {
          (*(a5 + 48))(v41);
        }

        else
        {
          closedir(v41);
        }

        *__error() = v38;
        if (v21)
        {
          return v21;
        }

        if (v36)
        {
          if (*__error())
          {
            __error();
            v21 = err_aborted(a5, v45);
            if (v21)
            {
              return v21;
            }
          }
        }

        if (*__error())
        {
          return 0;
        }

        v20 = __error();
        v21 = 0;
LABEL_83:
        v22 = v39;
        goto LABEL_19;
      }

      if (*__error() != 2 && *__error() != 20)
      {
        __error();
        v21 = err_aborted(a5, v45);
        if (*__error())
        {
          return v21;
        }

        v20 = __error();
        goto LABEL_83;
      }

      return 0;
    }

    v18 = &a2[v15];
    if ((v13 & 0xFFFFFFBFFFFFFFFFLL) == 0x2F)
    {
      break;
    }

    a2 = v18;
LABEL_16:
    v14 = v17;
    if (!v13)
    {
      goto LABEL_17;
    }
  }

  while (1)
  {
    a2 = v18 + 1;
    if ((v18 + 1) > a3)
    {
      break;
    }

    *v18 = v13;
    v19 = v17[1];
    ++v17;
    v13 = v19;
    ++v18;
    if ((v19 & 0xFFFFFFBFFFFFFFFFLL) != 0x2F)
    {
      goto LABEL_16;
    }
  }

LABEL_39:
  *__error() = 7;
  return 0xFFFFFFFFLL;
}

uint64_t __gl_g_Ctoc(__int32 *a1, char *a2, unint64_t a3, _xlocale *a4)
{
  v4 = *(*(a4 + 166) + 64);
  memset(&v11, 0, sizeof(v11));
  if (v4 > a3)
  {
    return 1;
  }

  v6 = a3;
  while (1)
  {
    v9 = wcrtomb_l(a2, *a1, &v11, a4);
    if (v9 == -1)
    {
      *a2 = *a1;
      memset(&v11, 0, sizeof(v11));
      v9 = 1;
    }

    if (!*a1)
    {
      break;
    }

    a1 += 2;
    a2 += v9;
    v6 -= v9;
    if (v6 < v4)
    {
      return 1;
    }
  }

  return 0;
}

void *__cdecl memmem(const void *__big, size_t __big_len, const void *__little, size_t __little_len)
{
  if (__little_len - 1 >= __big_len)
  {
    return 0;
  }

  v4 = __big;
  if (__little_len != 1)
  {
    v7 = __big + __big_len - __little_len;
    if (v7 >= __big)
    {
      v8 = *__little;
      while (*v4 != v8 || j__mkdtemp(v4))
      {
        if (++v4 > v7)
        {
          return 0;
        }
      }

      return v4;
    }

    return 0;
  }

  v5 = *__little;

  return j__mkdirx_np(__big, v5);
}

int vfprintf(FILE *a1, const char *a2, va_list a3)
{
  if (off_1EAC9EA90)
  {
    (off_1EAC9EA90)(a1, 152, a3);
  }

  flockfile(a1);
  _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v4 = __xvprintf(-1, 0, a1);
  funlockfile(a1);
  return v4;
}

DIR *g_opendir(__int32 *a1, uint64_t a2, locale_t a3)
{
  if (*a1)
  {
    if (__gl_g_Ctoc(a1, v6, 0x405uLL, a3))
    {
      v4 = __error();
      result = 0;
      *v4 = 63;
      return result;
    }
  }

  else
  {
    strcpy(v6, ".");
  }

  if ((*(a2 + 24) & 0x40) != 0)
  {
    return (*(a2 + 64))(v6);
  }

  else
  {
    return opendir(v6);
  }
}

size_t wcrtomb_l(char *a1, __int32 a2, mbstate_t *a3, locale_t a4)
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

  if (!a3)
  {
    a3 = (v5 + 784);
  }

  return (*(*(v5 + 166) + 96))(a1, *&a2, a3);
}

char *__stpcpy_chk(char *a1, const char *a2, unint64_t a3)
{
  v6 = stpcpy(a1, a2);
  v7 = v6 - a1 + 1;
  if (v7 > a3)
  {
    __chk_fail_overflow();
  }

  v8 = v6;
  if (__chk_assert_no_overlap)
  {
    __chk_overlap(a1, v7, a2, v7);
  }

  return v8;
}

uint64_t _none_wcrtomb(_BYTE *a1, unsigned int a2)
{
  if (a1)
  {
    if (a2 >= 0x100)
    {
      *__error() = 92;
      return -1;
    }

    *a1 = a2;
  }

  return 1;
}

uint64_t __gl_match(uint64_t *a1, uint64_t *a2, uint64_t *a3, _xlocale *a4)
{
  v7 = 0;
  v24 = 0;
  while (1)
  {
    if (a2 < a3)
    {
      v8 = a2;
      while (1)
      {
        v10 = *v8++;
        v9 = v10;
        v11 = v10 & 0xFFFFFFFFFFLL;
        if ((v10 & 0xFFFFFFFFFFLL) == 0x800000005BLL)
        {
          break;
        }

        if (v11 == 0x800000003FLL)
        {
          if (!*a1++)
          {
            goto LABEL_37;
          }
        }

        else if (v11 == 0x800000002ALL)
        {
          if (v8 == a3)
          {
            return 1;
          }

          if (!*a1)
          {
            return 0;
          }

          v7 = a1 + 1;
          v24 = a2;
        }

        else
        {
          v21 = *a1++;
          if (v21 != v9)
          {
            goto LABEL_37;
          }
        }

LABEL_35:
        a2 = v8;
        if (v8 >= a3)
        {
          goto LABEL_36;
        }
      }

      v14 = *a1++;
      v13 = v14;
      if (!v14)
      {
        goto LABEL_37;
      }

      v15 = a2[1] & 0xFFFFFFFFFFLL;
      v16 = v15 == 0x8000000021;
      v17 = 1;
      if (v15 == 0x8000000021)
      {
        v17 = 2;
        v18 = a2 + 2;
      }

      else
      {
        v18 = v8;
      }

      v8 = v18 + 1;
      v19 = a2[v17];
      if ((v19 & 0xFFFFFFFFFFLL) == 0x800000005DLL)
      {
        v20 = 0;
LABEL_34:
        if (v20 == v16)
        {
          goto LABEL_37;
        }

        goto LABEL_35;
      }

      v20 = 0;
      while (1)
      {
        if ((v18[1] & 0xFFFFFFFFFFLL) != 0x800000002DLL)
        {
          if (v19 == v13)
          {
            v20 = 1;
          }

          v19 = v18[1];
          v18 = v8;
          goto LABEL_33;
        }

        if (*(*(a4 + 165) + 64))
        {
          if (v13 < v19 || v13 > *(v18 + 4))
          {
            goto LABEL_32;
          }
        }

        else if (__collate_range_cmp(v19, v13, a4) > 0 || __collate_range_cmp(v13, *(v18 + 4), a4) > 0)
        {
          goto LABEL_32;
        }

        v20 = 1;
LABEL_32:
        v22 = v18[3];
        v18 += 3;
        v19 = v22;
LABEL_33:
        v8 = v18 + 1;
        if ((v19 & 0xFFFFFFFFFFLL) == 0x800000005DLL)
        {
          goto LABEL_34;
        }
      }
    }

LABEL_36:
    if (!*a1)
    {
      return 1;
    }

LABEL_37:
    a2 = v24;
    a1 = v7;
    if (!v7)
    {
      return 0;
    }
  }
}

unint64_t ___runetype(__darwin_ct_rune_t a1)
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

  return ___runetype_l(a1, v3);
}

uint64_t __gl_globextend(__int32 *a1, uint64_t a2, uint64_t a3, const char *a4, _xlocale *a5)
{
  if ((*(a2 + 25) & 0x10) != 0 && *(a3 + 8) < *(a2 + 8))
  {
    goto LABEL_17;
  }

  v10 = reallocarray_DARWIN_EXTSN();
  if (!v10)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = v10;
  if (!*(a2 + 32))
  {
    v12 = *(a2 + 16);
    if (v12)
    {
      MEMORY[0x193AD5FD0](v10, 8 * v12);
    }
  }

  *(a2 + 32) = v11;
  if (a4)
  {
    v15 = strdup(a4);
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_19:
    result = 0xFFFFFFFFLL;
    goto LABEL_20;
  }

  v20 = 0;
  do
  {
    v21 = *&a1[v20];
    v20 += 2;
  }

  while (v21);
  v22 = ((v20 * 4) >> 3) * *(*(a5 + 166) + 64);
  v23 = malloc_type_malloc(v22, 0xB1BF2B0DuLL);
  if (!v23)
  {
    goto LABEL_19;
  }

  v15 = v23;
  if (__gl_g_Ctoc(a1, v23, v22, a5))
  {
LABEL_16:
    free(v15);
LABEL_17:
    *__error() = 7;
    return 0xFFFFFFFFLL;
  }

LABEL_9:
  v16 = j__strsignal_r(v15, v13, v14) + *(a3 + 32) + 1;
  *(a3 + 32) = v16;
  if ((*(a2 + 25) & 0x10) != 0 && v16 >= 0x10000)
  {
    goto LABEL_16;
  }

  result = 0;
  v18 = *(a2 + 16);
  v19 = (*a2)++;
  *(v11 + 8 * v19 + 8 * v18) = v15;
LABEL_20:
  *(v11 + 8 * *a2 + 8 * *(a2 + 16)) = 0;
  return result;
}

int __maskrune(__darwin_ct_rune_t a1, unint64_t a2)
{
  v2 = a2;
  if (a1 < 0x100)
  {
    v4 = __locale_key;
    v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
    if (!v5)
    {
      v5 = &__global_locale;
    }

    v3 = *(*(v5[166] + 120) + 4 * a1 + 60);
  }

  else
  {
    v3 = ___runetype(a1);
  }

  return v3 & v2;
}

uint64_t globfinal(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, _xlocale *a5)
{
  v6 = *(a1 + 24);
  if (*a1 == a3)
  {
    if ((v6 & 0x10) != 0 || (*(a1 + 24) & 0x300) == 0x200)
    {

      return __gl_globextend(0, a1, a2, a4, a5);
    }

    else
    {
      return 4294967293;
    }
  }

  else
  {
    if ((v6 & 0x20) == 0)
    {
      qsort((*(a1 + 32) + 8 * *(a1 + 16) + 8 * a3), *a1 - a3, 8uLL, __gl_compare);
    }

    return 0;
  }
}

acl_t acl_copy_int_native(const void *buf_p)
{
  if (*buf_p == 19710317)
  {
    result = acl_init(*(buf_p + 9));
    if (result)
    {
      v3 = *(buf_p + 9);
      *(result + 3) = *(buf_p + 10);
      *(result + 1) = v3;
      if (v3)
      {
        v4 = 0;
        v5 = (buf_p + 64);
        v6 = result + 24;
        do
        {
          *(v6 - 2) = -1407532799;
          *v6 = *(v5 - 5);
          v7 = *(v5 - 1);
          *(v6 - 1) = v7 & 0xF;
          v8 = *v5;
          v5 += 6;
          *(v6 + 4) = v7 & 0xFFFFFFF0;
          *(v6 + 5) = v8;
          ++v4;
          v6 += 32;
        }

        while (v4 < v3);
      }
    }
  }

  else
  {
    v9 = __error();
    result = 0;
    *v9 = 22;
  }

  return result;
}

unint64_t ___runetype_l(__darwin_ct_rune_t a1, locale_t a2)
{
  if (a1 < 0)
  {
    return 0;
  }

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
  v5 = *(v4 + 3136);
  if (!v5)
  {
    return 0;
  }

  v6 = *(v4 + 3144);
  while (1)
  {
    v7 = v6 + 24 * (v5 >> 1);
    v8 = *(v7 + 4);
    if (a1 >= *v7 && v8 >= a1)
    {
      break;
    }

    v10 = v8 < a1;
    v11 = v7 + 24;
    if (v8 < a1)
    {
      v6 = v11;
    }

    v12 = v5 - v10;
    v5 = (v5 - v10) >> 1;
    if (v12 <= 1)
    {
      return 0;
    }
  }

  v14 = *(v7 + 16);
  if (v14)
  {
    return *(v14 + 4 * (a1 - *v7));
  }

  else
  {
    return *(v7 + 8);
  }
}

acl_t acl_init(int count)
{
  if (count < 0)
  {
    v1 = __error();
    v2 = 0;
    v3 = 22;
    goto LABEL_5;
  }

  if (count >= 0x81)
  {
    v1 = __error();
    v2 = 0;
    v3 = 12;
LABEL_5:
    *v1 = v3;
    return v2;
  }

  v4 = malloc_type_malloc(0x1010uLL, 0x1000040A06A8C30uLL);
  v2 = v4;
  if (v4)
  {
    MEMORY[0x193AD5FD0](v4 + 4, 4108);
    *v2 = -1407532798;
    *(v2 + 2) = -1;
  }

  return v2;
}

int strcoll_l(const char *a1, const char *a2, locale_t a3)
{
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
    v6 = &__c_locale;
  }

  if (*(*(v6 + 165) + 64))
  {
    v7 = 0;
  }

  else
  {
    v7 = __collate_mbstowcs(a1, v6);
    if (v7)
    {
      v12 = __collate_mbstowcs(a2, v6);
      if (v12)
      {
        v13 = v12;
        v14 = wcscoll_l(v7, v12, v6);
        v15 = *__error();
        free(v7);
        free(v13);
        *__error() = v15;
        return v14;
      }
    }
  }

  v8 = *__error();
  free(v7);
  *__error() = v8;

  return j__strncasecmp_l(a1, a2, v9, v10);
}

int filesec_set_property(filesec_t a1, filesec_property_t a2, const void *a3)
{
  v5 = 22;
  if (a2 <= FILESEC_MODE)
  {
    if (a2 > FILESEC_GROUP)
    {
      if (a2 == FILESEC_UUID)
      {
        if (a3)
        {
          uuid_copy(a1 + 12, a3);
          result = 0;
          v7 = *a1 | 4;
        }

        else
        {
          result = 0;
          v7 = *a1 & 0xFFFFFFFB;
        }
      }

      else
      {
        result = 0;
        if (a3)
        {
          *(a1 + 22) = *a3;
          v7 = *a1 | 0x10;
        }

        else
        {
          v7 = *a1 & 0xFFFFFFEF;
        }
      }

      goto LABEL_36;
    }

    if (a2 == FILESEC_OWNER)
    {
      result = 0;
      if (a3)
      {
        v8 = *a3;
        *a1 |= 1u;
        *(a1 + 1) = v8;
        return result;
      }

      v7 = *a1 & 0xFFFFFFFE;
      goto LABEL_36;
    }

    if (a2 == FILESEC_GROUP)
    {
      result = 0;
      if (a3)
      {
        *(a1 + 2) = *a3;
        v7 = *a1 | 2;
      }

      else
      {
        v7 = *a1 & 0xFFFFFFFD;
      }

      goto LABEL_36;
    }

    goto LABEL_44;
  }

  if (a2 > 99)
  {
    if (a2 != FILESEC_ACL_RAW)
    {
      if (a2 == FILESEC_ACL_ALLOCSIZE && a3)
      {
        result = 0;
        *(a1 + 6) = *a3;
        return result;
      }

      goto LABEL_44;
    }

    filesec_discard_aclbuf(a1);
    if (!a3 || !*a3)
    {
      return 0;
    }

    result = 0;
    *(a1 + 7) = *a3;
LABEL_35:
    v7 = *a1 | 0x20;
    goto LABEL_36;
  }

  if (a2 != FILESEC_ACL)
  {
    if (a2 == FILESEC_GRPUUID)
    {
      if (a3)
      {
        uuid_copy(a1 + 28, a3);
        result = 0;
        v7 = *a1 | 8;
      }

      else
      {
        result = 0;
        v7 = *a1 & 0xFFFFFFF7;
      }

      goto LABEL_36;
    }

    goto LABEL_44;
  }

  if (a3 == 1)
  {
    filesec_discard_aclbuf(a1);
    result = 0;
    *(a1 + 6) = 0;
    *(a1 + 7) = 1;
    goto LABEL_35;
  }

  if (!a3)
  {
    filesec_discard_aclbuf(a1);
    result = 0;
    v7 = *a1 & 0xFFFFFFDF;
LABEL_36:
    *a1 = v7;
    return result;
  }

  v9 = *a3;
  v10 = acl_size(*a3);
  if (v10 < 0 || (v11 = v10, (v12 = malloc_type_malloc(v10, 0xA7FA4157uLL)) == 0))
  {
    v5 = *__error();
    if (v5)
    {
      goto LABEL_44;
    }

    return 0;
  }

  v13 = v12;
  if ((acl_copy_ext_native(v12, v9, v11) & 0x8000000000000000) == 0)
  {
    filesec_discard_aclbuf(a1);
    result = 0;
    *(a1 + 6) = v11;
    *(a1 + 7) = v13;
    goto LABEL_35;
  }

  free(v13);
  v5 = 22;
LABEL_44:
  *__error() = v5;
  return -1;
}

int strcoll(const char *__s1, const char *__s2)
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

  return strcoll_l(__s1, __s2, v4);
}

ssize_t acl_size(acl_t acl)
{
  if (acl == 1)
  {
    return 44;
  }

  if ((acl > 16 || acl <= -17) && *acl == -1407532798)
  {
    return 24 * *(acl + 1) + 44;
  }

  *__error() = 22;
  return -1;
}

ssize_t acl_copy_ext_native(void *buf_p, acl_t acl, ssize_t size)
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
  *buf_p = 19710317;
  if (acl == 1)
  {
    *(buf_p + 9) = -1;
  }

  else
  {
    v9 = *(acl + 1);
    v10 = *(acl + 3);
    *(buf_p + 9) = v9;
    *(buf_p + 10) = v10;
    if (v9)
    {
      v11 = 0;
      v12 = (acl + 44);
      v13 = buf_p + 64;
      do
      {
        *(v13 - 5) = *(v12 - 5);
        v14 = *(v12 - 1) & 0xFFFFFFF0 | *(v12 - 6) & 0xF;
        v15 = *v12;
        v12 += 8;
        *(v13 - 1) = v14;
        *v13 = v15;
        ++v11;
        v13 += 6;
      }

      while (v11 < *(acl + 1));
    }
  }

  return v7;
}

void globfree(glob_t *a1)
{
  gl_pathv = a1->gl_pathv;
  if (gl_pathv)
  {
    gl_pathc = a1->gl_pathc;
    if (a1->gl_pathc)
    {
      v4 = &gl_pathv[a1->gl_offs];
      do
      {
        if (*v4)
        {
          free(*v4);
        }

        ++v4;
        --gl_pathc;
      }

      while (gl_pathc);
      gl_pathv = a1->gl_pathv;
    }

    free(gl_pathv);
    a1->gl_pathv = 0;
  }
}

void filesec_discard_aclbuf(unsigned int *a1)
{
  v1 = *a1;
  if ((*a1 & 0x20) != 0)
  {
    v3 = *(a1 + 7);
    if (v3 != 1)
    {
      free(v3);
      v1 = *a1;
    }

    *(a1 + 6) = 0;
    *(a1 + 7) = 0;
    *a1 = v1 & 0xFFFFFFDF;
  }
}

void destruct_locale(void *a1)
{
  for (i = 165; i != 171; ++i)
  {
    v3 = a1[i];
    if (v3)
    {
      if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
      {
        v4 = *(v3 + 8);
        if (v4)
        {
          v4();
        }
      }
    }
  }

  v5 = a1[171];
  if (v5)
  {
    if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
    {
      v6 = *(v5 + 8);
      if (v6)
      {
        v6();
      }
    }
  }

  free(a1);
}

int acl_free(void *obj_p)
{
  if (obj_p != 1)
  {
    free(obj_p);
  }

  return 0;
}

filesec_t filesec_dup(filesec_t a1)
{
  v2 = malloc_type_malloc(0x40uLL, 0x108004043B192EBuLL);
  v3 = v2;
  if (v2)
  {
    v4 = *a1;
    v5 = *(a1 + 1);
    v6 = *(a1 + 3);
    v2[2] = *(a1 + 2);
    v2[3] = v6;
    *v2 = v4;
    v2[1] = v5;
    if ((*a1 & 0x20) != 0 && *(a1 + 7) != 1)
    {
      v7 = malloc_type_malloc(*(a1 + 6), 0xCE15DC4DuLL);
      v3[7] = v7;
      if (v7)
      {
        j__mkostemp(v7, *(a1 + 7));
      }

      else
      {
        free(v3);
        return 0;
      }
    }
  }

  return v3;
}

int freelocale(locale_t a1)
{
  if (a1 == -1)
  {
    v1 = 0;
  }

  else
  {
    if (!a1)
    {
LABEL_20:
      *__error() = 22;
      return -1;
    }

    v1 = *(a1 + 163) != 0x786C6F63616C6530;
  }

  if (a1 == __c_locale || (a1 + 1) == 0 || a1 == &__global_locale || v1)
  {
    goto LABEL_20;
  }

  if (atomic_fetch_add(a1, 0xFFFFFFFF) == 1)
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      v5();
    }
  }

  return 0;
}

void filesec_free(filesec_t a1)
{
  filesec_discard_aclbuf(a1);

  free(a1);
}

time_t timegm(tm *const a1)
{
  if (a1)
  {
    a1->tm_isdst = 0;
  }

  return _st_time1(a1, gmtsub, 0, 1);
}

FILE *__cdecl fdopen(int a1, const char *a2)
{
  if (off_1EAC9EA80)
  {
    (off_1EAC9EA80)(a2);
  }

  v11 = 0;
  if (a1 >= 0x8000)
  {
    v4 = __error();
    result = 0;
    v6 = 24;
LABEL_5:
    *v4 = v6;
    return result;
  }

  v7 = __sflags(a2, &v11);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = fcntl_NOCANCEL();
  if (v9 < 0)
  {
    return 0;
  }

  v10 = v9;
  if ((v9 & 3) != 2 && (v9 & 3) != (v11 & 3))
  {
    v4 = __error();
    result = 0;
    v6 = 22;
    goto LABEL_5;
  }

  result = __sfp(1);
  if (result)
  {
    result->_flags = v8;
    if ((v10 & 8) == 0 && (v11 & 8) != 0)
    {
      result->_flags = v8 | 0x100;
    }

    result->_file = a1;
    result->_read = __sread;
    result->_write = __swrite;
    result->_seek = __sseek;
    result->_cookie = result;
    result->_close = __sclose;
  }

  return result;
}

char **__cdecl backtrace_symbols(void *const *a1, int a2)
{
  v4 = a2;
  v5 = malloc_type_calloc(a2, 0x20uLL, 0xD004058BC3203uLL);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 8 * v4;
  if (a2 < 1)
  {
    v20 = malloc_type_malloc(v7, 0x10040436913F5uLL);
    if (!v20)
    {
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v8 = a2;
  v9 = a2;
  v10 = a1;
  v27 = v5;
  v11 = v7;
  do
  {
    dladdr(*v10, v6);
    dli_sname = v6->dli_sname;
    if (dli_sname)
    {
      if (!j__strncasecmp_l(v6->dli_sname, "<redacted>", v12, v13))
      {
        v17 = 36;
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    dli_sname = v6->dli_fname;
    if (v6->dli_fname)
    {
      v18 = strrchr(v6->dli_fname, 47);
      if (v18)
      {
        LODWORD(dli_sname) = v18 + 1;
      }

LABEL_10:
      v17 = j__strsignal_r(dli_sname, v15, v16);
      goto LABEL_11;
    }

    v17 = 18;
LABEL_11:
    v11 += 83 + v17;
    ++v6;
    ++v10;
    --v9;
  }

  while (v9);
  v19 = malloc_type_malloc(v11, 0x10040436913F5uLL);
  v20 = v19;
  if (v19)
  {
    v21 = 0;
    v22 = v19 + v11;
    v23 = &v19[v7 / 8];
    v6 = v27;
    v24 = v27;
    while (1)
    {
      v25 = _backtrace_snprintf(v23, v22 - v23, v21, a1[v21], v24);
      if (v25 < 0)
      {
        break;
      }

      v20[v21] = v23;
      v23 += (v25 + 1);
      ++v21;
      v24 += 32;
      if (v8 == v21)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    v6 = v27;
  }

LABEL_23:
  free(v6);
  v6 = v20;
  v20 = 0;
LABEL_24:
  free(v6);
  return v20;
}

uint64_t _backtrace_snprintf(char *a1, size_t a2, size_t a3, _xlocale *a4, uint64_t a5)
{
  v7 = a3;
  memset(out, 0, 37);
  v10 = *a5;
  if (*a5)
  {
    v11 = strrchr(*a5, 47);
    if (v11)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = v10;
    }

    v13 = v19;
    MEMORY[0x193AD6A30](v19, v12, 36);
  }

  else
  {
    v13 = "???";
  }

  v14 = *(a5 + 16);
  if (v14)
  {
    *uu = 0;
    v21 = 0;
    if (!j__strncasecmp_l(v14, "<redacted>", a3, a4))
    {
      v15 = (a5 + 8);
      if (_dyld_get_image_uuid())
      {
        v14 = out;
        uuid_unparse(uu, out);
LABEL_17:
        v16 = (a4 - *v15);
        return snprintf(a1, a2, "%-4d%-35s 0x%016lx %s + %lu", v7, v13, a4, v14, v16);
      }

      v14 = *(a5 + 16);
    }

    v15 = (a5 + 24);
    goto LABEL_17;
  }

  if (*a5)
  {
    v16 = (a4 - *(a5 + 8));
    v14 = v13;
  }

  else if (snprintf(uu, 0x13uLL, "0x%lx", *(a5 + 24)) < 1)
  {
    v14 = "0x0";
    v16 = a4;
  }

  else
  {
    v16 = (a4 - *(a5 + 24));
    v14 = uu;
  }

  return snprintf(a1, a2, "%-4d%-35s 0x%016lx %s + %lu", v7, v13, a4, v14, v16);
}

double difftime(time_t a1, time_t a2)
{
  result = -(a2 - a1);
  if (a1 >= 0)
  {
    result = (a1 - a2);
  }

  if ((a2 ^ a1) >= 0)
  {
    return (a1 - a2);
  }

  return result;
}

void exit(int a1)
{
  _tlv_exit();
  __cxa_finalize(0);
  if (__cleanup)
  {
    _cleanup();
  }

  __exit();
}

uint64_t __cxa_finalize_ranges(uint64_t a1, unsigned int a2)
{
  pthread_mutex_lock(&atexit_mutex);
  v4 = __atexit;
  if (!__atexit)
  {
    goto LABEL_36;
  }

LABEL_2:
  while (2)
  {
    v5 = *(v4 + 8);
    if (v5 >= 1)
    {
      do
      {
        v6 = v4 + 16 + 32 * (v5 - 1);
        v7 = *v6;
        if (!*v6)
        {
          continue;
        }

        if (a2)
        {
          switch(v7)
          {
            case 1:
              v20 = *(v6 + 8);
              v21 = 1;
              v22 = (a1 + 8);
              v23 = a2;
              v12 = 1;
              do
              {
                v24 = *(v22 - 1);
                if (v20 >= v24 && v20 < *v22 + v24)
                {
                  break;
                }

                v12 = v21++ < a2;
                v22 += 2;
                --v23;
              }

              while (v23);
LABEL_23:
              if (!v12)
              {
                continue;
              }

              break;
            case 3:
              v14 = *(*(v6 + 8) + 16);
              v15 = 1;
              v16 = (a1 + 8);
              v17 = a2;
              v18 = 1;
              do
              {
                v19 = *(v16 - 1);
                if (v14 >= v19 && v14 < *v16 + v19)
                {
                  break;
                }

                v18 = v15++ < a2;
                v16 += 2;
                --v17;
              }

              while (v17);
              if (!v18)
              {
                continue;
              }

              break;
            case 2:
              v8 = *(v6 + 24);
              v9 = 1;
              v10 = (a1 + 8);
              v11 = a2;
              v12 = 1;
              do
              {
                v13 = *(v10 - 1);
                if (v8 >= v13 && v8 < *v10 + v13)
                {
                  break;
                }

                v12 = v9++ < a2;
                v10 += 2;
                --v11;
              }

              while (v11);
              goto LABEL_23;
          }
        }

        *v6 = 0;
        __atexit_new_registration = 0;
        v25 = pthread_mutex_unlock(&atexit_mutex);
        switch(v7)
        {
          case 1:
            (*(v6 + 8))(v25);
            break;
          case 3:
            (*(*(v6 + 8) + 16))();
            break;
          case 2:
            (*(v6 + 8))(*(v6 + 16));
            break;
        }

        pthread_mutex_lock(&atexit_mutex);
        if (__atexit_new_registration)
        {
          v4 = __atexit;
          if (!__atexit)
          {
            goto LABEL_36;
          }

          goto LABEL_2;
        }
      }

      while (v5-- > 1);
    }

    v4 = *v4;
    if (v4)
    {
      continue;
    }

    break;
  }

LABEL_36:

  return pthread_mutex_unlock(&atexit_mutex);
}

int __cxa_finalize(void *a1)
{
  if (a1)
  {
    v3[0] = a1;
    v3[1] = 1;
    return __cxa_finalize_ranges(v3, 1u);
  }

  else
  {

    return __cxa_finalize_ranges(0, 0);
  }
}

uint64_t _fwalk(unsigned int (*a1)(uint64_t))
{
  v2 = 0;
  v3 = &__sglue;
  do
  {
    v4 = *(v3 + 2);
    if (v4 >= 1)
    {
      v5 = v3[2];
      v6 = v4 + 1;
      do
      {
        if (*(v5 + 16) >= 1)
        {
          v2 = a1(v5) | v2;
        }

        v5 += 152;
        --v6;
      }

      while (v6 > 1);
    }

    v3 = *v3;
  }

  while (v3);
  return v2;
}

void *__cdecl rb_tree_find_node_leq(rb_tree_t *a1, const void *a2)
{
  v2 = a1->opaque[0];
  if (!a1->opaque[0])
  {
    return 0;
  }

  v4 = 0;
  v5 = a1->opaque[1];
  v6 = v5[1];
  while (1)
  {
    v7 = v2 - v5[2];
    v8 = v6(v5[3], v7, a2);
    if (!v8)
    {
      break;
    }

    if (v8 < 0)
    {
      v4 = v2;
    }

    v2 = v2[v8 >> 31];
    if (!v2)
    {
      if (!v4)
      {
        return 0;
      }

      return v4 - v5[2];
    }
  }

  return v7;
}

int scandir(const char *a1, dirent ***a2, int (__cdecl *a3)(const dirent *), int (__cdecl *a4)(const dirent **, const dirent **))
{
  v7 = opendir(a1);
  if (!v7)
  {
    goto LABEL_20;
  }

  v8 = v7;
  v9 = malloc_type_malloc(0x100uLL, 0x2004093837F09uLL);
  if (!v9)
  {
LABEL_19:
    free(v9);
    closedir(v8);
LABEL_20:
    LODWORD(v10) = -1;
    return v10;
  }

  v10 = 0;
  v11 = -1;
  v12 = 32;
  while (1)
  {
    v13 = readdir(v8);
    if (!v13)
    {
      break;
    }

    v14 = v13;
    if (!a3 || (a3)(v13))
    {
      v15 = malloc_type_malloc(((v14->d_namlen + 4) & 0x1FFFC) + 24, 0x1000040D92F83E5uLL);
      if (!v15)
      {
        goto LABEL_17;
      }

      v16 = v15;
      *v15 = v14->d_ino;
      v15[20] = v14->d_type;
      *(v15 + 8) = v14->d_reclen;
      *(v15 + 9) = v14->d_namlen;
      j__mkostemp(v15 + 21, v14 + 21);
      if (v10 >= v12)
      {
        v17 = malloc_type_realloc(v9, 16 * v12, 0x2004093837F09uLL);
        if (!v17)
        {
          free(v16);
LABEL_17:
          if (v10)
          {
            do
            {
              free(*(v9 + v11--));
            }

            while (v11 != -1);
          }

          goto LABEL_19;
        }

        v12 *= 2;
        v9 = v17;
      }

      *(v9 + v10++) = v16;
      ++v11;
    }
  }

  closedir(v8);
  if (a4 && v10)
  {
    qsort(v9, v10, 8uLL, a4);
  }

  *a2 = v9;
  return v10;
}

unint64_t __strcat_chk(unint64_t a1, char *a2, size_t a3)
{
  v6 = j__strsignal_r(a1, a2, a3);
  v9 = j__strsignal_r(a2, v7, v8) + 1;
  if (v9 + v6 > a3)
  {
    __chk_fail_overflow();
  }

  if (__chk_assert_no_overlap)
  {
    __chk_overlap(a1, v9 + v6, a2, v9);
  }

  j__mkdtempat_np(a1 + v6, a2);
  return a1;
}

int printf(const char *a1, ...)
{
  va_start(va, a1);
  v2 = __stdoutp;
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

  return vfprintf_l(v2, v5, a1, va);
}

int gethostname(char *a1, size_t a2)
{
  v6 = a2;
  *v8 = 0xA00000001;
  if (a2 > 0x100)
  {
    if (sysctl(v8, 2u, a1, &v6, 0, 0) != -1)
    {
      return 0;
    }
  }

  else
  {
    v5 = 257;
    if (sysctl(v8, 2u, v7, &v5, 0, 0) != -1)
    {
      j__strtod(a1, v7);
      result = 0;
      a1[a2 - 1] = 0;
      return result;
    }
  }

  if (*__error() == 12)
  {
    *__error() = 63;
  }

  return -1;
}

uint64_t tre_match(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, uint64_t *a6, unsigned int a7)
{
  v7 = a7;
  v9 = a5;
  v11 = a3;
  if (a6)
  {
    v14 = (a7 >> 2) & 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 == 1)
  {
    v15 = *a6;
    if (*a6 < 0)
    {
      return 16;
    }

    if (a3 == -1)
    {
      v16 = a6[1];
      v11 = v16 - v15;
      if (v16 < v15)
      {
        return 16;
      }
    }

    v28 = 1;
    if (a4)
    {
      v18 = *a6;
    }

    else
    {
      v18 = 4 * v15;
    }
  }

  else
  {
    v28 = v14;
    v18 = 0;
    v15 = 0;
  }

  v19 = 0;
  if (a5)
  {
    v20 = *(a1 + 80);
    if (v20 >= 1)
    {
      v19 = malloc_type_malloc(16 * v20, 0x1000040451B5BE8uLL);
      if (!v19)
      {
        return 12;
      }
    }
  }

  v29 = 0;
  v21 = (a2 + v18);
  if (*(a1 + 100) | v7 & 0x400)
  {
    v22 = tre_tnfa_run_backtrack(a1, v21, v11, a4, v19, v7, &v29);
  }

  else
  {
    v22 = tre_tnfa_run_parallel(a1, v21, v11, a4, v19, v7, &v29);
  }

  v17 = v22;
  if (!v22)
  {
    v17 = tre_fill_pmatch(v9, a6, *(a1 + 96), a1, v19, v29);
    if (!v17)
    {
      v23 = (*(a1 + 96) & 4) != 0 || v9 == 0;
      v24 = v28;
      if (v23)
      {
        v24 = 0;
      }

      if (v24 == 1)
      {
        v25 = a6 + 1;
        do
        {
          v26 = *(v25 - 1);
          if ((v26 & 0x8000000000000000) == 0)
          {
            *(v25 - 1) = v26 + v15;
          }

          if ((*v25 & 0x8000000000000000) == 0)
          {
            *v25 += v15;
          }

          v25 += 2;
          --v9;
        }

        while (v9);
      }

      v17 = 0;
    }
  }

  if (v19)
  {
    free(v19);
  }

  return v17;
}

int regnexec(const regex_t *a1, const char *a2, size_t a3, size_t a4, regmatch_t __pmatch[], int a6)
{
  if (a1->re_magic != 62053)
  {
    return 2;
  }

  re_g = a1->re_g;
  if (*(*(*(re_g + 7) + 1328) + 64) == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  return tre_match(re_g, a2, a3, v10, a4, &__pmatch->rm_so, a6);
}

uint64_t tre_tnfa_run_parallel(locale_t *a1, const char *a2, int a3, int a4, int *a5, char a6, unsigned int *a7)
{
  v286 = 0;
  v282 = *(a1 + 24);
  memset(&v287, 0, sizeof(v287));
  if (a5)
  {
    v11 = *(a1 + 20);
  }

  else
  {
    v11 = 0;
  }

  v12 = 16 * v11;
  v13 = *(a1 + 23);
  v14 = 16 * v13;
  v15 = 16 * v13 + 16;
  v278 = v13;
  v16 = malloc_type_malloc(16 * v13 + v12 + 2 * (v15 + v12 * v13) + 28, 0x23F1FE49uLL);
  if (!v16)
  {
    return 12;
  }

  v17 = v16;
  v253 = a4;
  v247 = a7;
  v18 = v11;
  v281 = 4 * v11;
  v19 = &v16[v12];
  if ((&v16[v12] & 7) != 0)
  {
    v20 = 8 - (&v16[v12] & 7);
  }

  else
  {
    v20 = 0;
  }

  v263 = &v19[v20];
  v21 = &v19[v20 + v15];
  v22 = 8 - (v21 & 7);
  if ((v21 & 7) == 0)
  {
    v22 = 0;
  }

  v276 = v22;
  v23 = (v21 + v22);
  v24 = v21 + v22 + v15;
  if ((v24 & 7) != 0)
  {
    v25 = 8 - (v24 & 7);
  }

  else
  {
    v25 = 0;
  }

  MEMORY[0x193AD5FD0]();
  v280 = v24 + v25;
  v275 = a1;
  v26 = *(a1 + 23);
  v27 = v17;
  if (v26 >= 1)
  {
    if (((v280 + v14) & 7) != 0)
    {
      v28 = 8 - ((v280 + v14) & 7);
    }

    else
    {
      v28 = 0;
    }

    v29 = &v17[v281 + 6] + v276 + v14;
    v30 = &v17[v281 + 2];
    v31 = v28 + v25 + v276 + 48 * v278;
    v32 = &v17[v281 + 8] + v31;
    v33 = 32 * v18;
    v34 = &v17[8 * v18 + 8] + v31;
    v35 = *(a1 + 23);
    do
    {
      *(v29 + v20) = v32 + v20;
      *(v30 + v20) = v34 + v20;
      v29 += 16;
      v30 += 16;
      v32 += v33;
      v34 += v33;
      --v35;
    }

    while (v35);
    v36 = (v26 + 3) & 0xFFFFFFFC;
    v37 = vdupq_n_s64(v26 - 1);
    v38 = &v17[8 * v278 + 12] + v25 + v276 + v20 + v281 * 4;
    v39 = xmmword_18E98AD10;
    v40 = xmmword_18E98AD20;
    v41 = vdupq_n_s64(4uLL);
    do
    {
      v42 = vmovn_s64(vcgeq_u64(v37, v40));
      if (vuzp1_s16(v42, *v37.i8).u8[0])
      {
        *(v38 - 4) = -1;
      }

      if (vuzp1_s16(v42, *&v37).i8[2])
      {
        *v38 = -1;
      }

      if (vuzp1_s16(*&v37, vmovn_s64(vcgeq_u64(v37, *&v39))).i32[1])
      {
        *(v38 + 4) = -1;
        *(v38 + 8) = -1;
      }

      v39 = vaddq_s64(v39, v41);
      v40 = vaddq_s64(v40, v41);
      v38 += 64;
      v36 -= 4;
    }

    while (v36);
  }

  v43 = v253;
  v44 = a3;
  if (a2)
  {
    v45 = *(v275 + 17);
    if ((v45 & 0x80000000) == 0)
    {
      if (v253 != 2)
      {
        if (v253 != 1)
        {
          v51 = 0;
          v49 = a2;
          goto LABEL_54;
        }

        if (a3 < 0)
        {
          j__strmode(a2, v45);
        }

        else
        {
          v46 = j__mkdirx_np(a2, v45);
        }

        v49 = v46;
        if (v46)
        {
LABEL_51:
          if (v49 >= a2 + 1)
          {
            v51 = *(v49 - 1);
          }

          else
          {
            v51 = 0;
          }

LABEL_54:
          v286 = *v49;
          v53 = v49 - a2;
          if (a3 < 0 || v53 < a3)
          {
            ++v49;
          }

          v250 = v49;
          goto LABEL_86;
        }

        goto LABEL_70;
      }

      if (v45 <= 0x7F)
      {
        if (a3 < 0)
        {
          v55 = *a2;
          if (*a2)
          {
            v49 = a2;
            while (v45 != v55)
            {
              if (v55 < 0)
              {
                goto LABEL_71;
              }

              v56 = *++v49;
              v55 = v56;
              if (!v56)
              {
                goto LABEL_70;
              }
            }

            goto LABEL_51;
          }
        }

        else if (a3)
        {
          v48 = a3;
          v49 = a2;
          do
          {
            v50 = *v49;
            if (v45 == v50)
            {
              goto LABEL_51;
            }

            if ((v50 & 0x80) != 0)
            {
              goto LABEL_71;
            }

            ++v49;
          }

          while (--v48);
        }

LABEL_70:
        free(v17);
        return 1;
      }

      if (a3 < 0)
      {
        v57 = *a2;
        if (!*a2)
        {
          goto LABEL_70;
        }

        v49 = a2;
        while ((v57 & 0x80) == 0)
        {
          v58 = *++v49;
          v57 = v58;
          if (!v58)
          {
            goto LABEL_70;
          }
        }
      }

      else
      {
        if (!a3)
        {
          goto LABEL_70;
        }

        v52 = a3;
        v49 = a2;
        while ((*v49 & 0x80000000) == 0)
        {
          ++v49;
          if (!--v52)
          {
            goto LABEL_70;
          }
        }
      }

LABEL_71:
      if (v49 != a2)
      {
        v51 = *(v49 - 1);
        v286 = v51;
        v53 = v49 - a2;
        if ((a3 & 0x80000000) == 0 && a3 <= v53)
        {
          v250 = v49;
          v286 = 0;
          goto LABEL_86;
        }

        v59 = *v49;
        if ((v59 & 0x80000000) == 0)
        {
          v250 = (v49 + 1);
LABEL_85:
          v286 = v59;
LABEL_86:
          v248 = a2;
          LODWORD(v249) = 1;
          goto LABEL_93;
        }

        v245 = a3 - v53;
        if (a3 < 0)
        {
          v245 = 32;
        }

        v251 = v49;
        v244 = mbrtowc_l(&v286, v49, v245, &v287, v275[7]);
        if (v244 > 0xFFFFFFFFFFFFFFFDLL)
        {
          return 17;
        }

        if ((a3 & 0x80000000) == 0 && !v244)
        {
          v286 = 0;
          LODWORD(v249) = 1;
          v250 = v251 + 1;
          v248 = a2;
          goto LABEL_609;
        }

        v250 = &v251[v244];
        v248 = a2;
        goto LABEL_608;
      }
    }
  }

  v51 = v286;
  if (!v253)
  {
    if (a3)
    {
      v53 = 0;
      v286 = *a2;
      v248 = (a2 + 4);
      LODWORD(v249) = 1;
LABEL_92:
      v250 = a2;
      goto LABEL_93;
    }

    goto LABEL_90;
  }

  if (v253 != 2)
  {
    if (v253 != 1)
    {
      v53 = 0;
LABEL_91:
      v248 = a2;
      LODWORD(v249) = 1;
      goto LABEL_92;
    }

    if (a3)
    {
      v53 = 0;
      v60 = (a2 + 1);
      v59 = *a2;
LABEL_84:
      v250 = v60;
      goto LABEL_85;
    }

LABEL_90:
    v53 = 0;
    v286 = 0;
    goto LABEL_91;
  }

  if (!a3)
  {
    goto LABEL_90;
  }

  v59 = *a2;
  if ((v59 & 0x80000000) == 0)
  {
    v53 = 0;
    v60 = (a2 + 1);
    goto LABEL_84;
  }

  if (a3 < 0)
  {
    v243 = 32;
  }

  else
  {
    v243 = a3;
  }

  v244 = mbrtowc_l(&v286, a2, v243, &v287, v275[7]);
  if (v244 > 0xFFFFFFFFFFFFFFFDLL)
  {
    return 17;
  }

  if (a3 < 0 || v244)
  {
    v53 = 0;
    v250 = &a2[v244];
    v248 = a2;
LABEL_608:
    LODWORD(v249) = v244;
    goto LABEL_609;
  }

  v53 = 0;
  v286 = 0;
  LODWORD(v249) = 1;
  v250 = (a2 + 1);
  v248 = a2;
LABEL_609:
  v43 = v253;
  v44 = a3;
LABEL_93:
  v273 = a6 & 2;
  v61 = 1;
  v279 = -1;
  v274 = (v282 >> 3) & 1;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v62 = v263;
  v277 = v263;
  v246 = v27;
LABEL_94:
  v262 = v23;
  v264 = v62;
  if ((v279 & 0x80000000) == 0)
  {
    v63 = v275;
    if (v18 && v277 != v62)
    {
      if (v44 < 0)
      {
        goto LABEL_250;
      }

LABEL_98:
      if (v53 < v44)
      {
        v51 = v286;
        goto LABEL_251;
      }
    }

LABEL_599:
    *v247 = v279;
    free(v246);
    return v279 >> 31;
  }

  v64 = v275[1];
  if (!*(v64 + 1))
  {
    goto LABEL_249;
  }

  v66 = (a6 & 1) == 0 && v53 < 1;
  v67 = v274;
  if (v51 != 10)
  {
    v67 = 0;
  }

  v68 = v51;
  v69 = v66 | v67;
  do
  {
    v70 = (v64 + 40);
    while (*(v280 + 16 * *(v70 - 6)) < v53)
    {
      v71 = *v70;
      if (!*v70)
      {
        goto LABEL_236;
      }

      if (!(((*v70 & 1) == 0) | v69 & 1))
      {
        goto LABEL_226;
      }

      if ((v71 & 2) != 0)
      {
        v75 = v274;
        if (v286 != 10)
        {
          v75 = 0;
        }

        if (v286 | v273 && !v75)
        {
          goto LABEL_226;
        }
      }

      if ((v71 & 8) == 0)
      {
        goto LABEL_116;
      }

      if (v51 == 95)
      {
        goto LABEL_226;
      }

      if (v51 > 0x7F)
      {
        v78 = v275[7];
        if (v51 >= 0x100)
        {
          LOWORD(v79) = ___runetype_l(v51, v78);
          goto LABEL_145;
        }

        v83 = &__global_locale;
        if (v78 != -1)
        {
          v83 = v275[7];
        }

        if (!v78)
        {
          v83 = &__c_locale;
        }

        v76 = *(v83[166] + 120);
      }

      else
      {
        v76 = &_DefaultRuneLocale;
      }

      v79 = v76->__runetype[v68];
LABEL_145:
      if ((v79 & 0x500) != 0)
      {
        goto LABEL_226;
      }

      if (v286 != 95)
      {
        if (v286 <= 0x7F)
        {
          v84 = &_DefaultRuneLocale;
          goto LABEL_233;
        }

        v92 = v275[7];
        if (v286 < 0x100)
        {
          v112 = &__global_locale;
          if (v92 != -1)
          {
            v112 = v275[7];
          }

          if (!v92)
          {
            v112 = &__c_locale;
          }

          v84 = *(v112[166] + 120);
LABEL_233:
          v93 = v84->__runetype[v286];
        }

        else
        {
          LOWORD(v93) = ___runetype_l(v286, v92);
        }

        if ((v93 & 0x500) == 0)
        {
          goto LABEL_226;
        }
      }

LABEL_116:
      v72 = *v70;
      if ((*v70 & 0x10) == 0)
      {
        if ((v72 & 0x20) == 0)
        {
          goto LABEL_196;
        }

LABEL_118:
        if (!v53)
        {
          goto LABEL_196;
        }

        v73 = v286;
        if (!v286)
        {
          goto LABEL_196;
        }

        if (v51 == 95)
        {
          v74 = 1;
          goto LABEL_181;
        }

        if (v51 <= 0x7F)
        {
          v80 = &_DefaultRuneLocale;
          goto LABEL_179;
        }

        v85 = v275[7];
        if (v51 < 0x100)
        {
          v94 = &__global_locale;
          if (v85 != -1)
          {
            v94 = v275[7];
          }

          if (!v85)
          {
            v94 = &__c_locale;
          }

          v80 = *(v94[166] + 120);
LABEL_179:
          v86 = v80->__runetype[v68];
        }

        else
        {
          LOWORD(v86) = ___runetype_l(v51, v85);
          v73 = v286;
        }

        v74 = (v86 & 0x500) != 0;
LABEL_181:
        if (v73 == 95)
        {
          v95 = 1;
LABEL_194:
          if (v74 == v95)
          {
            goto LABEL_226;
          }

          v72 = *v70;
          goto LABEL_196;
        }

        if (v73 <= 0x7F)
        {
          v96 = &_DefaultRuneLocale;
          goto LABEL_192;
        }

        v97 = v275[7];
        if (v73 < 0x100)
        {
          v99 = &__global_locale;
          if (v97 != -1)
          {
            v99 = v275[7];
          }

          if (!v97)
          {
            v99 = &__c_locale;
          }

          v96 = *(v99[166] + 120);
LABEL_192:
          v98 = v96->__runetype[v73];
        }

        else
        {
          LOWORD(v98) = ___runetype_l(v73, v97);
        }

        v95 = (v98 & 0x500) != 0;
        goto LABEL_194;
      }

      if (v51 != 95)
      {
        if (v51 <= 0x7F)
        {
          v77 = &_DefaultRuneLocale;
          goto LABEL_156;
        }

        v81 = v275[7];
        if (v51 < 0x100)
        {
          v87 = &__global_locale;
          if (v81 != -1)
          {
            v87 = v275[7];
          }

          if (!v81)
          {
            v87 = &__c_locale;
          }

          v77 = *(v87[166] + 120);
LABEL_156:
          v82 = v77->__runetype[v68];
        }

        else
        {
          LOWORD(v82) = ___runetype_l(v51, v81);
        }

        if ((v82 & 0x500) == 0)
        {
          goto LABEL_226;
        }
      }

      if (v286 == 95)
      {
        goto LABEL_226;
      }

      if (v286 > 0x7F)
      {
        v89 = v275[7];
        if (v286 >= 0x100)
        {
          LOWORD(v90) = ___runetype_l(v286, v89);
          goto LABEL_169;
        }

        v91 = &__global_locale;
        if (v89 != -1)
        {
          v91 = v275[7];
        }

        if (!v89)
        {
          v91 = &__c_locale;
        }

        v88 = *(v91[166] + 120);
      }

      else
      {
        v88 = &_DefaultRuneLocale;
      }

      v90 = v88->__runetype[v286];
LABEL_169:
      if ((v90 & 0x500) != 0)
      {
        goto LABEL_226;
      }

      v72 = *v70;
      if ((*v70 & 0x20) != 0)
      {
        goto LABEL_118;
      }

LABEL_196:
      if ((v72 & 0x40) == 0)
      {
        goto LABEL_236;
      }

      if (v53)
      {
        v100 = v286;
        if (v286)
        {
          if (v51 == 95)
          {
            v101 = 1;
            goto LABEL_212;
          }

          if (v51 <= 0x7F)
          {
            v102 = &_DefaultRuneLocale;
            goto LABEL_210;
          }

          v103 = v275[7];
          if (v51 < 0x100)
          {
            v105 = &__global_locale;
            if (v103 != -1)
            {
              v105 = v275[7];
            }

            if (!v103)
            {
              v105 = &__c_locale;
            }

            v102 = *(v105[166] + 120);
LABEL_210:
            v104 = v102->__runetype[v68];
          }

          else
          {
            LOWORD(v104) = ___runetype_l(v51, v103);
            v100 = v286;
          }

          v101 = (v104 & 0x500) != 0;
LABEL_212:
          if (v100 == 95)
          {
            v106 = 1;
            goto LABEL_225;
          }

          if (v100 <= 0x7F)
          {
            v107 = &_DefaultRuneLocale;
            goto LABEL_223;
          }

          v108 = v275[7];
          if (v100 < 0x100)
          {
            v110 = &__global_locale;
            if (v108 != -1)
            {
              v110 = v275[7];
            }

            if (!v108)
            {
              v110 = &__c_locale;
            }

            v107 = *(v110[166] + 120);
LABEL_223:
            v109 = v107->__runetype[v100];
          }

          else
          {
            LOWORD(v109) = ___runetype_l(v100, v108);
          }

          v106 = (v109 & 0x500) != 0;
LABEL_225:
          if (v101 == v106)
          {
LABEL_236:
            *v277 = *(v70 - 4);
            v113 = (v277 + 8);
            MEMORY[0x193AD5FD0](*(v277 + 1), v281 * 4);
            v114 = *(v70 - 2);
            if (v114)
            {
              v115 = *v114;
              if ((v115 & 0x80000000) == 0)
              {
                v116 = v114 + 1;
                do
                {
                  if (v115 < v18)
                  {
                    v117 = &(*v113)[16 * v115];
                    if (!(*v117)++)
                    {
                      *(v117 + 1) = v53;
                    }

                    *(v117 + 2) = v53;
                    *(v117 + 3) = v61;
                  }

                  v119 = *v116++;
                  v115 = v119;
                }

                while ((v119 & 0x80000000) == 0);
              }

              ++v61;
            }

            if (*v277 == v275[2])
            {
              j__mkdtempat_np(a5, *v113);
              v279 = v53;
            }

            v120 = v280 + 16 * *(v70 - 6);
            *v120 = v53;
            *(v120 + 8) = v113;
            v277 += 16;
            v68 = v51;
            break;
          }
        }
      }

LABEL_226:
      v111 = *(v70 + 3);
      v70 += 14;
      if (!v111)
      {
        goto LABEL_249;
      }
    }

    v64 = (v70 + 4);
  }

  while (*(v70 + 3));
LABEL_249:
  v63 = v275;
  *v277 = 0;
  v43 = v253;
  v44 = a3;
  v62 = v264;
  if ((a3 & 0x80000000) == 0)
  {
    goto LABEL_98;
  }

LABEL_250:
  v51 = v286;
  if (!v286)
  {
    goto LABEL_599;
  }

LABEL_251:
  if (!v43)
  {
    ++v53;
    if ((v44 & 0x80000000) == 0 && v53 >= v44)
    {
      goto LABEL_263;
    }

    v121 = *v248++;
LABEL_265:
    v286 = v121;
    goto LABEL_266;
  }

  if (v43 != 2)
  {
    if (v43 == 1)
    {
      ++v53;
      if (v44 < 0 || v53 < v44)
      {
        v121 = *v250++;
        goto LABEL_265;
      }

LABEL_263:
      v286 = 0;
    }

LABEL_267:
    v122 = *v62;
    if (!*v62)
    {
      v277 = v262;
      v179 = v27;
      goto LABEL_589;
    }

    v123 = v62;
    v125 = (a6 & 1) == 0 && v53 < 1;
    v126 = v274;
    if (v51 != 10)
    {
      v126 = 0;
    }

    v283 = v125 | v126;
    v277 = v262;
    v285 = v123;
LABEL_277:
    v127 = (v122 + 8);
    if (!*(v122 + 8))
    {
      v179 = v27;
      goto LABEL_586;
    }

LABEL_278:
    if (*v122 > v51 || *(v122 + 4) < v51)
    {
      goto LABEL_574;
    }

    v128 = *(v122 + 40);
    if (!v128)
    {
      goto LABEL_519;
    }

    if (!(((*(v122 + 40) & 1) == 0) | v283 & 1))
    {
      goto LABEL_574;
    }

    if ((v128 & 2) != 0)
    {
      v132 = v274;
      if (v286 != 10)
      {
        v132 = 0;
      }

      if (v286 | v273 && !v132)
      {
        goto LABEL_574;
      }
    }

    if ((v128 & 8) == 0)
    {
LABEL_284:
      v129 = *(v122 + 40);
      if ((v129 & 0x10) == 0)
      {
        if ((v129 & 0x20) != 0)
        {
          goto LABEL_286;
        }

LABEL_339:
        if ((v129 & 0x40) == 0)
        {
LABEL_340:
          if ((v129 & 4) == 0)
          {
            goto LABEL_519;
          }

          goto LABEL_341;
        }

LABEL_371:
        if (!v53)
        {
          goto LABEL_574;
        }

        v164 = v286;
        if (!v286)
        {
          goto LABEL_574;
        }

        if (v51 == 95)
        {
          v165 = 1;
          goto LABEL_406;
        }

        if (v51 <= 0x7F)
        {
          v166 = &_DefaultRuneLocale;
          goto LABEL_404;
        }

        v169 = v63[7];
        if (v51 < 0x100)
        {
          v173 = &__global_locale;
          if (v169 != -1)
          {
            v173 = v63[7];
          }

          if (!v169)
          {
            v173 = &__c_locale;
          }

          v166 = *(v173[166] + 120);
LABEL_404:
          v170 = v166->__runetype[v51];
        }

        else
        {
          LOWORD(v170) = ___runetype_l(v51, v169);
          v164 = v286;
        }

        v165 = (v170 & 0x500) != 0;
LABEL_406:
        if (v164 == 95)
        {
          v174 = 1;
LABEL_419:
          if (v165 != v174)
          {
LABEL_422:
            v179 = v27;
            v63 = v275;
            goto LABEL_575;
          }

          v63 = v275;
          if ((*(v122 + 40) & 4) == 0)
          {
            goto LABEL_519;
          }

LABEL_341:
          v149 = *(v122 + 48);
          v150 = *(v63 + 24);
          v268 = v149;
          if ((v150 & 2) == 0)
          {
            v151 = 0;
            v152 = 0;
            v153 = 0;
            goto LABEL_427;
          }

          v153 = (v150 >> 1) & 1;
          if (v51 < 0x80)
          {
            v154 = &_DefaultRuneLocale.__magic[4 * v51];
            v155 = *(v154 + 15);
            if ((v155 & 0x1000) != 0)
            {
              v151 = *(v154 + 527);
              v152 = v51;
            }

            else if ((v155 & 0x8000) != 0)
            {
              v152 = *(v154 + 271);
              v151 = v51;
            }

            else
            {
              v151 = 0;
              v152 = 0;
              v153 = 0;
            }

            v149 = *(v122 + 48);
LABEL_427:
            v258 = v150;
            v180 = *v149;
            if (*v149 < 1)
            {
LABEL_512:
              v189 = 0;
              goto LABEL_513;
            }

            v181 = 0;
            v259 = v152;
            v260 = v151;
            v182 = v149;
            v271 = v152;
            v272 = v153;
            v269 = *v149;
            v270 = v151;
            while (2)
            {
              v184 = v182[2];
              v182 += 2;
              v183 = v184;
              if (v184 <= 3)
              {
                if (v183 == 1)
                {
                  v190 = v149[3];
                  if (v153)
                  {
                    v189 = v190 == v152;
                    if (v190 == v151)
                    {
                      goto LABEL_584;
                    }

                    goto LABEL_506;
                  }

                  v189 = v190 == v51;
                  if (v190 == v51)
                  {
                    goto LABEL_513;
                  }

LABEL_507:
                  ++v181;
                  v149 = v182;
                  if (v181 >= v180)
                  {
                    goto LABEL_512;
                  }

                  continue;
                }

                if (v183 != 2)
                {
                  goto LABEL_507;
                }

                if (++v181 >= v180)
                {
                  goto LABEL_512;
                }

                v182 = v149 + 4;
                if (v149[4] != 3)
                {
                  goto LABEL_512;
                }

                v185 = v149[3];
                v186 = v149[5];
                v187 = &__global_locale;
                if (*(StatusReg + 8 * __locale_key))
                {
                  v187 = *(StatusReg + 8 * __locale_key);
                }

                if (*(v187[166] + 64) >= 2)
                {
                  if (v153)
                  {
                    v189 = v185 <= v152 && v152 <= v186;
                    if (v185 <= v151 && v151 <= v186)
                    {
                      goto LABEL_584;
                    }

LABEL_506:
                    if (v189)
                    {
                      goto LABEL_513;
                    }
                  }

                  else
                  {
                    v189 = v185 <= v51 && v186 >= v51;
                    if (v189)
                    {
                      goto LABEL_513;
                    }
                  }

                  goto LABEL_507;
                }

                v256 = v186;
                v193 = v275[7];
                v265 = v193;
                if (v153)
                {
                  v255 = v185;
                  if (__collate_range_cmp(v185, v151, v193) <= 0 && (__collate_range_cmp(v256, v270, v265) & 0x80000000) == 0)
                  {
                    goto LABEL_584;
                  }

                  if (__collate_range_cmp(v255, v271, v265) <= 0)
                  {
                    v194 = v256;
                    v195 = v271;
                    goto LABEL_510;
                  }
                }

                else if (__collate_range_cmp(v185, v51, v193) <= 0)
                {
                  v194 = v256;
                  v195 = v51;
LABEL_510:
                  v189 = __collate_range_cmp(v194, v195, v265) >= 0;
                  v152 = v271;
                  v153 = v272;
                  v180 = v269;
                  v151 = v270;
                  if (v189)
                  {
                    goto LABEL_513;
                  }

                  goto LABEL_507;
                }

                v152 = v271;
                v153 = v272;
                v180 = v269;
                v151 = v270;
                goto LABEL_507;
              }

              break;
            }

            if (v183 != 4)
            {
              if (v183 == 5)
              {
                v189 = __collate_equiv_wchar(v275[7], v51, v149[3], v272);
                v180 = v269;
                v151 = v270;
                v152 = v271;
                v153 = v272;
                if (v189)
                {
                  goto LABEL_513;
                }
              }

              goto LABEL_507;
            }

            v191 = v149[3];
            v192 = v275[7];
            if (!v153)
            {
              if (v51 <= 0x7F)
              {
                v196 = v51;
                goto LABEL_489;
              }

              if (v51 >= 0x100)
              {
                v198 = v51;
                goto LABEL_492;
              }

              v206 = &__global_locale;
              if (v192 != -1)
              {
                v206 = v275[7];
              }

              if (!v192)
              {
                v206 = &__c_locale;
              }

              v204 = *(v206[166] + 120);
              v205 = v51;
              goto LABEL_503;
            }

            if (v151 <= 0x7F)
            {
              if ((_DefaultRuneLocale.__runetype[v260] & v191) != 0)
              {
                goto LABEL_584;
              }

LABEL_487:
              if (v152 <= 0x7F)
              {
                v196 = v259;
LABEL_489:
                v201 = _DefaultRuneLocale.__runetype[v196] & v191;
LABEL_505:
                v189 = v201 != 0;
                goto LABEL_506;
              }

              if (v152 >= 0x100)
              {
                v198 = v152;
LABEL_492:
                v267 = v191;
                v202 = ___runetype_l(v198, v192);
                v191 = v267;
                v180 = v269;
                v151 = v270;
                v152 = v271;
                v153 = v272;
LABEL_504:
                v201 = v202 & v191;
                goto LABEL_505;
              }

              v203 = &__global_locale;
              if (v192 != -1)
              {
                v203 = v192;
              }

              if (!v192)
              {
                v203 = &__c_locale;
              }

              v204 = *(*(v203 + 166) + 120);
              v205 = v259;
LABEL_503:
              v202 = *(v204 + 4 * v205 + 60);
              goto LABEL_504;
            }

            if (v151 < 0x100)
            {
              v200 = &__global_locale;
              if (v192 != -1)
              {
                v200 = v275[7];
              }

              if (!v192)
              {
                v200 = &__c_locale;
              }

              v197 = *(*(v200[166] + 120) + 4 * v260 + 60);
            }

            else
            {
              v257 = v275[7];
              v266 = v149[3];
              v197 = ___runetype_l(v151, v192);
              v192 = v257;
              v191 = v266;
              v180 = v269;
              v151 = v270;
              v152 = v271;
              v153 = v272;
            }

            if ((v197 & v191) == 0)
            {
              goto LABEL_487;
            }

LABEL_584:
            v189 = 1;
LABEL_513:
            if (v268[1])
            {
              v63 = v275;
              if (v51 == 10 && (v258 & 8) != 0 || v189)
              {
                goto LABEL_574;
              }
            }

            else
            {
              v63 = v275;
              if (!v189)
              {
                goto LABEL_574;
              }
            }

LABEL_519:
            j__mkdtempat_np(v27, *(v285 + 1));
            v207 = *(v122 + 24);
            if (v207)
            {
              v208 = *v207;
              if ((v208 & 0x80000000) == 0)
              {
                v209 = v207 + 1;
                do
                {
                  if (v208 < v18)
                  {
                    v210 = &v27[4 * v208];
                    if (!(*v210)++)
                    {
                      v210[1] = v53;
                    }

                    v210[2] = v53;
                    v210[3] = v61;
                  }

                  v212 = *v209++;
                  v208 = v212;
                }

                while ((v212 & 0x80000000) == 0);
              }

              ++v61;
            }

            if (*(v63 + 21))
            {
              if ((v279 & 0x80000000) == 0)
              {
                v213 = v63[5];
                v214 = *v213;
                if ((v214 & 0x80000000) == 0)
                {
                  v215 = v213 + 2;
                  do
                  {
                    v216 = *(v215 - 1);
                    v217 = &a5[4 * v216];
                    if (*v217)
                    {
                      v218 = &v27[4 * v216];
                      if (*v218)
                      {
                        if (v217[2] == v218[2])
                        {
                          v219 = &a5[4 * v214];
                          v220 = &v27[4 * v214];
                          v221 = *v220;
                          if (*v219)
                          {
                            if (!v221)
                            {
                              goto LABEL_574;
                            }

LABEL_537:
                            if (v220[2] > v219[2])
                            {
                              goto LABEL_574;
                            }

                            goto LABEL_540;
                          }

                          if (!v221)
                          {
                            goto LABEL_537;
                          }
                        }
                      }
                    }

LABEL_540:
                    v222 = *v215;
                    v215 += 2;
                    v214 = v222;
                  }

                  while ((v222 & 0x80000000) == 0);
                }
              }
            }

            v223 = v280 + 16 * *(v122 + 16);
            if (*v223 < v53)
            {
              v224 = *v127;
              v179 = *(v277 + 1);
              *v277 = *v127;
              *(v277 + 1) = v27;
              *v223 = v53;
              *(v223 + 8) = v277 + 8;
              if (v224 == v63[2])
              {
                if (v279 == -1 || v18 >= 1 && (*v27 < 1 ? (v225 = -1) : (v225 = v27[2]), *a5 < 1 ? (v241 = -1) : (v241 = a5[2]), v225 <= v241))
                {
                  j__mkdtempat_np(a5, v27);
                  v279 = v53;
                }
              }

              v277 += 16;
              goto LABEL_575;
            }

            if (v18 < 1)
            {
LABEL_574:
              v179 = v27;
              goto LABEL_575;
            }

            v226 = v63[4];
            v227 = (**(v223 + 8) + 8);
            v228 = v27 + 2;
            v229 = v18;
            while (1)
            {
              v231 = *v226++;
              v230 = v231;
              if (v231 == 2)
              {
                v234 = *(v228 - 2);
                v235 = *(v227 - 2);
                if (!v234)
                {
                  goto LABEL_565;
                }

                if (!v235)
                {
                  goto LABEL_572;
                }

                v236 = *(v227 - 1);
                v237 = *(v228 - 1);
              }

              else
              {
                if (v230 != 1)
                {
                  if (v230)
                  {
                    goto LABEL_569;
                  }

                  v232 = *v227;
                  v233 = *v228;
                  goto LABEL_563;
                }

                v234 = *(v228 - 2);
                v235 = *(v227 - 2);
                if (!v234)
                {
LABEL_565:
                  if (v235)
                  {
                    v238 = -1;
                  }

                  else
                  {
                    v238 = 0;
                  }

                  if (v238)
                  {
LABEL_571:
                    if (v238 < 1)
                    {
                      goto LABEL_574;
                    }

LABEL_572:
                    v239 = *(v223 + 8);
                    v179 = *v239;
                    *v239 = v27;
                    if (*v127 == v63[2])
                    {
                      j__mkdtempat_np(a5, v27);
                      v279 = v53;
                    }

LABEL_575:
                    v240 = *(v122 + 64);
                    v127 = (v122 + 64);
                    v122 += 56;
                    v27 = v179;
                    if (v240)
                    {
                      goto LABEL_278;
                    }

LABEL_586:
                    v122 = *(v285 + 2);
                    v285 += 16;
                    v27 = v179;
                    if (v122)
                    {
                      goto LABEL_277;
                    }

LABEL_589:
                    *v277 = 0;
                    v62 = v262;
                    v23 = v264;
                    v27 = v179;
                    v43 = v253;
                    v44 = a3;
                    goto LABEL_94;
                  }

                  goto LABEL_569;
                }

                if (!v235)
                {
                  goto LABEL_572;
                }

                v236 = *(v228 - 1);
                v237 = *(v227 - 1);
              }

              v238 = v236 - v237;
              if (v238)
              {
                goto LABEL_571;
              }

              v238 = v235 - v234;
              if (v235 != v234)
              {
                goto LABEL_571;
              }

              if (v234 != 1)
              {
                v232 = *v228;
                v233 = *v227;
LABEL_563:
                v238 = v232 - v233;
                if (v238)
                {
                  goto LABEL_571;
                }
              }

LABEL_569:
              v227 += 4;
              v228 += 4;
              if (!--v229)
              {
                goto LABEL_574;
              }
            }
          }

          v167 = v63[7];
          if (v51 < 0x100)
          {
            v172 = &__global_locale;
            if (v167 != -1)
            {
              v172 = v167;
            }

            if (!v167)
            {
              v172 = &__c_locale;
            }

            v168 = *(*(*(v172 + 166) + 120) + 4 * v51 + 60);
            if ((v168 & 0x1000) == 0)
            {
              goto LABEL_396;
            }
          }

          else if ((___runetype_l(v51, v167) & 0x1000) == 0)
          {
            LOWORD(v168) = ___runetype_l(v51, v167);
LABEL_396:
            if ((v168 & 0x8000) == 0)
            {
              v151 = 0;
              v152 = 0;
              v153 = 0;
              v149 = v268;
              goto LABEL_427;
            }

            v152 = ___tolower_l(v51, v167);
            v151 = v51;
            goto LABEL_426;
          }

          v151 = ___toupper_l(v51, v167);
          v152 = v51;
LABEL_426:
          v149 = v268;
          v153 = (v150 >> 1) & 1;
          goto LABEL_427;
        }

        if (v164 > 0x7F)
        {
          v176 = v275[7];
          if (v164 >= 0x100)
          {
            LOWORD(v177) = ___runetype_l(v164, v176);
LABEL_418:
            v174 = (v177 & 0x500) != 0;
            goto LABEL_419;
          }

          v178 = &__global_locale;
          if (v176 != -1)
          {
            v178 = v275[7];
          }

          if (!v176)
          {
            v178 = &__c_locale;
          }

          v175 = *(v178[166] + 120);
        }

        else
        {
          v175 = &_DefaultRuneLocale;
        }

        v177 = v175->__runetype[v164];
        goto LABEL_418;
      }

      if (v51 == 95)
      {
LABEL_326:
        if (v286 == 95)
        {
          goto LABEL_574;
        }

        if (v286 > 0x7F)
        {
          v146 = v63[7];
          if (v286 >= 0x100)
          {
            LOWORD(v147) = ___runetype_l(v286, v146);
            goto LABEL_337;
          }

          v148 = &__global_locale;
          if (v146 != -1)
          {
            v148 = v63[7];
          }

          if (!v146)
          {
            v148 = &__c_locale;
          }

          v145 = *(v148[166] + 120);
        }

        else
        {
          v145 = &_DefaultRuneLocale;
        }

        v147 = v145->__runetype[v286];
LABEL_337:
        if ((v147 & 0x500) != 0)
        {
          goto LABEL_574;
        }

        v129 = *(v122 + 40);
        if ((v129 & 0x20) == 0)
        {
          goto LABEL_339;
        }

LABEL_286:
        if (!v53)
        {
          goto LABEL_339;
        }

        v130 = v286;
        if (!v286)
        {
          goto LABEL_339;
        }

        if (v51 == 95)
        {
          v131 = 1;
          goto LABEL_356;
        }

        if (v51 > 0x7F)
        {
          v142 = v63[7];
          if (v51 >= 0x100)
          {
            LOWORD(v143) = ___runetype_l(v51, v142);
            v130 = v286;
LABEL_355:
            v131 = (v143 & 0x500) != 0;
LABEL_356:
            if (v130 == 95)
            {
              v159 = 1;
              goto LABEL_369;
            }

            if (v130 > 0x7F)
            {
              v161 = v275[7];
              if (v130 >= 0x100)
              {
                LOWORD(v162) = ___runetype_l(v130, v161);
LABEL_368:
                v159 = (v162 & 0x500) != 0;
LABEL_369:
                if (v131 == v159)
                {
                  goto LABEL_422;
                }

                v129 = *(v122 + 40);
                v63 = v275;
                if ((v129 & 0x40) == 0)
                {
                  goto LABEL_340;
                }

                goto LABEL_371;
              }

              v163 = &__global_locale;
              if (v161 != -1)
              {
                v163 = v275[7];
              }

              if (!v161)
              {
                v163 = &__c_locale;
              }

              v160 = *(v163[166] + 120);
            }

            else
            {
              v160 = &_DefaultRuneLocale;
            }

            v162 = v160->__runetype[v130];
            goto LABEL_368;
          }

          v158 = &__global_locale;
          if (v142 != -1)
          {
            v158 = v63[7];
          }

          if (!v142)
          {
            v158 = &__c_locale;
          }

          v137 = *(v158[166] + 120);
        }

        else
        {
          v137 = &_DefaultRuneLocale;
        }

        v143 = v137->__runetype[v51];
        goto LABEL_355;
      }

      if (v51 > 0x7F)
      {
        v138 = v63[7];
        if (v51 >= 0x100)
        {
          LOWORD(v139) = ___runetype_l(v51, v138);
          goto LABEL_325;
        }

        v144 = &__global_locale;
        if (v138 != -1)
        {
          v144 = v63[7];
        }

        if (!v138)
        {
          v144 = &__c_locale;
        }

        v134 = *(v144[166] + 120);
      }

      else
      {
        v134 = &_DefaultRuneLocale;
      }

      v139 = v134->__runetype[v51];
LABEL_325:
      if ((v139 & 0x500) == 0)
      {
        goto LABEL_574;
      }

      goto LABEL_326;
    }

    if (v51 == 95)
    {
      goto LABEL_574;
    }

    if (v51 > 0x7F)
    {
      v135 = v63[7];
      if (v51 >= 0x100)
      {
        LOWORD(v136) = ___runetype_l(v51, v135);
        goto LABEL_313;
      }

      v140 = &__global_locale;
      if (v135 != -1)
      {
        v140 = v63[7];
      }

      if (!v135)
      {
        v140 = &__c_locale;
      }

      v133 = *(v140[166] + 120);
    }

    else
    {
      v133 = &_DefaultRuneLocale;
    }

    v136 = v133->__runetype[v51];
LABEL_313:
    if ((v136 & 0x500) != 0)
    {
      goto LABEL_574;
    }

    if (v286 == 95)
    {
      goto LABEL_284;
    }

    if (v286 > 0x7F)
    {
      v156 = v63[7];
      if (v286 >= 0x100)
      {
        LOWORD(v157) = ___runetype_l(v286, v156);
        goto LABEL_388;
      }

      v171 = &__global_locale;
      if (v156 != -1)
      {
        v171 = v63[7];
      }

      if (!v156)
      {
        v171 = &__c_locale;
      }

      v141 = *(v171[166] + 120);
    }

    else
    {
      v141 = &_DefaultRuneLocale;
    }

    v157 = v141->__runetype[v286];
LABEL_388:
    if ((v157 & 0x500) == 0)
    {
      goto LABEL_574;
    }

    goto LABEL_284;
  }

  v53 += v249;
  if ((v44 & 0x80000000) == 0 && v44 <= v53)
  {
    v286 = 0;
    goto LABEL_597;
  }

  if ((*v250 & 0x80000000) == 0)
  {
    v286 = *v250;
    LODWORD(v249) = 1;
    ++v250;
LABEL_266:
    v62 = v264;
    goto LABEL_267;
  }

  v242 = v44 - v53;
  if (v44 < 0)
  {
    v242 = 32;
  }

  v249 = mbrtowc_l(&v286, v250, v242, &v287, v63[7]);
  if (v249 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v62 = v264;
    if (v44 < 0 || v249)
    {
      v250 += v249;
      goto LABEL_267;
    }

    v286 = 0;
    ++v250;
LABEL_597:
    LODWORD(v249) = 1;
    goto LABEL_267;
  }

  return 17;
}

uint64_t tre_fill_pmatch(unint64_t a1, uint64_t a2, char a3, uint64_t a4, char *a5, unsigned int a6)
{
  if ((a3 & 4) != 0)
  {
    return 0;
  }

  v9 = 0;
  if (!a5 || (a6 & 0x80000000) != 0)
  {
    goto LABEL_34;
  }

  v12 = *(a4 + 48);
  v13 = a5;
  if (v12)
  {
    v13 = a5;
    if (*(v12 + 16) >= 1)
    {
      v14 = malloc_type_malloc(16 * *(a4 + 80), 0x1000040451B5BE8uLL);
      if (!v14)
      {
        return 12;
      }

      v13 = v14;
      j__mkdtempat_np(v14, a5);
      tre_reset_last_matched_branches(v13, *(*(a4 + 48) + 8), *(*(a4 + 48) + 16), 0, 0);
    }
  }

  v9 = 0;
  v15 = *(a4 + 72);
  if (!v15 || !a1)
  {
    goto LABEL_32;
  }

  v16 = *(a4 + 88);
  v17 = (v15 - 1);
  if (a1 - 1 < v17)
  {
    v17 = a1 - 1;
  }

  v18 = (a2 + 8);
  v19 = v17 + 1;
  v20 = (*(a4 + 24) + 4);
  do
  {
    v21 = *(v20 - 1);
    if (v21 == v16)
    {
      *(v18 - 1) = a6;
      v22 = *v20;
      if (*v20 == v16)
      {
        *v18 = a6;
        goto LABEL_30;
      }

      v25 = 0;
    }

    else
    {
      v23 = &v13[16 * v21];
      if (*v23 < 1)
      {
        v24 = -1;
      }

      else
      {
        v24 = v23[2];
      }

      *(v18 - 1) = v24;
      v25 = v24 == -1;
      v22 = *v20;
      if (*v20 == v16)
      {
        *v18 = a6;
        if (v24 != -1)
        {
          goto LABEL_30;
        }

LABEL_29:
        *(v18 - 1) = -1;
        *v18 = -1;
        goto LABEL_30;
      }
    }

    v26 = &v13[16 * v22];
    if (*v26 < 1)
    {
      v27 = -1;
    }

    else
    {
      v27 = v26[2];
    }

    *v18 = v27;
    if (v27 == -1)
    {
      v25 = 1;
    }

    if (v25)
    {
      goto LABEL_29;
    }

LABEL_30:
    v18 += 2;
    v20 += 2;
    --v19;
  }

  while (v19);
  v9 = v17 + 1;
LABEL_32:
  if (v13 != a5)
  {
    free(v13);
  }

LABEL_34:
  v28 = v9;
  if (v9 < a1)
  {
    v29 = v9 + 1;
    do
    {
      v30 = (a2 + 16 * v28);
      v28 = v29;
      *v30 = -1;
      v30[1] = -1;
      ++v29;
    }

    while (v28 < a1);
  }

  return 0;
}

int regcomp_l(regex_t *a1, const char *a2, int a3, locale_t a4)
{
  if ((a3 & 0x20) != 0)
  {
    re_endp = a1->re_endp;
    v8 = re_endp - a2;
    if (re_endp < a2)
    {
      return 16;
    }
  }

  else
  {
    v8 = j__strsignal_r(a2, a2, *&a3);
  }

  return regncomp_l(a1, a2, v8, a3, a4);
}

int regcomp(regex_t *a1, const char *a2, int a3)
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

  return regcomp_l(a1, a2, a3, v5);
}

int regncomp_l(regex_t *a1, const char *a2, size_t a3, int a4, locale_t a5)
{
  v7 = a3;
  v10 = malloc_type_malloc(4 * a3 + 4, 0x100004052888210uLL);
  if (!v10)
  {
    return 12;
  }

  v11 = v10;
  v12 = &__global_locale;
  if (a5 != -1)
  {
    v12 = a5;
  }

  if (a5)
  {
    v13 = v12;
  }

  else
  {
    v13 = &__c_locale;
  }

  if (*(*(v13 + 166) + 64) == 1)
  {
    if (v7)
    {
      v14 = 0;
      do
      {
        *&v10[4 * v14] = a2[v14];
        ++v14;
      }

      while (v7 > v14);
    }

    goto LABEL_22;
  }

  v16 = v10;
  memset(&v19, 0, sizeof(v19));
  if (!v7)
  {
LABEL_21:
    v7 = (v16 - v11) >> 2;
LABEL_22:
    *&v11[4 * v7] = 0;
    v15 = tre_compile(a1, v11, v7, a4, v13);
    goto LABEL_23;
  }

  v16 = v10;
  while (1)
  {
    v17 = mbrtowc_l(v16, a2, v7, &v19, v13);
    if (!v17)
    {
      break;
    }

    if (v17 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v15 = 17;
      goto LABEL_23;
    }

LABEL_20:
    a2 += v17;
    ++v16;
    v7 -= v17;
    if (!v7)
    {
      goto LABEL_21;
    }
  }

  if (!*a2)
  {
    v17 = 1;
    goto LABEL_20;
  }

  v15 = 2;
LABEL_23:
  free(v11);
  return v15;
}

uint64_t tre_compile(uint64_t a1, uint64_t a2, int a3, unsigned int a4, size_t a5)
{
  v10 = tre_stack_new(512, 10240, 128);
  if (!v10)
  {
    return 12;
  }

  v11 = v10;
  v12 = tre_mem_new_impl(0, 0);
  if (!v12)
  {
    tre_stack_destroy(v11);
    return 12;
  }

  v13 = v12;
  *count = 0u;
  memset(v88, 0, sizeof(v88));
  v84 = 0;
  v86 = 0u;
  v83[0] = v12;
  v83[1] = v11;
  v85 = a2;
  if ((~a4 & 0x101) != 0)
  {
    v14 = a4 & 0xFFFFFFBF;
  }

  else
  {
    v14 = a4;
  }

  DWORD1(v88[1]) = v14;
  DWORD2(v88[0]) = -1;
  count[0] = a5;
  LODWORD(count[1]) = a3;
  LODWORD(v88[0]) = 0x40000000;
  v15 = tre_parse(v83);
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = 0;
    v19 = 0;
LABEL_54:
    tre_mem_destroy(v13);
    tre_stack_destroy(v11);
    if (v17)
    {
      free(v17);
    }

    if (v18)
    {
      free(v18);
    }

    *(a1 + 24) = v19;
    if (v19)
    {
      *(v19 + 56) = 0;
    }

    tre_free(a1);
    return v16;
  }

  v20 = HIDWORD(count[1]);
  v21 = DWORD2(v88[0]);
  *(a1 + 8) = SHIDWORD(count[1]) - 1;
  v22 = v84;
  if ((v21 & 0x80000000) == 0 && LODWORD(v88[1]))
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v16 = 2;
    goto LABEL_54;
  }

  if (v21 >= v20)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v16 = 6;
    goto LABEL_54;
  }

  v23 = malloc_type_calloc(1uLL, 0x78uLL, 0x1030040C46BC5F1uLL);
  v19 = v23;
  if (!v23)
  {
    goto LABEL_51;
  }

  v23[25] = (DWORD2(v88[0]) & 0x80000000) == 0;
  v24 = LODWORD(v88[0]) - 0x40000000;
  v23[18] = HIDWORD(count[1]);
  v23[19] = v24;
  v25 = HIDWORD(v88[0]);
  *(v23 + 13) = *(v88 + 12);
  *(v23 + 7) = count[0];
  if ((v14 & 4) != 0 && v25 < 1)
  {
    v17 = 0;
  }

  else
  {
    v26 = tre_add_tags(0, v11, v22, v23);
    if (v26)
    {
      goto LABEL_33;
    }

    v34 = *(v19 + 80);
    if (v34 < 1)
    {
      v17 = 0;
    }

    else
    {
      v35 = malloc_type_malloc(4 * v34 + 4, 0x100004052888210uLL);
      v17 = v35;
      if (!v35)
      {
        goto LABEL_52;
      }

      *(v19 + 32) = v35;
      j__mkostemps(v35, 255, 4 * *(v19 + 80) + 4);
      LODWORD(v34) = *(v19 + 80);
    }

    v36 = malloc_type_calloc((2 * v34 + 3), 4uLL, 0x100004052888210uLL);
    *(v19 + 40) = v36;
    if (!v36)
    {
      goto LABEL_51;
    }

    v37 = malloc_type_calloc(HIDWORD(count[1]), 8uLL, 0x100004000313F17uLL);
    if (!v37)
    {
      goto LABEL_51;
    }

    if (SHIDWORD(count[1]) >= 1)
    {
      v38 = (HIDWORD(count[1]) + 3) & 0xFFFFFFFC;
      v39 = vdupq_n_s64(HIDWORD(count[1]) - 1);
      v40 = xmmword_18E98AD10;
      v41 = xmmword_18E98AD20;
      v42 = v37 + 20;
      v43 = vdupq_n_s64(4uLL);
      do
      {
        v44 = vmovn_s64(vcgeq_u64(v39, v41));
        if (vuzp1_s16(v44, *v39.i8).u8[0])
        {
          *(v42 - 4) = -1;
        }

        if (vuzp1_s16(v44, *&v39).i8[2])
        {
          *(v42 - 2) = -1;
        }

        if (vuzp1_s16(*&v39, vmovn_s64(vcgeq_u64(v39, *&v40))).i32[1])
        {
          *v42 = -1;
          v42[2] = -1;
        }

        v40 = vaddq_s64(v40, v43);
        v41 = vaddq_s64(v41, v43);
        v42 += 8;
        v38 -= 4;
      }

      while (v38);
    }

    *(v19 + 24) = v37;
    v26 = tre_add_tags(v13, v11, v22, v19);
    if (v26)
    {
      goto LABEL_33;
    }
  }

  v26 = tre_expand_ast(v13, v11, v22, v88 + 1, v17);
  if (v26)
  {
LABEL_33:
    v16 = v26;
    v17 = 0;
    v18 = 0;
    goto LABEL_54;
  }

  v27 = DWORD1(v88[0])++;
  v28 = tre_ast_new_literal(v13, 0, 0, v27);
  if (!v28 || (v29 = tre_ast_new_catenation(v13, v22, v28)) == 0)
  {
LABEL_51:
    v17 = 0;
    goto LABEL_52;
  }

  v30 = v29;
  v26 = tre_compute_nfl(v13, v11, v29);
  if (v26)
  {
    goto LABEL_33;
  }

  v17 = malloc_type_malloc(4 * SDWORD1(v88[0]), 0x100004052888210uLL);
  if (!v17)
  {
LABEL_52:
    v18 = 0;
LABEL_53:
    v16 = 12;
    goto LABEL_54;
  }

  v18 = malloc_type_malloc(4 * SDWORD1(v88[0]), 0x100004052888210uLL);
  if (!v18)
  {
    goto LABEL_53;
  }

  if (SDWORD1(v88[0]) >= 1)
  {
    v31 = 0;
    do
    {
      *(v17 + v31++) = 0;
    }

    while (v31 < SDWORD1(v88[0]));
  }

  v80 = v30;
  tre_ast_to_tnfa(v30, 0, v17, 0);
  if (SDWORD1(v88[0]) < 1)
  {
    v33 = 0;
  }

  else
  {
    v32 = 0;
    v33 = 0;
    do
    {
      v18[v32] = v33;
      v33 += *(v17 + v32) + 1;
      *(v17 + v32++) = 0;
    }

    while (v32 < SDWORD1(v88[0]));
  }

  v46 = malloc_type_calloc((v33 + 1), 0x38uLL, 0x1032040B21D0138uLL);
  if (!v46)
  {
    goto LABEL_53;
  }

  *v19 = v46;
  *(v19 + 64) = v33;
  v81 = v46;
  v47 = tre_ast_to_tnfa(v80, v46, v17, v18);
  if (v47)
  {
    v16 = v47;
    goto LABEL_54;
  }

  *(v19 + 68) = -1;
  v48 = *(v80 + 3);
  if (*(v22 + 64))
  {
    goto LABEL_82;
  }

  v49 = *v48;
  if ((v49 & 0x80000000) != 0)
  {
    goto LABEL_82;
  }

  v50 = -1;
  v51 = *(v80 + 3);
  do
  {
    v52 = &v81[56 * v18[v49]];
    if (*(v52 + 1))
    {
      do
      {
        v53 = *v52;
        v54 = *(v52 + 1);
        if (*v52 <= v54)
        {
          if (v53 == -1 || v54 != v53 || v50 != -1)
          {
            *(v19 + 68) = -1;
            goto LABEL_82;
          }

          *(v19 + 68) = v53;
          v50 = v53;
        }

        v57 = *(v52 + 8);
        v52 += 56;
      }

      while (v57);
    }

    v58 = *(v51 + 64);
    v51 += 64;
    v49 = v58;
  }

  while ((v58 & 0x80000000) == 0);
LABEL_82:
  if ((*v48 & 0x80000000) != 0)
  {
    v60 = 1;
  }

  else
  {
    v59 = v48 + 16;
    v60 = 1;
    do
    {
      v61 = *v59;
      v59 += 16;
      ++v60;
    }

    while ((v61 & 0x80000000) == 0);
  }

  v79 = malloc_type_calloc(v60, 0x38uLL, 0x1032040B21D0138uLL);
  if (!v79)
  {
    goto LABEL_53;
  }

  *(v19 + 8) = v79;
  v62 = *(v80 + 3);
  v63 = *v62;
  if ((v63 & 0x80000000) != 0)
  {
    v75 = 0;
  }

  else
  {
    v64 = 0;
    do
    {
      v65 = &v79[7 * v64];
      *(v65 + 1) = &v81[56 * v18[v63]];
      *(v65 + 4) = v63;
      *(v65 + 3) = 0;
      v66 = *(v62 + 2);
      v82 = v65;
      if (v66)
      {
        v78 = v64;
        v67 = 0;
        do
        {
          v68 = *(v66 + v67);
          v67 += 4;
        }

        while ((v68 & 0x80000000) == 0);
        v69 = malloc_type_malloc(v67 & 0x3FFFFFFFCLL, 0x100004052888210uLL);
        *(v82 + 3) = v69;
        if (!v69)
        {
          goto LABEL_53;
        }

        j__mkdtempat_np(v69, *(v62 + 2));
        v64 = v78;
        v65 = v82;
      }

      *(v65 + 4) = 0;
      if (*(v62 + 6))
      {
        v70 = malloc_type_malloc(0x24uLL, 0x100004052888210uLL);
        v65 = v82;
        *(v82 + 4) = v70;
        if (!v70)
        {
          goto LABEL_53;
        }

        v71 = *(v62 + 6);
        v72 = *v71;
        v73 = v71[1];
        v70[8] = *(v71 + 8);
        *v70 = v72;
        *(v70 + 1) = v73;
      }

      v74 = v62[16];
      v62 += 16;
      v63 = v74;
      *(v65 + 10) = *(v62 - 10);
      ++v64;
    }

    while ((v74 & 0x80000000) == 0);
    v75 = v64;
  }

  *(v19 + 64) = v33;
  v76 = v18[**(v80 + 4)];
  v79[7 * v75 + 1] = 0;
  *(v19 + 16) = &v81[56 * v76];
  *(v19 + 92) = DWORD1(v88[0]);
  *(v19 + 96) = v14;
  tre_mem_destroy(v13);
  tre_stack_destroy(v11);
  free(v17);
  free(v18);
  *a1 = 62053;
  *(a1 + 24) = v19;
  v77 = *(v19 + 56);
  v16 = 0;
  if (v77)
  {
    atomic_fetch_add(v77, 1u);
  }

  return v16;
}

void *tre_stack_new(int a1, int a2, int a3)
{
  v6 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
  if (v6)
  {
    v7 = malloc_type_malloc(8 * a1, 0x108204023715A0EuLL);
    v6[2] = v7;
    if (v7)
    {
      *v6 = a1;
      *(v6 + 1) = a2;
      *(v6 + 2) = a3;
      *(v6 + 3) = 0;
    }

    else
    {
      free(v6);
      return 0;
    }
  }

  return v6;
}

_OWORD *tre_mem_new_impl(int a1, _OWORD *a2)
{
  if (!a1)
  {
    return malloc_type_calloc(1uLL, 0x30uLL, 0x10B0040729534FEuLL);
  }

  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return a2;
}

uint64_t tre_parse(uint64_t a1)
{
  v200 = 0;
  v2 = *(a1 + 8);
  v3 = tre_stack_num_objects(v2);
  if (*(a1 + 56) < 1)
  {
    return 14;
  }

  v4 = v3;
  if (!*(a1 + 88))
  {
    tre_stack_push_int(v2, *(a1 + 84));
    tre_stack_push_int(v2, *(a1 + 60));
    tre_stack_push_int(v2, 2u);
    ++*(a1 + 60);
  }

  tre_stack_push_int(v2, 0);
  v5 = tre_stack_push_int(v2, 0);
  v6 = *(a1 + 24);
  v7 = v6 + 4 * *(a1 + 56);
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  if (tre_stack_num_objects(v2) <= v4 || v5 != 0)
  {
    if (v5)
    {
      return v5;
    }

    goto LABEL_513;
  }

  v199 = 0;
  v9 = 0;
  v10 = &__c_locale;
  while (1)
  {
    v11 = tre_stack_pop_int(v2);
    v12 = 0;
    if (v11 <= 4)
    {
      break;
    }

    if (v11 <= 6)
    {
      if (v11 != 5)
      {
        v29 = tre_stack_pop_voidptr(v2);
        v30 = tre_ast_new_catenation(*a1, v29, v200);
        if (!v30)
        {
          return 12;
        }

LABEL_93:
        v12 = 0;
        v200 = v30;
        goto LABEL_381;
      }

      v33 = *(a1 + 24);
      v34 = *(a1 + 40);
      if (v33 >= v34)
      {
        goto LABEL_380;
      }

      v35 = *(a1 + 84);
      if ((v35 & 0x10) != 0)
      {
        goto LABEL_134;
      }

      v36 = *v33;
      if ((v35 & 1) != 0 && v36 == 124)
      {
        goto LABEL_380;
      }

      if ((*(a1 + 84) & 0x101) == 0x100 && (v33 + 1) < v34 && v36 == 92)
      {
        if (v33[1] == 124)
        {
          goto LABEL_380;
        }

LABEL_133:
        if ((v35 & 1) != 0 || (v33 + 1) >= v34 || v36 != 92 || v33[1] != 41)
        {
LABEL_134:
          v14 = tre_stack_push_voidptr(v2, v200);
          if (v14)
          {
            goto LABEL_300;
          }

          v14 = tre_stack_push_int(v2, 6u);
          if (v14)
          {
            goto LABEL_300;
          }

          v14 = tre_stack_push_int(v2, 5u);
          if (v14)
          {
            goto LABEL_300;
          }

          v45 = v2;
          v46 = 0;
          goto LABEL_88;
        }

        if (!v199)
        {
          return 8;
        }
      }

      else if ((v35 & 1) == 0 || v36 != 41 || v199 <= 0)
      {
        goto LABEL_133;
      }

      --v199;
      if ((v35 & 0x101) == 0)
      {
        v12 = 0;
        v49 = v33 + 2;
        goto LABEL_377;
      }

      goto LABEL_380;
    }

    if (v11 == 7)
    {
      v41 = *(a1 + 24);
      v42 = *(a1 + 40);
      if (v41 >= v42)
      {
        goto LABEL_380;
      }

      v43 = *(a1 + 84);
      if ((v43 & 0x10) != 0)
      {
        goto LABEL_380;
      }

      if ((v43 & 1) == 0)
      {
        if (*v41 != 92)
        {
          goto LABEL_380;
        }

        if (++v41 >= v42)
        {
          goto LABEL_380;
        }

        *(a1 + 24) = v41;
      }

      if (*v41 != 41)
      {
        if (*v41 != 124)
        {
          if ((v43 & 1) == 0)
          {
            v12 = 0;
            goto LABEL_148;
          }

          goto LABEL_380;
        }

        v14 = tre_stack_push_int(v2, 7u);
        if (v14)
        {
          goto LABEL_300;
        }

        v14 = tre_stack_push_voidptr(v2, *(a1 + 24));
        if (v14)
        {
          goto LABEL_300;
        }

        v14 = tre_stack_push_voidptr(v2, v200);
        if (v14)
        {
          goto LABEL_300;
        }

        v14 = tre_stack_push_int(v2, 8u);
        if (v14)
        {
          goto LABEL_300;
        }

        v14 = tre_stack_push_int(v2, (*(a1 + 84) & 0x101) == 256);
        if (v14)
        {
          goto LABEL_300;
        }

        v12 = tre_stack_push_int(v2, 3u);
        if (v12)
        {
          goto LABEL_381;
        }

        goto LABEL_375;
      }

      v12 = 0;
LABEL_376:
      v49 = v41 + 1;
      goto LABEL_377;
    }

    if (v11 == 8)
    {
      v47 = tre_stack_pop_voidptr(v2);
      if (tre_stack_pop_voidptr(v2) == *(a1 + 24) - 4)
      {
        return 14;
      }

      v30 = tre_ast_new_union(*a1, v47, v200);
      if (!v30)
      {
        return 12;
      }

      goto LABEL_93;
    }

    if (v11 != 9)
    {
      goto LABEL_381;
    }

    v17 = *(a1 + 24);
    v18 = *(a1 + 40);
    if (v17 >= v18)
    {
      goto LABEL_380;
    }

    v19 = *(a1 + 84);
    if ((v19 & 0x10) != 0)
    {
      goto LABEL_380;
    }

    v12 = 0;
    v20 = *v17;
    if (*v17 <= 62)
    {
      if (v20 == 42)
      {
        goto LABEL_108;
      }

      if (v20 != 43)
      {
        goto LABEL_381;
      }

LABEL_107:
      if (v19)
      {
LABEL_108:
        v48 = v200;
        if (*(v200 + 12) || (*(v200 + 13) & 0x80000000) == 0 || **v200 != -2)
        {
          v50 = (v19 >> 6) & 1;
          v51 = v20 == 43;
          if (v20 == 63)
          {
            v52 = 1;
          }

          else
          {
            v52 = -1;
          }

          v53 = v17 + 1;
          if (v19)
          {
            if (v53 < v18)
            {
              if (*v53 == 63)
              {
                if ((v19 & 0x100) == 0)
                {
                  return 13;
                }

                v50 = (v19 & 0x40) == 0;
                ++v17;
              }

              else if ((*v53 - 42) < 2)
              {
                return 13;
              }
            }
          }

          else if (v53 < v18 && *v53 == 42 || (v17 + 2) < v18 && *v53 == 92 && v17[2] == 43)
          {
            return 13;
          }

          if (v50)
          {
            ++*(a1 + 76);
          }

          *(a1 + 24) = v17 + 1;
          v143 = tre_ast_new_iter(*a1, v48, v51, v52, v50);
          if (!v143)
          {
            return 12;
          }

          v12 = 0;
          v200 = v143;
          v144 = *(a1 + 64);
          *(a1 + 64) = v144 + 1;
          *(v143 + 13) = v144;
          goto LABEL_381;
        }

        if (v19)
        {
          return 13;
        }
      }

LABEL_380:
      v12 = 0;
      goto LABEL_381;
    }

    switch(v20)
    {
      case '{':
        if ((v19 & 1) == 0)
        {
          goto LABEL_380;
        }

        break;
      case '\\':
        if (v19)
        {
          goto LABEL_380;
        }

        if (++v17 >= v18)
        {
          goto LABEL_380;
        }

        v20 = *v17;
        if (*v17 == 43)
        {
          goto LABEL_154;
        }

        if (v20 != 123)
        {
          if (v20 == 63)
          {
LABEL_154:
            if ((v19 & 0x100) != 0)
            {
              *(a1 + 24) = v17;
              goto LABEL_108;
            }
          }

          goto LABEL_380;
        }

        break;
      case '?':
        goto LABEL_107;
      default:
        goto LABEL_381;
    }

    v56 = !*(v200 + 12) && (*(v200 + 13) & 0x80000000) != 0 && **v200 == -2;
    *(a1 + 24) = v17 + 1;
    v57 = tre_parse_bound(a1, &v200);
    if (v57)
    {
      v5 = v57;
      if (v57 != 1)
      {
        return v5;
      }

      v12 = 0;
      v41 = *(a1 + 24);
LABEL_148:
      v49 = v41 - 1;
LABEL_377:
      *(a1 + 24) = v49;
      goto LABEL_381;
    }

    if (v56)
    {
      return 13;
    }

    v141 = v200;
    if (*(v200 + 12) != 2)
    {
      goto LABEL_380;
    }

    v12 = 0;
    v142 = *(a1 + 64);
    *(a1 + 64) = v142 + 1;
    *(v141 + 13) = v142;
LABEL_381:
    if (tre_stack_num_objects(v2) <= v4 || v12)
    {
      if (v12)
      {
        v5 = v12;
      }

      else
      {
        v5 = 8;
      }

      if (v12 || v199 >= 1)
      {
        return v5;
      }

LABEL_513:
      v5 = 0;
      *(a1 + 16) = v200;
      return v5;
    }
  }

  if (v11 > 1)
  {
    if (v11 != 2)
    {
      if (v11 == 3)
      {
        v44 = tre_stack_pop_int(v2);
        v14 = tre_stack_push_int(v2, 5u);
        if (v14)
        {
          goto LABEL_300;
        }

        v45 = v2;
        v46 = v44;
LABEL_88:
        v14 = tre_stack_push_int(v45, v46);
        if (v14)
        {
          goto LABEL_300;
        }

        v15 = v2;
        v16 = 4;
      }

      else
      {
        v13 = tre_stack_pop_int(v2);
        v14 = tre_stack_push_int(v2, 9u);
        if (v14)
        {
          goto LABEL_300;
        }

        v14 = tre_stack_push_int(v2, v13);
        if (v14)
        {
          goto LABEL_300;
        }

        v15 = v2;
        v16 = 1;
      }

LABEL_90:
      v14 = tre_stack_push_int(v15, v16);
      goto LABEL_300;
    }

    v37 = tre_stack_pop_int(v2);
    *(a1 + 84) = tre_stack_pop_int(v2);
    v38 = v200;
    if (*(v200 + 13) >> 30)
    {
      *(v200 + 13) = v37;
      if (v37 <= 0x3FFFFFFF)
      {
        v40 = *(v38 + 14);
LABEL_96:
        v12 = 0;
        *(v38 + 14) = v40 + 1;
        goto LABEL_381;
      }
    }

    else if (v37 <= 0x3FFFFFFF)
    {
      v39 = tre_ast_new_literal(*a1, -1, -1, -1);
      if (!v39)
      {
        return 12;
      }

      v38 = tre_ast_new_catenation(*a1, v39, v200);
      if (!v38)
      {
        return 12;
      }

      v40 = *(v200 + 14);
      v200 = v38;
      *(v38 + 13) = v37;
      *(v38 + 14) = v40;
      goto LABEL_96;
    }

    goto LABEL_380;
  }

  if (!v11)
  {
    v31 = tre_stack_pop_int(v2);
    v32 = *(a1 + 84);
    if ((v32 & 0x10) == 0 && (v32 & 0x101) != 0)
    {
      v14 = tre_stack_push_int(v2, 7u);
      if (v14)
      {
        goto LABEL_300;
      }
    }

    v14 = tre_stack_push_int(v2, v31);
    if (v14)
    {
      goto LABEL_300;
    }

    v15 = v2;
    v16 = 3;
    goto LABEL_90;
  }

  if (v11 != 1)
  {
    goto LABEL_381;
  }

  v21 = tre_stack_pop_int(v2);
  v22 = *(a1 + 24);
  v23 = *(a1 + 40);
  if (v22 >= v23 || (v24 = *(a1 + 84), (v24 & 0x10) != 0))
  {
LABEL_311:
    if (v9 && (v22 + 1) < v23 && *v22 == 92 && v22[1] == 69)
    {
      *(a1 + 84) &= ~v9;
      *(a1 + 24) = v22 + 2;
      if ((v22 + 2) < v23)
      {
        v115 = tre_stack_push_int(v2, 0);
        if (!v115)
        {
          v115 = tre_stack_push_int(v2, 1u);
        }

        v12 = v115;
        v9 = 0;
        goto LABEL_381;
      }

      v200 = tre_ast_new_literal(*a1, -1, -1, -1);
      if (!v200)
      {
        return 12;
      }

      v9 = 0;
      goto LABEL_380;
    }

    v116 = *(a1 + 84);
    if ((v116 & 0x10) == 0)
    {
      if (v22 >= v23)
      {
        if (v199 <= 0)
        {
          return 14;
        }

        else
        {
          return 8;
        }
      }

      if (v116)
      {
        v118 = *v22;
        if (*v22 <= 122)
        {
          if ((v118 - 42) < 2 || v118 == 63)
          {
            return 13;
          }
        }

        else if (v118 == 123)
        {
          v117 = 1;
LABEL_329:
          *(a1 + 24) = &v22[v117];
          v119 = tre_parse_bound(a1, 0);
          if (v119 != 1)
          {
            v5 = v119;
            if (v119)
            {
              return v5;
            }

            return 13;
          }

          v22 = (*(a1 + 24) - 4);
          *(a1 + 24) = v22;
          v116 = *(a1 + 84);
        }

        else if (v118 == 124)
        {
          return 14;
        }
      }

      else if ((v22 + 1) < v23 && *v22 == 92 && v22[1] == 123)
      {
        v117 = 2;
        goto LABEL_329;
      }
    }

    if ((v116 & 2) == 0)
    {
LABEL_336:
      v200 = tre_ast_new_literal(*a1, *v22, *v22, *(a1 + 68));
      if (!v200)
      {
        return 12;
      }

      goto LABEL_373;
    }

    v120 = *v22;
    if (v120 <= 0x7F)
    {
      v121 = &_DefaultRuneLocale;
      goto LABEL_348;
    }

    v122 = *(a1 + 48);
    if (v120 < 0x100)
    {
      v124 = &__global_locale;
      if (v122 != -1)
      {
        v124 = *(a1 + 48);
      }

      if (!v122)
      {
        v124 = v10;
      }

      v121 = *(v124[166] + 120);
LABEL_348:
      if ((v121->__runetype[v120] & 0x8000) == 0)
      {
        goto LABEL_349;
      }
    }

    else
    {
      v123 = ___runetype_l(v120, v122);
      v22 = *(a1 + 24);
      if (v123 < 0)
      {
        goto LABEL_360;
      }

LABEL_349:
      v125 = *v22;
      if (v125 <= 0x7F)
      {
        v126 = &_DefaultRuneLocale;
        goto LABEL_358;
      }

      v127 = *(a1 + 48);
      if (v125 < 0x100)
      {
        v129 = &__global_locale;
        if (v127 != -1)
        {
          v129 = *(a1 + 48);
        }

        if (!v127)
        {
          v129 = v10;
        }

        v126 = *(v129[166] + 120);
LABEL_358:
        v128 = v126->__runetype[v125];
      }

      else
      {
        LOWORD(v128) = ___runetype_l(v125, v127);
        v22 = *(a1 + 24);
      }

      if ((v128 & 0x1000) == 0)
      {
        goto LABEL_336;
      }
    }

LABEL_360:
    v130 = *a1;
    v131 = *v22;
    if (v131 <= 0x7F)
    {
      v132 = _DefaultRuneLocale.__mapupper[v131];
      goto LABEL_363;
    }

    v132 = ___toupper_l(v131, *(a1 + 48));
    LODWORD(v131) = **(a1 + 24);
    if (v131 > 0x7F)
    {
      v133 = ___toupper_l(v131, *(a1 + 48));
    }

    else
    {
LABEL_363:
      v133 = _DefaultRuneLocale.__mapupper[v131];
    }

    v134 = tre_ast_new_literal(v130, v132, v133, *(a1 + 68));
    if (!v134)
    {
      return 12;
    }

    v135 = v134;
    v136 = *a1;
    v137 = **(a1 + 24);
    if (v137 <= 0x7F)
    {
      v138 = _DefaultRuneLocale.__maplower[v137];
      goto LABEL_369;
    }

    v138 = ___tolower_l(v137, *(a1 + 48));
    LODWORD(v137) = **(a1 + 24);
    if (v137 > 0x7F)
    {
      v139 = ___tolower_l(v137, *(a1 + 48));
    }

    else
    {
LABEL_369:
      v139 = _DefaultRuneLocale.__maplower[v137];
    }

    v140 = tre_ast_new_literal(v136, v138, v139, *(a1 + 68));
    if (!v140)
    {
      return 12;
    }

    v200 = tre_ast_new_union(*a1, v135, v140);
    if (!v200)
    {
      return 12;
    }

LABEL_373:
    v12 = 0;
    v109 = *(a1 + 68) + 1;
LABEL_374:
    *(a1 + 68) = v109;
LABEL_375:
    v41 = *(a1 + 24);
    goto LABEL_376;
  }

  v25 = *v22;
  if (*v22 <= 45)
  {
    if (v25 == 36)
    {
      if (v24)
      {
        goto LABEL_384;
      }

      if ((v22 + 2) < v23 && v22[1] == 92)
      {
        if (v22[2] == 41)
        {
          goto LABEL_384;
        }
      }

      else if (v22 + 1 == v23)
      {
LABEL_384:
        v54 = *a1;
        v55 = 2;
LABEL_385:
        v200 = tre_ast_new_literal(v54, -2, v55, -1);
        if (!v200)
        {
          return 12;
        }

        v12 = 0;
        goto LABEL_375;
      }
    }

    else if (v25 == 40)
    {
      if ((~v24 & 0x101) == 0 && v22[1] == 63)
      {
        v67 = v22 + 2;
        v68 = v22 + 3;
        v69 = 1;
        v70 = *(a1 + 84);
        while (1)
        {
          v71 = *v67;
          if (*v67 > 84)
          {
            switch(v71)
            {
              case 'U':
                v70 = v70 & 0xFFFFFFBF | ((v69 != 0) << 6);
                break;
              case 'i':
                v70 = v70 & 0xFFFFFFFD | (2 * (v69 != 0));
                break;
              case 'n':
                v70 = v70 & 0xFFFFFFF7 | (8 * (v69 != 0));
                break;
              default:
                goto LABEL_521;
            }
          }

          else
          {
            if (v71 <= 44)
            {
              if (v71 == 35)
              {
                *(a1 + 24) = v67;
                do
                {
                  if ((v68 - 1) >= v23)
                  {
                    return 2;
                  }

                  *(a1 + 24) = v68;
                  v154 = *v68++;
                }

                while (v154 != 41);
                v67 = v68 - 1;
                if ((v68 - 1) >= v23)
                {
                  return 2;
                }
              }

              else
              {
                if (v71 != 41)
                {
                  goto LABEL_521;
                }

                *(a1 + 24) = v67;
              }

              *(a1 + 24) = v67 + 1;
              v146 = tre_stack_push_int(v2, 0);
              if (!v146)
              {
                v147 = v2;
                v148 = 1;
                goto LABEL_433;
              }

LABEL_434:
              v12 = v146;
              goto LABEL_381;
            }

            if (v71 != 45)
            {
              if (v71 == 58)
              {
                *(a1 + 24) = v67 + 1;
                ++v199;
                v146 = tre_stack_push_int(v2, v24);
                if (!v146)
                {
                  v146 = tre_stack_push_int(v2, *(a1 + 64));
                  if (!v146)
                  {
                    v146 = tre_stack_push_int(v2, 2u);
                    if (!v146)
                    {
                      ++*(a1 + 64);
                      v146 = tre_stack_push_int(v2, 0);
                      if (!v146)
                      {
                        v147 = v2;
                        v148 = 0;
LABEL_433:
                        v146 = tre_stack_push_int(v147, v148);
                        if (!v146)
                        {
                          v12 = 0;
                          *(a1 + 84) = v70;
                          goto LABEL_381;
                        }
                      }
                    }
                  }
                }

                goto LABEL_434;
              }

LABEL_521:
              *(a1 + 24) = v67;
              return 13;
            }

            v69 = 0;
          }

          ++v67;
          ++v68;
        }
      }

      if (v24)
      {
        v61 = *(a1 + 24);
LABEL_296:
        *(a1 + 24) = v61 + 1;
        v14 = tre_stack_push_int(v2, v24);
        if (!v14)
        {
          v14 = tre_stack_push_int(v2, *(a1 + 60));
          if (!v14)
          {
            v14 = tre_stack_push_int(v2, 2u);
            if (!v14)
            {
              v14 = tre_stack_push_int(v2, (*(a1 + 84) & 1) == 0);
              if (!v14)
              {
                v12 = tre_stack_push_int(v2, 0);
                if (!v12)
                {
                  ++*(a1 + 60);
                  ++v199;
                }

                goto LABEL_381;
              }
            }
          }
        }

LABEL_300:
        v12 = v14;
        goto LABEL_381;
      }
    }

    else if (v25 == 41 && (v24 & 1) != 0 && v199 > 0)
    {
      goto LABEL_102;
    }

    goto LABEL_311;
  }

  if (v25 > 91)
  {
    if (v25 != 92)
    {
      if (v25 == 94 && (*(a1 + 84) & 1 | v21 || v22 == *(a1 + 32)))
      {
        v54 = *a1;
        v55 = 1;
        goto LABEL_385;
      }

      goto LABEL_311;
    }

    if ((v24 & 1) == 0)
    {
      v61 = v22 + 1;
      if ((v22 + 1) < v23)
      {
        v62 = *v61;
        if (*v61 == 40)
        {
          goto LABEL_296;
        }

        if (v62 == 41)
        {
          *(a1 + 24) = v61;
          if (!v199)
          {
            return 8;
          }

LABEL_102:
          v200 = tre_ast_new_literal(*a1, -1, -1, -1);
          if (!v200)
          {
            return 12;
          }

          if (*(a1 + 84))
          {
            goto LABEL_421;
          }

          v12 = 0;
          *(a1 + 24) -= 4;
          goto LABEL_381;
        }

        if (v62 == 123)
        {
          goto LABEL_311;
        }
      }
    }

    v63 = v22 + 1;
    if ((v22 + 1) >= v23)
    {
      return 5;
    }

    if ((v24 & 0x100) == 0)
    {
      *(a1 + 24) = v63;
LABEL_181:
      if ((v24 & 0x101) == 1 || (v64 = iswdigit_l(*v63, *(a1 + 48)), v63 = *(a1 + 24), !v64) || (v65 = *v63 - 48, *v63 == 48))
      {
        v66 = tre_ast_new_literal(*a1, *v63, *v63, *(a1 + 68));
        v200 = v66;
        ++*(a1 + 68);
      }

      else
      {
        v66 = tre_ast_new_literal(*a1, -4, *v63 - 48, *(a1 + 68));
        v200 = v66;
        if (!v66)
        {
          return 12;
        }

        v155 = *(a1 + 64);
        *(v66 + 13) = v155.i32[0];
        *(a1 + 64) = vadd_s32(v155, 0x100000001);
        v156 = *(a1 + 72);
        v157 = *(a1 + 76) + 1;
        if (v65 > v156)
        {
          v156 = v65;
        }

        *(a1 + 72) = v156;
        *(a1 + 76) = v157;
      }

      goto LABEL_185;
    }

    tre_expand_macro(v22 + 1, *(a1 + 40), __str);
    if (*__str)
    {
      v110 = *(a1 + 80);
      *(&v204._mbstateL + 4) = *(a1 + 64);
      *(&v204._mbstateL + 5) = v110;
      v111 = *(a1 + 112);
      *(&v204._mbstateL + 6) = *(a1 + 96);
      *(&v204._mbstateL + 7) = v111;
      v112 = *(a1 + 16);
      *v204.__mbstate8 = *a1;
      *(&v204._mbstateL + 1) = v112;
      v113 = *(a1 + 48);
      *(&v204._mbstateL + 2) = *(a1 + 32);
      *(&v204._mbstateL + 3) = v113;
      *(&v204._mbstateL + 3) = __str;
      *(&v204._mbstateL + 14) = wcslen(__str);
      *(&v204._mbstateL + 22) = 1;
      v114 = tre_parse(&v204);
      if (v114)
      {
        return v114;
      }

      v12 = 0;
      *(a1 + 24) += 8;
      *(a1 + 68) = *(&v204._mbstateL + 17);
      v200 = *(&v204._mbstateL + 2);
      goto LABEL_381;
    }

    v145 = *v63;
    if (*v63 == 81)
    {
      *(a1 + 84) = v24 | 0x10;
      v9 = v9 | 0x10;
      *(a1 + 24) = v22 + 2;
      v146 = tre_stack_push_int(v2, 0);
      if (!v146)
      {
        v146 = tre_stack_push_int(v2, 1u);
      }

      goto LABEL_434;
    }

    *(a1 + 24) = v63;
    if (v145 > 65)
    {
      switch(v145)
      {
        case 'B':
          v66 = tre_ast_new_literal(*a1, -2, 64, -1);
          v200 = v66;
          *(a1 + 24) += 4;
          break;
        case 'x':
          v63 = v22 + 2;
          v178 = v22[2];
          *(a1 + 24) = v22 + 2;
          if (v178 == 123 || v63 >= v23)
          {
            if (v63 >= v23)
            {
              goto LABEL_181;
            }

            v186 = v22 + 3;
            *(a1 + 24) = v22 + 3;
            if ((v23 - (v22 + 3)) < 0)
            {
              v188 = 0;
            }

            else
            {
              v187 = 0;
              do
              {
                if (v187 == 32)
                {
                  return 9;
                }

                if (*v186 == 125)
                {
                  break;
                }

                if (!iswxdigit_l(*v186, *(a1 + 48)))
                {
                  return 9;
                }

                v63 = *(a1 + 24);
                v186 = v63 + 1;
                __str[v187++] = *v63;
                *(a1 + 24) = v63 + 1;
              }

              while ((*(a1 + 40) - (v63 + 1)) >= 0);
              v188 = v187;
            }

            *(a1 + 24) = v63 + 2;
            __str[v188] = 0;
          }

          else
          {
            __str[2] = 0;
            *__str = 0;
            v179 = iswxdigit_l(v178, *(a1 + 48));
            v180 = *(a1 + 24);
            if (v179 && v180 < *(a1 + 40))
            {
              v181 = *v180++;
              __str[0] = v181;
              *(a1 + 24) = v180;
            }

            if (iswxdigit_l(*v180, *(a1 + 48)))
            {
              v182 = *(a1 + 24);
              if (v182 < *(a1 + 40))
              {
                __str[1] = *v182;
                *(a1 + 24) = v182 + 1;
              }
            }
          }

          v189 = strtol(__str, 0, 16);
          v66 = tre_ast_new_literal(*a1, v189, v189, *(a1 + 68));
          v200 = v66;
          ++*(a1 + 68);
          break;
        case 'b':
          v152 = *a1;
          v153 = 32;
LABEL_474:
          v66 = tre_ast_new_literal(v152, -2, v153, -1);
          v200 = v66;
LABEL_185:
          *(a1 + 24) += 4;
          break;
        default:
          goto LABEL_181;
      }

      if (!v66)
      {
        return 12;
      }

      goto LABEL_380;
    }

    if (v145 == 60)
    {
      v152 = *a1;
      v153 = 8;
    }

    else
    {
      if (v145 != 62)
      {
        goto LABEL_181;
      }

      v152 = *a1;
      v153 = 16;
    }

    goto LABEL_474;
  }

  if (v25 == 46)
  {
    v58 = *a1;
    v59 = *(a1 + 68);
    if ((v24 & 8) != 0)
    {
      v106 = tre_ast_new_literal(v58, 0, 9, v59);
      if (!v106)
      {
        return 12;
      }

      v107 = v106;
      v108 = tre_ast_new_literal(*a1, 11, 0x7FFFFFFF, *(a1 + 68) + 1);
      if (!v108)
      {
        return 12;
      }

      v200 = tre_ast_new_union(*a1, v107, v108);
      if (!v200)
      {
        return 12;
      }

      v60 = 2;
    }

    else
    {
      v200 = tre_ast_new_literal(v58, 0, 0x7FFFFFFF, v59);
      if (!v200)
      {
        return 12;
      }

      v60 = 1;
    }

    v12 = 0;
    v109 = *(a1 + 68) + v60;
    goto LABEL_374;
  }

  if (v25 != 91)
  {
    goto LABEL_311;
  }

  *(a1 + 24) = v22 + 1;
  if ((v23 - (v22 + 1)) >= 21 && v22[1] == 91 && v22[2] == 58)
  {
    v26 = v22[3];
    if ((v26 | 2) == 0x3E && v22[4] == 58 && v22[5] == 93 && v22[6] == 93)
    {
      if (v26 == 60)
      {
        v27 = 8;
      }

      else
      {
        v27 = 16;
      }

      v28 = tre_ast_new_literal(*a1, -2, v27, -1);
      v200 = v28;
      *(a1 + 24) += 24;
      if (v28)
      {
        goto LABEL_421;
      }

      return 12;
    }
  }

  v72 = malloc_type_calloc(1uLL, 0x108uLL, 0x100004000313F17uLL);
  v201 = v72;
  if (!v72)
  {
    return 12;
  }

  v73 = *(a1 + 24);
  if (*v73 == 94)
  {
    v72[1] |= 1u;
    *(a1 + 24) = ++v73;
  }

  v74 = *(a1 + 40);
  v203 = 32;
  if (v73 >= v74)
  {
    v5 = 7;
    goto LABEL_418;
  }

  v196 = v10;
  ptr = 0;
  *&v193[8] = 0;
  v194 = 0;
  v198 = 0;
  v75 = 0;
  v76 = 0;
  *v193 = v72[1];
  LODWORD(v5) = -1;
  while (2)
  {
    v77 = *v73;
    if (v77 == 93)
    {
      if (v73 != *(a1 + 24))
      {
        if (v198)
        {
          if (ptr)
          {
            *ptr = v73 + 1;
            *(ptr + 2) = v76;
            *v194 = 0;
            v211 = 0u;
            v212 = 0u;
            v209 = 0u;
            v210 = 0u;
            v207 = 0u;
            v208 = 0u;
            *__str = 0u;
            v206 = 0u;
            free(v201);
            v158 = malloc_type_malloc(*ptr - *(a1 + 24) + 8, 0x100004052888210uLL);
            v159 = ptr;
            if (v158)
            {
              v160 = v158;
              if (*(ptr + 2) >= 1)
              {
                *v158 = 91;
                v161 = v158 + 1;
                v162 = *(a1 + 24);
                v163 = *(ptr + 2);
                if (v163)
                {
                  v164 = (ptr + 32);
                  do
                  {
                    v165 = (v163 - v162) >> 2;
                    if (v165 >= 3)
                    {
                      v166 = 4 * v165 - 8;
                      j__mkdtempat_np(v161, v162);
                      v161 = (v161 + v166);
                      v163 = *(v164 - 2);
                    }

                    v162 = (v163 + 4 * *(v164 - 2) + 8);
                    v167 = *v164;
                    v164 += 2;
                    v163 = v167;
                  }

                  while (v167);
                }

                v168 = *ptr - v162;
                j__mkdtempat_np(v161, v162);
                v169 = (v161 + v168);
                v159 = ptr;
                *v169 = 124;
                v160 = (v169 + 1);
              }

              v170 = *(v159 + 2);
              if (v170)
              {
                j__mkdtempat_np(v160, v170);
                v160 += 4 * *(ptr + 6);
                v171 = *(ptr + 4);
                if (v171)
                {
                  v172 = (ptr + 40);
                  do
                  {
                    *v160 = 124;
                    v173 = v160 + 4;
                    j__mkdtempat_np(v173, v171);
                    v160 = &v173[*v172];
                    v171 = *(v172 + 1);
                    v172 += 4;
                  }

                  while (v171);
                }
              }

              *v160 = 0;
              v174 = *(a1 + 80);
              v209 = *(a1 + 64);
              v210 = v174;
              v175 = *(a1 + 112);
              v211 = *(a1 + 96);
              v212 = v175;
              v176 = *(a1 + 16);
              *__str = *a1;
              v206 = v176;
              v177 = *(a1 + 48);
              v207 = *(a1 + 32);
              v208 = v177;
              *(&v206 + 1) = v158;
              DWORD2(v208) = (v160 - v158) >> 2;
              DWORD2(v210) = 1;
              DWORD1(v210) |= 1u;
              v5 = tre_parse(__str);
              free(v158);
              if (v5)
              {
                free(ptr);
              }

              else
              {
                *(a1 + 24) = *ptr;
                *(a1 + 68) = DWORD1(v209);
                free(ptr);
                v200 = v206;
              }
            }

            else
            {
              free(ptr);
              v5 = 12;
            }

            v10 = v196;
            goto LABEL_420;
          }
        }

        else
        {
          if (!v5)
          {
            v85 = tre_new_item(1, v75, &v203, &v201);
            if (v85)
            {
LABEL_495:
              v5 = v85;
              goto LABEL_414;
            }
          }

          *(a1 + 24) = v73 + 1;
        }

        v183 = tre_ast_new_literal(*a1, 0, 0x7FFFFFFF, *(a1 + 68));
        v150 = v183;
        v151 = v201;
        if (v183 && (v184 = *v183, v185 = tre_mem_alloc_impl(*a1, 0, 0, 0, 8 * *v201 + 8), (*(v184 + 16) = v185) != 0))
        {
          j__mkdtempat_np(v185, v151);
          v5 = 0;
        }

        else
        {
          v5 = 12;
        }

        v10 = v196;
        goto LABEL_419;
      }

      LODWORD(v5) = 0;
      ++v76;
      v75 = 93;
      goto LABEL_263;
    }

    if (v77 != 91)
    {
      if (v77 == 45)
      {
        if (v73 == *(a1 + 24))
        {
          LODWORD(v5) = 0;
          ++v76;
          v75 = 45;
        }

        else
        {
          if (v5 > 0)
          {
            LODWORD(v77) = 45;
            goto LABEL_241;
          }

          if ((v73 + 1) >= v74)
          {
            goto LABEL_413;
          }

          if (v73[1] == 93)
          {
            v77 = 45;
            goto LABEL_249;
          }

          if ((v5 & 0x80000000) != 0)
          {
LABEL_475:
            v5 = 11;
            goto LABEL_414;
          }

          LODWORD(v5) = 1;
        }

LABEL_263:
        if (++v73 >= v74)
        {
LABEL_413:
          v5 = 7;
          goto LABEL_414;
        }

        continue;
      }

LABEL_240:
      if (v5 >= 1)
      {
LABEL_241:
        v89 = v9;
        v90 = v75;
        if (__collate_range_cmp(v75, v77, *(a1 + 48)) > 0)
        {
          v5 = 11;
        }

        else
        {
          if (v198 || (v91 = tre_new_item(2, v90, &v203, &v201), !v91) && (v91 = tre_new_item(3, v77, &v203, &v201), !v91))
          {
            LODWORD(v5) = -1;
            v75 = v90;
            v9 = v89;
LABEL_262:
            ++v76;
            goto LABEL_263;
          }

          v5 = v91;
        }

        v149 = ptr;
        v9 = v89;
        goto LABEL_415;
      }

LABEL_249:
      if (v198)
      {
        LODWORD(v5) = 0;
      }

      else
      {
        if (v5)
        {
          LODWORD(v5) = 0;
        }

        else
        {
          v5 = tre_new_item(1, v75, &v203, &v201);
          if (v5)
          {
            goto LABEL_414;
          }
        }

        v75 = v77;
      }

      goto LABEL_262;
    }

    break;
  }

  v78 = (v73 + 1);
  if ((v73 + 1) >= v74)
  {
    goto LABEL_413;
  }

  v195 = v76;
  v79 = *v78;
  if (*v78 != 61 && v79 != 58)
  {
    if (v79 != 46)
    {
      v77 = 91;
      v76 = v195;
      goto LABEL_240;
    }

    v80 = (v73 + 2);
    if ((v73 + 2) >= v74)
    {
      goto LABEL_405;
    }

    v81 = 0;
    v73 += 3;
    while (1)
    {
      if (*(v73 - 1) == 46)
      {
        if (v73 >= v74)
        {
          goto LABEL_405;
        }

        if (*v73 == 93)
        {
          break;
        }
      }

      v81 += 4;
      v82 = v73++ >= v74;
      if (v82)
      {
        goto LABEL_405;
      }
    }

    v192 = v75;
    if (v81)
    {
      v96 = tre_search_cnames(v80, v81 >> 2);
      if (v96 != -1)
      {
        v77 = v96;
LABEL_279:
        v76 = v195;
        v9 = v9;
        v75 = v192;
        goto LABEL_240;
      }

      if (!__collate_equiv_value(*(a1 + 48), v80, v81 >> 2))
      {
        goto LABEL_498;
      }

      if (v81 == 4)
      {
        v77 = *v80;
        goto LABEL_279;
      }

      if (v193[0])
      {
        goto LABEL_498;
      }

      if (v5 <= 0)
      {
        v102 = *&v193[4];
        v101 = v194;
        if (!v194)
        {
          ptr = malloc_type_malloc(0x120uLL, 0x1050040DB1D6C16uLL);
          if (!ptr)
          {
            goto LABEL_506;
          }

          v101 = (ptr + 16);
          v102 = 16;
        }

        v103 = v102;
        if (v102 >= (v101 - ptr) >> 4)
        {
          *&v193[4] = v102;
        }

        else
        {
          v104 = (2 * v102);
          v105 = malloc_type_realloc(ptr, 16 * v104 + 32, 0x1050040DB1D6C16uLL);
          if (!v105)
          {
            free(ptr);
LABEL_506:
            v5 = 12;
            v10 = v196;
            v9 = v9;
            goto LABEL_418;
          }

          v101 = &v105[16 * v103 + 16];
          *&v193[4] = v104;
          ptr = v105;
        }

        *v101 = v80;
        *(v101 + 8) = v81 >> 2;
        v194 = (v101 + 16);
        v198 = 1;
        LODWORD(v5) = -1;
        v76 = v195;
        v9 = v9;
        v75 = v192;
        goto LABEL_263;
      }

      v5 = 11;
    }

    else
    {
LABEL_498:
      v5 = 3;
    }

    v149 = ptr;
    v9 = v9;
    goto LABEL_415;
  }

  if (v5 > 0)
  {
    goto LABEL_475;
  }

  if (!(v5 | v198))
  {
    v83 = v9;
    v84 = v75;
    v85 = tre_new_item(1, v75, &v203, &v201);
    v75 = v84;
    v9 = v83;
    if (v85)
    {
      goto LABEL_495;
    }
  }

  v86 = (v73 + 2);
  if ((v73 + 2) < v74)
  {
    v87 = 0;
    v88 = 0;
    v73 += 3;
    while (1)
    {
      if (*(v73 - 1) == v79)
      {
        if (v73 >= v74)
        {
          goto LABEL_396;
        }

        if (*v73 == 93)
        {
          break;
        }
      }

      v88 += 0x100000000;
      v87 += 4;
      v82 = v73++ >= v74;
      if (v82)
      {
        goto LABEL_396;
      }
    }

    if (v87)
    {
      if (v79 == 61)
      {
        v191 = v75;
        v92 = v87 >> 2;
        v93 = __collate_equiv_value(*(a1 + 48), v86, v87 >> 2);
        v76 = v195;
        if (!v93)
        {
          v100 = tre_search_cnames(v86, v92);
          if (v100 == -1)
          {
LABEL_405:
            v5 = 3;
            goto LABEL_414;
          }

          LODWORD(v5) = 0;
          if (v198)
          {
            v75 = v191;
          }

          else
          {
            v75 = v100;
          }

          goto LABEL_262;
        }

        v75 = v191;
        if (!v198)
        {
          v94 = v93;
          v95 = 5;
          goto LABEL_274;
        }
      }

      else
      {
        v76 = v195;
        if (!v198)
        {
          v191 = v75;
          v97 = v88 >> 32;
          if ((v87 + 8) >= 0x108)
          {
            v98 = 63;
          }

          else
          {
            v98 = v97;
          }

          wcsncpy(__str, v86, v98);
          *&__str[4 * v98] = 0;
          v202 = __str;
          memset(&v204, 0, sizeof(v204));
          v213[wcsrtombs_l(v213, &v202, 0x40uLL, &v204, *(a1 + 48))] = 0;
          v99 = wctype_l(v213, *(a1 + 48));
          if (!v99)
          {
            v5 = 4;
            goto LABEL_414;
          }

          v94 = v99;
          v95 = 4;
LABEL_274:
          v85 = tre_new_item(v95, v94, &v203, &v201);
          v75 = v191;
          if (v85)
          {
            goto LABEL_495;
          }
        }
      }

      ++v76;
      LODWORD(v5) = -1;
      goto LABEL_263;
    }
  }

LABEL_396:
  if (v79 == 61)
  {
    v5 = 3;
  }

  else
  {
    v5 = 4;
  }

LABEL_414:
  v149 = ptr;
LABEL_415:
  if (v149)
  {
    free(v149);
  }

  v10 = v196;
LABEL_418:
  v150 = 0;
  v151 = v201;
LABEL_419:
  free(v151);
  ++*(a1 + 68);
  v200 = v150;
LABEL_420:
  if (!v5)
  {
LABEL_421:
    v12 = 0;
    goto LABEL_381;
  }

  return v5;
}

uint64_t tre_stack_push(int *a1, uint64_t a2)
{
  v4 = a1[3];
  v5 = *a1;
  if (v4 >= *a1)
  {
    v8 = a1[1];
    for (i = 12; v5 < v8; v8 = a1[1])
    {
      if (a1[2] + v5 >= v8)
      {
        v5 = v8;
      }

      else
      {
        v5 += a1[2];
      }

      v6 = malloc_type_realloc(*(a1 + 2), 8 * v5, 0x108204023715A0EuLL);
      if (!v6)
      {
        break;
      }

      *a1 = v5;
      *(a1 + 2) = v6;
      v4 = a1[3];
      if (v4 < v5)
      {
        goto LABEL_3;
      }

      i = 0;
    }
  }

  else
  {
    v6 = *(a1 + 2);
LABEL_3:
    i = 0;
    v6[v4] = a2;
    ++a1[3];
  }

  return i;
}

uint64_t tre_stack_pop_int(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 12) - 1;
  *(a1 + 12) = v2;
  return *(v1 + 8 * v2);
}

char *tre_ast_new_literal(uint64_t a1, int a2, int a3, int a4)
{
  result = tre_ast_new_node(a1, 0, 0x18uLL);
  if (result)
  {
    v8 = *result;
    *v8 = a2;
    v8[1] = a3;
    v8[2] = a4;
  }

  return result;
}

char *tre_ast_new_node(uint64_t a1, int a2, size_t a3)
{
  v6 = tre_mem_alloc_impl(a1, 0, 0, 1, 0x48uLL);
  if (v6)
  {
    v7 = tre_mem_alloc_impl(a1, 0, 0, 1, a3);
    *v6 = v7;
    if (v7)
    {
      *(v6 + 32) = -1;
      *(v6 + 12) = a2;
      *(v6 + 13) = -1;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

char *tre_mem_alloc_impl(uint64_t a1, int a2, char *a3, int a4, size_t a5)
{
  if (*(a1 + 32))
  {
    return 0;
  }

  v9 = *(a1 + 24);
  if (v9 >= a5)
  {
    v5 = *(a1 + 16);
    goto LABEL_8;
  }

  if (!a2)
  {
    if (8 * a5 <= 0x400)
    {
      v9 = 1024;
    }

    else
    {
      v9 = 8 * a5;
    }

    v11 = malloc_type_malloc(0x10uLL, 0xA0040BD48D6D6uLL);
    if (v11)
    {
      v12 = v11;
      v5 = malloc_type_malloc(v9, 0x22FDCA8EuLL);
      *v12 = v5;
      if (v5)
      {
        v12[1] = 0;
        v13 = *(a1 + 8);
        if (v13)
        {
          *(v13 + 8) = v12;
        }

        if (!*a1)
        {
          *a1 = v12;
        }

        *(a1 + 8) = v12;
        goto LABEL_8;
      }

      free(v12);
    }

    else
    {
      v5 = 0;
    }

LABEL_25:
    *(a1 + 32) = 1;
    return v5;
  }

  v5 = a3;
  if (!a3)
  {
    goto LABEL_25;
  }

  v9 = 1024;
LABEL_8:
  if (((v5 + a5) & 7) != 0)
  {
    v10 = 8 - ((v5 + a5) & 7);
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 16) = &v5[v10 + a5];
  *(a1 + 24) = v9 - (v10 + a5);
  if (a4)
  {
    MEMORY[0x193AD5FD0](v5);
  }

  return v5;
}

char *tre_ast_new_catenation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = tre_ast_new_node(a1, 1, 0x10uLL);
  if (result)
  {
    v6 = *result;
    *v6 = a2;
    v6[1] = a3;
    *(result + 14) = *(a3 + 56) + *(a2 + 56);
  }

  return result;
}

uint64_t tre_stack_pop_voidptr(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 12) - 1;
  *(a1 + 12) = v2;
  return *(v1 + 8 * v2);
}

uint64_t tre_add_tags(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v8 = tre_stack_num_objects(a2);
  if (a1)
  {
    *(a4 + 88) = 0;
    **(a4 + 40) = -1;
  }

  v9 = malloc_type_malloc(4 * (2 * (*(a4 + 76) + *(a4 + 72)) + 2), 0x100004052888210uLL);
  if (!v9)
  {
    return 12;
  }

  v10 = v9;
  *v9 = -1;
  if (a1)
  {
    v11 = malloc_type_malloc(4 * (*(a4 + 80) + 2 * *(a4 + 104) + 1), 0x100004052888210uLL);
    if (!v11)
    {
      v13 = 12;
      goto LABEL_410;
    }

    v12 = v11;
    v215 = &v11[2 * *(a4 + 104) + 1];
  }

  else
  {
    v215 = 0;
    v12 = 0;
  }

  v213 = a3;
  tre_stack_push_voidptr(a2, a3);
  v13 = tre_stack_push_int(a2, 0);
  v14 = tre_stack_num_objects(a2);
  v15 = v13 != 0;
  v220 = v8;
  v221 = 2;
  v224 = a1;
  v218 = v10;
  v219 = v12;
  v225 = 0;
  if (v14 <= v8)
  {
    v217 = v12;
    v216 = 0;
    LODWORD(v222) = 0;
    v16 = v10;
    goto LABEL_288;
  }

  v217 = v12;
  v216 = 0;
  LODWORD(v222) = 0;
  v16 = v10;
  if (v13)
  {
    goto LABEL_288;
  }

  v226 = 0;
  v222 = 0;
  v216 = 0;
  v225 = 0;
  v17 = 1;
  v223 = -1;
  v16 = v218;
  v217 = v12;
  v221 = 2;
  v214 = a4;
  do
  {
    v18 = tre_stack_pop_int(a2);
    if (v18 <= 3)
    {
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          --v16;
          do
          {
            v24 = v16[1];
            ++v16;
          }

          while (v24 != -1);
LABEL_26:
          v226 = 0;
          goto LABEL_161;
        }

        v36 = tre_stack_pop_voidptr(a2);
        v37 = v36;
        v38 = *(v36 + 40);
        if (!v38)
        {
          v38 = v36;
        }

        v39 = *v38;
        v40 = tre_stack_pop_int(a2);
        v41 = v223;
        if (v39[16])
        {
          v41 = v40;
        }

        v223 = v41;
        v42 = *v39;
        if (!a1)
        {
          v89 = *(v42 + 60);
          v13 = 0;
          *(v37 + 60) = tre_stack_pop_int(a2) + v89;
          goto LABEL_211;
        }

        v43 = *(v42 + 8);
        if (v43 && *(v43 + 24) >= 1)
        {
          if (v222 >> 3 < 0)
          {
LABEL_53:
            LODWORD(v44) = -1;
          }

          else
          {
            v44 = 0;
            v45 = (v43 + 40);
            while (1)
            {
              v47 = *v45++;
              v46 = v47;
              if (v47)
              {
                break;
              }

              v44 += 8;
              if (8 * ((v222 >> 3) + 1) == v44)
              {
                goto LABEL_53;
              }
            }

            if ((v46 & 1) == 0)
            {
              do
              {
                v109 = v46;
                LODWORD(v44) = v44 + 1;
                v46 >>= 1;
              }

              while ((v109 & 2) == 0);
            }
          }

          *(v43 + 20) = v44;
          v48 = tre_mem_alloc_impl(a1, 0, 0, 1, ((*(a4 + 80) + 7) >> 3) + 80);
          if (!v48)
          {
LABEL_255:
            v13 = 12;
            goto LABEL_256;
          }

          *(v48 + 1) = v43;
          v49 = *(v43 + 20);
          *(v48 + 4) = 1;
          *(v48 + 5) = v49;
          v50 = *(v43 + 36);
          *(v48 + 8) = v50;
          *(v48 + 14) = 1;
          v51 = *(v43 + 28);
          v52 = vadd_s32(v51, 0x100000001);
          v51.i32[1] = v52.i32[1];
          *(v48 + 6) = v48;
          *(v48 + 3) = v51;
          *(v48 + 68) = v52;
          *(v48 + 19) = v50;
          v42 = *v39;
          *(*v39 + 8) = v48 + 40;
        }

        v53 = tre_merge_branches(a1, v37, v42, 0, *(a4 + 80));
        if (!v53)
        {
          v8 = v220;
          if (v39[16])
          {
            if (!*(v39 + 2) && *(v39 + 3) <= 1)
            {
              v107 = tre_ast_new_literal(a1, -1, -1, -1);
              if (v107)
              {
                v108 = tre_ast_new_union(a1, v107, *v39);
                if (v108)
                {
                  v221 = 0;
                  v13 = 0;
                  *v39 = v108;
                  goto LABEL_211;
                }
              }

              goto LABEL_159;
            }

            v221 = 0;
LABEL_161:
            v13 = 0;
            goto LABEL_211;
          }

          v13 = 0;
          goto LABEL_249;
        }

        v13 = v53;
LABEL_256:
        v26 = v17;
        v8 = v220;
        goto LABEL_212;
      }

      if (v18)
      {
        if (v18 != 1)
        {
          goto LABEL_161;
        }

        v23 = 1;
      }

      else
      {
        v23 = 0;
      }

      v28 = tre_stack_pop_voidptr(a2);
      v29 = *(v28 + 13);
      if ((v29 & 0x80000000) == 0)
      {
        v30 = 0;
        do
        {
          v31 = v16[v30++];
        }

        while (v31 != -1);
        v16[v30 - 1] = 2 * v29;
        v16[v30] = -1;
        v226 |= 1u;
        tre_stack_push_voidptr(a2, v28);
        v32 = tre_stack_push_int(a2, v29);
        if (v32 || (v32 = tre_stack_push_int(a2, 7u), v32))
        {
LABEL_41:
          v13 = v32;
          goto LABEL_110;
        }
      }

      v33 = *(v28 + 12);
      if (v33 <= 1)
      {
        if (!v33)
        {
          v91 = *v28;
          v92 = **v28;
          if ((v92 & 0x80000000) == 0 || v92 == -4 || v92 == -1)
          {
            a1 = v224;
            if (!v226)
            {
              goto LABEL_26;
            }
          }

          else
          {
            v13 = 0;
            a1 = v224;
            if (v92 != -2 || !v226)
            {
              goto LABEL_211;
            }
          }

          if (a1)
          {
            v58 = tre_merge_branches(a1, v28, 0, v225, *(a4 + 80));
            if (v58)
            {
              goto LABEL_210;
            }

            v58 = tre_add_tag_left(a1, v28, v225);
            if (v58)
            {
              goto LABEL_210;
            }

            if (v226 == 1)
            {
              v93 = 2;
            }

            else
            {
              v93 = v221;
            }

            *(*(a4 + 32) + 4 * v225) = v93;
            v94 = *v16;
            if (*v16 != -1)
            {
              v95 = v16 + 1;
              do
              {
                if ((v94 & 0x80000000) == 0)
                {
                  if (v94)
                  {
                    v96 = (*(a4 + 24) + 8 * (v94 >> 1) + 4);
                  }

                  else
                  {
                    v96 = (*(a4 + 24) + 8 * (v94 >> 1));
                  }

                  *v96 = v225;
                }

                v97 = *v95++;
                v94 = v97;
              }

              while (v97 != -1);
            }

            *v16 = -1;
            v98 = v222;
            if (*v91 == -4)
            {
              v99 = (*(a4 + 24) + 8 * *(v91 + 1));
              if (v99[1] < 0)
              {
                v13 = 6;
                goto LABEL_211;
              }

              v100 = *v99;
              if (v100 < v225)
              {
                *v217 = v225;
                v217[1] = v100 - (v100 > 0);
                v217 += 2;
              }
            }
          }

          else
          {
            *(v28 + 15) = 1;
            v98 = v222;
          }

          v226 = 0;
          v13 = 0;
          *v16 = -1;
          v222 = (v98 + 1);
          goto LABEL_105;
        }

        if (v33 != 1)
        {
LABEL_109:
          v13 = 0;
          goto LABEL_110;
        }

        v35 = **v28;
        v34 = (*v28)[1];
        v32 = tre_stack_push_voidptr(a2, v28);
        if (!v32)
        {
          v58 = tre_stack_push_int(a2, 6u);
          a1 = v224;
          if (!v58)
          {
            v58 = tre_stack_push_voidptr(a2, v34);
            if (!v58)
            {
              v58 = tre_stack_push_int(a2, 0);
              if (!v58)
              {
                v58 = tre_stack_push_int(a2, *(v35 + 60) + v17);
                if (!v58)
                {
                  if (*(v35 + 60) < 1)
                  {
                    v111 = -1;
                  }

                  else
                  {
                    v110 = *(v34 + 60);
                    v111 = v110 <= 0 ? -1 : v17;
                    v17 = v110 <= 0 ? v17 : (v17 + 1);
                  }

                  v58 = tre_stack_push_int(a2, v111);
                  if (!v58)
                  {
                    v58 = tre_stack_push_int(a2, 5u);
                    if (!v58)
                    {
                      v58 = tre_stack_push_voidptr(a2, v35);
                      if (!v58)
                      {
                        v58 = tre_stack_push_int(a2, 0);
                      }
                    }
                  }
                }
              }
            }
          }

          goto LABEL_210;
        }

        goto LABEL_41;
      }

      if (v33 == 2)
      {
        v101 = *v28;
        a1 = v224;
        if (!v224)
        {
          v58 = tre_stack_push_int(a2, v226 != 0);
          if (v58)
          {
            goto LABEL_210;
          }
        }

        v58 = tre_stack_push_int(a2, v225);
        if (v58)
        {
          goto LABEL_210;
        }

        v58 = tre_stack_push_voidptr(a2, v28);
        if (v58)
        {
          goto LABEL_210;
        }

        v58 = tre_stack_push_int(a2, 2u);
        if (v58)
        {
          goto LABEL_210;
        }

        v58 = tre_stack_push_voidptr(a2, *v101);
        if (v58)
        {
          goto LABEL_210;
        }

        v58 = tre_stack_push_int(a2, 0);
        if (v58)
        {
          goto LABEL_210;
        }

        if (v226)
        {
          v102 = v222;
          if (v224)
          {
            v58 = tre_merge_branches(v224, v28, 0, v225, *(a4 + 80));
            if (v58)
            {
              goto LABEL_210;
            }

            v58 = tre_add_tag_left(v224, v28, v225);
            if (v58)
            {
              goto LABEL_210;
            }

            if (v226 == 1 && v225)
            {
              v221 = ~(2 * *(v101 + 16)) & 2;
            }

            a4 = v214;
            v8 = v220;
            *(*(v214 + 32) + 4 * v225) = v221;
            v103 = *v16;
            v102 = v222;
            a1 = v224;
            if (*v16 != -1)
            {
              v104 = v16 + 1;
              do
              {
                if ((v103 & 0x80000000) == 0)
                {
                  if (v103)
                  {
                    v105 = (*(v214 + 24) + 8 * (v103 >> 1) + 4);
                  }

                  else
                  {
                    v105 = (*(v214 + 24) + 8 * (v103 >> 1));
                  }

                  *v105 = v225;
                }

                v106 = *v104++;
                v103 = v106;
              }

              while (v106 != -1);
            }
          }

          v226 = 0;
          v13 = 0;
          *v16 = -1;
          v222 = (v102 + 1);
          v26 = (v17 + 1);
          v221 = 2;
          goto LABEL_106;
        }

        v226 = 0;
        v13 = 0;
        v133 = 2;
LABEL_250:
        v221 = v133;
        goto LABEL_211;
      }

      if (v33 != 3)
      {
        goto LABEL_109;
      }

      v85 = v222;
      v86 = v225;
      if (v226)
      {
        v85 = (v222 + 1);
        v87 = (v17 + 1);
        v88 = v225;
        v86 = v17;
      }

      else
      {
        v88 = -1;
        v87 = v17;
      }

      v222 = v85;
      v225 = v86;
      v212 = v88;
      if ((v23 & 1) != 0 || ((__PAIR64__(*(v28 + 14), *(v28 + 13) >> 30) - 1) >> 32) < 1)
      {
        v26 = v87;
        v8 = v220;
        a1 = v224;
      }

      else
      {
        v112 = tre_stack_num_objects(a2);
        tre_stack_push_voidptr(a2, v28);
        tre_stack_push_int(a2, 8u);
        a1 = v224;
        if (tre_stack_num_objects(a2) > v112)
        {
          while (1)
          {
            v113 = tre_stack_pop_int(a2);
            if (v113 == 9)
            {
              break;
            }

            if (v113 == 8)
            {
              v114 = tre_stack_pop_voidptr(a2);
              v115 = *v114;
              v116 = **v114;
              *(v114 + 66) = 1;
              tre_stack_push_voidptr(a2, v114);
              tre_stack_push_int(a2, 9u);
              if (*(v116 + 48) != 3)
              {
                *(v115 + 4) = v225;
LABEL_190:
                v222 = (v222 + 1);
                v26 = (v87 + 1);
                v225 = v87;
                goto LABEL_191;
              }

              v117 = a2;
              v118 = v116;
LABEL_186:
              tre_stack_push_voidptr(v117, v118);
              tre_stack_push_int(a2, 8u);
            }

            v26 = v87;
LABEL_191:
            v87 = v26;
            if (tre_stack_num_objects(a2) <= v112)
            {
              goto LABEL_233;
            }
          }

          v119 = tre_stack_pop_voidptr(a2);
          v118 = *(*v119 + 8);
          if (*(v118 + 48) != 3)
          {
            *(*v119 + 20) = v225;
            goto LABEL_190;
          }

          v117 = a2;
          goto LABEL_186;
        }

        v26 = v87;
LABEL_233:
        if (v224)
        {
          v122 = tre_stack_push_int(a2, v212);
          v8 = v220;
          if (v122)
          {
            goto LABEL_237;
          }

          v122 = tre_stack_push_voidptr(a2, v28);
          if (v122)
          {
            goto LABEL_237;
          }

          v122 = tre_stack_push_int(a2, 0xAu);
          if (v122)
          {
            goto LABEL_237;
          }
        }

        else
        {
          v8 = v220;
        }
      }

      v121 = **v28;
      v120 = (*v28)[1];
      v122 = tre_stack_push_voidptr(a2, v16);
      if (v122 || (v122 = tre_stack_push_int(a2, v226 != 0), v122) || (v122 = tre_stack_push_voidptr(a2, v28), v122) || (v122 = tre_stack_push_int(a2, 4u), v122) || (v122 = tre_stack_push_voidptr(a2, v120), v122) || (v122 = tre_stack_push_int(a2, 1u), v122) || (v122 = tre_stack_push_int(a2, 3u), v122) || (v122 = tre_stack_push_voidptr(a2, v121), v122))
      {
LABEL_237:
        v13 = v122;
        goto LABEL_212;
      }

      v123 = tre_stack_push_int(a2, 1u);
      if (v123)
      {
LABEL_203:
        v13 = v123;
        goto LABEL_72;
      }

      if (!v226)
      {
        v226 = 0;
        v13 = 0;
        goto LABEL_72;
      }

      if (v224)
      {
        v123 = tre_merge_branches(v224, v28, 0, v212, *(v214 + 80));
        if (v123)
        {
          goto LABEL_203;
        }

        v123 = tre_add_tag_left(v224, v28, v212);
        if (v123)
        {
          goto LABEL_203;
        }

        if (v226 == 1)
        {
          v140 = 2;
        }

        else
        {
          v140 = v221;
        }

        *(*(v214 + 32) + 4 * v212) = v140;
        v141 = *v16;
        if (*v16 != -1)
        {
          v142 = v16 + 1;
          do
          {
            if ((v141 & 0x80000000) == 0)
            {
              if (v141)
              {
                v143 = (*(v214 + 24) + 8 * (v141 >> 1) + 4);
              }

              else
              {
                v143 = (*(v214 + 24) + 8 * (v141 >> 1));
              }

              *v143 = v212;
            }

            v144 = *v142++;
            v141 = v144;
          }

          while (v144 != -1);
        }
      }

      v226 = 0;
      v13 = 0;
      *v16 = -1;
      goto LABEL_72;
    }

    if (v18 > 5)
    {
      switch(v18)
      {
        case 6:
          v54 = tre_stack_pop_voidptr(a2);
          v55 = v54;
          v56 = *v54;
          v57 = **v54;
          if (!a1)
          {
            v13 = 0;
            *(v54 + 60) = *(v56[1] + 60) + *(v57 + 60);
            goto LABEL_211;
          }

          v58 = tre_merge_branches(a1, v57, v56[1], 0, *(a4 + 80));
          if (!v58)
          {
            v58 = tre_merge_branches(a1, v55, *v56, 0, *(a4 + 80));
          }

          break;
        case 7:
          v73 = tre_stack_pop_int(a2);
          v74 = tre_stack_pop_voidptr(a2);
          v75 = v74;
          v76 = 0;
          do
          {
            v77 = v16[v76++];
          }

          while (v77 != -1);
          v16[v76 - 1] = (2 * v73) | 1;
          v16[v76] = -1;
          v226 |= 2u;
          if (v223 < 0)
          {
            goto LABEL_161;
          }

          if (!a1)
          {
            ++*(v74 + 60);
            v81 = v222;
LABEL_104:
            v226 = 0;
            v13 = 0;
            v223 = -1;
            *v16 = -1;
            v222 = (v81 + 1);
LABEL_105:
            v26 = (v17 + 1);
LABEL_106:
            v225 = v17;
            goto LABEL_212;
          }

          v58 = tre_merge_branches(a1, v74, 0, v225, *(a4 + 80));
          if (!v58)
          {
            v58 = tre_add_tag_right(a1, v75, v225);
            if (!v58)
            {
              v78 = *(a4 + 40);
              *(*(a4 + 32) + 4 * v225) = 0;
              do
              {
                v79 = *v78++;
              }

              while ((v79 & 0x80000000) == 0);
              *(v78 - 1) = v225;
              *v78 = v223;
              v78[1] = -1;
              *v217 = v225;
              v217[1] = v223;
              v80 = *v16;
              v81 = v222;
              ++v216;
              if (*v16 != -1)
              {
                v82 = v16 + 1;
                do
                {
                  if ((v80 & 0x80000000) == 0)
                  {
                    if (v80)
                    {
                      v83 = (*(a4 + 24) + 8 * (v80 >> 1) + 4);
                    }

                    else
                    {
                      v83 = (*(a4 + 24) + 8 * (v80 >> 1));
                    }

                    *v83 = v225;
                  }

                  v84 = *v82++;
                  v80 = v84;
                }

                while (v84 != -1);
              }

              v217 += 2;
              goto LABEL_104;
            }
          }

          break;
        case 10:
          v19 = tre_stack_pop_voidptr(a2);
          v20 = tre_stack_pop_int(a2);
          v21 = tre_mem_alloc_impl(a1, 0, 0, 1, ((*(a4 + 80) + 7) >> 3) + 40);
          if (v21)
          {
            v13 = 0;
            v22 = *(v19 + 16);
            *(v22 + 20) = v20;
            *(v21 + 7) = *(v22 + 24) + 1;
            *(v21 + 4) = *(v22 + 28);
            *(v21 + 1) = v22;
            *(v21 + 4) = 1;
            *(v19 + 8) = v21;
            *(v19 + 16) = 0;
LABEL_211:
            v26 = v17;
            goto LABEL_212;
          }

LABEL_159:
          v13 = 12;
          goto LABEL_211;
        default:
          goto LABEL_161;
      }

LABEL_210:
      v13 = v58;
      goto LABEL_211;
    }

    if (v18 == 4)
    {
      v59 = tre_stack_pop_voidptr(a2);
      v60 = v59;
      v61 = *(v59 + 40);
      if (!v61)
      {
        v61 = v59;
      }

      v62 = a1;
      v63 = *v61;
      v64 = tre_stack_pop_int(a2);
      if (v62)
      {
        v16 = tre_stack_pop_voidptr(a2);
        if (!*(v60 + 66))
        {
          goto LABEL_102;
        }

        v65 = v63[1];
        v67 = (*v63)[1];
        v66 = (*v63)[2];
        v68 = v65[1];
        v69 = v65[2];
        v70 = *(v63 + 4);
        if (v70 >= 1)
        {
          v71 = tre_add_tag_right(v224, *v63, v70);
          if (v71)
          {
LABEL_71:
            v13 = v71;
            v26 = v17;
LABEL_72:
            v8 = v220;
LABEL_73:
            a1 = v224;
            a4 = v214;
            goto LABEL_212;
          }

          *(*(v214 + 32) + 4 * *(v63 + 4)) = 1;
          if (!*&v67)
          {
            v129 = tre_merge_branches(v224, *v63, 0, -1, *(v214 + 80));
            v8 = v220;
            if (v129)
            {
              v13 = v129;
              v26 = v17;
              goto LABEL_73;
            }

            v67 = (*v63)[1];
          }

          *(*&v67 + 20) = *(v63 + 4);
          a4 = v214;
        }

        v72 = *(v63 + 5);
        if (v72 < 1)
        {
          goto LABEL_217;
        }

        v71 = tre_add_tag_right(v224, v63[1], v72);
        if (v71)
        {
          goto LABEL_71;
        }

        *(*(v214 + 32) + 4 * *(v63 + 5)) = 1;
        a4 = v214;
        if (v68)
        {
LABEL_216:
          *(*&v68 + 20) = *(v63 + 5);
LABEL_217:
          a1 = v224;
          if (v66)
          {
            if (v69)
            {
              v125 = v66[1];
              v126 = v69[1];
              v8 = v220;
              if (v125)
              {
                if (v126)
                {
                  do
                  {
                    v127 = v125;
                    v125 = *v125;
                  }

                  while (v125);
                  *v127 = v126;
                  v128 = v66[2].i32[0] + v69[2].i32[0];
                  goto LABEL_245;
                }
              }

              else if (v126)
              {
                v66[1] = v126;
                v128 = v69[2].i32[0];
LABEL_245:
                v66[2].i32[0] = v128;
              }

              v132 = v69[3].i32[1] + v66[3].i32[1] - 1;
              v66[3].i32[0] += v69[3].i32[0];
              v66[3].i32[1] = v132;
              v130 = v69[4].i32[0];
              goto LABEL_247;
            }

            v8 = v220;
            if (v68)
            {
              **&v68 = v66[1];
              v66[1] = v68;
              ++v66[2].i32[0];
              v66[3] = vadd_s32(v66[3], *(*&v68 + 28));
              v130 = *(*&v68 + 36);
LABEL_247:
              v66[4].i32[0] += v130;
            }

LABEL_248:
            v13 = 0;
            *(v60 + 16) = v66;
LABEL_249:
            v133 = 1;
            goto LABEL_250;
          }

          if (v69)
          {
            if (v67)
            {
              **&v67 = v69[1];
              v69[1] = v67;
              ++v69[2].i32[0];
              v69[3] = vadd_s32(v69[3], *(*&v67 + 28));
              v69[4].i32[0] += *(*&v67 + 36);
            }

            v66 = v69;
            goto LABEL_227;
          }

          v134 = tre_mem_alloc_impl(v224, 0, 0, 1, 0x28uLL);
          if (v134)
          {
            v66 = v134;
            *(v134 + 7) = 1;
            if (v67)
            {
              *(v134 + 1) = v67;
              *(v134 + 4) = 1;
              v135.i32[1] = 1;
              v135.i32[0] = *(v134 + 6);
              v136 = vadd_s32(*(*&v67 + 28), v135);
              *(v134 + 3) = v136;
              v137 = *(v134 + 8) + *(*&v67 + 36);
              *(v134 + 8) = v137;
              if (v68)
              {
                **&v67 = v68;
                *(v134 + 4) = 2;
                *(v134 + 3) = vadd_s32(*(*&v68 + 28), v136);
                v138 = *(*&v68 + 36);
LABEL_261:
                *(v134 + 8) = v138 + v137;
              }
            }

            else if (v68)
            {
              *(v134 + 1) = v68;
              *(v134 + 4) = 1;
              v139.i32[1] = 1;
              v139.i32[0] = *(v134 + 6);
              *(v134 + 3) = vadd_s32(*(*&v68 + 28), v139);
              v137 = *(*&v68 + 36);
              v138 = *(v134 + 8);
              goto LABEL_261;
            }

LABEL_227:
            v8 = v220;
            goto LABEL_248;
          }

          goto LABEL_255;
        }

        v131 = tre_merge_branches(v224, v63[1], 0, -1, *(v214 + 80));
        if (!v131)
        {
          v68 = v63[1][1];
          goto LABEL_216;
        }

        v13 = v131;
        v26 = v17;
        v8 = v220;
LABEL_111:
        a1 = v224;
        goto LABEL_212;
      }

      v90 = (*v63)[7].i32[1] + v64 + v63[1][7].i32[1];
      *(v60 + 60) = v90;
      if (*(v63 + 4) >= 1)
      {
        *(v60 + 60) = ++v90;
      }

      if (*(v63 + 5) >= 1)
      {
        *(v60 + 60) = v90 + 1;
      }

      v16 = tre_stack_pop_voidptr(a2);
LABEL_102:
      v13 = 0;
      v221 = 1;
LABEL_110:
      v26 = v17;
      goto LABEL_111;
    }

    v25 = tre_stack_pop_int(a2);
    v26 = tre_stack_pop_int(a2);
    v13 = 0;
    v27 = v225;
    if (v25 >= 0)
    {
      v27 = v25;
    }

    v225 = v27;
LABEL_212:
    v124 = tre_stack_num_objects(a2);
    v15 = v13 != 0;
    if (v124 <= v8)
    {
      break;
    }

    v17 = v26;
  }

  while (!v13);
LABEL_288:
  if (v15)
  {
    v10 = v218;
    v145 = v219;
    goto LABEL_409;
  }

  v10 = v218;
  v146 = v222;
  if (!a1)
  {
    goto LABEL_330;
  }

  if (v222 != *(a4 + 80))
  {
    v13 = 2;
    v145 = v219;
    goto LABEL_409;
  }

  v147 = *v16;
  if (*v16 != -1)
  {
    v148 = v16 + 1;
    do
    {
      if ((v147 & 0x80000000) == 0)
      {
        if (v147)
        {
          v149 = (*(a4 + 24) + 8 * (v147 >> 1) + 4);
        }

        else
        {
          v149 = (*(a4 + 24) + 8 * (v147 >> 1));
        }

        *v149 = v225;
      }

      v150 = *v148++;
      v147 = v150;
    }

    while (v150 != -1);
  }

  *v16 = -1;
  *(*(a4 + 32) + 4 * v222) = v221;
  v145 = v219;
  if (v217 > &v219[2 * *(a4 + 104)])
  {
    v13 = 2;
    goto LABEL_409;
  }

  *v217 = -1;
  if (v222 >= 1)
  {
    v151 = 0;
    v152 = vdupq_n_s64(v222 - 1);
    v153 = xmmword_18E98AD10;
    v154 = xmmword_18E98AD20;
    v155 = (v215 + 8);
    v156 = vdupq_n_s64(4uLL);
    do
    {
      v157 = vmovn_s64(vcgeq_u64(v152, v154));
      if (vuzp1_s16(v157, *v152.i8).u8[0])
      {
        *(v155 - 2) = v151;
      }

      if (vuzp1_s16(v157, *&v152).i8[2])
      {
        *(v155 - 1) = v151 + 1;
      }

      if (vuzp1_s16(*&v152, vmovn_s64(vcgeq_u64(v152, *&v153))).i32[1])
      {
        *v155 = v151 + 2;
        v155[1] = v151 + 3;
      }

      v151 += 4;
      v153 = vaddq_s64(v153, v156);
      v154 = vaddq_s64(v154, v156);
      v155 += 4;
    }

    while (((v222 + 3) & 0xFFFFFFFC) != v151);
  }

  v158 = *v219;
  if ((v158 & 0x80000000) == 0)
  {
    do
    {
      if (v158 < v222)
      {
        v159 = *(v215 + 4 * v158);
        v160 = *(v215 + 4 * v145[1]);
        if (v160 <= v159)
        {
          v161 = v222;
          v162 = v215;
          do
          {
            v163 = *v162;
            if (*v162 > v160 && v163 < v159)
            {
              *v162 = v163 + 1;
            }

            ++v162;
            --v161;
          }

          while (v161);
          *(v215 + 4 * v158) = v160 + 1;
        }
      }

      v165 = v145[2];
      v145 += 2;
      v158 = v165;
    }

    while ((v165 & 0x80000000) == 0);
  }

  if (v222 >= 1)
  {
    v166 = 0;
    while (v166 == *(v215 + 4 * v166))
    {
      if (v222 == ++v166)
      {
        goto LABEL_329;
      }
    }

LABEL_330:
    v145 = v219;
    if (v219)
    {
      v167 = *(a4 + 72);
      if (v167 >= 1)
      {
        v168 = (*(a4 + 24) + 4);
        do
        {
          v169 = *v168;
          *(v168 - 1) = *(v215 + 4 * *(v168 - 1));
          if (v169 < v222)
          {
            v169 = *(v215 + 4 * v169);
          }

          *v168 = v169;
          v168 += 2;
          --v167;
        }

        while (v167);
      }

      v170 = malloc_type_malloc(4 * v222, 0x100004052888210uLL);
      if (v170)
      {
        v171 = v170;
        v172 = *(a4 + 32);
        if (v222 >= 1)
        {
          v173 = v222;
          v174 = *(a4 + 32);
          v175 = v215;
          do
          {
            v177 = *v174++;
            v176 = v177;
            v178 = *v175++;
            *&v171[4 * v178] = v176;
            --v173;
          }

          while (v173);
        }

        j__mkdtempat_np(v172, v171);
        free(v171);
        v179 = *(a4 + 40);
        v180 = *v179;
        a1 = v224;
        if ((v180 & 0x80000000) == 0)
        {
          v181 = v179 + 1;
          do
          {
            if (v180 < v222)
            {
              LODWORD(v180) = *(v215 + 4 * v180);
            }

            *(v181 - 1) = v180;
            v182 = *v181++;
            v180 = v182;
          }

          while ((v182 & 0x80000000) == 0);
        }

        v183 = tre_stack_push_voidptr(a2, v213);
        if (!v183)
        {
          while (1)
          {
            while (1)
            {
              if (tre_stack_num_objects(a2) <= v8)
              {
                v146 = v222;
                goto LABEL_362;
              }

              v184 = tre_stack_pop_voidptr(a2);
              v13 = 0;
              v185 = v184[12];
              if (v185 > 1)
              {
                break;
              }

              if (v185)
              {
                if (v185 != 1)
                {
                  goto LABEL_359;
                }

LABEL_353:
                v186 = *v184;
                v183 = tre_stack_push_voidptr(a2, *(*v184 + 8));
                if (v183)
                {
                  goto LABEL_366;
                }

                v187 = *v186;
LABEL_358:
                v13 = tre_stack_push_voidptr(a2, v187);
                goto LABEL_359;
              }

              if (**v184 == -3)
              {
                *(*v184 + 4) = *(v215 + 4 * *(*v184 + 4));
              }
            }

            if (v185 == 2)
            {
              v187 = **v184;
              goto LABEL_358;
            }

            if (v185 == 3)
            {
              goto LABEL_353;
            }

LABEL_359:
            if (v13)
            {
              goto LABEL_409;
            }
          }
        }

LABEL_366:
        v13 = v183;
        goto LABEL_409;
      }

LABEL_367:
      v13 = 12;
      goto LABEL_409;
    }

    goto LABEL_362;
  }

LABEL_329:
  free(v219);
  v146 = v222;
  v145 = 0;
LABEL_362:
  if (!a1 || (v188 = *(v213 + 8)) == 0)
  {
LABEL_408:
    v13 = 0;
    *(a4 + 80) = v146;
    *(a4 + 84) = v216;
    *(a4 + 88) = v146;
    goto LABEL_409;
  }

  v189 = malloc_type_calloc(1uLL, 32 * v188[7] + 16 * v188[8] + 4 * v188[9], 0x1030040F37A1EC0uLL);
  if (!v189)
  {
    goto LABEL_367;
  }

  v190 = v189;
  v191 = *(v213 + 8);
  v193 = *(v191 + 28);
  v192 = *(v191 + 32);
  tre_stack_push_voidptr(a2, v191);
  tre_stack_push_int(a2, 1u);
  v183 = tre_stack_push_int(a2, 0);
  if (v183)
  {
    goto LABEL_366;
  }

  v194 = &v190[32 * v193];
  v195 = &v194[16 * v192];
  v196 = v190;
  v197 = v145;
  while (1)
  {
    if (tre_stack_num_objects(a2) <= v220)
    {
      *(a4 + 48) = v190;
      v10 = v218;
      v146 = v222;
      goto LABEL_408;
    }

    v198 = tre_stack_pop_int(a2);
    v13 = 0;
    if (v198 > 1)
    {
      break;
    }

    if (v198)
    {
      if (v198 == 1)
      {
        v199 = v196;
        v200 = tre_stack_pop_voidptr(a2);
        v201 = tre_stack_pop_voidptr(a2);
        v202 = v201;
        *(v200 + 16) = *(v201 + 16);
        v203 = *(v201 + 24);
        if (v203 >= 1)
        {
          *(v200 + 24) = v203;
          *v200 = v195;
          if (v222 >= 1)
          {
            v204 = 0;
            do
            {
              if ((*(v201 + 40 + (v204 >> 3)) >> (v204 & 7)))
              {
                *v195 = v204;
                v195 += 4;
                if (v203 < 2)
                {
                  break;
                }

                --v203;
              }

              ++v204;
            }

            while (v222 != v204);
          }
        }

        if (*v201)
        {
          v205 = tre_stack_push_voidptr(a2, *v201);
          if (v205 || (v205 = tre_stack_push_voidptr(a2, v200 + 32), v205) || (v205 = tre_stack_push_int(a2, 1u), v205))
          {
LABEL_406:
            v13 = v205;
            v10 = v218;
            v145 = v197;
            goto LABEL_409;
          }
        }

        if (*(v202 + 16) < 1)
        {
          v13 = 0;
          v145 = v197;
          v196 = v199;
        }

        else
        {
          *(v200 + 8) = v194;
          v205 = tre_stack_push_voidptr(a2, *(v202 + 8));
          if (v205)
          {
            goto LABEL_406;
          }

          v205 = tre_stack_push_int(a2, *(v202 + 16));
          if (v205)
          {
            goto LABEL_406;
          }

          v196 = v199;
          v13 = tre_stack_push_int(a2, 2u);
          v145 = v197;
        }
      }
    }

    else
    {
      v209 = tre_stack_pop_int(a2);
      v208 = tre_stack_push_voidptr(a2, v196);
      if (v208)
      {
        goto LABEL_412;
      }

      v13 = tre_stack_push_int(a2, 1u);
      if (v13)
      {
        goto LABEL_413;
      }

      v196 += 32 * v209;
    }

LABEL_404:
    if (v13)
    {
      goto LABEL_413;
    }
  }

  if (v198 != 2)
  {
    if (v198 == 3)
    {
      v206 = tre_stack_pop_voidptr(a2);
      v207 = tre_stack_pop_voidptr(a2);
      *v206 = v196;
      v206[1] = *(v207 + 16);
      if (*v207)
      {
        v205 = tre_stack_push_voidptr(a2, *v207);
        if (v205)
        {
          goto LABEL_406;
        }

        v205 = tre_stack_push_voidptr(a2, v206 + 2);
        if (v205)
        {
          goto LABEL_406;
        }

        v205 = tre_stack_push_int(a2, 3u);
        if (v205)
        {
          goto LABEL_406;
        }
      }

      v205 = tre_stack_push_voidptr(a2, *(v207 + 8));
      if (v205)
      {
        goto LABEL_406;
      }

      v208 = tre_stack_push_int(a2, *(v207 + 16));
      v145 = v197;
      if (v208)
      {
        goto LABEL_412;
      }

      v13 = tre_stack_push_int(a2, 0);
    }

    goto LABEL_404;
  }

  v210 = tre_stack_pop_int(a2);
  v208 = tre_stack_push_voidptr(a2, v194);
  if (!v208)
  {
    v13 = tre_stack_push_int(a2, 3u);
    if (v13)
    {
      goto LABEL_413;
    }

    v194 += 16 * v210;
    goto LABEL_404;
  }

LABEL_412:
  v13 = v208;
LABEL_413:
  v10 = v218;
LABEL_409:
  free(v145);
LABEL_410:
  free(v10);
  return v13;
}