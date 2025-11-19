void sub_271434A00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271434A30(const void **a1@<X0>, std::string *a2@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = 7;
  strcpy(v11, "float64");
  sub_271851C68("cv3d::kit::cam::PixelOrigin::Center]", 35, &v13);
  sub_271851C68("2U]", 2, &v14);
  sub_2711309E8(__p, v11, 3uLL);
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

  if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_15:
    operator delete(v13.__r_.__value_.__l.__data_);
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_16:
    operator delete(v11[0]);
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14.__r_.__value_.__l.__data_);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_15;
  }

LABEL_11:
  if (v12 < 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_271434BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_27137F4D0(&a10);
  if (a30 < 0)
  {
    operator delete(__p);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a18 & 0x80000000) == 0)
      {
LABEL_8:
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a13);
      _Unwind_Resume(a1);
    }
  }

  else if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a19);
  if ((a18 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_271434C40()
{
  v2 = 0;
  v0 = 0u;
  v1 = 0u;
  operator new();
}

void sub_271435008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27173EA70(va);
  _Unwind_Resume(a1);
}

void sub_27143501C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27173EA70(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271435030(int *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 2)
    {
      goto LABEL_17;
    }

    v8 = a4;
    v13 = 2;
    (*(*a2 + 104))(a2, &v13);
    if (v13 >= 3)
    {
      v12 = v13;
      if ((atomic_load_explicit(&qword_280878B90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878B90))
      {
        sub_2714352C0();
      }

      sub_271847D5C(&stru_280878B78, v12, 2u);
    }

    v6 = *a1;
    a4 = v8;
  }

  v10 = a4 > 1 && v6 > 0;
  if (v10)
  {
    (*(*a2 + 16))(a2);
    goto LABEL_14;
  }

  if (a4 < 2)
  {
LABEL_17:
    sub_2714355D4();
  }

LABEL_14:
  (*(*a2 + 128))(a2, a3);
  (*(*a2 + 128))(a2, a3 + 4);
  (*(*a2 + 128))(a2, a3 + 8);
  (*(*a2 + 128))(a2, a3 + 12);
  (*(*a2 + 104))(a2, a3 + 16);
  result = (*(*a2 + 104))(a2, a3 + 20);
  if (v10)
  {
    return (*(*a2 + 24))(a2);
  }

  return result;
}

void sub_271435394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714353C4(const void **a1@<X0>, std::string *a2@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = 7;
  strcpy(v11, "float32");
  sub_271851C68("cv3d::kit::cam::PixelOrigin::Corner]", 35, &v13);
  sub_271851C68("2U]", 2, &v14);
  sub_2711309E8(__p, v11, 3uLL);
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

  if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_15:
    operator delete(v13.__r_.__value_.__l.__data_);
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_16:
    operator delete(v11[0]);
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14.__r_.__value_.__l.__data_);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_15;
  }

LABEL_11:
  if (v12 < 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_27143553C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_27137F4D0(&a10);
  if (a30 < 0)
  {
    operator delete(__p);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a18 & 0x80000000) == 0)
      {
LABEL_8:
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a13);
      _Unwind_Resume(a1);
    }
  }

  else if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a19);
  if ((a18 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_2714355D4()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  operator new();
}

void sub_27143597C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2715CA6A0(va);
  _Unwind_Resume(a1);
}

void sub_271435990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2715CA6A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2714359A4(int *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 2)
    {
      goto LABEL_17;
    }

    v8 = a4;
    v13 = 2;
    (*(*a2 + 104))(a2, &v13);
    if (v13 >= 3)
    {
      v12 = v13;
      if ((atomic_load_explicit(&qword_280878BB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878BB0))
      {
        sub_271435C34();
      }

      sub_271847D5C(&stru_280878B98, v12, 2u);
    }

    v6 = *a1;
    a4 = v8;
  }

  v10 = a4 > 1 && v6 > 0;
  if (v10)
  {
    (*(*a2 + 16))(a2);
    goto LABEL_14;
  }

  if (a4 < 2)
  {
LABEL_17:
    sub_271435F48();
  }

LABEL_14:
  (*(*a2 + 136))(a2, a3);
  (*(*a2 + 136))(a2, a3 + 8);
  (*(*a2 + 136))(a2, a3 + 16);
  (*(*a2 + 136))(a2, a3 + 24);
  (*(*a2 + 104))(a2, a3 + 32);
  result = (*(*a2 + 104))(a2, a3 + 36);
  if (v10)
  {
    return (*(*a2 + 24))(a2);
  }

  return result;
}

void sub_271435D08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271435D38(const void **a1@<X0>, std::string *a2@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = 7;
  strcpy(v11, "float64");
  sub_271851C68("cv3d::kit::cam::PixelOrigin::Corner]", 35, &v13);
  sub_271851C68("2U]", 2, &v14);
  sub_2711309E8(__p, v11, 3uLL);
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

  if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_15:
    operator delete(v13.__r_.__value_.__l.__data_);
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_16:
    operator delete(v11[0]);
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14.__r_.__value_.__l.__data_);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_15;
  }

LABEL_11:
  if (v12 < 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_271435EB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_27137F4D0(&a10);
  if (a30 < 0)
  {
    operator delete(__p);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a18 & 0x80000000) == 0)
      {
LABEL_8:
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a13);
      _Unwind_Resume(a1);
    }
  }

  else if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a19);
  if ((a18 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_271435F48()
{
  v2 = 0;
  v0 = 0u;
  v1 = 0u;
  operator new();
}

void sub_271436310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27173EA70(va);
  _Unwind_Resume(a1);
}

void sub_271436324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27173EA70(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271436338(int *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 2)
    {
      goto LABEL_8;
    }

    v8 = a4;
    v12 = 2;
    (*(*a2 + 104))(a2, &v12);
    if (v12 >= 3)
    {
      v11 = v12;
      if ((atomic_load_explicit(&qword_280878BD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878BD0))
      {
        sub_271436908();
      }

      sub_271847D5C(&stru_280878BB8, v11, 2u);
    }

    v6 = *a1;
    a4 = v8;
  }

  if (a4 >= 2 && v6 > 0)
  {
    (*(*a2 + 16))(a2);
    (*(*a2 + 128))(a2, a3);
    (*(*a2 + 128))(a2, a3 + 4);
    (*(*a2 + 128))(a2, a3 + 8);
    (*(*a2 + 128))(a2, a3 + 12);
    (*(*a2 + 128))(a2, a3 + 16);
    (*(*a2 + 128))(a2, a3 + 20);
    (*(*a2 + 128))(a2, a3 + 24);
    (*(*a2 + 128))(a2, a3 + 28);
    (*(*a2 + 128))(a2, a3 + 32);
    (*(*a2 + 104))(a2, a3 + 36);
    (*(*a2 + 104))(a2, a3 + 40);
    return (*(*a2 + 24))(a2);
  }

LABEL_8:
  if (a4 >= 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = a4;
  }

  return sub_2714366C0(a2, a3, v10);
}

uint64_t sub_2714366C0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 < 2)
  {
    sub_271436A0C();
  }

  (*(*a1 + 128))(a1, a2);
  (*(*a1 + 128))(a1, a2 + 4);
  (*(*a1 + 128))(a1, a2 + 8);
  (*(*a1 + 128))(a1, a2 + 12);
  (*(*a1 + 128))(a1, a2 + 16);
  (*(*a1 + 128))(a1, a2 + 20);
  (*(*a1 + 128))(a1, a2 + 24);
  (*(*a1 + 128))(a1, a2 + 28);
  (*(*a1 + 128))(a1, a2 + 32);
  (*(*a1 + 104))(a1, a2 + 36);
  v5 = *(*a1 + 104);

  return v5(a1, a2 + 40);
}

void sub_2714369DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271436A0C()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 0u;
  memset(v1, 0, sizeof(v1));
  operator new();
}

void sub_271436EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27173C6A8(va);
  _Unwind_Resume(a1);
}

void sub_271436ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27173C6A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271436EE4(int *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 2)
    {
      goto LABEL_8;
    }

    v8 = a4;
    v12 = 2;
    (*(*a2 + 104))(a2, &v12);
    if (v12 >= 3)
    {
      v11 = v12;
      if ((atomic_load_explicit(&qword_280878BF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878BF0))
      {
        sub_2714374B4();
      }

      sub_271847D5C(&stru_280878BD8, v11, 2u);
    }

    v6 = *a1;
    a4 = v8;
  }

  if (a4 >= 2 && v6 > 0)
  {
    (*(*a2 + 16))(a2);
    (*(*a2 + 136))(a2, a3);
    (*(*a2 + 136))(a2, a3 + 8);
    (*(*a2 + 136))(a2, a3 + 16);
    (*(*a2 + 136))(a2, a3 + 24);
    (*(*a2 + 136))(a2, a3 + 32);
    (*(*a2 + 136))(a2, a3 + 40);
    (*(*a2 + 136))(a2, a3 + 48);
    (*(*a2 + 136))(a2, a3 + 56);
    (*(*a2 + 136))(a2, a3 + 64);
    (*(*a2 + 104))(a2, a3 + 72);
    (*(*a2 + 104))(a2, a3 + 76);
    return (*(*a2 + 24))(a2);
  }

LABEL_8:
  if (a4 >= 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = a4;
  }

  return sub_27143726C(a2, a3, v10);
}

uint64_t sub_27143726C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 < 2)
  {
    sub_2714375B8();
  }

  (*(*a1 + 136))(a1, a2);
  (*(*a1 + 136))(a1, a2 + 8);
  (*(*a1 + 136))(a1, a2 + 16);
  (*(*a1 + 136))(a1, a2 + 24);
  (*(*a1 + 136))(a1, a2 + 32);
  (*(*a1 + 136))(a1, a2 + 40);
  (*(*a1 + 136))(a1, a2 + 48);
  (*(*a1 + 136))(a1, a2 + 56);
  (*(*a1 + 136))(a1, a2 + 64);
  (*(*a1 + 104))(a1, a2 + 72);
  v5 = *(*a1 + 104);

  return v5(a1, a2 + 76);
}

void sub_271437588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714375B8()
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 0u;
  v4 = 0u;
  v1 = 0u;
  v2 = 0u;
  v0 = 0u;
  operator new();
}

void sub_271437AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27173C824(va);
  _Unwind_Resume(a1);
}

void sub_271437AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27173C824(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271437ACC(int *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 2)
    {
      goto LABEL_8;
    }

    v8 = a4;
    v12 = 2;
    (*(*a2 + 104))(a2, &v12);
    if (v12 >= 3)
    {
      v11 = v12;
      if ((atomic_load_explicit(&qword_280878C10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878C10))
      {
        sub_27143809C();
      }

      sub_271847D5C(&stru_280878BF8, v11, 2u);
    }

    v6 = *a1;
    a4 = v8;
  }

  if (a4 >= 2 && v6 > 0)
  {
    (*(*a2 + 16))(a2);
    (*(*a2 + 128))(a2, a3);
    (*(*a2 + 128))(a2, a3 + 4);
    (*(*a2 + 128))(a2, a3 + 8);
    (*(*a2 + 128))(a2, a3 + 12);
    (*(*a2 + 128))(a2, a3 + 16);
    (*(*a2 + 128))(a2, a3 + 20);
    (*(*a2 + 128))(a2, a3 + 24);
    (*(*a2 + 128))(a2, a3 + 28);
    (*(*a2 + 128))(a2, a3 + 32);
    (*(*a2 + 104))(a2, a3 + 36);
    (*(*a2 + 104))(a2, a3 + 40);
    return (*(*a2 + 24))(a2);
  }

LABEL_8:
  if (a4 >= 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = a4;
  }

  return sub_271437E54(a2, a3, v10);
}

uint64_t sub_271437E54(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 < 2)
  {
    sub_2714381A0();
  }

  (*(*a1 + 128))(a1, a2);
  (*(*a1 + 128))(a1, a2 + 4);
  (*(*a1 + 128))(a1, a2 + 8);
  (*(*a1 + 128))(a1, a2 + 12);
  (*(*a1 + 128))(a1, a2 + 16);
  (*(*a1 + 128))(a1, a2 + 20);
  (*(*a1 + 128))(a1, a2 + 24);
  (*(*a1 + 128))(a1, a2 + 28);
  (*(*a1 + 128))(a1, a2 + 32);
  (*(*a1 + 104))(a1, a2 + 36);
  v5 = *(*a1 + 104);

  return v5(a1, a2 + 40);
}

void sub_271438170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714381A0()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 0u;
  memset(v1, 0, sizeof(v1));
  operator new();
}

void sub_271438650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27173C6A8(va);
  _Unwind_Resume(a1);
}

void sub_271438664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27173C6A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271438678(int *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 2)
    {
      goto LABEL_8;
    }

    v8 = a4;
    v12 = 2;
    (*(*a2 + 104))(a2, &v12);
    if (v12 >= 3)
    {
      v11 = v12;
      if ((atomic_load_explicit(&qword_280878C30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878C30))
      {
        sub_271438C48();
      }

      sub_271847D5C(&stru_280878C18, v11, 2u);
    }

    v6 = *a1;
    a4 = v8;
  }

  if (a4 >= 2 && v6 > 0)
  {
    (*(*a2 + 16))(a2);
    (*(*a2 + 136))(a2, a3);
    (*(*a2 + 136))(a2, a3 + 8);
    (*(*a2 + 136))(a2, a3 + 16);
    (*(*a2 + 136))(a2, a3 + 24);
    (*(*a2 + 136))(a2, a3 + 32);
    (*(*a2 + 136))(a2, a3 + 40);
    (*(*a2 + 136))(a2, a3 + 48);
    (*(*a2 + 136))(a2, a3 + 56);
    (*(*a2 + 136))(a2, a3 + 64);
    (*(*a2 + 104))(a2, a3 + 72);
    (*(*a2 + 104))(a2, a3 + 76);
    return (*(*a2 + 24))(a2);
  }

LABEL_8:
  if (a4 >= 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = a4;
  }

  return sub_271438A00(a2, a3, v10);
}

uint64_t sub_271438A00(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 < 2)
  {
    sub_271438D4C();
  }

  (*(*a1 + 136))(a1, a2);
  (*(*a1 + 136))(a1, a2 + 8);
  (*(*a1 + 136))(a1, a2 + 16);
  (*(*a1 + 136))(a1, a2 + 24);
  (*(*a1 + 136))(a1, a2 + 32);
  (*(*a1 + 136))(a1, a2 + 40);
  (*(*a1 + 136))(a1, a2 + 48);
  (*(*a1 + 136))(a1, a2 + 56);
  (*(*a1 + 136))(a1, a2 + 64);
  (*(*a1 + 104))(a1, a2 + 72);
  v5 = *(*a1 + 104);

  return v5(a1, a2 + 76);
}

void sub_271438D1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271438D4C()
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 0u;
  v4 = 0u;
  v1 = 0u;
  v2 = 0u;
  v0 = 0u;
  operator new();
}

void sub_271439238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27173C824(va);
  _Unwind_Resume(a1);
}

void sub_27143924C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27173C824(va);
  _Unwind_Resume(a1);
}

int *sub_271439260(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  sub_271433BB0(a1, &v46);
  result = sub_271738768(a2);
  v5 = *a2;
  if (*a2 > 99)
  {
    if (v5 > 109)
    {
      if (v5 == 110)
      {
        v42 = *(a2 + 8);
        v41 = a2 + 8;
        v40 = v42;
        if (!v42)
        {
          goto LABEL_45;
        }

        v43 = v40(3, v41, 0, &unk_28811C9E0, &unk_271891D40);
        if (!v43)
        {
          goto LABEL_45;
        }

        v44 = *a1;
        v46 = *(a1 + 8);
        v45 = v46;
        v49 = 2;
        (*(v44 + 104))(a1, &v49);
        if (v45 < 1)
        {
          return sub_271437E54(a1, v43, v49);
        }

        else
        {
          return sub_271437ACC(&v46, a1, v43, v49);
        }
      }

      else if (v5 == 111)
      {
        v22 = *(a2 + 8);
        v21 = a2 + 8;
        v20 = v22;
        if (!v22)
        {
          goto LABEL_45;
        }

        v23 = v20(3, v21, 0, &unk_28811CA10, &unk_271891E18);
        if (!v23)
        {
          goto LABEL_45;
        }

        v24 = *a1;
        v46 = *(a1 + 8);
        v25 = v46;
        v49 = 2;
        (*(v24 + 104))(a1, &v49);
        if (v25 < 1)
        {
          return sub_271438A00(a1, v23, v49);
        }

        else
        {
          return sub_271438678(&v46, a1, v23, v49);
        }
      }
    }

    else if (v5 == 100)
    {
      v32 = *(a2 + 8);
      v31 = a2 + 8;
      v30 = v32;
      if (!v32)
      {
        goto LABEL_45;
      }

      v33 = v30(3, v31, 0, &unk_28811C9C8, &unk_271891B90);
      if (!v33)
      {
        goto LABEL_45;
      }

      v34 = *a1;
      v46 = *(a1 + 8);
      v35 = v46;
      v49 = 2;
      (*(v34 + 104))(a1, &v49);
      if (v35 < 1)
      {
        return sub_2714366C0(a1, v33, v49);
      }

      else
      {
        return sub_271436338(&v46, a1, v33, v49);
      }
    }

    else if (v5 == 101)
    {
      v12 = *(a2 + 8);
      v11 = a2 + 8;
      v10 = v12;
      if (!v12)
      {
        goto LABEL_45;
      }

      v13 = v10(3, v11, 0, &unk_28811C9F8, &unk_271891C68);
      if (!v13)
      {
        goto LABEL_45;
      }

      v14 = *a1;
      v46 = *(a1 + 8);
      v15 = v46;
      v49 = 2;
      (*(v14 + 104))(a1, &v49);
      if (v15 < 1)
      {
        return sub_27143726C(a1, v13, v49);
      }

      else
      {
        return sub_271436EE4(&v46, a1, v13, v49);
      }
    }
  }

  else
  {
    if (v5 <= 9)
    {
      if (v5)
      {
        if (v5 != 1)
        {
          return result;
        }

        v8 = *(a2 + 8);
        v7 = a2 + 8;
        v6 = v8;
        if (v8)
        {
          v9 = v6(3, v7, 0, &unk_28811CA58, &unk_271891910);
          if (v9)
          {
            v46 = "camera";
            v47 = 6;
            v48 = v9;
            return sub_271433628(a1, &v46);
          }
        }
      }

      else
      {
        v28 = *(a2 + 8);
        v27 = a2 + 8;
        v26 = v28;
        if (v28)
        {
          v29 = v26(3, v27, 0, &unk_28811CA28, &unk_27189183C);
          if (v29)
          {
            v46 = "camera";
            v47 = 6;
            v48 = v29;
            return sub_271433450(a1, &v46);
          }
        }
      }

LABEL_45:
      sub_27141B114();
    }

    if (v5 == 10)
    {
      v38 = *(a2 + 8);
      v37 = a2 + 8;
      v36 = v38;
      if (v38)
      {
        v39 = v36(3, v37, 0, &unk_28811CA40, &unk_2718919E4);
        if (v39)
        {
          v46 = "camera";
          v47 = 6;
          v48 = v39;
          return sub_271433800(a1, &v46);
        }
      }

      goto LABEL_45;
    }

    if (v5 == 11)
    {
      v18 = *(a2 + 8);
      v17 = a2 + 8;
      v16 = v18;
      if (v18)
      {
        v19 = v16(3, v17, 0, &unk_28811CA70, &unk_271891AB8);
        if (v19)
        {
          v46 = "camera";
          v47 = 6;
          v48 = v19;
          return sub_2714339D8(a1, &v46);
        }
      }

      goto LABEL_45;
    }
  }

  return result;
}

void sub_271439780(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v5[25] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *a3;
  sub_27113523C(v5, a3 + 1);
  operator new();
}

