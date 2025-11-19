void sub_271744710()
{
  if ((atomic_load_explicit(&dword_28087BF38, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&dword_28087BF38))
    {
      sub_27174478C();
    }
  }
}

void sub_271744998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_27137F4D0(&a15);
  if (a35 < 0)
  {
    operator delete(__p);
    if ((a29 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a23 & 0x80000000) == 0)
      {
LABEL_8:
        if (a14 < 0)
        {
          operator delete(a9);
        }

        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a18);
      goto LABEL_8;
    }
  }

  else if ((a29 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a24);
  if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_271744A4C()
{
  if ((atomic_load_explicit(&qword_28087BF40, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_28087BF40))
    {
      sub_271744AC8();
    }
  }
}

void sub_271744CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_27137F4D0(&a15);
  if (a35 < 0)
  {
    operator delete(__p);
    if ((a29 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a23 & 0x80000000) == 0)
      {
LABEL_8:
        if (a14 < 0)
        {
          operator delete(a9);
        }

        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a18);
      goto LABEL_8;
    }
  }

  else if ((a29 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a24);
  if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_271744D88()
{
  if ((atomic_load_explicit(&qword_28087BF48, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_28087BF48))
    {
      sub_271744E04();
    }
  }
}

void sub_271745010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_27137F4D0(&a15);
  if (a35 < 0)
  {
    operator delete(__p);
    if ((a29 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a23 & 0x80000000) == 0)
      {
LABEL_8:
        if (a14 < 0)
        {
          operator delete(a9);
        }

        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a18);
      goto LABEL_8;
    }
  }

  else if ((a29 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a24);
  if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t sub_2717450C4(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_271120E64(a1, "Camera{Type: ", 13);
    sub_271748C84();
  }

  return a3 & 1;
}

void sub_271745354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2717453B0(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_271120E64(a1, "Camera{Type: ", 13);
    sub_271748C84();
  }

  return a3 & 1;
}

void sub_271745640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27174569C(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_271120E64(a1, "Camera{Type: ", 13);
    sub_271748C84();
  }

  return a3 & 1;
}

void sub_27174592C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271745988(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_271120E64(a1, "Camera{Type: ", 13);
    sub_271748C84();
  }

  return a3 & 1;
}

void sub_271745C18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271745E98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271746118(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271746398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271746618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27174692C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271746C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271746EC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2717471E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2717474D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27174777C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271747EC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2717481D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27174891C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271748C28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271748E70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2717490AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271749108@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_2711218C8(v21);
  v4 = &v22 + *(v22 - 24);
  v19 = *(v4 + 2);
  v5 = *(v4 + 3);
  *(v4 + 3) = 0;
  v34[0] = 91;
  sub_271120E64(&v22, v34, 1);
  __dst = a2;
  v6 = *a1;
  if (*a1)
  {
    v7 = 0;
    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = 4;
    }

    do
    {
      v9 = a1[1];
      if (v9)
      {
        for (i = 0; i < v11; ++i)
        {
          *(v25 + *(v22 - 24)) = v8;
          MEMORY[0x2743BE7F0](&v22, *(*(a1 + 2) + 4 * (v7 + a1[2] * i)));
          v11 = a1[1];
          if (i != v11 - 1)
          {
            v34[0] = 44;
            sub_271120E64(&v22, v34, 1);
            v11 = a1[1];
          }
        }

        v6 = *a1;
        v9 = v11 > 1;
      }

      if (v7 != v6 - 1)
      {
        if (v9)
        {
          v12 = ";\n ";
        }

        else
        {
          v12 = ";";
        }

        if (v9)
        {
          v13 = 3;
        }

        else
        {
          v13 = 1;
        }

        sub_271120E64(&v22, v12, v13);
        v6 = *a1;
      }

      ++v7;
    }

    while (v7 < v6);
  }

  sub_271120E64(&v22, "   ]", 4);
  *(&v22 + *(v22 - 24) + 8) = v19;
  if ((v32 & 0x10) != 0)
  {
    v15 = v31;
    if (v31 < v28)
    {
      v31 = v28;
      v15 = v28;
    }

    v16 = v27;
    v14 = v15 - v27;
    if (v15 - v27 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if ((v32 & 8) == 0)
    {
      v14 = 0;
      a2[23] = 0;
      goto LABEL_31;
    }

    v16 = v25[0];
    v14 = v26 - v25[0];
    if ((v26 - v25[0]) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_35:
      sub_271120DA8();
    }
  }

  if (v14 >= 0x17)
  {
    operator new();
  }

  __dst[23] = v14;
  if (v14)
  {
    memmove(__dst, v16, v14);
  }

LABEL_31:
  __dst[v14] = 0;
  v21[0] = *MEMORY[0x277D82818];
  v17 = *(MEMORY[0x277D82818] + 72);
  *(v21 + *(v21[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v22 = v17;
  v23 = MEMORY[0x277D82878] + 16;
  if (v30 < 0)
  {
    operator delete(__p);
  }

  v23 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v24);
  std::iostream::~basic_iostream();
  return MEMORY[0x2743BEF20](&v33);
}

void sub_2717494D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_271123F00(va);
  _Unwind_Resume(a1);
}

void sub_2717494E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_271123F00(va);
  _Unwind_Resume(a1);
}

