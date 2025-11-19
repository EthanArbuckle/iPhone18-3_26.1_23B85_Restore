void sub_271120C4C(void *a1@<X8>)
{
  if ((atomic_load_explicit(qword_280879988, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_280879988))
  {
    sub_271120CD8();
  }

  *a1 = qword_280879980;
}

void sub_271120D8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271120DC0(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_271120E1C(exception, a1);
  __cxa_throw(exception, off_279E2F3F8, MEMORY[0x277D825F0]);
}

std::logic_error *sub_271120E1C(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void *sub_271120E64(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x2743BE760](v14, a1);
  if (v14[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      v10 = (a1 + *(*a1 - 24));
      std::ios_base::getloc(v10);
      v11 = std::locale::use_facet(&v15, MEMORY[0x277D82680]);
      v9 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v15);
      v6 = v10;
      v10[1].__fmtflags_ = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!sub_271121010(v7, a2, v12, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x2743BE770](v14);
  return a1;
}

void sub_271120FA8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x2743BE770](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x271120F88);
}

uint64_t sub_271121010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_271120DA8();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v19 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v19 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v19 < 0)
      {
        v15 = v14;
        operator delete(__b);
        if (v15 != v12)
        {
          return 0;
        }
      }

      else if (v14 != v12)
      {
        return 0;
      }
    }

    v16 = a4 - a3;
    if (v16 < 1 || (*(*v6 + 96))(v6, a3, v16) == v16)
    {
      *(a5 + 24) = 0;
      return v6;
    }

    return 0;
  }

  return v6;
}

void sub_2711211EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_271121208(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  *result = a2;
  result[1] = a3;
  if (v3)
  {
    std::mutex::~mutex((v3 + 56));
    v4 = *(v3 + 32);
    if (v4)
    {
      do
      {
        v6 = *v4;
        v7 = *(v4 + 5);
        *(v4 + 5) = 0;
        if (v7)
        {
          sub_271127634((v4 + 40), v7);
        }

        if (v4[39] < 0)
        {
          operator delete(*(v4 + 2));
        }

        operator delete(v4);
        v4 = v6;
      }

      while (v6);
    }

    v5 = *(v3 + 16);
    *(v3 + 16) = 0;
    if (v5)
    {
      operator delete(v5);
    }

    sub_2711212D0((v3 + 8));

    JUMPOUT(0x2743BF050);
  }

  return result;
}

void *sub_2711212D0(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    std::mutex::~mutex((v1 + 56));
    v3 = *(v1 + 32);
    if (v3)
    {
      do
      {
        v5 = *v3;
        v6 = *(v3 + 5);
        *(v3 + 5) = 0;
        if (v6)
        {
          sub_271127634((v3 + 40), v6);
        }

        if (v3[39] < 0)
        {
          operator delete(*(v3 + 2));
        }

        operator delete(v3);
        v3 = v5;
      }

      while (v5);
    }

    v4 = *(v1 + 16);
    *(v1 + 16) = 0;
    if (v4)
    {
      operator delete(v4);
    }

    sub_2711212D0(v1 + 8);
    MEMORY[0x2743BF050](v1, 0x10A0C400EF86968);
    return v2;
  }

  return result;
}

uint64_t sub_271121384(uint64_t result, char a2)
{
  *result = &unk_2881091A0;
  *(result + 8) = a2;
  return result;
}

uint64_t sub_2711213B4(uint64_t a1, char *__format, ...)
{
  va_start(va, __format);
  v16 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 56))
  {
    operator new();
  }

  v14 = 0;
  va_copy(__dst, va);
  v3 = vsnprintf(__str, 0x200uLL, __format, va);
  if (v3 >= 0x200)
  {
    operator new();
  }

  v4 = v3;
  v5 = *(a1 + 56);
  if (v3 >= 0x17)
  {
    operator new();
  }

  v13 = v3;
  if (v3)
  {
    memmove(__dst, __str, v3);
  }

  *(__dst + v4) = 0;
  if ((v13 & 0x80u) == 0)
  {
    v6 = __dst;
  }

  else
  {
    v6 = __dst[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v7 = v13;
  }

  else
  {
    v7 = __dst[1];
  }

  sub_271120E64((v5 + 16), v6, v7);
  if (v13 < 0)
  {
    operator delete(__dst[0]);
  }

  v8 = v14;
  if (v14)
  {
    v9 = *v14;
    if (*v14)
    {
      *(v14 + 8) = v9;
      operator delete(v9);
    }

    MEMORY[0x2743BF050](v8, 0x10C402FEFCB83);
  }

  v10 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_271121814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_271127120(va);
  _Unwind_Resume(a1);
}

void sub_271121828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_271127120(&a17);
    _Unwind_Resume(a1);
  }

  sub_271127120(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_2711218C8(uint64_t a1)
{
  *(a1 + 176) = 0;
  v2 = MEMORY[0x277D82890] + 104;
  *(a1 + 128) = MEMORY[0x277D82890] + 104;
  v3 = a1 + 16;
  v4 = MEMORY[0x277D82890] + 64;
  *(a1 + 16) = MEMORY[0x277D82890] + 64;
  v5 = a1 + 24;
  v6 = MEMORY[0x277D82818];
  v7 = *(MEMORY[0x277D82818] + 24);
  v8 = *(MEMORY[0x277D82818] + 16);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  *(a1 + 8) = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, (a1 + 24));
  v10 = MEMORY[0x277D82890] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  v11 = v6[5];
  v12 = v6[4];
  *(a1 + 16) = v12;
  *(v3 + *(v12 - 24)) = v11;
  v13 = v6[1];
  *a1 = v13;
  *(a1 + *(v13 - 24)) = v6[6];
  *a1 = v10;
  *(a1 + 128) = v2;
  v14 = MEMORY[0x277D82868] + 16;
  *(a1 + 16) = v4;
  *(a1 + 24) = v14;
  MEMORY[0x2743BED80](a1 + 32);
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 24;
  sub_271129318(v5);
  return a1;
}

void sub_271121BAC(_Unwind_Exception *a1)
{
  if (*(v2 + 111) < 0)
  {
    operator delete(*v4);
  }

  *(v2 + 24) = v3;
  std::locale::~locale((v2 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x2743BEF20](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_271121BFC(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_271127178(a1, *a2, *(a2 + 1));
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 24) = v5;
      goto LABEL_6;
    }
  }

  sub_271127178((a1 + 24), *(a2 + 3), *(a2 + 4));
LABEL_6:
  v6 = *(a2 + 6);
  *(a1 + 56) = 0;
  *(a1 + 48) = v6;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v7 = *(a2 + 7);
  v8 = *(a2 + 8);
  if (v8 != v7)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v8 - v7) >> 4) < 0x333333333333334)
    {
      operator new();
    }

    sub_271135560();
  }

  return a1;
}

void sub_271121D40(_Unwind_Exception *exception_object)
{
  if ((*(v1 + 23) & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

uint64_t sub_271121DBC(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = *(a1 + 64);
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_271121DBC(v3 - 80);
      }

      while (v3 != v2);
      v4 = *(a1 + 56);
    }

    *(a1 + 64) = v2;
    operator delete(v4);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*a1);
  return a1;
}

void sub_271121E50(uint64_t a1, void *a2)
{
  *a1 = *a2;
  *(a1 + 31) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  operator new();
}

void sub_27112202C(_Unwind_Exception *a1)
{
  sub_27112F828(v2);
  sub_271122330((v1 + 40));
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_2711220B8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 72);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_271128C6C();
}

void sub_27112225C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_271122270(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_271122284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2712C9E78(va);
  _Unwind_Resume(a1);
}

void *sub_271122298(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    sub_271127368(v1 + 128, *(v1 + 136));
    std::mutex::~mutex((v1 + 64));
    sub_271127368(v1 + 40, *(v1 + 48));
    v3 = *(v1 + 16);
    if (v3)
    {
      do
      {
        v4 = *v3;
        operator delete(v3);
        v3 = v4;
      }

      while (v4);
    }

    v5 = *v1;
    *v1 = 0;
    if (v5)
    {
      operator delete(v5);
    }

    MEMORY[0x2743BF050](v1, 0x10A0C40AA1AA5A8);
    return v2;
  }

  return result;
}

void *sub_271122330(void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = *(v2 + 8);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v2;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v2 = v5;
    }

    MEMORY[0x2743BF050](v2, 0x30C40EEE2E2AFLL);
    return v3;
  }

  return v1;
}

uint64_t sub_2711223D8(uint64_t a1, void *a2, __int128 *a3, uint64_t a4, uint64_t *a5)
{
  *a1 = *a2;
  if (*(a3 + 23) < 0)
  {
    sub_271127178((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v8;
  }

  v9 = *(a4 + 56);
  *(a1 + 48) = *(a4 + 48);
  *(a1 + 32) = a4;
  *(a1 + 40) = 0;
  *(a1 + 56) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = 0;
  v10 = *a5;
  if (!*a5)
  {
    operator new();
  }

  *a5 = 0;
  *(a1 + 72) = v10;
  return a1;
}

void sub_2711224E8(_Unwind_Exception *a1)
{
  sub_27112F828(v3);
  sub_271122330(v4);
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_271122514(uint64_t ***a1, uint64_t a2)
{
  v4 = *a1;
  std::mutex::lock((*a1 + 7));
  v5 = *(a2 + 23);
  v6 = v5;
  v7 = *a2;
  v8 = *(a2 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  if (!v5)
  {
    goto LABEL_15;
  }

  v10 = 0;
  while (v9[v10] == 46)
  {
    if (v5 == ++v10)
    {
      goto LABEL_15;
    }
  }

  if (v10 == -1)
  {
LABEL_15:
    v11 = **a1;
  }

  else
  {
    if (sub_271122F40(a2))
    {
      if (v6 < 0)
      {
        sub_271127178(&v14, v7, v8);
      }

      else
      {
        v14 = *a2;
        v15 = *(a2 + 16);
      }
    }

    else
    {
      sub_2711230EC(a2, &v14);
    }

    v13 = sub_27112953C(v4 + 2, &v14);
    if (!v13)
    {
      operator new();
    }

    v11 = v13[5];
    if (SHIBYTE(v15) < 0)
    {
      operator delete(v14);
    }
  }

  std::mutex::unlock((v4 + 7));
  return v11;
}

void sub_271122DE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  v41 = a30;
  a30 = 0;
  if (v41)
  {
    sub_271127634(&a30, v41);
  }

  sub_271122298((v39 - 136));
  sub_2711241EC(&a36);
  MEMORY[0x2743BF050](v37, v36);
  if (*(v39 - 89) < 0)
  {
    operator delete(*(v39 - 112));
  }

  std::mutex::unlock((v38 + 56));
  _Unwind_Resume(a1);
}

BOOL sub_271122F40(_BYTE *__s)
{
  v1 = __s[23];
  if ((v1 & 0x8000000000000000) == 0)
  {
    if (__s[23])
    {
      v2 = __s;
      v3 = __s[23];
      goto LABEL_6;
    }

    return 1;
  }

  v3 = *(__s + 1);
  if (!v3)
  {
    return 1;
  }

  v2 = *__s;
LABEL_6:
  v4 = 0;
  while (v2[v4] != 46)
  {
    if (v3 == ++v4)
    {
      goto LABEL_13;
    }
  }

  if (v3 != v4 && !v4)
  {
    return 0;
  }

LABEL_13:
  v7 = *__s;
  v6 = *(__s + 1);
  if (v1 >= 0)
  {
    v8 = __s;
  }

  else
  {
    v8 = *__s;
  }

  if (v1 >= 0)
  {
    v9 = __s[23];
  }

  else
  {
    v9 = *(__s + 1);
  }

  v10 = v9;
  while (v10)
  {
    v11 = v8[--v10];
    if (v11 == 46)
    {
      if ((v1 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_26;
    }
  }

  v10 = -1;
  if ((v1 & 0x80000000) == 0)
  {
LABEL_23:
    v7 = __s;
    v6 = __s[23];
    if (v10 == v1 - 1)
    {
      return 0;
    }

    goto LABEL_28;
  }

LABEL_26:
  if (v10 == v6 - 1)
  {
    return 0;
  }

LABEL_28:
  if (v6 >= 2)
  {
    v12 = &v7[v6];
    v13 = v7;
    do
    {
      v14 = memchr(v13, 46, v6 - 1);
      if (!v14)
      {
        break;
      }

      if (*v14 == 11822)
      {
        if (v14 != v12 && v14 - v7 != -1)
        {
          return 0;
        }

        break;
      }

      v13 = v14 + 1;
      v6 = v12 - v13;
    }

    while (v12 - v13 >= 2);
  }

  if (!v9)
  {
    return 1;
  }

  v15 = 0;
  while (memchr("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_.", v8[v15], 0x40uLL))
  {
    if (v9 == ++v15)
    {
      return 1;
    }
  }

  return v15 == -1;
}

void sub_2711230EC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_271122F40(a1))
  {
    if (*(a1 + 23) < 0)
    {
      v4 = *a1;
      v5 = *(a1 + 8);

      sub_271127178(a2, v4, v5);
    }

    else
    {
      *a2 = *a1;
      *(a2 + 16) = *(a1 + 16);
    }

    return;
  }

  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v78, *a1, *(a1 + 8));
  }

  else
  {
    v78 = *a1;
    v79 = *(a1 + 16);
  }

LABEL_10:
  v6 = HIBYTE(v79);
  v7 = *(&v78 + 1);
  v8 = v78;
  if (v79 >= 0)
  {
    v9 = &v78;
  }

  else
  {
    v9 = v78;
  }

  if (v79 >= 0)
  {
    v10 = HIBYTE(v79);
  }

  else
  {
    v10 = *(&v78 + 1);
  }

  if (v10 >= 2)
  {
    v11 = v9 + v10;
    v12 = v10;
    v13 = v9;
    do
    {
      v14 = memchr(v13, 46, v12 - 1);
      if (!v14)
      {
        break;
      }

      if (*v14 == 11822)
      {
        if (v14 == v11)
        {
          break;
        }

        v15 = v14 - v9;
        if (v14 - v9 == -1)
        {
          break;
        }

        if (v10 < v15)
        {
          sub_271127FEC();
        }

        sub_271128004(&v78, v15, 1uLL);
        goto LABEL_10;
      }

      v13 = (v14 + 1);
      v12 = v11 - v13;
    }

    while (v11 - v13 >= 2);
  }

  if (v10)
  {
    v16 = 0;
    while (*(v9 + v16) != 46)
    {
      if (v10 == ++v16)
      {
        goto LABEL_34;
      }
    }

    if (v10 != v16 && !v16)
    {
      sub_271128004(&v78, 0, 1uLL);
      v6 = HIBYTE(v79);
      v7 = *(&v78 + 1);
      v8 = v78;
    }
  }

LABEL_34:
  if ((v6 & 0x80u) == 0)
  {
    v17 = &v78;
  }

  else
  {
    v17 = v8;
  }

  if ((v6 & 0x80u) == 0)
  {
    v18 = v6;
  }

  else
  {
    v18 = v7;
  }

  v19 = v17 - 1;
  while (v18)
  {
    v20 = v19[v18--];
    if (v20 == 46)
    {
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_44;
      }

LABEL_47:
      if (v18 == v7 - 1)
      {
        goto LABEL_48;
      }

LABEL_51:
      v21 = *(&v78 + 1);
      if (*(&v78 + 1))
      {
        v22 = v78;
        goto LABEL_53;
      }

LABEL_60:
      *(a2 + 23) = 0;
      *a2 = 0;
      if ((v6 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_161;
    }
  }

  v18 = -1;
  if ((v6 & 0x80) != 0)
  {
    goto LABEL_47;
  }

LABEL_44:
  v7 = v6;
  if (v18 == v6 - 1)
  {
LABEL_48:
    sub_271128004(&v78, v7, 1uLL);
    LODWORD(v6) = HIBYTE(v79);
    if (SHIBYTE(v79) < 0)
    {
      goto LABEL_51;
    }
  }

  if (!v6)
  {
    goto LABEL_60;
  }

  v21 = v6;
  v22 = &v78;
LABEL_53:
  v23 = (v22 + v21);
  v24 = v21 - 1;
  while (1)
  {
    v25 = memchr("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_.", *v22, 0x40uLL);
    if (!v25 || v25 - "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_." == -1)
    {
      break;
    }

    v22 = (v22 + 1);
    --v24;
    if (v22 == v23)
    {
      goto LABEL_73;
    }
  }

  if (v22 == v23 || (v22 + 1) == v23)
  {
    v23 = v22;
  }

  else
  {
    v27 = 1;
    v23 = v22;
    do
    {
      v28 = *(v22 + v27);
      v29 = memchr("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_.", v28, 0x40uLL);
      if (v29)
      {
        v30 = v29 - "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_." == -1;
      }

      else
      {
        v30 = 1;
      }

      if (!v30)
      {
        *v23 = v28;
        v23 = (v23 + 1);
      }

      ++v27;
      --v24;
    }

    while (v24);
    LODWORD(v6) = HIBYTE(v79);
  }

LABEL_73:
  v32 = *(&v78 + 1);
  v31 = v78;
  if ((v6 & 0x80u) == 0)
  {
    v33 = &v78 + v6;
  }

  else
  {
    v33 = (v78 + *(&v78 + 1));
  }

  if ((v6 & 0x80u) == 0)
  {
    v34 = &v78;
  }

  else
  {
    v34 = v78;
  }

  if ((v6 & 0x80u) == 0)
  {
    v32 = v6;
  }

  v35 = v23 - v34;
  if (v32 < v23 - v34)
  {
    sub_271127FEC();
  }

  if (v33 - v23 == -1)
  {
    if ((v6 & 0x80) != 0)
    {
      *(&v78 + 1) = v23 - v34;
    }

    else
    {
      HIBYTE(v79) = v35 & 0x7F;
      v31 = &v78;
    }

    *(v31 + v35) = 0;
  }

  else
  {
    sub_271128004(&v78, v35, v33 - v23);
  }

  v75 = 0;
  v76 = 0;
  v77 = 0;
  sub_271123A48(v63, &v78, 24);
  __p[0] = 0;
  __p[1] = 0;
  v62 = 0;
  while (1)
  {
    v37 = sub_271123D0C(v63, __p, 0x2Eu);
    if ((*(v37 + *(*v37 - 24) + 32) & 5) != 0)
    {
      break;
    }

    v38 = v76;
    if (v76 < v77)
    {
      if (SHIBYTE(v62) < 0)
      {
        sub_271127178(v76, __p[0], __p[1]);
      }

      else
      {
        v36 = *__p;
        v76[2] = v62;
        *v38 = v36;
      }

      v76 = v38 + 3;
    }

    else
    {
      v76 = sub_271127424(&v75, __p);
    }
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(__p[0]);
  }

  v63[0] = *MEMORY[0x277D82818];
  v39 = v63[0];
  v40 = *(MEMORY[0x277D82818] + 72);
  v41 = *(MEMORY[0x277D82818] + 64);
  *(v63 + *(v63[0] - 24)) = v41;
  v42 = v40;
  v64 = v40;
  v65 = MEMORY[0x277D82878] + 16;
  if (v71 < 0)
  {
    operator delete(v70);
  }

  v65 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v66);
  std::iostream::~basic_iostream();
  MEMORY[0x2743BEF20](v74);
  v43 = HIBYTE(v79);
  if (v79 < 0)
  {
    v43 = *(&v78 + 1);
  }

  if (v43)
  {
    sub_2711218C8(v63);
    v44 = v75;
    v45 = v76;
    if (v75 != v76)
    {
      if (*(v75 + 23) < 0)
      {
        sub_271127178(__p, *v75, v75[1]);
      }

      else
      {
        v46 = *v75;
        v62 = v75[2];
        *__p = v46;
      }

      if (SHIBYTE(v62) >= 0)
      {
        v48 = HIBYTE(v62);
      }

      else
      {
        v48 = __p[1];
      }

      if (v48)
      {
        if (SHIBYTE(v62) >= 0)
        {
          v49 = __p;
        }

        else
        {
          v49 = __p[0];
        }

        sub_271120E64(&v64, v49, v48);
      }

      else
      {
        sub_271120E64(&v64, "_", 1);
      }

      if (SHIBYTE(v62) < 0)
      {
        operator delete(__p[0]);
      }

      v50 = v44 + 3;
      if ((v44 + 24) != v45)
      {
        do
        {
          if (*(v50 + 23) < 0)
          {
            sub_271127178(__p, *v50, v50[1]);
          }

          else
          {
            v51 = *v50;
            v62 = v50[2];
            *__p = v51;
          }

          sub_271120E64(&v64, ".", 1);
          if (SHIBYTE(v62) >= 0)
          {
            v52 = HIBYTE(v62);
          }

          else
          {
            v52 = __p[1];
          }

          if (v52)
          {
            if (SHIBYTE(v62) >= 0)
            {
              v53 = __p;
            }

            else
            {
              v53 = __p[0];
            }

            sub_271120E64(&v64, v53, v52);
          }

          else
          {
            sub_271120E64(&v64, "_", 1);
          }

          if (SHIBYTE(v62) < 0)
          {
            operator delete(__p[0]);
          }

          v50 += 3;
        }

        while (v50 != v45);
      }
    }

    if ((v73 & 0x10) != 0)
    {
      v55 = v72;
      if (v72 < v69)
      {
        v72 = v69;
        v55 = v69;
      }

      v56 = &v68;
    }

    else
    {
      if ((v73 & 8) == 0)
      {
        v54 = 0;
        *(a2 + 23) = 0;
        goto LABEL_150;
      }

      v56 = v67;
      v55 = v67[2];
    }

    v57 = *v56;
    v54 = v55 - *v56;
    if (v54 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_271120DA8();
    }

    if (v54 >= 0x17)
    {
      operator new();
    }

    *(a2 + 23) = v54;
    if (v54)
    {
      memmove(a2, v57, v54);
    }

LABEL_150:
    *(a2 + v54) = 0;
    v63[0] = v39;
    *(v63 + *(v39 - 24)) = v41;
    v64 = v42;
    v65 = MEMORY[0x277D82878] + 16;
    if (v71 < 0)
    {
      operator delete(v70);
    }

    v65 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(&v66);
    std::iostream::~basic_iostream();
    MEMORY[0x2743BEF20](v74);
    v47 = v75;
    if (!v75)
    {
      goto LABEL_160;
    }

    goto LABEL_153;
  }

  *(a2 + 23) = 1;
  *a2 = 95;
  v47 = v75;
  if (v75)
  {
LABEL_153:
    v58 = v76;
    v59 = v47;
    if (v76 != v47)
    {
      do
      {
        v60 = *(v58 - 1);
        v58 -= 3;
        if (v60 < 0)
        {
          operator delete(*v58);
        }
      }

      while (v58 != v47);
      v59 = v75;
    }

    v76 = v47;
    operator delete(v59);
  }

LABEL_160:
  if ((v79 & 0x8000000000000000) == 0)
  {
    return;
  }

LABEL_161:
  operator delete(v78);
}

void sub_2711239C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  sub_271123F00(&a16);
  sub_27137F4D0((v16 - 136));
  if (*(v16 - 89) < 0)
  {
    operator delete(*(v16 - 112));
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_271123A48(uint64_t *a1, __int128 *a2, int a3)
{
  a1[22] = 0;
  v6 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v7 = a1 + 2;
  v8 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v9 = MEMORY[0x277D82818];
  v10 = *(MEMORY[0x277D82818] + 24);
  v11 = *(MEMORY[0x277D82818] + 16);
  *a1 = v11;
  *(a1 + *(v11 - 24)) = v10;
  a1[1] = 0;
  v12 = (a1 + *(*a1 - 24));
  std::ios_base::init(v12, a1 + 3);
  v13 = MEMORY[0x277D82890] + 24;
  v12[1].__vftable = 0;
  v12[1].__fmtflags_ = -1;
  v14 = v9[5];
  v15 = v9[4];
  a1[2] = v15;
  *(v7 + *(v15 - 24)) = v14;
  v16 = v9[1];
  *a1 = v16;
  *(a1 + *(v16 - 24)) = v9[6];
  *a1 = v13;
  a1[16] = v6;
  a1[2] = v8;
  sub_2711296F4((a1 + 3), a2, a3);
  return a1;
}

void sub_271123CD8(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x2743BEF20](v1);
  _Unwind_Resume(a1);
}

void *sub_271123D0C(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x2743BE660](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_271123E70(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x271123E30);
  }

  __cxa_rethrow();
}