void sub_271439BB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void *);
  (*(*v2 + 8))(v2);
  sub_2711F7EF0(va);
  sub_271399200(va1);
  _Unwind_Resume(a1);
}

void sub_271439BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271399200(va);
  _Unwind_Resume(a1);
}

void sub_271439C1C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_27182791C(a2 + 48, (a2 + 40));
  v5 = sub_2718289B0(a2);
  *(a2 + 40) = v5;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v5 < 2u)
  {
    *(a2 + 72) = "version";
    *(a2 + 80) = 7;
    *(a2 + 88) = 1;
    if (*"version" == 1936876918 && *"sion" == 1852795251)
    {
      *(a2 + 96) = 2;
      *(a2 + 100) = 1;
      *(a2 + 88) = 0;
      v10 = a3[1];
      v13 = *a3;
      v14 = v10;
      if (!v10)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  LOBYTE(v13) = 6;
  v14 = 2;
  v7 = sub_2718289B0(a2);
  v8 = *v7;
  *v7 = 6;
  LOBYTE(v13) = v8;
  v9 = v7[1];
  v7[1] = v14;
  v14 = v9;
  sub_2715CC40C(&v14, v8);
  v10 = a3[1];
  v13 = *a3;
  v14 = v10;
  if (v10)
  {
LABEL_9:
    atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
  }

LABEL_10:
  sub_271439DE0(a2, &v13, 2u);
  v11 = v14;
  if (v14 && !atomic_fetch_add((v14 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = *(a2 + 56);
  *(a2 + 40) = *(v12 - 8);
  *(a2 + 56) = v12 - 8;
  if (*(a2 + 88) == 1)
  {
    *(a2 + 88) = 0;
  }
}

void sub_271439DE0(uint64_t a1, void *a2, unsigned int a3)
{
  if (a3 > 2)
  {
    v9 = sub_2715CA638(a2);
    sub_2715D17E4(v10, v9);
  }

  if (**(a1 + 40) <= 1u)
  {
    v4 = *(a1 + 88);
    *(a1 + 72) = "dictionary";
    *(a1 + 80) = 10;
    if ((v4 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v5 = sub_2715CA5C8(a2);
  sub_2715D5748(v10, *v5);
  v6 = sub_2718289B0(a1);
  v7 = *v6;
  *v6 = v10[0];
  v10[0] = v7;
  v8 = v6[1];
  v6[1] = v11;
  v11 = v8;
  sub_2715CC40C(&v11, v7);
}

void sub_271439F30(uint64_t a1, uint64_t a2)
{
  if (**(a1 + 40) <= 1u)
  {
    v2 = *(a1 + 88);
    *(a1 + 72) = "dictionary";
    *(a1 + 80) = 10;
    if ((v2 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_271150BA0(v3, a2);
}

void sub_27143A07C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_2715CC40C((v3 + 8), v2);
  sub_27181A92C(va1);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27143A0A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27143A0B8(uint64_t a1, void *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = sub_2715CA638(v4);
  sub_2715D17E4(v5, v3);
}

void sub_27143A1BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_27112F828(&a11);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_27143A1EC(uint64_t a1, unint64_t a2)
{
  v32 = 0u;
  memset(v31, 0, sizeof(v31));
  sub_2715D1938(&v27, a2);
  v3 = v27;
  *&v31[0] = v27;
  *(v31 + 8) = v28;
  v4 = v29;
  *(&v31[1] + 1) = v29;
  v26 = v30;
  v32 = v30;
  v5 = v28;
  v6 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v27) >> 3);
  v7 = *(a1 + 24);
  if (*(v7 + 40) == 1)
  {
    v27 = (v7 + 16);
    sub_271846AEC(&v27, v6);
  }

  else
  {
    sub_271846E00((v7 + 8));
  }

  v8 = *(a1 + 24);
  if (*(v8 + 40) == 1)
  {
    v27 = (v8 + 16);
    if (v5 != v3)
    {
      v9 = v3;
      do
      {
        sub_271847238(&v27, v9);
        v9 += 3;
      }

      while (v9 != v5);
    }
  }

  else if (v5 != v3)
  {
    v10 = v3;
    do
    {
      sub_271847654((v8 + 8), v10);
      v10 += 3;
    }

    while (v10 != v5);
  }

  v11 = v26;
  v12 = *(a1 + 24);
  if (*(v12 + 40) == 1)
  {
    v27 = (v12 + 16);
    sub_271846AEC(&v27, 0xAAAAAAAAAAAAAAABLL * (v26 - v4));
  }

  else
  {
    sub_271846E00((v12 + 8));
  }

  if (v4 == v26)
  {
    if (!v4)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v13 = v4;
  do
  {
    v14 = *(a1 + 24);
    if (*(v14 + 40) == 1)
    {
      v27 = (v14 + 16);
      sub_2718460EC(&v27, 2u);
    }

    else
    {
      sub_27184636C(&v27, (v14 + 8));
    }

    sub_271840ADC(*(a1 + 24));
    sub_27143A654(a1, v13);
    v15 = *(a1 + 24);
    v16 = *(v15[11] - 8);
    sub_2718404E0(v15 + 6, v15[2] - v16 - 9);
    v17 = v15[6];
    if (v17)
    {
      memmove((v15[3] + v16), v15[7], v17);
    }

    v15[6] = 0;
    v18 = v15[10];
    v19 = v15[11] - 8;
    v15[11] = v19;
    if (v18 == v19)
    {
      v20 = *v15;
      v22 = v15[2];
      v21 = v15[3];
      std::ostream::write();
      if (*(v15 + 40) == 1)
      {
        free(v15[3]);
        *(v15 + 40) = 0;
      }
    }

    v13 += 3;
  }

  while (v13 != v26);
  if (v4)
  {
    do
    {
      v23 = *(v11 - 1);
      if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v23->__on_zero_shared)(v23);
        std::__shared_weak_count::__release_weak(v23);
      }

      v11 -= 3;
    }

    while (v11 != v4);
    v4 = *(&v31[1] + 1);
    v3 = *&v31[0];
LABEL_34:
    operator delete(v4);
  }

LABEL_35:
  if (v3)
  {
    v24 = *(&v31[0] + 1);
    while (v24 != v3)
    {
      v25 = *(v24 - 1);
      v24 -= 3;
      if (v25 < 0)
      {
        operator delete(*v24);
      }
    }

    operator delete(v3);
  }
}

void sub_27143A4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_27143A4F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_27143A508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_27143A51C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_27143A530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_27143A544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void ***sub_27143A558(void ***a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[4];
    v4 = a1[3];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 3;
      }

      while (v3 != v2);
      v4 = a1[3];
    }

    a1[4] = v2;
    operator delete(v4);
  }

  v6 = *a1;
  if (*a1)
  {
    v7 = a1[1];
    v8 = *a1;
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 1);
        v7 -= 3;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = *a1;
    }

    a1[1] = v6;
    operator delete(v8);
  }

  return a1;
}

void sub_27143A654(uint64_t a1, const void **a2)
{
  v4 = *a2;
  LOWORD(v17) = *a2;
  v5 = *(a1 + 24);
  if (*(v5 + 40) != 1)
  {
    if (v4 > 0x7F)
    {
      if (v4 > 0xFF)
      {
        __p.__r_.__value_.__s.__data_[0] = -51;
        *(&__p.__r_.__value_.__l.__data_ + 1) = __rev16(v4);
        v15 = *(v5 + 8);
        std::ostream::write();
        v6 = *a2;
        if (v6 <= 1)
        {
          goto LABEL_9;
        }
      }

      else
      {
        __p.__r_.__value_.__s.__data_[0] = -52;
        __p.__r_.__value_.__s.__data_[1] = v4;
        v9 = *(v5 + 8);
        std::ostream::write();
        v6 = *a2;
        if (v6 <= 1)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      __p.__r_.__value_.__s.__data_[0] = v4;
      v7 = *(v5 + 8);
      std::ostream::write();
      v6 = *a2;
      if (v6 <= 1)
      {
        goto LABEL_9;
      }
    }

LABEL_3:
    if (v6 != 2)
    {
      if (v6 == 3)
      {
        sub_27143B290(a2 + 1);
      }

      if (v6 == 4)
      {
        sub_27143B4FC(a2 + 1);
      }

      goto LABEL_34;
    }

    v10 = a2[1];
    if (v10 && (TypeID = CFBooleanGetTypeID(), CFGetTypeID(v10) == TypeID))
    {
      v12 = CFBooleanGetValue(v10) != 0;
      LOWORD(v17) = v12 | 0x100;
      v13 = *(a1 + 24);
      if (*(v13 + 40) != 1)
      {
LABEL_19:
        if (v12)
        {
          v14 = -61;
        }

        else
        {
          v14 = -62;
        }

        __p.__r_.__value_.__s.__data_[0] = v14;
        v16 = *(v13 + 8);
        std::ostream::write();
        return;
      }
    }

    else
    {
      v12 = 0;
      LOWORD(v17) = 0;
      v13 = *(a1 + 24);
      if (*(v13 + 40) != 1)
      {
        goto LABEL_19;
      }
    }

    __p.__r_.__value_.__r.__words[0] = v13 + 16;
    sub_2718470CC(&__p, &v17);
    return;
  }

  __p.__r_.__value_.__r.__words[0] = v5 + 16;
  sub_2718459EC(&__p, &v17);
  v6 = *a2;
  if (v6 > 1)
  {
    goto LABEL_3;
  }

LABEL_9:
  if (!v6)
  {
    sub_27143B19C(a2 + 1);
  }

  if (v6 != 1)
  {
LABEL_34:
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Foundation/FoundationIO/include/Kit/FoundationIO/DictionaryRefIO.h", 281, "", 0, "invalid value type identifier", 0x1DuLL, sub_271852CA8);
    abort();
  }

  sub_2718098EC(a2[1], &__p);
  v8 = *(a1 + 24);
  if (*(v8 + 40) == 1)
  {
    v17 = (v8 + 16);
    sub_271847238(&v17, &__p.__r_.__value_.__l.__data_);
  }

  else
  {
    sub_271847654((v8 + 8), &__p);
  }

  if (v19 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_27143B060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112F828(v6 - 80);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27143B07C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_27112F828(va);
  sub_27112F828(v8 - 80);
  _Unwind_Resume(a1);
}

void sub_27143B098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26)
{
  if (a26 == 1 && a25 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27143B19C(const void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    TypeID = CFNumberGetTypeID();
    if (CFGetTypeID(v1) == TypeID)
    {
      CFRetain(v1);
      sub_27143B84C(&v3, v1);
    }
  }

  sub_27143B84C(&v3, 0);
}

void sub_27143B290(const void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    TypeID = CFArrayGetTypeID();
    if (CFGetTypeID(v1) == TypeID)
    {
      CFRetain(v1);
      sub_27143BCB8(&v3, v1);
    }
  }

  sub_27143BCB8(&v3, 0);
}

void *sub_27143B384(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      operator new();
    }

    sub_271135560();
  }

  return result;
}

void sub_27143B4FC(const void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    TypeID = CFDictionaryGetTypeID();
    if (CFGetTypeID(v1) == TypeID)
    {
      CFRetain(v1);
      sub_271150CCC(&v3, v1);
    }
  }

  sub_271150CCC(&v3, 0);
}

void sub_27143B808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27143BA50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_27112F828(v15);
  _Unwind_Resume(a1);
}

void sub_27143BAD0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27143BB08(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_27143BB2C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIPK10__CFNumberEC1ES5_EUlS5_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIPK10__CFNumberEC1ES5_EUlS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIPK10__CFNumberEC1ES5_EUlS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIPK10__CFNumberEC1ES5_EUlS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_27143BB8C(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    CFRetain(v3);
  }

  sub_27143B84C(&v4, v3);
}

void sub_27143BEBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_27112F828(v15);
  _Unwind_Resume(a1);
}