void sub_2717494F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_271123F00(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27174950C@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_2711218C8(v41);
  v4 = &v42 + *(v42 - 24);
  v5 = *(v4 + 2);
  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v6)
  {
    if (v6 <= (v7 + 2))
    {
      v6 = v7 + 2;
    }

    v8 = v6 + ~v7;
    v9 = __exp10(-v7);
    v10 = v8 - 1;
    if (v8 - 1 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_84;
    }

    v11 = v9;
    if (v10 >= 0x17)
    {
      operator new();
    }

    *(&__b.__r_.__value_.__s + 23) = v8 - 1;
    if (v8 == 1)
    {
      LODWORD(v8) = 1;
      __b.__r_.__value_.__s.__data_[0] = 0;
      v12 = SHIBYTE(__b.__r_.__value_.__r.__words[2]);
      __dst = a2;
      if ((SHIBYTE(__b.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v11 = __exp10(-v7);
    v10 = 3;
    *(&__b.__r_.__value_.__s + 23) = 3;
    LODWORD(v8) = 4;
  }

  memset(&__b, 32, v10);
  __b.__r_.__value_.__s.__data_[v10] = 0;
  v12 = SHIBYTE(__b.__r_.__value_.__r.__words[2]);
  __dst = a2;
  if ((SHIBYTE(__b.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
LABEL_8:
    size = __b.__r_.__value_.__l.__size_;
    if ((__b.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1 - __b.__r_.__value_.__l.__size_ < 2)
    {
      if (0x7FFFFFFFFFFFFFF7 - (__b.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __b.__r_.__value_.__l.__size_ + 2 - ((__b.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1))
      {
        sub_271120DA8();
      }

LABEL_15:
      operator new();
    }

    p_b = __b.__r_.__value_.__r.__words[0];
    *(__b.__r_.__value_.__r.__words[0] + __b.__r_.__value_.__l.__size_) = 8240;
    v15 = size + 2;
    if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_19;
    }

LABEL_17:
    *(&__b.__r_.__value_.__s + 23) = v15 & 0x7F;
    goto LABEL_20;
  }

LABEL_14:
  if ((v12 - 21) < 2)
  {
    goto LABEL_15;
  }

  p_b = &__b;
  *(&__b.__r_.__value_.__l.__data_ + v12) = 8240;
  v15 = v12 + 2;
  if ((SHIBYTE(__b.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

LABEL_19:
  __b.__r_.__value_.__l.__size_ = v15;
LABEL_20:
  p_b->__r_.__value_.__s.__data_[v15] = 0;
  v57 = __b;
  memset(&__b, 0, sizeof(__b));
  if (v7 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_271120DA8();
  }

  if (v7 >= 0x17)
  {
    operator new();
  }

  v55 = v7;
  if (v7)
  {
    memset(v54, 32, v7);
  }

  *(v54 + v7) = 0;
  if ((v55 & 0x80u) == 0)
  {
    v16 = v54;
  }

  else
  {
    v16 = v54[0];
  }

  if ((v55 & 0x80u) == 0)
  {
    v17 = v55;
  }

  else
  {
    v17 = v54[1];
  }

  v18 = std::string::append(&v57, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v59 = v18->__r_.__value_.__r.__words[2];
  v58 = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if ((v55 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v57.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_69:
    operator delete(v57.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__b.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_70:
    operator delete(__b.__r_.__value_.__l.__data_);
    goto LABEL_35;
  }

  operator delete(v54[0]);
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_69;
  }

LABEL_34:
  if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_70;
  }

LABEL_35:
  *(v45 + *(v42 - 24)) = 0;
  v57.__r_.__value_.__s.__data_[0] = 91;
  sub_271120E64(&v42, &v57, 1);
  v21 = *a1;
  if (!*a1)
  {
    goto LABEL_64;
  }

  v22 = 0;
  v23 = v8 + v7 + 1;
  while (2)
  {
    v24 = a1[1];
    if (!v24)
    {
      goto LABEL_56;
    }

    for (i = 0; i < v31; ++i)
    {
      v26 = *(*(a1 + 2) + 4 * (v22 + a1[2] * i));
      v20.n128_f64[0] = v26;
      v27 = v42;
      v28 = &v42 + *(v42 - 24);
      if (v28[9])
      {
        if (v26 != 0.0)
        {
          *(v28 + 3) = v23;
          *(&v43 + *(v27 - 24)) |= 0x400u;
          *(&v44.__locale_ + *(v27 - 24)) = (v7 - 3);
          MEMORY[0x2743BE7C0](&v42, v20);
          goto LABEL_53;
        }
      }

      else if (fabs(v20.n128_f64[0]) >= v11)
      {
        *(v28 + 3) = v23;
        *(&v43 + *(v27 - 24)) = *(&v43 + *(v27 - 24)) & 0xFFFFFEFB | 4;
        *(&v43 + *(v27 - 24)) |= 0x400u;
        *(&v44.__locale_ + *(v27 - 24)) = v7;
        MEMORY[0x2743BE7C0](&v42);
        goto LABEL_53;
      }

      if (v59 >= 0)
      {
        v29 = &v58;
      }

      else
      {
        v29 = v58;
      }

      if (v59 >= 0)
      {
        v30 = HIBYTE(v59);
      }

      else
      {
        v30 = *(&v58 + 1);
      }

      sub_271120E64(&v42, v29, v30);
LABEL_53:
      v31 = a1[1];
      if (i != v31 - 1)
      {
        v57.__r_.__value_.__s.__data_[0] = 44;
        sub_271120E64(&v42, &v57, 1);
        v31 = a1[1];
      }
    }

    v21 = *a1;
    v24 = v31 > 1;
LABEL_56:
    if (v22 != v21 - 1)
    {
      if (v24)
      {
        v32 = ";\n ";
      }

      else
      {
        v32 = ";";
      }

      if (v24)
      {
        v33 = 3;
      }

      else
      {
        v33 = 1;
      }

      sub_271120E64(&v42, v32, v33);
      v21 = *a1;
    }

    if (++v22 < v21)
    {
      continue;
    }

    break;
  }

LABEL_64:
  sub_271120E64(&v42, "   ]", 4);
  *(&v42 + *(v42 - 24) + 8) = v5;
  if (SHIBYTE(v59) < 0)
  {
    operator delete(v58);
    v34 = v52;
    if ((v52 & 0x10) != 0)
    {
      goto LABEL_72;
    }

LABEL_66:
    if ((v34 & 8) == 0)
    {
      v35 = 0;
      __dst[23] = 0;
      goto LABEL_80;
    }

    v37 = v45[0];
    v35 = v46 - v45[0];
    if ((v46 - v45[0]) <= 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_75;
    }

LABEL_84:
    sub_271120DA8();
  }

  v34 = v52;
  if ((v52 & 0x10) == 0)
  {
    goto LABEL_66;
  }

LABEL_72:
  v36 = v51;
  if (v51 < v48)
  {
    v51 = v48;
    v36 = v48;
  }

  v37 = v47;
  v35 = v36 - v47;
  if (v36 - v47 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_84;
  }

LABEL_75:
  if (v35 >= 0x17)
  {
    operator new();
  }

  __dst[23] = v35;
  if (v35)
  {
    memmove(__dst, v37, v35);
  }

LABEL_80:
  __dst[v35] = 0;
  v41[0] = *MEMORY[0x277D82818];
  v38 = *(MEMORY[0x277D82818] + 72);
  *(v41 + *(v41[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v42 = v38;
  v43 = MEMORY[0x277D82878] + 16;
  if (v50 < 0)
  {
    operator delete(__p);
  }

  v43 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v44);
  std::iostream::~basic_iostream();
  return MEMORY[0x2743BEF20](&v53);
}

void sub_271749D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v4 - 177) < 0)
  {
    operator delete(*(v4 - 200));
    sub_271123F00(va);
    _Unwind_Resume(a1);
  }

  sub_271123F00(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271749DE4@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_2711218C8(v40);
  v4 = &v41 + *(v41 - 24);
  v5 = *(v4 + 2);
  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v6)
  {
    if (v6 <= (v7 + 2))
    {
      v6 = v7 + 2;
    }

    v8 = v6 + ~v7;
    v9 = __exp10(-v7);
    v10 = v8 - 1;
    if (v8 - 1 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_84;
    }

    v11 = v9;
    if (v10 >= 0x17)
    {
      operator new();
    }

    *(&__b.__r_.__value_.__s + 23) = v8 - 1;
    if (v8 == 1)
    {
      LODWORD(v8) = 1;
      __b.__r_.__value_.__s.__data_[0] = 0;
      v12 = SHIBYTE(__b.__r_.__value_.__r.__words[2]);
      __dst = a2;
      if ((SHIBYTE(__b.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v11 = __exp10(-v7);
    v10 = 3;
    *(&__b.__r_.__value_.__s + 23) = 3;
    LODWORD(v8) = 4;
  }

  memset(&__b, 32, v10);
  __b.__r_.__value_.__s.__data_[v10] = 0;
  v12 = SHIBYTE(__b.__r_.__value_.__r.__words[2]);
  __dst = a2;
  if ((SHIBYTE(__b.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
LABEL_8:
    size = __b.__r_.__value_.__l.__size_;
    if ((__b.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1 - __b.__r_.__value_.__l.__size_ < 2)
    {
      if (0x7FFFFFFFFFFFFFF7 - (__b.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __b.__r_.__value_.__l.__size_ + 2 - ((__b.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1))
      {
        sub_271120DA8();
      }

LABEL_15:
      operator new();
    }

    p_b = __b.__r_.__value_.__r.__words[0];
    *(__b.__r_.__value_.__r.__words[0] + __b.__r_.__value_.__l.__size_) = 8240;
    v15 = size + 2;
    if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_19;
    }

LABEL_17:
    *(&__b.__r_.__value_.__s + 23) = v15 & 0x7F;
    goto LABEL_20;
  }

LABEL_14:
  if ((v12 - 21) < 2)
  {
    goto LABEL_15;
  }

  p_b = &__b;
  *(&__b.__r_.__value_.__l.__data_ + v12) = 8240;
  v15 = v12 + 2;
  if ((SHIBYTE(__b.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

LABEL_19:
  __b.__r_.__value_.__l.__size_ = v15;
LABEL_20:
  p_b->__r_.__value_.__s.__data_[v15] = 0;
  v56 = __b;
  memset(&__b, 0, sizeof(__b));
  if (v7 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_271120DA8();
  }

  if (v7 >= 0x17)
  {
    operator new();
  }

  v54 = v7;
  if (v7)
  {
    memset(v53, 32, v7);
  }

  *(v53 + v7) = 0;
  if ((v54 & 0x80u) == 0)
  {
    v16 = v53;
  }

  else
  {
    v16 = v53[0];
  }

  if ((v54 & 0x80u) == 0)
  {
    v17 = v54;
  }

  else
  {
    v17 = v53[1];
  }

  v18 = std::string::append(&v56, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v58 = v18->__r_.__value_.__r.__words[2];
  v57 = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if ((v54 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_69:
    operator delete(v56.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__b.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_70:
    operator delete(__b.__r_.__value_.__l.__data_);
    goto LABEL_35;
  }

  operator delete(v53[0]);
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_69;
  }

LABEL_34:
  if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_70;
  }

LABEL_35:
  *(v44 + *(v41 - 24)) = 0;
  v56.__r_.__value_.__s.__data_[0] = 91;
  sub_271120E64(&v41, &v56, 1);
  v20 = *a1;
  if (!*a1)
  {
    goto LABEL_64;
  }

  v21 = 0;
  v22 = v8 + v7 + 1;
  while (2)
  {
    v23 = a1[1];
    if (!v23)
    {
      goto LABEL_56;
    }

    for (i = 0; i < v30; ++i)
    {
      v25 = *(*(a1 + 2) + 8 * (v21 + a1[2] * i));
      v26 = v41;
      v27 = &v41 + *(v41 - 24);
      if (v27[9])
      {
        if (v25 != 0.0)
        {
          *(v27 + 3) = v22;
          *(&v42 + *(v26 - 24)) |= 0x400u;
          *(&v43.__locale_ + *(v26 - 24)) = (v7 - 3);
          MEMORY[0x2743BE7C0](&v41);
          goto LABEL_53;
        }
      }

      else if (fabs(v25) >= v11)
      {
        *(v27 + 3) = v22;
        *(&v42 + *(v26 - 24)) = *(&v42 + *(v26 - 24)) & 0xFFFFFEFB | 4;
        *(&v42 + *(v26 - 24)) |= 0x400u;
        *(&v43.__locale_ + *(v26 - 24)) = v7;
        MEMORY[0x2743BE7C0](&v41);
        goto LABEL_53;
      }

      if (v58 >= 0)
      {
        v28 = &v57;
      }

      else
      {
        v28 = v57;
      }

      if (v58 >= 0)
      {
        v29 = HIBYTE(v58);
      }

      else
      {
        v29 = *(&v57 + 1);
      }

      sub_271120E64(&v41, v28, v29);
LABEL_53:
      v30 = a1[1];
      if (i != v30 - 1)
      {
        v56.__r_.__value_.__s.__data_[0] = 44;
        sub_271120E64(&v41, &v56, 1);
        v30 = a1[1];
      }
    }

    v20 = *a1;
    v23 = v30 > 1;
LABEL_56:
    if (v21 != v20 - 1)
    {
      if (v23)
      {
        v31 = ";\n ";
      }

      else
      {
        v31 = ";";
      }

      if (v23)
      {
        v32 = 3;
      }

      else
      {
        v32 = 1;
      }

      sub_271120E64(&v41, v31, v32);
      v20 = *a1;
    }

    if (++v21 < v20)
    {
      continue;
    }

    break;
  }

LABEL_64:
  sub_271120E64(&v41, "   ]", 4);
  *(&v41 + *(v41 - 24) + 8) = v5;
  if (SHIBYTE(v58) < 0)
  {
    operator delete(v57);
    v33 = v51;
    if ((v51 & 0x10) != 0)
    {
      goto LABEL_72;
    }

LABEL_66:
    if ((v33 & 8) == 0)
    {
      v34 = 0;
      __dst[23] = 0;
      goto LABEL_80;
    }

    v36 = v44[0];
    v34 = v45 - v44[0];
    if ((v45 - v44[0]) <= 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_75;
    }

LABEL_84:
    sub_271120DA8();
  }

  v33 = v51;
  if ((v51 & 0x10) == 0)
  {
    goto LABEL_66;
  }

LABEL_72:
  v35 = v50;
  if (v50 < v47)
  {
    v50 = v47;
    v35 = v47;
  }

  v36 = v46;
  v34 = v35 - v46;
  if (v35 - v46 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_84;
  }

LABEL_75:
  if (v34 >= 0x17)
  {
    operator new();
  }

  __dst[23] = v34;
  if (v34)
  {
    memmove(__dst, v36, v34);
  }

LABEL_80:
  __dst[v34] = 0;
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

void sub_27174A5F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v4 - 177) < 0)
  {
    operator delete(*(v4 - 200));
    sub_271123F00(va);
    _Unwind_Resume(a1);
  }

  sub_271123F00(va);
  _Unwind_Resume(a1);
}

void sub_27174A7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27112F828(&a9);
  MEMORY[0x2743BF050](v10, v9);
  _Unwind_Resume(a1);
}

void sub_27174A8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27112F828(&a9);
  MEMORY[0x2743BF050](v10, v9);
  _Unwind_Resume(a1);
}

void sub_27174A8E8(uint64_t *a1, uint64_t a2)
{
  if (*(a1 + 6))
  {
    v2 = *a1;
    if (*a1)
    {
LABEL_16:
      v13 = *(*v2 + 40);

      v13(v2);
      return;
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Concurrency/src/Channel/NodeTaskScheduler.cpp", 98, "work_queue_", 0xBuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_15:
        qword_28087C420(*algn_28087C428, "work_queue_", 11, "", 0);
        v2 = *a1;
        goto LABEL_16;
      }
    }

    else
    {
      v4 = qword_28087C408;
      v5 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_27;
      }
    }

    do
    {
      v12 = *v4;
      v11 = *(v4 + 8);
      v4 += 16;
      v12(v11, "work_queue_", 11, "", 0);
    }

    while (v4 != v5);
    if (byte_28087C430)
    {
      goto LABEL_15;
    }

LABEL_27:
    abort();
  }

  v7 = a1[4];
  if (!v7)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Concurrency/src/Channel/NodeTaskScheduler.cpp", 93, "mtx_", 4uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v9 = qword_28087C408, v10 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_22:
        qword_28087C420(*algn_28087C428, "mtx_", 4, "", 0);
        v7 = a1[4];
        goto LABEL_23;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_27;
      }
    }

    do
    {
      v15 = *v9;
      v14 = *(v9 + 8);
      v9 += 16;
      v15(v14, "mtx_", 4, "", 0);
    }

    while (v9 != v10);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_22;
  }

LABEL_23:
  std::recursive_mutex::lock(v7);
  v16 = *(a2 + 24);
  if (!v16)
  {
    sub_27112AFFC();
  }

  (*(*v16 + 48))(v16);

  std::recursive_mutex::unlock(v7);
}

void sub_27174ABCC(uint64_t *a1)
{
  if (*(a1 + 6) == 1)
  {
    v1 = *a1;
    if (*a1)
    {
LABEL_16:
      v11 = *(**(v1 + 8) + 24);

      v11();
      return;
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Concurrency/src/Channel/NodeTaskScheduler.cpp", 108, "work_queue_", 0xBuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_15:
        qword_28087C420(*algn_28087C428, "work_queue_", 11, "", 0);
        v1 = *a1;
        goto LABEL_16;
      }
    }

    else
    {
      v3 = qword_28087C408;
      v4 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v10 = *v3;
      v9 = *(v3 + 8);
      v3 += 16;
      v10(v9, "work_queue_", 11, "", 0);
    }

    while (v3 != v4);
    if (byte_28087C430)
    {
      goto LABEL_15;
    }

LABEL_26:
    abort();
  }

  v5 = a1[4];
  if (!v5)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Concurrency/src/Channel/NodeTaskScheduler.cpp", 112, "mtx_", 4uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_22:
        qword_28087C420(*algn_28087C428, "mtx_", 4, "", 0);
        v5 = a1[4];
        goto LABEL_23;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v13 = *v7;
      v12 = *(v7 + 8);
      v7 += 16;
      v13(v12, "mtx_", 4, "", 0);
    }

    while (v7 != v8);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

LABEL_23:
  std::recursive_mutex::lock(v5);

  std::recursive_mutex::unlock(v5);
}

uint64_t sub_27174AE54(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t *a6)
{
  *(a1 + 8) = 0;
  v8 = (a1 + 8);
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a5;
  *(a1 + 32) = 0;
  v9 = *a6;
  v10 = a6[1];
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    v11 = *(a1 + 16);
    *(a1 + 8) = v9;
    *(a1 + 16) = v10;
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v12 = a2;
      v13 = a4;
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
      a4 = v13;
      a2 = v12;
    }

    v14 = *(a1 + 24);
    if (v14 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    v14 = *(a1 + 24);
    if (v14 != 1)
    {
LABEL_6:
      if (!v14)
      {
        operator new();
      }

      return a1;
    }
  }

  if (a4 > 2)
  {
    switch(a4)
    {
      case 3:
        sub_27174B180(&v16, a2, 2, 0xFFFFFFFFLL, *v8, *v8 != 0, a3, SBYTE4(a3));
      case 4:
        sub_27174B180(&v16, a2, 3, 0xFFFFFFFFLL, *v8, *v8 != 0, a3, SBYTE4(a3));
      case 5:
        sub_27174B180(&v16, a2, 4, 0xFFFFFFFFLL, *v8, *v8 != 0, a3, SBYTE4(a3));
    }
  }

  else
  {
    switch(a4)
    {
      case 0:
        sub_27174B180(&v16, a2, 0, 4294967286, *v8, 1, a3, SBYTE4(a3));
      case 1:
        sub_27174B180(&v16, a2, 0, 4294967285, *v8, 1, a3, SBYTE4(a3));
      case 2:
        sub_27174B180(&v16, a2, 1, 0xFFFFFFFFLL, *v8, *v8 != 0, a3, SBYTE4(a3));
    }
  }

  return a1;
}

void sub_27174B124(_Unwind_Exception *a1)
{
  sub_27174B3D8(v3);
  sub_27112F828(v2);
  sub_2714C8F9C(v1);
  _Unwind_Resume(a1);
}

void sub_27174B180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, char a8)
{
  if (a8)
  {
    sub_27174C2D0();
  }

  if (a6)
  {
    sub_27174C01C();
  }

  sub_27174C01C();
}

void sub_27174B368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x2743BF050](v9, 0xA1C40BD48D6D6);
  sub_27174CBB4(&a9);
  _Unwind_Resume(a1);
}

std::recursive_mutex **sub_27174B3D8(std::recursive_mutex **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    std::recursive_mutex::~recursive_mutex(v2);
    MEMORY[0x2743BF050]();
    return v3;
  }

  return v1;
}

uint64_t *sub_27174B42C(uint64_t *a1)
{
  v2 = a1[4];
  a1[4] = 0;
  if (v2)
  {
    std::recursive_mutex::~recursive_mutex(v2);
    MEMORY[0x2743BF050]();
  }

  v3 = a1[2];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    v5 = *(v4 + 8);
    *(v4 + 8) = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
      v6 = *(v4 + 8);
      *(v4 + 8) = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }
    }

    MEMORY[0x2743BF050](v4, 0xA1C40BD48D6D6);
  }

  return a1;
}

uint64_t sub_27174B540(uint64_t result, const char **a2)
{
  v2 = *a2;
  if (*a2 != a2[1])
  {
    v3 = result;
    v14 = a2[1];
    v15 = (result + 16);
    v4 = v2[23];
    if (v2[32] == 1)
    {
      v5 = *a2;
      if (v4 < 0)
      {
        v5 = *v2;
      }

      v6 = strlen(v5);
      if (v6 <= 0x7FFFFFFFFFFFFFF7)
      {
        v7 = v6;
        v8 = *(v2 + 6);
        v9 = *(v2 + 7);
        if (v6 >= 0x17)
        {
          operator new();
        }

        v17 = v6;
        if (v6)
        {
          memmove(&__dst, v5, v6);
        }

        *(&__dst + v7) = 0;
        if (v15 == sub_27123ADBC(v3 + 8, &__dst))
        {
          operator new();
        }

        sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Concurrency/src/Channel/NodeTaskSchedulerPool.cpp", 76, "", 0, "Named scheduler already exists.", 0x1FuLL, sub_271852CA8);
        goto LABEL_27;
      }
    }

    else
    {
      v10 = *a2;
      if (v4 < 0)
      {
        v10 = *v2;
      }

      v11 = strlen(v10);
      if (v11 <= 0x7FFFFFFFFFFFFFF7)
      {
        v12 = v11;
        v13 = *(v2 + 6);
        if (v11 >= 0x17)
        {
          operator new();
        }

        v17 = v11;
        if (v11)
        {
          memmove(&__dst, v10, v11);
        }

        *(&__dst + v12) = 0;
        if (v15 == sub_27123ADBC(v3 + 8, &__dst))
        {
          operator new();
        }

        sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Concurrency/src/Channel/NodeTaskSchedulerPool.cpp", 61, "", 0, "Named scheduler already exists.", 0x1FuLL, sub_271852CA8);
LABEL_27:
        abort();
      }
    }

    sub_271120DA8();
  }

  return result;
}

void sub_27174BB34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27174BC98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27112F828(&a9);
  MEMORY[0x2743BF050](v10, v9);
  _Unwind_Resume(a1);
}

void *sub_27174BCB8(uint64_t a1, const void **a2)
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

void sub_27174BE48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27174BE5C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_27174BE5C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 64);
      if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v6 = v2;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        v2 = v6;
        if ((*(v6 + 55) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      if (*(v2 + 55) < 0)
      {
LABEL_6:
        v4 = v2;
        operator delete(*(v2 + 32));
        v2 = v4;
      }
    }

LABEL_7:
    operator delete(v2);
  }

  return a1;
}

void sub_27174BF3C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106CE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t *sub_27174BF90(uint64_t a1)
{
  result = *(a1 + 24);
  *(a1 + 24) = 0;
  if (result)
  {
    sub_27174B42C(result);

    JUMPOUT(0x2743BF050);
  }

  return result;
}

void sub_27174BFE4(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t *sub_27174C27C(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_27174C530(v2);
    MEMORY[0x2743BF050](v4, 0x10B3C40CBD3A495);
    return v3;
  }

  return v1;
}

uint64_t sub_27174C530(uint64_t a1)
{
  if (dispatch_group_wait(*(a1 + 48), 0xFFFFFFFFFFFFFFFFLL))
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Dispatch/src/DispatchQueue.cpp", 93, "error == 0", 0xAuLL, "dispatch_group_wait failed", 0x1AuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        v2.n128_f64[0] = qword_28087C420(*algn_28087C428, "error == 0", 10, "dispatch_group_wait failed", 26);
        goto LABEL_10;
      }
    }

    else
    {
      v3 = qword_28087C408;
      v4 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_17;
      }
    }

    do
    {
      (*v3)(*(v3 + 8), "error == 0", 10, "dispatch_group_wait failed", 26);
      v3 += 16;
    }

    while (v3 != v4);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_17:
    abort();
  }

