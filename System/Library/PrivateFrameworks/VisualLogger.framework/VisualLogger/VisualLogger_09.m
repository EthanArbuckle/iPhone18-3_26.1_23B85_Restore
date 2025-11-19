void sub_2711CE954(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D66C(va);
  _Unwind_Resume(a1);
}

void sub_2711CE968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_27112D66C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2711CE97C(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_288114A58;
  v3 = *a2;
  v4 = a2[1];
  *(a1 + 36) = *(a2 + 28);
  *(a1 + 24) = v4;
  *(a1 + 8) = v3;
  v6 = *(a2 + 7) == 0.0 && *(a2 + 6) == 0.0;
  v7 = *(a2 + 8) == 0.0;
  __asm { FMOV            V0.2S, #1.0 }

  v12 = *a2;
  v13 = *(a2 + 8);
  v14 = vdiv_f32(_D0, *a2);
  *(a1 + 52) = v14;
  *(a1 + 60) = vmul_f32(v14, vneg_f32(v13));
  *(a1 + 68) = v12;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 84) = HIDWORD(v12);
  *(a1 + 88) = 0;
  *(a1 + 92) = v13;
  *(a1 + 100) = 1065353216;
  *(a1 + 104) = v6 && v7;
  *(a1 + 105) = v7;
  sub_2711CE574(v18, a1 + 8);
  v15 = v28;
  if (v28 == 1)
  {
    sub_271130094(v18);
    if (v28)
    {
      return a1;
    }
  }

  if (v27 != 1)
  {
    goto LABEL_16;
  }

  if (v26 != 1)
  {
    goto LABEL_13;
  }

  if (v25 < 0)
  {
    operator delete(v24);
    if ((v23 & 0x80000000) == 0)
    {
LABEL_13:
      if (v21 == 1)
      {
        goto LABEL_14;
      }

      goto LABEL_16;
    }
  }

  else if ((v23 & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

  operator delete(v22);
  if (v21 == 1)
  {
LABEL_14:
    if (v20 < 0)
    {
      operator delete(__p);
    }
  }

LABEL_16:
  if ((v15 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "HeikkilaModel parameters invalid");
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279E2F410, MEMORY[0x277D82610]);
  }

  return a1;
}

void sub_2711CEC60(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106A80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2711CEDBC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106A48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void *sub_2711CEE38()
{
  if ((atomic_load_explicit(&qword_280877D70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877D70))
  {
    sub_2711CEED0();
  }

  return &unk_280877D58;
}

void sub_2711CEFA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711CEFD4(const void **a1@<X0>, std::string *a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v12 = 7;
  strcpy(v11, "float64");
  sub_271851C68("cv3d::kit::cam::PixelOrigin::Corner]", 35, &v13);
  sub_2711309E8(__p, v11, 2uLL);
  sub_271851AD8(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    operator delete(v11[0]);
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v12 < 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_2711CF110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_27137F4D0(&a9);
  if (a23 < 0)
  {
    operator delete(__p);
    if ((a17 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a12);
  _Unwind_Resume(a1);
}

void *sub_2711CF16C()
{
  if ((atomic_load_explicit(&qword_280877D30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877D30))
  {
    sub_2711CF204();
  }

  return &unk_280877D18;
}

void sub_2711CF2D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711CF308(const void **a1@<X0>, std::string *a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v12 = 7;
  strcpy(v11, "float64");
  sub_271851C68("cv3d::kit::cam::PixelOrigin::Center]", 35, &v13);
  sub_2711309E8(__p, v11, 2uLL);
  sub_271851AD8(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    operator delete(v11[0]);
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v12 < 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_2711CF444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_27137F4D0(&a9);
  if (a23 < 0)
  {
    operator delete(__p);
    if ((a17 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a12);
  _Unwind_Resume(a1);
}

void sub_2711CF574(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711CF678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2711CF6A8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2 || (v3 = **v2, (result = __dynamic_cast(v2, &unk_2881240F8, &unk_2881241F8, 0)) == 0))
  {
    if ((atomic_load_explicit(&qword_28087B140, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_28087B140))
      {
        sub_2711CFCBC();
      }
    }

    sub_2717412A4(a1, &xmmword_28087B190, "trying to cast camera");
  }

  return result;
}

void *sub_2711CF778(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2 || (v3 = **v2, (result = __dynamic_cast(v2, &unk_2881240F8, &unk_2881241E0, 0)) == 0))
  {
    if ((atomic_load_explicit(&qword_28087B148, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_28087B148))
      {
        sub_2711CFE18();
      }
    }

    sub_2717412A4(a1, &xmmword_28087B1A8, "trying to cast camera");
  }

  return result;
}

void *sub_2711CF848(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2 || (v3 = **v2, (result = __dynamic_cast(v2, &unk_2881240F8, &unk_288124198, 0)) == 0))
  {
    if ((atomic_load_explicit(&qword_28087B150, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_28087B150))
      {
        sub_2711CFF74();
      }
    }

    sub_2717412A4(a1, &xmmword_28087B1C0, "trying to cast camera");
  }

  return result;
}

void *sub_2711CF918(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2 || (v3 = **v2, (result = __dynamic_cast(v2, &unk_2881240F8, &unk_288124180, 0)) == 0))
  {
    if ((atomic_load_explicit(&qword_28087B158, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_28087B158))
      {
        sub_2711D00D0();
      }
    }

    sub_2717412A4(a1, &xmmword_28087B1D8, "trying to cast camera");
  }

  return result;
}

void sub_2711CF9E8(uint64_t a1, const char *a2, const char *a3)
{
  v6 = 0;
  v7 = v5;
  v8 = "Cannot get ";
  v9 = v5;
  v10 = "Cannot get ";
  v11 = "Cannot get ";
  v12 = &v7;
  sub_2711D0494(&v12);
  if (*a2)
  {
    v7 = v5;
    v8 = a2;
    v9 = v5;
    v10 = a2;
    v11 = a2;
    if (v6 != -1)
    {
      v12 = &v7;
      (off_28812E1E8[v6])(&v12, v5);
      goto LABEL_6;
    }
  }

  else
  {
    v7 = v5;
    v8 = "nullptr";
    v9 = v5;
    v10 = "nullptr";
    v11 = "nullptr";
    if (v6 != -1)
    {
      v12 = &v7;
      (*(&off_28812DFF0 + v6))(&v12, v5);
LABEL_6:
      v7 = v5;
      v8 = " as ";
      v9 = v5;
      v10 = " as ";
      v11 = " as ";
      if (v6 != -1)
      {
        v12 = &v7;
        (off_28812E200[v6])(&v12, v5);
        v7 = v5;
        v8 = a3;
        v9 = v5;
        v10 = a3;
        v11 = a3;
        if (v6 != -1)
        {
          v12 = &v7;
          (off_28812E218[v6])(&v12, v5);
          v7 = v5;
          v8 = ", camera value type is ";
          v9 = v5;
          v10 = ", camera value type is ";
          v11 = ", camera value type is ";
          if (v6 != -1)
          {
            v12 = &v7;
            (off_28812E230[v6])(&v12, v5);
            sub_2711D022C();
          }

          sub_2711308D4();
        }

        sub_2711308D4();
      }

      sub_2711308D4();
    }
  }

  sub_2711308D4();
}

void sub_2711CFDD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711CFF30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711D008C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711D01E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711D0450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

size_t sub_2711D0494(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28812DFD8[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

_BYTE *sub_2711D0598(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_2711D0998(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_271120DA8();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

size_t sub_2711D0698(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28812DFD8[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_2711D078C(uint64_t *a1, uint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v18 + 7) = *(a2 + 15);
  v4 = *a2;
  v18[0] = *(a2 + 8);
  v3 = v18[0];
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v13 = v4;
  *v14 = v3;
  *&v14[7] = *(v18 + 7);
  v15 = v5;
  memset(v18, 0, 15);
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v17 = v7;
  if (v7)
  {
    memmove(&__p, v6, v7);
    *(&__p + v8) = 0;
    v9 = *(v2 + 24);
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v9 = *(v2 + 24);
  if (v9 != -1)
  {
LABEL_8:
    (off_28812DFD8[v9])(&v12, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_2711309E8(v2, &v13, 2uLL);
  *(v2 + 24) = 2;
  if (v17 < 0)
  {
    operator delete(__p);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
LABEL_11:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v13);
  v11 = *MEMORY[0x277D85DE8];
}

void sub_2711D094C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2711D0998(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_271135560();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_2711D0B34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_2711D0B58(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_2711D0F58(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_271120DA8();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

size_t sub_2711D0C58(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28812DFD8[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_2711D0D4C(uint64_t *a1, uint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v18 + 7) = *(a2 + 15);
  v4 = *a2;
  v18[0] = *(a2 + 8);
  v3 = v18[0];
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v13 = v4;
  *v14 = v3;
  *&v14[7] = *(v18 + 7);
  v15 = v5;
  memset(v18, 0, 15);
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v17 = v7;
  if (v7)
  {
    memmove(&__p, v6, v7);
    *(&__p + v8) = 0;
    v9 = *(v2 + 24);
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v9 = *(v2 + 24);
  if (v9 != -1)
  {
LABEL_8:
    (off_28812DFD8[v9])(&v12, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_2711309E8(v2, &v13, 2uLL);
  *(v2 + 24) = 2;
  if (v17 < 0)
  {
    operator delete(__p);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
LABEL_11:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v13);
  v11 = *MEMORY[0x277D85DE8];
}

void sub_2711D0F0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2711D0F58(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_271135560();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_2711D10F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

void *sub_2711D1108(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2 || (v3 = **v2, (result = __dynamic_cast(v2, &unk_2881240F8, &unk_288124228, 0)) == 0))
  {
    if ((atomic_load_explicit(&qword_28087B160, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_28087B160))
      {
        sub_2711D1448();
      }
    }

    sub_2717412A4(a1, &xmmword_28087B1F0, "trying to cast camera");
  }

  return result;
}

void *sub_2711D11D8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2 || (v3 = **v2, (result = __dynamic_cast(v2, &unk_2881240F8, &unk_288124210, 0)) == 0))
  {
    if ((atomic_load_explicit(&qword_28087B168, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_28087B168))
      {
        sub_2711D15A4();
      }
    }

    sub_2717412A4(a1, &xmmword_28087B208, "trying to cast camera");
  }

  return result;
}

void *sub_2711D12A8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2 || (v3 = **v2, (result = __dynamic_cast(v2, &unk_2881240F8, &unk_2881241C8, 0)) == 0))
  {
    if ((atomic_load_explicit(&qword_28087B170, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_28087B170))
      {
        sub_2711D1700();
      }
    }

    sub_2717412A4(a1, &xmmword_28087B220, "trying to cast camera");
  }

  return result;
}

void *sub_2711D1378(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2 || (v3 = **v2, (result = __dynamic_cast(v2, &unk_2881240F8, &unk_2881241B0, 0)) == 0))
  {
    if ((atomic_load_explicit(&qword_28087B178, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_28087B178))
      {
        sub_2711D1960();
      }
    }

    sub_2717412A4(a1, &xmmword_28087B238, "trying to cast camera");
  }

  return result;
}

void sub_2711D1560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711D16BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711D1818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711D1930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711D1A78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711D1B90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

size_t sub_2711D1BC0(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28812DFD8[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_2711D1EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2711D2198(void *a1)
{
  *a1 = &unk_28812E370;
  sub_271134CBC((a1 + 8));
  result = a1;
  a1[1] = &unk_28812E3B8;
  a1[2] = &unk_288114818;
  v3 = a1[4];
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

void sub_2711D2278(void *a1)
{
  *a1 = &unk_28812E370;
  sub_271134CBC((a1 + 8));
  a1[1] = &unk_28812E3B8;
  a1[2] = &unk_288114818;
  v2 = a1[4];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2711D237C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280877E50, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280877E50))
    {
      sub_2711D3400(&stru_280877E38);
      __cxa_guard_release(&qword_280877E50);
    }
  }

  (*(*(a1 + 8) + 24))(__p, a1 + 8);
  sub_2711C1280(&stru_280877E38, "{", __p, ",");
}

void sub_2711D247C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711D2498(uint64_t a1@<X8>)
{
  *(a1 + 23) = 8;
  strcpy(a1, "cv3d.viz");
  *(a1 + 24) = 5;
}

void *sub_2711D2514(void *result)
{
  *result = &unk_28812E3B8;
  result[1] = &unk_288114818;
  v1 = result[3];
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

void *sub_2711D25C8(void *a1)
{
  *a1 = &unk_28812E370;
  sub_271134CBC((a1 + 8));
  result = a1;
  a1[1] = &unk_28812E3B8;
  a1[2] = &unk_288114818;
  v3 = a1[4];
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

void sub_2711D26A8(void *a1)
{
  *a1 = &unk_28812E370;
  sub_271134CBC((a1 + 8));
  a1[1] = &unk_28812E3B8;
  a1[2] = &unk_288114818;
  v2 = a1[4];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2711D279C()
{
  if ((atomic_load_explicit(&qword_280877E30, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280877E30))
    {
      sub_2711D3190();
    }
  }

  sub_2711D2C44(&xmmword_280877E18, "{");
}

void sub_2711D2850(uint64_t a1@<X8>)
{
  *(a1 + 23) = 15;
  strcpy(a1, "unknown_package");
  *(a1 + 24) = 0;
}

void sub_2711D287C(void *a1)
{
  *a1 = &unk_28812E3B8;
  a1[1] = &unk_288114818;
  v1 = a1[3];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2711D2944(char **a1, char **lpsrc)
{
  v4 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_288132918, &unk_28812E3D8, 0);
  if (result)
  {
    if (a1 == lpsrc)
    {
      return 1;
    }

    else
    {

      return sub_27173FF38((a1 + 1), result + 8);
    }
  }

  return result;
}

void sub_2711D29E4()
{
  if ((atomic_load_explicit(&qword_280877E10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877E10))
  {
    sub_2718519B4("cv3d::kit::cam::Camera]", 0x16uLL, &xmmword_280877DF8);
    __cxa_guard_release(&qword_280877E10);
  }

  sub_2711D2A98(&xmmword_280877DF8, "{");
}

void sub_2711D2A98(__int128 *a1, uint64_t a2)
{
  v5 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v3, *a1, *(a1 + 1));
  }

  else
  {
    v3 = *a1;
    v4 = *(a1 + 2);
  }

  v5 = 1;
  v6 = &v3;
  v7 = a2;
  v8[0] = &v3;
  v8[1] = a2;
  v8[2] = a2;
  sub_271136F58(v8, &v3);
  sub_2711D1CB4();
}

void sub_2711D2BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711D2BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711D2C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711D2C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711D2C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711D2C44(__int128 *a1, uint64_t a2)
{
  v5 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v3, *a1, *(a1 + 1));
  }

  else
  {
    v3 = *a1;
    v4 = *(a1 + 2);
  }

  v5 = 1;
  v6 = &v3;
  v7 = a2;
  v8[0] = &v3;
  v8[1] = a2;
  v8[2] = a2;
  sub_271136F58(v8, &v3);
  sub_2711D2E74();
}

void sub_2711D2DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711D2DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711D2E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711D2E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711D2E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711D2E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711D2E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711D3108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_guard_abort(&qword_280877E10);
  v23 = *(v21 - 56);
  *(v21 - 56) = 0;
  if (!v23)
  {
    _Unwind_Resume(a1);
  }

  sub_27184D728(v21 - 56, v23);
  _Unwind_Resume(a1);
}

void sub_2711D3264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711D3294(const void **a1@<X0>, std::string *a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  strcpy(&__p, "cv3d::kit::cam::Camera");
  *(&__p.__r_.__value_.__s + 23) = 22;
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_2711309E8(v9, v11, 1uLL);
  sub_271851AD8(a1, v9, a2);
  v4 = v9[0];
  if (v9[0])
  {
    v5 = v9[1];
    v6 = v9[0];
    if (v9[1] != v9[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v9[0];
    }

    v9[1] = v4;
    operator delete(v6);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_2711D33C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27137F4D0(va);
  if (*(v2 - 25) < 0)
  {
    operator delete(*(v2 - 48));
  }

  _Unwind_Resume(a1);
}

void sub_2711D3400(std::string *a1@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  HIBYTE(v9[2]) = 16;
  strcpy(v9, "viz::PackageData");
  strcpy(&__p, "cv3d::kit::cam::Camera");
  *(&__p.__r_.__value_.__s + 23) = 22;
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v14 = 12;
  strcpy(v13, "viz::Package");
  sub_271851C68("5U]", 2, &v15);
  v17 = 4;
  strcpy(v16, "void");
  sub_2711309E8(v8, v11, 4uLL);
  sub_271851AD8(v9, v8, a1);
  v2 = v8[0];
  if (v8[0])
  {
    v3 = v8[1];
    v4 = v8[0];
    if (v8[1] != v8[0])
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = v8[0];
    }

    v8[1] = v2;
    operator delete(v4);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_13:
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_20;
    }
  }

  else if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

  operator delete(v15.__r_.__value_.__l.__data_);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_14:
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_21:
    operator delete(v11[0]);
    if ((SHIBYTE(v9[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_22:
    operator delete(v9[0]);
    v7 = *MEMORY[0x277D85DE8];
    return;
  }

LABEL_20:
  operator delete(v13[0]);
  if (v12 < 0)
  {
    goto LABEL_21;
  }

LABEL_15:
  if (SHIBYTE(v9[2]) < 0)
  {
    goto LABEL_22;
  }

LABEL_16:
  v6 = *MEMORY[0x277D85DE8];
}

void sub_2711D3614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  sub_27137F4D0(&a10);
  if (a49 < 0)
  {
    operator delete(__p);
    if ((a43 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a37 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a43 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a38);
  if ((a37 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a31 & 0x80000000) == 0)
    {
LABEL_10:
      if (a18 < 0)
      {
        operator delete(a13);
      }

      _Unwind_Resume(a1);
    }

LABEL_9:
    operator delete(a26);
    goto LABEL_10;
  }

LABEL_8:
  operator delete(a32);
  if ((a31 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

uint64_t sub_2711D36C4(uint64_t result)
{
  if (*(result + 104) == 1)
  {
    v1 = *(result + 96);
    if (v1 == result + 72)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 96));
    }

    else
    {
      if (!v1)
      {
        goto LABEL_7;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 96));
    }

    result = v2;
  }

LABEL_7:
  if (*(result + 40) == 1 && *(result + 23) < 0)
  {
    v3 = result;
    operator delete(*result);
    return v3;
  }

  return result;
}

double sub_2711D3794(uint64_t a1, char *__s, __int16 a3)
{
  if (__s && (v6 = strlen(__s)) != 0)
  {
    v8 = v6;
    if (v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_271120DA8();
    }

    if (v6 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v10) = v6;
    memcpy(&__dst, __s, v6);
    *(&__dst + v8) = 0;
    if (*(a1 + 40) == 1)
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      result = *&__dst;
      *a1 = __dst;
      *(a1 + 16) = v10;
      *(a1 + 24) = a3;
      *(a1 + 32) = 0;
    }

    else
    {
      result = *&__dst;
      *a1 = __dst;
      *(a1 + 16) = v10;
      *(a1 + 24) = a3;
      *(a1 + 32) = 0;
      *(a1 + 40) = 1;
    }
  }

  else if (*(a1 + 40) == 1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 40) = 0;
  }

  return result;
}

void sub_2711D38FC(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  *(a1 + 48) = a2;
  if (a2 < 3)
  {
    *(a3 + 120) = 1;
    return;
  }

  v7 = a2;
  sub_2711D3B40("invalid VZClientSyncType ", &v7);
  if (SHIBYTE(v9) < 0)
  {
    sub_271127178(v10, v8[0], v8[1]);
  }

  else
  {
    *v10 = *v8;
    v11 = v9;
  }

  v12 = 1;
  LOBYTE(v13) = 0;
  v17 = 0;
  v18 = 1;
  sub_27112D480(0xAu, v10, &v19);
  *a3 = v19;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v29 == 1)
  {
    *(a3 + 40) = 0;
    v4 = v22;
    if (v22 == 1)
    {
      *(a3 + 16) = v20;
      *(a3 + 32) = v21;
      v21 = 0;
      v20 = 0uLL;
      *(a3 + 40) = 1;
      *(a3 + 48) = 0;
      v5 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v28 & 1) == 0)
      {
LABEL_10:
        *(a3 + 112) = 1;
        *(a3 + 120) = 0;
        if (!v4)
        {
          goto LABEL_17;
        }

LABEL_15:
        if (SHIBYTE(v21) < 0)
        {
          operator delete(v20);
        }

        goto LABEL_17;
      }
    }

    else
    {
      *(a3 + 48) = 0;
      v5 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v28 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v6 = v25;
    *(v5 + 16) = v24;
    *v5 = v23;
    v24 = 0;
    v23 = 0uLL;
    *(a3 + 72) = v6;
    *(a3 + 80) = v26;
    *(a3 + 96) = v27;
    v26 = 0uLL;
    v27 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    *(a3 + 120) = 0;
    if (v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    *(a3 + 120) = 0;
  }

LABEL_17:
  if (v18 == 1)
  {
    if (v17 == 1)
    {
      if (v16 < 0)
      {
        operator delete(__p);
      }

      if (v14 < 0)
      {
        operator delete(v13);
      }
    }

    if (v12 == 1 && SHIBYTE(v11) < 0)
    {
      operator delete(v10[0]);
    }
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[0]);
  }
}

void sub_2711D3B14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2711D3B40(std::string *a1, unsigned __int8 *a2)
{
  v5 = 0;
  v7 = v4;
  v8 = a1;
  v9 = v4;
  v10 = a1;
  v11 = a1;
  v6.__r_.__value_.__r.__words[0] = &v7;
  sub_2711D6F00(&v6);
  std::to_string(&v6, *a2);
  v7 = v4;
  v8 = &v6;
  v9 = v4;
  v10 = &v6;
  v11 = &v6;
  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v12 = &v7;
  (off_28812E448[v5])(&v12, v4);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v7 = &v6;
  result = (off_28812E460[v5])(&v7, v4);
  if (v5 != -1)
  {
    return (off_28812E430[v5])(&v7, v4);
  }

  return result;
}

void sub_2711D3C58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271137AE8(va);
  _Unwind_Resume(a1);
}

void sub_2711D3C74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_271137AE8(&a10);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x2711D3C64);
}

void sub_2711D3C98(uint64_t a1, uint64_t *a2, char a3)
{
  if (a3)
  {
    v4 = *a2;
    v3 = a2[1];
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    v5 = *(a1 + 152);
    *(a1 + 136) = v4;
    if (v5 != 1)
    {
      *(a1 + 144) = v3;
      *(a1 + 152) = 1;
      return;
    }

    v6 = *(a1 + 144);
    *(a1 + 144) = v3;
    if (!v6)
    {
      return;
    }

LABEL_9:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);

      std::__shared_weak_count::__release_weak(v6);
    }

    return;
  }

  if (*(a1 + 152) != 1)
  {
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    *(a1 + 152) = 1;
    return;
  }

  v6 = *(a1 + 144);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  if (v6)
  {
    goto LABEL_9;
  }
}

void sub_2711D3D88(void *a1)
{
  v1 = a1;
  sub_271120E64(a1, "{options={", 10);
  sub_2711D6FF4();
}

void **sub_2711D3E90(void **a1, void *a2)
{
  if (*a2)
  {
    operator new();
  }

  sub_271120E64(*a1, "nullptr", 7);
  return a1;
}

void sub_2711D406C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711D40C8(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(**(a1 + 1) + 16))(*(a1 + 1));
  if (v4 != (*(off_288132228 + 2))())
  {
    *a2 = *a1;
    *(a2 + 16) = 0;
    *(a2 + 112) = 0;
    if (*(a1 + 112) == 1)
    {
      sub_27112F6CC(a2 + 16, a1 + 1);
      *(a2 + 112) = 1;
    }

    return;
  }

  v5 = *a1;
  if (v5 > 0xF)
  {
    v6 = 1;
    LOBYTE(v7[0]) = 0;
    v15 = 0;
    if (*(a1 + 112) != 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v6 = dword_271859230[v5];
  LOBYTE(v7[0]) = 0;
  v15 = 0;
  if (*(a1 + 112) == 1)
  {
LABEL_9:
    sub_27112F6CC(v7, a1 + 1);
    v15 = 1;
  }

LABEL_10:
  sub_271130394(a2, v6, v7);
  if (v15 == 1)
  {
    if (v14 == 1)
    {
      if (v13 < 0)
      {
        operator delete(__p);
      }

      if (v11 < 0)
      {
        operator delete(v10);
      }
    }

    if (v9 == 1 && v8 < 0)
    {
      operator delete(v7[0]);
    }
  }
}

void sub_2711D4264(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D66C(va);
  _Unwind_Resume(a1);
}

void sub_2711D428C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D66C(va);
  _Unwind_Resume(a1);
}

void sub_2711D42A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v4 = a2[1];
    if (*a2)
    {
      v5 = *a2 + 8;
    }

    else
    {
      v5 = 0;
    }

    v6 = a2[1];
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v4 = 0;
    if (v2)
    {
      v5 = v2 + 8;
    }

    else
    {
      v5 = 0;
    }
  }

  a1[2] = v5;
  a1[3] = v4;
  operator new();
}

void sub_2711D4430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27112F828(v10);
  sub_27112F828(&a9);
  sub_27112F828(v9);
  _Unwind_Resume(a1);
}

void sub_2711D4454(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v69[0] = a1;
  v69[1] = a2;
  LOBYTE(v57) = 0;
  v68 = 0;
  v56[0] = &unk_28812E400;
  v56[1] = &v57;
  v56[2] = v69;
  sub_27184A384(v56, &v45);
  if (v55 == 1)
  {
    v33 = v67;
    if (v67 == 1)
    {
      v4 = v57;
      v57 = 0uLL;
      v23 = v4;
      *v24 = v58;
      v58 = 0uLL;
      v25 = v59;
      v59 = 0uLL;
    }

    else
    {
      v23 = v57;
      LOBYTE(v24[0]) = 0;
      v32 = 0;
      if (v66 == 1)
      {
        BYTE8(v25) = 0;
        if (BYTE8(v59) == 1)
        {
          *v24 = v58;
          *&v25 = v59;
          *&v59 = 0;
          v58 = 0uLL;
          BYTE8(v25) = 1;
        }

        LOBYTE(v26) = 0;
        v31 = 0;
        if (v65 == 1)
        {
          v27 = v61;
          v26 = v60;
          v60 = 0uLL;
          v29 = v63;
          v28 = v62;
          v30 = v64;
          v61 = 0;
          v63 = 0uLL;
          v64 = 0;
          v31 = 1;
        }

        v32 = 1;
      }
    }

    goto LABEL_30;
  }

  v34 = v45;
  LOBYTE(__p) = 0;
  v44 = 0;
  if (v54 == 1)
  {
    sub_27112F6CC(&__p, &v46);
    v44 = 1;
    v23 = v34;
    LOBYTE(v24[0]) = 0;
    BYTE8(v25) = 0;
    if (v37 == 1)
    {
      *v24 = __p;
      *&v25 = v36;
      v36 = 0;
      __p = 0uLL;
      BYTE8(v25) = 1;
      LOBYTE(v26) = 0;
      v31 = 0;
      if ((v43 & 1) == 0)
      {
LABEL_7:
        v32 = 1;
        v33 = 0;
        if (!v37)
        {
          goto LABEL_20;
        }

LABEL_18:
        if (SHIBYTE(v36) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_20;
      }
    }

    else
    {
      LOBYTE(v26) = 0;
      v31 = 0;
      if ((v43 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v27 = v39;
    v26 = v38;
    v38 = 0uLL;
    v29 = v41;
    v28 = v40;
    v30 = v42;
    v39 = 0;
    v41 = 0uLL;
    v42 = 0;
    v31 = 1;
    v32 = 1;
    v33 = 0;
    if (v37)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v23 = v45;
    LOBYTE(v24[0]) = 0;
    v32 = 0;
    v33 = 0;
  }

LABEL_20:
  if ((v55 & 1) == 0 && v54 == 1)
  {
    if (v53 == 1)
    {
      if (v52 < 0)
      {
        operator delete(v51);
      }

      if (v50 < 0)
      {
        operator delete(v49);
      }
    }

    if (v48 == 1 && v47 < 0)
    {
      operator delete(v46);
    }
  }

LABEL_30:
  if (v68 == 1)
  {
    if (v67 == 1)
    {
      sub_2711D4E88(&v57);
    }

    else if (v66 == 1)
    {
      if (v65 == 1)
      {
        if (SHIBYTE(v64) < 0)
        {
          operator delete(v63);
        }

        if (SHIBYTE(v61) < 0)
        {
          operator delete(v60);
        }
      }

      if (BYTE8(v59) == 1 && SBYTE7(v59) < 0)
      {
        operator delete(v58);
      }
    }
  }

  v5 = v33;
  if (v33)
  {
    goto LABEL_43;
  }

  if ((atomic_load_explicit(&qword_28087B280, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B280))
  {
    v12 = std::generic_category();
    qword_28087B288 = 22;
    qword_28087B290 = v12;
    __cxa_guard_release(&qword_28087B280);
  }

  v5 = v33;
  if (v33 == 1)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_288108EC0;
    __cxa_throw(exception, &unk_28811C2D8, std::exception::~exception);
  }

  if (*(&v23 + 1) != qword_28087B290 || v23 != qword_28087B288)
  {
LABEL_43:
    *a3 = 0;
    *(a3 + 120) = v5;
    if (v5)
    {
      v6 = v23;
      v7 = *v24;
      v23 = 0uLL;
      *a3 = v6;
      *(a3 + 16) = v7;
      v24[0] = 0;
      v24[1] = 0;
      *(a3 + 32) = v25;
      v25 = 0uLL;
LABEL_77:
      sub_2711D4E88(&v23);
      return;
    }

    *a3 = v23;
    *(a3 + 16) = 0;
    *(a3 + 112) = 0;
    if (v32 != 1)
    {
      return;
    }

    *(a3 + 40) = 0;
    if (BYTE8(v25) == 1)
    {
      *(a3 + 16) = *v24;
      *(a3 + 32) = v25;
      v24[1] = 0;
      *&v25 = 0;
      v24[0] = 0;
      *(a3 + 40) = 1;
    }

    *(a3 + 48) = 0;
    *(a3 + 104) = 0;
    if (v31 == 1)
    {
      v10 = v28;
      *(a3 + 64) = v27;
      *(a3 + 48) = v26;
      v26 = 0uLL;
      *(a3 + 72) = v10;
      *(a3 + 80) = v29;
      *(a3 + 96) = v30;
      v27 = 0;
      v29 = 0uLL;
      v30 = 0;
      *(a3 + 104) = 1;
    }

    *(a3 + 112) = 1;
    goto LABEL_80;
  }

  LOBYTE(v14[0]) = 0;
  v22 = 0;
  if (v32 == 1)
  {
    sub_27112F6CC(v14, v24);
    v22 = 1;
  }

  sub_27112D480(0xAu, v14, &v57);
  *a3 = v57;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v66 != 1)
  {
    *(a3 + 120) = 0;
    goto LABEL_67;
  }

  *(a3 + 40) = 0;
  v8 = BYTE8(v59);
  if (BYTE8(v59) == 1)
  {
    *(a3 + 16) = v58;
    *(a3 + 32) = v59;
    *&v59 = 0;
    v58 = 0uLL;
    *(a3 + 40) = 1;
    *(a3 + 48) = 0;
    v9 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v65 & 1) == 0)
    {
LABEL_54:
      *(a3 + 112) = 1;
      *(a3 + 120) = 0;
      if (!v8)
      {
        goto LABEL_67;
      }

      goto LABEL_65;
    }
  }

  else
  {
    *(a3 + 48) = 0;
    v9 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v65 & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  v11 = v62;
  *(v9 + 16) = v61;
  *v9 = v60;
  v60 = 0uLL;
  *(a3 + 72) = v11;
  *(a3 + 80) = v63;
  *(a3 + 96) = v64;
  v61 = 0;
  v63 = 0uLL;
  v64 = 0;
  *(a3 + 104) = 1;
  *(a3 + 112) = 1;
  *(a3 + 120) = 0;
  if (!v8)
  {
    goto LABEL_67;
  }

LABEL_65:
  if (SBYTE7(v59) < 0)
  {
    operator delete(v58);
  }

LABEL_67:
  if (v22 == 1)
  {
    if (v21 == 1)
    {
      if (v20 < 0)
      {
        operator delete(v19);
      }

      if (v18 < 0)
      {
        operator delete(v17);
      }
    }

    if (v16 == 1 && v15 < 0)
    {
      operator delete(v14[0]);
    }
  }

  if (v33)
  {
    goto LABEL_77;
  }

  if (v32)
  {
LABEL_80:
    if (v31 == 1)
    {
      if (SHIBYTE(v30) < 0)
      {
        operator delete(v29);
      }

      if (SHIBYTE(v27) < 0)
      {
        operator delete(v26);
      }
    }

    if (BYTE8(v25) == 1 && SBYTE7(v25) < 0)
    {
      operator delete(v24[0]);
    }
  }
}

void sub_2711D4B48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_27112D66C(va);
  sub_271144D2C(va1);
  _Unwind_Resume(a1);
}

void sub_2711D4B64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_27112D66C(va);
  sub_271144D2C(va1);
  _Unwind_Resume(a1);
}

void sub_2711D4B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  sub_27112D66C(v54 + 16);
  sub_27112E024(&a54);
  sub_2711D6E44((v55 - 192));
  _Unwind_Resume(a1);
}

void sub_2711D4BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_271144D2C(va);
  _Unwind_Resume(a1);
}

void sub_2711D4BCC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 40))(v27);
  if (v37 == 1)
  {
    if (v28 == 1)
    {
      *a2 = v27[1];
    }

    else
    {
      *a2 = 0;
    }

    *(a2 + 120) = 1;
    return;
  }

  sub_2711D40C8(v27, &v6);
  v16 = v6;
  LOBYTE(__p) = 0;
  v26 = 0;
  if (v15 == 1)
  {
    sub_27112F6CC(&__p, &v7);
    v26 = 1;
    *a2 = v16;
    *(a2 + 16) = 0;
    *(a2 + 40) = 0;
    v3 = v19;
    if (v19 == 1)
    {
      *(a2 + 16) = __p;
      *(a2 + 32) = v18;
      v18 = 0;
      __p = 0uLL;
      *(a2 + 40) = 1;
      *(a2 + 48) = 0;
      v4 = a2 + 48;
      *(a2 + 104) = 0;
      if ((v25 & 1) == 0)
      {
LABEL_7:
        *(a2 + 112) = 1;
        *(a2 + 120) = 0;
        if (!v3)
        {
          goto LABEL_17;
        }

LABEL_15:
        if (SHIBYTE(v18) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_17;
      }
    }

    else
    {
      *(a2 + 48) = 0;
      v4 = a2 + 48;
      *(a2 + 104) = 0;
      if ((v25 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v5 = v22;
    *(v4 + 16) = v21;
    *v4 = v20;
    v20 = 0uLL;
    *(a2 + 72) = v5;
    *(a2 + 80) = v23;
    *(a2 + 96) = v24;
    v21 = 0;
    v23 = 0uLL;
    v24 = 0;
    *(a2 + 104) = 1;
    *(a2 + 112) = 1;
    *(a2 + 120) = 0;
    if (v3)
    {
      goto LABEL_15;
    }
  }

  else
  {
    *a2 = v6;
    *(a2 + 16) = 0;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
  }

LABEL_17:
  if (v15 == 1)
  {
    if (v14 == 1)
    {
      if (v13 < 0)
      {
        operator delete(v12);
      }

      if (v11 < 0)
      {
        operator delete(v10);
      }
    }

    if (v9 == 1 && v8 < 0)
    {
      operator delete(v7);
    }
  }

  if ((v37 & 1) == 0 && v36 == 1)
  {
    if (v35 == 1)
    {
      if (v34 < 0)
      {
        operator delete(v33);
      }

      if (v32 < 0)
      {
        operator delete(v31);
      }
    }

    if (v30 == 1 && v29 < 0)
    {
      operator delete(v27[2]);
    }
  }
}

void sub_2711D4E50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D66C(v2 + 16);
  sub_27112D71C(va);
  sub_27112E024(v3 - 160);
  _Unwind_Resume(a1);
}

void *sub_2711D4E88(void *result)
{
  v1 = result[5];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = result;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    result = v2;
  }

  v3 = result[3];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v4 = result;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    result = v4;
  }

  v5 = result[1];
  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v6 = result;
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      return v6;
    }
  }

  return result;
}