void sub_27143BF3C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27143BF74(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_27143BF98(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIPK9__CFArrayEC1ES5_EUlS5_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIPK9__CFArrayEC1ES5_EUlS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIPK9__CFArrayEC1ES5_EUlS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIPK9__CFArrayEC1ES5_EUlS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_27143BFF8(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_271135560();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
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

  v6 = 8 * ((a1[1] - *a1) >> 3);
  *v6 = *a2;
  *(v6 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v7 = 24 * v2 + 24;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = v6 + *a1 - v9;
    do
    {
      *v12 = *v11;
      *(v12 + 8) = *(v11 + 1);
      v11[1] = 0;
      v11[2] = 0;
      v11 += 3;
      v12 += 24;
    }

    while (v11 != v9);
    do
    {
      v13 = v8[2];
      if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
      }

      v8 += 3;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_27143C19C(void *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  operator new();
}

void sub_27143C210(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    CFRelease(v1);
  }

  __cxa_rethrow();
}

void sub_27143C240(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27143C278(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_27143C29C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIPKvEC1ES4_EUlS4_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIPKvEC1ES4_EUlS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIPKvEC1ES4_EUlS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIPKvEC1ES4_EUlS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_27143C2FC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_2715DF0F0(a2 + 48, (a2 + 40));
  v5 = sub_27182815C(a2);
  *(a2 + 40) = v5;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v5 < 2u)
  {
    *(a2 + 72) = "version";
    *(a2 + 80) = 7;
    *(a2 + 88) = 1;
    if (*"version" == 1936876918 && *"sion" == 1852795251)
    {
      *(a2 + 96) = 2;
      *(a2 + 100) = 1;
      *(a2 + 88) = 0;
      v10 = a3[1];
      v13 = *a3;
      v14 = v10;
      if (!v10)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  LOBYTE(v13) = 6;
  v14 = 2;
  v7 = sub_27182815C(a2);
  v8 = *v7;
  *v7 = 6;
  LOBYTE(v13) = v8;
  v9 = v7[1];
  v7[1] = v14;
  v14 = v9;
  sub_2715CA870(&v14, v8);
  v10 = a3[1];
  v13 = *a3;
  v14 = v10;
  if (v10)
  {
LABEL_9:
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_10:
  sub_27143C4C0(a2, &v13, 2u);
  v11 = v14;
  if (v14 && !atomic_fetch_add((v14 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = *(a2 + 56);
  *(a2 + 40) = *(v12 - 8);
  *(a2 + 56) = v12 - 8;
  if (*(a2 + 88) == 1)
  {
    *(a2 + 88) = 0;
  }
}

void sub_27143C4C0(uint64_t a1, void *a2, unsigned int a3)
{
  if (a3 > 2)
  {
    v9 = sub_2715CA638(a2);
    sub_2715D17E4(v10, v9);
  }

  if (**(a1 + 40) <= 1u)
  {
    v4 = *(a1 + 88);
    *(a1 + 72) = "dictionary";
    *(a1 + 80) = 10;
    if ((v4 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v5 = sub_2715CA558(a2);
  sub_2715D7FA4(v10, *v5);
  v6 = sub_27182815C(a1);
  v7 = *v6;
  *v6 = v10[0];
  v10[0] = v7;
  v8 = v6[1];
  v6[1] = v11;
  v11 = v8;
  sub_2715CA870(&v11, v7);
}

void sub_27143C610(uint64_t a1, uint64_t a2)
{
  if (**(a1 + 40) <= 1u)
  {
    v2 = *(a1 + 88);
    *(a1 + 72) = "dictionary";
    *(a1 + 80) = 10;
    if ((v2 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_271150BA0(v3, a2);
}

void sub_27143C75C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_2715CA870((v3 + 8), v2);
  sub_27181A638(va1);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27143C784(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27143C798(uint64_t a1, void *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = sub_2715CA638(v4);
  sub_2715D17E4(v5, v3);
}

void sub_27143C89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_27112F828(&a11);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_27143C8CC(uint64_t a1, unint64_t a2)
{
  v28 = 0u;
  memset(v27, 0, sizeof(v27));
  sub_2715D1938(&v23, a2);
  v3 = v23;
  *&v27[0] = v23;
  v4 = v24;
  *(v27 + 8) = v24;
  v5 = v25;
  *(&v27[1] + 1) = v25;
  v22 = v26;
  v28 = v26;
  if (*(a1 + 40))
  {
    v21 = v24;
    v6 = *(a1 + 24);
    LOBYTE(v23) = *(a1 + 32);
    sub_271120E64(v6, &v23, 1);
    v4 = v21;
  }

  v7 = v4;
  MEMORY[0x2743BE850](*(a1 + 24), 0xAAAAAAAAAAAAAAABLL * (v4 - v3));
  v8 = *(a1 + 40) + 1;
  *(a1 + 40) = v8;
  if (v7 != v3)
  {
    v9 = v3;
    do
    {
      sub_271839128(a1, v9);
      v9 += 24;
    }

    while (v9 != v7);
    v8 = *(a1 + 40);
  }

  if (v8)
  {
    v10 = *(a1 + 24);
    LOBYTE(v23) = *(a1 + 32);
    sub_271120E64(v10, &v23, 1);
  }

  v11 = v22;
  MEMORY[0x2743BE850](*(a1 + 24), 0xAAAAAAAAAAAAAAABLL * (v22 - v5));
  v12 = *(a1 + 40) + 1;
  *(a1 + 40) = v12;
  if (v22 == v5)
  {
    if (!v5)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v13 = v5;
  do
  {
    if (v12)
    {
      v14 = *(a1 + 24);
      LOBYTE(v23) = *(a1 + 32);
      sub_271120E64(v14, &v23, 1);
    }

    MEMORY[0x2743BE7F0](*(a1 + 24), 2);
    ++*(a1 + 40);
    sub_27143CBB0(a1, v13);
    v15 = *(a1 + 34);
    if (*(a1 + 40))
    {
      v16 = *(a1 + 24);
      LOBYTE(v23) = *(a1 + 32);
      sub_271120E64(v16, &v23, 1);
    }

    v17 = *(a1 + 24);
    LOBYTE(v23) = v15;
    sub_271120E64(v17, &v23, 1);
    v12 = *(a1 + 40) + 1;
    *(a1 + 40) = v12;
    v13 += 3;
  }

  while (v13 != v22);
  if (v5)
  {
    do
    {
      v18 = *(v11 - 1);
      if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v18->__on_zero_shared)(v18);
        std::__shared_weak_count::__release_weak(v18);
      }

      v11 -= 3;
    }

    while (v11 != v5);
    v5 = *(&v27[1] + 1);
    v3 = *&v27[0];
LABEL_24:
    operator delete(v5);
  }

LABEL_25:
  if (v3)
  {
    v19 = *(&v27[0] + 1);
    while (v19 != v3)
    {
      v20 = *(v19 - 1);
      v19 -= 3;
      if (v20 < 0)
      {
        operator delete(*v19);
      }
    }

    operator delete(v3);
  }
}

void sub_27143CB4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_27143CB60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_27143CB74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_27143CB88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_27143CB9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_27143CBB0(uint64_t a1, const void **a2)
{
  v4 = *a2;
  if (*(a1 + 40))
  {
    v5 = *(a1 + 24);
    __p.__r_.__value_.__s.__data_[0] = *(a1 + 32);
    sub_271120E64(v5, &__p, 1);
  }

  MEMORY[0x2743BE830](*(a1 + 24), v4);
  ++*(a1 + 40);
  v6 = *a2;
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      if (v6 == 3)
      {
        sub_27143B290(a2 + 1);
      }

      if (v6 == 4)
      {
        sub_27143B4FC(a2 + 1);
      }

      goto LABEL_24;
    }

    v7 = a2[1];
    if (v7)
    {
      TypeID = CFBooleanGetTypeID();
      if (CFGetTypeID(v7) != TypeID)
      {
        v7 = 0;
        if (!*(a1 + 40))
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      v7 = CFBooleanGetValue(v7) != 0;
    }

    if (!*(a1 + 40))
    {
LABEL_18:
      MEMORY[0x2743BE7B0](*(a1 + 24), v7);
      ++*(a1 + 40);
      return;
    }

LABEL_17:
    v9 = *(a1 + 24);
    __p.__r_.__value_.__s.__data_[0] = *(a1 + 32);
    sub_271120E64(v9, &__p, 1);
    goto LABEL_18;
  }

  if (!*a2)
  {
    sub_27143B19C(a2 + 1);
  }

  if (v6 != 1)
  {
LABEL_24:
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Foundation/FoundationIO/include/Kit/FoundationIO/DictionaryRefIO.h", 281, "", 0, "invalid value type identifier", 0x1DuLL, sub_271852CA8);
    abort();
  }

  sub_2718098EC(a2[1], &__p);
  sub_271839128(a1, &__p);
  if (v11 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_27143D3C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112F828(v6 - 80);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27143D3DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_27112F828(va);
  sub_27112F828(v8 - 80);
  _Unwind_Resume(a1);
}

void sub_27143D3F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27143D40C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26)
{
  if (a26 == 1 && a25 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27143D4B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  va_copy(va3, va2);
  v11 = va_arg(va3, void);
  v13 = va_arg(va3, void);
  v14 = va_arg(va3, void);
  v15 = va_arg(va3, void);
  sub_2712C9E78(va2);
  sub_27112F828(va);
  sub_271392A1C(va3);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_27143D4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_271392A1C(va1);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27143D504(uint64_t a1, void *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = sub_2715CA638(v4);
  sub_2715D17E4(v5, v3);
}

void sub_27143D608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_27112F828(&a11);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_27143D638(uint64_t a1, unint64_t a2)
{
  v23 = 0u;
  memset(v22, 0, sizeof(v22));
  sub_2715D1938(&v18, a2);
  v3 = v18;
  *&v22[0] = v18;
  *(v22 + 8) = v19;
  v4 = v20;
  *(&v22[1] + 1) = v20;
  v17 = v21;
  v23 = v21;
  v5 = v19;
  __src = 0xAAAAAAAAAAAAAAABLL * ((v19 - v18) >> 3);
  sub_27173318C(a1 + 24, *(a1 + 32), &__src, &v25, 8uLL);
  if (v5 != v3)
  {
    v6 = v3;
    do
    {
      v7 = *(v6 + 23);
      if ((v7 & 0x80u) != 0)
      {
        v7 = v6[1];
      }

      v18 = v7;
      sub_27173318C(a1 + 24, *(a1 + 32), &v18, &v19, 8uLL);
      v8 = *(v6 + 23);
      if (v8 >= 0)
      {
        v9 = v6;
      }

      else
      {
        v9 = *v6;
      }

      if (v8 >= 0)
      {
        v10 = *(v6 + 23);
      }

      else
      {
        v10 = v6[1];
      }

      sub_27173318C(a1 + 24, *(a1 + 32), v9, &v9[v10], v10);
      v6 += 3;
    }

    while (v6 != v5);
  }

  v11 = v17;
  v18 = 0xAAAAAAAAAAAAAAABLL * (v17 - v4);
  sub_27173318C(a1 + 24, *(a1 + 32), &v18, &v19, 8uLL);
  if (v4 == v17)
  {
    if (!v4)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v12 = v4;
  do
  {
    LODWORD(__src) = 2;
    sub_27173318C(a1 + 24, *(a1 + 32), &__src, &__src + 4, 4uLL);
    sub_2717312C0(a1);
    sub_27143D924(a1, v12);
    v13 = *(*(a1 + 56) - 8) + *(a1 + 24);
    *(v13 + 10) = *(a1 + 32) - v13 - 18;
    *(a1 + 56) -= 8;
    v12 += 3;
  }

  while (v12 != v17);
  if (v4)
  {
    do
    {
      v14 = *(v11 - 1);
      if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }

      v11 -= 3;
    }

    while (v11 != v4);
    v4 = *(&v22[1] + 1);
    v3 = *&v22[0];
LABEL_23:
    operator delete(v4);
  }

LABEL_24:
  if (v3)
  {
    v15 = *(&v22[0] + 1);
    while (v15 != v3)
    {
      v16 = *(v15 - 1);
      v15 -= 3;
      if (v16 < 0)
      {
        operator delete(*v15);
      }
    }

    operator delete(v3);
  }
}

void sub_27143D8C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_27143D8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_27143D8E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_27143D8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_27143D910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_27143D924(uint64_t a1, const void **a2)
{
  LOWORD(__p.__r_.__value_.__l.__data_) = *a2;
  sub_27173318C(a1 + 24, *(a1 + 32), &__p, &__p.__r_.__value_.__s.__data_[2], 2uLL);
  v4 = *a2;
  if (v4 <= 1)
  {
    if (!*a2)
    {
      sub_27143B19C(a2 + 1);
    }

    if (v4 != 1)
    {
LABEL_27:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Foundation/FoundationIO/include/Kit/FoundationIO/DictionaryRefIO.h", 281, "", 0, "invalid value type identifier", 0x1DuLL, sub_271852CA8);
      abort();
    }

    sub_2718098EC(a2[1], &__p);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    __src = size;
    sub_27173318C(a1 + 24, *(a1 + 32), &__src, v13, 8uLL);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v7 = __p.__r_.__value_.__l.__size_;
    }

    sub_27173318C(a1 + 24, *(a1 + 32), p_p, p_p + v7, v7);
    if (v15 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        sub_27143B290(a2 + 1);
      }

      if (v4 == 4)
      {
        sub_27143B4FC(a2 + 1);
      }

      goto LABEL_27;
    }

    v8 = a2[1];
    if (v8 && (TypeID = CFBooleanGetTypeID(), CFGetTypeID(v8) == TypeID))
    {
      v10 = CFBooleanGetValue(v8) != 0;
      v11 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    LOWORD(__p.__r_.__value_.__l.__data_) = v10 | (v11 << 8);
    sub_27173318C(a1 + 24, *(a1 + 32), &__p, &__p.__r_.__value_.__s.__data_[1], 1uLL);
  }
}

void sub_27143E0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112F828(v6 - 80);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27143E108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_27112F828(va);
  sub_27112F828(v8 - 80);
  _Unwind_Resume(a1);
}

void sub_27143E124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27143E14C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    a18 = __p;
    operator delete(__p);
  }

  sub_27112F828(v18 - 80);
  sub_27112F828(&a14);
  _Unwind_Resume(a1);
}

void sub_27143E178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26)
{
  if (a26 == 1 && a25 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27143E1DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  va_copy(va3, va2);
  v11 = va_arg(va3, void);
  v13 = va_arg(va3, void);
  v14 = va_arg(va3, void);
  v15 = va_arg(va3, void);
  sub_2712C9E78(va2);
  sub_27112F828(va);
  sub_271392A1C(va3);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_27143E210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_271392A1C(va1);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27143E230(uint64_t a1, void *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = sub_2715CA638(v4);
  sub_2715D17E4(v5, v3);
}

void sub_27143E334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_27112F828(&a11);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_27143E364(_DWORD *a1, unint64_t a2)
{
  v18 = 0u;
  memset(v17, 0, sizeof(v17));
  sub_2715D1938(&v13, a2);
  v3 = v13;
  *&v17[0] = v13;
  *(v17 + 8) = v14;
  v4 = v15;
  *(&v17[1] + 1) = v15;
  v12 = v16;
  v18 = v16;
  v5 = *a1;
  v6 = v14;
  v13 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 3);
  (*(v5 + 120))(a1, &v13);
  if (v6 != v3)
  {
    v7 = v3;
    do
    {
      (*(*a1 + 144))(a1, v7);
      v7 += 3;
    }

    while (v7 != v6);
  }

  v8 = v12;
  v19 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v4) >> 3);
  (*(*a1 + 120))(a1, &v19);
  v13 = v4;
  *&v14 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v4) >> 3);
  sub_27143E5B4(a1, &v13);
  if (v4)
  {
    if (v12 != v4)
    {
      do
      {
        v9 = *(v8 - 1);
        if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }

        v8 -= 24;
      }

      while (v8 != v4);
      v4 = *(&v17[1] + 1);
      v3 = *&v17[0];
    }

    operator delete(v4);
  }

  if (v3)
  {
    v10 = *(&v17[0] + 1);
    while (v10 != v3)
    {
      v11 = *(v10 - 1);
      v10 -= 3;
      if (v11 < 0)
      {
        operator delete(*v10);
      }
    }

    operator delete(v3);
  }
}

void sub_27143E564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_27143E578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_27143E58C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_27143E5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_27143E5B4(_DWORD *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    v4 = *a2;
    v5 = 24 * v2;
    do
    {
      while (1)
      {
        v6 = a1[2];
        v8 = 2;
        (*(*a1 + 104))(a1, &v8);
        if (v6 >= 1)
        {
          break;
        }

        sub_27143E854(a1, v4);
        v4 += 3;
        v5 -= 24;
        if (!v5)
        {
          return;
        }
      }

      if (v6 == 2)
      {
        v7 = 2;
        (*(*a1 + 104))(a1, &v7);
      }

      (*(*a1 + 16))(a1);
      sub_27143E854(a1, v4);
      (*(*a1 + 24))(a1);
      v4 += 3;
      v5 -= 24;
    }

    while (v5);
  }
}

uint64_t sub_27143E710(int *a1, uint64_t a2, uint64_t a3)
{
  v8 = 2;
  (*(*a2 + 104))(a2, &v8);
  v6 = v8;
  if (*a1 < 1)
  {
    return sub_27143E854(a2, a3, v6);
  }

  if (*a1 == 2)
  {
    v9 = 2;
    (*(*a2 + 104))(a2, &v9);
    if (*a1 <= 0)
    {
      return sub_27143E854(a2, a3, v6);
    }
  }

  (*(*a2 + 16))(a2);
  sub_27143E854(a2, a3, v6);
  return (*(*a2 + 24))(a2);
}

void sub_27143E854(_BYTE *a1, const void **a2)
{
  sub_27143F1DC(a1, a2);
  v4 = *a2;
  if (v4 <= 1)
  {
    if (!*a2)
    {
      sub_27143B19C(a2 + 1);
    }

    if (v4 != 1)
    {
LABEL_19:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Foundation/FoundationIO/include/Kit/FoundationIO/DictionaryRefIO.h", 281, "", 0, "invalid value type identifier", 0x1DuLL, sub_271852CA8);
      abort();
    }

    sub_2718098EC(a2[1], &__p);
    (*(*a1 + 144))(a1, &__p);
    if (v10 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        sub_27143B290(a2 + 1);
      }

      if (v4 == 4)
      {
        sub_27143B4FC(a2 + 1);
      }

      goto LABEL_19;
    }

    v5 = a2[1];
    if (v5 && (TypeID = CFBooleanGetTypeID(), CFGetTypeID(v5) == TypeID))
    {
      v7 = CFBooleanGetValue(v5) != 0;
      v8 = 1;
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    LOWORD(__p.__r_.__value_.__l.__data_) = v7 | (v8 << 8);
    (*(*a1 + 32))(a1, &__p);
  }
}

void sub_27143F0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112F828(v6 - 80);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27143F0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_27112F828(va);
  sub_27112F828(v8 - 80);
  _Unwind_Resume(a1);
}

void sub_27143F0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27143F0EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26)
{
  if (a26 == 1 && a25 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27143F1DC(_BYTE *a1, _WORD *a2)
{
  if ((a1[12] & 2) != 0)
  {
    v4 = 0;
    sub_27143B5F0();
  }

  v3[0] = *a2;
  return (*(*a1 + 96))(a1, v3);
}

void sub_27143F300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27143F31C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27143F330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27143F344(uint64_t a1, uint64_t a2)
{
  v6[0] = *(a1 + 32);
  v4 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v4;
  sub_27182D194(a1 + 40, v6);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  v6[0] = "version";
  v6[1] = 7;
  v7 = 2;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_27182EB6C(a1, &v7);
  if (v7 >= 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = v7;
  }

  if (v7 < 2)
  {
    sub_27143F440();
  }

  sub_27143F560(a1, a2, v5);
}

void sub_27143F560(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 <= 2)
  {
    v3 = *(a1 + 104);
    *(a1 + 88) = "dictionary";
    *(a1 + 96) = 10;
    if ((v3 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    operator new();
  }

  v5[0] = 0;
  v5[1] = 0;
  v4 = v5;
  sub_271810928();
}

void sub_27143F7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, uint64_t **);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_2715CA1BC(va);
  sub_27181A92C(va1);
  _Unwind_Resume(a1);
}

void sub_27143F7C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x2743BF050](v7, 0x10E2C40590DAB7CLL);
  sub_27181A92C(va);
  _Unwind_Resume(a1);
}

void sub_27143F7F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27181A92C(va);
  _Unwind_Resume(a1);
}

void sub_27143F830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27181A92C(va);
  _Unwind_Resume(a1);
}

void sub_27143F844(uint64_t a1)
{
  v1 = *(a1 + 104);
  *(a1 + 88) = "dictionary";
  *(a1 + 96) = 10;
  if ((v1 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  operator new();
}

void sub_27143F9D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27181A92C(va);
  _Unwind_Resume(a1);
}

void sub_27143F9EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27181A92C(va);
  _Unwind_Resume(a1);
}

void sub_27143FB48(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 <= 2)
  {
    v3 = *(a1 + 104);
    *(a1 + 88) = "dictionary";
    *(a1 + 96) = 10;
    if ((v3 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    operator new();
  }

  v5[0] = 0;
  v5[1] = 0;
  v4 = v5;
  sub_271810928();
}

void sub_27143FD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, uint64_t **);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_2715CA1BC(va);
  sub_27181A92C(va1);
  _Unwind_Resume(a1);
}

void sub_27143FDAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x2743BF050](v7, 0x10E2C40590DAB7CLL);
  sub_27181A92C(va);
  _Unwind_Resume(a1);
}

void sub_27143FDD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27181A92C(va);
  _Unwind_Resume(a1);
}

void sub_27143FE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27181A92C(va);
  _Unwind_Resume(a1);
}

void sub_27143FF74(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 > 1)
  {
    v7 = 0;
    sub_27183FF6C(*(a2 + 48), &v7);
    *&v6 = (*(*(a2 + 16) + 32))(a2 + 16);
    *(&v6 + 1) = v7;
    sub_2713BF82C(a2 + 24, &v6);
    sub_2714400B0(a2, a3, 2u);
  }

  sub_2714400B0(a2, a3, a4);
}

void sub_2714400B0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 >= 2)
  {
    v4[0] = 0;
    v4[1] = 0;
    v3 = v4;
    sub_271810928();
  }

  sub_2714401D8();
}

void sub_271440358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, char *a15)
{
  sub_271167834(&a14, a15);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_271440378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_27112F828(&a11);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_271440394(uint64_t a1)
{
  *__p = 0u;
  v10 = 0u;
  *v8 = 0u;
  sub_2713BFFC0(a1, v8);
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - __p[1]) >> 3);
  sub_27183FF6C(*(a1 + 48), &v11);
  v2 = v10;
  v3 = 0xAAAAAAAAAAAAAAABLL * ((v10 - __p[1]) >> 3);
  v4 = v11 - v3;
  if (v11 > v3)
  {
    sub_271440840(&__p[1], v4);
    v5 = __p[1];
    if (__p[1] == v10)
    {
      goto LABEL_15;
    }

LABEL_14:
    LODWORD(v13[0]) = 2;
    sub_27183FB7C(*(a1 + 48), v13);
    v14 = v13[0];
    v13[0] = a1;
    v13[1] = v5;
    v13[2] = &v12;
    v13[3] = &v14;
    sub_271440A68(v13);
  }

  if (v11 >= v3)
  {
    v5 = __p[1];
    if (__p[1] != v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v6 = __p[1] + 24 * v11;
    if (v10 != v6)
    {
      do
      {
        v7 = *(v2 - 1);
        if (v7)
        {
          if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7, v4);
            std::__shared_weak_count::__release_weak(v7);
          }
        }

        v2 -= 24;
      }

      while (v2 != v6);
    }

    *&v10 = v6;
    v5 = __p[1];
    if (__p[1] != v6)
    {
      goto LABEL_14;
    }
  }

LABEL_15:
  sub_2715D1F68(v8, v13);
}

void sub_2714406E0(uint64_t a1, uint64_t *a2)
{
  v11 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  sub_27183FF6C(*(a1 + 48), &v11);
  v4 = a2[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
  v6 = v11 - v5;
  if (v11 > v5)
  {
    sub_271440840(a2, v6);
    v9 = a2;
    j = *a2;
    i = v9[1];
    if (j == i)
    {
      return;
    }

    goto LABEL_14;
  }

  if (v11 >= v5)
  {
    i = a2[1];
    j = *a2;
    if (j == v4)
    {
      return;
    }

    goto LABEL_14;
  }

  for (i = *a2 + 24 * v11; v4 != i; v4 -= 24)
  {
    v10 = *(v4 - 8);
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10, v6);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

  a2[1] = i;
  for (j = *a2; j != i; j += 24)
  {
LABEL_14:
    v13 = 2;
    sub_27183FB7C(*(a1 + 48), &v13);
    sub_271440B9C(&v12, a1, j, v13);
  }
}

void sub_271440840(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 24 * a2;
      v10 = (v3 + 8);
      v11 = 24 * a2;
      do
      {
        *v10 = 0;
        v10[1] = 0;
        v10 += 3;
        v11 -= 24;
      }

      while (v11);
      a1[1] = v9;
    }

    else
    {
      a1[1] = v3;
    }
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_271135560();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_2711270EC();
    }

    v12 = 24 * v5;
    v13 = 24 * a2;
    v14 = 24 * v5 + 24 * a2;
    v15 = (24 * v5 + 8);
    do
    {
      *v15 = 0;
      v15[1] = 0;
      v15 += 3;
      v13 -= 24;
    }

    while (v13);
    v16 = *a1;
    v17 = a1[1];
    v18 = v12 + *a1 - v17;
    if (v17 != *a1)
    {
      v19 = *a1;
      v20 = v18;
      do
      {
        *v20 = *v19;
        *(v20 + 8) = *(v19 + 1);
        v19[1] = 0;
        v19[2] = 0;
        v19 += 3;
        v20 += 24;
      }

      while (v19 != v17);
      do
      {
        v21 = v16[2];
        if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v21->__on_zero_shared)(v21);
          std::__shared_weak_count::__release_weak(v21);
        }

        v16 += 3;
      }

      while (v16 != v17);
      v16 = *a1;
    }

    *a1 = v18;
    a1[1] = v14;
    a1[2] = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void sub_271440A68(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (**(a1 + 24) > 1u)
  {
    v4 = 0;
    sub_27183FF6C(*(v1 + 48), &v4);
    *&v3 = (*(*(v1 + 16) + 32))(v1 + 16);
    *(&v3 + 1) = v4;
    sub_2713BF82C(v1 + 24, &v3);
    sub_271440EC0(v1, v2);
  }

  sub_271440CC8(&v3, v1);
}

uint64_t sub_271440B9C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 <= 1)
  {
    sub_271440CC8(&v9, a2);
  }

  v10 = 0;
  sub_27183FF6C(*(a2 + 48), &v10);
  *&v9 = (*(*(a2 + 16) + 32))(a2 + 16);
  *(&v9 + 1) = v10;
  sub_2713BF82C(a2 + 24, &v9);
  sub_271440EC0(a2, a3, 2);
  v6 = *(a2 + 32);
  result = (*(*(a2 + 16) + 32))(a2 + 16);
  v8 = *(v6 - 16) - result + *(v6 - 8);
  if (v8)
  {
    result = (*(*(a2 + 16) + 40))(a2 + 16, v8);
  }

  *(a2 + 32) -= 16;
  return result;
}

void sub_271440CC8(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  sub_271442E8C(a2, &v2);
}