LABEL_10:
  v5 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v5)
  {
    (*(a1 + 56))(v2);
  }

  v6 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v6)
  {
    (*(a1 + 40))(v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

intptr_t sub_27174C6C0(uint64_t a1)
{
  result = dispatch_group_wait(*(a1 + 48), 0xFFFFFFFFFFFFFFFFLL);
  if (!result)
  {
    return result;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Dispatch/src/DispatchQueue.cpp", 93, "error == 0", 0xAuLL, "dispatch_group_wait failed", 0x1AuLL, sub_271852CA8);
  if (byte_28087C430 != 1)
  {
    v2 = qword_28087C408;
    v3 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (byte_28087C438 == 1)
  {
    v2 = qword_28087C408;
    v3 = qword_28087C410;
    if (qword_28087C408 != qword_28087C410)
    {
      do
      {
LABEL_8:
        v5 = *v2;
        v4 = *(v2 + 8);
        v2 += 16;
        v5(v4, "error == 0", 10, "dispatch_group_wait failed", 26);
      }

      while (v2 != v3);
      if (byte_28087C430)
      {
        goto LABEL_10;
      }

LABEL_13:
      abort();
    }
  }

LABEL_10:
  v7 = qword_28087C420;
  v6 = *algn_28087C428;

  return v7(v6, "error == 0", 10, "dispatch_group_wait failed", 26);
}

void sub_27174C808(uint64_t a1)
{
  sub_27174C530(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27174C840(uint64_t a1)
{
  result = a1 + 8;
  if (*(a1 + 31) < 0)
  {
    return *result;
  }

  return result;
}

void sub_27174C864(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  sub_27174DBBC();
}

void sub_27174CAD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_27174CB14(void *a1)
{
  *a1 = &unk_288116658;
  v2 = a1[1];
  if (v2)
  {
    a1[1] = 0;
    (*(*v2 + 8))(v2);
    v3 = a1[1];
    a1[1] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  return a1;
}

void *sub_27174CBB4(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[1] = 0;
    (*(*v2 + 8))(v2);
    v3 = a1[1];
    *a1 = &unk_288116658;
    if (v3)
    {
      a1[1] = 0;
      (*(*v3 + 8))(v3);
      v4 = a1[1];
      a1[1] = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }
    }

    return a1;
  }

  else
  {
    *a1 = &unk_288116658;
    return a1;
  }
}

void sub_27174CCB0(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[1] = 0;
    (*(*v2 + 8))(v2);
    v3 = a1[1];
    *a1 = &unk_288116658;
    if (v3)
    {
      a1[1] = 0;
      (*(*v3 + 8))(v3);
      v4 = a1[1];
      a1[1] = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }
    }
  }

  else
  {
    *a1 = &unk_288116658;
  }

  JUMPOUT(0x2743BF050);
}

void sub_27174CE88(void *a1)
{
  *a1 = &unk_288116658;
  v2 = a1[1];
  if (v2)
  {
    a1[1] = 0;
    (*(*v2 + 8))(v2);
    v3 = a1[1];
    a1[1] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  JUMPOUT(0x2743BF050);
}

void sub_27174CF68(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106D20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27174CFBC(uint64_t a1)
{
  v1 = a1 + 32;
  v2 = *(a1 + 56);
  if (v2 == v1)
  {
    (*(*v2 + 32))(v2);
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }
  }

  JUMPOUT(0x2743BEE30);
}

void *sub_27174D070(void *result)
{
  *result = &unk_2881087B0;
  v1 = result[2];
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

void sub_27174D104(void *a1)
{
  *a1 = &unk_2881087B0;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27174D218(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881087B0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_27174D250(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_27174D2CC(void *a1)
{
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  operator delete(a1);
}

void sub_27174D364(uint64_t a1)
{
  v1 = *(a1 + 8);
  state = v1[4].__state_;
  if (!state)
  {
    sub_27112AFFC();
  }

  (state->__vftable[1].__on_zero_shared)(state);
  std::promise<void>::set_value(v1);
}

void sub_27174D3C8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  __cxa_begin_catch(a1);
  std::current_exception();
  v15.__ptr_ = v16;
  std::promise<void>::set_exception(v14, v15);
  std::exception_ptr::~exception_ptr(v16);
  __cxa_end_catch();
}

void sub_27174D3FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10)
{
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

uint64_t sub_27174D418(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4cv3d3esn6thread6detail24GenericDispatchQueueImpl17DispatchAsyncImplEONS1_12PackagedTaskINSt3__18functionIFvvEEEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4cv3d3esn6thread6detail24GenericDispatchQueueImpl17DispatchAsyncImplEONS1_12PackagedTaskINSt3__18functionIFvvEEEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3esn6thread6detail24GenericDispatchQueueImpl17DispatchAsyncImplEONS1_12PackagedTaskINSt3__18functionIFvvEEEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3esn6thread6detail24GenericDispatchQueueImpl17DispatchAsyncImplEONS1_12PackagedTaskINSt3__18functionIFvvEEEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

dispatch_queue_attr_t sub_27174D490(int a1, unsigned int a2, int a3)
{
  if (a1)
  {
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Dispatch/src/DispatchQueueTypeUtil.cpp", 85, "", 0, "queue_type has unexpected value.", 0x20uLL, sub_271852CA8);
    abort();
  }

  if (a2 > 5)
  {
    v4 = QOS_CLASS_DEFAULT;
  }

  else
  {
    v4 = *&asc_2718B6850[4 * a2];
  }

  return dispatch_queue_attr_make_with_qos_class(0, v4, a3);
}

void sub_27174D51C(dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }
}

void sub_27174D528(dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }
}

uint64_t sub_27174D534(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 24);
    if (!v1)
    {
      sub_27112AFFC();
    }

    return (*(*v1 + 48))(v1);
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Dispatch/src/GrandCentralDispatchUtil.cpp", 87, "context != nullptr", 0x12uLL, "Context may not be nullptr", 0x1AuLL, sub_271852CA8);
  if (byte_28087C430 != 1)
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  if (byte_28087C438 == 1)
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 != qword_28087C410)
    {
      do
      {
LABEL_9:
        v6 = *v3;
        v5 = *(v3 + 8);
        v3 += 16;
        v6(v5, "context != nullptr", 18, "Context may not be nullptr", 26);
      }

      while (v3 != v4);
      if (byte_28087C430)
      {
        goto LABEL_11;
      }

LABEL_14:
      abort();
    }
  }

LABEL_11:
  v7 = qword_28087C420(*algn_28087C428, "context != nullptr", 18, "Context may not be nullptr", 26);
  if (!MEMORY[0x18])
  {
    sub_27112AFFC();
  }

  return (*(*MEMORY[0x18] + 48))(MEMORY[0x18], v7);
}

_BYTE *sub_27174D6C4(dispatch_queue_t queue, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v9 = context;
      (*(*v3 + 24))(v3, context);
    }

    else
    {
      v9 = *(a2 + 24);
      *(a2 + 24) = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Dispatch/src/GrandCentralDispatchUtil.cpp", 67, "_f", 2uLL, "Function should contain valid target", 0x24uLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_14:
        qword_28087C420(*algn_28087C428, "_f", 2, "Function should contain valid target", 36);
        goto LABEL_15;
      }
    }

    else
    {
      v4 = qword_28087C408;
      v5 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v4)(*(v4 + 8), "_f", 2, "Function should contain valid target", 36);
      v4 += 16;
    }

    while (v4 != v5);
    if (byte_28087C430)
    {
      goto LABEL_14;
    }

LABEL_20:
    abort();
  }

LABEL_15:
  dispatch_sync_f(queue, context, sub_27174D534);
  result = v9;
  if (v9 == context)
  {
    result = (*(*v9 + 32))(v9);
  }

  else if (v9)
  {
    result = (*(*v9 + 40))();
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27174D8F4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

void sub_27174D90C(uint64_t a1)
{
  if (a1)
  {
LABEL_10:
    v4 = *(a1 + 24);
    if (v4)
    {
      (*(*v4 + 48))(v4);
      v5 = *(a1 + 24);
      if (v5 == a1)
      {
        (*(*v5 + 32))(v5);
      }

      else if (v5)
      {
        (*(*v5 + 40))(v5);
      }

      JUMPOUT(0x2743BF050);
    }

    sub_27112AFFC();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Dispatch/src/GrandCentralDispatchUtil.cpp", 98, "context", 7uLL, "Context may not be nullptr", 0x1AuLL, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v2 = qword_28087C408, v3 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "context", 7, "Context may not be nullptr", 26);
      goto LABEL_10;
    }
  }

  else
  {
    v2 = qword_28087C408;
    v3 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_19;
    }
  }

  do
  {
    (*v2)(*(v2 + 8), "context", 7, "Context may not be nullptr", 26);
    v2 += 16;
  }

  while (v2 != v3);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_19:
  abort();
}

void sub_27174DAEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27174DB18(va);
  _Unwind_Resume(a1);
}

void sub_27174DB04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27174DB18(va);
  _Unwind_Resume(a1);
}

void *sub_27174DB18(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 24);
    if (v3 == v1)
    {
      (*(*v3 + 32))(v3);
    }

    else if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    MEMORY[0x2743BF050](v1, 0x1020C40A5B76CDFLL);
    return v2;
  }

  return result;
}

void sub_27174DD98(const char *a1@<X0>, int a2@<W1>, unsigned int a3@<W2>, int a4@<W3>, int a5@<W4>, OS_os_workgroup *a6@<X5>, NSObject **a7@<X8>)
{
  v12 = sub_27174D490(a2, a3, a4);
  if (a5)
  {
    if (a3 <= 5)
    {
      v13 = dword_2718B6868[a3];
    }

    v14 = dispatch_queue_create(a1, 0);
    v15 = sub_27174DF24(a1);
    dispatch_workloop_set_qos_class_floor();
    if (a6)
    {
      dispatch_workloop_set_os_workgroup(v15, a6);
    }

    dispatch_activate(v15);
    dispatch_set_target_queue(v14, v15);
    dispatch_release(v15);
  }

  else
  {
    v14 = dispatch_queue_create(a1, v12);
  }

  *a7 = v14;
  a7[1] = sub_27174D51C;
}

void sub_27174DE88(const char *a1@<X0>, OS_os_workgroup *a2@<X3>, NSObject **a3@<X8>)
{
  v6 = dispatch_queue_create(a1, 0);
  v7 = sub_27174DF24(a1);
  dispatch_workloop_set_scheduler_priority();
  if (a2)
  {
    dispatch_workloop_set_os_workgroup(v7, a2);
  }

  dispatch_activate(v7);
  dispatch_set_target_queue(v6, v7);
  dispatch_release(v7);
  *a3 = v6;
  a3[1] = sub_27174D51C;
}