uint64_t sub_271123F00(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x2743BEF20](a1 + 128);
  return a1;
}

uint64_t sub_271124054(char *a1, char **a2)
{
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = a2[1];
  }

  v4 = a1[23];
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = *(a1 + 1);
    if (v3 <= v5)
    {
      return 0;
    }
  }

  else
  {
    v5 = a1[23];
    if (v3 <= v4)
    {
      return 0;
    }
  }

  if (!v5)
  {
    return 1;
  }

  if (v2 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if ((v4 & 0x80000000) == 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  if ((v4 & 0x80000000) == 0)
  {
    v9 = a1[23];
  }

  else
  {
    v9 = *(a1 + 1);
  }

  if (v9)
  {
    if (v3 >= v9)
    {
      v10 = &v7[v3];
      v11 = *v8;
      v12 = v3;
      v13 = v7;
      while (1)
      {
        v14 = v12 - v9;
        if (v14 == -1)
        {
          break;
        }

        result = memchr(v13, v11, v14 + 1);
        if (!result)
        {
          return result;
        }

        v15 = result;
        result = memcmp(result, v8, v9);
        if (!result)
        {
          if (v15 == v10 || v15 != v7)
          {
            return result;
          }

          goto LABEL_30;
        }

        result = 0;
        v13 = (v15 + 1);
        v12 = &v10[-v15 - 1];
        if (v12 < v9)
        {
          return result;
        }
      }
    }

    return 0;
  }

LABEL_30:
  if (v7[v9] != 46 || v3 <= v9 + 1)
  {
    return 0;
  }

  while (v7[v9 + 1] == 46)
  {
    result = 0;
    if (v3 - 1 == ++v9)
    {
      return result;
    }
  }

  return v9 != -2;
}

uint64_t sub_2711241EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

BOOL sub_271124238(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 72);
  std::mutex::lock(v4 + 1);
  std::mutex::lock((a1 + 64));
  v5 = *(a2 + 72);
  v6 = *(v5 + 128);
  if (v6 != v5 + 136)
  {
    v8 = *(v6 + 40);
    v7 = *(v6 + 48);
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    sub_271128C6C();
  }

  v9 = *(a1 + 152) != 0;
  std::mutex::unlock((a1 + 64));
  std::mutex::unlock(v4 + 1);
  return v9;
}

void sub_271124464(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  sub_2712C9E78(va2);
  sub_27112F828(va1);
  sub_27112F828(va);
  std::mutex::unlock(v2 + 1);
  std::mutex::unlock(v3 + 1);
  _Unwind_Resume(a1);
}

void sub_271124498(uint64_t a1, uint64_t *a2)
{
  v6 = (*(a1 + 72) + 64);
  std::mutex::lock(v6);
  v4 = a2[1];
  v5[0] = *a2;
  v5[1] = v4;
  *a2 = 0;
  a2[1] = 0;
  sub_2711220B8(a1, v5);
}

void sub_27112454C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::mutex *a12)
{
  sub_27112F828(&a10);
  std::mutex::unlock(a12);
  _Unwind_Resume(a1);
}

void sub_271124568(std::mutex *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    sub_271127758(a1, &v5);
  }

  std::mutex::lock(a1 + 1);
  v4 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v8 = v4;
  v9 = v4;
  v6 = 0;
  v7 = 0;
  sub_271128C6C();
}

void sub_271124704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_2712C9E78(va1);
  sub_27112F828(va);
  std::mutex::unlock(v4 + 1);
  _Unwind_Resume(a1);
}

void *sub_27112473C(void *result, uint64_t a2)
{
  v2 = *(*(a2 + 72) + 16);
  if (v2)
  {
    v3 = result;
    v4 = result[1];
    v5 = *(*(v2 + 16) + 72);
    v6[0] = *v3;
    v6[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    sub_271124568(v5, v6, 0);
  }

  return result;
}

uint64_t **sub_271124828(void *a1, unint64_t a2)
{
  v4 = *a1;
  std::mutex::lock((*a1 + 56));
  v5 = (a1[9] + 64);
  v8 = v5;
  std::mutex::lock(v5);
  v6 = sub_2711248D4(a1, a2, &v8);
  std::mutex::unlock(v5);
  std::mutex::unlock((v4 + 56));
  return v6;
}

void sub_2711248A4(_Unwind_Exception *a1)
{
  std::mutex::unlock(v1);
  std::mutex::unlock((v2 + 56));
  _Unwind_Resume(a1);
}

uint64_t **sub_2711248D4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 72);
  result = v4[6];
  if (result)
  {
    v7 = v4 + 6;
    v8 = v4[6];
    do
    {
      v9 = v8[4];
      v10 = v9 >= a2;
      v11 = v9 < a2;
      if (v10)
      {
        v7 = v8;
      }

      v8 = v8[v11];
    }

    while (v8);
    if (v7 == v4 + 6)
    {
      return 0;
    }

    else if (v7[4] <= a2)
    {
      v12 = v7[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        v14 = v7;
        do
        {
          v13 = v14[2];
          v15 = *v13 == v14;
          v14 = v13;
        }

        while (!v15);
      }

      if (v4[5] == v7)
      {
        v4[5] = v13;
      }

      --v4[7];
      sub_271128F64(result, v7);
      v17 = v7[6];
      if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v17->__on_zero_shared)(v17);
        std::__shared_weak_count::__release_weak(v17);
      }

      operator delete(v7);
      v18 = *(a1 + 72);
      if (a3)
      {
        sub_271127848(*(a1 + 72), a2);
        v19 = *(v18 + 152);
      }

      else
      {
        std::mutex::lock((v18 + 64));
        sub_271127848(v18, a2);
        v19 = *(v18 + 152);
        std::mutex::unlock((v18 + 64));
      }

      *(a1 + 64) = v19 != 0;
      v20 = a2;
      sub_271124AA4(&v20, a1);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_271124AA4(uint64_t result, uint64_t a2)
{
  v2 = *(*(a2 + 72) + 16);
  if (v2)
  {
    v3 = result;
    do
    {
      v4 = v2[2];
      v5 = *v3;
      v6 = *(v4 + 72);
      std::mutex::lock((v6 + 64));
      sub_271127848(v6, v5);
      v7 = *(v6 + 152);
      std::mutex::unlock((v6 + 64));
      *(v4 + 64) = v7 != 0;
      result = sub_271124AA4(v3, v2[2]);
      v2 = *v2;
    }

    while (v2);
  }

  return result;
}

void sub_271124B40(void *a1)
{
  v2 = *a1;
  std::mutex::lock((*a1 + 56));
  v4 = (a1[9] + 64);
  std::mutex::lock(v4);
  while (1)
  {
    v3 = a1[9];
    if (!*(v3 + 56))
    {
      break;
    }

    sub_2711248D4(a1, *(*(v3 + 40) + 32), &v4);
  }

  std::mutex::unlock(v4);
  std::mutex::unlock((v2 + 56));
}

void sub_271124BCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10)
{
  std::mutex::unlock(a10);
  std::mutex::unlock((v10 + 56));
  _Unwind_Resume(a1);
}

void sub_271124BE8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 72);
  std::mutex::lock(v4 + 1);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v5 = *(*(a1 + 72) + 56);
  if (v5)
  {
    if (!(v5 >> 60))
    {
      operator new();
    }

    sub_271135560();
  }

  v6 = *(a1 + 72);
  v7 = *(v6 + 40);
  v8 = (v6 + 48);
  if (v7 != (v6 + 48))
  {
    do
    {
      sub_271124D30(a2, v7 + 5);
      v9 = v7[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v7[2];
          v11 = *v10 == v7;
          v7 = v10;
        }

        while (!v11);
      }

      v7 = v10;
    }

    while (v10 != v8);
  }

  std::mutex::unlock(v4 + 1);
}

void sub_271124D10(_Unwind_Exception *a1)
{
  sub_271347F18(v1);
  std::mutex::unlock(v2 + 1);
  _Unwind_Resume(a1);
}

void sub_271124D30(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
LABEL_5:
    *(a1 + 8) = v6;
    return;
  }

  v7 = (v3 - *a1) >> 4;
  v8 = v7 + 1;
  if ((v7 + 1) >> 60)
  {
    sub_271135560();
  }

  v9 = v4 - *a1;
  if (v9 >> 3 > v8)
  {
    v8 = v9 >> 3;
  }

  if (v9 >= 0x7FFFFFFFFFFFFFF0)
  {
    v10 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    if (!(v10 >> 60))
    {
      operator new();
    }

    sub_2711270EC();
  }

  v14 = 16 * v7;
  v15 = *a2;
  *(16 * v7) = *a2;
  if (*(&v15 + 1))
  {
    atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v6 = (v14 + 16);
  v11 = *a1;
  v12 = *(a1 + 8) - *a1;
  v13 = v14 - v12;
  memcpy((v14 - v12), *a1, v12);
  *a1 = v13;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v11)
  {
    goto LABEL_5;
  }

  operator delete(v11);
  *(a1 + 8) = v6;
}

unint64_t sub_271124E80(uint64_t a1, const char *a2, int a3, unint64_t a4)
{
  v8 = *(a1 + 72);
  std::mutex::lock(v8 + 1);
  v9 = 40;
  if (a3)
  {
    v9 = 128;
  }

  v10 = (*(a1 + 72) + v9);
  if (!a4)
  {
    goto LABEL_14;
  }

  v11 = v10[1];
  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = v10 + 1;
  do
  {
    v13 = v11[4];
    v14 = v13 >= a4;
    v15 = v13 < a4;
    if (v14)
    {
      v12 = v11;
    }

    v11 = v11[v15];
  }

  while (v11);
  if (v12 == v10 + 1 || (v16 = v12[4], v16 > a4))
  {
LABEL_14:
    if (!a2)
    {
      goto LABEL_25;
    }

    v19 = *v10;
    v18 = v10 + 1;
    v17 = v19;
    if (v19 != v18)
    {
      while (1)
      {
        v20 = (*(*v17[4] + 24))(v17[4]);
        if (v20 == a2 || !strcmp(v20, a2))
        {
          break;
        }

        v21 = v17[1];
        if (v21)
        {
          do
          {
            v22 = v21;
            v21 = *v21;
          }

          while (v21);
        }

        else
        {
          do
          {
            v22 = v17[2];
            v23 = *v22 == v17;
            v17 = v22;
          }

          while (!v23);
        }

        v17 = v22;
        if (v22 == v18)
        {
          goto LABEL_25;
        }
      }
    }

    if (v17 == v18)
    {
LABEL_25:
      v16 = 0;
    }

    else
    {
      v16 = v17[4];
    }
  }

  std::mutex::unlock(v8 + 1);
  return v16;
}

void *sub_271124FDC(void *result, int a2)
{
  v2 = result[5];
  if (!v2)
  {
    std::mutex::lock((*result + 56));
    operator new();
  }

  **v2 = a2;
  return result;
}

void sub_271125454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11)
{
  if (a11 == a10)
  {
    v13 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = __p;
    if (!__p)
    {
LABEL_3:
      std::mutex::unlock((v11 + 56));
      _Unwind_Resume(a1);
    }
  }

  operator delete(v13);
  std::mutex::unlock((v11 + 56));
  _Unwind_Resume(a1);
}

void sub_2711254AC(_Unwind_Exception *a1)
{
  MEMORY[0x2743BF050](v2, 0x1000C4052888210);
  MEMORY[0x2743BF050](v1, 0x30C40EEE2E2AFLL);
  std::mutex::unlock((v3 + 56));
  _Unwind_Resume(a1);
}

void sub_27112550C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2715040D4(&a9);
  std::mutex::unlock((v9 + 56));
  _Unwind_Resume(a1);
}