void sub_271440E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(va1);
  sub_2712C9E78(va);
  _Unwind_Resume(a1);
}

void sub_271440E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2712C9E78(va);
  _Unwind_Resume(a1);
}

void sub_271440EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2712C9E78(va);
  _Unwind_Resume(a1);
}

void sub_271440EC0(uint64_t a1, _WORD *a2)
{
  LOWORD(__p[0]) = 0;
  sub_27183F9D0(*(a1 + 48), __p);
  v4 = LOWORD(__p[0]);
  *a2 = __p[0];
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v4 != 3)
      {
        if (v4 == 4)
        {
          __p[1] = 0;
          v13 = 0;
          __p[0] = &__p[1];
          sub_271810928();
        }

        sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Foundation/FoundationIO/include/Kit/FoundationIO/DictionaryRefIO.h", 250, "", 0, "invalid value type identifier", 0x1DuLL, sub_271852CA8);
        abort();
      }

      v9[0] = 0;
      v9[1] = 0;
      v10 = 0;
      sub_2714406E0(a1, v9);
      __p[1] = 0;
      v13 = 0;
      __p[0] = 0;
      sub_271441EDC(__p, 0xAAAAAAAAAAAAAAABLL * ((v9[1] - v9[0]) >> 3));
      sub_271442024(v9[0], v9[1], __p);
      sub_271442434();
    }

    LOBYTE(v11) = 0;
    sub_2718402EC(*(a1 + 48), &v11);
    v8 = MEMORY[0x277CBED28];
    if (!v11)
    {
      v8 = MEMORY[0x277CBED10];
    }

    sub_271809A48(__p, *v8);
  }

  if (v4)
  {
    __p[0] = 0;
    __p[1] = 0;
    v13 = 0;
    sub_2718403E0(*(a1 + 48), __p);
    if (SHIBYTE(v13) >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if (SHIBYTE(v13) >= 0)
    {
      v6 = HIBYTE(v13);
    }

    else
    {
      v6 = __p[1];
    }

    v7 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v5, v6, 0x8000100u, 0);
    sub_2715CB2C0(v9, v7);
  }

  LOBYTE(__p[0]) = 7;
  LOBYTE(__p[1]) = 7;
  operator new();
}

void sub_2714417F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_27144180C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, void *a19, uint64_t a20, void *__p, uint64_t a22)
{
  sub_27112F828(&a17);
  sub_271347F18(&a9);
  sub_271392A1C(&a13);
  _Unwind_Resume(a1);
}

void sub_271441870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void *);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_271347F18(va1);
  sub_271392A1C(va);
  _Unwind_Resume(a1);
}

void sub_271441928(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_27143C19C(&v5, v3);
}

void sub_271441A4C(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_27143C19C(&v5, v3);
}

void sub_271441B70(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_27143C19C(&v5, v3);
}

void sub_271441C94(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_27143C19C(&v5, v3);
}

void sub_271441DB8(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_27143C19C(&v5, v3);
}

void *sub_271441EDC(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      operator new();
    }

    sub_271135560();
  }

  return result;
}

uint64_t sub_271442024(__int16 *a1, __int16 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = *a1;
    sub_2714421A8(&v5, (a1 + 4));
  }

  return a3;
}

void sub_271442178(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_27112F828(va1);
  sub_2712C9E78(va);
  _Unwind_Resume(a1);
}

void sub_271442194(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2712C9E78(va);
  _Unwind_Resume(a1);
}

void sub_2714421A8(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_27143C19C(&v5, v3);
}

_OWORD *sub_2714422CC(void *a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_271135560();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 3 > v3)
  {
    v3 = v5 >> 3;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 60))
    {
      operator new();
    }

    sub_2711270EC();
  }

  v7 = (16 * v2);
  v8 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v9 = *a1;
  v10 = a1[1];
  v11 = *a1 == v10;
  v12 = (v7 + *a1 - v10);
  *v7 = v8;
  v13 = v7 + 1;
  if (!v11)
  {
    v14 = v9;
    v15 = v12;
    do
    {
      *v15++ = *v14;
      *v14 = 0;
      v14[1] = 0;
      v14 += 2;
    }

    while (v14 != v10);
    do
    {
      v16 = v9[1];
      if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
      }

      v9 += 2;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v12;
  a1[1] = v13;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v13;
}

void sub_2714426F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_27112F828(&a11);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_27144270C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1[3] <= 1u)
  {
    sub_271442840();
  }

  v7 = 0;
  sub_27183FF6C(*(v1 + 48), &v7);
  *&v6 = (*(*(v1 + 16) + 32))(v1 + 16);
  *(&v6 + 1) = v7;
  sub_2713BF82C(v1 + 24, &v6);
  sub_271440394(v1, v2, 2);
  v3 = *(v1 + 32);
  result = (*(*(v1 + 16) + 32))(v1 + 16);
  v5 = *(v3 - 16) - result + *(v3 - 8);
  if (v5)
  {
    result = (*(*(v1 + 16) + 40))(v1 + 16, v5);
  }

  *(v1 + 32) -= 16;
  return result;
}

void sub_271442840()
{
  v1[0] = 0;
  v1[1] = 0;
  v0 = v1;
  sub_271810928();
}

void sub_2714429FC(uint64_t a1)
{
  *__p = 0u;
  v11 = 0u;
  *v9 = 0u;
  sub_2713BFFC0(a1, v9);
  *&v8 = 0xAAAAAAAAAAAAAAABLL * ((v11 - __p[1]) >> 3);
  sub_27183FF6C(*(a1 + 48), &v8);
  v2 = v11;
  v3 = 0xAAAAAAAAAAAAAAABLL * ((v11 - __p[1]) >> 3);
  v4 = v8 - v3;
  if (v8 <= v3)
  {
    if (v8 >= v3)
    {
      v6 = v11;
      v5 = __p[1];
      if (__p[1] == v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v6 = __p[1] + 24 * v8;
      if (v11 != v6)
      {
        do
        {
          v7 = *(v2 - 1);
          if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7, v4);
            std::__shared_weak_count::__release_weak(v7);
          }

          v2 -= 24;
        }

        while (v2 != v6);
      }

      *&v11 = v6;
      v5 = __p[1];
      if (__p[1] == v6)
      {
LABEL_15:
        sub_2715D127C(v9, &v8);
      }
    }
  }

  else
  {
    sub_271440840(&__p[1], v4);
    v5 = __p[1];
    v6 = v11;
    if (__p[1] == v11)
    {
      goto LABEL_15;
    }
  }

  do
  {
    v12 = 1;
    sub_27183FB7C(*(a1 + 48), &v12);
    sub_271442E8C(a1, v5, v12);
    v5 += 24;
  }

  while (v5 != v6);
  goto LABEL_15;
}

void sub_271442CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_271442CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_271442D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_271442D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_271442D30(uint64_t a1, uint64_t *a2)
{
  v11 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  sub_27183FF6C(*(a1 + 48), &v11);
  v4 = a2[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
  v6 = v11 - v5;
  if (v11 > v5)
  {
    sub_271440840(a2, v6);
    v9 = a2;
    j = *a2;
    i = v9[1];
    if (j == i)
    {
      return;
    }

    goto LABEL_14;
  }

  if (v11 >= v5)
  {
    i = a2[1];
    j = *a2;
    if (j == v4)
    {
      return;
    }

    goto LABEL_14;
  }

  for (i = *a2 + 24 * v11; v4 != i; v4 -= 24)
  {
    v10 = *(v4 - 8);
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10, v6);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

  a2[1] = i;
  for (j = *a2; j != i; j += 24)
  {
LABEL_14:
    v12 = 1;
    sub_27183FB7C(*(a1 + 48), &v12);
    sub_271442E8C(a1, j, v12);
  }
}

void sub_271442E8C(uint64_t a1, _WORD *a2)
{
  LOWORD(__p[0]) = 0;
  sub_27183F9D0(*(a1 + 48), __p);
  v4 = LOWORD(__p[0]);
  *a2 = __p[0];
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v4 != 3)
      {
        if (v4 == 4)
        {
          __p[1] = 0;
          v13 = 0;
          __p[0] = &__p[1];
          sub_271810928();
        }

        sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Foundation/FoundationIO/include/Kit/FoundationIO/DictionaryRefIO.h", 250, "", 0, "invalid value type identifier", 0x1DuLL, sub_271852CA8);
        abort();
      }

      v9[0] = 0;
      v9[1] = 0;
      v10 = 0;
      sub_271442D30(a1, v9);
      __p[1] = 0;
      v13 = 0;
      __p[0] = 0;
      sub_271441EDC(__p, 0xAAAAAAAAAAAAAAABLL * ((v9[1] - v9[0]) >> 3));
      sub_2714438E0(v9[0], v9[1], __p);
      sub_271442434();
    }

    LOBYTE(v11) = 0;
    sub_2718402EC(*(a1 + 48), &v11);
    v8 = MEMORY[0x277CBED28];
    if (!v11)
    {
      v8 = MEMORY[0x277CBED10];
    }

    sub_271809A48(__p, *v8);
  }

  if (v4)
  {
    __p[0] = 0;
    __p[1] = 0;
    v13 = 0;
    sub_2718403E0(*(a1 + 48), __p);
    if (SHIBYTE(v13) >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if (SHIBYTE(v13) >= 0)
    {
      v6 = HIBYTE(v13);
    }

    else
    {
      v6 = __p[1];
    }

    v7 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v5, v6, 0x8000100u, 0);
    sub_2715CB2C0(v9, v7);
  }

  LOBYTE(__p[0]) = 7;
  LOBYTE(__p[1]) = 7;
  operator new();
}

void sub_2714437A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_2714437C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, void *a19, uint64_t a20, void *__p, uint64_t a22)
{
  sub_27112F828(&a17);
  sub_271347F18(&a9);
  sub_271392A1C(&a13);
  _Unwind_Resume(a1);
}

void sub_271443828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void *);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_271347F18(va1);
  sub_271392A1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2714438E0(__int16 *a1, __int16 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = *a1;
    sub_2714421A8(&v5, (a1 + 4));
  }

  return a3;
}

void sub_271443A34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_27112F828(va1);
  sub_2712C9E78(va);
  _Unwind_Resume(a1);
}

void sub_271443A50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2712C9E78(va);
  _Unwind_Resume(a1);
}

void sub_271443A64(uint64_t a1, uint64_t a2)
{
  v6[0] = *(a1 + 32);
  v4 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v4;
  sub_27182D194(a1 + 40, v6);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  v6[0] = "version";
  v6[1] = 7;
  v7 = 2;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_27182DBE0(a1, &v7);
  if (v7 >= 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = v7;
  }

  if (v7 < 2)
  {
    sub_271443B60();
  }

  sub_271443C80(a1, a2, v5);
}

void sub_271443C80(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 <= 2)
  {
    v3 = *(a1 + 104);
    *(a1 + 88) = "dictionary";
    *(a1 + 96) = 10;
    if ((v3 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    operator new();
  }

  v5[0] = 0;
  v5[1] = 0;
  v4 = v5;
  sub_271810928();
}

void sub_271443EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, uint64_t **);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_2715CA1BC(va);
  sub_27181A638(va1);
  _Unwind_Resume(a1);
}

void sub_271443EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x2743BF050](v7, 0x10E2C40590DAB7CLL);
  sub_27181A638(va);
  _Unwind_Resume(a1);
}

void sub_271443F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27181A638(va);
  _Unwind_Resume(a1);
}

void sub_271443F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27181A638(va);
  _Unwind_Resume(a1);
}

void sub_271443F64(uint64_t a1)
{
  v1 = *(a1 + 104);
  *(a1 + 88) = "dictionary";
  *(a1 + 96) = 10;
  if ((v1 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  operator new();
}

void sub_2714440F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27181A638(va);
  _Unwind_Resume(a1);
}

void sub_27144410C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27181A638(va);
  _Unwind_Resume(a1);
}

void sub_271444120(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 <= 2)
  {
    v3 = *(a1 + 104);
    *(a1 + 88) = "dictionary";
    *(a1 + 96) = 10;
    if ((v3 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    operator new();
  }

  v5[0] = 0;
  v5[1] = 0;
  v4 = v5;
  sub_271810928();
}

void sub_271444368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, uint64_t **);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_2715CA1BC(va);
  sub_27181A638(va1);
  _Unwind_Resume(a1);
}

void sub_271444384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x2743BF050](v7, 0x10E2C40590DAB7CLL);
  sub_27181A638(va);
  _Unwind_Resume(a1);
}

void sub_2714443B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27181A638(va);
  _Unwind_Resume(a1);
}

void sub_2714443F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27181A638(va);
  _Unwind_Resume(a1);
}

void sub_271444404(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 >= 2)
  {
    v4[0] = 0;
    v4[1] = 0;
    v3 = v4;
    sub_271810928();
  }

  sub_27144452C();
}

void sub_2714446AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, char *a15)
{
  sub_271167834(&a14, a15);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_2714446CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_27112F828(&a11);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_2714446E8(uint64_t a1)
{
  *v9 = 0u;
  v10 = 0u;
  *v8 = 0u;
  sub_2713C3B9C(a1, v8);
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v9[1]) >> 3);
  sub_27183B6AC(a1, &v11);
  v2 = v10;
  v3 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v9[1]) >> 3);
  v4 = v11 - v3;
  if (v11 > v3)
  {
    sub_271440840(&v9[1], v4);
    v5 = v9[1];
    if (v9[1] == v10)
    {
      goto LABEL_17;
    }

LABEL_14:
    LODWORD(__p[0]) = 2;
    sub_27183A9AC(a1, __p);
    if (LODWORD(__p[0]) < 2)
    {
      sub_271444D24(__p, a1);
    }

    sub_271444F1C(a1, v5);
  }

  if (v11 >= v3)
  {
    v5 = v9[1];
    if (v9[1] != v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v6 = v9[1] + 24 * v11;
    if (v10 != v6)
    {
      do
      {
        v7 = *(v2 - 1);
        if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7, v4);
          std::__shared_weak_count::__release_weak(v7);
        }

        v2 -= 24;
      }

      while (v2 != v6);
    }

    *&v10 = v6;
    v5 = v9[1];
    if (v9[1] != v6)
    {
      goto LABEL_14;
    }
  }

LABEL_17:
  sub_2715D1F68(v8, __p);
}

void sub_271444AFC(uint64_t a1, uint64_t *a2)
{
  v13 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  sub_27183B6AC(a1, &v13);
  v4 = a2[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
  v6 = v13 - v5;
  if (v13 <= v5)
  {
    if (v13 >= v5)
    {
      i = a2[1];
      v7 = *a2;
      if (v7 == v4)
      {
        return;
      }
    }

    else
    {
      for (i = *a2 + 24 * v13; v4 != i; v4 -= 24)
      {
        v10 = *(v4 - 8);
        if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10, v6);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      a2[1] = i;
      v7 = *a2;
      if (v7 == i)
      {
        return;
      }
    }
  }

  else
  {
    sub_271440840(a2, v6);
    v9 = a2;
    v7 = *a2;
    i = v9[1];
    if (v7 == i)
    {
      return;
    }
  }

  while (2)
  {
    LODWORD(__p[0]) = 2;
    sub_27183A9AC(a1, __p);
    if (LODWORD(__p[0]) >= 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = LODWORD(__p[0]);
    }

    if (LODWORD(__p[0]) <= 1)
    {
      sub_271444D24(__p, a1);
    }

    sub_271444F1C(a1, v7, v11);
    while ((*(a1 + 131) & 1) == 0 && (*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) == 0)
    {
      sub_27183D78C(a1, __p);
      if (v15 < 0)
      {
        if (__p[1] == 1 && *(a1 + 72) == *__p[0])
        {
LABEL_31:
          v12 = 0;
          if (v15 < 0)
          {
            goto LABEL_34;
          }

          goto LABEL_22;
        }
      }

      else if (v15 == 1 && *(a1 + 72) == LOBYTE(__p[0]))
      {
        goto LABEL_31;
      }

      v12 = 1;
      if (v15 < 0)
      {
LABEL_34:
        operator delete(__p[0]);
      }

LABEL_22:
      if ((v12 & 1) == 0)
      {
        break;
      }
    }

    v7 += 24;
    if (v7 != i)
    {
      continue;
    }

    break;
  }
}

void sub_271444D24(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  sub_271446348(a2, &v2);
}

void sub_271444ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(va1);
  sub_2712C9E78(va);
  _Unwind_Resume(a1);
}

void sub_271444EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2712C9E78(va);
  _Unwind_Resume(a1);
}

void sub_271444F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2712C9E78(va);
  _Unwind_Resume(a1);
}

void sub_271444F1C(uint64_t a1, _WORD *a2)
{
  LOWORD(__p[0]) = 0;
  sub_27183A32C(a1, __p);
  v4 = LOWORD(__p[0]);
  *a2 = __p[0];
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v4 != 3)
      {
        if (v4 == 4)
        {
          __p[1] = 0;
          v18 = 0;
          __p[0] = &__p[1];
          sub_271810928();
        }

        sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Foundation/FoundationIO/include/Kit/FoundationIO/DictionaryRefIO.h", 250, "", 0, "invalid value type identifier", 0x1DuLL, sub_271852CA8);
        abort();
      }

      v19 = 0uLL;
      v20 = 0;
      sub_271444AFC(a1, &v19);
      __p[1] = 0;
      v18 = 0;
      __p[0] = 0;
      sub_271441EDC(__p, 0xAAAAAAAAAAAAAAABLL * ((*(&v19 + 1) - v19) >> 3));
      sub_271445B7C(v19, *(&v19 + 1), __p);
      *v14 = *__p;
      v15 = v18;
      sub_271442434();
    }

    LOBYTE(v16) = 0;
    sub_27183C3E0(a1, &v16);
    v8 = MEMORY[0x277CBED28];
    if (!v16)
    {
      v8 = MEMORY[0x277CBED10];
    }

    sub_271809A48(__p, *v8);
  }

  if (v4)
  {
    v19 = 0uLL;
    v20 = 0;
    ++*(a1 + 80);
    if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
    {
      v5 = 0;
      v6 = 0;
      LODWORD(v7) = 0;
      *(a1 + 132) = 1;
    }

    else
    {
      sub_27183D78C(a1, __p);
      v9 = *(a1 + 104);
      v10 = v18;
      v20 = v18;
      v19 = *__p;
      *(a1 + 104) = v9 + 1;
      v7 = HIBYTE(v10);
      v5 = *(&v19 + 1);
      v6 = v19;
    }

    if ((v7 & 0x80u) == 0)
    {
      v11 = &v19;
    }

    else
    {
      v11 = v6;
    }

    if ((v7 & 0x80u) == 0)
    {
      v12 = v7;
    }

    else
    {
      v12 = v5;
    }

    v13 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v11, v12, 0x8000100u, 0);
    sub_2715CB2C0(__p, v13);
  }

  LOBYTE(__p[0]) = 7;
  LOBYTE(__p[1]) = 7;
  operator new();
}

void sub_271445A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27112F828(v9 - 64);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_271445A4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, void *__p, uint64_t a18)
{
  sub_27112F828(&a13);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  a18 = __p;
  operator delete(__p);
  _Unwind_Resume(a1);
}

uint64_t sub_271445B7C(__int16 *a1, __int16 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = *a1;
    sub_2714421A8(&v5, (a1 + 4));
  }

  return a3;
}

void sub_271445CD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_27112F828(va1);
  sub_2712C9E78(va);
  _Unwind_Resume(a1);
}

void sub_271445CEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2712C9E78(va);
  _Unwind_Resume(a1);
}

void sub_271445D00()
{
  v1[0] = 0;
  v1[1] = 0;
  v0 = v1;
  sub_271810928();
}