dispatch_workloop_t sub_27174DF24(const char *a1)
{
  v2 = strlen(a1);
  if (v2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v3 = v2;
  if (v2 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v2;
  if (v2)
  {
    memcpy(&__dst, a1, v2);
  }

  __dst.__r_.__value_.__s.__data_[v3] = 0;
  v4 = std::string::append(&__dst, ".workloop", 9uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v11 = v4->__r_.__value_.__r.__words[2];
  *__p = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v11 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  result = dispatch_workloop_create_inactive(v6);
  if (SHIBYTE(v11) < 0)
  {
    v8 = result;
    operator delete(__p[0]);
    return v8;
  }

  return result;
}

void sub_27174E054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27174E2B8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_271120E50(exception_object);
}

void sub_27174E534(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_271120E50(exception_object);
}

void *sub_27174E568(void *a1, void (**a2)(uint64_t))
{
  v5[8] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v5[1] = 0;
  if (*a2)
  {
    (*a2)(2);
  }

  if (v5 != a1 && *a1 != 0)
  {
    (*a1)(2, a1, v5, 0, 0);
  }

  if (v5[0])
  {
    (v5[0])(0, v5, 0, 0, 0);
  }

  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_27174E6C4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

void *sub_27174E6E4(void *a1, uint64_t a2)
{
  LOBYTE(__p[0]) = 123;
  v3 = sub_271120E64(a1, __p, 1);
  v9 = *(a2 + 16);
  sub_27174E7C4(&v9, __p);
  if ((v11 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v5 = v11;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = sub_271120E64(v3, v4, v5);
  v12 = 125;
  result = sub_271120E64(v6, &v12, 1);
  if (v11 < 0)
  {
    v8 = result;
    operator delete(__p[0]);
    return v8;
  }

  return result;
}

void sub_27174E7A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27174E7C4@<X0>(unsigned __int8 **a1@<X0>, _BYTE *a2@<X8>)
{
  sub_271750520(&v15);
  v4 = v15;
  *(&v15 + *(v15 - 24) + 8) = *(&v15 + *(v15 - 24) + 8) & 0xFFFFFFB5 | 8;
  v5 = &v15 + *(v4 - 24);
  if (*(v5 + 36) == -1)
  {
    std::ios_base::getloc((&v15 + *(v4 - 24)));
    v7 = std::locale::use_facet(&v27, MEMORY[0x277D82680]);
    (v7->__vftable[2].~facet_0)(v7, 32);
    std::locale::~locale(&v27);
    *(v5 + 36) = 48;
    v6 = a1[1];
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    *(v5 + 36) = 48;
    v6 = a1[1];
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  v8 = *a1;
  v9 = &v6[v8];
  v10 = v8 + 1;
  do
  {
    *(v18 + *(v15 - 24)) = 2;
    MEMORY[0x2743BE7E0](&v15, *v8);
    if (v9 != v10)
    {
      *(v18 + *(v15 - 24)) = 1;
      LOBYTE(v27.__locale_) = 32;
      sub_271120E64(&v15, &v27, 1);
    }

    ++v8;
    ++v10;
    --v6;
  }

  while (v6);
LABEL_9:
  if ((v25 & 0x10) != 0)
  {
    v12 = v24;
    if (v24 < v21)
    {
      v24 = v21;
      v12 = v21;
    }

    v13 = v20;
    v11 = v12 - v20;
    if (v12 - v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if ((v25 & 8) == 0)
    {
      v11 = 0;
      a2[23] = 0;
      goto LABEL_20;
    }

    v13 = v18[0];
    v11 = v19 - v18[0];
    if ((v19 - v18[0]) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_24:
      sub_271120DA8();
    }
  }

  if (v11 >= 0x17)
  {
    operator new();
  }

  a2[23] = v11;
  if (v11)
  {
    memmove(a2, v13, v11);
  }

LABEL_20:
  a2[v11] = 0;
  v15 = *MEMORY[0x277D82828];
  *(&v15 + *(v15 - 24)) = *(MEMORY[0x277D82828] + 24);
  v16 = MEMORY[0x277D82878] + 16;
  if (v23 < 0)
  {
    operator delete(__p);
  }

  v16 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v17);
  std::ostream::~ostream();
  return MEMORY[0x2743BEF20](&v26);
}

void sub_27174EB50(_Unwind_Exception *a1, uint64_t a2, ...)
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
  v17 = va_arg(va1, void);
  sub_271750718(va, MEMORY[0x277D82828]);
  MEMORY[0x2743BEF20](va1);
  _Unwind_Resume(a1);
}

void sub_27174EBB4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106A10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27174EC08(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    return v1(0, result + 24, 0, 0, 0);
  }

  return result;
}

void sub_27174EC64(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288134878;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27174ECB8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *sub_27174ECD4(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_27174ECD4;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_27174ECD4;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_2881348B8;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "NSt3__110shared_ptrINS_6vectorISt4byteNS_9allocatorIS2_EEEEEE")
      {
        if (((v5 & "NSt3__110shared_ptrINS_6vectorISt4byteNS_9allocatorIS2_EEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "NSt3__110shared_ptrINS_6vectorISt4byteNS_9allocatorIS2_EEEEEE"))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrINS_6vectorISt4byteNS_9allocatorIS2_EEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_2718B6960)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_27174EE98(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881059A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27174EEEC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *sub_27174EF08(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_27174EF08;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_27174EF08;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28811B768;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != 0x80000002718B69AELL)
      {
        if (((v5 & 0x80000002718B69AELL & 0x8000000000000000) != 0) == __OFSUB__(v5, 0x80000002718B69AELL))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002718B69AELL & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_2718B69E4)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_27174F0DC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288105900;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27174F130(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *sub_27174F14C(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_27174F14C;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_27174F14C;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28811B738;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != 0x80000002718B6A32)
      {
        if (((v5 & 0x80000002718B6A32 & 0x8000000000000000) != 0) == __OFSUB__(v5, 0x80000002718B6A32))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002718B6A32 & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_2718B6A68)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_27174F320(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288105858;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27174F374(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *sub_27174F390(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_27174F390;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_27174F390;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28811B708;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != 0x80000002718B6AB6)
      {
        if (((v5 & 0x80000002718B6AB6 & 0x8000000000000000) != 0) == __OFSUB__(v5, 0x80000002718B6AB6))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002718B6AB6 & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_2718B6AEC)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_27174F564(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288105820;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27174F5B8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *sub_27174F5D4(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_27174F5D4;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_27174F5D4;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28811B6F8;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != 0x80000002718B6B3ALL)
      {
        if (((v5 & 0x80000002718B6B3ALL & 0x8000000000000000) != 0) == __OFSUB__(v5, 0x80000002718B6B3ALL))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002718B6B3ALL & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_2718B6B70)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_27174F7A8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881058C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27174F7FC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *sub_27174F818(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_27174F818;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_27174F818;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28811B728;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != 0x80000002718B6BBELL)
      {
        if (((v5 & 0x80000002718B6BBELL & 0x8000000000000000) != 0) == __OFSUB__(v5, 0x80000002718B6BBELL))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002718B6BBELL & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_2718B6BF4)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_27174F9EC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288105890;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27174FA40(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *sub_27174FA5C(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_27174FA5C;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_27174FA5C;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28811B718;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != 0x80000002718B6C42)
      {
        if (((v5 & 0x80000002718B6C42 & 0x8000000000000000) != 0) == __OFSUB__(v5, 0x80000002718B6C42))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002718B6C42 & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_2718B6C78)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_27174FC30(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881057E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27174FC84(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *sub_27174FCA0(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_27174FCA0;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_27174FCA0;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28811B6E8;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != 0x80000002718B6CC6)
      {
        if (((v5 & 0x80000002718B6CC6 & 0x8000000000000000) != 0) == __OFSUB__(v5, 0x80000002718B6CC6))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002718B6CC6 & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_2718B6CFC)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_27174FE74(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881057B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27174FEC8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *sub_27174FEE4(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_27174FEE4;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_27174FEE4;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28811B6D8;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != 0x80000002718B6D4ALL)
      {
        if (((v5 & 0x80000002718B6D4ALL & 0x8000000000000000) != 0) == __OFSUB__(v5, 0x80000002718B6D4ALL))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002718B6D4ALL & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_2718B6D80)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_2717500B8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288105938;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27175010C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *sub_271750128(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_271750128;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_271750128;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28811B748;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != 0x80000002718B6DCELL)
      {
        if (((v5 & 0x80000002718B6DCELL & 0x8000000000000000) != 0) == __OFSUB__(v5, 0x80000002718B6DCELL))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002718B6DCELL & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_2718B6E04)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_2717502FC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288105970;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271750350(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *sub_27175036C(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_27175036C;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_27175036C;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28811B758;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != 0x80000002718B6E52)
      {
        if (((v5 & 0x80000002718B6E52 & 0x8000000000000000) != 0) == __OFSUB__(v5, 0x80000002718B6E52))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002718B6E52 & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_2718B6E88)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

uint64_t sub_271750520(uint64_t a1)
{
  *(a1 + 160) = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  *(a1 + 112) = MEMORY[0x277D828A0] + 64;
  v3 = a1 + 8;
  v4 = *(MEMORY[0x277D82828] + 16);
  v5 = *(MEMORY[0x277D82828] + 8);
  *a1 = v5;
  *(a1 + *(v5 - 24)) = v4;
  v6 = (a1 + *(*a1 - 24));
  std::ios_base::init(v6, (a1 + 8));
  v7 = MEMORY[0x277D828A0] + 24;
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  *a1 = v7;
  *(a1 + 112) = v2;
  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  MEMORY[0x2743BED80](a1 + 16);
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 16;
  sub_271129318(v3);
  return a1;
}

void sub_2717506C8(_Unwind_Exception *a1)
{
  if (*(v2 + 95) < 0)
  {
    operator delete(*v4);
  }

  *(v2 + 8) = v3;
  std::locale::~locale((v2 + 16));
  std::ostream::~ostream();
  MEMORY[0x2743BEF20](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_271750718(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t sub_271750834(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  if ((*(*a1 + 56) & 3) != 0)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Container/src/Lines.cpp", 42, "this->numbers.Size() % (N * 2) == 0", 0x23uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "this->numbers.Size() % (N * 2) == 0", 35, "", 0);
        return a1;
      }
    }

    else
    {
      v3 = qword_28087C408;
      v4 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_11;
      }
    }

    do
    {
      (*v3)(*(v3 + 8), "this->numbers.Size() % (N * 2) == 0", 35, "", 0);
      v3 += 16;
    }

    while (v3 != v4);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_11:
    abort();
  }

  return a1;
}

uint64_t sub_271750998(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  if (__ROR8__(0xAAAAAAAAAAAAAAABLL * *(*a1 + 56), 1) >= 0x2AAAAAAAAAAAAAABuLL)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Container/src/Lines.cpp", 42, "this->numbers.Size() % (N * 2) == 0", 0x23uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "this->numbers.Size() % (N * 2) == 0", 35, "", 0);
        return a1;
      }
    }

    else
    {
      v3 = qword_28087C408;
      v4 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_11;
      }
    }

    do
    {
      (*v3)(*(v3 + 8), "this->numbers.Size() % (N * 2) == 0", 35, "", 0);
      v3 += 16;
    }

    while (v3 != v4);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_11:
    abort();
  }

  return a1;
}

void sub_271750DB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_271750E18(void *result)
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

    MEMORY[0x2743BF050](v1, 0x20C40960023A9);
    return v2;
  }

  return result;
}

void sub_271750E74(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271750EAC(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_271750F10(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj2EEELm2EEENS_9allocatorIS8_EEEEEE")
  {
    if (((v2 & "NSt3__114default_deleteINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj2EEELm2EEENS_9allocatorIS8_EEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj2EEELm2EEENS_9allocatorIS8_EEEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj2EEELm2EEENS_9allocatorIS8_EEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_271750F70(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_271750F70;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_271750F70;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28811B788;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "NSt3__110shared_ptrINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj2EEELm2EEENS_9allocatorIS8_EEEEEE")
      {
        if (((v5 & "NSt3__110shared_ptrINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj2EEELm2EEENS_9allocatorIS8_EEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "NSt3__110shared_ptrINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj2EEELm2EEENS_9allocatorIS8_EEEEEE"))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj2EEELm2EEENS_9allocatorIS8_EEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_2718B6FF0)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_2717513D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271751434(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27175146C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_2717514D0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj3EEELm2EEENS_9allocatorIS8_EEEEEE")
  {
    if (((v2 & "NSt3__114default_deleteINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj3EEELm2EEENS_9allocatorIS8_EEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj3EEELm2EEENS_9allocatorIS8_EEEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj3EEELm2EEENS_9allocatorIS8_EEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_271751530(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_271751530;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_271751530;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28811B778;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "NSt3__110shared_ptrINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj3EEELm2EEENS_9allocatorIS8_EEEEEE")
      {
        if (((v5 & "NSt3__110shared_ptrINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj3EEELm2EEENS_9allocatorIS8_EEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "NSt3__110shared_ptrINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj3EEELm2EEENS_9allocatorIS8_EEEEEE"))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj3EEELm2EEENS_9allocatorIS8_EEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_2718B7158)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void *sub_2717516D4(int a1, unsigned __int8 **a2, void **a3)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        sub_271759D80(a2, 6);
        v16 = *a2;
        v17 = *(*a2 + 5);
        v7 = *a3;
        if (*(v16 + 6) > 7uLL)
        {
          sub_271120E64(v7, "{", 1);
          sub_271120E64(v7, "{", 1);
          sub_2717539B4();
        }
      }

      else
      {
        sub_271759D80(a2, 7);
        v12 = *a2;
        v13 = *(*a2 + 5);
        v7 = *a3;
        if (*(v12 + 6) > 0xFuLL)
        {
          sub_271120E64(v7, "{", 1);
          sub_271120E64(v7, "{", 1);
          sub_271753E78();
        }
      }
    }

    else
    {
      switch(a1)
      {
        case 8:
          sub_271759D80(a2, 8);
          v20 = *a2;
          v21 = *(*a2 + 5);
          v7 = *a3;
          if (*(v20 + 6) > 0x1FuLL)
          {
            sub_271120E64(v7, "{", 1);
            sub_271120E64(v7, "{", 1);
            sub_27175433C();
          }

          break;
        case 11:
          sub_271759D80(a2, 11);
          v24 = *a2;
          v25 = *(*a2 + 5);
          v7 = *a3;
          if (*(v24 + 6) > 0xFuLL)
          {
            sub_271120E64(v7, "{", 1);
            sub_271120E64(v7, "{", 1);
            sub_27173D3C0();
          }

          break;
        case 12:
          sub_271759D80(a2, 12);
          v8 = *a2;
          v9 = *(*a2 + 5);
          v7 = *a3;
          if (*(v8 + 6) > 0x1FuLL)
          {
            sub_271120E64(v7, "{", 1);
            sub_271120E64(v7, "{", 1);
            sub_27173E198();
          }

          break;
        default:
          goto LABEL_33;
      }
    }
  }

  else if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_33;
      }

      sub_271759D80(a2, 1);
      v10 = *a2;
      v11 = *(*a2 + 5);
      v7 = *a3;
      if (*(v10 + 6) > 7uLL)
      {
        sub_271120E64(v7, "{", 1);
        sub_271120E64(v7, "{", 1);
        sub_271752864();
      }
    }

    else
    {
      sub_271759D80(a2, 0);
      v14 = *a2;
      v15 = *(*a2 + 5);
      v7 = *a3;
      if (*(v14 + 6) > 3uLL)
      {
        sub_271120E64(v7, "{", 1);
        sub_271120E64(v7, "{", 1);
        sub_2717523A0();
      }
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_271759D80(a2, 2);
        v18 = *a2;
        v19 = *(*a2 + 5);
        v7 = *a3;
        if (*(v18 + 6) > 0xFuLL)
        {
          sub_271120E64(v7, "{", 1);
          sub_271120E64(v7, "{", 1);
          sub_271752D28();
        }

        break;
      case 3:
        sub_271759D80(a2, 3);
        v22 = *a2;
        v23 = *(*a2 + 5);
        v7 = *a3;
        if (*(v22 + 6) > 0x1FuLL)
        {
          sub_271120E64(v7, "{", 1);
          sub_271120E64(v7, "{", 1);
          sub_27175302C();
        }

        break;
      case 5:
        sub_271759D80(a2, 5);
        v5 = *a2;
        v6 = *(*a2 + 5);
        v7 = *a3;
        if (*(v5 + 6) > 3uLL)
        {
          sub_271120E64(v7, "{", 1);
          sub_271120E64(v7, "{", 1);
          sub_2717534F0();
        }

        return sub_271120E64(v7, "{}", 2);
      default:
LABEL_33:

        sub_27183428C(a1);
    }
  }

  return sub_271120E64(v7, "{}", 2);
}

void sub_27175261C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2717526A4(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v12 = a2;
  v13 = "{";
  v14 = a2;
  v15 = "{";
  v16 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_11;
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  (*(&off_2881348E0 + v3))(&v11);
  std::to_string(&v11, *a3);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v12;
  (off_2881348F8[v6])(&v17, a2);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v12 = a2;
  v13 = ",";
  v14 = a2;
  v15 = ",";
  v16 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_11;
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  (*(&off_2881348E0 + v7))(&v11, a2);
  std::to_string(&v11, a3[1]);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v12;
  (off_2881348F8[v8])(&v17, a2);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v12 = a2;
  v13 = "}";
  v14 = a2;
  v15 = "}";
  v16 = "}";
  v9 = *(a2 + 24);
  if (v9 == -1)
  {
LABEL_11:
    sub_2711308D4();
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  return (*(&off_2881348E0 + v9))(&v11, a2);
}

void sub_271752840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271752AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271752B68(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v12 = a2;
  v13 = "{";
  v14 = a2;
  v15 = "{";
  v16 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_11;
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  (*(&off_2881348E0 + v3))(&v11);
  std::to_string(&v11, *a3);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v12;
  (off_2881348F8[v6])(&v17, a2);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v12 = a2;
  v13 = ",";
  v14 = a2;
  v15 = ",";
  v16 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_11;
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  (*(&off_2881348E0 + v7))(&v11, a2);
  std::to_string(&v11, a3[1]);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v12;
  (off_2881348F8[v8])(&v17, a2);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v12 = a2;
  v13 = "}";
  v14 = a2;
  v15 = "}";
  v16 = "}";
  v9 = *(a2 + 24);
  if (v9 == -1)
  {
LABEL_11:
    sub_2711308D4();
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  return (*(&off_2881348E0 + v9))(&v11, a2);
}

void sub_271752D04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271752FA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2717532A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271753330(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v12 = a2;
  v13 = "{";
  v14 = a2;
  v15 = "{";
  v16 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_11;
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  (*(&off_2881348E0 + v3))(&v11);
  std::to_string(&v11, *a3);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v12;
  (off_2881348F8[v6])(&v17, a2);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v12 = a2;
  v13 = ",";
  v14 = a2;
  v15 = ",";
  v16 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_11;
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  (*(&off_2881348E0 + v7))(&v11, a2);
  std::to_string(&v11, a3[1]);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v12;
  (off_2881348F8[v8])(&v17, a2);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v12 = a2;
  v13 = "}";
  v14 = a2;
  v15 = "}";
  v16 = "}";
  v9 = *(a2 + 24);
  if (v9 == -1)
  {
LABEL_11:
    sub_2711308D4();
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  return (*(&off_2881348E0 + v9))(&v11, a2);
}

void sub_2717534CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27175376C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2717537F4(uint64_t a1, uint64_t a2, char *a3)
{
  v12 = a2;
  v13 = "{";
  v14 = a2;
  v15 = "{";
  v16 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_11;
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  (*(&off_2881348E0 + v3))(&v11);
  std::to_string(&v11, *a3);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v12;
  (off_2881348F8[v6])(&v17, a2);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v12 = a2;
  v13 = ",";
  v14 = a2;
  v15 = ",";
  v16 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_11;
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  (*(&off_2881348E0 + v7))(&v11, a2);
  std::to_string(&v11, a3[1]);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v12;
  (off_2881348F8[v8])(&v17, a2);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v12 = a2;
  v13 = "}";
  v14 = a2;
  v15 = "}";
  v16 = "}";
  v9 = *(a2 + 24);
  if (v9 == -1)
  {
LABEL_11:
    sub_2711308D4();
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  return (*(&off_2881348E0 + v9))(&v11, a2);
}

void sub_271753990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271753C30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271753CB8(uint64_t a1, uint64_t a2, __int16 *a3)
{
  v12 = a2;
  v13 = "{";
  v14 = a2;
  v15 = "{";
  v16 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_11;
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  (*(&off_2881348E0 + v3))(&v11);
  std::to_string(&v11, *a3);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v12;
  (off_2881348F8[v6])(&v17, a2);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v12 = a2;
  v13 = ",";
  v14 = a2;
  v15 = ",";
  v16 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_11;
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  (*(&off_2881348E0 + v7))(&v11, a2);
  std::to_string(&v11, a3[1]);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v12;
  (off_2881348F8[v8])(&v17, a2);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v12 = a2;
  v13 = "}";
  v14 = a2;
  v15 = "}";
  v16 = "}";
  v9 = *(a2 + 24);
  if (v9 == -1)
  {
LABEL_11:
    sub_2711308D4();
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  return (*(&off_2881348E0 + v9))(&v11, a2);
}

void sub_271753E54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2717540F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27175417C(uint64_t a1, uint64_t a2, int *a3)
{
  v12 = a2;
  v13 = "{";
  v14 = a2;
  v15 = "{";
  v16 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_11;
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  (*(&off_2881348E0 + v3))(&v11);
  std::to_string(&v11, *a3);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v12;
  (off_2881348F8[v6])(&v17, a2);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v12 = a2;
  v13 = ",";
  v14 = a2;
  v15 = ",";
  v16 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_11;
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  (*(&off_2881348E0 + v7))(&v11, a2);
  std::to_string(&v11, a3[1]);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v12;
  (off_2881348F8[v8])(&v17, a2);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v12 = a2;
  v13 = "}";
  v14 = a2;
  v15 = "}";
  v16 = "}";
  v9 = *(a2 + 24);
  if (v9 == -1)
  {
LABEL_11:
    sub_2711308D4();
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  return (*(&off_2881348E0 + v9))(&v11, a2);
}

void sub_271754318(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2717545B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271754640(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v12 = a2;
  v13 = "{";
  v14 = a2;
  v15 = "{";
  v16 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_11;
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  (*(&off_2881348E0 + v3))(&v11);
  std::to_string(&v11, *a3);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v12;
  (off_2881348F8[v6])(&v17, a2);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v12 = a2;
  v13 = ",";
  v14 = a2;
  v15 = ",";
  v16 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_11;
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  (*(&off_2881348E0 + v7))(&v11, a2);
  std::to_string(&v11, a3[1]);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v12;
  (off_2881348F8[v8])(&v17, a2);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v12 = a2;
  v13 = "}";
  v14 = a2;
  v15 = "}";
  v16 = "}";
  v9 = *(a2 + 24);
  if (v9 == -1)
  {
LABEL_11:
    sub_2711308D4();
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  return (*(&off_2881348E0 + v9))(&v11, a2);
}

void sub_2717547DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_271754800(int a1, unsigned __int8 **a2, void **a3)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        sub_271759D80(a2, 6);
        v16 = *a2;
        v17 = *(*a2 + 5);
        v7 = *a3;
        if (*(v16 + 6) > 0xBuLL)
        {
          sub_271120E64(v7, "{", 1);
          sub_271120E64(v7, "{", 1);
          sub_271756DB8();
        }
      }

      else
      {
        sub_271759D80(a2, 7);
        v12 = *a2;
        v13 = *(*a2 + 5);
        v7 = *a3;
        if (*(v12 + 6) > 0x17uLL)
        {
          sub_271120E64(v7, "{", 1);
          sub_271120E64(v7, "{", 1);
          sub_271757300();
        }
      }
    }

    else
    {
      switch(a1)
      {
        case 8:
          sub_271759D80(a2, 8);
          v20 = *a2;
          v21 = *(*a2 + 5);
          v7 = *a3;
          if (*(v20 + 6) > 0x2FuLL)
          {
            sub_271120E64(v7, "{", 1);
            sub_271120E64(v7, "{", 1);
            sub_271757848();
          }

          break;
        case 11:
          sub_271759D80(a2, 11);
          v24 = *a2;
          v25 = *(*a2 + 5);
          v7 = *a3;
          if (*(v24 + 6) > 0x17uLL)
          {
            sub_271120E64(v7, "{", 1);
            sub_271120E64(v7, "{", 1);
            sub_271757D90();
          }

          break;
        case 12:
          sub_271759D80(a2, 12);
          v8 = *a2;
          v9 = *(*a2 + 5);
          v7 = *a3;
          if (*(v8 + 6) > 0x2FuLL)
          {
            sub_271120E64(v7, "{", 1);
            sub_271120E64(v7, "{", 1);
            sub_271758094();
          }

          break;
        default:
          goto LABEL_33;
      }
    }
  }

  else if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_33;
      }

      sub_271759D80(a2, 1);
      v10 = *a2;
      v11 = *(*a2 + 5);
      v7 = *a3;
      if (*(v10 + 6) > 0xBuLL)
      {
        sub_271120E64(v7, "{", 1);
        sub_271120E64(v7, "{", 1);
        sub_271755ADC();
      }
    }

    else
    {
      sub_271759D80(a2, 0);
      v14 = *a2;
      v15 = *(*a2 + 5);
      v7 = *a3;
      if (*(v14 + 6) > 5uLL)
      {
        sub_271120E64(v7, "{", 1);
        sub_271120E64(v7, "{", 1);
        sub_271755594();
      }
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_271759D80(a2, 2);
        v18 = *a2;
        v19 = *(*a2 + 5);
        v7 = *a3;
        if (*(v18 + 6) > 0x17uLL)
        {
          sub_271120E64(v7, "{", 1);
          sub_271120E64(v7, "{", 1);
          sub_271756024();
        }

        break;
      case 3:
        sub_271759D80(a2, 3);
        v22 = *a2;
        v23 = *(*a2 + 5);
        v7 = *a3;
        if (*(v22 + 6) > 0x2FuLL)
        {
          sub_271120E64(v7, "{", 1);
          sub_271120E64(v7, "{", 1);
          sub_271756328();
        }

        break;
      case 5:
        sub_271759D80(a2, 5);
        v5 = *a2;
        v6 = *(*a2 + 5);
        v7 = *a3;
        if (*(v5 + 6) > 5uLL)
        {
          sub_271120E64(v7, "{", 1);
          sub_271120E64(v7, "{", 1);
          sub_271756870();
        }

        return sub_271120E64(v7, "{}", 2);
      default:
LABEL_33:

        sub_27183428C(a1);
    }
  }

  return sub_271120E64(v7, "{}", 2);
}

void sub_271755810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271755898(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v14 = a2;
  v15 = "{";
  v16 = a2;
  v17 = "{";
  v18 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_2881348E0 + v3))(&v13);
  std::to_string(&v13, *a3);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_2711308D4();
  }

  v19 = &v14;
  (off_2881348F8[v6])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = ",";
  v16 = a2;
  v17 = ",";
  v18 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_2881348E0 + v7))(&v13, a2);
  std::to_string(&v13, a3[1]);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    goto LABEL_16;
  }

  v19 = &v14;
  (off_2881348F8[v8])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = ",";
  v16 = a2;
  v17 = ",";
  v18 = ",";
  v9 = *(a2 + 24);
  if (v9 == -1)
  {
LABEL_15:
    sub_2711308D4();
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_2881348E0 + v9))(&v13, a2);
  std::to_string(&v13, a3[2]);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v10 = *(a2 + 24);
  if (v10 == -1)
  {
LABEL_16:
    sub_2711308D4();
  }

  v19 = &v14;
  (off_2881348F8[v10])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = "}";
  v16 = a2;
  v17 = "}";
  v18 = "}";
  v11 = *(a2 + 24);
  if (v11 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  return (*(&off_2881348E0 + v11))(&v13, a2);
}

void sub_271755AB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271755D58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271755DE0(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v14 = a2;
  v15 = "{";
  v16 = a2;
  v17 = "{";
  v18 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_2881348E0 + v3))(&v13);
  std::to_string(&v13, *a3);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_2711308D4();
  }

  v19 = &v14;
  (off_2881348F8[v6])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = ",";
  v16 = a2;
  v17 = ",";
  v18 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_2881348E0 + v7))(&v13, a2);
  std::to_string(&v13, a3[1]);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    goto LABEL_16;
  }

  v19 = &v14;
  (off_2881348F8[v8])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = ",";
  v16 = a2;
  v17 = ",";
  v18 = ",";
  v9 = *(a2 + 24);
  if (v9 == -1)
  {
LABEL_15:
    sub_2711308D4();
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_2881348E0 + v9))(&v13, a2);
  std::to_string(&v13, a3[2]);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v10 = *(a2 + 24);
  if (v10 == -1)
  {
LABEL_16:
    sub_2711308D4();
  }

  v19 = &v14;
  (off_2881348F8[v10])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = "}";
  v16 = a2;
  v17 = "}";
  v18 = "}";
  v11 = *(a2 + 24);
  if (v11 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  return (*(&off_2881348E0 + v11))(&v13, a2);
}

void sub_271756000(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2717562A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2717565A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27175662C(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v14 = a2;
  v15 = "{";
  v16 = a2;
  v17 = "{";
  v18 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_2881348E0 + v3))(&v13);
  std::to_string(&v13, *a3);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_2711308D4();
  }

  v19 = &v14;
  (off_2881348F8[v6])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = ",";
  v16 = a2;
  v17 = ",";
  v18 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_2881348E0 + v7))(&v13, a2);
  std::to_string(&v13, a3[1]);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    goto LABEL_16;
  }

  v19 = &v14;
  (off_2881348F8[v8])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = ",";
  v16 = a2;
  v17 = ",";
  v18 = ",";
  v9 = *(a2 + 24);
  if (v9 == -1)
  {
LABEL_15:
    sub_2711308D4();
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_2881348E0 + v9))(&v13, a2);
  std::to_string(&v13, a3[2]);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v10 = *(a2 + 24);
  if (v10 == -1)
  {
LABEL_16:
    sub_2711308D4();
  }

  v19 = &v14;
  (off_2881348F8[v10])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = "}";
  v16 = a2;
  v17 = "}";
  v18 = "}";
  v11 = *(a2 + 24);
  if (v11 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  return (*(&off_2881348E0 + v11))(&v13, a2);
}

void sub_27175684C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271756AEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271756B74(uint64_t a1, uint64_t a2, char *a3)
{
  v14 = a2;
  v15 = "{";
  v16 = a2;
  v17 = "{";
  v18 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_2881348E0 + v3))(&v13);
  std::to_string(&v13, *a3);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_2711308D4();
  }

  v19 = &v14;
  (off_2881348F8[v6])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = ",";
  v16 = a2;
  v17 = ",";
  v18 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_2881348E0 + v7))(&v13, a2);
  std::to_string(&v13, a3[1]);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    goto LABEL_16;
  }

  v19 = &v14;
  (off_2881348F8[v8])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = ",";
  v16 = a2;
  v17 = ",";
  v18 = ",";
  v9 = *(a2 + 24);
  if (v9 == -1)
  {
LABEL_15:
    sub_2711308D4();
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_2881348E0 + v9))(&v13, a2);
  std::to_string(&v13, a3[2]);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v10 = *(a2 + 24);
  if (v10 == -1)
  {
LABEL_16:
    sub_2711308D4();
  }

  v19 = &v14;
  (off_2881348F8[v10])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = "}";
  v16 = a2;
  v17 = "}";
  v18 = "}";
  v11 = *(a2 + 24);
  if (v11 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  return (*(&off_2881348E0 + v11))(&v13, a2);
}