uint64_t sub_271125528(void *a1)
{
  if (a1[5])
  {
    if (!a1[4])
    {
      return 0;
    }

    v2 = *a1;
    std::mutex::lock((*a1 + 56));
    v3 = a1[4];
    v5 = *(v3 + 48);
    v4 = *(v3 + 56);
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = a1[7];
    a1[6] = v5;
    a1[7] = v4;
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v7 = *(a1[9] + 16);
    *__p = 0u;
    v33 = 0u;
    v34 = 0u;
    v8 = 0;
    if (v7)
    {
      v9 = v7;
      do
      {
        ++v8;
        v9 = *v9;
      }

      while (v9);
    }

    sub_27112A458(__p, v7, v8);
    i = *(&v34 + 1);
    if (*(&v34 + 1))
    {
      v11 = __p[1];
      v12 = v34;
      do
      {
        v13 = *&v11[(v12 >> 6) & 0x3FFFFFFFFFFFFF8];
        v14 = v12 & 0x1FF;
        v15 = *(v13 + 8 * v14);
        if (!v15[5])
        {
          v17 = a1[6];
          v16 = a1[7];
          if (v16)
          {
            atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
          }

          v18 = v15[7];
          v15[6] = v17;
          v15[7] = v16;
          if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v18->__on_zero_shared)(v18);
            std::__shared_weak_count::__release_weak(v18);
            v19 = *(*(*(v13 + 8 * v14) + 72) + 16);
            for (i = *(&v34 + 1); v19; v19 = *v19)
            {
LABEL_26:
              v20 = __p[1];
              if (v33 == __p[1])
              {
                v21 = 0;
              }

              else
              {
                v21 = ((v33 - __p[1]) << 6) - 1;
              }

              v22 = v34 + i;
              if (v21 == v22)
              {
                sub_27112799C(__p);
                v20 = __p[1];
                v22 = *(&v34 + 1) + v34;
              }

              *(*&v20[(v22 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v22 & 0x1FF)) = v19[2];
              i = ++*(&v34 + 1);
            }
          }

          else
          {
            v19 = *(*(*(v13 + 8 * v14) + 72) + 16);
            i = *(&v34 + 1);
            if (v19)
            {
              goto LABEL_26;
            }
          }
        }

        v11 = __p[1];
        --i;
        v12 = v34 + 1;
        *&v34 = v12;
        *(&v34 + 1) = i;
        if (v12 >= 0x400)
        {
          operator delete(*__p[1]);
          v11 = __p[1] + 8;
          v12 = v34 - 512;
          __p[1] = __p[1] + 8;
          *&v34 = v34 - 512;
          i = *(&v34 + 1);
        }
      }

      while (i);
    }

    v23 = a1[5];
    a1[5] = 0;
    if (v23)
    {
      v24 = *(v23 + 8);
      if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v25 = v23;
        (v24->__on_zero_shared)(v24);
        std::__shared_weak_count::__release_weak(v24);
        v23 = v25;
      }

      MEMORY[0x2743BF050](v23, 0x30C40EEE2E2AFLL);
    }

    v26 = __p[1];
    v27 = v33;
    *(&v34 + 1) = 0;
    v28 = (v33 - __p[1]) >> 3;
    if (v28 >= 3)
    {
      do
      {
        operator delete(*v26);
        v27 = v33;
        v26 = (__p[1] + 8);
        __p[1] = v26;
        v28 = (v33 - v26) >> 3;
      }

      while (v28 > 2);
    }

    if (v28 == 1)
    {
      v29 = 256;
    }

    else
    {
      if (v28 != 2)
      {
        goto LABEL_44;
      }

      v29 = 512;
    }

    *&v34 = v29;
LABEL_44:
    if (v26 != v27)
    {
      do
      {
        v31 = *v26++;
        operator delete(v31);
      }

      while (v26 != v27);
      if (v33 != __p[1])
      {
        *&v33 = v33 + ((__p[1] - v33 + 7) & 0xFFFFFFFFFFFFFFF8);
      }
    }

    if (__p[0])
    {
      operator delete(__p[0]);
    }

    std::mutex::unlock((v2 + 56));
  }

  return 1;
}

void sub_2711258BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11)
{
  if (a11 == a10)
  {
    v13 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = __p;
    if (!__p)
    {
LABEL_3:
      std::mutex::unlock((v11 + 56));
      _Unwind_Resume(a1);
    }
  }

  operator delete(v13);
  std::mutex::unlock((v11 + 56));
  _Unwind_Resume(a1);
}

void sub_271125914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2715040D4(&a9);
  std::mutex::unlock((v9 + 56));
  _Unwind_Resume(a1);
}

void sub_271125930(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  std::mutex::lock((*a1 + 56));
  sub_27112599C(a1, a2);

  std::mutex::unlock((v4 + 56));
}

void sub_27112599C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = **v4 - 1;
    if (v5 > 5)
    {
      v6 = "{error}";
      v7 = strlen("{error}");
      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v6 = (&off_279E2F450)[v5];
      v7 = strlen(v6);
      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_29:
        sub_271120DA8();
      }
    }
  }

  else
  {
    v6 = "NONE";
    v7 = strlen("NONE");
    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_29;
    }
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v17) = v7;
  if (v7)
  {
    memcpy(&v16, v6, v7);
    *(&v16 + v8) = 0;
    v9 = *(*(a1 + 72) + 56);
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    LOBYTE(v16) = 0;
    v9 = *(*(a1 + 72) + 56);
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
LABEL_9:
      *a2 = *(a1 + 8);
      *(a2 + 16) = *(a1 + 24);
      goto LABEL_13;
    }
  }

  sub_271127178(a2, *(a1 + 8), *(a1 + 16));
LABEL_13:
  if (SHIBYTE(v17) < 0)
  {
    v12 = v16;
    sub_271127178((a2 + 24), v16, *(&v16 + 1));
    *(a2 + 56) = 0;
    v10 = (a2 + 56);
    *(a2 + 48) = v9;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    operator delete(v12);
    for (i = *(*(a1 + 72) + 16); i; i = *i)
    {
LABEL_19:
      while (1)
      {
        sub_27112599C(&v16, i[2]);
        v13 = *(a2 + 64);
        if (v13 < *(a2 + 72))
        {
          break;
        }

        *(a2 + 64) = sub_271127D5C(v10, &v16);
        sub_271121DBC(&v16);
        i = *i;
        if (!i)
        {
          return;
        }
      }

      if (SHIBYTE(v17) < 0)
      {
        sub_271127178(*(a2 + 64), v16, *(&v16 + 1));
      }

      else
      {
        v14 = v16;
        *(v13 + 16) = v17;
        *v13 = v14;
      }

      if (SHIBYTE(v19) < 0)
      {
        sub_271127178((v13 + 24), v18, *(&v18 + 1));
      }

      else
      {
        v15 = v18;
        *(v13 + 40) = v19;
        *(v13 + 24) = v15;
      }

      *(v13 + 48) = v20;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      *(v13 + 72) = 0;
      *(v13 + 56) = v21;
      *(v13 + 72) = v22;
      v21 = 0uLL;
      v22 = 0;
      *(a2 + 64) = v13 + 80;
      sub_271121DBC(&v16);
    }
  }

  else
  {
    *(a2 + 24) = v16;
    *(a2 + 40) = v17;
    *(a2 + 56) = 0;
    v10 = (a2 + 56);
    *(a2 + 48) = v9;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    i = *(*(a1 + 72) + 16);
    if (i)
    {
      goto LABEL_19;
    }
  }
}

void sub_271125C34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_271125C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  *(v9 + 64) = v10;
  sub_271121DBC(&a9);
  sub_271121DBC(v9);
  JUMPOUT(0x271125CB8);
}

uint64_t sub_271125CC0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 72);
  v3 = *(v2 + 128);
  v4 = (v2 + 136);
  if (v3 != (v2 + 136))
  {
    do
    {
      result = v3[5];
      if (*(result + 8) == 1)
      {
        result = (*(*result + 16))(result, a2);
      }

      v6 = v3[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v4);
  }

  return result;
}

void sub_27112617C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, char a23)
{
  MEMORY[0x2743BF050](v25, 0x1093C402D7449D9);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x2743BF050](v23, v24);
  _Unwind_Resume(a1);
}

uint64_t sub_271126248(uint64_t result)
{
  if (*(result + 31) < 0)
  {
    v1 = result;
    operator delete(*(result + 8));
    return v1;
  }

  return result;
}

void *sub_27112628C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(*a1 + 48))(&v4);
  *a2 = v4;
  return result;
}