void sub_271445EBC(uint64_t a1)
{
  *__p = 0u;
  v11 = 0u;
  *v9 = 0u;
  sub_2713C3B9C(a1, v9);
  *&v8 = 0xAAAAAAAAAAAAAAABLL * ((v11 - __p[1]) >> 3);
  sub_27183B6AC(a1, &v8);
  v2 = v11;
  v3 = 0xAAAAAAAAAAAAAAABLL * ((v11 - __p[1]) >> 3);
  v4 = v8 - v3;
  if (v8 <= v3)
  {
    if (v8 >= v3)
    {
      v6 = v11;
      v5 = __p[1];
      if (__p[1] == v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v6 = __p[1] + 24 * v8;
      if (v11 != v6)
      {
        do
        {
          v7 = *(v2 - 1);
          if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7, v4);
            std::__shared_weak_count::__release_weak(v7);
          }

          v2 -= 24;
        }

        while (v2 != v6);
      }

      *&v11 = v6;
      v5 = __p[1];
      if (__p[1] == v6)
      {
LABEL_15:
        sub_2715D127C(v9, &v8);
      }
    }
  }

  else
  {
    sub_271440840(&__p[1], v4);
    v5 = __p[1];
    v6 = v11;
    if (__p[1] == v11)
    {
      goto LABEL_15;
    }
  }

  do
  {
    v12 = 1;
    sub_27183A9AC(a1, &v12);
    sub_271446348(a1, v5, v12);
    v5 += 24;
  }

  while (v5 != v6);
  goto LABEL_15;
}

void sub_2714461A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_2714461B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_2714461C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_2714461DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_2714461F0(uint64_t a1, uint64_t *a2)
{
  v11 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  sub_27183B6AC(a1, &v11);
  v4 = a2[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
  v6 = v11 - v5;
  if (v11 > v5)
  {
    sub_271440840(a2, v6);
    v9 = a2;
    j = *a2;
    i = v9[1];
    if (j == i)
    {
      return;
    }

    goto LABEL_14;
  }

  if (v11 >= v5)
  {
    i = a2[1];
    j = *a2;
    if (j == v4)
    {
      return;
    }

    goto LABEL_14;
  }

  for (i = *a2 + 24 * v11; v4 != i; v4 -= 24)
  {
    v10 = *(v4 - 8);
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10, v6);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

  a2[1] = i;
  for (j = *a2; j != i; j += 24)
  {
LABEL_14:
    v12 = 1;
    sub_27183A9AC(a1, &v12);
    sub_271446348(a1, j, v12);
  }
}

void sub_271446348(uint64_t a1, _WORD *a2)
{
  LOWORD(v17) = 0;
  sub_27183A32C(a1, &v17);
  v4 = v17;
  *a2 = v17;
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v4 != 3)
      {
        if (v4 == 4)
        {
          *(&v17 + 1) = 0;
          __p = 0;
          *&v17 = &v17 + 8;
          sub_271810928();
        }

        sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Foundation/FoundationIO/include/Kit/FoundationIO/DictionaryRefIO.h", 250, "", 0, "invalid value type identifier", 0x1DuLL, sub_271852CA8);
        abort();
      }

      v19 = 0uLL;
      v20 = 0;
      sub_2714461F0(a1, &v19);
      __p = 0;
      v17 = 0uLL;
      sub_271441EDC(&v17, 0xAAAAAAAAAAAAAAABLL * ((*(&v19 + 1) - v19) >> 3));
      sub_271446ECC(v19, *(&v19 + 1), &v17);
      *v14 = v17;
      v15 = __p;
      sub_271442434();
    }

    LOBYTE(v16) = 0;
    sub_27183C3E0(a1, &v16);
    v8 = MEMORY[0x277CBED28];
    if (!v16)
    {
      v8 = MEMORY[0x277CBED10];
    }

    sub_271809A48(&v17, *v8);
  }

  if (v4)
  {
    v19 = 0uLL;
    v20 = 0;
    ++*(a1 + 80);
    if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
    {
      v5 = 0;
      v6 = 0;
      LODWORD(v7) = 0;
      *(a1 + 132) = 1;
    }

    else
    {
      sub_27183D78C(a1, &v17);
      v9 = *(a1 + 104);
      v10 = __p;
      v20 = __p;
      v19 = v17;
      *(a1 + 104) = v9 + 1;
      v7 = HIBYTE(v10);
      v5 = *(&v19 + 1);
      v6 = v19;
    }

    if ((v7 & 0x80u) == 0)
    {
      v11 = &v19;
    }

    else
    {
      v11 = v6;
    }

    if ((v7 & 0x80u) == 0)
    {
      v12 = v7;
    }

    else
    {
      v12 = v5;
    }

    v13 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v11, v12, 0x8000100u, 0);
    sub_2715CB2C0(&v17, v13);
  }

  LOBYTE(v17) = 7;
  BYTE8(v17) = 7;
  operator new();
}

void sub_271446D94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, void *__p, uint64_t a18)
{
  sub_27112F828(&a13);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  a18 = __p;
  operator delete(__p);
  _Unwind_Resume(a1);
}

uint64_t sub_271446ECC(__int16 *a1, __int16 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = *a1;
    sub_2714421A8(&v5, (a1 + 4));
  }

  return a3;
}

void sub_271447020(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_27112F828(va1);
  sub_2712C9E78(va);
  _Unwind_Resume(a1);
}

void sub_27144703C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2712C9E78(va);
  _Unwind_Resume(a1);
}

void sub_271447050(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[6];
  v4 = a2[7];
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 > 3)
  {
    v8 = *(a2[3] + v3);
    a2[6] = v3 + 4;
    if (v8 > 1)
    {
      sub_27173170C(a2);
      sub_271810928();
    }

    sub_271447208(a2, a3, v8);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_271447208(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 >= 2)
  {
    v4[0] = 0;
    v4[1] = 0;
    v3 = v4;
    sub_271810928();
  }

  sub_271447330();
}

void sub_2714474B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, char *a15)
{
  sub_271167834(&a14, a15);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_2714474D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_27112F828(&a11);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_2714474EC(void *a1)
{
  *__p = 0u;
  v21 = 0u;
  *v19 = 0u;
  sub_2713C53C4(a1, v19);
  v3 = a1[6];
  v2 = a1[7];
  v4 = v2 >= v3;
  v5 = v2 - v3;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 > 7)
  {
    v6 = *(a1[3] + v3);
    a1[6] = v3 + 8;
    v7 = v21;
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v21 - __p[1]) >> 3);
    v9 = v6 - v8;
    if (v6 <= v8)
    {
      if (v6 >= v8)
      {
        v10 = v21;
      }

      else
      {
        v10 = __p[1] + 24 * v6;
        if (v21 != v10)
        {
          do
          {
            v11 = *(v7 - 1);
            if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v11->__on_zero_shared)(v11, v9);
              std::__shared_weak_count::__release_weak(v11);
            }

            v7 -= 24;
          }

          while (v7 != v10);
        }

        *&v21 = v10;
      }
    }

    else
    {
      sub_271440840(&__p[1], v9);
      v10 = v21;
    }

    v12 = __p[1];
    if (__p[1] == v10)
    {
      sub_2715D1F68(v19, &v18);
    }

    v13 = a1[6];
    v14 = a1[7];
    v4 = v14 >= v13;
    v15 = v14 - v13;
    if (!v4)
    {
      v15 = 0;
    }

    if (v15 > 3)
    {
      v16 = *(a1[3] + v13);
      a1[6] = v13 + 4;
      if (v16 > 1)
      {
        sub_27173170C(a1);
        sub_271447D64(a1, v12);
      }

      sub_271447B6C(&v18, a1);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Not enough data to read");
  exception->__vftable = (MEMORY[0x277D828E8] + 16);
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_271447884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11)
{
  __cxa_free_exception(v11);
  sub_27143A558(&a11);
  _Unwind_Resume(a1);
}

void sub_2714478CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_2714478E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_2714478F4(void *a1, uint64_t *a2)
{
  v3 = a1[6];
  v2 = a1[7];
  v4 = v2 >= v3;
  v5 = v2 - v3;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v8 = *(a1[3] + v3);
  a1[6] = v3 + 8;
  v9 = *a2;
  v10 = a2[1];
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *a2) >> 3);
  v12 = v8 - v11;
  if (v8 <= v11)
  {
    if (v8 >= v11)
    {
      i = v10;
      v13 = *a2;
    }

    else
    {
      for (i = v9 + 24 * v8; v10 != i; v10 -= 24)
      {
        v16 = *(v10 - 8);
        if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v16->__on_zero_shared)(v16, v12);
          std::__shared_weak_count::__release_weak(v16);
        }
      }

      a2[1] = i;
      v13 = *a2;
    }
  }

  else
  {
    sub_271440840(a2, v12);
    v15 = a2;
    v13 = *a2;
    i = v15[1];
  }

  while (v13 != i)
  {
    sub_271447A74(&v18, a1, v13);
    v13 += 24;
  }
}

uint64_t sub_271447A74(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[6];
  v4 = a2[7];
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v7 = *(a2[3] + v3);
  a2[6] = v3 + 4;
  if (v7 <= 1)
  {
    sub_271447B6C(&v14, a2);
  }

  sub_27173170C(a2);
  result = sub_271447D64(a2, a3, 2);
  v11 = a2[12];
  v12 = a2[9];
  a2[6] = *(v11 - 8) + *(v12 - 8) + 8;
  a2[9] = v12 - 8;
  a2[12] = v11 - 8;
  return result;
}

void sub_271447B6C(uint64_t a1, void *a2)
{
  v3 = 0;
  v4 = 0;
  sub_27144922C(a2, &v2);
}

void sub_271447D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(va1);
  sub_2712C9E78(va);
  _Unwind_Resume(a1);
}

void sub_271447D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2712C9E78(va);
  _Unwind_Resume(a1);
}

void sub_271447D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2712C9E78(va);
  _Unwind_Resume(a1);
}

void sub_271447D64(void *a1, _WORD *a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = v3 - v2;
  if (v3 < v2)
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    v5 = a1[3];
    v6 = *(v5 + v2);
    v7 = v2 + 2;
    a1[6] = v2 + 2;
    *a2 = v6;
    if (v6 <= 1)
    {
      if (v6)
      {
        __p[0] = 0;
        __p[1] = 0;
        v18 = 0;
        sub_2717318E8(a1, __p);
        if (SHIBYTE(v18) >= 0)
        {
          v8 = __p;
        }

        else
        {
          v8 = __p[0];
        }

        if (SHIBYTE(v18) >= 0)
        {
          v9 = HIBYTE(v18);
        }

        else
        {
          v9 = __p[1];
        }

        v10 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v8, v9, 0x8000100u, 0);
        sub_2715CB2C0(v15, v10);
      }

      LOBYTE(__p[0]) = 7;
      LOBYTE(__p[1]) = 7;
      operator new();
    }

    if (v6 != 2)
    {
      if (v6 != 3)
      {
        if (v6 == 4)
        {
          __p[1] = 0;
          v18 = 0;
          __p[0] = &__p[1];
          sub_271810928();
        }

        sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Foundation/FoundationIO/include/Kit/FoundationIO/DictionaryRefIO.h", 250, "", 0, "invalid value type identifier", 0x1DuLL, sub_271852CA8);
        abort();
      }

      v15[0] = 0;
      v15[1] = 0;
      v16 = 0;
      sub_2714478F4(a1, v15);
      __p[1] = 0;
      v18 = 0;
      __p[0] = 0;
      sub_271441EDC(__p, 0xAAAAAAAAAAAAAAABLL * ((v15[1] - v15[0]) >> 3));
      sub_2714488F0(v15[0], v15[1], __p);
      sub_271442434();
    }

    if (v3 > v7)
    {
      v11 = *(v5 + v7);
      v12 = MEMORY[0x277CBED28];
      a1[6] = v2 + 3;
      v13 = MEMORY[0x277CBED10];
      if (v11)
      {
        v13 = v12;
      }

      sub_271809A48(__p, *v13);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_27144877C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_free_exception(v9);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_2714487AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_2714487C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_27112F828(&a17);
  sub_271347F18(&a9);
  sub_271392A1C(&a13);
  _Unwind_Resume(a1);
}

void sub_271448818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, void *__p, uint64_t a22)
{
  sub_27112F828(&a17);
  if (__p)
  {
    a22 = __p;
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x2714488D4);
}

void sub_271448898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271392A1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2714488F0(__int16 *a1, __int16 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = *a1;
    sub_2714421A8(&v5, (a1 + 4));
  }

  return a3;
}

void sub_271448A44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_27112F828(va1);
  sub_2712C9E78(va);
  _Unwind_Resume(a1);
}

void sub_271448A60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2712C9E78(va);
  _Unwind_Resume(a1);
}

void sub_271448A74()
{
  v1[0] = 0;
  v1[1] = 0;
  v0 = v1;
  sub_271810928();
}

void sub_271448C30(void *a1)
{
  *__p = 0u;
  v21 = 0u;
  *v19 = 0u;
  sub_2713C53C4(a1, v19);
  v3 = a1[6];
  v2 = a1[7];
  v4 = v2 >= v3;
  v5 = v2 - v3;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 > 7)
  {
    v6 = *(a1[3] + v3);
    a1[6] = v3 + 8;
    v7 = v21;
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v21 - __p[1]) >> 3);
    v9 = v6 - v8;
    if (v6 > v8)
    {
      sub_271440840(&__p[1], v9);
      v10 = __p[1];
      v11 = v21;
      if (__p[1] != v21)
      {
        goto LABEL_17;
      }

      goto LABEL_21;
    }

    if (v6 >= v8)
    {
      v11 = v21;
      v10 = __p[1];
      if (__p[1] != v21)
      {
        goto LABEL_17;
      }

LABEL_21:
      sub_2715D127C(v19, &v18);
    }

    v11 = __p[1] + 24 * v6;
    if (v21 != v11)
    {
      do
      {
        v12 = *(v7 - 1);
        if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v12->__on_zero_shared)(v12, v9);
          std::__shared_weak_count::__release_weak(v12);
        }

        v7 -= 24;
      }

      while (v7 != v11);
    }

    *&v21 = v11;
    v10 = __p[1];
    if (__p[1] == v11)
    {
      goto LABEL_21;
    }

    while (1)
    {
LABEL_17:
      v13 = a1[6];
      v14 = a1[7];
      v4 = v14 >= v13;
      v15 = v14 - v13;
      if (!v4)
      {
        v15 = 0;
      }

      if (v15 <= 3)
      {
        break;
      }

      v16 = *(a1[3] + v13);
      a1[6] = v13 + 4;
      sub_27144922C(a1, v10, v16);
      v10 += 24;
      if (v10 == v11)
      {
        goto LABEL_21;
      }
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Not enough data to read");
  exception->__vftable = (MEMORY[0x277D828E8] + 16);
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_271448F94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11)
{
  __cxa_free_exception(v11);
  sub_27143A558(&a11);
  _Unwind_Resume(a1);
}

void sub_271448FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_271448FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_271449004(void *a1, uint64_t *a2)
{
  v3 = a1[6];
  v2 = a1[7];
  v4 = v2 >= v3;
  v5 = v2 - v3;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v8 = *(a1[3] + v3);
  a1[6] = v3 + 8;
  v9 = *a2;
  v10 = a2[1];
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *a2) >> 3);
  v12 = v8 - v11;
  if (v8 <= v11)
  {
    if (v8 >= v11)
    {
      i = v10;
      v13 = *a2;
    }

    else
    {
      for (i = v9 + 24 * v8; v10 != i; v10 -= 24)
      {
        v16 = *(v10 - 8);
        if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v16->__on_zero_shared)(v16, v12);
          std::__shared_weak_count::__release_weak(v16);
        }
      }

      a2[1] = i;
      v13 = *a2;
    }
  }

  else
  {
    sub_271440840(a2, v12);
    v15 = a2;
    v13 = *a2;
    i = v15[1];
  }

  while (v13 != i)
  {
    sub_271449184(&v18, a1, v13);
    v13 += 24;
  }
}

uint64_t sub_271449184(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2[6];
  v3 = a2[7];
  v5 = v3 >= v4;
  v6 = v3 - v4;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v7 = *(a2[3] + v4);
  a2[6] = v4 + 4;

  return sub_27144922C(a2, a3, v7);
}

void sub_27144922C(void *a1, _WORD *a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = v3 - v2;
  if (v3 < v2)
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    v5 = a1[3];
    v6 = *(v5 + v2);
    v7 = v2 + 2;
    a1[6] = v2 + 2;
    *a2 = v6;
    if (v6 <= 1)
    {
      if (v6)
      {
        __p[0] = 0;
        __p[1] = 0;
        v18 = 0;
        sub_2717318E8(a1, __p);
        if (SHIBYTE(v18) >= 0)
        {
          v8 = __p;
        }

        else
        {
          v8 = __p[0];
        }

        if (SHIBYTE(v18) >= 0)
        {
          v9 = HIBYTE(v18);
        }

        else
        {
          v9 = __p[1];
        }

        v10 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v8, v9, 0x8000100u, 0);
        sub_2715CB2C0(v15, v10);
      }

      LOBYTE(__p[0]) = 7;
      LOBYTE(__p[1]) = 7;
      operator new();
    }

    if (v6 != 2)
    {
      if (v6 != 3)
      {
        if (v6 == 4)
        {
          __p[1] = 0;
          v18 = 0;
          __p[0] = &__p[1];
          sub_271810928();
        }

        sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Foundation/FoundationIO/include/Kit/FoundationIO/DictionaryRefIO.h", 250, "", 0, "invalid value type identifier", 0x1DuLL, sub_271852CA8);
        abort();
      }

      v15[0] = 0;
      v15[1] = 0;
      v16 = 0;
      sub_271449004(a1, v15);
      __p[1] = 0;
      v18 = 0;
      __p[0] = 0;
      sub_271441EDC(__p, 0xAAAAAAAAAAAAAAABLL * ((v15[1] - v15[0]) >> 3));
      sub_271449D68(v15[0], v15[1], __p);
      sub_271442434();
    }

    if (v3 > v7)
    {
      v11 = *(v5 + v7);
      v12 = MEMORY[0x277CBED28];
      a1[6] = v2 + 3;
      v13 = MEMORY[0x277CBED10];
      if (v11)
      {
        v13 = v12;
      }

      sub_271809A48(__p, *v13);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_271449BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_free_exception(v9);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_271449C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_271449C40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_27112F828(&a17);
  sub_271347F18(&a9);
  sub_271392A1C(&a13);
  _Unwind_Resume(a1);
}

void sub_271449C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, void *__p, uint64_t a22)
{
  sub_27112F828(&a17);
  if (__p)
  {
    a22 = __p;
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x271449D4CLL);
}

void sub_271449D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271392A1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271449D68(__int16 *a1, __int16 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = *a1;
    sub_2714421A8(&v5, (a1 + 4));
  }

  return a3;
}

void sub_271449EBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_27112F828(va1);
  sub_2712C9E78(va);
  _Unwind_Resume(a1);
}

void sub_271449ED8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2712C9E78(va);
  _Unwind_Resume(a1);
}

void sub_271449EEC(int *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 2)
    {
      goto LABEL_8;
    }

    v8 = a4;
    v11 = 2;
    (*(*a2 + 104))(a2, &v11);
    if (v11 >= 3)
    {
      v10 = v11;
      if ((atomic_load_explicit(&qword_280878C50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878C50))
      {
        sub_27144A1C8();
      }

      sub_271847D5C(&stru_280878C38, v10, 2u);
    }

    v6 = *a1;
    a4 = v8;
  }

  if (a4 >= 2 && v6 > 0)
  {
    (*(*a2 + 16))(a2);
    sub_27144A0A0(a2, a3, 2u);
  }

LABEL_8:
  if (a4 >= 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = a4;
  }

  sub_27144A0A0(a2, a3, v9);
}