void sub_271756D94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271757034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2717570BC(uint64_t a1, uint64_t a2, __int16 *a3)
{
  v14 = a2;
  v15 = "{";
  v16 = a2;
  v17 = "{";
  v18 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_2881348E0 + v3))(&v13);
  std::to_string(&v13, *a3);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_2711308D4();
  }

  v19 = &v14;
  (off_2881348F8[v6])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = ",";
  v16 = a2;
  v17 = ",";
  v18 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_2881348E0 + v7))(&v13, a2);
  std::to_string(&v13, a3[1]);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    goto LABEL_16;
  }

  v19 = &v14;
  (off_2881348F8[v8])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = ",";
  v16 = a2;
  v17 = ",";
  v18 = ",";
  v9 = *(a2 + 24);
  if (v9 == -1)
  {
LABEL_15:
    sub_2711308D4();
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_2881348E0 + v9))(&v13, a2);
  std::to_string(&v13, a3[2]);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v10 = *(a2 + 24);
  if (v10 == -1)
  {
LABEL_16:
    sub_2711308D4();
  }

  v19 = &v14;
  (off_2881348F8[v10])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = "}";
  v16 = a2;
  v17 = "}";
  v18 = "}";
  v11 = *(a2 + 24);
  if (v11 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  return (*(&off_2881348E0 + v11))(&v13, a2);
}

void sub_2717572DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27175757C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271757604(uint64_t a1, uint64_t a2, int *a3)
{
  v14 = a2;
  v15 = "{";
  v16 = a2;
  v17 = "{";
  v18 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_2881348E0 + v3))(&v13);
  std::to_string(&v13, *a3);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_2711308D4();
  }

  v19 = &v14;
  (off_2881348F8[v6])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = ",";
  v16 = a2;
  v17 = ",";
  v18 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_2881348E0 + v7))(&v13, a2);
  std::to_string(&v13, a3[1]);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    goto LABEL_16;
  }

  v19 = &v14;
  (off_2881348F8[v8])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = ",";
  v16 = a2;
  v17 = ",";
  v18 = ",";
  v9 = *(a2 + 24);
  if (v9 == -1)
  {
LABEL_15:
    sub_2711308D4();
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_2881348E0 + v9))(&v13, a2);
  std::to_string(&v13, a3[2]);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v10 = *(a2 + 24);
  if (v10 == -1)
  {
LABEL_16:
    sub_2711308D4();
  }

  v19 = &v14;
  (off_2881348F8[v10])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = "}";
  v16 = a2;
  v17 = "}";
  v18 = "}";
  v11 = *(a2 + 24);
  if (v11 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  return (*(&off_2881348E0 + v11))(&v13, a2);
}