void sub_2711262E4(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27112635C(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = *a2 / 1000 % 1000;
  if (v3 >= 0)
  {
    v4 = *a2 / 1000 % 1000;
  }

  else
  {
    v4 = v3 + 1000;
  }

  *&__t.tm_sec = *a2 - 1000 * v4;
  v17 = std::chrono::system_clock::to_time_t(&__t);
  v5 = localtime_r(&v17, &__t);
  strcpy(__s, "yyyy.mm.dd.HH-MM.SS.fff");
  v6 = strlen(__s);
  strftime(__s, v6, "%Y-%m-%d %H:%M:%S", v5);
  v7 = strlen(__s);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v15 = v7;
  if (v7)
  {
    memcpy(__dst, __s, v7);
  }

  *(__dst + v8) = 0;
  if ((v15 & 0x80u) == 0)
  {
    v9 = __dst;
  }

  else
  {
    v9 = __dst[0];
  }

  if ((v15 & 0x80u) == 0)
  {
    v10 = v15;
  }

  else
  {
    v10 = __dst[1];
  }

  v11 = sub_271120E64((a1 + 16), v9, v10);
  sub_271120E64(v11, ",", 1);
  if (v15 < 0)
  {
    operator delete(__dst[0]);
    if (v4 <= 9)
    {
      goto LABEL_18;
    }
  }

  else if (v4 <= 9)
  {
LABEL_18:
    sub_271120E64((a1 + 16), "00", 2);
    goto LABEL_22;
  }

  if (v4 <= 0x63)
  {
    sub_271120E64((a1 + 16), "0", 1);
  }

LABEL_22:
  result = MEMORY[0x2743BE840](a1 + 16, v4);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_271126578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711265AC(uint64_t a1, void **a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (byte_28087763F < 0)
  {
    sub_271127178(v5, *aPatternlayout, *&aPatternlayout[8]);
  }

  else
  {
    *v5 = *aPatternlayout;
    v6 = unk_280877638;
  }

  v8 = 0x700000000000000;
  *__p = *"ILayout";
  sub_271128138(a2, v5, v9, 2uLL);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v6) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    operator delete(v5[0]);
    v4 = *MEMORY[0x277D85DE8];
    return;
  }

  if (SHIBYTE(v6) < 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v3 = *MEMORY[0x277D85DE8];
}

void sub_2711266AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_271852E2C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_271126790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  sub_2711218C8(v40);
  v6 = *(a1 + 31);
  v39 = a3;
  if ((v6 & 0x8000000000000000) != 0)
  {
    v6 = *(a1 + 16);
    if (v6 < 2)
    {
      goto LABEL_75;
    }

    goto LABEL_5;
  }

  if (v6 >= 2)
  {
LABEL_5:
    v7 = 0;
    v8 = (a1 + 8);
    v9 = 1;
    while (1)
    {
      if (*(a1 + 31) < 0)
      {
        v12 = *(a1 + 31);
        if (*(*v8 + v7) != 37)
        {
LABEL_37:
          v18 = a1 + 8;
          if (v12 < 0)
          {
            v18 = *v8;
          }

          LOBYTE(__dst[0]) = *(v18 + v7);
          sub_271120E64(&v41, __dst, 1);
          v9 = v7;
          goto LABEL_8;
        }
      }

      else
      {
        v12 = *(a1 + 31);
        if (*(v8 + v7) != 37)
        {
          goto LABEL_37;
        }
      }

      v13 = a1 + 8;
      if (v12 < 0)
      {
        v13 = *v8;
      }

      v14 = (v13 + v9);
      v15 = v6 <= v9 + 1 ? v9 + 1 : v6;
      while (1)
      {
        v16 = *v14;
        if (v16 > 101)
        {
          break;
        }

        if (v16 <= 75)
        {
          if (v16 == 37)
          {
            v26 = "%";
            goto LABEL_52;
          }

          if (v16 == 70)
          {
            v10 = *(a2 + 32);
            v22 = strrchr(v10, 47);
            if (v22)
            {
              v10 = v22 + 1;
            }

            else
            {
              v30 = strrchr(v10, 92);
              if (v30)
              {
                v10 = v30 + 1;
              }
            }

            goto LABEL_7;
          }
        }

        else
        {
          switch(v16)
          {
            case 'L':
              MEMORY[0x2743BE7E0](&v41, *(a2 + 40));
              goto LABEL_8;
            case 'c':
              v10 = *a2;
LABEL_7:
              v11 = strlen(v10);
              sub_271120E64(&v41, v10, v11);
              goto LABEL_8;
            case 'd':
              sub_27112635C(v40, (a2 + 16));
              goto LABEL_8;
          }
        }

LABEL_34:
        v17 = a1 + 8;
        if (*(a1 + 31) < 0)
        {
          v17 = *v8;
        }

        v14 = (v17 + v9++ + 1);
        if (v9 >= v6)
        {
          v9 = v15;
          goto LABEL_8;
        }
      }

      if (v16 > 111)
      {
        switch(v16)
        {
          case 'p':
            v10 = (&off_279E2F418)[*(a2 + 24)];
            goto LABEL_7;
          case 'r':
            if ((atomic_load_explicit(&qword_2808799A8, memory_order_acquire) & 1) == 0)
            {
              sub_271852DF4();
            }

            MEMORY[0x2743BE840](&v41, (*(a2 + 8) - qword_2808799A0) / 1000000);
            goto LABEL_8;
          case 't':
            v23 = pthread_self();
            v24 = 0x9DDFEA08EB382D69 * ((8 * (v23 & 0x1FFFFFFF) + 8) ^ (v23 >> 32));
            v25 = 0x9DDFEA08EB382D69 * ((v23 >> 32) ^ (v24 >> 47) ^ v24);
            MEMORY[0x2743BE810](&v41, 0x9DDFEA08EB382D69 * (v25 ^ (v25 >> 47)));
            goto LABEL_8;
        }

        goto LABEL_34;
      }

      if (v16 == 102)
      {
        v10 = *(a2 + 48);
        goto LABEL_7;
      }

      if (v16 != 109)
      {
        break;
      }

      v19 = *(a2 + 56);
      v20 = *(v19 + 120);
      if ((v20 & 0x10) != 0)
      {
        v27 = *(v19 + 112);
        v28 = *(v19 + 72);
        if (v27 < v28)
        {
          *(v19 + 112) = v28;
          v27 = v28;
        }

        v29 = *(v19 + 64);
        v21 = v27 - v29;
        if (v27 - v29 <= 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_62;
        }

LABEL_91:
        sub_271120DA8();
      }

      if ((v20 & 8) == 0)
      {
        v21 = 0;
        v54 = 0;
        goto LABEL_67;
      }

      v29 = *(v19 + 40);
      v21 = *(v19 + 56) - v29;
      if (v21 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_91;
      }

LABEL_62:
      if (v21 >= 0x17)
      {
        operator new();
      }

      v54 = v21;
      if (v21)
      {
        memmove(__dst, v29, v21);
      }

LABEL_67:
      *(__dst + v21) = 0;
      if ((v54 & 0x80u) == 0)
      {
        v31 = __dst;
      }

      else
      {
        v31 = __dst[0];
      }

      if ((v54 & 0x80u) == 0)
      {
        v32 = v54;
      }

      else
      {
        v32 = __dst[1];
      }

      sub_271120E64(&v41, v31, v32);
      if (v54 < 0)
      {
        operator delete(__dst[0]);
      }

LABEL_8:
      v7 = v9 + 1;
      v9 += 2;
      if (v9 >= v6)
      {
        goto LABEL_75;
      }
    }

    if (v16 == 110)
    {
      v26 = "\n";
LABEL_52:
      sub_271120E64(&v41, v26, 1);
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_75:
  if ((v51 & 0x10) != 0)
  {
    v35 = v50;
    v33 = v39;
    if (v50 < v47)
    {
      v50 = v47;
      v35 = v47;
    }

    v36 = v46;
    v34 = v35 - v46;
    if (v35 - v46 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_90;
    }
  }

  else
  {
    v33 = v39;
    if ((v51 & 8) == 0)
    {
      v34 = 0;
      v39[23] = 0;
      goto LABEL_86;
    }

    v36 = v44;
    v34 = v45 - v44;
    if ((v45 - v44) > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_90:
      sub_271120DA8();
    }
  }

  if (v34 >= 0x17)
  {
    operator new();
  }

  v33[23] = v34;
  if (v34)
  {
    memmove(v33, v36, v34);
  }

LABEL_86:
  v33[v34] = 0;
  v40[0] = *MEMORY[0x277D82818];
  v37 = *(MEMORY[0x277D82818] + 72);
  *(v40 + *(v40[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v41 = v37;
  v42 = MEMORY[0x277D82878] + 16;
  if (v49 < 0)
  {
    operator delete(__p);
  }

  v42 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v43);
  std::iostream::~basic_iostream();
  return MEMORY[0x2743BEF20](&v52);
}

void sub_271126DD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271123F00(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271126E18(uint64_t result)
{
  v1 = *(result + 16);
  *(result + 16) = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void sub_271126E74(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

void sub_271126EF8(uint64_t a1, uint64_t a2)
{
  if (((1 << (*(a2 + 24) - 1)) | *(a1 + 24)) == *(a1 + 24))
  {
    (*(**(a1 + 16) + 40))(&__p);
    std::mutex::lock(&stru_2808775E8);
    v3 = *(a2 + 24);
    if ((v3 - 1) < 3)
    {
      if ((atomic_load_explicit(qword_2808799B0, memory_order_acquire) & 1) == 0)
      {
        sub_271852E58();
      }

      if ((v14 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v14 & 0x80u) == 0)
      {
        v8 = v14;
      }

      else
      {
        v8 = v13;
      }

      sub_271120E64(qword_2808799E8, p_p, v8);
      v6 = &qword_2808799E8;
      if (atomic_load_explicit(qword_2808799B0, memory_order_acquire))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if ((v3 - 4) >= 3)
      {
        goto LABEL_24;
      }

      if ((atomic_load_explicit(qword_2808799B0, memory_order_acquire) & 1) == 0)
      {
        sub_271852E58();
      }

      if ((v14 & 0x80u) == 0)
      {
        v4 = &__p;
      }

      else
      {
        v4 = __p;
      }

      if ((v14 & 0x80u) == 0)
      {
        v5 = v14;
      }

      else
      {
        v5 = v13;
      }

      sub_271120E64(qword_2808799F0, v4, v5);
      v6 = &qword_2808799F0;
      if (atomic_load_explicit(qword_2808799B0, memory_order_acquire))
      {
LABEL_23:
        v9 = *v6;
        std::ostream::flush();
LABEL_24:
        std::mutex::unlock(&stru_2808775E8);
        if (v14 < 0)
        {
          operator delete(__p);
        }

        return;
      }
    }

    v10 = v6;
    v11 = __cxa_guard_acquire(qword_2808799B0);
    v6 = v10;
    if (v11)
    {
      qword_2808799E8 = MEMORY[0x277D82678];
      qword_2808799F0 = MEMORY[0x277D82670];
      __cxa_guard_release(qword_2808799B0);
      v6 = v10;
    }

    goto LABEL_23;
  }
}

void sub_2711270A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711270EC()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void *sub_271127120(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x2743BF050](v1, 0x10C402FEFCB83);
    return v2;
  }

  return result;
}

void *sub_271127178(_BYTE *a1, const void *a2, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_271120DA8();
  }

  a1[23] = a3;
  v3 = a3 + 1;

  return memmove(a1, a2, v3);
}

void ***sub_271127234(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = v2;
      if (v4 != v2)
      {
        do
        {
          v4 = sub_271121DBC(v4 - 80);
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void sub_2711272B0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2711272E8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_271127308(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__110shared_ptrIN4tlog8LogLevelEE27__shared_ptr_default_deleteIS2_S2_EE")
  {
    if (((v2 & "NSt3__110shared_ptrIN4tlog8LogLevelEE27__shared_ptr_default_deleteIS2_S2_EE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__110shared_ptrIN4tlog8LogLevelEE27__shared_ptr_default_deleteIS2_S2_EE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIN4tlog8LogLevelEE27__shared_ptr_default_deleteIS2_S2_EE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_271127368(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_271127368(a1, *a2);
    sub_271127368(a1, a2[1]);
    v4 = a2[6];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v5 = a2;
    }

    else
    {
      v5 = a2;
    }

    operator delete(v5);
  }
}

uint64_t sub_271127424(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_271135560();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v6 = 8 * ((*(a1 + 8) - *a1) >> 3);
  if (*(a2 + 23) < 0)
  {
    sub_271127178(v6, *a2, *(a2 + 8));
    v6 = 24 * v2;
  }

  else
  {
    *v6 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 16);
  }

  v7 = 24 * v2 + 24;
  v8 = *(a1 + 8) - *a1;
  v9 = v6 - v8;
  memcpy((v6 - v8), *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v7;
}

void sub_271127564(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271127578(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_2711275E0(uint64_t a1)
{
  v4 = *(a1 + 24);
  v2 = (a1 + 24);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_271127634(v2, v3);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_271127634(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_271122298((a2 + 72));
    v3 = *(a2 + 56);
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = *(a2 + 40);
    *(a2 + 40) = 0;
    if (v4)
    {
      v5 = *(v4 + 8);
      if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v6 = v4;
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
        v4 = v6;
      }

      MEMORY[0x2743BF050](v4, 0x30C40EEE2E2AFLL);
    }

    if (*(a2 + 31) < 0)
    {
      operator delete(*(a2 + 8));
    }

    JUMPOUT(0x2743BF050);
  }
}

void sub_271127758(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  sub_271128C6C();
}

void sub_271127834(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2712C9E78(va);
  _Unwind_Resume(a1);
}

void sub_271127848(void *a1, unint64_t a2)
{
  v4 = a1 + 17;
  v3 = a1[17];
  if (v3)
  {
    v5 = v4;
    v6 = v3;
    do
    {
      v7 = v6[4];
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v5 = v6;
      }

      v6 = v6[v9];
    }

    while (v6);
    if (v5 != v4)
    {
      v10 = v5[4];
      if (v10 <= a2)
      {
        if (*(v10 + 8) == 1)
        {
          --a1[19];
        }

        v11 = v5[1];
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          v13 = v5;
          do
          {
            v12 = v13[2];
            v14 = *v12 == v13;
            v13 = v12;
          }

          while (!v14);
        }

        if (a1[16] == v5)
        {
          a1[16] = v12;
        }

        --a1[18];
        sub_271128F64(v3, v5);
        v15 = v5[6];
        if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
          v16 = v5;
        }

        else
        {
          v16 = v5;
        }

        operator delete(v16);
      }
    }
  }
}

void *sub_27112799C(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    sub_2711270EC();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return sub_271382FA0(a1, &v11);
}

void sub_271127D04(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_271127D5C(__int128 **a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * (a1[1] - *a1) + 1;
  if (v2 > 0x333333333333333)
  {
    sub_271135560();
  }

  if (0x999999999999999ALL * (a1[2] - *a1) > v2)
  {
    v2 = 0x999999999999999ALL * (a1[2] - *a1);
  }

  if (0xCCCCCCCCCCCCCCCDLL * (a1[2] - *a1) >= 0x199999999999999)
  {
    v5 = 0x333333333333333;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0x333333333333333)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v6 = 16 * (a1[1] - *a1);
  v16 = v6;
  if (*(a2 + 23) < 0)
  {
    sub_271127178(v6, *a2, *(a2 + 8));
  }

  else
  {
    *v6 = *a2;
    *(v6 + 16) = *(a2 + 16);
  }

  if (*(a2 + 47) < 0)
  {
    sub_271127178((v6 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    *(v6 + 24) = *(a2 + 24);
    *(v6 + 40) = *(a2 + 40);
  }

  *(v6 + 48) = *(a2 + 48);
  *(v6 + 56) = *(a2 + 56);
  *(v6 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v7 = v6 + 80;
  v8 = *a1;
  v9 = a1[1];
  v10 = *a1 - v9;
  v11 = (v16 + v10);
  if (*a1 != v9)
  {
    v12 = 0;
    v13 = *a1;
    v14 = v16 + v10;
    do
    {
      sub_271121BFC(v14, v13);
      v13 += 5;
      v14 += 80;
      v12 -= 80;
    }

    while (v13 != v9);
    do
    {
      sub_271121DBC(v8);
      v8 += 5;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v11;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_271127F34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
    sub_271127F98(va);
    _Unwind_Resume(a1);
  }

  sub_271127F98(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271127F98(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    sub_271121DBC(i - 80);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_271128004(uint64_t *result, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v3 = *(result + 23);
    v4 = v3;
    v5 = result;
    if (v3 < 0)
    {
      v5 = *result;
      v4 = result[1];
      v6 = v4 - a2;
      if (v4 - a2 >= a3)
      {
        v7 = a3;
      }

      else
      {
        v7 = v4 - a2;
      }

      if (v4 - a2 <= a3)
      {
LABEL_7:
        v8 = v4 - v7;
        if ((v3 & 0x80) == 0)
        {
LABEL_8:
          *(result + 23) = v8 & 0x7F;
LABEL_15:
          *(v5 + v8) = 0;
          return result;
        }

LABEL_14:
        result[1] = v8;
        goto LABEL_15;
      }
    }

    else
    {
      v6 = v3 - a2;
      if (v3 - a2 >= a3)
      {
        v7 = a3;
      }

      else
      {
        v7 = v3 - a2;
      }

      if (v3 - a2 <= a3)
      {
        goto LABEL_7;
      }
    }

    v9 = result;
    memmove(v5 + a2, v5 + a2 + v7, v6 - v7);
    result = v9;
    v8 = v4 - v7;
    if ((*(v9 + 23) & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  return result;
}

void sub_2711280A8(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, a1);
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

std::logic_error *sub_271128104(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void sub_271128138(void **a1, const void **a2, const void **a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v24 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v25 = 2 * v24;
      if (2 * v24 <= a4)
      {
        v25 = a4;
      }

      if (v24 >= 0x555555555555555)
      {
        v26 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v26 = v25;
      }

      if (v26 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_271135560();
  }

  v13 = a1[1];
  v14 = (v13 - v8);
  if (0xAAAAAAAAAAAAAAABLL * ((v13 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        if (v5 != v8)
        {
          v22 = *(v5 + 23);
          if (v8[23] < 0)
          {
            if (v22 >= 0)
            {
              v20 = v5;
            }

            else
            {
              v20 = *v5;
            }

            if (v22 >= 0)
            {
              v21 = *(v5 + 23);
            }

            else
            {
              v21 = v5[1];
            }

            sub_2711289F8(v8, v20, v21);
          }

          else if ((*(v5 + 23) & 0x80) != 0)
          {
            sub_271128928(v8, *v5, v5[1]);
          }

          else
          {
            v23 = *v5;
            *(v8 + 2) = v5[2];
            *v8 = v23;
          }
        }

        v5 += 3;
        v8 += 24;
      }

      while (v5 != a3);
      v13 = a1[1];
    }

    while (v13 != v8)
    {
      v29 = *(v13 - 1);
      v13 -= 3;
      if (v29 < 0)
      {
        operator delete(*v13);
      }
    }

    a1[1] = v8;
  }

  else
  {
    if (v13 != v8)
    {
      v15 = &v14[a2];
      do
      {
        if (v5 != v8)
        {
          v18 = *(v5 + 23);
          if (v8[23] < 0)
          {
            if (v18 >= 0)
            {
              v16 = v5;
            }

            else
            {
              v16 = *v5;
            }

            if (v18 >= 0)
            {
              v17 = *(v5 + 23);
            }

            else
            {
              v17 = v5[1];
            }

            sub_2711289F8(v8, v16, v17);
          }

          else if ((*(v5 + 23) & 0x80) != 0)
          {
            sub_271128928(v8, *v5, v5[1]);
          }

          else
          {
            v19 = *v5;
            *(v8 + 2) = v5[2];
            *v8 = v19;
          }
        }

        v5 += 3;
        v8 += 24;
        v14 -= 24;
      }

      while (v14);
      v13 = a1[1];
      v5 = v15;
    }

    v30 = v13;
    v27 = v13;
    if (v5 != a3)
    {
      v27 = v13;
      do
      {
        while ((*(v5 + 23) & 0x80000000) == 0)
        {
          v28 = *v5;
          v27[2] = v5[2];
          *v27 = v28;
          v27 += 3;
          v5 += 3;
          v30 = v27;
          if (v5 == a3)
          {
            goto LABEL_55;
          }
        }

        sub_271127178(v27, *v5, v5[1]);
        v5 += 3;
        v27 = v30 + 3;
        v30 += 3;
      }

      while (v5 != a3);
    }

LABEL_55:
    a1[1] = v27;
  }
}

void sub_2711284AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2713B296C(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_2711284C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2713B296C(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

unint64_t sub_2711284DC(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v23 = *(a2 + a3 - 48);
      v24 = *(a2 + a3 - 40);
      v25 = *(a2 + a3 - 24);
      v26 = *(a2 + a3 - 56);
      v27 = *(a2 + a3 - 16);
      v28 = *(a2 + a3 - 8);
      v29 = v26 + v27;
      v30 = 0x9DDFEA08EB382D69 * (v25 ^ ((0x9DDFEA08EB382D69 * (v25 ^ (v23 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v25 ^ (v23 + a3))));
      v31 = 0x9DDFEA08EB382D69 * (v30 ^ (v30 >> 47));
      v32 = *(a2 + a3 - 64) + a3;
      v33 = v32 + v26 + v23;
      v34 = __ROR8__(v33, 44) + v32;
      v35 = __ROR8__(v24 + v32 + v31, 21);
      v36 = v33 + v24;
      v37 = v34 + v35;
      v38 = v29 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v39 = v38 + v25 + v27;
      v40 = v39 + v28;
      v41 = __ROR8__(v39, 44) + v38 + __ROR8__(v38 + v24 + v28, 21);
      v43 = *a2;
      v42 = a2 + 4;
      v44 = v43 - 0x4B6D499041670D8DLL * v24;
      v45 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v46 = *(v42 - 3);
        v47 = v44 + v36 + v29 + v46;
        v48 = v42[2];
        v49 = v42[3];
        v50 = v42[1];
        v29 = v50 + v36 - 0x4B6D499041670D8DLL * __ROR8__(v29 + v37 + v48, 42);
        v51 = v31 + v40;
        v52 = *(v42 - 2);
        v53 = *(v42 - 1);
        v54 = *(v42 - 4) - 0x4B6D499041670D8DLL * v37;
        v55 = v54 + v40 + v53;
        v56 = v54 + v46 + v52;
        v36 = v56 + v53;
        v57 = __ROR8__(v56, 44) + v54;
        v58 = (0xB492B66FBE98F273 * __ROR8__(v47, 37)) ^ v41;
        v44 = 0xB492B66FBE98F273 * __ROR8__(v51, 33);
        v37 = v57 + __ROR8__(v55 + v58, 21);
        v59 = v44 + v41 + *v42;
        v40 = v59 + v50 + v48 + v49;
        v41 = __ROR8__(v59 + v50 + v48, 44) + v59 + __ROR8__(v29 + v52 + v59 + v49, 21);
        v42 += 8;
        v31 = v58;
        v45 += 64;
      }

      while (v45);
      v60 = v58 - 0x4B6D499041670D8DLL * (v29 ^ (v29 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v40 ^ ((0x9DDFEA08EB382D69 * (v40 ^ v36)) >> 47) ^ (0x9DDFEA08EB382D69 * (v40 ^ v36)))) ^ ((0x9DDFEA08EB382D69 * (v40 ^ ((0x9DDFEA08EB382D69 * (v40 ^ v36)) >> 47) ^ (0x9DDFEA08EB382D69 * (v40 ^ v36)))) >> 47));
      v61 = v44 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v41 ^ ((0x9DDFEA08EB382D69 * (v41 ^ v37)) >> 47) ^ (0x9DDFEA08EB382D69 * (v41 ^ v37)))) ^ ((0x9DDFEA08EB382D69 * (v41 ^ ((0x9DDFEA08EB382D69 * (v41 ^ v37)) >> 47) ^ (0x9DDFEA08EB382D69 * (v41 ^ v37)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v60)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v60)))) ^ ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v60)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v60)))) >> 47));
    }

    else
    {
      v6 = *(a2 + a3 - 16);
      v7 = *a2 - 0x3C5A37A36834CED9 * (v6 + a3);
      v9 = a2[2];
      v8 = a2[3];
      v10 = __ROR8__(v7 + v8, 52);
      v11 = v7 + a2[1];
      v12 = __ROR8__(v11, 7);
      v13 = v11 + v9;
      v14 = *(a2 + a3 - 32) + v9;
      v15 = v12 + __ROR8__(*a2 - 0x3C5A37A36834CED9 * (v6 + a3), 37) + v10 + __ROR8__(v13, 31);
      v16 = *(a2 + a3 - 24) + v14 + v6;
      v17 = 0xC3A5C85C97CB3127 * (v16 + *(a2 + a3 - 8) + v8 + v15) - 0x651E95C4D06FBFB1 * (v13 + v8 + __ROR8__(v14, 37) + __ROR8__(*(a2 + a3 - 24) + v14, 7) + __ROR8__(*(a2 + a3 - 8) + v8 + v14, 52) + __ROR8__(v16, 31));
      return 0x9AE16A3B2F90404FLL * ((v15 - 0x3C5A37A36834CED9 * (v17 ^ (v17 >> 47))) ^ ((v15 - 0x3C5A37A36834CED9 * (v17 ^ (v17 >> 47))) >> 47));
    }
  }

  else if (a3 > 0x10)
  {
    v18 = a2[1];
    v19 = 0xB492B66FBE98F273 * *a2;
    v20 = __ROR8__(0x9AE16A3B2F90404FLL * *(a2 + a3 - 8), 30) + __ROR8__(v19 - v18, 43);
    v21 = v19 + a3 + __ROR8__(v18 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a2 + a3 - 8);
    v22 = 0x9DDFEA08EB382D69 * ((v20 - 0x3C5A37A36834CED9 * *(a2 + a3 - 16)) ^ v21);
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) ^ ((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) >> 47));
  }

  else if (a3 < 9)
  {
    if (a3 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a3)
      {
        v64 = (0xC949D7C7509E6557 * (a3 | (4 * *(a2 + a3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a2 | (*(a2 + (a3 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v64 ^ (v64 >> 47));
      }
    }

    else
    {
      v62 = *(a2 + a3 - 4);
      v63 = 0x9DDFEA08EB382D69 * (((8 * *a2) + a3) ^ v62);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v62 ^ (v63 >> 47) ^ v63)) ^ ((0x9DDFEA08EB382D69 * (v62 ^ (v63 >> 47) ^ v63)) >> 47));
    }
  }

  else
  {
    v3 = *(a2 + a3 - 8);
    v4 = __ROR8__(v3 + a3, a3);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) >> 47))) ^ v3;
  }

  return result;
}

_BYTE *sub_271128928(_BYTE *__dst, const void *a2, size_t __len)
{
  if (__len > 0x16)
  {
    if (__len - 0x7FFFFFFFFFFFFFF7 > 0x800000000000001ELL)
    {
      operator new();
    }

    sub_271120DA8();
  }

  __dst[23] = __len;
  v5 = __dst;
  if (__len)
  {
    memmove(__dst, a2, __len);
    v5 = __dst;
  }

  v5[__len] = 0;
  return __dst;
}

void **sub_2711289F8(void **a1, const void *a2, size_t __len)
{
  v5 = a1[2];
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) <= __len)
  {
    if (0x7FFFFFFFFFFFFFF7 - (v5 & 0x7FFFFFFFFFFFFFFFLL) >= __len - (v5 & 0x7FFFFFFFFFFFFFFFLL) + 1)
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        v7 = *a1;
      }

      operator new();
    }

    sub_271120DA8();
  }

  v6 = *a1;
  a1[1] = __len;
  if (__len)
  {
    memmove(v6, a2, __len);
  }

  *(v6 + __len) = 0;
  return a1;
}

void *sub_271128B20(void *result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3 != a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_271135560();
  }

  return result;
}