void sub_27144A0A0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 >= 2)
  {
    v4[0] = 0;
    v4[1] = 0;
    v3 = v4;
    sub_271810928();
  }

  sub_27144A2D0();
}

void sub_27144A2A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27144A450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, char *a15)
{
  sub_271167834(&a14, a15);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_27144A470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_27112F828(&a11);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_27144A48C(void *a1)
{
  *__p = 0u;
  v9 = 0u;
  *v7 = 0u;
  sub_2713C774C(a1, v7);
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v9 - __p[1]) >> 3);
  (*(*a1 + 120))(a1, &v11);
  v2 = v9;
  v3 = 0xAAAAAAAAAAAAAAABLL * ((v9 - __p[1]) >> 3);
  v4 = v11 - v3;
  if (v11 <= v3)
  {
    if (v11 >= v3)
    {
      v5 = v9;
    }

    else
    {
      v5 = __p[1] + 24 * v11;
      if (v9 != v5)
      {
        do
        {
          v6 = *(v2 - 1);
          if (v6)
          {
            if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v6->__on_zero_shared)(v6, v4);
              std::__shared_weak_count::__release_weak(v6);
            }
          }

          v2 -= 24;
        }

        while (v2 != v5);
      }

      *&v9 = v5;
    }
  }

  else
  {
    sub_271440840(&__p[1], v4);
    v5 = v9;
  }

  v10[0] = __p[1];
  v10[1] = 0xAAAAAAAAAAAAAAABLL * ((v5 - __p[1]) >> 3);
  sub_27144A984(a1, v10);
  sub_2715D1F68(v7, v10);
}

void sub_27144A7A4(void *a1, uint64_t *a2)
{
  v12 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  (*(*a1 + 120))(a1, &v12);
  v4 = a2[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
  v6 = v12 - v5;
  if (v12 > v5)
  {
    sub_271440840(a2, v6);
    v9 = a2;
    j = *a2;
    i = v9[1];
    if (j == i)
    {
      return;
    }

    goto LABEL_17;
  }

  if (v12 >= v5)
  {
    i = a2[1];
    j = *a2;
    if (j == v4)
    {
      return;
    }

    goto LABEL_17;
  }

  for (i = *a2 + 24 * v12; v4 != i; v4 -= 24)
  {
    v10 = *(v4 - 8);
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10, v6);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

  a2[1] = i;
  for (j = *a2; j != i; j += 24)
  {
LABEL_17:
    v11 = *a1;
    *v13 = a1[1];
    v14 = 2;
    (*(v11 + 104))(a1, &v14);
    if (v13[0] >= 1)
    {
      sub_27144AC48(v13, a1, j, v14);
    }

    else
    {
      if (v14 < 2)
      {
        sub_27144AF24(&v14, a1);
      }

      sub_27144B11C(a1, j, v14);
    }
  }
}

void *sub_27144A984(void *result, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v2 = result;
    v3 = *a2;
    v4 = *result;
    v6 = result[1];
    LODWORD(v7[0]) = 2;
    (*(v4 + 104))(result, v7);
    v5 = v7[0];
    v8 = v7[0];
    v7[0] = v2;
    v7[1] = v3;
    v7[2] = &v6;
    v7[3] = &v8;
    if (v6 < 1)
    {
      if (v5 >= 2)
      {
        sub_27144B11C(v2, v3);
      }

      sub_27144AF24(&v9, v2);
    }

    sub_27144AA78(v7);
  }

  return result;
}

void sub_27144AA78(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = **(a1 + 24);
  v5 = *v3;
  if (*v3 == 2)
  {
    if (v4 < 2)
    {
      goto LABEL_11;
    }

    v9 = 2;
    (*(*v1 + 104))(v1, &v9);
    if (v9 >= 3)
    {
      v7 = v9;
      if ((atomic_load_explicit(&qword_280878C70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878C70))
      {
        sub_27144AE20();
      }

      sub_271847D5C(&stru_280878C58, v7, 2u);
    }

    v5 = *v3;
  }

  if (v5 >= 1 && v4 > 1)
  {
    (*(*v1 + 16))(v1);
    sub_27144B11C(v1, v2);
  }

  if (v4 > 1)
  {
    sub_27144B11C(v1, v2);
  }

LABEL_11:
  sub_27144AF24(&v8, v1);
}

uint64_t sub_27144AC48(int *a1, _BYTE *a2, uint64_t a3, unsigned int a4)
{
  v6 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 2)
    {
      goto LABEL_10;
    }

    v8 = a4;
    v11 = 2;
    (*(*a2 + 104))(a2, &v11);
    if (v11 >= 3)
    {
      v10 = v11;
      if ((atomic_load_explicit(&qword_280878C70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878C70))
      {
        sub_27144AE20();
      }

      sub_271847D5C(&stru_280878C58, v10, 2u);
    }

    v6 = *a1;
    a4 = v8;
  }

  if (a4 >= 2 && v6 > 0)
  {
    (*(*a2 + 16))(a2);
    sub_27144B11C(a2, a3, 2);
    return (*(*a2 + 24))(a2);
  }

  if (a4 <= 1)
  {
LABEL_10:
    sub_27144AF24(&v12, a2);
  }

  return sub_27144B11C(a2, a3, 2);
}

void sub_27144AEF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27144AF24(uint64_t a1, _BYTE *a2)
{
  v3 = 0;
  v4 = 0;
  sub_27144C894(a2, &v2);
}

void sub_27144B0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(va1);
  sub_2712C9E78(va);
  _Unwind_Resume(a1);
}

void sub_27144B0F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2712C9E78(va);
  _Unwind_Resume(a1);
}

void sub_27144B108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2712C9E78(va);
  _Unwind_Resume(a1);
}

void sub_27144B11C(_BYTE *a1, _WORD *a2)
{
  __p[0] = a2;
  sub_27144BBF8(a1, __p);
  v4 = *a2;
  if (v4 <= 1)
  {
    if (!*a2)
    {
      LOBYTE(__p[0]) = 7;
      LOBYTE(__p[1]) = 7;
      operator new();
    }

    if (v4 == 1)
    {
      __p[0] = 0;
      __p[1] = 0;
      v13 = 0;
      (*(*a1 + 144))(a1, __p);
      if (SHIBYTE(v13) >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      if (SHIBYTE(v13) >= 0)
      {
        v6 = HIBYTE(v13);
      }

      else
      {
        v6 = __p[1];
      }

      v7 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v5, v6, 0x8000100u, 0);
      sub_2715CB2C0(v9, v7);
    }
  }

  else
  {
    switch(v4)
    {
      case 2u:
        LOBYTE(v11) = 0;
        (*(*a1 + 32))(a1, &v11);
        v8 = MEMORY[0x277CBED28];
        if (!v11)
        {
          v8 = MEMORY[0x277CBED10];
        }

        sub_271809A48(__p, *v8);
      case 3u:
        v9[0] = 0;
        v9[1] = 0;
        v10 = 0;
        sub_27144A7A4(a1, v9);
        __p[1] = 0;
        v13 = 0;
        __p[0] = 0;
        sub_271441EDC(__p, 0xAAAAAAAAAAAAAAABLL * ((v9[1] - v9[0]) >> 3));
        sub_27144BD70(v9[0], v9[1], __p);
        sub_271442434();
      case 4u:
        __p[1] = 0;
        v13 = 0;
        __p[0] = &__p[1];
        sub_271810928();
    }
  }

  sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Foundation/FoundationIO/include/Kit/FoundationIO/DictionaryRefIO.h", 250, "", 0, "invalid value type identifier", 0x1DuLL, sub_271852CA8);
  abort();
}

void sub_27144BAC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_27144BAE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_27112F828(&a17);
  sub_271347F18(&a9);
  sub_271392A1C(&a13);
  _Unwind_Resume(a1);
}

void sub_27144BB34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, void *__p, uint64_t a22)
{
  sub_27112F828(&a17);
  if (__p)
  {
    a22 = __p;
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x27144BBDCLL);
}

void sub_27144BBA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271392A1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27144BBF8(_BYTE *a1, _WORD **a2)
{
  if ((a1[12] & 2) != 0)
  {
    memset(__p, 0, sizeof(__p));
    (*(*a1 + 144))(a1, __p);
    operator new();
  }

  LOWORD(__p[0]) = 0;
  result = (*(*a1 + 96))(a1, __p);
  **a2 = __p[0];
  return result;
}

void sub_27144BD1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  a17 = 0;
  sub_27184D728(&a17, v17);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27144BD70(__int16 *a1, __int16 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = *a1;
    sub_2714421A8(&v5, (a1 + 4));
  }

  return a3;
}

void sub_27144BEC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_27112F828(va1);
  sub_2712C9E78(va);
  _Unwind_Resume(a1);
}

void sub_27144BEE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2712C9E78(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27144BEF4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1[3];
  v5 = *v3;
  if (*v3 == 2)
  {
    if (v4 < 2)
    {
      goto LABEL_11;
    }

    v9 = 2;
    (*(*v1 + 104))(v1, &v9);
    if (v9 >= 3)
    {
      v8 = v9;
      if ((atomic_load_explicit(&qword_280878C90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878C90))
      {
        sub_27144C0C4();
      }

      sub_271847D5C(&stru_280878C78, v8, 2u);
    }

    v5 = *v3;
  }

  if (v5 < 1 || v4 <= 1)
  {
    if (v4 > 1)
    {
      return sub_27144A48C(v1, v2, 2);
    }

LABEL_11:
    sub_27144C1CC();
  }

  (*(*v1 + 16))(v1);
  sub_27144A48C(v1, v2, 2);
  return (*(*v1 + 24))(v1);
}

void sub_27144C19C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27144C1CC()
{
  v1[0] = 0;
  v1[1] = 0;
  v0 = v1;
  sub_271810928();
}

void sub_27144C388(uint64_t a1)
{
  *__p = 0u;
  v11 = 0u;
  *v9 = 0u;
  sub_2713C774C(a1, v9);
  *&v8 = 0xAAAAAAAAAAAAAAABLL * ((v11 - __p[1]) >> 3);
  (*(*a1 + 120))(a1, &v8);
  v2 = v11;
  v3 = 0xAAAAAAAAAAAAAAABLL * ((v11 - __p[1]) >> 3);
  v4 = v8 - v3;
  if (v8 <= v3)
  {
    if (v8 >= v3)
    {
      v6 = v11;
      v5 = __p[1];
      if (v11 == __p[1])
      {
        goto LABEL_15;
      }
    }

    else
    {
      v6 = __p[1] + 24 * v8;
      if (v11 != v6)
      {
        do
        {
          v7 = *(v2 - 1);
          if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7, v4);
            std::__shared_weak_count::__release_weak(v7);
          }

          v2 -= 24;
        }

        while (v2 != v6);
      }

      *&v11 = v6;
      v5 = __p[1];
      if (v6 == __p[1])
      {
LABEL_15:
        sub_2715D127C(v9, &v8);
      }
    }
  }

  else
  {
    sub_271440840(&__p[1], v4);
    v5 = __p[1];
    v6 = v11;
    if (v11 == __p[1])
    {
      goto LABEL_15;
    }
  }

  do
  {
    v12 = 1;
    (*(*a1 + 104))(a1, &v12);
    sub_27144C894(a1, v5, v12);
    v5 += 24;
  }

  while (v5 != v6);
  goto LABEL_15;
}

void sub_27144C6AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_27144C6C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_27144C6D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_27144C6E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_27144C6FC(uint64_t a1, uint64_t *a2)
{
  v11 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  (*(*a1 + 120))(a1, &v11);
  v4 = a2[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
  v6 = v11 - v5;
  if (v11 > v5)
  {
    sub_271440840(a2, v6);
    v9 = a2;
    j = *a2;
    i = v9[1];
    if (j == i)
    {
      return;
    }

    goto LABEL_14;
  }

  if (v11 >= v5)
  {
    i = a2[1];
    j = *a2;
    if (j == v4)
    {
      return;
    }

    goto LABEL_14;
  }

  for (i = *a2 + 24 * v11; v4 != i; v4 -= 24)
  {
    v10 = *(v4 - 8);
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10, v6);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

  a2[1] = i;
  for (j = *a2; j != i; j += 24)
  {
LABEL_14:
    v12 = 1;
    (*(*a1 + 104))(a1, &v12);
    sub_27144C894(a1, j, v12);
  }
}

void sub_27144C894(_BYTE *a1, _WORD *a2)
{
  __p[0] = a2;
  sub_27144BBF8(a1, __p);
  v4 = *a2;
  if (v4 <= 1)
  {
    if (!*a2)
    {
      LOBYTE(__p[0]) = 7;
      LOBYTE(__p[1]) = 7;
      operator new();
    }

    if (v4 == 1)
    {
      __p[0] = 0;
      __p[1] = 0;
      v13 = 0;
      (*(*a1 + 144))(a1, __p);
      if (SHIBYTE(v13) >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      if (SHIBYTE(v13) >= 0)
      {
        v6 = HIBYTE(v13);
      }

      else
      {
        v6 = __p[1];
      }

      v7 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v5, v6, 0x8000100u, 0);
      sub_2715CB2C0(v9, v7);
    }
  }

  else
  {
    switch(v4)
    {
      case 2u:
        LOBYTE(v11) = 0;
        (*(*a1 + 32))(a1, &v11);
        v8 = MEMORY[0x277CBED28];
        if (!v11)
        {
          v8 = MEMORY[0x277CBED10];
        }

        sub_271809A48(__p, *v8);
      case 3u:
        v9[0] = 0;
        v9[1] = 0;
        v10 = 0;
        sub_27144C6FC(a1, v9);
        __p[1] = 0;
        v13 = 0;
        __p[0] = 0;
        sub_271441EDC(__p, 0xAAAAAAAAAAAAAAABLL * ((v9[1] - v9[0]) >> 3));
        sub_27144D320(v9[0], v9[1], __p);
        sub_271442434();
      case 4u:
        __p[1] = 0;
        v13 = 0;
        __p[0] = &__p[1];
        sub_271810928();
    }
  }

  sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Foundation/FoundationIO/include/Kit/FoundationIO/DictionaryRefIO.h", 250, "", 0, "invalid value type identifier", 0x1DuLL, sub_271852CA8);
  abort();
}

void sub_27144D1F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_27144D20C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_27112F828(&a17);
  sub_271347F18(&a9);
  sub_271392A1C(&a13);
  _Unwind_Resume(a1);
}

void sub_27144D25C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, void *__p, uint64_t a22)
{
  sub_27112F828(&a17);
  if (__p)
  {
    a22 = __p;
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x27144D304);
}

void sub_27144D2C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271392A1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27144D320(__int16 *a1, __int16 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = *a1;
    sub_2714421A8(&v5, (a1 + 4));
  }

  return a3;
}

void sub_27144D474(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_27112F828(va1);
  sub_2712C9E78(va);
  _Unwind_Resume(a1);
}

void sub_27144D490(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2712C9E78(va);
  _Unwind_Resume(a1);
}

void sub_27144D4A4(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v7[25] = *MEMORY[0x277D85DE8];
  v3 = a2[1];
  v4 = *a2;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 1);
  v6 = *a3;
  sub_27113523C(v7, a3 + 1);
  operator new();
}

void sub_27144D8F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(*v9 + 8))(v9);
  sub_27144D954(&a9);
  _Unwind_Resume(a1);
}

void *sub_27144D954(void *a1)
{
  *a1 = &unk_28812DE38;
  sub_271134CBC((a1 + 8));
  result = a1;
  a1[1] = &unk_28812DE80;
  v3 = a1[3];
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

void sub_27144DA14(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v15 = a2[1];
  v4 = a2[2];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v16 = *(a2 + 3);
  v5 = *(a1 + 40);
  if (*v5 > 1u)
  {
    v8 = (a1 + 88);
    v6 = a1 + 72;
    v9 = (a1 + 80);
    if ((*(a1 + 88) & 1) != 0 && *(a1 + 80) == 7 && **v6 == *"version" && *(*v6 + 3) == *"sion")
    {
      goto LABEL_13;
    }
  }

  else
  {
    *(a1 + 72) = "byte_size";
    v6 = a1 + 72;
    v8 = (a1 + 88);
    v7 = *(a1 + 88);
    *(a1 + 80) = 9;
    v9 = (a1 + 80);
    if ((v7 & 1) == 0)
    {
      *v8 = 1;
    }
  }

  LOBYTE(v17) = 6;
  *(&v17 + 1) = v3;
  v11 = sub_2718289B0(a1);
  v12 = *v11;
  *v11 = 6;
  LOBYTE(v17) = v12;
  v13 = v11[1];
  v11[1] = *(&v17 + 1);
  *(&v17 + 1) = v13;
  sub_2715CC40C(&v17 + 1, v12);
  v5 = *(a1 + 40);
LABEL_13:
  v17 = v16;
  if (*v5 <= 1u)
  {
    v14 = *v8;
    *v6 = "bytes";
    *v9 = 5;
    if ((v14 & 1) == 0)
    {
      *v8 = 1;
    }
  }

  sub_271828DE4(a1, &v17);
}

void sub_27144DBD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2715CC40C((v2 + 8), 6);
  sub_2712C9E78(va);
  _Unwind_Resume(a1);
}

void sub_27144DBF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2712C9E78(va);
  _Unwind_Resume(a1);
}

void sub_27144DC04(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 16);
  v8 = *(a2 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 + 24);
  v6 = *(a1 + 24);
  if (*(v6 + 40) == 1)
  {
    v12[0] = (v6 + 16);
    sub_271846AEC(v12, v4);
  }

  else
  {
    sub_271846E00((v6 + 8));
  }

  v10 = v9;
  v7 = *(a1 + 24);
  if (*(v7 + 40) == 1)
  {
    v11 = (v7 + 16);
    LODWORD(v12[0]) = DWORD2(v9);
    v12[1] = v9;
    sub_27184500C(&v11, v12);
  }

  else
  {
    sub_2718452C0((v7 + 8), &v10);
  }

  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

void sub_27144DD30(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v15 = a2[1];
  v4 = a2[2];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v16 = *(a2 + 3);
  v5 = *(a1 + 40);
  if (*v5 > 1u)
  {
    v8 = (a1 + 88);
    v6 = a1 + 72;
    v9 = (a1 + 80);
    if ((*(a1 + 88) & 1) != 0 && *(a1 + 80) == 7 && **v6 == *"version" && *(*v6 + 3) == *"sion")
    {
      goto LABEL_13;
    }
  }

  else
  {
    *(a1 + 72) = "byte_size";
    v6 = a1 + 72;
    v8 = (a1 + 88);
    v7 = *(a1 + 88);
    *(a1 + 80) = 9;
    v9 = (a1 + 80);
    if ((v7 & 1) == 0)
    {
      *v8 = 1;
    }
  }

  LOBYTE(v17) = 6;
  *(&v17 + 1) = v3;
  v11 = sub_27182815C(a1);
  v12 = *v11;
  *v11 = 6;
  LOBYTE(v17) = v12;
  v13 = v11[1];
  v11[1] = *(&v17 + 1);
  *(&v17 + 1) = v13;
  sub_2715CA870(&v17 + 1, v12);
  v5 = *(a1 + 40);
LABEL_13:
  v17 = v16;
  if (*v5 <= 1u)
  {
    v14 = *v8;
    *v6 = "bytes";
    *v9 = 5;
    if ((v14 & 1) == 0)
    {
      *v8 = 1;
    }
  }

  sub_271828638(a1, &v17);
}

void sub_27144DEEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2715CA870((v2 + 8), 6);
  sub_2712C9E78(va);
  _Unwind_Resume(a1);
}

void sub_27144DF0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2712C9E78(va);
  _Unwind_Resume(a1);
}