void sub_271757824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271757AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271757B4C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v14 = a2;
  v15 = "{";
  v16 = a2;
  v17 = "{";
  v18 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_2881348E0 + v3))(&v13);
  std::to_string(&v13, *a3);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_2711308D4();
  }

  v19 = &v14;
  (off_2881348F8[v6])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = ",";
  v16 = a2;
  v17 = ",";
  v18 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_2881348E0 + v7))(&v13, a2);
  std::to_string(&v13, a3[1]);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    goto LABEL_16;
  }

  v19 = &v14;
  (off_2881348F8[v8])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = ",";
  v16 = a2;
  v17 = ",";
  v18 = ",";
  v9 = *(a2 + 24);
  if (v9 == -1)
  {
LABEL_15:
    sub_2711308D4();
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_2881348E0 + v9))(&v13, a2);
  std::to_string(&v13, a3[2]);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v10 = *(a2 + 24);
  if (v10 == -1)
  {
LABEL_16:
    sub_2711308D4();
  }

  v19 = &v14;
  (off_2881348F8[v10])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = "}";
  v16 = a2;
  v17 = "}";
  v18 = "}";
  v11 = *(a2 + 24);
  if (v11 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  return (*(&off_2881348E0 + v11))(&v13, a2);
}

void sub_271757D6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27175800C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271758310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2717585F8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_271120E50(exception_object);
}

void sub_27175888C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_271120E50(exception_object);
}

void sub_271758B24(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_271120E50(exception_object);
}

void sub_271758DBC(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_271120E50(exception_object);
}

void sub_271759054(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_271120E50(exception_object);
}

void sub_2717592EC(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_271120E50(exception_object);
}

void sub_271759584(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_271120E50(exception_object);
}

void sub_27175981C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_271120E50(exception_object);
}

void sub_271759AB4(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_271120E50(exception_object);
}

void sub_271759D4C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_271120E50(exception_object);
}

unsigned __int8 **sub_271759D80(unsigned __int8 **result, int a2)
{
  v4 = a2;
  if (**result != a2)
  {
    v2 = result;
    __cxa_allocate_exception(0x10uLL);
    v3 = *v2;
    sub_271759E6C();
  }

  return result;
}

void sub_271759E34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

void sub_271759E6C()
{
  v1 = 0;
  v2[0] = v0;
  v2[1] = "Span of value type ";
  v2[2] = v0;
  v2[3] = "Span of value type ";
  v2[4] = "Span of value type ";
  v3 = v2;
  sub_2712C3608(&v3);
  sub_2711E6DB4();
}

void sub_271759FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271137AE8(va);
  _Unwind_Resume(a1);
}

void sub_271759FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271137AE8(va);
  _Unwind_Resume(a1);
}

void sub_271759FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271137AE8(va);
  _Unwind_Resume(a1);
}

void sub_271759FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271137AE8(va);
  _Unwind_Resume(a1);
}

void sub_271759FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271137AE8(va);
  _Unwind_Resume(a1);
}

void *sub_27175A004(void *a1, unsigned __int8 **a2)
{
  v4 = sub_271120E64(a1, "{", 1);
  v89.__r_.__value_.__s.__data_[0] = **a2;
  v5 = sub_2718344AC(v4, &v89);
  sub_271120E64(v5, ",", 1);
  v6 = **a2;
  if (v6 > 5)
  {
    if (**a2 > 7u)
    {
      switch(v6)
      {
        case 8u:
          sub_271759D80(a2, 8);
          v59 = *(*a2 + 6);
          if (v59 > 7)
          {
            v60 = *(*a2 + 5);
            sub_271120E64(a1, "{", 1);
            std::to_string(&v89, *v60);
            if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v61 = &v89;
            }

            else
            {
              v61 = v89.__r_.__value_.__r.__words[0];
            }

            if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v89.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v89.__r_.__value_.__l.__size_;
            }

            sub_271120E64(a1, v61, size);
            v63 = v59 & 0xFFFFFFFFFFFFFFF8;
            if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v89.__r_.__value_.__l.__data_);
            }

            v64 = v63 - 8;
            if (v64)
            {
              v65 = v60 + 1;
              do
              {
                sub_271120E64(a1, ",", 1);
                std::to_string(&v89, *v65);
                if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v66 = &v89;
                }

                else
                {
                  v66 = v89.__r_.__value_.__r.__words[0];
                }

                if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v67 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v67 = v89.__r_.__value_.__l.__size_;
                }

                sub_271120E64(a1, v66, v67);
                if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v89.__r_.__value_.__l.__data_);
                }

                ++v65;
                v64 -= 8;
              }

              while (v64);
            }

            goto LABEL_149;
          }

          goto LABEL_151;
        case 0xBu:
          sub_271759D80(a2, 11);
          v76 = *a2;
          v78 = *(*a2 + 5);
          v77 = *(v76 + 6);
          v89.__r_.__value_.__r.__words[0] = a1;
          if (v77 <= 3)
          {
            goto LABEL_151;
          }

          v80 = v77 & 0xFFFFFFFFFFFFFFFCLL;
          sub_271120E64(a1, "{", 1);
          sub_2713D9E8C(&v87, &v89, v78);
          v81 = v80 - 4;
          if (v80 != 4)
          {
            v82 = v78 + 1;
            do
            {
              sub_271120E64(v89.__r_.__value_.__l.__data_, ",", 1);
              sub_2713D9E8C(&v87, &v89, v82++);
              v81 -= 4;
            }

            while (v81);
          }

          break;
        case 0xCu:
          sub_271759D80(a2, 12);
          v16 = *a2;
          v18 = *(*a2 + 5);
          v17 = *(v16 + 6);
          v89.__r_.__value_.__r.__words[0] = a1;
          if (v17 <= 7)
          {
            goto LABEL_151;
          }

          v19 = v17 & 0xFFFFFFFFFFFFFFF8;
          sub_271120E64(a1, "{", 1);
          sub_27175AE9C(&v87, &v89, v18);
          v20 = v19 - 8;
          if (v19 != 8)
          {
            v21 = v18 + 1;
            do
            {
              sub_271120E64(v89.__r_.__value_.__l.__data_, ",", 1);
              sub_27175AE9C(&v87, &v89, v21++);
              v20 -= 8;
            }

            while (v20);
          }

          break;
        default:
          goto LABEL_152;
      }

      v75 = v89.__r_.__value_.__r.__words[0];
      v74 = "}";
      goto LABEL_157;
    }

    if (v6 == 6)
    {
      sub_271759D80(a2, 6);
      v41 = *(*a2 + 6);
      if (v41 > 1)
      {
        v42 = *(*a2 + 5);
        sub_271120E64(a1, "{", 1);
        std::to_string(&v89, *v42);
        if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v43 = &v89;
        }

        else
        {
          v43 = v89.__r_.__value_.__r.__words[0];
        }

        if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v44 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v44 = v89.__r_.__value_.__l.__size_;
        }

        sub_271120E64(a1, v43, v44);
        v45 = v41 & 0xFFFFFFFFFFFFFFFELL;
        if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v89.__r_.__value_.__l.__data_);
        }

        v46 = v45 - 2;
        if (v46)
        {
          v47 = v42 + 1;
          do
          {
            sub_271120E64(a1, ",", 1);
            std::to_string(&v89, *v47);
            if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v48 = &v89;
            }

            else
            {
              v48 = v89.__r_.__value_.__r.__words[0];
            }

            if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v49 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v49 = v89.__r_.__value_.__l.__size_;
            }

            sub_271120E64(a1, v48, v49);
            if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v89.__r_.__value_.__l.__data_);
            }

            ++v47;
            v46 -= 2;
          }

          while (v46);
        }

        goto LABEL_149;
      }

      goto LABEL_151;
    }

    if (v6 == 7)
    {
      sub_271759D80(a2, 7);
      v31 = *(*a2 + 6);
      if (v31 > 3)
      {
        v32 = *(*a2 + 5);
        sub_271120E64(a1, "{", 1);
        std::to_string(&v89, *v32);
        if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v33 = &v89;
        }

        else
        {
          v33 = v89.__r_.__value_.__r.__words[0];
        }

        if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v34 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v34 = v89.__r_.__value_.__l.__size_;
        }

        sub_271120E64(a1, v33, v34);
        v35 = v31 & 0xFFFFFFFFFFFFFFFCLL;
        if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v89.__r_.__value_.__l.__data_);
        }

        v36 = v35 - 4;
        if (v36)
        {
          v37 = v32 + 1;
          do
          {
            sub_271120E64(a1, ",", 1);
            std::to_string(&v89, *v37);
            if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v38 = &v89;
            }

            else
            {
              v38 = v89.__r_.__value_.__r.__words[0];
            }

            if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v39 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v39 = v89.__r_.__value_.__l.__size_;
            }

            sub_271120E64(a1, v38, v39);
            if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v89.__r_.__value_.__l.__data_);
            }

            ++v37;
            v36 -= 4;
          }

          while (v36);
        }

        goto LABEL_149;
      }

      goto LABEL_151;
    }

LABEL_152:
    sub_27183428C(v6);
  }

  if (**a2 > 1u)
  {
    switch(v6)
    {
      case 2u:
        sub_271759D80(a2, 2);
        v50 = *(*a2 + 6);
        if (v50 > 3)
        {
          v51 = *(*a2 + 5);
          sub_271120E64(a1, "{", 1);
          std::to_string(&v89, *v51);
          if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v52 = &v89;
          }

          else
          {
            v52 = v89.__r_.__value_.__r.__words[0];
          }

          if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v53 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v53 = v89.__r_.__value_.__l.__size_;
          }

          sub_271120E64(a1, v52, v53);
          v54 = v50 & 0xFFFFFFFFFFFFFFFCLL;
          if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v89.__r_.__value_.__l.__data_);
          }

          v55 = v54 - 4;
          if (v55)
          {
            v56 = v51 + 1;
            do
            {
              sub_271120E64(a1, ",", 1);
              std::to_string(&v89, *v56);
              if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v57 = &v89;
              }

              else
              {
                v57 = v89.__r_.__value_.__r.__words[0];
              }

              if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v58 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v58 = v89.__r_.__value_.__l.__size_;
              }

              sub_271120E64(a1, v57, v58);
              if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v89.__r_.__value_.__l.__data_);
              }

              ++v56;
              v55 -= 4;
            }

            while (v55);
          }

          goto LABEL_149;
        }

        goto LABEL_151;
      case 3u:
        sub_271759D80(a2, 3);
        v68 = *(*a2 + 6);
        if (v68 > 7)
        {
          v69 = *(*a2 + 5);
          sub_271120E64(a1, "{", 1);
          std::to_string(&v89, *v69);
          if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v70 = &v89;
          }

          else
          {
            v70 = v89.__r_.__value_.__r.__words[0];
          }

          if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v71 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v71 = v89.__r_.__value_.__l.__size_;
          }

          sub_271120E64(a1, v70, v71);
          v72 = v68 & 0xFFFFFFFFFFFFFFF8;
          if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v89.__r_.__value_.__l.__data_);
          }

          v73 = v72 - 8;
          if (v73)
          {
            v84 = v69 + 1;
            do
            {
              sub_271120E64(a1, ",", 1);
              std::to_string(&v89, *v84);
              if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v85 = &v89;
              }

              else
              {
                v85 = v89.__r_.__value_.__r.__words[0];
              }

              if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v86 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v86 = v89.__r_.__value_.__l.__size_;
              }

              sub_271120E64(a1, v85, v86);
              if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v89.__r_.__value_.__l.__data_);
              }

              ++v84;
              v73 -= 8;
            }

            while (v73);
          }

          goto LABEL_149;
        }

LABEL_151:
        v74 = "{}";
        v75 = a1;
        v79 = 2;
LABEL_158:
        sub_271120E64(v75, v74, v79);
        return sub_271120E64(a1, "}", 1);
      case 5u:
        sub_271759D80(a2, 5);
        v7 = *a2;
        v8 = *(*a2 + 6);
        if (v8 > 0)
        {
          v9 = *(v7 + 5);
          sub_271120E64(a1, "{", 1);
          std::to_string(&v89, *v9);
          if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v10 = &v89;
          }

          else
          {
            v10 = v89.__r_.__value_.__r.__words[0];
          }

          if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v11 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v11 = v89.__r_.__value_.__l.__size_;
          }

          sub_271120E64(a1, v10, v11);
          if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v89.__r_.__value_.__l.__data_);
          }

          v12 = v8 - 1;
          if (v8 != 1)
          {
            v13 = v9 + 1;
            do
            {
              sub_271120E64(a1, ",", 1);
              std::to_string(&v89, *v13);
              if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v14 = &v89;
              }

              else
              {
                v14 = v89.__r_.__value_.__r.__words[0];
              }

              if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v15 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v15 = v89.__r_.__value_.__l.__size_;
              }

              sub_271120E64(a1, v14, v15);
              if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v89.__r_.__value_.__l.__data_);
              }

              ++v13;
              --v12;
            }

            while (v12);
          }

LABEL_149:
          v74 = "}";
          v75 = a1;
LABEL_157:
          v79 = 1;
          goto LABEL_158;
        }

        goto LABEL_151;
    }

    goto LABEL_152;
  }

  if (**a2)
  {
    sub_271759D80(a2, 1);
    v22 = *(*a2 + 6);
    if (v22 > 1)
    {
      v23 = *(*a2 + 5);
      sub_271120E64(a1, "{", 1);
      std::to_string(&v89, *v23);
      if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &v89;
      }

      else
      {
        v24 = v89.__r_.__value_.__r.__words[0];
      }

      if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v25 = v89.__r_.__value_.__l.__size_;
      }

      sub_271120E64(a1, v24, v25);
      v26 = v22 & 0xFFFFFFFFFFFFFFFELL;
      if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v89.__r_.__value_.__l.__data_);
      }

      v27 = v26 - 2;
      if (v27)
      {
        v28 = v23 + 1;
        do
        {
          sub_271120E64(a1, ",", 1);
          std::to_string(&v89, *v28);
          if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v29 = &v89;
          }

          else
          {
            v29 = v89.__r_.__value_.__r.__words[0];
          }

          if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v30 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v30 = v89.__r_.__value_.__l.__size_;
          }

          sub_271120E64(a1, v29, v30);
          if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v89.__r_.__value_.__l.__data_);
          }

          ++v28;
          v27 -= 2;
        }

        while (v27);
      }

      goto LABEL_149;
    }

    goto LABEL_151;
  }

  sub_271759D80(a2, 0);
  v40 = *(*a2 + 6);
  v89.__r_.__value_.__r.__words[0] = *(*a2 + 5);
  v89.__r_.__value_.__l.__size_ = v40;
  v87 = a1;
  sub_271733584(&v88, &v87, &v89);
  return sub_271120E64(a1, "}", 1);
}