void sub_271128C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_2713B296C(&a11);
  *(v11 + 8) = v12;
  sub_2713540AC(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_271128DB8(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 == result)
  {
    return result;
  }

  while (1)
  {
    v2 = a2[2];
    if (v2[3])
    {
      return result;
    }

    v3 = v2[2];
    v4 = *v3;
    if (*v3 != v2)
    {
      break;
    }

    v8 = v3[1];
    if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
    {
      if (*v2 == a2)
      {
        v20 = a2[2];
        *(v2 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = v2[1];
        v11 = *v10;
        v2[1] = *v10;
        v12 = v2;
        if (v11)
        {
          v11[2] = v2;
          v3 = v2[2];
          v12 = *v3;
        }

        v10[2] = v3;
        v3[v12 != v2] = v10;
        *v10 = v2;
        v2[2] = v10;
        v3 = v10[2];
        v4 = *v3;
        *(v10 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
LABEL_15:
          *(v13 + 16) = v3;
        }
      }

      v14 = v3[2];
      v14[*v14 != v3] = v4;
      v4[1] = v3;
      v4[2] = v14;
      v3[2] = v4;
      return result;
    }

LABEL_3:
    *(v2 + 24) = 1;
    a2 = v3;
    *(v3 + 24) = v3 == result;
    *v7 = 1;
    if (v3 == result)
    {
      return result;
    }
  }

  if (v4)
  {
    v6 = *(v4 + 24);
    v5 = v4 + 3;
    if (v6 != 1)
    {
      v7 = v5;
      goto LABEL_3;
    }
  }

  v15 = *v2;
  if (*v2 == a2)
  {
    v16 = *(v15 + 8);
    *v2 = v16;
    if (v16)
    {
      *(v16 + 16) = v2;
      v3 = v2[2];
    }

    v3[*v3 != v2] = v15;
    *(v15 + 8) = v2;
    *(v15 + 16) = v3;
    v2[2] = v15;
    v3 = *(v15 + 16);
  }

  else
  {
    v15 = a2[2];
  }

  *(v15 + 24) = 1;
  *(v3 + 24) = 0;
  v17 = v3[1];
  v18 = *v17;
  v3[1] = *v17;
  if (v18)
  {
    *(v18 + 16) = v3;
  }

  v19 = v3[2];
  v17[2] = v19;
  v19[*v19 != v3] = v17;
  *v17 = v3;
  v3[2] = v17;
  return result;
}

uint64_t **sub_271128F64(uint64_t **result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      v5 = 0;
      v6 = a2[2];
      *(v2 + 16) = v6;
      v7 = *v6;
      if (*v6 == a2)
      {
        goto LABEL_10;
      }

LABEL_6:
      v6[1] = v2;
      v8 = *(v3 + 24);
      if (v3 == a2)
      {
        goto LABEL_7;
      }

LABEL_16:
      v9 = a2[2];
      v9[*v9 != a2] = v3;
      v3[2] = v9;
      v11 = *a2;
      v10 = a2[1];
      *(v11 + 16) = v3;
      *v3 = v11;
      v3[1] = v10;
      if (v10)
      {
        *(v10 + 16) = v3;
      }

      *(v3 + 24) = *(a2 + 24);
      if (result == a2)
      {
        result = v3;
      }

      if (!result)
      {
        return result;
      }

      goto LABEL_21;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (!v2)
  {
    v6 = v3[2];
    v5 = 1;
    v7 = *v6;
    if (*v6 == v3)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v5 = 0;
  v6 = v3[2];
  *(v2 + 16) = v6;
  v7 = *v6;
  if (*v6 != v3)
  {
    goto LABEL_6;
  }

LABEL_10:
  *v6 = v2;
  if (v3 == result)
  {
    v7 = 0;
    result = v2;
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = v6[1];
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  if (!result)
  {
    return result;
  }

LABEL_21:
  if (!v8)
  {
    return result;
  }

  if (!v5)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v14 = v7[2];
    v15 = *v14;
    v16 = *(v7 + 24);
    if (*v14 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v14 + 24) = 0;
      v17 = v14[1];
      v18 = *v17;
      v14[1] = *v17;
      if (v18)
      {
        *(v18 + 16) = v14;
      }

      v19 = v14[2];
      v17[2] = v19;
      v19[*v19 != v14] = v17;
      *v17 = v14;
      v14[2] = v17;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v20 = *v7;
    if (*v7 && *(v20 + 24) != 1)
    {
      v21 = v7[1];
      if (!v21)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v21 + 24) == 1)
      {
LABEL_62:
        *(v20 + 24) = 1;
        *(v7 + 24) = 0;
        v29 = v20[1];
        *v7 = v29;
        if (v29)
        {
          *(v29 + 16) = v7;
        }

        v30 = v7[2];
        v30[*v30 != v7] = v20;
        v20[1] = v7;
        v20[2] = v30;
        v7[2] = v20;
        v21 = v7;
      }

      else
      {
        v20 = v7;
      }

      v31 = v20[2];
      *(v20 + 24) = *(v31 + 24);
      *(v31 + 24) = 1;
      *(v21 + 24) = 1;
      v32 = *(v31 + 8);
      v33 = *v32;
      *(v31 + 8) = *v32;
      if (v33)
      {
        *(v33 + 16) = v31;
      }

      v34 = *(v31 + 16);
      v32[2] = v34;
      v34[*v34 != v31] = v32;
      *v32 = v31;
      *(v31 + 16) = v32;
      return result;
    }

    v21 = v7[1];
    if (v21 && *(v21 + 24) != 1)
    {
      goto LABEL_61;
    }

    *(v7 + 24) = 0;
    v12 = v7[2];
    if (v12 == result || (v12[3] & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_28:
    v7 = v12[2][*v12[2] == v12];
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v14 + 24) = 0;
    v22 = v15[1];
    *v14 = v22;
    if (v22)
    {
      v22[2] = v14;
    }

    v23 = v14[2];
    v23[*v23 != v14] = v15;
    v15[1] = v14;
    v15[2] = v23;
    v14[2] = v15;
    v24 = v7[1];
    if (result == v24)
    {
      result = v7;
    }

    v7 = *v24;
  }

  v25 = *v7;
  if (*v7 && *(v25 + 24) != 1)
  {
    goto LABEL_69;
  }

  v26 = v7[1];
  if (!v26 || *(v26 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v12 = v7[2];
    if (*(v12 + 24) != 1 || v12 == result)
    {
LABEL_59:
      *(v12 + 24) = 1;
      return result;
    }

    goto LABEL_28;
  }

  if (v25 && (v25[3] & 1) == 0)
  {
LABEL_69:
    v26 = v7;
  }

  else
  {
    *(v26 + 24) = 1;
    *(v7 + 24) = 0;
    v27 = *v26;
    v7[1] = *v26;
    if (v27)
    {
      *(v27 + 16) = v7;
    }

    v28 = v7[2];
    v26[2] = v28;
    v28[*v28 != v7] = v26;
    *v26 = v7;
    v7[2] = v26;
    v25 = v7;
  }

  v35 = v26[2];
  *(v26 + 24) = *(v35 + 24);
  *(v35 + 24) = 1;
  *(v25 + 24) = 1;
  v36 = *v35;
  v37 = *(*v35 + 8);
  *v35 = v37;
  if (v37)
  {
    *(v37 + 16) = v35;
  }

  v38 = v35[2];
  v38[*v38 != v35] = v36;
  *(v36 + 8) = v35;
  *(v36 + 16) = v38;
  v35[2] = v36;
  return result;
}

uint64_t sub_271129318(uint64_t result)
{
  *(result + 88) = 0;
  v1 = result + 64;
  v2 = *(result + 87);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = result + 64;
    v4 = *(result + 87);
    v5 = *(result + 96);
    if ((v5 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = *(result + 64);
  v4 = *(result + 72);
  v5 = *(result + 96);
  if ((v5 & 8) != 0)
  {
LABEL_3:
    *(result + 88) = v3 + v4;
    *(result + 16) = v3;
    *(result + 24) = v3;
    *(result + 32) = v3 + v4;
  }

LABEL_4:
  if ((v5 & 0x10) == 0)
  {
    return result;
  }

  *(result + 88) = v3 + v4;
  if ((v2 & 0x80000000) != 0)
  {
    v2 = *(result + 72);
    v6 = (*(result + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v2 >= v6)
    {
      v1 = *(result + 64);
      *(result + 72) = v6;
LABEL_14:
      *(v1 + v6) = 0;
      v8 = *(result + 87);
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v6 = 22;
    if (v2 > 0x15)
    {
      *(result + 87) = 22;
      goto LABEL_14;
    }
  }

  v7 = result;
  std::string::append((result + 64), v6 - v2, 0);
  result = v7;
  v8 = *(v7 + 87);
  if ((v8 & 0x8000000000000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_15:
  v8 = *(result + 72);
LABEL_16:
  *(result + 40) = v3;
  *(result + 48) = v3;
  *(result + 56) = v3 + v8;
  if ((*(result + 96) & 3) != 0)
  {
    if (v4 >> 31)
    {
      v9 = ((v4 - 0x80000000) * 0x200000005uLL) >> 64;
      v10 = 0x7FFFFFFF * ((v9 + ((v4 - 0x80000000 - v9) >> 1)) >> 30);
      v3 += v10 + 0x7FFFFFFF;
      v4 = v4 - v10 - 0x7FFFFFFF;
      *(result + 48) = v3;
    }

    if (v4)
    {
      *(result + 48) = v3 + v4;
    }
  }

  return result;
}

void sub_271129464(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27112949C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_2711294CC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000271854CBCLL)
  {
    if (((v2 & 0x8000000271854CBCLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000271854CBCLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000271854CBCLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t **sub_27112953C(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_2711284DC(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = v2[23];
    if (v13 >= 0)
    {
      v14 = v2[23];
    }

    else
    {
      v14 = *(v2 + 1);
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v20 == v8)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v16 == v8)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

uint64_t sub_2711296F4(uint64_t a1, __int128 *a2, int a3)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x2743BED80](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  if ((a1 + 64) != a2)
  {
    if (*(a2 + 23) < 0)
    {
      sub_271128928((a1 + 64), *a2, *(a2 + 1));
    }

    else
    {
      v6 = *a2;
      *(a1 + 80) = *(a2 + 2);
      *(a1 + 64) = v6;
    }
  }

  sub_271129318(a1);
  return a1;
}

void sub_2711297C4(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void *sub_2711297EC(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = HIDWORD(*a2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v10[1];
      if (v12 == v5)
      {
        if (v10[2] == v2)
        {
          return v10;
        }
      }

      else if ((v12 & (*&v6 - 1)) != v8)
      {
        goto LABEL_23;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_23;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  if (v10[2] != v2)
  {
    goto LABEL_12;
  }

  return v10;
}

uint64_t *sub_271129B58@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *result;
  v7 = *(*result + 8 * v4);
  do
  {
    v8 = v7;
    v7 = *v7;
  }

  while (v7 != a2);
  if (v8 == result + 2)
  {
    goto LABEL_18;
  }

  v9 = v8[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v9 >= *&v3)
    {
      v9 %= *&v3;
    }
  }

  else
  {
    v9 &= *&v3 - 1;
  }

  if (v9 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v10 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v10 >= *&v3)
      {
        v10 %= *&v3;
      }
    }

    else
    {
      v10 &= *&v3 - 1;
    }

    if (v10 != v4)
    {
LABEL_19:
      *(v6 + 8 * v4) = 0;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    v12 = *(v11 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v12 >= *&v3)
      {
        v12 %= *&v3;
      }
    }

    else
    {
      v12 &= *&v3 - 1;
    }

    if (v12 != v4)
    {
      *(v6 + 8 * v12) = v8;
      v11 = *a2;
    }
  }

  *v8 = v11;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void *sub_271129C90(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = HIDWORD(*a2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v10[1];
      if (v12 == v5)
      {
        if (v10[2] == v2)
        {
          return v10;
        }
      }

      else if ((v12 & (*&v6 - 1)) != v8)
      {
        goto LABEL_23;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_23;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  if (v10[2] != v2)
  {
    goto LABEL_12;
  }

  return v10;
}

uint64_t **sub_271129FFC(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_2711284DC(&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_27112A3D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112A3F0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_27112A3F0(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 40);
      *(v2 + 40) = 0;
      if (v3)
      {
        sub_271127634(v2 + 40, v3);
      }

      if (*(v2 + 39) < 0)
      {
        operator delete(*(v2 + 16));
      }
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_27112A458(void *result, void *a2, unint64_t a3)
{
  v5 = result;
  v6 = result[1];
  v7 = result[2];
  if (v7 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((v7 - v6) << 6) - 1;
  }

  v9 = result[5];
  v10 = v9 + result[4];
  v11 = v8 - v10;
  if (a3 > v11)
  {
    result = sub_27112A5C0(result, a3 - v11);
    v9 = v5[5];
    v6 = v5[1];
    v7 = v5[2];
    v10 = v5[4] + v9;
  }

  v12 = (v6 + 8 * (v10 >> 9));
  if (v7 != v6)
  {
    v13 = *v12 + 8 * (v10 & 0x1FF);
    v14 = v13;
    if (a3)
    {
      goto LABEL_8;
    }

LABEL_11:
    v16 = v12;
    goto LABEL_22;
  }

  v13 = 0;
  v14 = 0;
  if (!a3)
  {
    goto LABEL_11;
  }

LABEL_8:
  v15 = a3 + ((v14 - *v12) >> 3);
  if (v15 < 1)
  {
    v17 = 511 - v15;
    v16 = &v12[-(v17 >> 9)];
    v14 = *v16 + 8 * (~v17 & 0x1FF);
  }

  else
  {
    v16 = &v12[v15 >> 9];
    v14 = *v16 + 8 * (v15 & 0x1FF);
  }

LABEL_22:
  while (v13 != v14)
  {
    v18 = v14;
    if (v12 != v16)
    {
      v18 = *v12 + 4096;
    }

    if (v13 == v18)
    {
      v5[5] = v9;
      if (v12 == v16)
      {
        return result;
      }
    }

    else
    {
      v19 = v13;
      do
      {
        *v19++ = a2[2];
        a2 = *a2;
      }

      while (v19 != v18);
      v9 = v5[5] + ((v18 - v13) >> 3);
      v5[5] = v9;
      if (v12 == v16)
      {
        return result;
      }
    }

    v20 = v12[1];
    ++v12;
    v13 = v20;
  }

  return result;
}

void *sub_27112A5C0(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x1FF) != 0)
  {
    v5 = (v4 >> 9) + 1;
  }

  else
  {
    v5 = v4 >> 9;
  }

  v6 = result[4];
  if (v5 >= v6 >> 9)
  {
    v7 = v6 >> 9;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 9)
  {
    for (result[4] = v6 - (v7 << 9); v7; --v7)
    {
      v12 = v2[1];
      v15 = *v12;
      v2[1] = v12 + 1;
      result = sub_271382FA0(v2, &v15);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    v10 = v3 >> 3;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      if (v9 >> 2 <= v8 + v10)
      {
        v11 = v8 + v10;
      }

      else
      {
        v11 = v9 >> 2;
      }

      v14 = result[4];
      if (v11)
      {
        if (!(v11 >> 61))
        {
          operator new();
        }

        sub_2711270EC();
      }

      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= v7 << 9; v7; --v7)
    {
      v13 = v2[1];
      v15 = *v13;
      v2[1] = v13 + 1;
      result = sub_271382FA0(v2, &v15);
    }
  }

  return result;
}

void sub_27112AC54(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_27112ACC4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27112ACFC(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 16);
    *(v1 + 16) = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_27112AD80(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__110shared_ptrIN4tlog15ConsoleAppenderEE27__shared_ptr_default_deleteIS2_S2_EE")
  {
    if (((v2 & "NSt3__110shared_ptrIN4tlog15ConsoleAppenderEE27__shared_ptr_default_deleteIS2_S2_EE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__110shared_ptrIN4tlog15ConsoleAppenderEE27__shared_ptr_default_deleteIS2_S2_EE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIN4tlog15ConsoleAppenderEE27__shared_ptr_default_deleteIS2_S2_EE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_27112ADE0(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 16);
    *(v1 + 16) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    MEMORY[0x2743BF050](v1, 0x10A1C40503A8522);
    return v2;
  }

  return result;
}

void *sub_27112AE58(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_27:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      v11 = v10 >= 0 ? v7 : v8;
      v12 = v10 >= 0 ? *(v7 + 23) : v7[1];
      v13 = (v12 >= v5 ? v5 : v12);
      v14 = memcmp(v4, v11, v13);
      if (v14)
      {
        break;
      }

      if (v5 >= v12)
      {
        goto LABEL_22;
      }

LABEL_8:
      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_27;
      }
    }

    if (v14 < 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v15 = memcmp(v11, v4, v13);
    if (v15)
    {
      if ((v15 & 0x80000000) == 0)
      {
        return v6;
      }

      goto LABEL_26;
    }

    if (v12 >= v5)
    {
      return v6;
    }

LABEL_26:
    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_27;
    }
  }
}

void sub_27112AFE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2711B17FC(va);
  _Unwind_Resume(a1);
}

void sub_27112AFFC()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

int *sub_27112B054()
{
  if ((atomic_load_explicit(&qword_280879B78, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_280879B78))
  {
    return &dword_280879B80;
  }

  sub_27112B0D4();
  __cxa_guard_release(&qword_280879B78);
  return &dword_280879B80;
}

double sub_27112B0D4()
{
  LOBYTE(xmmword_280879B88) = 0;
  byte_280879BA0 = 0;
  dword_280879B80 = getpid();
  v0 = [MEMORY[0x277CCAC38] processInfo];
  v1 = [v0 processName];
  v2 = [v1 UTF8String];
  v3 = strlen(v2);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v7) = v3;
  if (v3)
  {
    memmove(&v6, v2, v3);
    *(&v6 + v4) = 0;

    if (byte_280879BA0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = *&v6;
    xmmword_280879B88 = v6;
    unk_280879B98 = v7;
    byte_280879BA0 = 1;
    return result;
  }

  LOBYTE(v6) = 0;

  if (!byte_280879BA0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (byte_280879B9F < 0)
  {
    operator delete(xmmword_280879B88);
  }

  result = *&v6;
  xmmword_280879B88 = v6;
  unk_280879B98 = v7;
  return result;
}

void sub_27112B244(_Unwind_Exception *a1)
{
  if (byte_280879BA0 == 1 && byte_280879B9F < 0)
  {
    operator delete(xmmword_280879B88);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27112B294()
{
  if ((atomic_load_explicit(&qword_28087C1A0, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_28087C1A0))
  {
    return qword_28087C198;
  }

  sub_27112B400(__p, "cv3dapi.visual_logger");
  qword_28087C198 = sub_27112B36C(__p);
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  __cxa_guard_release(&qword_28087C1A0);
  return qword_28087C198;
}

void sub_27112B32C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    __cxa_guard_abort(&qword_28087C1A0);
    _Unwind_Resume(a1);
  }

  __cxa_guard_abort(&qword_28087C1A0);
  _Unwind_Resume(a1);
}

uint64_t *sub_27112B36C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_28087C1B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087C1B0))
  {
    sub_271120C4C(&qword_28087C1A8);
    __cxa_guard_release(&qword_28087C1B0);
  }

  v3 = qword_28087C1A8;
  return sub_271125D80(&v3, a1);
}

_BYTE *sub_27112B400(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t sub_27112B4B8()
{
  if ((atomic_load_explicit(&qword_280879BB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879BB0))
  {
    __cxa_atexit(MEMORY[0x277D82690], &stru_280877680, &dword_27111A000);
    __cxa_guard_release(&qword_280879BB0);
  }

  std::mutex::lock(&stru_280877680);
  v0 = qword_280879BA8++;
  std::mutex::unlock(&stru_280877680);
  return v0;
}

void VZErrorEnableLogging_0()
{
  if ((atomic_load_explicit(&qword_280879BB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879BB8))
  {
    __cxa_atexit(sub_27112EC74, &unk_2808776C0, &dword_27111A000);
    __cxa_guard_release(&qword_280879BB8);
  }

  std::mutex::lock(&stru_280877770);
  byte_280877741 = 1;

  std::mutex::unlock(&stru_280877770);
}

void VZErrorDisableLogging_0()
{
  if ((atomic_load_explicit(&qword_280879BB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879BB8))
  {
    __cxa_atexit(sub_27112EC74, &unk_2808776C0, &dword_27111A000);
    __cxa_guard_release(&qword_280879BB8);
  }

  std::mutex::lock(&stru_280877770);
  byte_280877741 = 0;

  std::mutex::unlock(&stru_280877770);
}

void VZErrorSetGlobalErrorHandlerFunction_0(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_280879BB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879BB8))
  {
    __cxa_atexit(sub_27112EC74, &unk_2808776C0, &dword_27111A000);
    __cxa_guard_release(&qword_280879BB8);
  }

  std::mutex::lock(&stru_280877770);
  if (a2)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  qword_280877748 = v4;
  unk_280877750 = a2;
  byte_280877758 = a2 != 0;
  v5 = off_280877768;
  off_280877760 = 0;
  off_280877768 = 0;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  std::mutex::unlock(&stru_280877770);
}

void sub_27112B7B8(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280879BB8, memory_order_acquire) & 1) == 0)
  {
    v4 = a1;
    v5 = __cxa_guard_acquire(&qword_280879BB8);
    a1 = v4;
    if (v5)
    {
      __cxa_atexit(sub_27112EC74, &unk_2808776C0, &dword_27111A000);
      __cxa_guard_release(&qword_280879BB8);
      a1 = v4;
    }
  }

  v2 = *a1;
  v1 = *(a1 + 8);
  if (v1)
  {
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
  }

  std::mutex::lock(&stru_280877770);
  if (v1)
  {
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = off_280877768;
  off_280877760 = v2;
  off_280877768 = v1;
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if (byte_280877758 != 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (byte_280877758 == 1)
  {
LABEL_9:
    byte_280877758 = 0;
  }

LABEL_10:
  std::mutex::unlock(&stru_280877770);
  if (v1 && !atomic_fetch_add((v1 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v1 + 16))(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_27112B960(uint64_t a1, uint64_t a2)
{
  v82 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    sub_271811174(&v57, a1);
  }

  if ((atomic_load_explicit(&qword_280879BB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879BB8))
  {
    __cxa_atexit(sub_27112EC74, &unk_2808776C0, &dword_27111A000);
    __cxa_guard_release(&qword_280879BB8);
  }

  std::mutex::lock(&stru_280877770);
  if (byte_280877740)
  {
    if (byte_280877738 == 1)
    {
      sub_271130094(&unk_2808776C0);
LABEL_31:
      v57 = *a1;
      LOBYTE(v58) = 0;
      LOBYTE(v71) = 0;
      if (*(a1 + 112) == 1)
      {
        sub_27112F6CC(&v58, (a1 + 16));
        LOBYTE(v71) = 1;
      }

      sub_27112FA68(&unk_2808776C0, &v57);
      if (v71 == 1)
      {
        if (v69 == 1)
        {
          if (v68 < 0)
          {
            operator delete(__p);
          }

          if ((v64[7] & 0x80000000) != 0)
          {
            operator delete(v62);
          }
        }

        if (v61 == 1 && SHIBYTE(v60.__locale_) < 0)
        {
          operator delete(v58);
        }
      }

      goto LABEL_170;
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/VisualLogger/src/Return.cpp", 89, "(last_ == kSuccess)", 0x13uLL, "More than one error occurred", 0x1CuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v9 = qword_28087C408, v10 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_30:
        qword_28087C420(*algn_28087C428, "(last_ == kSuccess)", 19, "More than one error occurred", 28);
        goto LABEL_31;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_173;
      }
    }

    do
    {
      (*v9)(*(v9 + 8), "(last_ == kSuccess)", 19, "More than one error occurred", 28);
      v9 += 16;
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
      goto LABEL_30;
    }

LABEL_173:
    abort();
  }

  if (byte_280877741 == 1)
  {
    sub_2713782EC(v75);
    sub_2713796C4(v75[0], 3);
    if (sub_27136987C(a1))
    {
      v3 = sub_27112B294();
      v74 = v3;
      if (**(v3 + 48) <= 4)
      {
        v4 = *(v3 + 64);
        v5 = sub_271124E80(v3, "OSLogSurrogateAppender", 1, 0);
        if (v5 || v4)
        {
          sub_2711218C8(&v57);
          sub_271847E00(a1, &v76);
          if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v6 = &v76;
          }

          else
          {
            v6 = v76.__r_.__value_.__r.__words[0];
          }

          if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v76.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v76.__r_.__value_.__l.__size_;
          }

          sub_271120E64(&v58, v6, size);
          if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v76.__r_.__value_.__l.__data_);
          }

          v44 = v5;
          if ((v72 & 0x10) != 0)
          {
            v17 = v71;
            if (v71 < v65)
            {
              v71 = v65;
              v17 = v65;
            }

            v18 = v64;
          }

          else
          {
            if ((v72 & 8) == 0)
            {
              v8 = 0;
              v56 = 0;
LABEL_69:
              *(&__dst + v8) = 0;
              v46 = &v74;
              rep = std::chrono::steady_clock::now().__d_.__rep_;
              v48 = std::chrono::system_clock::now().__d_.__rep_;
              v49 = 4;
              v50 = "unknown file";
              v51 = 75;
              v53 = 0;
              v54 = 0;
              v52 = "unknown function";
              if (v56 >= 0)
              {
                p_dst = &__dst;
              }

              else
              {
                p_dst = __dst;
              }

              v23 = *v46;
              v24 = (*v46 + 8);
              v25 = *(*v46 + 31);
              if ((v25 & 0x8000000000000000) != 0)
              {
                v24 = *(v23 + 8);
                v25 = *(v23 + 16);
              }

              if ((atomic_load_explicit(&qword_2808777D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808777D0))
              {
                sub_27112FBC0(&qword_2808777B0);
                __cxa_guard_release(&qword_2808777D0);
              }

              if (byte_2808777C7 >= 0)
              {
                v26 = &qword_2808777B0;
              }

              else
              {
                v26 = qword_2808777B0;
              }

              if (byte_2808777C7 >= 0)
              {
                v27 = byte_2808777C7;
              }

              else
              {
                v27 = unk_2808777B8;
              }

              v76.__r_.__value_.__r.__words[0] = os_log_create(v26, v24);
              if (v27 > 0x7FFFFFFFFFFFFFF7)
              {
                sub_271120DA8();
              }

              if (v27 >= 0x17)
              {
                operator new();
              }

              v77 = v27;
              if (v27)
              {
                memmove(&v76.__r_.__value_.__r.__words[1], v26, v27);
              }

              *(&v76.__r_.__value_.__r.__words[1] + v27) = 0;
              LOBYTE(v78) = 1;
              if (v25 > 0x7FFFFFFFFFFFFFF7)
              {
                sub_271120DA8();
              }

              if (v25 >= 0x17)
              {
                operator new();
              }

              v80 = v25;
              if (v25)
              {
                memmove(&v79, v24, v25);
              }

              *(&v79 + v25) = 0;
              v81 = 1;
              v28 = v76.__r_.__value_.__r.__words[0];
              if (v80 < 0)
              {
                operator delete(v79);
              }

              if (v78 == 1 && v77 < 0)
              {
                operator delete(v76.__r_.__value_.__l.__size_);
              }

              if (v28)
              {
                os_release(v28);
              }

              if (v44 && *(v44 + 24))
              {
                _os_log_pack_size();
                MEMORY[0x2743BF060]();
                operator new();
              }

              os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
              LODWORD(v76.__r_.__value_.__l.__data_) = 136315138;
              *(v76.__r_.__value_.__r.__words + 4) = p_dst;
              v29 = _os_log_send_and_compose_impl();
              if (v29)
              {
                free(v29);
              }

              if (v4)
              {
                v39 = &__dst;
                if (v56 < 0)
                {
                  v39 = __dst;
                }

                sub_2711213B4(&v46, "%s", v39);
                sub_27112F8A0(&v46);
              }

LABEL_157:
              sub_27112F8A0(&v46);
              v41 = v54;
              if (v54 && !atomic_fetch_add(&v54->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v41->__on_zero_shared)(v41);
                std::__shared_weak_count::__release_weak(v41);
              }

              if (v56 < 0)
              {
                operator delete(__dst);
              }

              *&v57 = *MEMORY[0x277D82818];
              v42 = *(MEMORY[0x277D82818] + 72);
              *(&v57 + *(v57 - 24)) = *(MEMORY[0x277D82818] + 64);
              v58 = v42;
              v59 = MEMORY[0x277D82878] + 16;
              if (v70 < 0)
              {
                operator delete(v67);
              }

              v59 = MEMORY[0x277D82868] + 16;
              std::locale::~locale(&v60);
              std::iostream::~basic_iostream();
              MEMORY[0x2743BEF20](&v73);
              goto LABEL_165;
            }

            v18 = &v61;
            v17 = v63;
          }

          v21 = *v18;
          v8 = v17 - *v18;
          if (v8 <= 0x7FFFFFFFFFFFFFF7)
          {
            if (v8 >= 0x17)
            {
              operator new();
            }

            v56 = v17 - *v18;
            if (v8)
            {
              memmove(&__dst, v21, v8);
            }

            goto LABEL_69;
          }

LABEL_174:
          sub_271120DA8();
        }
      }

LABEL_165:
      sub_27137803C(v75);
      goto LABEL_166;
    }

    v11 = sub_27112B294();
    v74 = v11;
    if (**(v11 + 48) > 5)
    {
      goto LABEL_165;
    }

    v12 = *(v11 + 64);
    v13 = sub_271124E80(v11, "OSLogSurrogateAppender", 1, 0);
    if (!v13 && !v12)
    {
      goto LABEL_165;
    }

    sub_2711218C8(&v57);
    sub_271847E00(a1, &v76);
    if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v76;
    }

    else
    {
      v14 = v76.__r_.__value_.__r.__words[0];
    }

    if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = HIBYTE(v76.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v15 = v76.__r_.__value_.__l.__size_;
    }

    sub_271120E64(&v58, v14, v15);
    if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v76.__r_.__value_.__l.__data_);
    }

    v45 = v13;
    if ((v72 & 0x10) != 0)
    {
      v19 = v71;
      if (v71 < v65)
      {
        v71 = v65;
        v19 = v65;
      }

      v20 = v64;
    }

    else
    {
      if ((v72 & 8) == 0)
      {
        v16 = 0;
        v56 = 0;
        goto LABEL_112;
      }

      v20 = &v61;
      v19 = v63;
    }

    v30 = *v20;
    v16 = v19 - *v20;
    if (v16 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_174;
    }

    if (v16 >= 0x17)
    {
      operator new();
    }

    v56 = v19 - *v20;
    if (v16)
    {
      memmove(&__dst, v30, v16);
    }

LABEL_112:
    *(&__dst + v16) = 0;
    v46 = &v74;
    rep = std::chrono::steady_clock::now().__d_.__rep_;
    v48 = std::chrono::system_clock::now().__d_.__rep_;
    v49 = 5;
    v50 = "unknown file";
    v51 = 72;
    v53 = 0;
    v54 = 0;
    v52 = "unknown function";
    if (v56 >= 0)
    {
      v31 = &__dst;
    }

    else
    {
      v31 = __dst;
    }

    v32 = *v46;
    v33 = (*v46 + 8);
    v34 = *(*v46 + 31);
    if ((v34 & 0x8000000000000000) != 0)
    {
      v33 = *(v32 + 8);
      v34 = *(v32 + 16);
    }

    if ((atomic_load_explicit(&qword_2808777D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808777D0))
    {
      sub_27112FBC0(&qword_2808777B0);
      __cxa_guard_release(&qword_2808777D0);
    }

    if (byte_2808777C7 >= 0)
    {
      v35 = &qword_2808777B0;
    }

    else
    {
      v35 = qword_2808777B0;
    }

    if (byte_2808777C7 >= 0)
    {
      v36 = byte_2808777C7;
    }

    else
    {
      v36 = unk_2808777B8;
    }

    v76.__r_.__value_.__r.__words[0] = os_log_create(v35, v33);
    if (v36 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    if (v36 >= 0x17)
    {
      operator new();
    }

    v77 = v36;
    if (v36)
    {
      memmove(&v76.__r_.__value_.__r.__words[1], v35, v36);
    }

    *(&v76.__r_.__value_.__r.__words[1] + v36) = 0;
    LOBYTE(v78) = 1;
    if (v34 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    if (v34 >= 0x17)
    {
      operator new();
    }

    v80 = v34;
    if (v34)
    {
      memmove(&v79, v33, v34);
    }

    *(&v79 + v34) = 0;
    v81 = 1;
    v37 = v76.__r_.__value_.__r.__words[0];
    if (v80 < 0)
    {
      operator delete(v79);
    }

    if (v78 == 1 && v77 < 0)
    {
      operator delete(v76.__r_.__value_.__l.__size_);
    }

    if (v37)
    {
      os_release(v37);
    }

    if (v45 && *(v45 + 24))
    {
      _os_log_pack_size();
      MEMORY[0x2743BF060]();
      operator new();
    }

    os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
    LODWORD(v76.__r_.__value_.__l.__data_) = 136315138;
    *(v76.__r_.__value_.__r.__words + 4) = v31;
    v38 = _os_log_send_and_compose_impl();
    if (v38)
    {
      free(v38);
    }

    if (v12)
    {
      v40 = &__dst;
      if (v56 < 0)
      {
        v40 = __dst;
      }

      sub_2711213B4(&v46, "%s", v40);
      sub_27112F8A0(&v46);
    }

    goto LABEL_157;
  }

LABEL_166:
  if (off_280877760)
  {
    sub_271811174(&v57, a1);
  }

  if (byte_280877758 == 1)
  {
    sub_271811174(&v57, a1);
  }

LABEL_170:
  std::mutex::unlock(&stru_280877770);
  v43 = *MEMORY[0x277D85DE8];
}

void sub_27112D2C0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_2808777D0);
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

void sub_27112D480(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LOBYTE(v8[0]) = 0;
  v16 = 0;
  if (*(a2 + 96) == 1)
  {
    sub_27112F6CC(v8, a2);
    v16 = 1;
  }

  sub_271130394(&v17, a1, v8);
  *a3 = v17;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v27 == 1)
  {
    *(a3 + 40) = 0;
    v5 = v20;
    if (v20 == 1)
    {
      *(a3 + 16) = __p;
      *(a3 + 32) = v19;
      v19 = 0;
      __p = 0uLL;
      *(a3 + 40) = 1;
      *(a3 + 48) = 0;
      v6 = a3 + 48;
      *(a3 + 104) = 0;
      if (v26 != 1)
      {
LABEL_6:
        *(a3 + 112) = 1;
        if (!v5)
        {
          goto LABEL_12;
        }

        goto LABEL_10;
      }
    }

    else
    {
      *(a3 + 48) = 0;
      v6 = a3 + 48;
      *(a3 + 104) = 0;
      if (v26 != 1)
      {
        goto LABEL_6;
      }
    }

    v7 = v23;
    *(v6 + 16) = v22;
    *v6 = v21;
    v21 = 0uLL;
    *(a3 + 72) = v7;
    *(a3 + 80) = v24;
    *(a3 + 96) = v25;
    v22 = 0;
    v24 = 0uLL;
    v25 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    if (!v5)
    {
      goto LABEL_12;
    }

LABEL_10:
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p);
    }
  }

LABEL_12:
  if (v16 != 1)
  {
    return;
  }

  if (v15 != 1)
  {
    goto LABEL_16;
  }

  if (v14 < 0)
  {
    operator delete(v13);
    if (v12 < 0)
    {
      goto LABEL_21;
    }

LABEL_16:
    if (v10 != 1)
    {
      return;
    }

    goto LABEL_17;
  }

  if ((v12 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_21:
  operator delete(v11);
  if (v10 != 1)
  {
    return;
  }

LABEL_17:
  if (v9 < 0)
  {
    operator delete(v8[0]);
  }
}

uint64_t sub_27112D66C(uint64_t result)
{
  if (*(result + 96) == 1)
  {
    if (*(result + 88) != 1)
    {
      goto LABEL_5;
    }

    if (*(result + 87) < 0)
    {
      v2 = result;
      operator delete(*(result + 64));
      result = v2;
      if ((*(v2 + 55) & 0x80000000) == 0)
      {
LABEL_5:
        if (*(result + 24) != 1)
        {
          return result;
        }

LABEL_6:
        if (*(result + 23) < 0)
        {
          v1 = result;
          operator delete(*result);
          return v1;
        }

        return result;
      }
    }

    else if ((*(result + 55) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    v3 = result;
    operator delete(*(result + 32));
    result = v3;
    if (*(v3 + 24) != 1)
    {
      return result;
    }

    goto LABEL_6;
  }

  return result;
}

uint64_t sub_27112D71C(uint64_t result)
{
  if (*(result + 112) == 1)
  {
    if (*(result + 104) != 1)
    {
      goto LABEL_5;
    }

    if (*(result + 103) < 0)
    {
      v2 = result;
      operator delete(*(result + 80));
      result = v2;
      if ((*(v2 + 71) & 0x80000000) == 0)
      {
LABEL_5:
        if (*(result + 40) != 1)
        {
          return result;
        }

LABEL_6:
        if (*(result + 39) < 0)
        {
          v1 = result;
          operator delete(*(result + 16));
          return v1;
        }

        return result;
      }
    }

    else if ((*(result + 71) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    v3 = result;
    operator delete(*(result + 48));
    result = v3;
    if (*(v3 + 40) != 1)
    {
      return result;
    }

    goto LABEL_6;
  }

  return result;
}

void sub_27112D7CC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  v19 = a1;
  if (*(a2 + 24))
  {
    v23 = "argument '";
    v24 = 10;
    v4 = *(a2 + 23);
    if (v4 >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    if (v4 < 0)
    {
      v4 = *(a2 + 8);
    }

    v25 = v5;
    v26 = v4;
    v27 = "' ";
    v28 = 2;
    sub_271131230(&v23, &v29, 0, 0, &__p);
    v21 = -1;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_271127178(&v20, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      goto LABEL_11;
    }
  }

  else
  {
    *(&__p.__r_.__value_.__s + 23) = 0;
    __p.__r_.__value_.__s.__data_[0] = 0;
    v21 = -1;
  }

  v20 = __p;
LABEL_11:
  v21 = 1;
  v23 = &v20;
  v24 = "in function ";
  v25 = &v20;
  v26 = "in function ";
  v27 = "in function ";
  sub_2711313CC(&v25, &v20);
  if (v19)
  {
    v23 = &v20;
    v24 = &v19;
    v25 = &v20;
    v26 = &v19;
    v27 = &v19;
    if (v21 != -1)
    {
      v22 = &v23;
      (off_28812D1F8[v21])(&v22, &v20);
      goto LABEL_16;
    }

LABEL_37:
    sub_2711308D4();
  }

  v23 = &v20;
  v24 = "nullptr";
  v25 = &v20;
  v26 = "nullptr";
  v27 = "nullptr";
  if (v21 == -1)
  {
    goto LABEL_37;
  }

  v22 = &v23;
  (*(&off_28812D1E0 + v21))(&v22, &v20);
LABEL_16:
  if (v21 == -1)
  {
    sub_2711308D4();
  }

  v23 = &v22;
  (off_28812D1C8[v21])(v17, &v23, &v20);
  if (v21 != -1)
  {
    (off_28812D1B0[v21])(&v23, &v20);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }
  }

  else if ((SHIBYTE(v18) & 0x80000000) == 0)
  {
LABEL_21:
    *v7 = *v17;
    v8 = v18;
    goto LABEL_24;
  }

  sub_271127178(v7, v17[0], v17[1]);
LABEL_24:
  v9 = 1;
  LOBYTE(v10) = 0;
  v14 = 0;
  v15 = 1;
  sub_27112D480(0xBu, v7, a3);
  if (v15 != 1)
  {
    goto LABEL_31;
  }

  if (v14 == 1)
  {
    if ((v13 & 0x80000000) == 0)
    {
      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_28;
      }

LABEL_35:
      operator delete(v10);
      if (v9 != 1)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    }

    operator delete(v12);
    if (v11 < 0)
    {
      goto LABEL_35;
    }
  }

LABEL_28:
  if (v9 != 1)
  {
    goto LABEL_31;
  }

LABEL_29:
  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }

LABEL_31:
  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_27112DAC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  sub_271130878(v33 - 112);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27112DB38(std::string::size_type a1, void *a2, uint64_t a3)
{
  v48 = *MEMORY[0x277D85DE8];
  size = *(a2 + 23);
  if ((size & 0x80u) == 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  if (v6)
  {
    if (v6 + 2 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_271120DA8();
    }

    if (v6 + 2 > 0x16)
    {
      operator new();
    }

    memset(&v36, 0, sizeof(v36));
    *(&v36.__r_.__value_.__s + 23) = v6 + 2;
    LOWORD(v36.__r_.__value_.__l.__data_) = 8250;
    if ((size & 0x80u) != 0)
    {
      a2 = *a2;
    }

    memmove(&v36.__r_.__value_.__s.__data_[2], a2, v6);
    v36.__r_.__value_.__s.__data_[v6 + 2] = 0;
    LODWORD(v40) = -1;
    v7 = (v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_271127178(&v39, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
    }

    else
    {
      v39 = v36;
    }

    v37 = v39;
    v8 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
    size = v39.__r_.__value_.__l.__size_;
  }

  else
  {
    v7 = 0;
    LODWORD(v8) = 0;
    *(&v37.__r_.__value_.__s + 23) = 0;
    v37.__r_.__value_.__s.__data_[0] = 0;
  }

  v39.__r_.__value_.__r.__words[0] = "unexpected runtime exception during operation on ";
  v39.__r_.__value_.__l.__size_ = 49;
  v9 = *(a1 + 23);
  if ((v9 & 0x80u) == 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a1 + 8);
  }

  v39.__r_.__value_.__r.__words[2] = v10;
  v40 = v9;
  v8 = v8;
  v11 = &v37;
  if ((v8 & 0x80u) != 0)
  {
    v11 = v37.__r_.__value_.__r.__words[0];
    v8 = size;
  }

  v41 = v11;
  v42 = v8;
  sub_271131230(&v39, &v43, 0, 0, &v38);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (v6 && v7)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&v39, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
  }

  else
  {
    v39 = v38;
  }

  LOBYTE(v40) = 1;
  LOBYTE(v41) = 0;
  v46 = 0;
  v47 = 1;
  sub_27112D480(4u, &v39, &v13);
  if (v47 == 1)
  {
    if (v46 != 1)
    {
      goto LABEL_34;
    }

    if (v45 < 0)
    {
      operator delete(v44);
      if ((SHIBYTE(v43) & 0x80000000) == 0)
      {
LABEL_34:
        if (v40 != 1)
        {
          goto LABEL_37;
        }

LABEL_35:
        if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v39.__r_.__value_.__l.__data_);
        }

        goto LABEL_37;
      }
    }

    else if ((SHIBYTE(v43) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    operator delete(v41);
    if (v40 != 1)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

LABEL_37:
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  v24 = v13;
  LOBYTE(v25) = 0;
  v34 = 0;
  if (v23 == 1)
  {
    v27 = 0;
    if (v16 == 1)
    {
      v25 = v14;
      v26 = v15;
      v15 = 0;
      v14 = 0uLL;
      v27 = 1;
    }

    LOBYTE(v28) = 0;
    v33 = 0;
    if (v22 == 1)
    {
      v29 = v18;
      v28 = *v17;
      v17[0] = 0;
      v17[1] = 0;
      __p = *v20;
      v30 = v19;
      v32 = v21;
      v18 = 0;
      v20[0] = 0;
      v20[1] = 0;
      v21 = 0;
      v33 = 1;
    }

    v34 = 1;
  }

  v35 = 0;
  sub_27112B960(&v24, a3);
  if ((v35 & 1) == 0 && v34 == 1)
  {
    if (v33 == 1)
    {
      if (SHIBYTE(v32) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v29) < 0)
      {
        operator delete(v28);
      }
    }

    if (v27 == 1 && SHIBYTE(v26) < 0)
    {
      operator delete(v25);
    }
  }

  if (v23 == 1)
  {
    if (v22 != 1)
    {
      goto LABEL_59;
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(v20[0]);
      if ((SHIBYTE(v18) & 0x80000000) == 0)
      {
LABEL_59:
        if (v16 != 1)
        {
          goto LABEL_62;
        }

        goto LABEL_60;
      }
    }

    else if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

    operator delete(v17[0]);
    if (v16 != 1)
    {
      goto LABEL_62;
    }

LABEL_60:
    if (SHIBYTE(v15) < 0)
    {
      operator delete(v14);
    }
  }

LABEL_62:
  v12 = *MEMORY[0x277D85DE8];
}

void sub_27112DFA4(_Unwind_Exception *a1)
{
  sub_271130878(v2 - 176);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_27112E024(uint64_t result)
{
  if ((*(result + 120) & 1) == 0 && *(result + 112) == 1)
  {
    if (*(result + 104) == 1)
    {
      if (*(result + 103) < 0)
      {
        v1 = result;
        operator delete(*(result + 80));
        result = v1;
      }

      if (*(result + 71) < 0)
      {
        v2 = result;
        operator delete(*(result + 48));
        result = v2;
      }
    }

    if (*(result + 40) == 1 && *(result + 39) < 0)
    {
      v3 = result;
      operator delete(*(result + 16));
      return v3;
    }
  }

  return result;
}

void sub_27112E0C4(uint64_t *a1, uint64_t *a2, __int128 *a3, uint64_t a4)
{
  v73 = *MEMORY[0x277D85DE8];
  LOBYTE(v15) = 0;
  v25 = 0;
  if (*(a3 + 120) == 1)
  {
    v15 = *a3;
    LOBYTE(v16) = 0;
    v24 = 0;
    if (*(a3 + 112) == 1)
    {
      sub_27112F6CC(&v16, a3 + 1);
      v24 = 1;
    }

    v25 = 1;
  }

  v7 = *a2;
  v8 = a2[1];
  memset(&v54, 0, sizeof(v54));
  if (v8 != v7)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_271135560();
  }

  v49 = 0;
  v50 = 0;
  v51 = 0;
  sub_271130B58(0, 0, ", ", 2uLL, &__p);
  *&v62 = "while trying to create ";
  *(&v62 + 1) = 23;
  v9 = *(a1 + 23);
  if ((v9 & 0x80u) == 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  if ((v9 & 0x80u) != 0)
  {
    v9 = a1[1];
  }

  *&v63 = v10;
  *(&v63 + 1) = v9;
  v64 = " with arguments (";
  v65 = 17;
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  *&v66 = p_p;
  *(&v66 + 1) = size;
  v67 = ")";
  v68 = 1;
  sub_271131230(&v62, &v69, 0, 0, &v53);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v25)
  {
    sub_271849064(&v15, &v53, &v62);
  }

  else
  {
    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_271127178(&v54, v53.__r_.__value_.__l.__data_, v53.__r_.__value_.__l.__size_);
    }

    else
    {
      v54 = v53;
    }

    v55 = 1;
    LOBYTE(v56) = 0;
    v60 = 0;
    v61 = 1;
    sub_271130394(&v62, 2u, &v54);
    if (v61 == 1)
    {
      if (v60 == 1)
      {
        if (v59 < 0)
        {
          operator delete(v58);
        }

        if (v57 < 0)
        {
          operator delete(v56);
        }
      }

      if (v55 == 1 && SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v54.__r_.__value_.__l.__data_);
      }
    }
  }

  v26 = v62;
  LOBYTE(v27) = 0;
  v36 = 0;
  v13 = v72;
  if (v72 == 1)
  {
    v29 = 0;
    if (v65 == 1)
    {
      v27 = v63;
      v28 = v64;
      v64 = 0;
      v63 = 0uLL;
      v29 = 1;
      LOBYTE(v30[0]) = 0;
      v35 = 0;
      if (v71 != 1)
      {
        goto LABEL_37;
      }
    }

    else
    {
      LOBYTE(v30[0]) = 0;
      v35 = 0;
      if (v71 != 1)
      {
LABEL_37:
        v36 = 1;
        if (!v65)
        {
          goto LABEL_43;
        }

        goto LABEL_41;
      }
    }

    v31 = v67;
    *v30 = v66;
    v66 = 0uLL;
    v32 = v68;
    *v33 = v69;
    v34 = v70;
    v67 = 0;
    v69 = 0uLL;
    v70 = 0;
    v35 = 1;
    v36 = 1;
    if (!v65)
    {
      goto LABEL_43;
    }

LABEL_41:
    if (SHIBYTE(v64) < 0)
    {
      operator delete(v63);
    }
  }

LABEL_43:
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
    v37 = v26;
    LOBYTE(v38) = 0;
    v47 = 0;
    if (!v13)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v37 = v26;
    LOBYTE(v38) = 0;
    v47 = 0;
    if (!v13)
    {
      goto LABEL_52;
    }
  }

  v40 = 0;
  if (v29 == 1)
  {
    v38 = v27;
    v39 = v28;
    v28 = 0;
    v27 = 0uLL;
    v40 = 1;
  }

  LOBYTE(v41) = 0;
  v46 = 0;
  if (v35 == 1)
  {
    v42 = v31;
    v41 = *v30;
    v30[0] = 0;
    v30[1] = 0;
    v43 = v32;
    *v44 = *v33;
    v45 = v34;
    v31 = 0;
    v33[0] = 0;
    v33[1] = 0;
    v34 = 0;
    v46 = 1;
  }

  v47 = 1;
LABEL_52:
  v48 = 0;
  sub_27112B960(&v37, a4);
  if ((v48 & 1) == 0 && v47 == 1)
  {
    if (v46 == 1)
    {
      if (SHIBYTE(v45) < 0)
      {
        operator delete(v44[0]);
      }

      if (SHIBYTE(v42) < 0)
      {
        operator delete(v41);
      }
    }

    if (v40 == 1 && SHIBYTE(v39) < 0)
    {
      operator delete(v38);
    }
  }

  if (v13)
  {
    if (v35 != 1)
    {
      goto LABEL_66;
    }

    if (SHIBYTE(v34) < 0)
    {
      operator delete(v33[0]);
      if ((SHIBYTE(v31) & 0x80000000) == 0)
      {
LABEL_66:
        if (v29 != 1)
        {
          goto LABEL_69;
        }

        goto LABEL_67;
      }
    }

    else if ((SHIBYTE(v31) & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

    operator delete(v30[0]);
    if (v29 != 1)
    {
      goto LABEL_69;
    }

LABEL_67:
    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27);
    }
  }

LABEL_69:
  if (v25 == 1 && v24 == 1)
  {
    if (v23 == 1)
    {
      if (v22 < 0)
      {
        operator delete(v21);
      }

      if (v20 < 0)
      {
        operator delete(v19);
      }
    }

    if (v18 == 1 && v17 < 0)
    {
      operator delete(v16);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_27112E7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112D66C(v3 + 16);
  sub_2711307D4(va);
  _Unwind_Resume(a1);
}

void sub_27112E810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  sub_27112D66C(&a72);
  if (a71 < 0)
  {
    operator delete(__p);
    sub_2711307D4(&a11);
    _Unwind_Resume(a1);
  }

  sub_2711307D4(&a11);
  _Unwind_Resume(a1);
}

void sub_27112E8EC(std::string::size_type a1, uint64_t *a2, uint64_t a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v33.__r_.__value_.__r.__words[0] = "while trying to convert from '";
  v33.__r_.__value_.__l.__size_ = 30;
  v4 = *(a1 + 23);
  if ((v4 & 0x80u) == 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 8);
  }

  v33.__r_.__value_.__r.__words[2] = v5;
  v34 = v4;
  v35 = "' to '";
  v36 = 6;
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) == 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if ((v6 & 0x80u) != 0)
  {
    v6 = a2[1];
  }

  v37 = v7;
  v38 = v6;
  v39 = "'";
  v40 = 1;
  sub_271131230(&v33, v41, 0, 0, &v32);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&v33, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
  }

  else
  {
    v33 = v32;
  }

  LOBYTE(v34) = 1;
  LOBYTE(v35) = 0;
  v42 = 0;
  v43 = 1;
  sub_27112D480(3u, &v33, &v9);
  if (v43 == 1)
  {
    if (v42 != 1)
    {
      goto LABEL_18;
    }

    if ((v41[7] & 0x80000000) != 0)
    {
      operator delete(v39);
      if ((SHIBYTE(v37) & 0x80000000) == 0)
      {
LABEL_18:
        if (v34 != 1)
        {
          goto LABEL_21;
        }

LABEL_19:
        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }

        goto LABEL_21;
      }
    }

    else if ((SHIBYTE(v37) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    operator delete(v35);
    if (v34 != 1)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

LABEL_21:
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  v20 = v9;
  LOBYTE(v21) = 0;
  v30 = 0;
  if (v19 == 1)
  {
    v23 = 0;
    if (v12 == 1)
    {
      v21 = v10;
      v22 = v11;
      v11 = 0;
      v10 = 0uLL;
      v23 = 1;
    }

    LOBYTE(v24) = 0;
    v29 = 0;
    if (v18 == 1)
    {
      v25 = v14;
      v24 = *v13;
      v13[0] = 0;
      v13[1] = 0;
      __p = *v16;
      v26 = v15;
      v28 = v17;
      v14 = 0;
      v16[0] = 0;
      v16[1] = 0;
      v17 = 0;
      v29 = 1;
    }

    v30 = 1;
  }

  v31 = 0;
  sub_27112B960(&v20, a3);
  if ((v31 & 1) == 0 && v30 == 1)
  {
    if (v29 == 1)
    {
      if (SHIBYTE(v28) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v25) < 0)
      {
        operator delete(v24);
      }
    }

    if (v23 == 1 && SHIBYTE(v22) < 0)
    {
      operator delete(v21);
    }
  }

  if (v19 == 1)
  {
    if (v18 != 1)
    {
      goto LABEL_43;
    }

    if (SHIBYTE(v17) < 0)
    {
      operator delete(v16[0]);
      if ((SHIBYTE(v14) & 0x80000000) == 0)
      {
LABEL_43:
        if (v12 != 1)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }
    }

    else if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    operator delete(v13[0]);
    if (v12 != 1)
    {
      goto LABEL_46;
    }

LABEL_44:
    if (SHIBYTE(v11) < 0)
    {
      operator delete(v10);
    }
  }

LABEL_46:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_27112EC20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (*(v25 - 145) < 0)
  {
    operator delete(*(v25 - 168));
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27112EC74(uint64_t a1)
{
  std::mutex::~mutex((a1 + 176));
  v2 = *(a1 + 168);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    if (*(a1 + 120))
    {
      return a1;
    }
  }

  else if (*(a1 + 120))
  {
    return a1;
  }

  if (*(a1 + 112) == 1)
  {
    if (*(a1 + 104) == 1)
    {
      if (*(a1 + 103) < 0)
      {
        operator delete(*(a1 + 80));
      }

      if (*(a1 + 71) < 0)
      {
        operator delete(*(a1 + 48));
      }
    }

    if (*(a1 + 40) == 1 && *(a1 + 39) < 0)
    {
      operator delete(*(a1 + 16));
      return a1;
    }
  }

  return a1;
}

void sub_27112ED5C(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 120);
  if (v7 == 1)
  {
    if (*(a2 + 120))
    {
LABEL_41:
      v26 = *MEMORY[0x277D85DE8];
      return;
    }

    v28 = *a2;
    if (*(a2 + 112) == 1)
    {
      v8 = *(a2 + 40);
      if (v8 == 1)
      {
        v9 = *(a2 + 16);
        *v31 = *(a2 + 24);
        *&v31[7] = *(a2 + 31);
        v2 = *(a2 + 39);
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 16) = 0;
        v10 = *(a2 + 104);
        if (v10 != 1)
        {
LABEL_6:
          v11 = 0;
          goto LABEL_19;
        }
      }

      else
      {
        v9 = 0;
        v10 = *(a2 + 104);
        if (v10 != 1)
        {
          goto LABEL_6;
        }
      }

      v11 = *(a2 + 48);
      *v30 = *(a2 + 56);
      *&v30[7] = *(a2 + 63);
      v4 = *(a2 + 71);
      *(a2 + 56) = 0;
      *(a2 + 64) = 0;
      *(a2 + 48) = 0;
      v5 = *(a2 + 72);
      v3 = *(a2 + 80);
      *v29 = *(a2 + 88);
      *&v29[7] = *(a2 + 95);
      v6 = *(a2 + 103);
      *(a2 + 88) = 0;
      *(a2 + 96) = 0;
      *(a2 + 80) = 0;
LABEL_19:
      if (v8 && *(a2 + 39) < 0)
      {
        v27 = a1;
        v15 = a2;
        operator delete(*(a2 + 16));
        a1 = v27;
        a2 = v15;
      }

      *a1 = v28;
      *(a1 + 16) = 0;
      *(a1 + 40) = 0;
      if (v8)
      {
        *(a1 + 16) = v9;
        *(a1 + 24) = *v31;
        *(a1 + 31) = *&v31[7];
        *(a1 + 39) = v2;
        *(a1 + 40) = 1;
        v9 = 0;
        v2 = 0;
      }

      *(a1 + 48) = 0;
      *(a1 + 104) = 0;
      if (v10)
      {
        *(a1 + 48) = v11;
        *(a1 + 56) = *v30;
        *(a1 + 63) = *&v30[7];
        *(a1 + 71) = v4;
        *(a1 + 72) = v5;
        *(a1 + 80) = v3;
        *(a1 + 88) = *v29;
        *(a1 + 95) = *&v29[7];
        *(a1 + 103) = v6;
        *(a1 + 104) = 1;
      }

      v16 = *(a1 + 120);
      *(a1 + 112) = 1;
      *(a1 + 120) = *(a2 + 120);
      *(a2 + 120) = v16;
      if (v8)
      {
        if (v2 < 0)
        {
          operator delete(v9);
        }
      }

      goto LABEL_41;
    }

    *a1 = *a2;
    *(a1 + 16) = 0;
    *(a1 + 112) = 0;
LABEL_40:
    *(a1 + 120) = *(a2 + 120);
    *(a2 + 120) = v7;
    goto LABEL_41;
  }

  if (*(a2 + 120))
  {
    *a2 = *a1;
    *(a2 + 16) = 0;
    *(a2 + 112) = 0;
    if (*(a1 + 112) == 1)
    {
      *(a2 + 40) = 0;
      if (*(a1 + 40) == 1)
      {
        v17 = *(a1 + 16);
        *(a2 + 32) = *(a1 + 32);
        *(a2 + 16) = v17;
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        *(a1 + 16) = 0;
        *(a2 + 40) = 1;
        *(a2 + 48) = 0;
        v12 = a2 + 48;
        *(a2 + 104) = 0;
        if (*(a1 + 104) != 1)
        {
LABEL_11:
          *(a2 + 112) = 1;
          if ((*(a1 + 112) & 1) == 0)
          {
            goto LABEL_39;
          }

LABEL_31:
          if (*(a1 + 104) == 1)
          {
            if (*(a1 + 103) < 0)
            {
              v20 = a1;
              v21 = a2;
              operator delete(*(a1 + 80));
              a1 = v20;
              a2 = v21;
            }

            if (*(a1 + 71) < 0)
            {
              v22 = a1;
              v23 = a2;
              operator delete(*(a1 + 48));
              a1 = v22;
              a2 = v23;
            }
          }

          if (*(a1 + 40) == 1 && *(a1 + 39) < 0)
          {
            v24 = a1;
            v25 = a2;
            operator delete(*(a1 + 16));
            a1 = v24;
            a2 = v25;
          }

          goto LABEL_39;
        }
      }

      else
      {
        *(a2 + 48) = 0;
        v12 = a2 + 48;
        *(a2 + 104) = 0;
        if (*(a1 + 104) != 1)
        {
          goto LABEL_11;
        }
      }

      v18 = *(a1 + 48);
      *(v12 + 16) = *(a1 + 64);
      *v12 = v18;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      *(a1 + 48) = 0;
      *(a2 + 72) = *(a1 + 72);
      v19 = *(a1 + 80);
      *(a2 + 96) = *(a1 + 96);
      *(a2 + 80) = v19;
      *(a1 + 88) = 0;
      *(a1 + 96) = 0;
      *(a1 + 80) = 0;
      *(a2 + 104) = 1;
      *(a2 + 112) = 1;
      if (*(a1 + 112))
      {
        goto LABEL_31;
      }
    }

LABEL_39:
    LOBYTE(v7) = *(a1 + 120);
    goto LABEL_40;
  }

  v13 = *MEMORY[0x277D85DE8];
  v14 = *MEMORY[0x277D85DE8];

  sub_27112F120(a1, a2);
}

void sub_27112F120(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  LOBYTE(__p[0]) = 0;
  v14 = 0;
  if (*(a1 + 112) == 1)
  {
    v7 = 0;
    if (*(a1 + 40) == 1)
    {
      *__p = *(a1 + 16);
      v6 = *(a1 + 32);
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 16) = 0;
      v7 = 1;
    }

    LOBYTE(v8[0]) = 0;
    v13 = 0;
    if (*(a1 + 104) == 1)
    {
      v3 = *(a1 + 72);
      v9 = *(a1 + 64);
      *v8 = *(a1 + 48);
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      *(a1 + 48) = 0;
      v10 = v3;
      *v11 = *(a1 + 80);
      v12 = *(a1 + 96);
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
      *(a1 + 96) = 0;
      v13 = 1;
    }

    v14 = 1;
  }

  sub_27112F274(a1, a2);
  sub_27112F274(a2, &v4);
  if (v14 == 1)
  {
    if (v13 != 1)
    {
      goto LABEL_11;
    }

    if (SHIBYTE(v12) < 0)
    {
      operator delete(v11[0]);
      if ((SHIBYTE(v9) & 0x80000000) == 0)
      {
LABEL_11:
        if (v7 != 1)
        {
          return;
        }

        goto LABEL_12;
      }
    }

    else if ((SHIBYTE(v9) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    operator delete(v8[0]);
    if (v7 != 1)
    {
      return;
    }

LABEL_12:
    if (SHIBYTE(v6) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t sub_27112F274(uint64_t result, uint64_t a2)
{
  *result = *a2;
  if (*(result + 112) != *(a2 + 112))
  {
    if (*(result + 112))
    {
      if (*(result + 104) != 1)
      {
        goto LABEL_13;
      }

      if (*(result + 103) < 0)
      {
        v5 = result;
        operator delete(*(result + 80));
        result = v5;
      }

      if (*(result + 71) < 0)
      {
        v14 = result;
        operator delete(*(result + 48));
        result = v14;
        if (*(v14 + 40) == 1)
        {
LABEL_14:
          if (*(result + 39) < 0)
          {
            v15 = result;
            operator delete(*(result + 16));
            result = v15;
            *(v15 + 112) = 0;
          }

          else
          {
            *(result + 112) = 0;
          }

          return result;
        }
      }

      else
      {
LABEL_13:
        if (*(result + 40) == 1)
        {
          goto LABEL_14;
        }
      }

      v7 = 0;
    }

    else
    {
      *(result + 16) = 0;
      *(result + 40) = 0;
      if (*(a2 + 40) == 1)
      {
        v6 = *(a2 + 16);
        *(result + 32) = *(a2 + 32);
        *(result + 16) = v6;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 16) = 0;
        *(result + 40) = 1;
      }

      *(result + 48) = 0;
      *(result + 104) = 0;
      v7 = 1;
      if (*(a2 + 104) == 1)
      {
        v8 = *(a2 + 48);
        *(result + 64) = *(a2 + 64);
        *(result + 48) = v8;
        *(a2 + 56) = 0;
        *(a2 + 64) = 0;
        *(a2 + 48) = 0;
        *(result + 72) = *(a2 + 72);
        v9 = *(a2 + 80);
        *(result + 96) = *(a2 + 96);
        *(result + 80) = v9;
        *(a2 + 88) = 0;
        *(a2 + 96) = 0;
        *(a2 + 80) = 0;
        *(result + 104) = 1;
        *(result + 112) = 1;
        return result;
      }
    }

    *(result + 112) = v7;
    return result;
  }

  if (*(result + 112))
  {
    if (*(result + 40) == *(a2 + 40))
    {
      if (*(result + 40))
      {
        if (*(result + 39) < 0)
        {
          v2 = result;
          v3 = a2;
          operator delete(*(result + 16));
          a2 = v3;
          result = v2;
        }

        v4 = *(a2 + 16);
        *(result + 32) = *(a2 + 32);
        *(result + 16) = v4;
        *(a2 + 39) = 0;
        *(a2 + 16) = 0;
      }
    }

    else if (*(result + 40))
    {
      if (*(result + 39) < 0)
      {
        v10 = result;
        v11 = a2;
        operator delete(*(result + 16));
        a2 = v11;
        result = v10;
      }

      *(result + 40) = 0;
    }

    else
    {
      v12 = *(a2 + 16);
      *(result + 32) = *(a2 + 32);
      *(result + 16) = v12;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 16) = 0;
      *(result + 40) = 1;
    }

    v13 = result;
    sub_27112F4BC(result + 48, (a2 + 48));
    return v13;
  }

  return result;
}

void sub_27112F4BC(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 56) != *(a2 + 56))
  {
    if (!*(a1 + 56))
    {
      v7 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v7;
      *(a2 + 1) = 0;
      *(a2 + 2) = 0;
      *a2 = 0;
      *(a1 + 24) = *(a2 + 3);
      v8 = a2[2];
      *(a1 + 48) = *(a2 + 6);
      *(a1 + 32) = v8;
      *(a2 + 5) = 0;
      *(a2 + 6) = 0;
      *(a2 + 4) = 0;
      *(a1 + 56) = 1;
      return;
    }

    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
      if ((*(a1 + 23) & 0x80000000) == 0)
      {
        goto LABEL_12;
      }
    }

    else if ((*(a1 + 23) & 0x80000000) == 0)
    {
LABEL_12:
      *(a1 + 56) = 0;
      return;
    }

    operator delete(*a1);
    *(a1 + 56) = 0;
    return;
  }

  if (*(a1 + 56))
  {
    if (*(a1 + 23) < 0)
    {
      v3 = a2;
      operator delete(*a1);
      a2 = v3;
    }

    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    *(a2 + 23) = 0;
    *a2 = 0;
    *(a1 + 24) = *(a2 + 3);
    if (*(a1 + 55) < 0)
    {
      v5 = a2;
      operator delete(*(a1 + 32));
      a2 = v5;
    }

    v6 = a2[2];
    *(a1 + 48) = *(a2 + 6);
    *(a1 + 32) = v6;
    *(a2 + 55) = 0;
    *(a2 + 32) = 0;
  }
}

uint64_t sub_27112F5F0(uint64_t result)
{
  if (*(result + 56) == 1)
  {
    if ((*(result + 55) & 0x80000000) == 0)
    {
      if ((*(result + 23) & 0x80000000) == 0)
      {
        return result;
      }

LABEL_6:
      v2 = result;
      operator delete(*result);
      return v2;
    }

    v1 = result;
    operator delete(*(result + 32));
    result = v1;
    if (*(v1 + 23) < 0)
    {
      goto LABEL_6;
    }
  }

  return result;
}

uint64_t sub_27112F660(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = 0;
  *(a1 + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    sub_27112F6CC(a1 + 16, (a2 + 16));
    *(a1 + 112) = 1;
  }

  return a1;
}

uint64_t sub_27112F6CC(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      v4 = a2;
      sub_271127178(a1, *a2, *(a2 + 1));
      a2 = v4;
    }

    else
    {
      v3 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v3;
    }

    *(a1 + 24) = 1;
  }

  *(a1 + 32) = 0;
  *(a1 + 88) = 0;
  if (*(a2 + 88) == 1)
  {
    if (*(a2 + 55) < 0)
    {
      v6 = a2;
      sub_271127178((a1 + 32), *(a2 + 4), *(a2 + 5));
      a2 = v6;
    }

    else
    {
      v5 = a2[2];
      *(a1 + 48) = *(a2 + 6);
      *(a1 + 32) = v5;
    }

    *(a1 + 56) = *(a2 + 7);
    if (*(a2 + 87) < 0)
    {
      sub_271127178((a1 + 64), *(a2 + 8), *(a2 + 9));
    }

    else
    {
      v7 = a2[4];
      *(a1 + 80) = *(a2 + 10);
      *(a1 + 64) = v7;
    }

    *(a1 + 88) = 1;
  }

  return a1;
}

void sub_27112F7D0(_Unwind_Exception *a1)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*v2);
  }

  sub_27112F5F0(v2);
  if ((*(v1 + 24) & 1) != 0 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27112F828(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_27112F8A0(uint64_t a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = *(a1 + 56);
    if (v3)
    {
      v4 = (*v1 + 8);
      if (*(*v1 + 31) < 0)
      {
        v4 = *v4;
      }

      v5 = *(a1 + 8);
      v6 = *(a1 + 24);
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = *(a1 + 64);
      v12 = *(a1 + 56);
      v13 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = v4;
      v15 = v5;
      v16 = v6;
      v17 = v7;
      v18 = v8;
      v19 = v9;
      v20 = v3;
      v21 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v6 >= **(*v1 + 48))
      {
        sub_271125CC0(*v1, &v14);
        v10 = v21;
      }

      if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }

      if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
      }

      v11 = *(a1 + 64);
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      if (v11)
      {
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }
    }
  }
}

void sub_27112FA4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_27113001C(va1);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27112FA68(uint64_t a1, __int128 *a2)
{
  v5 = *a2;
  LOBYTE(v6[0]) = 0;
  v15 = 0;
  if (*(a2 + 112) == 1)
  {
    v8 = 0;
    if (*(a2 + 40) == 1)
    {
      *v6 = a2[1];
      v7 = *(a2 + 4);
      *(a2 + 3) = 0;
      *(a2 + 4) = 0;
      *(a2 + 2) = 0;
      v8 = 1;
    }

    LOBYTE(v9[0]) = 0;
    v14 = 0;
    if (*(a2 + 104) == 1)
    {
      v3 = *(a2 + 9);
      v10 = *(a2 + 8);
      *v9 = a2[3];
      *(a2 + 7) = 0;
      *(a2 + 8) = 0;
      *(a2 + 6) = 0;
      v11 = v3;
      *__p = a2[5];
      v13 = *(a2 + 12);
      *(a2 + 10) = 0;
      *(a2 + 11) = 0;
      *(a2 + 12) = 0;
      v14 = 1;
    }

    v15 = 1;
  }

  v16 = 0;
  sub_27112ED5C(&v5, a1);
  if ((v16 & 1) == 0 && v15 == 1)
  {
    if (v14 == 1)
    {
      if (SHIBYTE(v13) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v10) < 0)
      {
        operator delete(v9[0]);
      }
    }

    if (v8 == 1 && SHIBYTE(v7) < 0)
    {
      operator delete(v6[0]);
    }
  }

  return a1;
}

void sub_27112FBC0(uint64_t a1@<X8>)
{
  sub_27181556C(&v6);
  if (v12 == 1)
  {
    v3 = v6;
    v13[0] = v7;
    LOWORD(v13[1]) = v8;
    v4 = v9;
    v2 = v10;
    v5 = v11;
  }

  else
  {
    v4 = 0;
    qmemcpy(v13, "e.cv3d", 6);
    v5 = 14;
    v3 = 0x6C7070612E6D6F63;
  }

  *a1 = v3;
  *(a1 + 8) = v13[0];
  *(a1 + 12) = v13[1];
  *(a1 + 14) = v4;
  *(a1 + 15) = v2;
  *(a1 + 23) = v5;
  *(a1 + 24) = 1;
}

uint64_t sub_27112FC74(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = result;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    result = v2;
  }

  v3 = *(result + 16);
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t sub_27112FD3C(uint64_t result)
{
  if (*(result + 31) < 0)
  {
    v1 = result;
    operator delete(*(result + 8));
    return v1;
  }

  return result;
}

void sub_27112FD80(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27112FDB8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_27112FDD8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__110shared_ptrIvE27__shared_ptr_default_deleteIv13os_log_pack_sEE")
  {
    if (((v2 & "NSt3__110shared_ptrIvE27__shared_ptr_default_deleteIv13os_log_pack_sEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__110shared_ptrIvE27__shared_ptr_default_deleteIv13os_log_pack_sEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIvE27__shared_ptr_default_deleteIv13os_log_pack_sEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_27112FE58(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106DC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27112FEAC(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void sub_27112FEC4(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x2743BF050);
}

uint64_t *sub_27112FF3C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 32);
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = *(v2 + 16);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    MEMORY[0x2743BF050](v2, 0x10F0C40B62ED6C6);
  }

  return a1;
}

uint64_t sub_27113001C(uint64_t result)
{
  v1 = *(result + 64);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t sub_271130094(uint64_t result)
{
  if ((*(result + 120) & 1) == 0)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x80uLL);
    sub_27112F660(v3, v1);
    sub_271130228(exception, v3);
    __cxa_throw(exception, &unk_28811C2F0, sub_271130150);
  }

  return result;
}

void sub_27113010C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D71C(va);
  _Unwind_Resume(a1);
}