void sub_2711D4FA0(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = *MEMORY[0x277D85DE8];
  LOBYTE(v41) = 0;
  v55 = 0;
  if (*(a1 + 160) == 1)
  {
    v45 = 0;
    if (*(a1 + 40) == 1)
    {
      v41 = *a1;
      v42 = *(a1 + 2);
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      *a1 = 0;
      v43 = *(a1 + 12);
      v44 = *(a1 + 8);
      v45 = 1;
    }

    v46 = a1[3];
    v47 = *(a1 + 8);
    v48[0] = 0;
    v50 = 0;
    if (*(a1 + 104) == 1)
    {
      v4 = *(a1 + 12);
      if (v4)
      {
        if (v4 == (a1 + 72))
        {
          v49 = v48;
          v5 = a1;
          v6 = a2;
          (*(*v4 + 24))(v4, v48);
          a1 = v5;
          a2 = v6;
        }

        else
        {
          v49 = *(a1 + 12);
          *(a1 + 12) = 0;
        }
      }

      else
      {
        v49 = 0;
      }

      v50 = 1;
    }

    v51 = a1[7];
    v52 = *(a1 + 16);
    LOBYTE(v53) = 0;
    v54 = 0;
    if (*(a1 + 152) == 1)
    {
      v53 = *(a1 + 136);
      *(a1 + 17) = 0;
      *(a1 + 18) = 0;
      v54 = 1;
    }

    v55 = 1;
  }

  v38[0] = 0;
  v40 = 0;
  if (*(a2 + 32) == 1)
  {
    v7 = *(a2 + 24);
    if (v7)
    {
      if (v7 == a2)
      {
        v39 = v38;
        (*(*v7 + 24))(v7, v38);
      }

      else
      {
        v39 = *(a2 + 24);
        *(a2 + 24) = 0;
      }
    }

    else
    {
      v39 = 0;
    }

    v40 = 1;
  }

  sub_2711D4454(&v41, v38, &v27);
  if (v40 != 1)
  {
LABEL_25:
    if (v55 != 1)
    {
      goto LABEL_38;
    }

    goto LABEL_26;
  }

  if (v39 != v38)
  {
    if (v39)
    {
      (*(*v39 + 40))();
    }

    goto LABEL_25;
  }

  (*(*v39 + 32))(v39);
  if (v55 != 1)
  {
    goto LABEL_38;
  }

LABEL_26:
  if (v54 == 1)
  {
    v8 = *(&v53 + 1);
    if (*(&v53 + 1))
    {
      if (!atomic_fetch_add((*(&v53 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }

  if (v50 == 1)
  {
    if (v49 == v48)
    {
      (*(*v49 + 32))(v49);
      if (v45 != 1)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    if (v49)
    {
      (*(*v49 + 40))();
    }
  }

  if (v45 != 1)
  {
    goto LABEL_38;
  }

LABEL_35:
  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41);
  }

LABEL_38:
  if (v37)
  {
    v9 = v28;
    if (*(&v28 + 1))
    {
      atomic_fetch_add_explicit((*(&v28 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v11 = v29;
    v10 = v30;
    if (v30)
    {
      atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
    }

    *a3 = v9;
    *(a3 + 16) = v11;
    *(a3 + 24) = v10;
    *(a3 + 120) = 1;
    goto LABEL_54;
  }

  v16 = v27;
  LOBYTE(__p) = 0;
  v26 = 0;
  if (v36 != 1)
  {
    *a3 = v27;
    *(a3 + 16) = 0;
    *(a3 + 112) = 0;
    *(a3 + 120) = 0;
    goto LABEL_54;
  }

  sub_27112F6CC(&__p, &v28);
  v26 = 1;
  *a3 = v16;
  *(a3 + 16) = 0;
  *(a3 + 40) = 0;
  v12 = v19;
  if (v19 == 1)
  {
    *(a3 + 16) = __p;
    *(a3 + 32) = v18;
    v18 = 0;
    __p = 0uLL;
    *(a3 + 40) = 1;
    *(a3 + 48) = 0;
    v13 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v25 & 1) == 0)
    {
LABEL_47:
      *(a3 + 112) = 1;
      *(a3 + 120) = 0;
      if (!v12)
      {
        goto LABEL_54;
      }

      goto LABEL_52;
    }
  }

  else
  {
    *(a3 + 48) = 0;
    v13 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v25 & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  v14 = v22;
  *(v13 + 16) = v21;
  *v13 = v20;
  v20 = 0uLL;
  *(a3 + 72) = v14;
  *(a3 + 80) = v23;
  *(a3 + 96) = v24;
  v21 = 0;
  v23 = 0uLL;
  v24 = 0;
  *(a3 + 104) = 1;
  *(a3 + 112) = 1;
  *(a3 + 120) = 0;
  if (!v12)
  {
    goto LABEL_54;
  }

LABEL_52:
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p);
  }

LABEL_54:
  if (v37 == 1)
  {
    sub_2711D4E88(&v27);
  }

  else if (v36 == 1)
  {
    if (v35 == 1)
    {
      if (v34 < 0)
      {
        operator delete(v33);
      }

      if (v32 < 0)
      {
        operator delete(v31);
      }
    }

    if (v30 == 1 && SHIBYTE(v29) < 0)
    {
      operator delete(v28);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2711D5500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711D5564(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *v2;
  LOBYTE(v23) = 0;
  LOBYTE(v26) = 0;
  LOWORD(v27) = 0;
  BYTE2(v27) = 0;
  BYTE8(v27) = 0;
  LOBYTE(v28) = 0;
  v29 = 0;
  v31 = 0;
  LOBYTE(v32) = 0;
  LOBYTE(v33) = 0;
  v34 = 0;
  v35 = 0;
  v36 = 1;
  if (*(v3 + 160) == 1)
  {
    sub_271144164(__p, v3);
    LOBYTE(v48) = 0;
    v50 = 0;
    if (*(v3 + 152) != 1)
    {
LABEL_7:
      sub_271144164(&v51, __p);
      if (v50 == 1 && (v5 = v49) != 0 && !atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
        if (v45 != 1)
        {
          goto LABEL_17;
        }
      }

      else if (v45 != 1)
      {
        goto LABEL_17;
      }

      if (v44 == &v43)
      {
        (*(*v44 + 32))(v44);
        if (v40 != 1)
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }

      if (v44)
      {
        (*(*v44 + 40))();
      }

LABEL_17:
      if (v40 != 1)
      {
        goto LABEL_20;
      }

LABEL_18:
      if (v38 < 0)
      {
        operator delete(__p[0]);
      }

LABEL_20:
      if (v31 == 1)
      {
        if (v30 == &v29)
        {
          (*(*v30 + 32))(v30);
          if (v26 != 1)
          {
            goto LABEL_29;
          }

          goto LABEL_27;
        }

        if (v30)
        {
          (*(*v30 + 40))();
        }
      }

      if (v26 != 1)
      {
        goto LABEL_29;
      }

LABEL_27:
      if (v24 < 0)
      {
        operator delete(v23);
      }

LABEL_29:
      v6 = v2[1];
      if (*(v6 + 32))
      {
        v7 = *(v6 + 24);
        if (v7)
        {
          if (v7 != v6)
          {
            v8 = (*(*v7 + 16))(v7);
            v25 = v8;
            if (!v8)
            {
              goto LABEL_37;
            }

LABEL_39:
            if (v8 == &v23)
            {
              v39 = __p;
              (*(*v8 + 3))(v8, __p);
            }

            else
            {
              v39 = v8;
              v25 = 0;
            }

LABEL_42:
            v21 = 0;
            operator new();
          }

          v25 = &v23;
          (*(*v7 + 24))(v7, &v23);
          v8 = v25;
          if (v25)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v25 = 0;
        }

LABEL_37:
        v39 = 0;
        goto LABEL_42;
      }

      v20[0] = 0;
      v22 = 0;
      v9 = *v2;
      if (*(*v2 + 160) != 1)
      {
LABEL_45:
        sub_271144164(__p, &v51);
        v19 = 0;
        v17 = 0u;
        v18 = 0u;
        v14[0] = 0;
        v16 = 0;
        if (v22 != 1)
        {
          goto LABEL_57;
        }

        v11 = v21;
        if (v21)
        {
          if (v21 == v20)
          {
            v15 = v14;
            (*(*v21 + 24))();
            goto LABEL_56;
          }

          v11 = (*(*v21 + 16))();
        }

        v15 = v11;
LABEL_56:
        v16 = 1;
LABEL_57:
        sub_27138E844(&v13, __p, &v17, v14);
      }

      if (*(v9 + 152))
      {
        v10 = *(v9 + 136);
        goto LABEL_45;
      }

      sub_271144164(__p, &v51);
      v19 = 0;
      v17 = 0u;
      v18 = 0u;
      v14[0] = 0;
      v16 = 0;
      if (v22 != 1)
      {
LABEL_60:
        sub_27138EB80(&v13, __p, &v17, v14);
      }

      v12 = v21;
      if (v21)
      {
        if (v21 == v20)
        {
          v15 = v14;
          (*(*v21 + 24))();
          goto LABEL_59;
        }

        v12 = (*(*v21 + 16))();
      }

      v15 = v12;
LABEL_59:
      v16 = 1;
      goto LABEL_60;
    }

    v4 = *(v3 + 144);
    v48 = *(v3 + 136);
    v49 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    LOBYTE(__p[0]) = 0;
    v40 = 0;
    v41 = v27;
    v42 = v28;
    v43 = 0;
    v45 = 0;
    v46 = v32;
    v48 = 0;
    v49 = 0;
    v47 = v33;
    v34 = 0;
    v35 = 0;
  }

  v50 = 1;
  goto LABEL_7;
}

void sub_2711D6480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2711D6584(uint64_t result)
{
  if (*(result + 152) == 1)
  {
    v1 = *(result + 144);
    if (v1)
    {
      if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v2 = result;
        (v1->__on_zero_shared)(v1);
        std::__shared_weak_count::__release_weak(v1);
        result = v2;
      }
    }
  }

  if (*(result + 104) == 1)
  {
    v3 = *(result + 96);
    if (v3 == result + 72)
    {
      v4 = result;
      (*(*v3 + 32))(*(result + 96));
    }

    else
    {
      if (!v3)
      {
        goto LABEL_11;
      }

      v4 = result;
      (*(*v3 + 40))(*(result + 96));
    }

    result = v4;
  }

LABEL_11:
  if (*(result + 40) == 1 && *(result + 23) < 0)
  {
    v5 = result;
    operator delete(*result);
    return v5;
  }

  return result;
}

uint64_t sub_2711D66B0(uint64_t result)
{
  if (*(result + 32) == 1)
  {
    v1 = *(result + 24);
    if (v1 == result)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 24));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 24));
    }

    return v2;
  }

  return result;
}

uint64_t sub_2711D6748(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void *sub_2711D67D4(void *a1)
{
  *a1 = &unk_288108968;
  v2 = a1 + 1;
  v3 = a1[4];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

void sub_2711D6880(void *a1)
{
  *a1 = &unk_288108968;
  v1 = a1 + 1;
  v2 = a1[4];
  if (v2 == v1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2711D6A28(uint64_t result, void *a2)
{
  *a2 = &unk_288108968;
  v3 = a2 + 1;
  v4 = *(result + 32);
  if (v4)
  {
    if (v4 == result + 8)
    {
      a2[4] = v3;
      v5 = *(**(result + 32) + 24);

      return v5();
    }

    else
    {
      result = (*(*v4 + 16))(*(result + 32), v3);
      a2[4] = result;
    }
  }

  else
  {
    a2[4] = 0;
  }

  return result;
}

uint64_t sub_2711D6AF8(uint64_t a1)
{
  v1 = a1 + 8;
  result = *(a1 + 32);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void sub_2711D6B58(char *__p)
{
  v2 = __p + 8;
  v3 = *(__p + 4);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = __p;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = __p;
  }

  operator delete(v4);
}

void sub_2711D6C08(uint64_t a1, unsigned int *a2)
{
  sub_2711D40C8(a2, v4);
  v3 = *(a1 + 32);
  if (!v3)
  {
    sub_27112AFFC();
  }

  (*(*v3 + 48))(v3, v4);
  if (v13 == 1)
  {
    if (v12 != 1)
    {
      goto LABEL_6;
    }

    if (v11 < 0)
    {
      operator delete(v10);
      if ((v9 & 0x80000000) == 0)
      {
LABEL_6:
        if (v7 != 1)
        {
          return;
        }

LABEL_7:
        if (v6 < 0)
        {
          operator delete(__p);
        }

        return;
      }
    }

    else if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    operator delete(v8);
    if (v7 != 1)
    {
      return;
    }

    goto LABEL_7;
  }
}

void sub_2711D6CE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D71C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2711D6CF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4cv3d2vl13visual_logger18ForwardClientErrorINSt3__18functionIFvRKNS_3esn5ErrorEEEEEENS3_8optionalISA_EERNSB_IT_EEEUlS8_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4cv3d2vl13visual_logger18ForwardClientErrorINSt3__18functionIFvRKNS_3esn5ErrorEEEEEENS3_8optionalISA_EERNSB_IT_EEEUlS8_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d2vl13visual_logger18ForwardClientErrorINSt3__18functionIFvRKNS_3esn5ErrorEEEEEENS3_8optionalISA_EERNSB_IT_EEEUlS8_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d2vl13visual_logger18ForwardClientErrorINSt3__18functionIFvRKNS_3esn5ErrorEEEEEENS3_8optionalISA_EERNSB_IT_EEEUlS8_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_2711D6D8C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106118;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2711D6E0C(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x2743BF050);
}

void *sub_2711D6E44(void *result)
{
  if (*(result + 128) == 1)
  {
    if (*(result + 120) == 1)
    {
      return sub_2711D4E88(result);
    }

    else if (*(result + 112) == 1)
    {
      if (*(result + 104) == 1)
      {
        if (*(result + 103) < 0)
        {
          v1 = result;
          operator delete(result[10]);
          result = v1;
        }

        if (*(result + 71) < 0)
        {
          v2 = result;
          operator delete(result[6]);
          result = v2;
        }
      }

      if (*(result + 40) == 1 && *(result + 39) < 0)
      {
        v3 = result;
        operator delete(result[2]);
        return v3;
      }
    }
  }

  return result;
}

size_t sub_2711D6F00(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28812E430[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_2711D7220(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711D727C(char *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = strlen(a1);
    sub_2714FB29C(a1, v4, v14);
    *a2 = 0;
    *(a2 + 24) = 0;
    if (v16 == 1)
    {
      *a2 = *v14;
      *(a2 + 16) = v15;
      v14[1] = 0;
      v15 = 0;
      v14[0] = 0;
      *(a2 + 24) = 1;
    }

    v5 = 0;
    *(a2 + 32) = 0;
    *(a2 + 80) = 0;
    if (v19 == 1)
    {
      _X0 = 0;
      _X1 = 0;
      *(a2 + 48) = v18;
      *(a2 + 32) = *__p;
      __p[1] = 0;
      v18 = 0;
      __p[0] = 0;
      __asm { CASPAL          X0, X1, X0, X1, [X8] }

      *(a2 + 64) = _X0;
      *(a2 + 72) = 0;
      *(a2 + 80) = 1;
      v5 = v19;
    }

    *(a2 + 96) = 0;
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    *(a2 + 144) = 0;
    if ((v5 & 1) != 0 && SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }

    if (v16 == 1 && SHIBYTE(v15) < 0)
    {
      operator delete(v14[0]);
    }
  }

  else
  {
    *(a2 + 128) = 0u;
    *(a2 + 144) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  v13 = *MEMORY[0x277D85DE8];
}

const char *sub_2711D73DC@<X0>(const char *result@<X0>, uint64_t a2@<X8>)
{
  v28[2] = *MEMORY[0x277D85DE8];
  if (!result)
  {
    *(a2 + 128) = 0u;
    *(a2 + 144) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    goto LABEL_77;
  }

  v3 = result;
  result = strlen(result);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v4 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  v23 = result;
  if (result)
  {
    result = memcpy(&__dst, v3, result);
  }

  v22[v4 - 8] = 0;
  *&v27[7] = *&v22[7];
  v5 = __dst;
  *v27 = *v22;
  v6 = v23;
  *&v25[7] = *&v27[7];
  v24 = __dst;
  *v25 = *v22;
  v26 = v23;
  if (v23 >= 0)
  {
    v7 = &v24;
  }

  else
  {
    v7 = __dst;
  }

  v8 = *v25;
  if (v23 >= 0)
  {
    v8 = v23;
  }

  if (!v8)
  {
    goto LABEL_76;
  }

  v9 = v7;
  if (v8 < 8)
  {
LABEL_80:
    v20 = v7 + v8;
    do
    {
      if (*v9 == 35)
      {
        *v9 = 95;
      }

      ++v9;
    }

    while (v9 != v20);
    goto LABEL_75;
  }

  if (v8 < 0x10)
  {
    v10 = 0;
    goto LABEL_18;
  }

  v10 = v8 & 0xFFFFFFFFFFFFFFF0;
  v14 = v7 + 7;
  v15.i64[0] = 0x2323232323232323;
  v15.i64[1] = 0x2323232323232323;
  v16 = v8 & 0xFFFFFFFFFFFFFFF0;
  do
  {
    v17 = vceqq_s8(*(v14 - 7), v15);
    if (v17.i8[0])
    {
      *(v14 - 7) = 95;
      if ((v17.i8[1] & 1) == 0)
      {
LABEL_43:
        if ((v17.i8[2] & 1) == 0)
        {
          goto LABEL_44;
        }

        goto LABEL_60;
      }
    }

    else if ((v17.i8[1] & 1) == 0)
    {
      goto LABEL_43;
    }

    *(v14 - 6) = 95;
    if ((v17.i8[2] & 1) == 0)
    {
LABEL_44:
      if ((v17.i8[3] & 1) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_61;
    }

LABEL_60:
    *(v14 - 5) = 95;
    if ((v17.i8[3] & 1) == 0)
    {
LABEL_45:
      if ((v17.i8[4] & 1) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_62;
    }

LABEL_61:
    *(v14 - 4) = 95;
    if ((v17.i8[4] & 1) == 0)
    {
LABEL_46:
      if ((v17.i8[5] & 1) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_63;
    }

LABEL_62:
    *(v14 - 3) = 95;
    if ((v17.i8[5] & 1) == 0)
    {
LABEL_47:
      if ((v17.i8[6] & 1) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_64;
    }

LABEL_63:
    *(v14 - 2) = 95;
    if ((v17.i8[6] & 1) == 0)
    {
LABEL_48:
      if ((v17.i8[7] & 1) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_65;
    }

LABEL_64:
    *(v14 - 1) = 95;
    if ((v17.i8[7] & 1) == 0)
    {
LABEL_49:
      if ((v17.i8[8] & 1) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_66;
    }

LABEL_65:
    *v14 = 95;
    if ((v17.i8[8] & 1) == 0)
    {
LABEL_50:
      if ((v17.i8[9] & 1) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_67;
    }

LABEL_66:
    v14[1] = 95;
    if ((v17.i8[9] & 1) == 0)
    {
LABEL_51:
      if ((v17.i8[10] & 1) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_68;
    }

LABEL_67:
    v14[2] = 95;
    if ((v17.i8[10] & 1) == 0)
    {
LABEL_52:
      if ((v17.i8[11] & 1) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_69;
    }

LABEL_68:
    v14[3] = 95;
    if ((v17.i8[11] & 1) == 0)
    {
LABEL_53:
      if ((v17.i8[12] & 1) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_70;
    }

LABEL_69:
    v14[4] = 95;
    if ((v17.i8[12] & 1) == 0)
    {
LABEL_54:
      if ((v17.i8[13] & 1) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_71;
    }

LABEL_70:
    v14[5] = 95;
    if ((v17.i8[13] & 1) == 0)
    {
LABEL_55:
      if (v17.i8[14])
      {
        goto LABEL_72;
      }

      goto LABEL_56;
    }

LABEL_71:
    v14[6] = 95;
    if (v17.i8[14])
    {
LABEL_72:
      v14[7] = 95;
      if ((v17.i8[15] & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_73;
    }

LABEL_56:
    if ((v17.i8[15] & 1) == 0)
    {
      goto LABEL_40;
    }

LABEL_73:
    v14[8] = 95;
LABEL_40:
    v14 += 16;
    v16 -= 16;
  }

  while (v16);
  if (v8 == v10)
  {
    goto LABEL_75;
  }

  if ((v8 & 8) == 0)
  {
    v9 = v7 + v10;
    goto LABEL_80;
  }

LABEL_18:
  v9 = v7 + (v8 & 0xFFFFFFFFFFFFFFF8);
  v11 = v10 - (v8 & 0xFFFFFFFFFFFFFFF8);
  v12 = v7 + v10 + 3;
  while (2)
  {
    v13 = vceq_s8(*(v12 - 3), 0x2323232323232323);
    if (v13.i8[0])
    {
      *(v12 - 3) = 95;
      if (v13.i8[1])
      {
        goto LABEL_30;
      }

LABEL_22:
      if ((v13.i8[2] & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_31:
      *(v12 - 1) = 95;
      if (v13.i8[3])
      {
        goto LABEL_32;
      }

LABEL_24:
      if ((v13.i8[4] & 1) == 0)
      {
        goto LABEL_25;
      }

LABEL_33:
      v12[1] = 95;
      if (v13.i8[5])
      {
        goto LABEL_34;
      }

LABEL_26:
      if ((v13.i8[6] & 1) == 0)
      {
        goto LABEL_27;
      }

LABEL_35:
      v12[3] = 95;
      if (v13.i8[7])
      {
LABEL_36:
        v12[4] = 95;
      }
    }

    else
    {
      if ((v13.i8[1] & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_30:
      *(v12 - 2) = 95;
      if (v13.i8[2])
      {
        goto LABEL_31;
      }

LABEL_23:
      if ((v13.i8[3] & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_32:
      *v12 = 95;
      if (v13.i8[4])
      {
        goto LABEL_33;
      }

LABEL_25:
      if ((v13.i8[5] & 1) == 0)
      {
        goto LABEL_26;
      }

LABEL_34:
      v12[2] = 95;
      if (v13.i8[6])
      {
        goto LABEL_35;
      }

LABEL_27:
      if (v13.i8[7])
      {
        goto LABEL_36;
      }
    }

    v12 += 8;
    v11 += 8;
    if (v11)
    {
      continue;
    }

    break;
  }

  if (v8 != (v8 & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_80;
  }

LABEL_75:
  v5 = v24;
  v6 = v26;
LABEL_76:
  v28[0] = *v25;
  *(v28 + 7) = *&v25[7];
  v18 = v28[0];
  *a2 = v5;
  *(a2 + 8) = v18;
  *(a2 + 15) = *(v28 + 7);
  *(a2 + 23) = v6;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 80) = 0;
  *(a2 + 96) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 144) = 0;
LABEL_77:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2711D7810(char *__s@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v44[2] = *MEMORY[0x277D85DE8];
  if (__s)
  {
    v9 = strlen(__s);
    if (v9 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v10 = v9;
    if (v9 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v36) = v9;
    if (v9)
    {
      memcpy(&__dst, __s, v9);
    }

    *(&__dst + v10) = 0;
    v11 = __dst;
    v42[0] = v36;
    *(v42 + 7) = *(&v36 + 7);
    v5 = HIBYTE(v36);
    v36 = 0uLL;
    __dst = 0;
    if (a2)
    {
LABEL_14:
      v16 = strlen(a2);
      if (v16 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_271120DA8();
      }

      v17 = v16;
      if (v16 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v34) = v16;
      if (v16)
      {
        memcpy(&__p, a2, v16);
      }

      *(&__p + v17) = 0;
      v12 = __p;
      v40[0] = v34;
      *(v40 + 7) = *(&v34 + 7);
      v3 = HIBYTE(v34);
      v34 = 0uLL;
      __p = 0;
      v41[0] = v40[0];
      *(v41 + 7) = *(v40 + 7);
      v40[0] = 0;
      *(v40 + 7) = 0;
      if (__s)
      {
        goto LABEL_21;
      }

LABEL_8:
      v13 = 0;
      if (a2)
      {
        goto LABEL_89;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
    if (a2)
    {
      goto LABEL_14;
    }
  }

  v12 = 0;
  if (!__s)
  {
    goto LABEL_8;
  }

LABEL_21:
  *&v38[7] = *(v42 + 7);
  v37 = v11;
  *v38 = v42[0];
  v39 = v5;
  v42[0] = 0;
  *(v42 + 7) = 0;
  if ((v5 & 0x80u) == 0)
  {
    v18 = &v37;
  }

  else
  {
    v18 = v11;
  }

  v19 = *v38;
  if ((v5 & 0x80u) == 0)
  {
    v19 = v5;
  }

  if (!v19)
  {
    goto LABEL_88;
  }

  v20 = v18;
  if (v19 < 8)
  {
LABEL_111:
    v32 = v18 + v19;
    do
    {
      if (*v20 == 35)
      {
        *v20 = 95;
      }

      ++v20;
    }

    while (v20 != v32);
    goto LABEL_87;
  }

  if (v19 < 0x10)
  {
    v21 = 0;
    goto LABEL_30;
  }

  v21 = v19 & 0xFFFFFFFFFFFFFFF0;
  v25 = v18 + 7;
  v26.i64[0] = 0x2323232323232323;
  v26.i64[1] = 0x2323232323232323;
  v27 = v19 & 0xFFFFFFFFFFFFFFF0;
  do
  {
    v28 = vceqq_s8(*(v25 - 7), v26);
    if (v28.i8[0])
    {
      *(v25 - 7) = 95;
      if ((v28.i8[1] & 1) == 0)
      {
LABEL_55:
        if ((v28.i8[2] & 1) == 0)
        {
          goto LABEL_56;
        }

        goto LABEL_72;
      }
    }

    else if ((v28.i8[1] & 1) == 0)
    {
      goto LABEL_55;
    }

    *(v25 - 6) = 95;
    if ((v28.i8[2] & 1) == 0)
    {
LABEL_56:
      if ((v28.i8[3] & 1) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_73;
    }

LABEL_72:
    *(v25 - 5) = 95;
    if ((v28.i8[3] & 1) == 0)
    {
LABEL_57:
      if ((v28.i8[4] & 1) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_74;
    }

LABEL_73:
    *(v25 - 4) = 95;
    if ((v28.i8[4] & 1) == 0)
    {
LABEL_58:
      if ((v28.i8[5] & 1) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_75;
    }

LABEL_74:
    *(v25 - 3) = 95;
    if ((v28.i8[5] & 1) == 0)
    {
LABEL_59:
      if ((v28.i8[6] & 1) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_76;
    }

LABEL_75:
    *(v25 - 2) = 95;
    if ((v28.i8[6] & 1) == 0)
    {
LABEL_60:
      if ((v28.i8[7] & 1) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_77;
    }

LABEL_76:
    *(v25 - 1) = 95;
    if ((v28.i8[7] & 1) == 0)
    {
LABEL_61:
      if ((v28.i8[8] & 1) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_78;
    }

LABEL_77:
    *v25 = 95;
    if ((v28.i8[8] & 1) == 0)
    {
LABEL_62:
      if ((v28.i8[9] & 1) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_79;
    }

LABEL_78:
    v25[1] = 95;
    if ((v28.i8[9] & 1) == 0)
    {
LABEL_63:
      if ((v28.i8[10] & 1) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_80;
    }

LABEL_79:
    v25[2] = 95;
    if ((v28.i8[10] & 1) == 0)
    {
LABEL_64:
      if ((v28.i8[11] & 1) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_81;
    }

LABEL_80:
    v25[3] = 95;
    if ((v28.i8[11] & 1) == 0)
    {
LABEL_65:
      if ((v28.i8[12] & 1) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_82;
    }

LABEL_81:
    v25[4] = 95;
    if ((v28.i8[12] & 1) == 0)
    {
LABEL_66:
      if ((v28.i8[13] & 1) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_83;
    }

LABEL_82:
    v25[5] = 95;
    if ((v28.i8[13] & 1) == 0)
    {
LABEL_67:
      if (v28.i8[14])
      {
        goto LABEL_84;
      }

      goto LABEL_68;
    }

LABEL_83:
    v25[6] = 95;
    if (v28.i8[14])
    {
LABEL_84:
      v25[7] = 95;
      if ((v28.i8[15] & 1) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_85;
    }

LABEL_68:
    if ((v28.i8[15] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_85:
    v25[8] = 95;
LABEL_52:
    v25 += 16;
    v27 -= 16;
  }

  while (v27);
  if (v19 == v21)
  {
    goto LABEL_87;
  }

  if ((v19 & 8) == 0)
  {
    v20 = v18 + v21;
    goto LABEL_111;
  }

LABEL_30:
  v20 = v18 + (v19 & 0xFFFFFFFFFFFFFFF8);
  v22 = v21 - (v19 & 0xFFFFFFFFFFFFFFF8);
  v23 = v18 + v21 + 3;
  while (2)
  {
    v24 = vceq_s8(*(v23 - 3), 0x2323232323232323);
    if (v24.i8[0])
    {
      *(v23 - 3) = 95;
      if (v24.i8[1])
      {
        goto LABEL_42;
      }

LABEL_34:
      if ((v24.i8[2] & 1) == 0)
      {
        goto LABEL_35;
      }

LABEL_43:
      *(v23 - 1) = 95;
      if (v24.i8[3])
      {
        goto LABEL_44;
      }

LABEL_36:
      if ((v24.i8[4] & 1) == 0)
      {
        goto LABEL_37;
      }

LABEL_45:
      v23[1] = 95;
      if (v24.i8[5])
      {
        goto LABEL_46;
      }

LABEL_38:
      if ((v24.i8[6] & 1) == 0)
      {
        goto LABEL_39;
      }

LABEL_47:
      v23[3] = 95;
      if (v24.i8[7])
      {
LABEL_48:
        v23[4] = 95;
      }
    }

    else
    {
      if ((v24.i8[1] & 1) == 0)
      {
        goto LABEL_34;
      }

LABEL_42:
      *(v23 - 2) = 95;
      if (v24.i8[2])
      {
        goto LABEL_43;
      }

LABEL_35:
      if ((v24.i8[3] & 1) == 0)
      {
        goto LABEL_36;
      }

LABEL_44:
      *v23 = 95;
      if (v24.i8[4])
      {
        goto LABEL_45;
      }

LABEL_37:
      if ((v24.i8[5] & 1) == 0)
      {
        goto LABEL_38;
      }

LABEL_46:
      v23[2] = 95;
      if (v24.i8[6])
      {
        goto LABEL_47;
      }

LABEL_39:
      if (v24.i8[7])
      {
        goto LABEL_48;
      }
    }

    v23 += 8;
    v22 += 8;
    if (v22)
    {
      continue;
    }

    break;
  }

  if (v19 != (v19 & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_111;
  }

LABEL_87:
  v11 = v37;
  v5 = v39;
LABEL_88:
  v13 = v11;
  v44[0] = *v38;
  *(v44 + 7) = *&v38[7];
  v4 = v5;
  v11 = 0;
  v5 = 0;
  if (!a2)
  {
LABEL_9:
    v14 = v12;
    v15 = v3;
    v12 = 0;
    *a3 = 0;
    *(a3 + 24) = 0;
    if (__s)
    {
      goto LABEL_90;
    }

    goto LABEL_91;
  }

LABEL_89:
  v14 = 0;
  v15 = 0;
  v43[0] = v41[0];
  *(v43 + 7) = *(v41 + 7);
  v41[0] = 0;
  *(v41 + 7) = 0;
  *a3 = 0;
  *(a3 + 24) = 0;
  if (__s)
  {
LABEL_90:
    v29 = v44[0];
    *a3 = v13;
    *(a3 + 8) = v29;
    *(a3 + 15) = *(v44 + 7);
    *(a3 + 23) = v4;
    v44[0] = 0;
    *(v44 + 7) = 0;
    *(a3 + 24) = 1;
    v4 = 0;
    v13 = 0;
  }

LABEL_91:
  *(a3 + 32) = 0;
  *(a3 + 80) = 0;
  if (a2)
  {
    v30 = v43[0];
    *(a3 + 32) = v12;
    *(a3 + 40) = v30;
    *(a3 + 47) = *(v43 + 7);
    *(a3 + 55) = v3;
    v43[0] = 0;
    *(v43 + 7) = 0;
    *(a3 + 64) = 0;
    *(a3 + 72) = 0;
    *(a3 + 80) = 1;
  }

  *(a3 + 96) = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
  *(a3 + 144) = 0;
  if (__s && (v4 & 0x80) != 0)
  {
    operator delete(v13);
  }

  if (!a2)
  {
    goto LABEL_99;
  }

  if (v15 < 0)
  {
    operator delete(v14);
    if (SHIBYTE(v34) < 0)
    {
      goto LABEL_104;
    }

LABEL_99:
    if (!__s)
    {
      goto LABEL_108;
    }

LABEL_100:
    if ((v5 & 0x80) != 0)
    {
      operator delete(v11);
      if ((SHIBYTE(v36) & 0x80000000) == 0)
      {
        goto LABEL_108;
      }
    }

    else if ((SHIBYTE(v36) & 0x80000000) == 0)
    {
      goto LABEL_108;
    }

    operator delete(__dst);
    goto LABEL_108;
  }

  if ((SHIBYTE(v34) & 0x80000000) == 0)
  {
    goto LABEL_99;
  }

LABEL_104:
  operator delete(__p);
  if (__s)
  {
    goto LABEL_100;
  }

LABEL_108:
  v31 = *MEMORY[0x277D85DE8];
}

void sub_2711D7E2C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if (v3 < 0)
    {
      operator delete(v2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_2711D7E48(char *__s@<X0>, uint64_t __val@<X1>, uint64_t a3@<X8>)
{
  v37[2] = *MEMORY[0x277D85DE8];
  if (__s)
  {
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

    HIBYTE(v29) = v7;
    if (v7)
    {
      memcpy(&__dst, __s, v7);
    }

    *(&__dst + v8) = 0;
    v9 = __dst;
    v35[0] = v29;
    *(v35 + 7) = *(&v29 + 7);
    v3 = HIBYTE(v29);
    v29 = 0uLL;
    __dst = 0;
  }

  else
  {
    v9 = 0;
  }

  v31 = 0;
  std::to_string(&v32, __val);
  v30 = v32;
  *&v33[7] = *&v32.__r_.__value_.__r.__words[1] >> 56;
  v10 = v32.__r_.__value_.__r.__words[0];
  v33[7] = v32.__r_.__value_.__s.__data_[15];
  v11 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  *(v34 + 7) = *&v33[7];
  v34[0] = v32.__r_.__value_.__l.__size_;
  memset(v33, 0, sizeof(v33));
  v12 = (v3 & 0x80u) != 0;
  if (!__s)
  {
    v36[0] = v34[0];
    *(v36 + 7) = *(v34 + 7);
    memset(v34, 0, 15);
    *a3 = 0;
    *(a3 + 24) = 0;
    goto LABEL_80;
  }

  *(&v30.__r_.__value_.__r.__words[1] + 7) = *(v35 + 7);
  v30.__r_.__value_.__r.__words[0] = v9;
  v30.__r_.__value_.__l.__size_ = v35[0];
  *(&v30.__r_.__value_.__s + 23) = v3;
  v35[0] = 0;
  *(v35 + 7) = 0;
  if ((v3 & 0x80u) == 0)
  {
    v13 = &v30;
  }

  else
  {
    v13 = v9;
  }

  size = v30.__r_.__value_.__l.__size_;
  if ((v3 & 0x80u) == 0)
  {
    size = v3;
  }

  if (!size)
  {
    goto LABEL_79;
  }

  v15 = v13;
  if (size < 8)
  {
LABEL_87:
    v27 = (v13 + size);
    do
    {
      if (v15->__r_.__value_.__s.__data_[0] == 35)
      {
        v15->__r_.__value_.__s.__data_[0] = 95;
      }

      v15 = (v15 + 1);
    }

    while (v15 != v27);
    goto LABEL_78;
  }

  if (size < 0x10)
  {
    v16 = 0;
    goto LABEL_20;
  }

  v16 = size & 0xFFFFFFFFFFFFFFF0;
  v20 = &v13->__r_.__value_.__s.__data_[7];
  v21.i64[0] = 0x2323232323232323;
  v21.i64[1] = 0x2323232323232323;
  v22 = size & 0xFFFFFFFFFFFFFFF0;
  do
  {
    v23 = vceqq_s8(*(v20 - 7), v21);
    if (v23.i8[0])
    {
      *(v20 - 7) = 95;
      if ((v23.i8[1] & 1) == 0)
      {
LABEL_46:
        if ((v23.i8[2] & 1) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_63;
      }
    }

    else if ((v23.i8[1] & 1) == 0)
    {
      goto LABEL_46;
    }

    *(v20 - 6) = 95;
    if ((v23.i8[2] & 1) == 0)
    {
LABEL_47:
      if ((v23.i8[3] & 1) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_64;
    }

LABEL_63:
    *(v20 - 5) = 95;
    if ((v23.i8[3] & 1) == 0)
    {
LABEL_48:
      if ((v23.i8[4] & 1) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_65;
    }

LABEL_64:
    *(v20 - 4) = 95;
    if ((v23.i8[4] & 1) == 0)
    {
LABEL_49:
      if ((v23.i8[5] & 1) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_66;
    }

LABEL_65:
    *(v20 - 3) = 95;
    if ((v23.i8[5] & 1) == 0)
    {
LABEL_50:
      if ((v23.i8[6] & 1) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_67;
    }

LABEL_66:
    *(v20 - 2) = 95;
    if ((v23.i8[6] & 1) == 0)
    {
LABEL_51:
      if ((v23.i8[7] & 1) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_68;
    }

LABEL_67:
    *(v20 - 1) = 95;
    if ((v23.i8[7] & 1) == 0)
    {
LABEL_52:
      if ((v23.i8[8] & 1) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_69;
    }

LABEL_68:
    *v20 = 95;
    if ((v23.i8[8] & 1) == 0)
    {
LABEL_53:
      if ((v23.i8[9] & 1) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_70;
    }

LABEL_69:
    v20[1] = 95;
    if ((v23.i8[9] & 1) == 0)
    {
LABEL_54:
      if ((v23.i8[10] & 1) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_71;
    }

LABEL_70:
    v20[2] = 95;
    if ((v23.i8[10] & 1) == 0)
    {
LABEL_55:
      if ((v23.i8[11] & 1) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_72;
    }

LABEL_71:
    v20[3] = 95;
    if ((v23.i8[11] & 1) == 0)
    {
LABEL_56:
      if ((v23.i8[12] & 1) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_73;
    }

LABEL_72:
    v20[4] = 95;
    if ((v23.i8[12] & 1) == 0)
    {
LABEL_57:
      if ((v23.i8[13] & 1) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_74;
    }

LABEL_73:
    v20[5] = 95;
    if ((v23.i8[13] & 1) == 0)
    {
LABEL_58:
      if (v23.i8[14])
      {
        goto LABEL_75;
      }

      goto LABEL_59;
    }

LABEL_74:
    v20[6] = 95;
    if (v23.i8[14])
    {
LABEL_75:
      v20[7] = 95;
      if ((v23.i8[15] & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_76;
    }

LABEL_59:
    if ((v23.i8[15] & 1) == 0)
    {
      goto LABEL_43;
    }

LABEL_76:
    v20[8] = 95;
LABEL_43:
    v20 += 16;
    v22 -= 16;
  }

  while (v22);
  if (size == v16)
  {
    goto LABEL_78;
  }

  if ((size & 8) == 0)
  {
    v15 = (v13 + v16);
    goto LABEL_87;
  }

LABEL_20:
  v15 = (v13 + (size & 0xFFFFFFFFFFFFFFF8));
  v17 = v16 - (size & 0xFFFFFFFFFFFFFFF8);
  v18 = &v13->__r_.__value_.__s.__data_[v16 + 3];
  while (2)
  {
    v19 = vceq_s8(*(v18 - 3), 0x2323232323232323);
    if (v19.i8[0])
    {
      *(v18 - 3) = 95;
      if (v19.i8[1])
      {
        goto LABEL_32;
      }

LABEL_24:
      if ((v19.i8[2] & 1) == 0)
      {
        goto LABEL_25;
      }

LABEL_33:
      *(v18 - 1) = 95;
      if (v19.i8[3])
      {
        goto LABEL_34;
      }

LABEL_26:
      if ((v19.i8[4] & 1) == 0)
      {
        goto LABEL_27;
      }

LABEL_35:
      v18[1] = 95;
      if (v19.i8[5])
      {
        goto LABEL_36;
      }

LABEL_28:
      if ((v19.i8[6] & 1) == 0)
      {
        goto LABEL_29;
      }

LABEL_37:
      v18[3] = 95;
      if (v19.i8[7])
      {
LABEL_38:
        v18[4] = 95;
      }
    }

    else
    {
      if ((v19.i8[1] & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_32:
      *(v18 - 2) = 95;
      if (v19.i8[2])
      {
        goto LABEL_33;
      }

LABEL_25:
      if ((v19.i8[3] & 1) == 0)
      {
        goto LABEL_26;
      }

LABEL_34:
      *v18 = 95;
      if (v19.i8[4])
      {
        goto LABEL_35;
      }

LABEL_27:
      if ((v19.i8[5] & 1) == 0)
      {
        goto LABEL_28;
      }

LABEL_36:
      v18[2] = 95;
      if (v19.i8[6])
      {
        goto LABEL_37;
      }

LABEL_29:
      if (v19.i8[7])
      {
        goto LABEL_38;
      }
    }

    v18 += 8;
    v17 += 8;
    if (v17)
    {
      continue;
    }

    break;
  }

  if (size != (size & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_87;
  }

LABEL_78:
  v9 = v30.__r_.__value_.__r.__words[0];
  v3 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
LABEL_79:
  v12 = 0;
  *(v37 + 7) = *(&v30.__r_.__value_.__r.__words[1] + 7);
  HIBYTE(v37[0]) = v30.__r_.__value_.__s.__data_[15];
  v36[0] = v34[0];
  *(v36 + 7) = *(v34 + 7);
  memset(v34, 0, 15);
  v24 = v30.__r_.__value_.__l.__size_;
  *a3 = v9;
  *(a3 + 8) = v24;
  *(a3 + 15) = *(v37 + 7);
  *(a3 + 23) = v3;
  *(v37 + 7) = 0;
  v37[0] = 0;
  *(a3 + 24) = 1;
  v9 = 0;
LABEL_80:
  v25 = v36[0];
  *(a3 + 32) = v10;
  *(a3 + 40) = v25;
  *(a3 + 47) = *(v36 + 7);
  *(a3 + 55) = v11;
  v36[0] = 0;
  *(v36 + 7) = 0;
  *(a3 + 64) = __val;
  *(a3 + 72) = 1;
  *(a3 + 80) = 1;
  *(a3 + 96) = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
  *(a3 + 144) = 0;
  if (__s)
  {
    if (v12)
    {
      operator delete(v9);
      if (SHIBYTE(v29) < 0)
      {
        operator delete(__dst);
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

void sub_2711D836C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  if (v5)
  {
    if (v7 < 0)
    {
      operator delete(v6);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2711D8390(uint64_t a1)
{
  if ((*(a1 + 120) & 1) == 0)
  {
    sub_2711DCA98();
  }

  if (*(a1 + 119) < 0)
  {
    return *(a1 + 96);
  }

  else
  {
    return a1 + 96;
  }
}

void sub_2711D84A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711D84BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711D84D0(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    goto LABEL_14;
  }

  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      if (*(a2 + 8) && *a2)
      {
        goto LABEL_35;
      }
    }

    else if (*(a2 + 23))
    {
      goto LABEL_35;
    }
  }

  if (*(a2 + 80) != 1)
  {
    goto LABEL_14;
  }

  v4 = *(a2 + 55);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 40);
  }

  if (!v4 || v5 < 0 && !*(a2 + 32))
  {
LABEL_14:
    if (*(a1 + 56) == 1)
    {
      if (*(a1 + 55) < 0)
      {
        operator delete(*(a1 + 32));
      }

      *(a1 + 56) = 0;
    }

    if (*(a1 + 176) == 1)
    {
      if ((*(a1 + 151) & 0x80000000) == 0)
      {
LABEL_22:
        *(a1 + 176) = 0;
        goto LABEL_23;
      }

      v6 = *(a1 + 128);
LABEL_21:
      operator delete(v6);
      goto LABEL_22;
    }

    goto LABEL_23;
  }

LABEL_35:
  sub_2711DBEEC(a1 + 32, a2);
  v8 = (a2 + 32);
  v9 = (a1 + 128);
  if (*(a1 + 176) == *(a2 + 80))
  {
    if (*(a1 + 176))
    {
      if (v9 != v8)
      {
        v10 = *(a2 + 55);
        if (*(a1 + 151) < 0)
        {
          v20 = *(a2 + 40);
          if (v10 >= 0)
          {
            v21 = (a2 + 32);
          }

          else
          {
            v21 = *(a2 + 32);
          }

          if (v10 >= 0)
          {
            v22 = *(a2 + 55);
          }

          else
          {
            v22 = *(a2 + 40);
          }

          sub_2711289F8(v9, v21, v22);
        }

        else if ((*(a2 + 55) & 0x80) != 0)
        {
          sub_271128928(v9, *(a2 + 32), *(a2 + 40));
        }

        else
        {
          v11 = *v8;
          *(a1 + 144) = *(a2 + 48);
          *v9 = v11;
        }
      }

      _X0 = 0;
      _X1 = 0;
      __asm { CASPAL          X0, X1, X0, X1, [X8] }

      v26 = *(a1 + 160);
      v27 = *(a1 + 168);
      do
      {
        _X5 = *(a1 + 168);
        __asm { CASPAL          X4, X5, X0, X1, [X8] }

        _ZF = _X4 == v26;
        v26 = _X4;
      }

      while (!_ZF);
    }
  }

  else
  {
    if (*(a1 + 176))
    {
      if ((*(a1 + 151) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

      v6 = *v9;
      goto LABEL_21;
    }

    if (*(a2 + 55) < 0)
    {
      sub_271127178(v9, *(a2 + 32), *(a2 + 40));
    }

    else
    {
      v12 = *v8;
      *(a1 + 144) = *(a2 + 48);
      *v9 = v12;
    }

    _X0 = 0;
    _X1 = 0;
    __asm { CASPAL          X0, X1, X0, X1, [X8] }

    *(a1 + 160) = _X0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 1;
  }

LABEL_23:
  if (*(a1 + 384) == 1)
  {
    if (*(a1 + 344) == 1 && *(a1 + 343) < 0)
    {
      operator delete(*(a1 + 320));
    }

    if (*(a1 + 304) == 1 && *(a1 + 279) < 0)
    {
      operator delete(*(a1 + 256));
    }

    if (*(a1 + 248) == 1 && *(a1 + 247) < 0)
    {
      operator delete(*(a1 + 224));
    }

    *(a1 + 384) = 0;
  }
}

void sub_2711D8728(uint64_t a1, char *__s)
{
  v33 = *MEMORY[0x277D85DE8];
  if (__s && (v4 = strlen(__s)) != 0)
  {
    sub_2714FB29C(__s, v4, v14);
    LOBYTE(v20[0]) = 0;
    v22 = 0;
    if (v16 == 1)
    {
      *v20 = *v14;
      v21 = v15;
      v14[1] = 0;
      v15 = 0;
      v14[0] = 0;
      v22 = 1;
    }

    LOBYTE(v23) = 0;
    v27 = 0;
    if (v19 == 1)
    {
      _X0 = 0;
      _X1 = 0;
      v24 = v18;
      v23 = *v17;
      v17[1] = 0;
      v18 = 0;
      v17[0] = 0;
      __asm { CASPAL          X0, X1, X0, X1, [X8] }

      v25 = _X0;
      v26 = 0;
      v27 = 1;
    }

    LOBYTE(__p) = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    sub_2711D84D0(a1, v20, 1);
    if (v30 == 1 && v29 < 0)
    {
      operator delete(__p);
    }

    if (v27 == 1 && SHIBYTE(v24) < 0)
    {
      operator delete(v23);
    }

    if (v22 == 1 && SHIBYTE(v21) < 0)
    {
      operator delete(v20[0]);
    }

    if (v19 == 1 && SHIBYTE(v18) < 0)
    {
      operator delete(v17[0]);
    }

    if (v16 == 1 && SHIBYTE(v15) < 0)
    {
      operator delete(v14[0]);
    }

    v12 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v13 = *MEMORY[0x277D85DE8];

    sub_2711D84D0(a1, 0, 0);
  }
}

void sub_2711D8924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  sub_2711D8944(&a21);
  sub_271134C34(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_2711D8944(uint64_t result)
{
  if (*(result + 120) == 1 && *(result + 119) < 0)
  {
    v2 = result;
    operator delete(*(result + 96));
    result = v2;
    if (*(v2 + 80) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(result + 80) != 1)
  {
    goto LABEL_7;
  }

  if (*(result + 55) < 0)
  {
    v1 = result;
    operator delete(*(result + 32));
    result = v1;
  }

LABEL_7:
  if (*(result + 24) == 1 && *(result + 23) < 0)
  {
    v3 = result;
    operator delete(*result);
    return v3;
  }

  return result;
}

unint64_t sub_2711D89F4(uint64_t a1)
{
  v70[2] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 56);
  if (v4 == 1)
  {
    v5 = *(a1 + 55);
    if (v5 < 0)
    {
      if (*(a1 + 40))
      {
LABEL_4:
        v6 = a1 + 224;
        if (*(a1 + 384))
        {
          goto LABEL_152;
        }

        LOBYTE(v58[0]) = 0;
        v60 = 0;
        if ((v5 & 0x80) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_15;
      }
    }

    else if (*(a1 + 55))
    {
      goto LABEL_4;
    }
  }

  if (*(a1 + 176) != 1)
  {
    v11 = 0;
    v7 = 0;
    goto LABEL_153;
  }

  v7 = *(a1 + 151);
  v1 = *(a1 + 136);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a1 + 136);
  }

  if (!v7)
  {
    v11 = 0;
    goto LABEL_153;
  }

  v6 = a1 + 224;
  if (*(a1 + 384))
  {
    goto LABEL_152;
  }

  LOBYTE(v58[0]) = 0;
  v60 = 0;
  if (v4)
  {
    if ((*(a1 + 55) & 0x80) == 0)
    {
LABEL_6:
      *v58 = *(a1 + 32);
      v59 = *(a1 + 48);
      goto LABEL_16;
    }

LABEL_15:
    v8 = a1;
    sub_271127178(v58, *(a1 + 32), *(a1 + 40));
    a1 = v8;
LABEL_16:
    v9 = 0;
    v60 = 1;
    v10 = *(a1 + 176);
    LOBYTE(v62[0]) = 0;
    v63 = 0;
    if ((v10 & 1) == 0)
    {
      goto LABEL_24;
    }

    if ((*(a1 + 151) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_22:
    sub_271127178(v62, *(a1 + 128), *(a1 + 136));
    goto LABEL_23;
  }

  LOBYTE(v62[0]) = 0;
  v63 = 0;
  if (*(a1 + 151) < 0)
  {
    goto LABEL_22;
  }

LABEL_18:
  *v62 = *(a1 + 128);
  v62[2] = *(a1 + 144);
LABEL_23:
  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  v62[4] = _X2;
  v62[5] = 0;
  v9 = 1;
  v63 = 1;
LABEL_24:
  v19 = v60;
  if (v60 != 1)
  {
    v20 = 0;
    if (v9)
    {
      goto LABEL_103;
    }

    __p = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    if (!*(v6 + 160))
    {
      goto LABEL_55;
    }

LABEL_110:
    if (*(v6 + 24) == v27)
    {
      if (*(v6 + 24))
      {
        if (*(v6 + 23) < 0)
        {
          v54 = v1;
          operator delete(*v6);
          LOBYTE(v1) = v54;
        }

        *v6 = v20;
        v41 = *(v69 + 7);
        *(v6 + 8) = v69[0];
        *(v6 + 15) = v41;
        *(v6 + 23) = v3;
        v20 &= 0xFFFFFFFFFFFFFF00;
        v3 = 0;
        v42 = *(v6 + 80);
        if (v42 != v29)
        {
          goto LABEL_129;
        }

LABEL_121:
        if (v42)
        {
          if (*(v6 + 55) < 0)
          {
            v56 = v1;
            operator delete(*(v6 + 32));
            LOBYTE(v1) = v56;
          }

          v43 = v68[0];
          *(v6 + 32) = v30;
          *(v6 + 40) = v43;
          *(v6 + 47) = *(v68 + 7);
          *(v6 + 55) = v1;
          v30 &= 0xFFFFFFFFFFFFFF00;
          v61[0] = _X20;
          v44 = *(v6 + 64);
          do
          {
            _X3 = *(v6 + 72);
            __asm { CASPAL          X2, X3, X20, X21, [X8] }

            _ZF = _X2 == v44;
            v44 = _X2;
          }

          while (!_ZF);
          LOBYTE(v1) = 0;
        }

LABEL_134:
        if (*(v6 + 120))
        {
          if (*(v6 + 119) < 0)
          {
            v50 = v1;
            operator delete(*(v6 + 96));
            LOBYTE(v1) = v50;
          }

          *(v6 + 120) = 0;
        }

        *(v6 + 128) = 0;
        *(v6 + 129) = *v67;
        *(v6 + 136) = *&v67[7];
        *(v6 + 144) = 0;
        if (!v29)
        {
          goto LABEL_141;
        }

LABEL_139:
        if ((v1 & 0x80) != 0)
        {
          operator delete(v30);
        }

        goto LABEL_141;
      }
    }

    else
    {
      if (!*(v6 + 24))
      {
        *v6 = v20;
        v47 = *(v69 + 7);
        *(v6 + 8) = v69[0];
        *(v6 + 15) = v47;
        *(v6 + 23) = v3;
        v69[0] = 0;
        *(v69 + 7) = 0;
        *(v6 + 24) = 1;
        v3 = 0;
        v20 = 0;
        v42 = *(v6 + 80);
        if (v42 == v29)
        {
          goto LABEL_121;
        }

LABEL_129:
        if (v42)
        {
          if (*(v6 + 55) < 0)
          {
            v48 = v1;
            operator delete(*(v6 + 32));
            LOBYTE(v1) = v48;
          }

          *(v6 + 80) = 0;
        }

        else
        {
          v49 = v68[0];
          *(v6 + 32) = v30;
          *(v6 + 40) = v49;
          *(v6 + 47) = *(v68 + 7);
          *(v6 + 55) = v1;
          v68[0] = 0;
          *(v68 + 7) = 0;
          *(v6 + 64) = _X20;
          *(v6 + 72) = 0;
          *(v6 + 80) = 1;
          LOBYTE(v1) = 0;
          v30 = 0;
        }

        goto LABEL_134;
      }

      if (*(v6 + 23) < 0)
      {
        v55 = v1;
        operator delete(*v6);
        LOBYTE(v1) = v55;
      }

      *(v6 + 24) = 0;
    }

    v42 = *(v6 + 80);
    if (v42 == v29)
    {
      goto LABEL_121;
    }

    goto LABEL_129;
  }

  *&v61[1] = v59;
  v61[0] = *v58;
  v58[0] = 0;
  v58[1] = 0;
  v59 = 0;
  v3 = BYTE7(v61[1]);
  v1 = *(&v61[0] + 1);
  v20 = *&v61[0];
  if ((SBYTE7(v61[1]) & 0x80u) == 0)
  {
    v21 = v61;
  }

  else
  {
    v21 = *&v61[0];
  }

  if ((SBYTE7(v61[1]) & 0x80u) == 0)
  {
    v1 = SBYTE7(v61[1]);
  }

  if (!v1)
  {
    v70[0] = *(&v61[0] + 1);
    *(v70 + 7) = *(v61 + 15);
    memset(v61, 0, 24);
    v65[0] = v70[0];
    *(v65 + 7) = *(v70 + 7);
    if (v9)
    {
      goto LABEL_103;
    }

    goto LABEL_62;
  }

  v22 = v21;
  if (v1 < 8)
  {
    goto LABEL_156;
  }

  if (v1 < 0x10)
  {
    v23 = 0;
    goto LABEL_34;
  }

  v23 = v1 & 0xFFFFFFFFFFFFFFF0;
  v33 = v21 + 7;
  v34.i64[0] = 0x2323232323232323;
  v34.i64[1] = 0x2323232323232323;
  v35 = v1 & 0xFFFFFFFFFFFFFFF0;
  do
  {
    v36 = vceqq_s8(*(v33 - 7), v34);
    if (v36.i8[0])
    {
      *(v33 - 7) = 95;
      if ((v36.i8[1] & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    else if ((v36.i8[1] & 1) == 0)
    {
LABEL_70:
      if (v36.i8[2])
      {
        goto LABEL_71;
      }

      goto LABEL_87;
    }

    *(v33 - 6) = 95;
    if (v36.i8[2])
    {
LABEL_71:
      *(v33 - 5) = 95;
      if ((v36.i8[3] & 1) == 0)
      {
        goto LABEL_72;
      }

      goto LABEL_88;
    }

LABEL_87:
    if ((v36.i8[3] & 1) == 0)
    {
LABEL_72:
      if (v36.i8[4])
      {
        goto LABEL_73;
      }

      goto LABEL_89;
    }

LABEL_88:
    *(v33 - 4) = 95;
    if (v36.i8[4])
    {
LABEL_73:
      *(v33 - 3) = 95;
      if ((v36.i8[5] & 1) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_90;
    }

LABEL_89:
    if ((v36.i8[5] & 1) == 0)
    {
LABEL_74:
      if (v36.i8[6])
      {
        goto LABEL_75;
      }

      goto LABEL_91;
    }

LABEL_90:
    *(v33 - 2) = 95;
    if (v36.i8[6])
    {
LABEL_75:
      *(v33 - 1) = 95;
      if ((v36.i8[7] & 1) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_92;
    }

LABEL_91:
    if ((v36.i8[7] & 1) == 0)
    {
LABEL_76:
      if (v36.i8[8])
      {
        goto LABEL_77;
      }

      goto LABEL_93;
    }

LABEL_92:
    *v33 = 95;
    if (v36.i8[8])
    {
LABEL_77:
      v33[1] = 95;
      if ((v36.i8[9] & 1) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_94;
    }

LABEL_93:
    if ((v36.i8[9] & 1) == 0)
    {
LABEL_78:
      if (v36.i8[10])
      {
        goto LABEL_79;
      }

      goto LABEL_95;
    }

LABEL_94:
    v33[2] = 95;
    if (v36.i8[10])
    {
LABEL_79:
      v33[3] = 95;
      if ((v36.i8[11] & 1) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_96;
    }

LABEL_95:
    if ((v36.i8[11] & 1) == 0)
    {
LABEL_80:
      if (v36.i8[12])
      {
        goto LABEL_81;
      }

      goto LABEL_97;
    }

LABEL_96:
    v33[4] = 95;
    if (v36.i8[12])
    {
LABEL_81:
      v33[5] = 95;
      if ((v36.i8[13] & 1) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_98;
    }

LABEL_97:
    if ((v36.i8[13] & 1) == 0)
    {
LABEL_82:
      if ((v36.i8[14] & 1) == 0)
      {
        goto LABEL_99;
      }

      goto LABEL_83;
    }

LABEL_98:
    v33[6] = 95;
    if ((v36.i8[14] & 1) == 0)
    {
LABEL_99:
      if ((v36.i8[15] & 1) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_100;
    }

LABEL_83:
    v33[7] = 95;
    if ((v36.i8[15] & 1) == 0)
    {
      goto LABEL_67;
    }

LABEL_100:
    v33[8] = 95;
LABEL_67:
    v33 += 16;
    v35 -= 16;
  }

  while (v35);
  if (v1 == v23)
  {
    goto LABEL_102;
  }

  if ((v1 & 8) == 0)
  {
    v22 = v21 + v23;
LABEL_156:
    v53 = v21 + v1;
    do
    {
      if (*v22 == 35)
      {
        *v22 = 95;
      }

      ++v22;
    }

    while (v22 != v53);
    goto LABEL_102;
  }

LABEL_34:
  v22 = v21 + (v1 & 0xFFFFFFFFFFFFFFF8);
  v24 = v23 - (v1 & 0xFFFFFFFFFFFFFFF8);
  v25 = v21 + v23 + 3;
  while (2)
  {
    v26 = vceq_s8(*(v25 - 3), 0x2323232323232323);
    if (v26.i8[0])
    {
      *(v25 - 3) = 95;
      if ((v26.i8[1] & 1) == 0)
      {
        goto LABEL_38;
      }

LABEL_46:
      *(v25 - 2) = 95;
      if ((v26.i8[2] & 1) == 0)
      {
        goto LABEL_47;
      }

LABEL_39:
      *(v25 - 1) = 95;
      if ((v26.i8[3] & 1) == 0)
      {
        goto LABEL_40;
      }

LABEL_48:
      *v25 = 95;
      if ((v26.i8[4] & 1) == 0)
      {
        goto LABEL_49;
      }

LABEL_41:
      v25[1] = 95;
      if ((v26.i8[5] & 1) == 0)
      {
        goto LABEL_42;
      }

LABEL_50:
      v25[2] = 95;
      if ((v26.i8[6] & 1) == 0)
      {
        goto LABEL_51;
      }

LABEL_43:
      v25[3] = 95;
      if (v26.i8[7])
      {
        goto LABEL_52;
      }
    }

    else
    {
      if (v26.i8[1])
      {
        goto LABEL_46;
      }

LABEL_38:
      if (v26.i8[2])
      {
        goto LABEL_39;
      }

LABEL_47:
      if (v26.i8[3])
      {
        goto LABEL_48;
      }

LABEL_40:
      if (v26.i8[4])
      {
        goto LABEL_41;
      }

LABEL_49:
      if (v26.i8[5])
      {
        goto LABEL_50;
      }

LABEL_42:
      if (v26.i8[6])
      {
        goto LABEL_43;
      }

LABEL_51:
      if (v26.i8[7])
      {
LABEL_52:
        v25[4] = 95;
      }
    }

    v25 += 8;
    v24 += 8;
    if (v24)
    {
      continue;
    }

    break;
  }

  if (v1 != (v1 & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_156;
  }

LABEL_102:
  v20 = *&v61[0];
  v3 = BYTE7(v61[1]);
  LOBYTE(v1) = BYTE8(v61[0]);
  v70[0] = *(&v61[0] + 1);
  *(v70 + 7) = *(v61 + 15);
  memset(v61, 0, 24);
  v65[0] = v70[0];
  *(v65 + 7) = *(v70 + 7);
  if ((v63 & 1) == 0)
  {
LABEL_62:
    __p = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v69[0] = v65[0];
    *(v69 + 7) = *(v65 + 7);
    v65[0] = 0;
    *(v65 + 7) = 0;
    v27 = 1;
    if (*(v6 + 160))
    {
      goto LABEL_110;
    }

    goto LABEL_55;
  }

LABEL_103:
  _X20 = 0;
  v30 = v62[0];
  v64[0] = v62[1];
  *(v64 + 7) = *(&v62[1] + 7);
  LOBYTE(v1) = HIBYTE(v62[2]);
  memset(v62, 0, 24);
  _X21 = 0;
  __asm { CASPAL          X20, X21, X20, X21, [X9] }

  if (v19)
  {
    v39 = 0;
    v69[0] = v65[0];
    *(v69 + 7) = *(v65 + 7);
    v65[0] = 0;
    *(v65 + 7) = 0;
    v27 = 1;
    v40 = v20;
    v20 = 0;
  }

  else
  {
    v40 = 0;
    v27 = 0;
    v39 = v3;
  }

  __p = v20;
  v68[0] = v64[0];
  *(v68 + 7) = *(v64 + 7);
  v64[0] = 0;
  *(v64 + 7) = 0;
  if (v39 < 0)
  {
    v28 = v19;
  }

  else
  {
    v28 = 0;
  }

  v29 = 1;
  v20 = v40;
  if (*(v6 + 160))
  {
    goto LABEL_110;
  }

LABEL_55:
  *v6 = 0;
  *(v6 + 24) = 0;
  if (v27)
  {
    *v6 = v20;
    v31 = *(v69 + 7);
    *(v6 + 8) = v69[0];
    *(v6 + 15) = v31;
    *(v6 + 23) = v3;
    v69[0] = 0;
    *(v69 + 7) = 0;
    *(v6 + 24) = 1;
    v3 = 0;
    v20 = 0;
  }

  *(v6 + 32) = 0;
  *(v6 + 80) = 0;
  if (v29)
  {
    v32 = v68[0];
    *(v6 + 32) = v30;
    *(v6 + 40) = v32;
    *(v6 + 47) = *(v68 + 7);
    *(v6 + 55) = v1;
    v68[0] = 0;
    *(v68 + 7) = 0;
    *(v6 + 64) = _X20;
    *(v6 + 72) = 0;
    *(v6 + 80) = 1;
    LOBYTE(v1) = 0;
    v30 = 0;
  }

  *(v6 + 96) = 0;
  *(v6 + 120) = 0;
  *(v6 + 128) = 0;
  *(v6 + 129) = *v67;
  *(v6 + 136) = *&v67[7];
  *(v6 + 144) = 0;
  *(v6 + 145) = v66[0];
  *(v6 + 148) = *(v66 + 3);
  *(v6 + 160) = 1;
  if (v29)
  {
    goto LABEL_139;
  }

LABEL_141:
  if (v27 && v3 < 0)
  {
    operator delete(v20);
  }

  if (v28)
  {
    operator delete(__p);
  }

  if (v63 == 1 && SHIBYTE(v62[2]) < 0)
  {
    operator delete(v62[0]);
  }

  if (v60 == 1 && SHIBYTE(v59) < 0)
  {
    operator delete(v58[0]);
  }

LABEL_152:
  v11 = v6 & 0xFFFFFFFFFFFFFF00;
  v7 = v6;
LABEL_153:
  v51 = *MEMORY[0x277D85DE8];
  return v7 | v11;
}

void sub_2711D932C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a33 == 1 && a29 < 0)
  {
    operator delete(__p);
  }

  if (a19 == 1 && a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711D9378(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    *a2 = *a1;
    *(a2 + 120) = 1;
    return;
  }

  sub_2711CC04C(v17, "Data info does not yet contain a log timestamp (will be generated during data creation).");
  v25 = 1;
  sub_27112D480(0x12u, v17, &v6);
  if (v25 == 1)
  {
    if (v24 == 1)
    {
      if (v23 < 0)
      {
        operator delete(__p);
      }

      if (v21 < 0)
      {
        operator delete(v20);
      }
    }

    if (v19 == 1 && v18 < 0)
    {
      operator delete(v17[0]);
    }
  }

  *a2 = v6;
  *(a2 + 16) = 0;
  *(a2 + 112) = 0;
  if (v16 != 1)
  {
    *(a2 + 120) = 0;
    return;
  }

  *(a2 + 40) = 0;
  v3 = v9;
  if (v9 == 1)
  {
    *(a2 + 16) = *v7;
    *(a2 + 32) = v8;
    v7[1] = 0;
    v8 = 0;
    v7[0] = 0;
    *(a2 + 40) = 1;
    *(a2 + 48) = 0;
    v4 = a2 + 48;
    *(a2 + 104) = 0;
    if ((v15 & 1) == 0)
    {
LABEL_16:
      *(a2 + 112) = 1;
      *(a2 + 120) = 0;
      if (!v3)
      {
        return;
      }

      goto LABEL_21;
    }
  }

  else
  {
    *(a2 + 48) = 0;
    v4 = a2 + 48;
    *(a2 + 104) = 0;
    if ((v15 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v5 = v12;
  *(v4 + 16) = v11;
  *v4 = v10;
  v10 = 0uLL;
  *(a2 + 72) = v5;
  *(a2 + 80) = v13;
  *(a2 + 96) = v14;
  v11 = 0;
  v13 = 0uLL;
  v14 = 0;
  *(a2 + 104) = 1;
  *(a2 + 112) = 1;
  *(a2 + 120) = 0;
  if (!v3)
  {
    return;
  }

LABEL_21:
  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }
}

void sub_2711D9544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_27112D66C(va);
  _Unwind_Resume(a1);
}

void sub_2711D9558(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    *a2 = *(a1 + 8);
    *(a2 + 120) = 1;
    return;
  }

  sub_2711CC04C(v17, "Data info does not yet contain a log timestamp (will be generated during data creation).");
  v25 = 1;
  sub_27112D480(0x12u, v17, &v6);
  if (v25 == 1)
  {
    if (v24 == 1)
    {
      if (v23 < 0)
      {
        operator delete(__p);
      }

      if (v21 < 0)
      {
        operator delete(v20);
      }
    }

    if (v19 == 1 && v18 < 0)
    {
      operator delete(v17[0]);
    }
  }

  *a2 = v6;
  *(a2 + 16) = 0;
  *(a2 + 112) = 0;
  if (v16 != 1)
  {
    *(a2 + 120) = 0;
    return;
  }

  *(a2 + 40) = 0;
  v3 = v9;
  if (v9 == 1)
  {
    *(a2 + 16) = *v7;
    *(a2 + 32) = v8;
    v7[1] = 0;
    v8 = 0;
    v7[0] = 0;
    *(a2 + 40) = 1;
    *(a2 + 48) = 0;
    v4 = a2 + 48;
    *(a2 + 104) = 0;
    if ((v15 & 1) == 0)
    {
LABEL_16:
      *(a2 + 112) = 1;
      *(a2 + 120) = 0;
      if (!v3)
      {
        return;
      }

      goto LABEL_21;
    }
  }

  else
  {
    *(a2 + 48) = 0;
    v4 = a2 + 48;
    *(a2 + 104) = 0;
    if ((v15 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v5 = v12;
  *(v4 + 16) = v11;
  *v4 = v10;
  v10 = 0uLL;
  *(a2 + 72) = v5;
  *(a2 + 80) = v13;
  *(a2 + 96) = v14;
  v11 = 0;
  v13 = 0uLL;
  v14 = 0;
  *(a2 + 104) = 1;
  *(a2 + 112) = 1;
  *(a2 + 120) = 0;
  if (!v3)
  {
    return;
  }

LABEL_21:
  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }
}

void sub_2711D9724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_27112D66C(va);
  _Unwind_Resume(a1);
}

void sub_2711D9738(uint64_t a1, char *__s)
{
  v21[2] = *MEMORY[0x277D85DE8];
  if (__s)
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

    HIBYTE(v20) = v4;
    if (v4)
    {
      memcpy(&v19, __s, v4);
    }

    *(&v19 + v5) = 0;
    v6 = v19;
    v21[0] = v20;
    *(v21 + 7) = *(&v20 + 7);
    v7 = HIBYTE(v20);
    v20 = 0uLL;
    v19 = 0;
    if (*(a1 + 176) != 1)
    {
      v17 = v21[0];
      *(a1 + 128) = v6;
      *(a1 + 136) = v17;
      *(a1 + 143) = *(v21 + 7);
      *(a1 + 151) = v7;
      *(a1 + 160) = 0;
      *(a1 + 168) = 0;
      *(a1 + 176) = 1;
      if (*(a1 + 384) != 1)
      {
        goto LABEL_32;
      }

      goto LABEL_22;
    }

    if (*(a1 + 151) < 0)
    {
      operator delete(*(a1 + 128));
    }

    _X0 = 0;
    v9 = v21[0];
    *(a1 + 128) = v6;
    *(a1 + 136) = v9;
    *(a1 + 143) = *(v21 + 7);
    *(a1 + 151) = v7;
    v10 = *(a1 + 160);
    do
    {
      _X5 = *(a1 + 168);
      __asm { CASPAL          X4, X5, X0, X1, [X8] }

      _ZF = _X4 == v10;
      v10 = _X4;
    }

    while (!_ZF);
    goto LABEL_19;
  }

  if (*(a1 + 176) != 1)
  {
LABEL_19:
    if (*(a1 + 384) != 1)
    {
      goto LABEL_32;
    }

    goto LABEL_22;
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  *(a1 + 176) = 0;
  if (*(a1 + 384) == 1)
  {
LABEL_22:
    if (*(a1 + 344) == 1 && *(a1 + 343) < 0)
    {
      operator delete(*(a1 + 320));
    }

    if (*(a1 + 304) == 1 && *(a1 + 279) < 0)
    {
      operator delete(*(a1 + 256));
    }

    if (*(a1 + 248) == 1 && *(a1 + 247) < 0)
    {
      operator delete(*(a1 + 224));
    }

    *(a1 + 384) = 0;
  }

LABEL_32:
  v18 = *MEMORY[0x277D85DE8];
}

void sub_2711D9964(uint64_t a1, uint64_t __val)
{
  _X20 = __val;
  v18 = *MEMORY[0x277D85DE8];
  std::to_string(&v17, __val);
  *(&v16 + 1) = *(&v17.__r_.__value_.__l + 2);
  LOBYTE(v16) = v17.__r_.__value_.__s.__data_[15];
  v4 = v17.__r_.__value_.__r.__words[0];
  v17.__r_.__value_.__r.__words[0] = v17.__r_.__value_.__l.__size_;
  *(v17.__r_.__value_.__r.__words + 7) = v16;
  v5 = HIBYTE(v17.__r_.__value_.__r.__words[2]);
  if (*(a1 + 176) != 1)
  {
    v14 = v17.__r_.__value_.__r.__words[0];
    *(a1 + 128) = v4;
    *(a1 + 136) = v14;
    *(a1 + 143) = *(v17.__r_.__value_.__r.__words + 7);
    *(a1 + 151) = v5;
    *(a1 + 160) = _X20;
    *(a1 + 168) = 1;
    *(a1 + 176) = 1;
    if (*(a1 + 384) != 1)
    {
      goto LABEL_20;
    }

    goto LABEL_10;
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  v6 = v17.__r_.__value_.__r.__words[0];
  *(a1 + 128) = v4;
  *(a1 + 136) = v6;
  *(a1 + 143) = *(v17.__r_.__value_.__r.__words + 7);
  *(a1 + 151) = v5;
  v7 = *(a1 + 160);
  do
  {
    _X3 = *(a1 + 168);
    __asm { CASPAL          X2, X3, X20, X21, [X8] }

    _ZF = _X2 == v7;
    v7 = _X2;
  }

  while (!_ZF);
  if (*(a1 + 384) == 1)
  {
LABEL_10:
    if (*(a1 + 344) == 1 && *(a1 + 343) < 0)
    {
      operator delete(*(a1 + 320));
    }

    if (*(a1 + 304) == 1 && *(a1 + 279) < 0)
    {
      operator delete(*(a1 + 256));
    }

    if (*(a1 + 248) == 1 && *(a1 + 247) < 0)
    {
      operator delete(*(a1 + 224));
    }

    *(a1 + 384) = 0;
  }

LABEL_20:
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2711D9B10(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      if (*(a2 + 8))
      {
        v4 = *a2 == 0;
      }

      else
      {
        v4 = 1;
      }

      if (!v4)
      {
        goto LABEL_16;
      }
    }

    else if (*(a2 + 23))
    {
      goto LABEL_16;
    }
  }

  if (*(a2 + 80) != 1)
  {
    return 0;
  }

  v5 = *(a2 + 55);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 40);
  }

  if (!v5 || v6 < 0 && !*(a2 + 32))
  {
    return 0;
  }

LABEL_16:
  if (*(a1 + 216))
  {
    v8 = *(a1 + 192);
    v7 = *(a1 + 200);
    if (v8 != v7)
    {
      while (!sub_2714FB8D4(v8, a2))
      {
        v8 += 96;
        if (v8 == v7)
        {
          goto LABEL_22;
        }
      }

      if (v8 != v7)
      {
        return 0;
      }
    }
  }

  else
  {
    v7 = 0;
    *(a1 + 192) = 0;
    *(a1 + 200) = 0;
    *(a1 + 208) = 0;
    *(a1 + 216) = 1;
  }

LABEL_22:
  if (v7 >= *(a1 + 208))
  {
    *(a1 + 200) = sub_2711DC024(a1 + 192, a2);
  }

  else
  {
    sub_271135578(v7, a2);
    *(a1 + 200) = v7 + 96;
    *(a1 + 200) = v7 + 96;
  }

  return 1;
}

uint64_t sub_2711D9C50(uint64_t a1, char *__s)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = strlen(__s);
  sub_2714FB29C(__s, v4, v15);
  LOBYTE(v21[0]) = 0;
  v23 = 0;
  if (v17 == 1)
  {
    *v21 = *v15;
    v22 = v16;
    v15[1] = 0;
    v16 = 0;
    v15[0] = 0;
    v23 = 1;
  }

  LOBYTE(v24) = 0;
  v28 = 0;
  if (v20 == 1)
  {
    _X0 = 0;
    _X1 = 0;
    v25 = v19;
    v24 = *v18;
    v18[1] = 0;
    v19 = 0;
    v18[0] = 0;
    __asm { CASPAL          X0, X1, X0, X1, [X8] }

    v26 = _X0;
    v27 = 0;
    v28 = 1;
  }

  LOBYTE(__p) = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v12 = sub_2711D9B10(a1, v21);
  if (v31 == 1 && v30 < 0)
  {
    operator delete(__p);
  }

  if (v28 == 1 && SHIBYTE(v25) < 0)
  {
    operator delete(v24);
  }

  if (v23 == 1 && SHIBYTE(v22) < 0)
  {
    operator delete(v21[0]);
  }

  if (v20 == 1 && SHIBYTE(v19) < 0)
  {
    operator delete(v18[0]);
  }

  if (v17 == 1 && SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_2711D9E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  sub_2711D8944(&a21);
  sub_271134C34(&a9);
  _Unwind_Resume(a1);
}

void sub_2711D9E20(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = *MEMORY[0x277D85DE8];
  if (*(a1 + 216) == 1)
  {
    v5 = *(a1 + 192);
    v6 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 200) - v5) >> 5);
    if (v6 > a2)
    {
      sub_271135578(&v40, (v5 + 96 * a2));
      LOBYTE(v47) = 0;
      v49 = 0;
      LOBYTE(v50) = 0;
      LOBYTE(v51) = 0;
      *a3 = 0;
      *(a3 + 24) = 0;
      if (BYTE8(v41) == 1)
      {
        *a3 = v40;
        *(a3 + 16) = v41;
        *&v41 = 0;
        v40 = 0uLL;
        *(a3 + 24) = 1;
      }

      *(a3 + 32) = 0;
      *(a3 + 80) = 0;
      if (v46)
      {
        _X0 = 0;
        _X1 = 0;
        *(a3 + 32) = v42;
        *(a3 + 48) = v43;
        *&v43 = 0;
        v42 = 0uLL;
        __asm { CASPAL          X0, X1, X0, X1, [X8] }

        *(a3 + 96) = 0;
        *(a3 + 64) = _X0;
        *(a3 + 72) = 0;
        *(a3 + 80) = 1;
        v14 = v49;
        *(a3 + 120) = 0;
        if (v14)
        {
          *(a3 + 96) = v47;
          *(a3 + 112) = v48;
          v48 = 0;
          v47 = 0uLL;
          *(a3 + 120) = 1;
        }
      }

      else
      {
        *(a3 + 96) = 0;
        *(a3 + 120) = 0;
      }

      *(a3 + 128) = v50;
      *(a3 + 144) = v51;
      *(a3 + 160) = 1;
      if (v46 == 1 && SBYTE7(v43) < 0)
      {
        operator delete(v42);
      }

      if (BYTE8(v41) == 1 && SBYTE7(v41) < 0)
      {
        v18 = v40;
        goto LABEL_48;
      }

      goto LABEL_49;
    }
  }

  else
  {
    v6 = 0;
  }

  v32 = 0;
  v34 = v31;
  v35 = "index ";
  v36 = v31;
  v37 = "index ";
  v38 = "index ";
  v33.__r_.__value_.__r.__words[0] = &v34;
  sub_27115EE04(&v33);
  std::to_string(&v33, a2);
  v34 = v31;
  v35 = &v33;
  v36 = v31;
  v37 = &v33;
  v38 = &v33;
  if (v32 == -1)
  {
    sub_2711308D4();
  }

  v39 = &v34;
  (off_28812E4C8[v32])(&v39, v31);
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  v34 = v31;
  v35 = " out of range for reference list of size ";
  v36 = v31;
  v37 = " out of range for reference list of size ";
  v38 = " out of range for reference list of size ";
  if (v32 == -1)
  {
    sub_2711308D4();
  }

  v33.__r_.__value_.__r.__words[0] = &v34;
  (off_28812E510[v32])(&v33, v31);
  std::to_string(&v33, v6);
  v34 = v31;
  v35 = &v33;
  v36 = v31;
  v37 = &v33;
  v38 = &v33;
  if (v32 == -1)
  {
    sub_2711308D4();
  }

  v39 = &v34;
  (off_28812E4C8[v32])(&v39, v31);
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (v32 == -1)
  {
    sub_2711308D4();
  }

  v34 = &v33;
  (off_28812E4F8[v32])(&v20, &v34, v31);
  if (v32 != -1)
  {
    (off_28812E4E0[v32])(&v34, v31);
  }

  if (SHIBYTE(v21) < 0)
  {
    sub_271127178(__p, v20, *(&v20 + 1));
  }

  else
  {
    *__p = v20;
    v23 = v21;
  }

  v24 = 1;
  LOBYTE(v25) = 0;
  v29 = 0;
  v30 = 1;
  sub_27112D480(0xAu, __p, &v40);
  *a3 = v40;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v48 != 1)
  {
    *(a3 + 160) = 0;
    goto LABEL_32;
  }

  *(a3 + 40) = 0;
  v15 = BYTE8(v42);
  if (BYTE8(v42) == 1)
  {
    *(a3 + 16) = v41;
    *(a3 + 32) = v42;
    *&v42 = 0;
    v41 = 0uLL;
    *(a3 + 40) = 1;
    *(a3 + 48) = 0;
    v16 = a3 + 48;
    *(a3 + 104) = 0;
    if ((BYTE8(v47) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    *(a3 + 48) = 0;
    v16 = a3 + 48;
    *(a3 + 104) = 0;
    if ((BYTE8(v47) & 1) == 0)
    {
LABEL_25:
      *(a3 + 112) = 1;
      *(a3 + 160) = 0;
      if (!v15)
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }
  }

  v17 = v45;
  *(v16 + 16) = v44;
  *v16 = v43;
  v43 = 0uLL;
  *(a3 + 72) = v17;
  *(a3 + 80) = v46;
  *(a3 + 96) = v47;
  v44 = 0;
  v46 = 0uLL;
  *&v47 = 0;
  *(a3 + 104) = 1;
  *(a3 + 112) = 1;
  *(a3 + 160) = 0;
  if (!v15)
  {
    goto LABEL_32;
  }

LABEL_30:
  if (SBYTE7(v42) < 0)
  {
    operator delete(v41);
  }

LABEL_32:
  if (v30 != 1)
  {
    goto LABEL_39;
  }

  if (v29 == 1)
  {
    if ((v28 & 0x80000000) == 0)
    {
      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_36;
      }

LABEL_51:
      operator delete(v25);
      if (v24 != 1)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    operator delete(v27);
    if (v26 < 0)
    {
      goto LABEL_51;
    }
  }

LABEL_36:
  if (v24 != 1)
  {
    goto LABEL_39;
  }

LABEL_37:
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_39:
  if (SHIBYTE(v21) < 0)
  {
    v18 = v20;
LABEL_48:
    operator delete(v18);
  }

LABEL_49:
  v19 = *MEMORY[0x277D85DE8];
}

void sub_2711DA348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711DA3D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  sub_271130878(&a26);
  _Unwind_Resume(a1);
}

void *sub_2711DA410(void *a1, uint64_t a2)
{
  sub_271120E64(a1, "{", 1);
  if (*(a2 + 56) != 1)
  {
    if (*(a2 + 176))
    {
LABEL_11:
      sub_271120E64(a1, "instance_id", 11);
      sub_271120E64(a1, "=", 1);
      operator new();
    }

    if ((*(a2 + 80) & 1) == 0)
    {
      if (*(a2 + 16))
      {
LABEL_15:
        __p = a1;
        sub_271120E64(a1, "log_timestamp", 13);
        sub_271120E64(a1, "=", 1);
        sub_2711B99F8();
      }

      if ((*(a2 + 112) & 1) == 0)
      {
        if ((*(a2 + 216) & 1) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_34;
      }

      goto LABEL_25;
    }

LABEL_22:
    __p = a1;
    sub_271120E64(a1, "custom_timestamp", 16);
    sub_271120E64(a1, "=", 1);
    sub_2711DC2EC();
  }

  sub_271120E64(a1, "name", 4);
  sub_271120E64(a1, "=", 1);
  v4 = *(a2 + 32);
  v5 = *(a2 + 55);
  if (v5 >= 0)
  {
    v6 = a2 + 32;
  }

  else
  {
    v6 = *(a2 + 32);
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 55);
  }

  else
  {
    v7 = *(a2 + 40);
  }

  sub_271120E64(a1, v6, v7);
  if (*(a2 + 176))
  {
    sub_271120E64(a1, ", ", 2);
    goto LABEL_11;
  }

  if (*(a2 + 80))
  {
    sub_271120E64(a1, ", ", 2);
    goto LABEL_22;
  }

  if (*(a2 + 16))
  {
    sub_271120E64(a1, ", ", 2);
    goto LABEL_15;
  }

  if ((*(a2 + 112) & 1) == 0)
  {
    goto LABEL_32;
  }

  sub_271120E64(a1, ", ", 2);
LABEL_25:
  sub_271120E64(a1, "space", 5);
  sub_271120E64(a1, "=", 1);
  v8 = *(a2 + 111);
  if (v8 >= 0)
  {
    v9 = a2 + 88;
  }

  else
  {
    v9 = *(a2 + 88);
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 111);
  }

  else
  {
    v10 = *(a2 + 96);
  }

  sub_271120E64(a1, v9, v10);
LABEL_32:
  if ((*(a2 + 216) & 1) == 0)
  {
    goto LABEL_37;
  }

  sub_271120E64(a1, ", ", 2);
LABEL_34:
  __p = a1;
  sub_271120E64(a1, "references", 10);
  sub_271120E64(a1, "=", 1);
  if ((*(a2 + 200) - *(a2 + 192)) > 95)
  {
    sub_271120E64(a1, "{", 1);
    v11 = *(a2 + 192);
    sub_2711DC518();
  }

  sub_271120E64(a1, "{}", 2);
LABEL_37:
  sub_271120E64(a1, "}", 1);
  return a1;
}

void sub_2711DA918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2711DA974(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2711DC7A8(exception);
    __cxa_throw(exception, off_279E2F410, MEMORY[0x277D82610]);
  }

  sub_2714FCC00(a2);
  v6 = sub_2714FC508(a2);
  v7 = *v6;
  *(a1 + 40) = *(v6 + 8);
  *(a1 + 32) = v7;
  *(a1 + 48) = 1;
  sub_27113523C(a1 + 64, (v6 + 16));
  *(a1 + 256) = 0;
  *(a1 + 416) = 0;
  v9 = *(a2 + 8);
  v8 = *(a2 + 16);
  *(a1 + 432) = off_28810C940;
  *(a1 + 440) = v9;
  *(a1 + 448) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 464) = 0;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  *(a1 + 528) = 0;
  return a1;
}

void sub_2711DAAC8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2711DAAE4(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  v8 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3) || *(v7 + 6) != *(v6 + 6))
  {
    return 0;
  }

  v9 = *(v7 + 48);
  v10 = *(v6 + 48);
  if (v9 == v10 && *(v7 + 48))
  {
    if (v7[4] != v6[4])
    {
      return 0;
    }

    v9 = *(v7 + 40);
    v10 = *(v6 + 40);
  }

  if (v9 != v10)
  {
    return 0;
  }

  v13[0] = v7 + 8;
  v13[1] = v7 + 12;
  v13[2] = v7 + 15;
  v13[3] = v7 + 20;
  v13[4] = v7 + 28;
  v12[0] = v6 + 8;
  v12[1] = v6 + 12;
  v12[2] = v6 + 15;
  v12[3] = v6 + 20;
  v12[4] = v6 + 28;
  if (!sub_2714FBB90(v13, v12))
  {
    return 0;
  }

  return sub_2714FC08C(v7 + 54, v6 + 54);
}

void sub_2711DAE18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  v10 = a9;
  a9 = 0;
  if (!v10)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27184D728(&a9, v10);
  _Unwind_Resume(exception_object);
}

void sub_2711DAE40(const char *a1, std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep a2)
{
  v69 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 23);
  if ((v2 & 0x80u) == 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a1 + 1);
  }

  if (v2)
  {
    v6 = 0;
    while (*(v3 + v6) != 35)
    {
      if (v2 == ++v6)
      {
        goto LABEL_107;
      }
    }

    if (v2 != v6 && v6 != -1)
    {
      if ((atomic_load_explicit(&qword_28087B2A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B2A0))
      {
        sub_27112B400(v44, "cv3dapi.visual_logger");
        qword_28087B298 = sub_27112B36C(v44);
        if (SHIBYTE(v45) < 0)
        {
          operator delete(v44[0]);
        }

        __cxa_guard_release(&qword_28087B2A0);
      }

      v56 = qword_28087B298;
      if (**(qword_28087B298 + 48) <= 4)
      {
        if ((atomic_load_explicit(&qword_28087B2B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B2B8))
        {
          sub_2711DC7E4();
        }

        v7 = qword_28087B2A8;
        v8 = *(qword_28087B2A8 + 8);
        v9.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
        if (v8 != 1 || a2 < 1)
        {
          v11 = qword_28087B2A8;
          if ((*(qword_28087B2A8 + 8) & 1) == 0)
          {
            *(qword_28087B2A8 + 8) = 1;
          }
        }

        else
        {
          if (v9.__d_.__rep_ - *v7 < a2)
          {
            goto LABEL_107;
          }

          v11 = qword_28087B2A8;
        }

        v11->__d_.__rep_ = v9.__d_.__rep_;
        v12 = *(v56 + 64);
        v13 = sub_271124E80(v56, "OSLogSurrogateAppender", 1, 0);
        if (!((v13 != 0) | v12 & 1))
        {
          goto LABEL_107;
        }

        sub_2711218C8(v44);
        if (a1[23] >= 0)
        {
          v14 = a1;
        }

        else
        {
          v14 = *a1;
        }

        v15 = *(v14 + v6);
        v36 = 0;
        *&v62 = v35;
        *(&v62 + 1) = "Data name ";
        v63 = v35;
        v64 = "Data name ";
        v65 = "Data name ";
        *&v59 = &v62;
        sub_2711D0494(&v59);
        *&v62 = v35;
        *(&v62 + 1) = a1;
        v63 = v35;
        v64 = a1;
        v65 = a1;
        if (v36 == -1)
        {
          sub_2711308D4();
        }

        *&v59 = &v62;
        (off_28812E528[v36])(&v59, v35);
        *&v62 = v35;
        *(&v62 + 1) = " contains reserved character '";
        v63 = v35;
        v64 = " contains reserved character '";
        v65 = " contains reserved character '";
        if (v36 == -1)
        {
          sub_2711308D4();
        }

        *&v59 = &v62;
        (off_28812E540[v36])(&v59, v35);
        v60 = 1;
        LOWORD(v59) = v15;
        *&v62 = v35;
        *(&v62 + 1) = &v59;
        v63 = v35;
        v64 = &v59;
        v65 = &v59;
        if (v36 == -1)
        {
          sub_2711308D4();
        }

        v61 = &v62;
        (off_28812E4C8[v36])(&v61, v35);
        if (v60 < 0)
        {
          operator delete(v59);
        }

        *&v62 = v35;
        *(&v62 + 1) = "'. Using reserved characters in names could cause unintended equivalency with other data when referencing. VisualLogger guidelines recommend to use underscores or other characters instead. (Logged at most once per second)";
        v63 = v35;
        v64 = "'. Using reserved characters in names could cause unintended equivalency with other data when referencing. VisualLogger guidelines recommend to use underscores or other characters instead. (Logged at most once per second)";
        v65 = "'. Using reserved characters in names could cause unintended equivalency with other data when referencing. VisualLogger guidelines recommend to use underscores or other characters instead. (Logged at most once per second)";
        if (v36 == -1)
        {
          sub_2711308D4();
        }

        *&v59 = &v62;
        (off_28812E558[v36])(&v59, v35);
        if (v36 == -1)
        {
          sub_2711308D4();
        }

        *&v62 = &v59;
        (off_28812E4F8[v36])(__p, &v62, v35);
        if (v36 != -1)
        {
          (off_28812E4E0[v36])(&v62, v35);
        }

        if ((v58 & 0x80u) == 0)
        {
          v16 = __p;
        }

        else
        {
          v16 = __p[0];
        }

        if ((v58 & 0x80u) == 0)
        {
          v17 = v58;
        }

        else
        {
          v17 = __p[1];
        }

        sub_271120E64(&v45, v16, v17);
        if (v58 < 0)
        {
          operator delete(__p[0]);
        }

        v34 = v13;
        if ((v54 & 0x10) != 0)
        {
          v19 = v53;
          if (v53 < v50)
          {
            v53 = v50;
            v19 = v50;
          }

          v20 = &v49;
        }

        else
        {
          if ((v54 & 8) == 0)
          {
            v18 = 0;
            v43 = 0;
LABEL_59:
            *(&__dst + v18) = 0;
            v35[0] = &v56;
            v35[1] = std::chrono::steady_clock::now().__d_.__rep_;
            v35[2] = std::chrono::system_clock::now().__d_.__rep_;
            v36 = 4;
            v37 = "unknown file";
            v38 = 436;
            v40 = 0;
            v41 = 0;
            v39 = "unknown function";
            if (v43 >= 0)
            {
              p_dst = &__dst;
            }

            else
            {
              p_dst = __dst;
            }

            v23 = *v35[0];
            v24 = (*v35[0] + 8);
            v25 = *(*v35[0] + 31);
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

            *&v62 = os_log_create(v26, v24);
            if (v27 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_271120DA8();
            }

            if (v27 >= 0x17)
            {
              operator new();
            }

            HIBYTE(v64) = v27;
            if (v27)
            {
              memmove(&v62 + 8, v26, v27);
            }

            *(&v62 + v27 + 8) = 0;
            LOBYTE(v65) = 1;
            if (v25 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_271120DA8();
            }

            if (v25 >= 0x17)
            {
              operator new();
            }

            v67 = v25;
            if (v25)
            {
              memmove(&v66, v24, v25);
            }

            *(&v66 + v25) = 0;
            v68 = 1;
            v28 = v62;
            if (v67 < 0)
            {
              operator delete(v66);
            }

            if (v65 == 1 && SHIBYTE(v64) < 0)
            {
              operator delete(*(&v62 + 1));
            }

            if (v28)
            {
              os_release(v28);
            }

            if (v34 && *(v34 + 24))
            {
              _os_log_pack_size();
              MEMORY[0x2743BF060]();
              operator new();
            }

            os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
            LODWORD(v62) = 136315138;
            *(&v62 + 4) = p_dst;
            v29 = _os_log_send_and_compose_impl();
            if (v29)
            {
              free(v29);
            }

            if (v12)
            {
              v30 = &__dst;
              if (v43 < 0)
              {
                v30 = __dst;
              }

              sub_2711213B4(v35, "%s", v30);
              sub_27112F8A0(v35);
            }

            sub_27112F8A0(v35);
            v31 = v41;
            if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v31->__on_zero_shared)(v31);
              std::__shared_weak_count::__release_weak(v31);
            }

            if (v43 < 0)
            {
              operator delete(__dst);
            }

            v44[0] = *MEMORY[0x277D82818];
            v32 = *(MEMORY[0x277D82818] + 72);
            *(v44 + *(v44[0] - 3)) = *(MEMORY[0x277D82818] + 64);
            v45 = v32;
            v46 = MEMORY[0x277D82878] + 16;
            if (v52 < 0)
            {
              operator delete(v51);
            }

            v46 = MEMORY[0x277D82868] + 16;
            std::locale::~locale(&v47);
            std::iostream::~basic_iostream();
            MEMORY[0x2743BEF20](&v55);
            goto LABEL_107;
          }

          v20 = v48;
          v19 = v48[2];
        }

        v21 = *v20;
        v18 = v19 - *v20;
        if (v18 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_271120DA8();
        }

        if (v18 >= 0x17)
        {
          operator new();
        }

        v43 = v19 - *v20;
        if (v18)
        {
          memmove(&__dst, v21, v18);
        }

        goto LABEL_59;
      }
    }
  }

LABEL_107:
  v33 = *MEMORY[0x277D85DE8];
}

void sub_2711DBD20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  __cxa_guard_abort(&qword_2808777D0);
  sub_2711DC8C4(&a15);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  sub_2711DC948(&a30, MEMORY[0x277D82818]);
  MEMORY[0x2743BEF20](&a46);
  _Unwind_Resume(a1);
}

void sub_2711DBEEC(uint64_t a1, void *a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      if (*(a1 + 23) < 0)
      {
        v6 = a2[1];
        if (*(a2 + 23) >= 0)
        {
          v7 = *(a2 + 23);
        }

        else
        {
          a2 = *a2;
          v7 = v6;
        }

        sub_2711289F8(a1, a2, v7);
      }

      else if ((*(a2 + 23) & 0x80) != 0)
      {
        v8 = a2[1];
        v9 = *a2;

        sub_271128928(a1, v9, v8);
      }

      else
      {
        v2 = *a2;
        *(a1 + 16) = a2[2];
        *a1 = v2;
      }
    }
  }

  else if (*(a1 + 24))
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
      *(a1 + 24) = 0;
    }

    else
    {
      *(a1 + 24) = 0;
    }
  }

  else if (*(a2 + 23) < 0)
  {
    sub_271127178(a1, *a2, a2[1]);
    *(a1 + 24) = 1;
  }

  else
  {
    v3 = *a2;
    *(a1 + 16) = a2[2];
    *a1 = v3;
    *(a1 + 24) = 1;
  }
}

uint64_t sub_2711DC024(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_271135560();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
  {
    v5 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v11 = 32 * ((*(a1 + 8) - *a1) >> 5);
  sub_271135578(v11, a2);
  v6 = 96 * v2 + 96;
  v7 = *(a1 + 8);
  v8 = v11 + *a1 - v7;
  sub_2711DC160(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v6;
}

void sub_2711DC14C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2711DC24C(va);
  _Unwind_Resume(a1);
}

void sub_2711DC160(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v7 = a4;
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      sub_271135578(a4, v6);
      v6 += 6;
      a4 = v7 + 96;
      v7 += 96;
    }

    while (v6 != a3);
    do
    {
      if (*(v5 + 80) == 1 && *(v5 + 55) < 0)
      {
        operator delete(*(v5 + 4));
        if (*(v5 + 24) == 1)
        {
LABEL_9:
          if (*(v5 + 23) < 0)
          {
            operator delete(*v5);
          }
        }
      }

      else if (*(v5 + 24) == 1)
      {
        goto LABEL_9;
      }

      v5 += 6;
    }

    while (v5 != a3);
  }
}

uint64_t sub_2711DC24C(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;
    if (*(i - 16) == 1 && *(i - 41) < 0)
    {
      operator delete(*(i - 64));
      if (*(i - 72) != 1)
      {
        continue;
      }
    }

    else if (*(i - 72) != 1)
    {
      continue;
    }

    if (*(i - 73) < 0)
    {
      operator delete(*(i - 96));
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2711DC4BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711DC74C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

std::logic_error *sub_2711DC7A8(std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "SharedData is null");
  result->__vftable = (MEMORY[0x277D828F8] + 16);
  return result;
}

void sub_2711DC868(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28812E488;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2711DC8C4(uint64_t a1)
{
  sub_27112F8A0(a1);
  v2 = *(a1 + 64);
  if (!v2 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  return a1;
}

uint64_t sub_2711DC948(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void sub_2711DCD04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2711DCD58(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_2711DD158(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_271120DA8();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

size_t sub_2711DCE58(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28812E4E0[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_2711DCF4C(uint64_t *a1, uint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v18 + 7) = *(a2 + 15);
  v4 = *a2;
  v18[0] = *(a2 + 8);
  v3 = v18[0];
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v13 = v4;
  *v14 = v3;
  *&v14[7] = *(v18 + 7);
  v15 = v5;
  memset(v18, 0, 15);
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v17 = v7;
  if (v7)
  {
    memmove(&__p, v6, v7);
    *(&__p + v8) = 0;
    v9 = *(v2 + 24);
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v9 = *(v2 + 24);
  if (v9 != -1)
  {
LABEL_8:
    (off_28812E4E0[v9])(&v12, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_2711309E8(v2, &v13, 2uLL);
  *(v2 + 24) = 2;
  if (v17 < 0)
  {
    operator delete(__p);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
LABEL_11:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v13);
  v11 = *MEMORY[0x277D85DE8];
}

void sub_2711DD10C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2711DD158(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_271135560();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_2711DD2F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

void sub_2711DD308(char **a1, int **a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = **a2;
  if (v6)
  {
    sub_271120E64(a2[1], ", ", 2);
    v5 = *a2;
    v6 = **a2;
  }

  v8 = a2[1];
  v7 = a2[2];
  *v5 = v6 + 1;
  v9 = &v7[4 * v6];
  v10 = *(v9 + 1);
  if (v10 <= 0x7FFFFFFFFFFFFFF7)
  {
    v11 = *v9;
    if (v10 >= 0x17)
    {
      operator new();
    }

    v28 = *(v9 + 1);
    if (v10)
    {
      memmove(&__dst, v11, v10);
    }

    *(&__dst + v10) = 0;
    if ((v28 & 0x80u) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    if ((v28 & 0x80u) == 0)
    {
      v13 = v28;
    }

    else
    {
      v13 = v27;
    }

    sub_271120E64(v8, p_dst, v13);
    if (v28 < 0)
    {
      operator delete(__dst);
    }

    sub_271120E64(v8, " = ", 3);
    v24 = a2[1];
    __dst = v4;
    v27 = v4 + 24;
    sub_2711DD6A8(&v25, &v24, &__dst);
    v14 = a1[1];
    v15 = *a2;
    v16 = **a2;
    if (v16)
    {
      sub_271120E64(a2[1], ", ", 2);
      v15 = *a2;
      v16 = **a2;
    }

    v18 = a2[1];
    v17 = a2[2];
    *v15 = v16 + 1;
    v19 = &v17[4 * v16];
    v20 = *(v19 + 1);
    if (v20 <= 0x7FFFFFFFFFFFFFF7)
    {
      v21 = *v19;
      if (v20 < 0x17)
      {
        v28 = *(v19 + 1);
        if (v20)
        {
          memmove(&__dst, v21, v20);
        }

        *(&__dst + v20) = 0;
        if ((v28 & 0x80u) == 0)
        {
          v22 = &__dst;
        }

        else
        {
          v22 = __dst;
        }

        if ((v28 & 0x80u) == 0)
        {
          v23 = v28;
        }

        else
        {
          v23 = v27;
        }

        sub_271120E64(v18, v22, v23);
        if (v28 < 0)
        {
          operator delete(__dst);
        }

        sub_271120E64(v18, " = ", 3);
        __dst = a2[1];
        sub_27114D048();
      }

      operator new();
    }
  }

  sub_271120DA8();
}

void sub_2711DD684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2711DD6A8(uint64_t a1, void **a2, uint64_t a3)
{
  sub_271120E64(*a2, "{", 1);
  v5 = *(*a3 + 23);
  if (v5 >= 0)
  {
    v6 = *a3;
  }

  else
  {
    v6 = **a3;
  }

  if (v5 >= 0)
  {
    v7 = *(*a3 + 23);
  }

  else
  {
    v7 = *(*a3 + 8);
  }

  sub_271120E64(*a2, v6, v7);
  v8 = *(a3 + 8);
  sub_271120E64(*a2, ",", 1);
  std::to_string(&v12, *v8);
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v12;
  }

  else
  {
    v9 = v12.__r_.__value_.__r.__words[0];
  }

  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v12.__r_.__value_.__l.__size_;
  }

  sub_271120E64(*a2, v9, size);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  return sub_271120E64(*a2, "}", 1);
}

void sub_2711DD778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711DD9A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

size_t sub_2711DDA1C(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28812E4E0[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_2711DDB10(uint64_t *a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v19 + 7) = *(a2 + 15);
  v5 = *a2;
  v19[0] = *(a2 + 8);
  v4 = v19[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v14 = v5;
  *v15 = v4;
  *&v15[7] = *(v19 + 7);
  v16 = v6;
  memset(v19, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v18 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_28812E4E0[v10])(&v13, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_2711309E8(v3, &v14, 2uLL);
  *(v3 + 24) = 2;
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
LABEL_11:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_2711DDCD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711DDD2C(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_271135560();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_2711270EC();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_2711DDF6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

void sub_2711DDF88(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  v16 = a2;
  v6 = *a1;
  v5 = *(a1 + 8);
  if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if (v6)
    {
LABEL_4:
      v7 = sub_27180A200(a1);
      v12 = v7;
      if (v16 > 5u)
      {
        if (v16 <= 7u)
        {
          if (v16 == 6)
          {
            if ((v7 & 3) != 0)
            {
              v20 = 2;
              v21 = 2;
              *&v19 = 2;
              BytePtr = 4;
              sub_2711E6254(v22, &v12);
            }

            BytePtr = CFDataGetBytePtr(*a1);
            v18 = sub_27180A200(a1) >> 1;
            sub_2711EB698(&BytePtr);
          }

          if (v16 == 7)
          {
            if ((v7 & 7) != 0)
            {
              v20 = 2;
              v21 = 2;
              *&v19 = 4;
              BytePtr = 8;
              sub_2711E6254(v22, &v12);
            }

            BytePtr = CFDataGetBytePtr(*a1);
            v18 = sub_27180A200(a1) >> 2;
            sub_2711EB7CC(&BytePtr);
          }
        }

        else
        {
          switch(v16)
          {
            case 8u:
              if ((v7 & 0xF) != 0)
              {
                v20 = 2;
                v21 = 2;
                *&v19 = 8;
                BytePtr = 16;
                sub_2711E6254(v22, &v12);
              }

              BytePtr = CFDataGetBytePtr(*a1);
              v18 = sub_27180A200(a1) >> 3;
              sub_2711EB900(&BytePtr);
            case 0xBu:
              if ((v7 & 7) != 0)
              {
                v20 = 2;
                v21 = 2;
                *&v19 = 4;
                BytePtr = 8;
                sub_2711E6254(v22, &v12);
              }

              BytePtr = CFDataGetBytePtr(*a1);
              v18 = sub_27180A200(a1) >> 2;
              sub_2711EBA34(&BytePtr);
            case 0xCu:
              if ((v7 & 0xF) != 0)
              {
                v20 = 2;
                v21 = 2;
                *&v19 = 8;
                BytePtr = 16;
                sub_2711E6254(v22, &v12);
              }

              BytePtr = CFDataGetBytePtr(*a1);
              v18 = sub_27180A200(a1) >> 3;
              sub_2711EBB68(&BytePtr);
          }
        }
      }

      else
      {
        if (v16 <= 1u)
        {
          if (!v16)
          {
            if ((v7 & 1) == 0)
            {
              BytePtr = CFDataGetBytePtr(*a1);
              v18 = sub_27180A200(a1);
              sub_2711E8CC0(&BytePtr);
            }

            v20 = 2;
            v21 = 2;
            *&v19 = 1;
            BytePtr = 2;
            sub_2711E6254(v22, &v12);
          }

          if ((v7 & 3) != 0)
          {
            v20 = 2;
            v21 = 2;
            *&v19 = 2;
            BytePtr = 4;
            sub_2711E6254(v22, &v12);
          }

          BytePtr = CFDataGetBytePtr(*a1);
          v18 = sub_27180A200(a1) >> 1;
          sub_2711EB1C4(&BytePtr);
        }

        switch(v16)
        {
          case 2u:
            if ((v7 & 7) != 0)
            {
              v20 = 2;
              v21 = 2;
              *&v19 = 4;
              BytePtr = 8;
              sub_2711E6254(v22, &v12);
            }

            BytePtr = CFDataGetBytePtr(*a1);
            v18 = sub_27180A200(a1) >> 2;
            sub_2711EB310(&BytePtr);
          case 3u:
            if ((v7 & 0xF) != 0)
            {
              v20 = 2;
              v21 = 2;
              *&v19 = 8;
              BytePtr = 16;
              sub_2711E6254(v22, &v12);
            }

            BytePtr = CFDataGetBytePtr(*a1);
            v18 = sub_27180A200(a1) >> 3;
            sub_2711EB444(&BytePtr);
          case 5u:
            if ((v7 & 1) == 0)
            {
              BytePtr = CFDataGetBytePtr(*a1);
              v18 = sub_27180A200(a1);
              sub_2711EB578(&BytePtr);
            }

            v20 = 2;
            v21 = 2;
            *&v19 = 1;
            BytePtr = 2;
            sub_2711E6254(v22, &v12);
        }
      }

      sub_27183428C(v16);
    }
  }

  else if (v6)
  {
    goto LABEL_4;
  }

  LOBYTE(v13) = 0;
  v15 = 0;
  sub_271369B1C(&v13, &v23);
  *a3 = v23;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v33 != 1)
  {
    *(a3 + 544) = 0;
    goto LABEL_26;
  }

  *(a3 + 40) = 0;
  v8 = v26;
  if (v26 == 1)
  {
    *(a3 + 16) = __p;
    *(a3 + 32) = v25;
    v25 = 0;
    __p = 0uLL;
    *(a3 + 40) = 1;
    *(a3 + 48) = 0;
    v9 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v32 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_23:
    v10 = v29;
    *(v9 + 16) = v28;
    *v9 = v27;
    v27 = 0uLL;
    *(a3 + 72) = v10;
    *(a3 + 80) = v30;
    *(a3 + 96) = v31;
    v28 = 0;
    v30 = 0uLL;
    v31 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    *(a3 + 544) = 0;
    if (!v8)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  *(a3 + 48) = 0;
  v9 = a3 + 48;
  *(a3 + 104) = 0;
  if (v32)
  {
    goto LABEL_23;
  }

LABEL_19:
  *(a3 + 112) = 1;
  *(a3 + 544) = 0;
  if (!v8)
  {
    goto LABEL_26;
  }

LABEL_24:
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

LABEL_26:
  if (v15 == 1 && v14 < 0)
  {
    operator delete(v13);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_2711DF030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  if (a29 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711DF2CC(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  v16 = a2;
  v6 = *a1;
  v5 = *(a1 + 8);
  if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if (v6)
    {
LABEL_4:
      v7 = sub_27180A200(a1);
      v12 = v7;
      if (v16 > 5u)
      {
        if (v16 <= 7u)
        {
          if (v16 == 6)
          {
            if (__ROR8__(0xAAAAAAAAAAAAAAABLL * v7, 1) >= 0x2AAAAAAAAAAAAAABuLL)
            {
              v20 = 3;
              v21 = 3;
              *&v19 = 2;
              BytePtr = 6;
              sub_2711E6254(v22, &v12);
            }

            BytePtr = CFDataGetBytePtr(*a1);
            v18 = sub_27180A200(a1) >> 1;
            sub_2711EB698(&BytePtr);
          }

          if (v16 == 7)
          {
            if (__ROR8__(0xAAAAAAAAAAAAAAABLL * v7, 2) >= 0x1555555555555556uLL)
            {
              v20 = 3;
              v21 = 3;
              *&v19 = 4;
              BytePtr = 12;
              sub_2711E6254(v22, &v12);
            }

            BytePtr = CFDataGetBytePtr(*a1);
            v18 = sub_27180A200(a1) >> 2;
            sub_2711EB7CC(&BytePtr);
          }
        }

        else
        {
          switch(v16)
          {
            case 8u:
              if (__ROR8__(0xAAAAAAAAAAAAAAABLL * v7, 3) >= 0xAAAAAAAAAAAAAABuLL)
              {
                v20 = 3;
                v21 = 3;
                *&v19 = 8;
                BytePtr = 24;
                sub_2711E6254(v22, &v12);
              }

              BytePtr = CFDataGetBytePtr(*a1);
              v18 = sub_27180A200(a1) >> 3;
              sub_2711EB900(&BytePtr);
            case 0xBu:
              if (__ROR8__(0xAAAAAAAAAAAAAAABLL * v7, 2) >= 0x1555555555555556uLL)
              {
                v20 = 3;
                v21 = 3;
                *&v19 = 4;
                BytePtr = 12;
                sub_2711E6254(v22, &v12);
              }

              BytePtr = CFDataGetBytePtr(*a1);
              v18 = sub_27180A200(a1) >> 2;
              sub_2711EBA34(&BytePtr);
            case 0xCu:
              if (__ROR8__(0xAAAAAAAAAAAAAAABLL * v7, 3) >= 0xAAAAAAAAAAAAAABuLL)
              {
                v20 = 3;
                v21 = 3;
                *&v19 = 8;
                BytePtr = 24;
                sub_2711E6254(v22, &v12);
              }

              BytePtr = CFDataGetBytePtr(*a1);
              v18 = sub_27180A200(a1) >> 3;
              sub_2711EBB68(&BytePtr);
          }
        }
      }

      else
      {
        if (v16 <= 1u)
        {
          if (!v16)
          {
            if (0xAAAAAAAAAAAAAAABLL * v7 >= 0x5555555555555556)
            {
              v20 = 3;
              v21 = 3;
              *&v19 = 1;
              BytePtr = 3;
              sub_2711E6254(v22, &v12);
            }

            BytePtr = CFDataGetBytePtr(*a1);
            v18 = sub_27180A200(a1);
            sub_2711E8CC0(&BytePtr);
          }

          if (__ROR8__(0xAAAAAAAAAAAAAAABLL * v7, 1) >= 0x2AAAAAAAAAAAAAABuLL)
          {
            v20 = 3;
            v21 = 3;
            *&v19 = 2;
            BytePtr = 6;
            sub_2711E6254(v22, &v12);
          }

          BytePtr = CFDataGetBytePtr(*a1);
          v18 = sub_27180A200(a1) >> 1;
          sub_2711EB1C4(&BytePtr);
        }

        switch(v16)
        {
          case 2u:
            if (__ROR8__(0xAAAAAAAAAAAAAAABLL * v7, 2) >= 0x1555555555555556uLL)
            {
              v20 = 3;
              v21 = 3;
              *&v19 = 4;
              BytePtr = 12;
              sub_2711E6254(v22, &v12);
            }

            BytePtr = CFDataGetBytePtr(*a1);
            v18 = sub_27180A200(a1) >> 2;
            sub_2711EB310(&BytePtr);
          case 3u:
            if (__ROR8__(0xAAAAAAAAAAAAAAABLL * v7, 3) >= 0xAAAAAAAAAAAAAABuLL)
            {
              v20 = 3;
              v21 = 3;
              *&v19 = 8;
              BytePtr = 24;
              sub_2711E6254(v22, &v12);
            }

            BytePtr = CFDataGetBytePtr(*a1);
            v18 = sub_27180A200(a1) >> 3;
            sub_2711EB444(&BytePtr);
          case 5u:
            if (0xAAAAAAAAAAAAAAABLL * v7 >= 0x5555555555555556)
            {
              v20 = 3;
              v21 = 3;
              *&v19 = 1;
              BytePtr = 3;
              sub_2711E6254(v22, &v12);
            }

            BytePtr = CFDataGetBytePtr(*a1);
            v18 = sub_27180A200(a1);
            sub_2711EB578(&BytePtr);
        }
      }

      sub_27183428C(v16);
    }
  }

  else if (v6)
  {
    goto LABEL_4;
  }

  LOBYTE(v13) = 0;
  v15 = 0;
  sub_271369B1C(&v13, &v23);
  *a3 = v23;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v33 != 1)
  {
    *(a3 + 544) = 0;
    goto LABEL_26;
  }

  *(a3 + 40) = 0;
  v8 = v26;
  if (v26 == 1)
  {
    *(a3 + 16) = __p;
    *(a3 + 32) = v25;
    v25 = 0;
    __p = 0uLL;
    *(a3 + 40) = 1;
    *(a3 + 48) = 0;
    v9 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v32 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_23:
    v10 = v29;
    *(v9 + 16) = v28;
    *v9 = v27;
    v27 = 0uLL;
    *(a3 + 72) = v10;
    *(a3 + 80) = v30;
    *(a3 + 96) = v31;
    v28 = 0;
    v30 = 0uLL;
    v31 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    *(a3 + 544) = 0;
    if (!v8)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  *(a3 + 48) = 0;
  v9 = a3 + 48;
  *(a3 + 104) = 0;
  if (v32)
  {
    goto LABEL_23;
  }

LABEL_19:
  *(a3 + 112) = 1;
  *(a3 + 544) = 0;
  if (!v8)
  {
    goto LABEL_26;
  }

LABEL_24:
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

LABEL_26:
  if (v15 == 1 && v14 < 0)
  {
    operator delete(v13);
  }

  v11 = *MEMORY[0x277D85DE8];
}