void sub_27144DF20(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v6 = a2[1];
  v4 = a2[2];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(a2 + 3);
  if (*(a1 + 40))
  {
    v5 = *(a1 + 24);
    LOBYTE(v8) = *(a1 + 32);
    sub_271120E64(v5, &v8, 1);
  }

  MEMORY[0x2743BE850](*(a1 + 24), v3);
  ++*(a1 + 40);
  v8 = v7;
  sub_2718395E4(a1, &v8);
  if (v4)
  {
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

void sub_27144E01C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2712C9E78(va);
  _Unwind_Resume(a1);
}

void sub_27144E030(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  __src = *a2;
  v7 = v3;
  v4 = a2[2];
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 + 3);
  sub_27173318C(a1 + 24, *(a1 + 32), &__src, &v7, 8uLL);
  sub_27173318C(a1 + 24, *(a1 + 32), v9, (*(&v9 + 1) + v9), *(&v9 + 1));
  v5 = v8;
  if (v8)
  {
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

void sub_27144E108(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2712C9E78(va);
  _Unwind_Resume(a1);
}

void sub_27144E11C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v6[0] = *a2;
  v6[1] = v3;
  v4 = *(a2 + 16);
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 24);
  (*(*a1 + 120))(a1, v6);
  v9 = v8;
  (*(*a1 + 272))(a1, &v9);
  v5 = v7;
  if (v7)
  {
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

void sub_27144E22C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2712C9E78(va);
  _Unwind_Resume(a1);
}

void sub_27144E240(uint64_t a1, void *a2)
{
  v5[0] = *(a1 + 32);
  v4 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v4;
  sub_27182D194(a1 + 40, v5);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  v5[0] = "version";
  v5[1] = 7;
  v6 = 2;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_27182EB6C(a1, &v6);
  if (v6 < 2)
  {
    sub_27144E33C();
  }

  sub_27144E4C0(a1, a2);
}

void sub_27144E33C()
{
  v0 = 0;
  __p = 0;
  v2 = 0;
  v3 = 0;
  sub_27174E2EC();
}

void sub_27144E4A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27144E4C0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 104);
  *(a1 + 88) = "byte_size";
  *(a1 + 96) = 9;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v5 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  *&v10 = 0;
  sub_2715D693C(v5, &v10);
  v6 = v10;
  *a2 = v10;
  memset(&v9[2], 0, 24);
  if (v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  v9[0] = 0;
  v9[1] = 0;
  v7 = *(a1 + 104);
  *(a1 + 88) = "bytes";
  *(a1 + 96) = 5;
  if ((v7 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v8 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  sub_27182D810(v8, v9);
  sub_27174E2EC();
}

void sub_27144E654(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27144E67C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 104);
  *(a1 + 88) = "byte_size";
  *(a1 + 96) = 9;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v5 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  *&v10 = 0;
  sub_2715D693C(v5, &v10);
  v6 = v10;
  *a2 = v10;
  memset(&v9[2], 0, 24);
  if (v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  v9[0] = 0;
  v9[1] = 0;
  v7 = *(a1 + 104);
  *(a1 + 88) = "bytes";
  *(a1 + 96) = 5;
  if ((v7 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v8 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  sub_27182D810(v8, v9);
  sub_27174E2EC();
}

void sub_27144E810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27144E838(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int a4)
{
  if (a4 > 1)
  {
    v7 = 0;
    sub_27183FF6C(*(a2 + 48), &v7);
    *&v6 = (*(*(a2 + 16) + 32))(a2 + 16);
    *(&v6 + 1) = v7;
    sub_2713BF82C(a2 + 24, &v6);
    sub_27144EAE8(a2, a3);
  }

  sub_27144E964();
}

void sub_27144E964()
{
  v0 = 0;
  __p = 0;
  v2 = 0;
  v3 = 0;
  sub_27174E2EC();
}

void sub_27144EACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27144EAE8(uint64_t a1, uint64_t *a2)
{
  sub_27183FF6C(*(a1 + 48), a2);
  v4 = *a2;
  memset(&v5[2], 0, 24);
  if (v4)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_2718413A8(a1, v5);
  sub_27174E2EC();
}

void sub_27144EC10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27144EC38(uint64_t a1, uint64_t *a2)
{
  sub_27183FF6C(*(a1 + 48), a2);
  v4 = *a2;
  memset(&v5[2], 0, 24);
  if (v4)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_2718413A8(a1, v5);
  sub_27174E2EC();
}

void sub_27144ED60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27144ED88(uint64_t a1, void *a2)
{
  v5[0] = *(a1 + 32);
  v4 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v4;
  sub_27182D194(a1 + 40, v5);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  v5[0] = "version";
  v5[1] = 7;
  v6 = 2;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_27182DBE0(a1, &v6);
  if (v6 < 2)
  {
    sub_27144EE84();
  }

  sub_27144F008(a1, a2);
}

void sub_27144EE84()
{
  v0 = 0;
  __p = 0;
  v2 = 0;
  v3 = 0;
  sub_27174E2EC();
}

void sub_27144EFEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27144F008(uint64_t a1, void *a2)
{
  v4 = *(a1 + 104);
  *(a1 + 88) = "byte_size";
  *(a1 + 96) = 9;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v5 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  *&v10 = 0;
  sub_2715D613C(v5, &v10);
  v6 = v10;
  *a2 = v10;
  memset(&v9[2], 0, 24);
  if (v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  v9[0] = 0;
  v9[1] = 0;
  v7 = *(a1 + 104);
  *(a1 + 88) = "bytes";
  *(a1 + 96) = 5;
  if ((v7 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v8 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  sub_27182D3F8(v8, v9);
  sub_27174E2EC();
}

void sub_27144F19C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27144F1C4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 104);
  *(a1 + 88) = "byte_size";
  *(a1 + 96) = 9;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v5 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  *&v10 = 0;
  sub_2715D613C(v5, &v10);
  v6 = v10;
  *a2 = v10;
  memset(&v9[2], 0, 24);
  if (v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  v9[0] = 0;
  v9[1] = 0;
  v7 = *(a1 + 104);
  *(a1 + 88) = "bytes";
  *(a1 + 96) = 5;
  if ((v7 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v8 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  sub_27182D3F8(v8, v9);
  sub_27174E2EC();
}

void sub_27144F358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27144F380()
{
  v0 = 0;
  __p = 0;
  v2 = 0;
  v3 = 0;
  sub_27174E2EC();
}

void sub_27144F4E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27144F504(uint64_t a1, uint64_t *a2)
{
  sub_27183B6AC(a1, a2);
  v4 = *a2;
  memset(&v5[2], 0, 24);
  if (v4)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_27183D9CC(a1, v5);
  sub_27174E2EC();
}

void sub_27144F628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27144F650(uint64_t a1, uint64_t *a2)
{
  sub_27183B6AC(a1, a2);
  v4 = *a2;
  memset(&v5[2], 0, 24);
  if (v4)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_27183D9CC(a1, v5);
  sub_27174E2EC();
}

void sub_27144F774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27144F79C(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[6];
  v4 = a2[7];
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 > 3)
  {
    v7 = *(a2[3] + v3);
    a2[6] = v3 + 4;
    if (v7 > 1)
    {
      sub_27173170C(a2);
      sub_27144FA18(a2, a3);
    }

    sub_27144F894();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_27144F894()
{
  v0 = 0;
  __p = 0;
  v2 = 0;
  v3 = 0;
  sub_27174E2EC();
}

void sub_27144F9FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27144FA18(void *a1, void *a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 > 7)
  {
    v6 = *(a1[3] + v2);
    *a2 = v6;
    v7 = a1[6] + 8;
    a1[6] = v7;
    if (v6)
    {
      if ((v6 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_2711BE688();
    }

    a1[7];
    a1[6] = v7;
    sub_27174E2EC();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_27144FC24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (v13)
  {
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_27144FC70(void *a1, void *a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 > 7)
  {
    v6 = *(a1[3] + v2);
    *a2 = v6;
    v7 = a1[6] + 8;
    a1[6] = v7;
    if (v6)
    {
      if ((v6 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_2711BE688();
    }

    a1[7];
    a1[6] = v7;
    sub_27174E2EC();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_27144FE7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (v13)
  {
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_27144FEC8(int *a1, uint64_t a2, uint64_t *a3, unsigned int a4)
{
  v6 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 2)
    {
      goto LABEL_10;
    }

    v8 = a4;
    v10 = 2;
    (*(*a2 + 104))(a2, &v10);
    if (v10 >= 3)
    {
      v9 = v10;
      if ((atomic_load_explicit(&qword_280878CB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878CB0))
      {
        sub_2718519B4("cv3d::kit::conio::BlobSample]", 0x1CuLL, &stru_280878C98);
        __cxa_guard_release(&qword_280878CB0);
        sub_271847D5C(&stru_280878C98, v9, 2u);
      }

      sub_271847D5C(&stru_280878C98, v9, 2u);
    }

    v6 = *a1;
    a4 = v8;
  }

  if (a4 >= 2 && v6 > 0)
  {
    (*(*a2 + 16))(a2);
    sub_27145022C(a2, a3);
  }

  if (a4 > 1)
  {
    sub_27145022C(a2, a3);
  }

LABEL_10:
  sub_2714500A8();
}

void sub_2714500A8()
{
  v0 = 0;
  __p = 0;
  v2 = 0;
  v3 = 0;
  sub_27174E2EC();
}

void sub_271450210(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27145022C(uint64_t a1, uint64_t *a2)
{
  (*(*a1 + 120))(a1);
  v4 = *a2;
  memset(&v5[2], 0, 24);
  if (v4)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  v5[0] = 0;
  v5[1] = 0;
  (*(*a1 + 272))(a1, v5);
  sub_27174E2EC();
}

void sub_271450398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714503C0(uint64_t a1, uint64_t *a2)
{
  (*(*a1 + 120))(a1);
  v4 = *a2;
  memset(&v5[2], 0, 24);
  if (v4)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  v5[0] = 0;
  v5[1] = 0;
  (*(*a1 + 272))(a1, v5);
  sub_27174E2EC();
}

void sub_27145052C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_271450554(uint64_t a1, uint64_t a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 192);
  if (v4 == 2)
  {
    sub_271399EB0(a1 + 16, &v34);
  }

  else if (v4 == 1)
  {
    sub_2713DA430(a1 + 16, &v34);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a1 + 16, &v34);
  }

  v5 = *(a2 + 192);
  if (v5 == 2)
  {
    sub_271399EB0(a2 + 16, &v19);
  }

  else if (v5 == 1)
  {
    sub_2713DA430(a2 + 16, &v19);
  }

  else
  {
    if (v5)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a2 + 16, &v19);
  }

  if (v34 != v19)
  {
    goto LABEL_19;
  }

  if (v35 != v20)
  {
    goto LABEL_19;
  }

  v18[0] = &v36;
  v18[1] = &v39;
  v18[2] = &v40;
  v18[3] = &v43;
  v18[4] = &v46;
  v17[0] = &v21;
  v17[1] = &v24;
  v17[2] = &v25;
  v17[3] = &v28;
  v17[4] = &__p;
  if (!sub_2714FBB90(v18, v17))
  {
    goto LABEL_19;
  }

  if (*(a1 + 200) == *(a2 + 200))
  {
    v6 = sub_271835718((a1 + 208), (a2 + 208)) == 0;
    if (v33 != 1)
    {
      goto LABEL_33;
    }
  }

  else
  {
LABEL_19:
    v6 = 0;
    if (v33 != 1)
    {
      goto LABEL_33;
    }
  }

  v7 = __p;
  if (__p)
  {
    v8 = v32;
    v9 = __p;
    if (v32 == __p)
    {
LABEL_32:
      v32 = v7;
      operator delete(v9);
      goto LABEL_33;
    }

    while (1)
    {
      v10 = v8;
      if (*(v8 - 16) == 1 && *(v8 - 41) < 0)
      {
        operator delete(*(v8 - 8));
        v8 -= 12;
        if (*(v10 - 72) == 1)
        {
LABEL_27:
          if (*(v10 - 73) < 0)
          {
            operator delete(*v8);
          }
        }
      }

      else
      {
        v8 -= 12;
        if (*(v10 - 72) == 1)
        {
          goto LABEL_27;
        }
      }

      if (v8 == v7)
      {
        v9 = __p;
        goto LABEL_32;
      }
    }
  }

LABEL_33:
  if (v30 == 1 && v29 < 0)
  {
    operator delete(v28);
  }

  if (v27 == 1 && v26 < 0)
  {
    operator delete(v25);
  }

  if (v23 == 1 && v22 < 0)
  {
    operator delete(v21);
  }

  if (v48 == 1)
  {
    v11 = v46;
    if (v46)
    {
      v12 = v47;
      v13 = v46;
      if (v47 == v46)
      {
LABEL_55:
        v47 = v11;
        operator delete(v13);
        goto LABEL_56;
      }

      while (1)
      {
        v14 = v12;
        if (*(v12 - 16) == 1 && *(v12 - 41) < 0)
        {
          operator delete(*(v12 - 8));
          v12 -= 12;
          if (*(v14 - 72) == 1)
          {
LABEL_50:
            if (*(v14 - 73) < 0)
            {
              operator delete(*v12);
            }
          }
        }

        else
        {
          v12 -= 12;
          if (*(v14 - 72) == 1)
          {
            goto LABEL_50;
          }
        }

        if (v12 == v11)
        {
          v13 = v46;
          goto LABEL_55;
        }
      }
    }
  }

LABEL_56:
  if (v45 == 1 && v44 < 0)
  {
    operator delete(v43);
  }

  if (v42 == 1 && v41 < 0)
  {
    operator delete(v40);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_2714508DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  sub_271134CBC(v47);
  sub_271134CBC(&a47);
  _Unwind_Resume(a1);
}

void sub_271450918(char **a1, uint64_t a2)
{
  v15 = a2;
  v16 = a2;
  v4 = *a1;
  v5 = **a1;
  v6 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243E0, 0);
  if (v6)
  {
    sub_271450ED0(&v16, v6);
  }

  v16 = a2;
  v7 = *v4;
  v8 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812B660, 0);
  if (v8)
  {
    sub_2714513FC(&v16, v8);
  }

  else
  {
    v16 = a2;
    v9 = *v4;
    v10 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243A8, 0);
    if (v10)
    {
      sub_271451690(&v16, v10);
    }

    v16 = a2;
    v11 = *v4;
    v12 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812BD08, 0);
    if (v12)
    {
      sub_271451BBC(&v16, v12);
    }

    else
    {
      v16 = a2;
      v13 = *v4;
      v14 = __dynamic_cast(a1, &unk_28812BF60, &unk_28811DD60, 0);
      if (v14)
      {
        sub_271451DD0(&v16, v14);
      }

      else
      {
        sub_271450AE4(&v15, a1);
      }
    }
  }
}

void sub_271450AE4(uint64_t *a1, _DWORD *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v9 = a2[2];
    v12 = 4;
    (*(*a2 + 104))(a2, &v12);
    v10 = v12;
    if (v9 >= 1)
    {
      if (v9 == 2)
      {
        v12 = 3;
        (*(*a2 + 104))(a2, &v12);
      }

      (*(*a2 + 16))(a2);
      sub_2713DFA84(a2, v3 + 16, v10);
      goto LABEL_16;
    }

    sub_2713DFA84(a2, v3 + 16, v12);
  }

  else if (v4 == 1)
  {
    v7 = a2[2];
    v12 = 5;
    (*(*a2 + 104))(a2, &v12);
    v8 = v12;
    if (v7 >= 1)
    {
      if (v7 == 2)
      {
        v12 = 3;
        (*(*a2 + 104))(a2, &v12);
      }

      (*(*a2 + 16))(a2);
      sub_2713DF128(a2, v3 + 16, v8);
      goto LABEL_16;
    }

    sub_2713DF128(a2, v3 + 16, v12);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    v5 = a2[2];
    v12 = 6;
    (*(*a2 + 104))(a2, &v12);
    v6 = v12;
    if (v5 >= 1)
    {
      if (v5 == 2)
      {
        v12 = 3;
        (*(*a2 + 104))(a2, &v12);
      }

      (*(*a2 + 16))(a2);
      sub_2713B9F84(a2, v3 + 16, v6);
LABEL_16:
      (*(*a2 + 24))(a2);
      goto LABEL_17;
    }

    sub_2713B9F84(a2, v3 + 16, v12);
  }

LABEL_17:
  v11 = a2[2];
  v12 = 2;
  (*(*a2 + 104))(a2, &v12);
  if (v11 < 1)
  {
    sub_2713DFD48(a2, v3 + 200);
  }

  else
  {
    if (v11 == 2)
    {
      v12 = 2;
      (*(*a2 + 104))(a2, &v12);
    }

    (*(*a2 + 16))(a2);
    sub_2713DFD48(a2, v3 + 200);
    (*(*a2 + 24))(a2);
  }
}

void sub_271450ED0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 != 2)
  {
    if (v4 != 1)
    {
      if (!v4)
      {
        v5 = (a2 + 40);
        if (**(a2 + 40) <= 1u)
        {
          v6 = *(a2 + 88);
          *(a2 + 72) = "info";
          *(a2 + 80) = 4;
          if ((v6 & 1) == 0)
          {
            *(a2 + 88) = 1;
          }
        }

        sub_27182791C(a2 + 48, v5);
        v7 = sub_2718289B0(a2);
        *(a2 + 40) = v7;
        if (*(a2 + 88))
        {
          *(a2 + 88) = 0;
        }

        if (*v7 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v8 = *"sion" == 1852795251) : (v8 = 0), v8))
        {
          *(a2 + 96) = 6;
          *(a2 + 100) = 1;
          *(a2 + 88) = 0;
        }

        else
        {
          v26 = 6;
          v9 = sub_2718289B0(a2);
          v10 = *v9;
          *v9 = 6;
          v11 = v9[1];
          v9[1] = v26;
          v26 = v11;
          sub_2715CC40C(&v26, v10);
        }

        sub_2713B29CC(a2, v3 + 16);
      }

      sub_2711308D4();
    }

    v12 = (a2 + 40);
    if (**(a2 + 40) <= 1u)
    {
      v13 = *(a2 + 88);
      *(a2 + 72) = "info";
      *(a2 + 80) = 4;
      if ((v13 & 1) == 0)
      {
        *(a2 + 88) = 1;
      }
    }

    sub_27182791C(a2 + 48, v12);
    v14 = sub_2718289B0(a2);
    *(a2 + 40) = v14;
    if (*(a2 + 88))
    {
      *(a2 + 88) = 0;
    }

    if (*v14 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v15 = *"sion" == 1852795251) : (v15 = 0), v15))
    {
      *(a2 + 96) = 5;
      *(a2 + 100) = 1;
      *(a2 + 88) = 0;
    }

    else
    {
      v26 = 5;
      v16 = sub_2718289B0(a2);
      v17 = *v16;
      *v16 = 6;
      v18 = v16[1];
      v16[1] = v26;
      v26 = v18;
      sub_2715CC40C(&v26, v17);
    }

    sub_2713DA6CC(a2, v3 + 16);
  }

  v19 = (a2 + 40);
  if (**(a2 + 40) <= 1u)
  {
    v20 = *(a2 + 88);
    *(a2 + 72) = "info";
    *(a2 + 80) = 4;
    if ((v20 & 1) == 0)
    {
      *(a2 + 88) = 1;
    }
  }

  sub_27182791C(a2 + 48, v19);
  v21 = sub_2718289B0(a2);
  *(a2 + 40) = v21;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v21 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v22 = *"sion" == 1852795251) : (v22 = 0), v22))
  {
    *(a2 + 96) = 4;
    *(a2 + 100) = 1;
    *(a2 + 88) = 0;
  }

  else
  {
    v26 = 4;
    v23 = sub_2718289B0(a2);
    v24 = *v23;
    *v23 = 6;
    v25 = v23[1];
    v23[1] = v26;
    v26 = v25;
    sub_2715CC40C(&v26, v24);
  }

  sub_2713DAF34(a2, v3 + 16);
}

void sub_2714513FC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v7 = *(a2 + 24);
    if (*(v7 + 40) == 1)
    {
      v25 = (v7 + 16);
      sub_2718460EC(&v25, 4u);
    }

    else
    {
      sub_27184636C(&v25, (v7 + 8));
    }

    sub_271840ADC(*(a2 + 24));
    sub_2713DC010(a2, v3 + 16, 4u);
  }

  else if (v4 == 1)
  {
    v6 = *(a2 + 24);
    if (*(v6 + 40) == 1)
    {
      v25 = (v6 + 16);
      sub_2718460EC(&v25, 5u);
    }

    else
    {
      sub_27184636C(&v25, (v6 + 8));
    }

    sub_271840ADC(*(a2 + 24));
    sub_2713DBEE0(a2, v3 + 16, 5u);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    v5 = *(a2 + 24);
    if (*(v5 + 40) == 1)
    {
      v25 = (v5 + 16);
      sub_2718460EC(&v25, 6u);
    }

    else
    {
      sub_27184636C(&v25, (v5 + 8));
    }

    sub_271840ADC(*(a2 + 24));
    sub_2713B5730(a2, v3 + 16, 6u);
  }

  v8 = *(a2 + 24);
  v9 = *(v8[11] - 8);
  sub_2718404E0(v8 + 6, v8[2] - v9 - 9);
  v10 = v8[6];
  if (v10)
  {
    memmove((v8[3] + v9), v8[7], v10);
  }

  v8[6] = 0;
  v11 = v8[10];
  v12 = v8[11] - 8;
  v8[11] = v12;
  if (v11 == v12)
  {
    v13 = *v8;
    v15 = v8[2];
    v14 = v8[3];
    std::ostream::write();
    if (*(v8 + 40) == 1)
    {
      free(v8[3]);
      *(v8 + 40) = 0;
    }
  }

  v16 = *(a2 + 24);
  if (*(v16 + 40) == 1)
  {
    v25 = (v16 + 16);
    sub_2718460EC(&v25, 2u);
  }

  else
  {
    sub_27184636C(&v25, (v16 + 8));
  }

  sub_271840ADC(*(a2 + 24));
  sub_2713DC40C(a2, (v3 + 200));
  v17 = *(a2 + 24);
  v18 = *(v17[11] - 8);
  sub_2718404E0(v17 + 6, v17[2] - v18 - 9);
  v19 = v17[6];
  if (v19)
  {
    memmove((v17[3] + v18), v17[7], v19);
  }

  v17[6] = 0;
  v20 = v17[10];
  v21 = v17[11] - 8;
  v17[11] = v21;
  if (v20 == v21)
  {
    v22 = *v17;
    v24 = v17[2];
    v23 = v17[3];
    std::ostream::write();
    if (*(v17 + 40) == 1)
    {
      free(v17[3]);
      *(v17 + 40) = 0;
    }
  }
}