void sub_271130120(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D71C(va);
  __cxa_free_exception(v2);
  _Unwind_Resume(a1);
}

void sub_271130150(uint64_t a1)
{
  *a1 = &unk_288108EE8;
  if (*(a1 + 120) != 1)
  {
    goto LABEL_10;
  }

  if (*(a1 + 112) != 1)
  {
    goto LABEL_5;
  }

  if ((*(a1 + 111) & 0x80000000) == 0)
  {
    if ((*(a1 + 79) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v4 = a1;
    operator delete(*(a1 + 56));
    a1 = v4;
    if (*(v4 + 48) != 1)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v3 = a1;
  operator delete(*(a1 + 88));
  a1 = v3;
  if (*(v3 + 79) < 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (*(a1 + 48) != 1)
  {
    goto LABEL_10;
  }

LABEL_6:
  if (*(a1 + 47) < 0)
  {
    v2 = a1;
    operator delete(*(a1 + 24));
    a1 = v2;
  }

LABEL_10:

  std::exception::~exception(a1);
}

uint64_t sub_271130228(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_288108EE8;
  v3 = *a2;
  *(a1 + 24) = 0;
  *(a1 + 8) = v3;
  *(a1 + 120) = 0;
  if (*(a2 + 112) == 1)
  {
    sub_27112F6CC(a1 + 24, a2 + 1);
    *(a1 + 120) = 1;
  }

  return a1;
}

void sub_2711302A4(_Unwind_Exception *a1)
{
  sub_27112D66C(v2);
  std::exception::~exception(v1);
  _Unwind_Resume(a1);
}

void sub_2711302C0(std::exception *this)
{
  this->__vftable = &unk_288108EE8;
  if (LOBYTE(this[15].__vftable) != 1)
  {
    goto LABEL_10;
  }

  if (LOBYTE(this[14].__vftable) == 1)
  {
    if ((SHIBYTE(this[13].__vftable) & 0x80000000) == 0)
    {
      if ((SHIBYTE(this[9].__vftable) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      operator delete(this[7].__vftable);
      if (LOBYTE(this[6].__vftable) != 1)
      {
        goto LABEL_10;
      }

      goto LABEL_6;
    }

    operator delete(this[11].__vftable);
    if (SHIBYTE(this[9].__vftable) < 0)
    {
      goto LABEL_9;
    }
  }

LABEL_5:
  if (LOBYTE(this[6].__vftable) != 1)
  {
    goto LABEL_10;
  }

LABEL_6:
  if (SHIBYTE(this[5].__vftable) < 0)
  {
    operator delete(this[3].__vftable);
  }

LABEL_10:
  std::exception::~exception(this);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271130394(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_271368F48();
  v7 = v6;
  LOBYTE(v10[0]) = 0;
  v19 = 0;
  if (*(a3 + 96) != 1)
  {
    *a1 = a2;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    *(a1 + 112) = 0;
    return a1;
  }

  sub_27112F6CC(v10, a3);
  v19 = 1;
  *a1 = a2;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  *(a1 + 112) = 0;
  *(a1 + 40) = 0;
  if (v12 == 1)
  {
    *(a1 + 16) = *v10;
    *(a1 + 32) = v11;
    v10[1] = 0;
    v11 = 0;
    v10[0] = 0;
    *(a1 + 40) = 1;
  }

  *(a1 + 48) = 0;
  *(a1 + 104) = 0;
  if (v18)
  {
    v8 = v15;
    *(a1 + 64) = v14;
    *(a1 + 48) = *v13;
    v13[0] = 0;
    v13[1] = 0;
    *(a1 + 72) = v8;
    *(a1 + 80) = *__p;
    *(a1 + 96) = v17;
    __p[1] = 0;
    v17 = 0;
    v14 = 0;
    __p[0] = 0;
    *(a1 + 104) = 1;
    *(a1 + 112) = 1;
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v14) & 0x80000000) == 0)
      {
LABEL_7:
        if (v12 != 1)
        {
          return a1;
        }

        goto LABEL_14;
      }
    }

    else if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    operator delete(v13[0]);
    if (v12 != 1)
    {
      return a1;
    }
  }

  else
  {
    *(a1 + 112) = 1;
    if (v12 != 1)
    {
      return a1;
    }
  }

LABEL_14:
  if ((SHIBYTE(v11) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(v10[0]);
  return a1;
}