void sub_27175A904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27175A954(int a1, uint64_t a2)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        v33 = *(a2 + 8);
        v34 = *(a2 + 16);
        v35 = *(v33 + 48);
        if (v35 >> 1 == *(v34 + 48) >> 1)
        {
          v36 = *(v33 + 40);
          v37 = *(v34 + 40);
          if (v35 < 2 || v36 == v37)
          {
            return 1;
          }

          v68 = 2 * (v35 >> 1);
          while (*v36 == *v37)
          {
            ++v36;
            ++v37;
            v68 -= 2;
            if (!v68)
            {
              return 1;
            }
          }
        }
      }

      else
      {
        v21 = *(a2 + 8);
        v22 = *(a2 + 16);
        v23 = *(v21 + 48);
        if (v23 >> 2 == *(v22 + 48) >> 2)
        {
          v24 = *(v21 + 40);
          v25 = *(v22 + 40);
          if (v23 < 4 || v24 == v25)
          {
            return 1;
          }

          v64 = 4 * (v23 >> 2);
          while (*v24 == *v25)
          {
            ++v24;
            ++v25;
            v64 -= 4;
            if (!v64)
            {
              return 1;
            }
          }
        }
      }

      return 0;
    }

    switch(a1)
    {
      case 8:
        v45 = *(a2 + 8);
        v46 = *(a2 + 16);
        v47 = *(v45 + 48);
        if (v47 >> 3 == *(v46 + 48) >> 3)
        {
          v48 = *(v45 + 40);
          v49 = *(v46 + 40);
          if (v47 < 8 || v48 == v49)
          {
            return 1;
          }

          v70 = 8 * (v47 >> 3);
          while (*v48 == *v49)
          {
            ++v48;
            ++v49;
            v70 -= 8;
            if (!v70)
            {
              return 1;
            }
          }
        }

        return 0;
      case 11:
        v57 = *(a2 + 8);
        v58 = *(a2 + 16);
        v59 = *(v57 + 48);
        if (v59 >> 2 == *(v58 + 48) >> 2)
        {
          v60 = *(v57 + 40);
          v61 = *(v58 + 40);
          if (v59 < 4 || v60 == v61)
          {
            return 1;
          }

          v75 = 4 * (v59 >> 2);
          while (*v60 == *v61)
          {
            ++v60;
            ++v61;
            v75 -= 4;
            if (!v75)
            {
              return 1;
            }
          }
        }

        return 0;
      case 12:
        v9 = *(a2 + 8);
        v10 = *(a2 + 16);
        v11 = *(v9 + 48);
        if (v11 >> 3 == *(v10 + 48) >> 3)
        {
          v12 = *(v9 + 40);
          v13 = *(v10 + 40);
          if (v11 < 8 || v12 == v13)
          {
            return 1;
          }

          v73 = 8 * (v11 >> 3);
          while (*v12 == *v13)
          {
            ++v12;
            ++v13;
            v73 -= 8;
            if (!v73)
            {
              return 1;
            }
          }
        }

        return 0;
    }

    goto LABEL_83;
  }

  if (a1 > 1)
  {
    switch(a1)
    {
      case 2:
        v39 = *(a2 + 8);
        v40 = *(a2 + 16);
        v41 = *(v39 + 48);
        if (v41 >> 2 == *(v40 + 48) >> 2)
        {
          v42 = *(v39 + 40);
          v43 = *(v40 + 40);
          if (v41 < 4 || v42 == v43)
          {
            return 1;
          }

          v69 = 4 * (v41 >> 2);
          while (*v42 == *v43)
          {
            ++v42;
            ++v43;
            v69 -= 4;
            if (!v69)
            {
              return 1;
            }
          }
        }

        return 0;
      case 3:
        v51 = *(a2 + 8);
        v52 = *(a2 + 16);
        v53 = *(v51 + 48);
        if (v53 >> 3 == *(v52 + 48) >> 3)
        {
          v54 = *(v51 + 40);
          v55 = *(v52 + 40);
          if (v53 < 8 || v54 == v55)
          {
            return 1;
          }

          v74 = 8 * (v53 >> 3);
          while (*v54 == *v55)
          {
            ++v54;
            ++v55;
            v74 -= 8;
            if (!v74)
            {
              return 1;
            }
          }
        }

        return 0;
      case 5:
        v2 = *(a2 + 8);
        v3 = *(a2 + 16);
        v4 = *(v2 + 48);
        if (v4 == *(v3 + 48))
        {
          v5 = *(v2 + 40);
          v6 = *(v3 + 40);
          if (v4)
          {
            v7 = v5 == v6;
          }

          else
          {
            v7 = 1;
          }

          if (v7)
          {
            return 1;
          }

          v71 = v4 - 1;
          do
          {
            v72 = v71;
            v67 = *v5 == *v6;
            if (*v5 != *v6)
            {
              break;
            }

            ++v5;
            ++v6;
            --v71;
          }

          while (v72);
          return v67;
        }

        return 0;
    }

LABEL_83:
    sub_27183428C(a1);
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v15 = *(a2 + 8);
      v16 = *(a2 + 16);
      v17 = *(v15 + 48);
      if (v17 >> 1 == *(v16 + 48) >> 1)
      {
        v18 = *(v15 + 40);
        v19 = *(v16 + 40);
        if (v17 < 2 || v18 == v19)
        {
          return 1;
        }

        v63 = 2 * (v17 >> 1);
        while (*v18 == *v19)
        {
          ++v18;
          ++v19;
          v63 -= 2;
          if (!v63)
          {
            return 1;
          }
        }
      }

      return 0;
    }

    goto LABEL_83;
  }

  v27 = *(a2 + 8);
  v28 = *(a2 + 16);
  v29 = *(v27 + 48);
  if (v29 == *(v28 + 48))
  {
    v30 = *(v27 + 40);
    v31 = *(v28 + 40);
    if (v29)
    {
      v32 = v30 == v31;
    }

    else
    {
      v32 = 1;
    }

    if (v32)
    {
      return 1;
    }

    v65 = v29 - 1;
    do
    {
      v66 = v65;
      v67 = *v30 == *v31;
      if (*v30 != *v31)
      {
        break;
      }

      ++v30;
      ++v31;
      --v65;
    }

    while (v66);
    return v67;
  }

  return 0;
}

void sub_27175AE0C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881068C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27175AE60(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    return v1(0, result + 32, 0, 0, 0);
  }

  return result;
}

void sub_27175AE9C(uint64_t a1, void **a2, double *a3)
{
  std::to_string(&v19, *a3);
  v5 = v19.__r_.__value_.__r.__words[0];
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v19;
  }

  else
  {
    v6 = v19.__r_.__value_.__r.__words[0];
  }

  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v19.__r_.__value_.__l.__size_;
  }

  v8 = size;
  do
  {
    if (!v8)
    {
      v8 = -1;
      if ((*(&v19.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        goto LABEL_14;
      }

LABEL_11:
      if (v8 != HIBYTE(v19.__r_.__value_.__r.__words[2]) - 1)
      {
        v5 = &v19;
        goto LABEL_16;
      }

LABEL_15:
      sub_271120E64(*a2, v6, size);
LABEL_46:
      if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_49;
    }

    v9 = v6->__r_.__value_.__s.__data_[--v8];
  }

  while (v9 == 48);
  if ((*(&v19.__r_.__value_.__s + 23) & 0x80) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  if (v8 == v19.__r_.__value_.__l.__size_ - 1)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (strtod(v5, 0) != *a3)
  {
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v19;
    }

    else
    {
      v6 = v19.__r_.__value_.__r.__words[0];
    }

    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v19.__r_.__value_.__l.__size_;
    }

    goto LABEL_15;
  }

  v10 = SHIBYTE(v19.__r_.__value_.__r.__words[2]);
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v19;
  }

  else
  {
    v11 = v19.__r_.__value_.__r.__words[0];
  }

  v12 = 1;
  if (v11->__r_.__value_.__s.__data_[v8] == 46)
  {
    v12 = 2;
  }

  v13 = v12 + v8;
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v10 = v19.__r_.__value_.__l.__size_;
  }

  if (v10 >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v10;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (v14 >= 0x17)
  {
    operator new();
  }

  v18 = v14;
  if (v14)
  {
    memmove(__p, v11, v14);
  }

  *(__p + v14) = 0;
  if ((v18 & 0x80u) == 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v16 = v18;
  }

  else
  {
    v16 = __p[1];
  }

  sub_271120E64(*a2, v15, v16);
  if ((v18 & 0x80000000) == 0)
  {
    goto LABEL_46;
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return;
  }

LABEL_49:
  operator delete(v19.__r_.__value_.__l.__data_);
}

void sub_27175B0A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

uint64_t sub_27175B110(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  if (*(*a1 + 56))
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Container/src/Points.cpp", 42, "this->numbers.Size() % N == 0", 0x1DuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "this->numbers.Size() % N == 0", 29, "", 0);
        return a1;
      }
    }

    else
    {
      v3 = qword_28087C408;
      v4 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_11;
      }
    }

    do
    {
      (*v3)(*(v3 + 8), "this->numbers.Size() % N == 0", 29, "", 0);
      v3 += 16;
    }

    while (v3 != v4);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_11:
    abort();
  }

  return a1;
}

uint64_t sub_27175B270(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  if (0xAAAAAAAAAAAAAAABLL * *(*a1 + 56) >= 0x5555555555555556)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Container/src/Points.cpp", 42, "this->numbers.Size() % N == 0", 0x1DuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "this->numbers.Size() % N == 0", 29, "", 0);
        return a1;
      }
    }

    else
    {
      v3 = qword_28087C408;
      v4 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_11;
      }
    }

    do
    {
      (*v3)(*(v3 + 8), "this->numbers.Size() % N == 0", 29, "", 0);
      v3 += 16;
    }

    while (v3 != v4);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_11:
    abort();
  }

  return a1;
}

void sub_27175B688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27175B6EC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27175B724(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_27175B788(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteINS_6vectorIN4cv3d3esn4math6VectorIiLj2EEENS_9allocatorIS6_EEEEEE")
  {
    if (((v2 & "NSt3__114default_deleteINS_6vectorIN4cv3d3esn4math6VectorIiLj2EEENS_9allocatorIS6_EEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteINS_6vectorIN4cv3d3esn4math6VectorIiLj2EEENS_9allocatorIS6_EEEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteINS_6vectorIN4cv3d3esn4math6VectorIiLj2EEENS_9allocatorIS6_EEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_27175B7E8(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_27175B7E8;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_27175B7E8;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28811B7A8;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "NSt3__110shared_ptrINS_6vectorIN4cv3d3esn4math6VectorIiLj2EEENS_9allocatorIS6_EEEEEE")
      {
        if (((v5 & "NSt3__110shared_ptrINS_6vectorIN4cv3d3esn4math6VectorIiLj2EEENS_9allocatorIS6_EEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "NSt3__110shared_ptrINS_6vectorIN4cv3d3esn4math6VectorIiLj2EEENS_9allocatorIS6_EEEEEE"))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrINS_6vectorIN4cv3d3esn4math6VectorIiLj2EEENS_9allocatorIS6_EEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_2718B72E4)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_27175BC44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27175BCA8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27175BCE0(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_27175BD44(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteINS_6vectorIN4cv3d3esn4math6VectorIiLj3EEENS_9allocatorIS6_EEEEEE")
  {
    if (((v2 & "NSt3__114default_deleteINS_6vectorIN4cv3d3esn4math6VectorIiLj3EEENS_9allocatorIS6_EEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteINS_6vectorIN4cv3d3esn4math6VectorIiLj3EEENS_9allocatorIS6_EEEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteINS_6vectorIN4cv3d3esn4math6VectorIiLj3EEENS_9allocatorIS6_EEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_27175BDA4(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_27175BDA4;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_27175BDA4;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28811B798;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "NSt3__110shared_ptrINS_6vectorIN4cv3d3esn4math6VectorIiLj3EEENS_9allocatorIS6_EEEEEE")
      {
        if (((v5 & "NSt3__110shared_ptrINS_6vectorIN4cv3d3esn4math6VectorIiLj3EEENS_9allocatorIS6_EEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "NSt3__110shared_ptrINS_6vectorIN4cv3d3esn4math6VectorIiLj3EEENS_9allocatorIS6_EEEEEE"))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrINS_6vectorIN4cv3d3esn4math6VectorIiLj3EEENS_9allocatorIS6_EEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_2718B741C)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void *sub_27175BF48(int a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        return sub_27175C5E0(v4);
      }

      else
      {
        return sub_27175C6E4(v4);
      }
    }

    else
    {
      switch(a1)
      {
        case 8:
          return sub_27175C7E8(v4);
        case 11:
          return sub_27175C8EC(v4);
        case 12:
          return sub_27175C9F0(v4);
        default:
          goto LABEL_23;
      }
    }
  }

  else if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_23;
      }

      return sub_27175C1D0(v4);
    }

    else
    {
      return sub_27175C0CC(v4);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return sub_27175C2D4(v4);
      case 3:
        return sub_27175C3D8(v4);
      case 5:
        return sub_27175C4DC(v4);
      default:
LABEL_23:

        sub_27183428C(a1);
    }
  }
}

void *sub_27175C0CC(uint64_t a1)
{
  v2 = *a1;
  sub_271759D80(*a1, 0);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = **(a1 + 8);
  if (*(v3 + 6) > 1uLL)
  {
    sub_271120E64(v5, "{", 1);
    sub_2717523A0();
  }

  return sub_271120E64(v5, "{}", 2);
}

void *sub_27175C1D0(uint64_t a1)
{
  v2 = *a1;
  sub_271759D80(*a1, 1);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = **(a1 + 8);
  if (*(v3 + 6) > 3uLL)
  {
    sub_271120E64(v5, "{", 1);
    sub_271752864();
  }

  return sub_271120E64(v5, "{}", 2);
}

void *sub_27175C2D4(uint64_t a1)
{
  v2 = *a1;
  sub_271759D80(*a1, 2);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = **(a1 + 8);
  if (*(v3 + 6) > 7uLL)
  {
    sub_271120E64(v5, "{", 1);
    sub_271752D28();
  }

  return sub_271120E64(v5, "{}", 2);
}

void *sub_27175C3D8(uint64_t a1)
{
  v2 = *a1;
  sub_271759D80(*a1, 3);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = **(a1 + 8);
  if (*(v3 + 6) > 0xFuLL)
  {
    sub_271120E64(v5, "{", 1);
    sub_27175302C();
  }

  return sub_271120E64(v5, "{}", 2);
}

void *sub_27175C4DC(uint64_t a1)
{
  v2 = *a1;
  sub_271759D80(*a1, 5);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = **(a1 + 8);
  if (*(v3 + 6) > 1uLL)
  {
    sub_271120E64(v5, "{", 1);
    sub_2717534F0();
  }

  return sub_271120E64(v5, "{}", 2);
}

void *sub_27175C5E0(uint64_t a1)
{
  v2 = *a1;
  sub_271759D80(*a1, 6);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = **(a1 + 8);
  if (*(v3 + 6) > 3uLL)
  {
    sub_271120E64(v5, "{", 1);
    sub_2717539B4();
  }

  return sub_271120E64(v5, "{}", 2);
}

void *sub_27175C6E4(uint64_t a1)
{
  v2 = *a1;
  sub_271759D80(*a1, 7);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = **(a1 + 8);
  if (*(v3 + 6) > 7uLL)
  {
    sub_271120E64(v5, "{", 1);
    sub_271753E78();
  }

  return sub_271120E64(v5, "{}", 2);
}

void *sub_27175C7E8(uint64_t a1)
{
  v2 = *a1;
  sub_271759D80(*a1, 8);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = **(a1 + 8);
  if (*(v3 + 6) > 0xFuLL)
  {
    sub_271120E64(v5, "{", 1);
    sub_27175433C();
  }

  return sub_271120E64(v5, "{}", 2);
}

void *sub_27175C8EC(uint64_t a1)
{
  v2 = *a1;
  sub_271759D80(*a1, 11);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = **(a1 + 8);
  if (*(v3 + 6) > 7uLL)
  {
    sub_271120E64(v5, "{", 1);
    sub_27173D3C0();
  }

  return sub_271120E64(v5, "{}", 2);
}

void *sub_27175C9F0(uint64_t a1)
{
  v2 = *a1;
  sub_271759D80(*a1, 12);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = **(a1 + 8);
  if (*(v3 + 6) > 0xFuLL)
  {
    sub_271120E64(v5, "{", 1);
    sub_27173E198();
  }

  return sub_271120E64(v5, "{}", 2);
}

void *sub_27175CAF4(int a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        return sub_27175D20C(v4);
      }

      else
      {
        return sub_27175D330(v4);
      }
    }

    else
    {
      switch(a1)
      {
        case 8:
          return sub_27175D454(v4);
        case 11:
          return sub_27175D578(v4);
        case 12:
          return sub_27175D69C(v4);
        default:
          goto LABEL_23;
      }
    }
  }

  else if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_23;
      }

      return sub_27175CD8C(v4);
    }

    else
    {
      return sub_27175CC78(v4);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return sub_27175CEB0(v4);
      case 3:
        return sub_27175CFD4(v4);
      case 5:
        return sub_27175D0F8(v4);
      default:
LABEL_23:

        sub_27183428C(a1);
    }
  }
}

void *sub_27175CC78(uint64_t a1)
{
  v2 = *a1;
  sub_271759D80(*a1, 0);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = **(a1 + 8);
  if (*(v3 + 6) > 2uLL)
  {
    sub_271120E64(v5, "{", 1);
    sub_271755594();
  }

  return sub_271120E64(v5, "{}", 2);
}

void *sub_27175CD8C(uint64_t a1)
{
  v2 = *a1;
  sub_271759D80(*a1, 1);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = **(a1 + 8);
  if (*(v3 + 6) > 5uLL)
  {
    sub_271120E64(v5, "{", 1);
    sub_271755ADC();
  }

  return sub_271120E64(v5, "{}", 2);
}

void *sub_27175CEB0(uint64_t a1)
{
  v2 = *a1;
  sub_271759D80(*a1, 2);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = **(a1 + 8);
  if (*(v3 + 6) > 0xBuLL)
  {
    sub_271120E64(v5, "{", 1);
    sub_271756024();
  }

  return sub_271120E64(v5, "{}", 2);
}

void *sub_27175CFD4(uint64_t a1)
{
  v2 = *a1;
  sub_271759D80(*a1, 3);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = **(a1 + 8);
  if (*(v3 + 6) > 0x17uLL)
  {
    sub_271120E64(v5, "{", 1);
    sub_271756328();
  }

  return sub_271120E64(v5, "{}", 2);
}

void *sub_27175D0F8(uint64_t a1)
{
  v2 = *a1;
  sub_271759D80(*a1, 5);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = **(a1 + 8);
  if (*(v3 + 6) > 2uLL)
  {
    sub_271120E64(v5, "{", 1);
    sub_271756870();
  }

  return sub_271120E64(v5, "{}", 2);
}

void *sub_27175D20C(uint64_t a1)
{
  v2 = *a1;
  sub_271759D80(*a1, 6);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = **(a1 + 8);
  if (*(v3 + 6) > 5uLL)
  {
    sub_271120E64(v5, "{", 1);
    sub_271756DB8();
  }

  return sub_271120E64(v5, "{}", 2);
}

void *sub_27175D330(uint64_t a1)
{
  v2 = *a1;
  sub_271759D80(*a1, 7);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = **(a1 + 8);
  if (*(v3 + 6) > 0xBuLL)
  {
    sub_271120E64(v5, "{", 1);
    sub_271757300();
  }

  return sub_271120E64(v5, "{}", 2);
}

void *sub_27175D454(uint64_t a1)
{
  v2 = *a1;
  sub_271759D80(*a1, 8);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = **(a1 + 8);
  if (*(v3 + 6) > 0x17uLL)
  {
    sub_271120E64(v5, "{", 1);
    sub_271757848();
  }

  return sub_271120E64(v5, "{}", 2);
}

void *sub_27175D578(uint64_t a1)
{
  v2 = *a1;
  sub_271759D80(*a1, 11);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = **(a1 + 8);
  if (*(v3 + 6) > 0xBuLL)
  {
    sub_271120E64(v5, "{", 1);
    sub_271757D90();
  }

  return sub_271120E64(v5, "{}", 2);
}

void *sub_27175D69C(uint64_t a1)
{
  v2 = *a1;
  sub_271759D80(*a1, 12);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = **(a1 + 8);
  if (*(v3 + 6) > 0x17uLL)
  {
    sub_271120E64(v5, "{", 1);
    sub_271758094();
  }

  return sub_271120E64(v5, "{}", 2);
}

void sub_27176E558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v6 = *(v4 - 104);
  *(v4 - 104) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(v4 - 96);
  *(v4 - 96) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
    sub_27131626C(va);
    sub_27131626C(va1);
    _Unwind_Resume(a1);
  }

  sub_27131626C(va);
  sub_27131626C(va1);
  _Unwind_Resume(a1);
}

void sub_27176FE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_27131626C(va);
  _Unwind_Resume(a1);
}

void sub_27176FE6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_271317FB8(va);
  _Unwind_Resume(a1);
}