void sub_271451690(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 != 2)
  {
    if (v4 != 1)
    {
      if (!v4)
      {
        v5 = (a2 + 40);
        if (**(a2 + 40) <= 1u)
        {
          v6 = *(a2 + 88);
          *(a2 + 72) = "info";
          *(a2 + 80) = 4;
          if ((v6 & 1) == 0)
          {
            *(a2 + 88) = 1;
          }
        }

        sub_2715DF0F0(a2 + 48, v5);
        v7 = sub_27182815C(a2);
        *(a2 + 40) = v7;
        if (*(a2 + 88))
        {
          *(a2 + 88) = 0;
        }

        if (*v7 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v8 = *"sion" == 1852795251) : (v8 = 0), v8))
        {
          *(a2 + 96) = 6;
          *(a2 + 100) = 1;
          *(a2 + 88) = 0;
        }

        else
        {
          v26 = 6;
          v9 = sub_27182815C(a2);
          v10 = *v9;
          *v9 = 6;
          v11 = v9[1];
          v9[1] = v26;
          v26 = v11;
          sub_2715CA870(&v26, v10);
        }

        sub_2713B6988(a2, v3 + 16);
      }

      sub_2711308D4();
    }

    v12 = (a2 + 40);
    if (**(a2 + 40) <= 1u)
    {
      v13 = *(a2 + 88);
      *(a2 + 72) = "info";
      *(a2 + 80) = 4;
      if ((v13 & 1) == 0)
      {
        *(a2 + 88) = 1;
      }
    }

    sub_2715DF0F0(a2 + 48, v12);
    v14 = sub_27182815C(a2);
    *(a2 + 40) = v14;
    if (*(a2 + 88))
    {
      *(a2 + 88) = 0;
    }

    if (*v14 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v15 = *"sion" == 1852795251) : (v15 = 0), v15))
    {
      *(a2 + 96) = 5;
      *(a2 + 100) = 1;
      *(a2 + 88) = 0;
    }

    else
    {
      v26 = 5;
      v16 = sub_27182815C(a2);
      v17 = *v16;
      *v16 = 6;
      v18 = v16[1];
      v16[1] = v26;
      v26 = v18;
      sub_2715CA870(&v26, v17);
    }

    sub_2713DCA04(a2, v3 + 16);
  }

  v19 = (a2 + 40);
  if (**(a2 + 40) <= 1u)
  {
    v20 = *(a2 + 88);
    *(a2 + 72) = "info";
    *(a2 + 80) = 4;
    if ((v20 & 1) == 0)
    {
      *(a2 + 88) = 1;
    }
  }

  sub_2715DF0F0(a2 + 48, v19);
  v21 = sub_27182815C(a2);
  *(a2 + 40) = v21;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v21 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v22 = *"sion" == 1852795251) : (v22 = 0), v22))
  {
    *(a2 + 96) = 4;
    *(a2 + 100) = 1;
    *(a2 + 88) = 0;
  }

  else
  {
    v26 = 4;
    v23 = sub_27182815C(a2);
    v24 = *v23;
    *v23 = 6;
    v25 = v23[1];
    v23[1] = v26;
    v26 = v25;
    sub_2715CA870(&v26, v24);
  }

  sub_2713DD090(a2, v3 + 16);
}

void *sub_271451BBC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    if (*(a2 + 40))
    {
      v16 = *(a2 + 24);
      v19 = *(a2 + 32);
      sub_271120E64(v16, &v19, 1);
    }

    MEMORY[0x2743BE7F0](*(a2 + 24), 4);
    ++*(a2 + 40);
    sub_2713DE40C(a2, v3 + 16, 4u);
    v6 = *(a2 + 34);
    if (*(a2 + 40))
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (v4 != 1)
    {
      if (v4)
      {
        sub_2711308D4();
      }

      if (*(a2 + 40))
      {
        v5 = *(a2 + 24);
        v17 = *(a2 + 32);
        sub_271120E64(v5, &v17, 1);
      }

      MEMORY[0x2743BE7F0](*(a2 + 24), 6);
      ++*(a2 + 40);
      sub_2713B8244(a2, v3 + 16, 6u);
      v6 = *(a2 + 34);
      if (!*(a2 + 40))
      {
        goto LABEL_12;
      }

LABEL_11:
      v8 = *(a2 + 24);
      v20 = *(a2 + 32);
      sub_271120E64(v8, &v20, 1);
      goto LABEL_12;
    }

    if (*(a2 + 40))
    {
      v7 = *(a2 + 24);
      v18 = *(a2 + 32);
      sub_271120E64(v7, &v18, 1);
    }

    MEMORY[0x2743BE7F0](*(a2 + 24), 5);
    ++*(a2 + 40);
    sub_2713DDE60(a2, v3 + 16, 5u);
    v6 = *(a2 + 34);
    if (*(a2 + 40))
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  v9 = *(a2 + 24);
  v21 = v6;
  sub_271120E64(v9, &v21, 1);
  v10 = *(a2 + 40);
  *(a2 + 40) = v10 + 1;
  if (v10 != -1)
  {
    v11 = *(a2 + 24);
    v22 = *(a2 + 32);
    sub_271120E64(v11, &v22, 1);
  }

  MEMORY[0x2743BE7F0](*(a2 + 24), 2);
  ++*(a2 + 40);
  sub_2713DE694(a2, (v3 + 200));
  v12 = *(a2 + 34);
  if (*(a2 + 40))
  {
    v13 = *(a2 + 24);
    v23 = *(a2 + 32);
    sub_271120E64(v13, &v23, 1);
  }

  v14 = *(a2 + 24);
  v24 = v12;
  result = sub_271120E64(v14, &v24, 1);
  ++*(a2 + 40);
  return result;
}

void sub_271451DD0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    __src = 4;
    sub_27173318C(a2 + 24, *(a2 + 32), &__src, &v11, 4uLL);
    v7 = __src;
    sub_2717312C0(a2);
    sub_2713DEB74(a2, v3 + 16, v7);
  }

  else if (v4 == 1)
  {
    __src = 5;
    sub_27173318C(a2 + 24, *(a2 + 32), &__src, &v11, 4uLL);
    v6 = __src;
    sub_2717312C0(a2);
    sub_2713DEA44(a2, v3 + 16, v6);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    __src = 6;
    sub_27173318C(a2 + 24, *(a2 + 32), &__src, &v11, 4uLL);
    v5 = __src;
    sub_2717312C0(a2);
    sub_2713B93E0(a2, v3 + 16, v5);
  }

  v8 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v8 + 10) = *(a2 + 32) - v8 - 18;
  *(a2 + 56) -= 8;
  __src = 2;
  sub_27173318C(a2 + 24, *(a2 + 32), &__src, &v11, 4uLL);
  sub_2717312C0(a2);
  sub_2713DEE50(a2, (v3 + 200));
  v9 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v9 + 10) = *(a2 + 32) - v9 - 18;
  *(a2 + 56) -= 8;
}

void sub_271451F84(char **a1, uint64_t a2)
{
  v15 = a2;
  v16 = a2;
  v4 = *a1;
  v5 = **a1;
  v6 = __dynamic_cast(a1, &unk_28812BFD8, &unk_2881245A0, 0);
  if (v6)
  {
    sub_2714525B4(&v16, v6);
  }

  v16 = a2;
  v7 = *v4;
  v8 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812B740, 0);
  if (v8)
  {
    sub_2714529E0(&v16, v8);
  }

  v16 = a2;
  v9 = *v4;
  v10 = __dynamic_cast(a1, &unk_28812BFD8, &unk_288124568, 0);
  if (v10)
  {
    sub_271452E04(&v16, v10);
  }

  v16 = a2;
  v11 = *v4;
  v12 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812BDC8, 0);
  if (v12)
  {
    sub_271453230(&v16, v12);
  }

  v16 = a2;
  v13 = *v4;
  v14 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28811DDA8, 0);
  if (v14)
  {
    sub_2714537EC(&v16, v14);
  }

  sub_271452150(&v15, a1);
}

void sub_271452150(uint64_t *a1, void **a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_2713DA430(v3 + 16, v21);
    sub_2713B2524(v33, v21);
    sub_2713E031C(v3 + 16, v33);
    if (v45 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v44;
        v7 = __p;
        if (v44 != __p)
        {
          do
          {
            v8 = *(v6 - 1);
            v6 -= 3;
            if (v8 < 0)
            {
              operator delete(*v6);
            }
          }

          while (v6 != v5);
          v7 = __p;
        }

        v44 = v5;
        operator delete(v7);
      }
    }

    if (v42 == 1 && v41 < 0)
    {
      operator delete(v40);
    }

    if (v39 == 1 && v38 < 0)
    {
      operator delete(v37);
    }

    if (v36 == 1 && v35 < 0)
    {
      operator delete(v34);
    }

    if (v32 != 1)
    {
      goto LABEL_66;
    }

    v13 = v30;
    if (!v30)
    {
      goto LABEL_66;
    }

    v14 = v31;
    v15 = v30;
    if (v31 == v30)
    {
LABEL_65:
      v31 = v13;
      operator delete(v15);
LABEL_66:
      if (v29 == 1 && v28 < 0)
      {
        operator delete(v27);
      }

      if (v26 == 1 && v25 < 0)
      {
        operator delete(v24);
      }

      if (v23 == 1 && v22 < 0)
      {
        operator delete(v21[2]);
      }

      if (*(v3 + 192))
      {
        sub_2711308D4();
      }

LABEL_76:
      v19 = *a2;
      v21[0] = a2[1];
      v20 = v21[0];
      v33[0] = 6;
      v19[13](a2, v33);
      if (v20 < 1)
      {
        if (v33[0] < 3)
        {
          sub_2713C66D4(v33, a2, v3 + 16, v33[0]);
        }

        else
        {
          sub_2713C68E0(a2, v3 + 16, v33[0]);
        }
      }

      else
      {
        sub_2713C62C8(v21, a2, v3 + 16, v33[0]);
      }

      sub_2713E3964(v21, a2, (v3 + 200));
    }

    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

  if (v4 != 2)
  {
    sub_2711308D4();
  }

  sub_271399EB0(v3 + 16, v21);
  sub_2713B2524(v33, v21);
  sub_2713E031C(v3 + 16, v33);
  if (v45 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v44;
      v11 = __p;
      if (v44 != __p)
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

        while (v10 != v9);
        v11 = __p;
      }

      v44 = v9;
      operator delete(v11);
    }
  }

  if (v42 == 1 && v41 < 0)
  {
    operator delete(v40);
  }

  if (v39 == 1 && v38 < 0)
  {
    operator delete(v37);
  }

  if (v36 == 1 && v35 < 0)
  {
    operator delete(v34);
  }

  if (v32 != 1)
  {
    goto LABEL_66;
  }

  v13 = v30;
  if (!v30)
  {
    goto LABEL_66;
  }

  v17 = v31;
  v15 = v30;
  if (v31 == v30)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v18 = v17;
    if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
    {
      operator delete(*(v17 - 8));
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
LABEL_60:
        if (*(v18 - 73) < 0)
        {
          operator delete(*v17);
        }
      }
    }

    else
    {
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
        goto LABEL_60;
      }
    }

    if (v17 == v13)
    {
LABEL_64:
      v15 = v30;
      goto LABEL_65;
    }
  }
}

void sub_2714525B4(uint64_t *a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_2713DA430(v3 + 16, v20);
    sub_2713B2524(v32, v20);
    sub_2713E031C(v3 + 16, v32);
    if (v44 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v43;
        v7 = __p;
        if (v43 != __p)
        {
          do
          {
            v8 = *(v6 - 1);
            v6 -= 3;
            if (v8 < 0)
            {
              operator delete(*v6);
            }
          }

          while (v6 != v5);
          v7 = __p;
        }

        v43 = v5;
        operator delete(v7);
      }
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }

    if (v35 == 1 && v34 < 0)
    {
      operator delete(v33);
    }

    if (v31 != 1)
    {
      goto LABEL_66;
    }

    v13 = v29;
    if (!v29)
    {
      goto LABEL_66;
    }

    v14 = v30;
    v15 = v29;
    if (v30 == v29)
    {
LABEL_65:
      v30 = v13;
      operator delete(v15);
LABEL_66:
      if (v28 == 1 && v27 < 0)
      {
        operator delete(v26);
      }

      if (v25 == 1 && v24 < 0)
      {
        operator delete(v23);
      }

      if (v22 == 1 && v21 < 0)
      {
        operator delete(v20[2]);
      }

      if (*(v3 + 192))
      {
        sub_2711308D4();
      }

LABEL_76:
      v19 = *(a2 + 104);
      *(a2 + 88) = "info";
      *(a2 + 96) = 4;
      if ((v19 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_2713BB450(a2, v3 + 16);
    }

    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

  if (v4 != 2)
  {
    sub_2711308D4();
  }

  sub_271399EB0(v3 + 16, v20);
  sub_2713B2524(v32, v20);
  sub_2713E031C(v3 + 16, v32);
  if (v44 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v43;
      v11 = __p;
      if (v43 != __p)
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

        while (v10 != v9);
        v11 = __p;
      }

      v43 = v9;
      operator delete(v11);
    }
  }

  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v35 == 1 && v34 < 0)
  {
    operator delete(v33);
  }

  if (v31 != 1)
  {
    goto LABEL_66;
  }

  v13 = v29;
  if (!v29)
  {
    goto LABEL_66;
  }

  v17 = v30;
  v15 = v29;
  if (v30 == v29)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v18 = v17;
    if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
    {
      operator delete(*(v17 - 8));
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
LABEL_60:
        if (*(v18 - 73) < 0)
        {
          operator delete(*v17);
        }
      }
    }

    else
    {
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
        goto LABEL_60;
      }
    }

    if (v17 == v13)
    {
LABEL_64:
      v15 = v29;
      goto LABEL_65;
    }
  }
}

void sub_2714529E0(uint64_t *a1, uint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_2713DA430(v3 + 16, v19);
    sub_2713B2524(v31, v19);
    sub_2713E031C(v3 + 16, v31);
    if (v43 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v42;
        v7 = __p;
        if (v42 != __p)
        {
          do
          {
            v8 = *(v6 - 1);
            v6 -= 3;
            if (v8 < 0)
            {
              operator delete(*v6);
            }
          }

          while (v6 != v5);
          v7 = __p;
        }

        v42 = v5;
        operator delete(v7);
      }
    }

    if (v40 == 1 && v39 < 0)
    {
      operator delete(v38);
    }

    if (v37 == 1 && v36 < 0)
    {
      operator delete(v35);
    }

    if (v34 == 1 && v33 < 0)
    {
      operator delete(v32);
    }

    if (v30 != 1)
    {
      goto LABEL_66;
    }

    v13 = v28;
    if (!v28)
    {
      goto LABEL_66;
    }

    v14 = v29;
    v15 = v28;
    if (v29 == v28)
    {
LABEL_65:
      v29 = v13;
      operator delete(v15);
LABEL_66:
      if (v27 == 1 && v26 < 0)
      {
        operator delete(v25);
      }

      if (v24 == 1 && v23 < 0)
      {
        operator delete(v22);
      }

      if (v21 == 1 && v20 < 0)
      {
        operator delete(v19[2]);
      }

      if (*(v3 + 192))
      {
        sub_2711308D4();
      }

LABEL_76:
      LODWORD(v19[0]) = 6;
      sub_27183FB7C(*(a2 + 48), v19);
      sub_2713BF6F4(v19, a2, v3 + 16, v19[0]);
      LODWORD(v19[0]) = 2;
      sub_27183FB7C(*(a2 + 48), v19);
      sub_2713E0E4C(v19, a2, (v3 + 200), v19[0]);
    }

    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

  if (v4 != 2)
  {
    sub_2711308D4();
  }

  sub_271399EB0(v3 + 16, v19);
  sub_2713B2524(v31, v19);
  sub_2713E031C(v3 + 16, v31);
  if (v43 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v42;
      v11 = __p;
      if (v42 != __p)
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

        while (v10 != v9);
        v11 = __p;
      }

      v42 = v9;
      operator delete(v11);
    }
  }

  if (v40 == 1 && v39 < 0)
  {
    operator delete(v38);
  }

  if (v37 == 1 && v36 < 0)
  {
    operator delete(v35);
  }

  if (v34 == 1 && v33 < 0)
  {
    operator delete(v32);
  }

  if (v30 != 1)
  {
    goto LABEL_66;
  }

  v13 = v28;
  if (!v28)
  {
    goto LABEL_66;
  }

  v17 = v29;
  v15 = v28;
  if (v29 == v28)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v18 = v17;
    if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
    {
      operator delete(*(v17 - 8));
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
LABEL_60:
        if (*(v18 - 73) < 0)
        {
          operator delete(*v17);
        }
      }
    }

    else
    {
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
        goto LABEL_60;
      }
    }

    if (v17 == v13)
    {
LABEL_64:
      v15 = v28;
      goto LABEL_65;
    }
  }
}