void sub_27176FE80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_271312A04(va);
  _Unwind_Resume(a1);
}

void sub_27176FE94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_271310EE8(va);
  _Unwind_Resume(a1);
}

void sub_27176FEA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_27132560C(va);
  _Unwind_Resume(a1);
}

void sub_27176FEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_271315268(va);
  _Unwind_Resume(a1);
}

void sub_27176FED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_271320E00(va);
  _Unwind_Resume(a1);
}

void sub_27176FEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_27130CB34(va);
  _Unwind_Resume(a1);
}

void sub_27176FEF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_27130D8DC(va);
  _Unwind_Resume(a1);
}

void sub_27176FF0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_271324668(va);
  _Unwind_Resume(a1);
}

void sub_27176FF20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_27130557C(va);
  _Unwind_Resume(a1);
}

void sub_27176FF34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_271306464(va);
  _Unwind_Resume(a1);
}

void sub_27176FF48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_27130B044(va);
  _Unwind_Resume(a1);
}

void sub_27176FF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_271311C5C(va);
  _Unwind_Resume(a1);
}

void sub_27176FF70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_2713082D0(va);
  _Unwind_Resume(a1);
}

void sub_27176FF84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_271304654(va);
  _Unwind_Resume(a1);
}

void sub_27176FF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_27130BDEC(va);
  _Unwind_Resume(a1);
}

void sub_27176FFAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_271320058(va);
  _Unwind_Resume(a1);
}

void sub_27176FFC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_271321B48(va);
  _Unwind_Resume(a1);
}

void sub_27176FFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_27131E084(va);
  _Unwind_Resume(a1);
}

void sub_27176FFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_2713228F0(va);
  _Unwind_Resume(a1);
}

void sub_27176FFFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_271323664(va);
  _Unwind_Resume(a1);
}

void sub_271770010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_27131C594(va);
  _Unwind_Resume(a1);
}

void sub_271770024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_27130735C(va);
  _Unwind_Resume(a1);
}

void sub_271770038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_271309070(va);
  _Unwind_Resume(a1);
}

void sub_27177004C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_27131F088(va);
  _Unwind_Resume(a1);
}

void sub_271770060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_27131AA78(va);
  _Unwind_Resume(a1);
}

void sub_271770074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_271317210(va);
  _Unwind_Resume(a1);
}

void sub_271770088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_2713263B4(va);
  _Unwind_Resume(a1);
}

void sub_27177009C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_27130A074(va);
  _Unwind_Resume(a1);
}

void sub_2717700B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_27131374C(va);
  _Unwind_Resume(a1);
}

void sub_2717700C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_271327128(va);
  _Unwind_Resume(a1);
}

void sub_2717700D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_27130F3F8(va);
  _Unwind_Resume(a1);
}

void sub_2717700EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_271310140(va);
  _Unwind_Resume(a1);
}

void sub_271770100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_271318D2C(va);
  _Unwind_Resume(a1);
}

void sub_271770114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_27131D33C(va);
  _Unwind_Resume(a1);
}

void sub_271770128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_27130E650(va);
  _Unwind_Resume(a1);
}

void sub_27177013C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_271319D30(va);
  _Unwind_Resume(a1);
}

void sub_271770150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_2713144F4(va);
  _Unwind_Resume(a1);
}

void sub_271770164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_27131B820(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271770178(_DWORD *a1, _DWORD *a2)
{
  if (a1[6] != a2[6] || a1[7] != a2[7])
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/Algorithm.cpp", 80, "from.Size() == to.Size()", 0x18uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_10:
        qword_28087C420(*algn_28087C428, "from.Size() == to.Size()", 24, "", 0);
        goto LABEL_11;
      }
    }

    else
    {
      v4 = qword_28087C408;
      v5 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_21;
      }
    }

    do
    {
      v7 = *v4;
      v6 = *(v4 + 8);
      v4 += 16;
      v7(v6, "from.Size() == to.Size()", 24, "", 0);
    }

    while (v4 != v5);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_10;
  }

LABEL_11:
  v8 = a1[12];
  if (v8 != a2[12])
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/Algorithm.cpp", 81, "from.RuntimeFormat() == to.RuntimeFormat()", 0x2AuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v9 = qword_28087C408, v10 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_19:
        qword_28087C420(*algn_28087C428, "from.RuntimeFormat() == to.RuntimeFormat()", 42, "", 0);
        v8 = a1[12];
        goto LABEL_20;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_21;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "from.RuntimeFormat() == to.RuntimeFormat()", 42, "", 0);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
      goto LABEL_19;
    }

LABEL_21:
    abort();
  }

LABEL_20:
  v14 = a2;
  return sub_2717703C0(v8, &v14, a1);
}

void sub_271781EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v6 = *(v4 - 136);
  *(v4 - 136) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
    sub_2715C0080(va1);
    sub_271312A04(va);
    _Unwind_Resume(a1);
  }

  sub_2715C0080(va1);
  sub_271312A04(va);
  _Unwind_Resume(a1);
}

void sub_271783D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27131626C(va);
  _Unwind_Resume(a1);
}

void sub_271783D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_271317FB8(va);
  _Unwind_Resume(a1);
}

void sub_271783DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27132560C(va);
  _Unwind_Resume(a1);
}

void sub_271783DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_271320E00(va);
  _Unwind_Resume(a1);
}

void sub_271783DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_271324668(va);
  _Unwind_Resume(a1);
}

void sub_271783DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27130557C(va);
  _Unwind_Resume(a1);
}

void sub_271783DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_271306464(va);
  _Unwind_Resume(a1);
}

void sub_271783E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_271320058(va);
  _Unwind_Resume(a1);
}

void sub_271783E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27131E084(va);
  _Unwind_Resume(a1);
}

void sub_271783E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27130735C(va);
  _Unwind_Resume(a1);
}

void sub_271783E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27131F088(va);
  _Unwind_Resume(a1);
}

void sub_271783E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_271317210(va);
  _Unwind_Resume(a1);
}

void sub_271783E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2713263B4(va);
  _Unwind_Resume(a1);
}

void sub_271783E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_271327128(va);
  _Unwind_Resume(a1);
}

void sub_271783E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_271318D2C(va);
  _Unwind_Resume(a1);
}

void sub_271783EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_271304654(va);
  _Unwind_Resume(a1);
}

void sub_271783EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27131D33C(va);
  _Unwind_Resume(a1);
}

void sub_271783ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_271319D30(va);
  _Unwind_Resume(a1);
}

void sub_271784154(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_280878F10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878F10))
  {
    sub_27160694C();
  }

  if ((atomic_load_explicit(&qword_280878DF0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878DF0))
    {
      sub_2715F0A34();
    }
  }

  v3 = *(a2 + 48);
  sub_27120A854("Attempting to create an ", &unk_280878EF8, " from an ", &unk_280878DD8, " but the image is of incompatible format ");
}

void sub_27178426C(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_280878F30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878F30))
  {
    sub_271606FB8();
  }

  if ((atomic_load_explicit(&qword_280878DF0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878DF0))
    {
      sub_2715F0A34();
    }
  }

  v3 = *(a2 + 48);
  sub_27120A854("Attempting to create an ", &unk_280878F18, " from an ", &unk_280878DD8, " but the image is of incompatible format ");
}

void sub_271784384(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_280878F50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878F50))
  {
    sub_27160783C();
  }

  if ((atomic_load_explicit(&qword_280878DF0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878DF0))
    {
      sub_2715F0A34();
    }
  }

  v3 = *(a2 + 48);
  sub_27120A854("Attempting to create an ", &unk_280878F38, " from an ", &unk_280878DD8, " but the image is of incompatible format ");
}

void sub_27178449C(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_280878F70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878F70))
  {
    sub_271607CD4();
  }

  if ((atomic_load_explicit(&qword_280878DF0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878DF0))
    {
      sub_2715F0A34();
    }
  }

  v3 = *(a2 + 48);
  sub_27120A854("Attempting to create an ", &unk_280878F58, " from an ", &unk_280878DD8, " but the image is of incompatible format ");
}

void sub_2717845B4(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_280878F90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878F90))
  {
    sub_271608340();
  }

  if ((atomic_load_explicit(&qword_280878DF0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878DF0))
    {
      sub_2715F0A34();
    }
  }

  v3 = *(a2 + 48);
  sub_27120A854("Attempting to create an ", &unk_280878F78, " from an ", &unk_280878DD8, " but the image is of incompatible format ");
}

void sub_2717846CC(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_280878FB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878FB0))
  {
    sub_271608D98();
  }

  if ((atomic_load_explicit(&qword_280878DF0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878DF0))
    {
      sub_2715F0A34();
    }
  }

  v3 = *(a2 + 48);
  sub_27120A854("Attempting to create an ", &unk_280878F98, " from an ", &unk_280878DD8, " but the image is of incompatible format ");
}

void sub_2717847E4(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_280878FD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878FD0))
  {
    sub_2716097F0();
  }

  if ((atomic_load_explicit(&qword_280878DF0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878DF0))
    {
      sub_2715F0A34();
    }
  }

  v3 = *(a2 + 48);
  sub_27120A854("Attempting to create an ", &unk_280878FB8, " from an ", &unk_280878DD8, " but the image is of incompatible format ");
}

void sub_2717848FC(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_280878FF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878FF0))
  {
    sub_27160A248();
  }

  if ((atomic_load_explicit(&qword_280878DF0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878DF0))
    {
      sub_2715F0A34();
    }
  }

  v3 = *(a2 + 48);
  sub_27120A854("Attempting to create an ", &unk_280878FD8, " from an ", &unk_280878DD8, " but the image is of incompatible format ");
}

void sub_271784A14(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_280879010, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879010))
  {
    sub_27160ACA0();
  }

  if ((atomic_load_explicit(&qword_280878DF0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878DF0))
    {
      sub_2715F0A34();
    }
  }

  v3 = *(a2 + 48);
  sub_27120A854("Attempting to create an ", &unk_280878FF8, " from an ", &unk_280878DD8, " but the image is of incompatible format ");
}