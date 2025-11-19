void sub_2711B5A88(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_280877990);
  while (1)
  {
    v4 = *(v1 - 1);
    v1 -= 3;
    if (v4 < 0)
    {
      operator delete(*v1);
    }

    if (v1 == (v2 - 112))
    {
      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_2711B5B88(uint64_t result)
{
  if ((*(result + 120) & 1) == 0)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x80uLL);
    sub_2711365E8(v3, v1);
    sub_271137B44(exception, v3);
    __cxa_throw(exception, &unk_28811C2F0, sub_271130150);
  }

  return result;
}

void sub_2711B5C00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D71C(va);
  _Unwind_Resume(a1);
}

void sub_2711B5C14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D71C(va);
  __cxa_free_exception(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_2711B5C44(uint64_t result)
{
  if (*(result + 120) == 1)
  {
    if (*(result + 48) == 1)
    {
      v1 = *(result + 24);
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

    v3 = *(result + 8);
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v7 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v7;
      }
    }
  }

  else if (*(result + 112) == 1)
  {
    if (*(result + 104) == 1)
    {
      if (*(result + 103) < 0)
      {
        v4 = result;
        operator delete(*(result + 80));
        result = v4;
      }

      if (*(result + 71) < 0)
      {
        v5 = result;
        operator delete(*(result + 48));
        result = v5;
      }
    }

    if (*(result + 40) == 1 && *(result + 39) < 0)
    {
      v6 = result;
      operator delete(*(result + 16));
      return v6;
    }
  }

  return result;
}

void sub_2711B5DA8()
{
  if ((atomic_load_explicit(&qword_28087AD30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AD30))
  {
    sub_2718519B4("VZServer]", 8uLL, qword_28087AF10);

    __cxa_guard_release(&qword_28087AD30);
  }
}

void sub_2711B5E38()
{
  v2 = *MEMORY[0x277D85DE8];
  *(&__p.__r_.__value_.__s + 23) = 13;
  strcpy(&__p, "std::function");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, &v0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_2711B6024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void **a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_27137F4D0(&a16);
  if (*(v24 - 25) < 0)
  {
    operator delete(*(v24 - 48));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2711B6094(uint64_t **a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087AD30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AD30))
  {
    sub_2718519B4("VZServer]", 8uLL, qword_28087AF10);
    __cxa_guard_release(&qword_28087AD30);
  }

  if ((atomic_load_explicit(&qword_28087AD40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AD40))
  {
    sub_2711B6774();
  }

  if (byte_28087AF57 < 0)
  {
    sub_271127178(&v23, xmmword_28087AF40, *(&xmmword_28087AF40 + 1));
  }

  else
  {
    v23 = xmmword_28087AF40;
    v24 = unk_28087AF50;
  }

  if ((atomic_load_explicit(&qword_28087AD28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AD28))
  {
    sub_2711B5424();
  }

  if (byte_28087AF0F < 0)
  {
    sub_271127178(&v25, xmmword_28087AEF8, *(&xmmword_28087AEF8 + 1));
  }

  else
  {
    v25 = xmmword_28087AEF8;
    v26 = unk_28087AF08;
  }

  if ((atomic_load_explicit(&qword_280877990, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877990))
  {
    sub_271144B04();
  }

  if (byte_28087798F < 0)
  {
    sub_271127178(&v27, xmmword_280877978, *(&xmmword_280877978 + 1));
  }

  else
  {
    v27 = xmmword_280877978;
    v28 = unk_280877988;
  }

  sub_2711309E8(&v21, &v23, 3uLL);
  LOBYTE(v10) = 0;
  v20 = 0;
  if (*(a2 + 120) == 1)
  {
    v10 = *a2;
    LOBYTE(v11) = 0;
    v19 = 0;
    if (*(a2 + 112) == 1)
    {
      sub_27112F6CC(&v11, (a2 + 16));
      v19 = 1;
    }

    v20 = 1;
  }

  sub_27112E0C4(qword_28087AF10, &v21, &v10, **a1);
  if (v20 == 1 && v19 == 1)
  {
    if (v18 == 1)
    {
      if (v17 < 0)
      {
        operator delete(__p);
      }

      if (v15 < 0)
      {
        operator delete(v14);
      }
    }

    if (v13 == 1 && v12 < 0)
    {
      operator delete(v11);
    }
  }

  v4 = v21;
  if (v21)
  {
    v5 = v22;
    v6 = v21;
    if (v22 != v21)
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
      v6 = v21;
    }

    v22 = v4;
    operator delete(v6);
  }

  if ((SHIBYTE(v28) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

LABEL_42:
    operator delete(v25);
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_43:
    operator delete(v23);
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v27);
  if (SHIBYTE(v26) < 0)
  {
    goto LABEL_42;
  }

LABEL_38:
  if (SHIBYTE(v24) < 0)
  {
    goto LABEL_43;
  }

LABEL_39:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_2711B6414(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_280877990);
  while (1)
  {
    v4 = *(v1 - 1);
    v1 -= 3;
    if (v4 < 0)
    {
      operator delete(*v1);
    }

    if (v1 == (v2 - 112))
    {
      _Unwind_Resume(a1);
    }
  }
}

__n128 sub_2711B6588(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28812DD28;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2711B65B8(uint64_t result, uint64_t a2, void *a3)
{
  if (*(result + 8))
  {
    v4 = result;
    v5 = sub_2711B2BE4(a2);
    v6 = sub_27115FBA0(0, a3);
    result = (*(v4 + 8))(*(v4 + 16), v5, v6);
    if (v6)
    {
      result = (*(*v6 + 24))(v6);
    }

    if (v5)
    {
      v7 = *(*v5 + 24);

      return v7(v5);
    }
  }

  return result;
}

void sub_2711B668C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    (*(*v2 + 24))(v2);
    if (!v1)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  (*(*v1 + 24))(v1);
  _Unwind_Resume(exception_object);
}

uint64_t sub_2711B66FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "Z26VZServerCreateWithFunctionE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "Z26VZServerCreateWithFunctionE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "Z26VZServerCreateWithFunctionE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("Z26VZServerCreateWithFunctionE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_2711B6980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_2711B69B0()
{
  *(&__p.__r_.__value_.__s + 23) = 8;
  strcpy(&__p, "VZServer");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, &v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v0 = std::string::insert(&v9, 0, "const ", 6uLL);
  v1 = *&v0->__r_.__value_.__l.__data_;
  v8 = v0->__r_.__value_.__r.__words[2];
  v7 = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
LABEL_5:
      v3 = &v7;
      if (v2 == 22)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v2 = *(&v7 + 1);
  v4 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v4 == *(&v7 + 1))
  {
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_10:
    operator new();
  }

  v3 = v7;
LABEL_12:
  *(v3 + v2) = 42;
  v5 = v2 + 1;
  if (SHIBYTE(v8) < 0)
  {
    *(&v7 + 1) = v5;
  }

  else
  {
    HIBYTE(v8) = v5 & 0x7F;
  }

  *(v3 + v5) = 0;
  result = *&v7;
  xmmword_28087AF58 = v7;
  unk_28087AF68 = v8;
  return result;
}

void sub_2711B6BD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_2711B6C10()
{
  *(&__p.__r_.__value_.__s + 23) = 8;
  strcpy(&__p, "__CFUUID");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, &v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v0 = std::string::insert(&v9, 0, "const ", 6uLL);
  v1 = *&v0->__r_.__value_.__l.__data_;
  v8 = v0->__r_.__value_.__r.__words[2];
  v7 = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
LABEL_5:
      v3 = &v7;
      if (v2 == 22)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v2 = *(&v7 + 1);
  v4 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v4 == *(&v7 + 1))
  {
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_10:
    operator new();
  }

  v3 = v7;
LABEL_12:
  *(v3 + v2) = 42;
  v5 = v2 + 1;
  if (SHIBYTE(v8) < 0)
  {
    *(&v7 + 1) = v5;
  }

  else
  {
    HIBYTE(v8) = v5 & 0x7F;
  }

  *(v3 + v5) = 0;
  result = *&v7;
  xmmword_28087AF70 = v7;
  unk_28087AF80 = v8;
  return result;
}

void sub_2711B6E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711B6E70(uint64_t **a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280877BB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877BB0))
  {
    sub_2718519B4("VZEnableStates]", 0xEuLL, qword_280877B98);
    __cxa_guard_release(&qword_280877BB0);
  }

  if ((atomic_load_explicit(&qword_28087AD58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AD58))
  {
    sub_2711B7210();
    __cxa_guard_release(&qword_28087AD58);
  }

  if (byte_28087AF9F < 0)
  {
    sub_271127178(&v23, xmmword_28087AF88, *(&xmmword_28087AF88 + 1));
  }

  else
  {
    v23 = xmmword_28087AF88;
    v24 = unk_28087AF98;
  }

  if ((atomic_load_explicit(&qword_28087AD60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AD60))
  {
    sub_2718519B4("cv3d::esn::random::UUID]", 0x17uLL, &xmmword_28087AFA0);
    __cxa_guard_release(&qword_28087AD60);
  }

  if (byte_28087AFB7 < 0)
  {
    sub_271127178(&v25, xmmword_28087AFA0, *(&xmmword_28087AFA0 + 1));
  }

  else
  {
    v25 = xmmword_28087AFA0;
    v26 = unk_28087AFB0;
  }

  sub_2711309E8(&v21, &v23, 2uLL);
  LOBYTE(v10) = 0;
  v20 = 0;
  if (*(a2 + 120) == 1)
  {
    v10 = *a2;
    LOBYTE(v11) = 0;
    v19 = 0;
    if (*(a2 + 112) == 1)
    {
      sub_27112F6CC(&v11, (a2 + 16));
      v19 = 1;
    }

    v20 = 1;
  }

  sub_27112E0C4(qword_280877B98, &v21, &v10, **a1);
  if (v20 == 1 && v19 == 1)
  {
    if (v18 == 1)
    {
      if (v17 < 0)
      {
        operator delete(__p);
      }

      if (v15 < 0)
      {
        operator delete(v14);
      }
    }

    if (v13 == 1 && v12 < 0)
    {
      operator delete(v11);
    }
  }

  v4 = v21;
  if (v21)
  {
    v5 = v22;
    v6 = v21;
    if (v22 != v21)
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
      v6 = v21;
    }

    v22 = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25);
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_37:
    operator delete(v23);
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  if (SHIBYTE(v24) < 0)
  {
    goto LABEL_37;
  }

LABEL_34:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_2711B716C(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_28087AD60);
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  _Unwind_Resume(a1);
}

double sub_2711B7210()
{
  *(&__p.__r_.__value_.__s + 23) = 8;
  strcpy(&__p, "VZServer");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, &v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v0 = std::string::insert(&v9, 0, "const ", 6uLL);
  v1 = *&v0->__r_.__value_.__l.__data_;
  v8 = v0->__r_.__value_.__r.__words[2];
  v7 = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
LABEL_5:
      v3 = &v7;
      if (v2 == 22)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v2 = *(&v7 + 1);
  v4 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v4 == *(&v7 + 1))
  {
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_10:
    operator new();
  }

  v3 = v7;
LABEL_12:
  *(v3 + v2) = 38;
  v5 = v2 + 1;
  if (SHIBYTE(v8) < 0)
  {
    *(&v7 + 1) = v5;
  }

  else
  {
    HIBYTE(v8) = v5 & 0x7F;
  }

  *(v3 + v5) = 0;
  result = *&v7;
  xmmword_28087AF88 = v7;
  unk_28087AF98 = v8;
  return result;
}

void sub_2711B7430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2711B7470(uint64_t result)
{
  if (*(result + 120) == 1)
  {
    v1 = result;
    sub_271167834(result, *(result + 8));
    return v1;
  }

  if (*(result + 112) == 1)
  {
    if (*(result + 104) == 1)
    {
      if (*(result + 103) < 0)
      {
        v2 = result;
        operator delete(*(result + 80));
        result = v2;
      }

      if (*(result + 71) < 0)
      {
        v3 = result;
        operator delete(*(result + 48));
        result = v3;
      }
    }

    if (*(result + 40) == 1 && *(result + 39) < 0)
    {
      v1 = result;
      operator delete(*(result + 16));
      return v1;
    }
  }

  return result;
}

double sub_2711B7524()
{
  *(&__p.__r_.__value_.__s + 23) = 8;
  strcpy(&__p, "VZServer");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, &v5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v0 = SHIBYTE(v6);
    if ((SHIBYTE(v6) & 0x8000000000000000) == 0)
    {
LABEL_3:
      v1 = &v5;
      if (v0 == 22)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v0 = SHIBYTE(v6);
    if ((SHIBYTE(v6) & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  v0 = *(&v5 + 1);
  v2 = (v6 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v2 == *(&v5 + 1))
  {
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_8:
    operator new();
  }

  v1 = v5;
LABEL_10:
  *(v1 + v0) = 42;
  v3 = v0 + 1;
  if (SHIBYTE(v6) < 0)
  {
    *(&v5 + 1) = v3;
  }

  else
  {
    HIBYTE(v6) = v3 & 0x7F;
  }

  *(v1 + v3) = 0;
  result = *&v5;
  xmmword_28087AFB8 = v5;
  unk_28087AFC8 = v6;
  return result;
}

void sub_2711B76F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_2711B7724()
{
  *(&__p.__r_.__value_.__s + 23) = 13;
  strcpy(&__p, "VZSyncControl");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, &v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v0 = std::string::insert(&v9, 0, "const ", 6uLL);
  v1 = *&v0->__r_.__value_.__l.__data_;
  v8 = v0->__r_.__value_.__r.__words[2];
  v7 = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
LABEL_5:
      v3 = &v7;
      if (v2 == 22)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v2 = *(&v7 + 1);
  v4 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v4 == *(&v7 + 1))
  {
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_10:
    operator new();
  }

  v3 = v7;
LABEL_12:
  *(v3 + v2) = 42;
  v5 = v2 + 1;
  if (SHIBYTE(v8) < 0)
  {
    *(&v7 + 1) = v5;
  }

  else
  {
    HIBYTE(v8) = v5 & 0x7F;
  }

  *(v3 + v5) = 0;
  result = *&v7;
  xmmword_28087AFD0 = v7;
  unk_28087AFE0 = v8;
  return result;
}

void sub_2711B7948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_2711B7988()
{
  *(&__p.__r_.__value_.__s + 23) = 13;
  strcpy(&__p, "VZSyncControl");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, &v5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v0 = SHIBYTE(v6);
    if ((SHIBYTE(v6) & 0x8000000000000000) == 0)
    {
LABEL_3:
      v1 = &v5;
      if (v0 == 22)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v0 = SHIBYTE(v6);
    if ((SHIBYTE(v6) & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  v0 = *(&v5 + 1);
  v2 = (v6 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v2 == *(&v5 + 1))
  {
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_8:
    operator new();
  }

  v1 = v5;
LABEL_10:
  *(v1 + v0) = 42;
  v3 = v0 + 1;
  if (SHIBYTE(v6) < 0)
  {
    *(&v5 + 1) = v3;
  }

  else
  {
    HIBYTE(v6) = v3 & 0x7F;
  }

  *(v1 + v3) = 0;
  result = *&v5;
  xmmword_28087AFE8 = v5;
  unk_28087AFF8 = v6;
  return result;
}

void sub_2711B7B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711B7D5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2711B7DB8(uint64_t a1, void **a2)
{
  v2 = *a1;
  if (*(*a1 + 16) != (*a2)[2])
  {
    return 0;
  }

  v5 = *v2;
  v3 = v2 + 1;
  v4 = v5;
  if (v5 != v3)
  {
    v6 = **a2;
    while (1)
    {
      v7 = *(v4 + 55);
      if (v7 >= 0)
      {
        v8 = *(v4 + 55);
      }

      else
      {
        v8 = v4[5];
      }

      v9 = *(v6 + 55);
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = v6[5];
      }

      if (v8 != v9)
      {
        break;
      }

      v11 = v7 >= 0 ? v4 + 4 : v4[4];
      v12 = v6[4];
      v13 = v10 >= 0 ? v6 + 4 : v6[4];
      v14 = !memcmp(v11, v13, v8) && *(v4 + 56) == *(v6 + 56);
      if (!v14)
      {
        break;
      }

      v15 = v4[1];
      v16 = v4;
      if (v15)
      {
        do
        {
          v4 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v4 = v16[2];
          v14 = *v4 == v16;
          v16 = v4;
        }

        while (!v14);
      }

      v17 = v6[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v6[2];
          v14 = *v18 == v6;
          v6 = v18;
        }

        while (!v14);
      }

      v6 = v18;
      if (v4 == v3)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t VZTimestampGetTypeID()
{
  if (atomic_load_explicit(&qword_28087B008, memory_order_acquire))
  {
    return qword_28087B000;
  }

  if (__cxa_guard_acquire(&qword_28087B008))
  {
    qword_28087B000 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087B008);
  }

  return qword_28087B000;
}

_BYTE *VZTimestampCreateNow()
{
  v0 = sub_271374A14();
  v2 = v1;
  result = operator new(0x20uLL, MEMORY[0x277D826F0]);
  if (result)
  {
    result[24] = v2;
    *(result + 7) = 1;
    *result = &unk_288119A78;
    *(result + 1) = &unk_288119AC8;
    *(result + 2) = v0;
  }

  else
  {
    if ((atomic_load_explicit(&qword_280877A10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877A10))
    {
      sub_2718519B4("VZTimestamp]", 0xBuLL, qword_2808779F8);
      __cxa_guard_release(&qword_280877A10);
    }

    v19 = 0;
    v20 = 0;
    v21 = 0;
    LOBYTE(v8) = 0;
    v18 = 0;
    sub_27112E0C4(qword_2808779F8, &v19, &v8, 0);
    if (v18 == 1 && v17 == 1)
    {
      if (v16 == 1)
      {
        if (v15 < 0)
        {
          operator delete(__p);
        }

        if (v13 < 0)
        {
          operator delete(v12);
        }
      }

      if (v11 == 1 && v10 < 0)
      {
        operator delete(v9);
      }
    }

    v4 = v19;
    if (v19)
    {
      v5 = v20;
      v6 = v19;
      if (v20 != v19)
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
        v6 = v19;
      }

      v20 = v4;
      operator delete(v6);
    }

    return 0;
  }

  return result;
}

_BYTE *VZTimestampCreateMachContinuousNanoseconds()
{
  v26 = *MEMORY[0x277D85DE8];
  sub_271374A0C();
  v1 = v0;
  v3 = v2;
  result = operator new(0x20uLL, MEMORY[0x277D826F0]);
  if (result)
  {
    result[24] = v3;
    *(result + 7) = 1;
    *result = &unk_288119A78;
    *(result + 1) = &unk_288119AC8;
    *(result + 2) = v1;
    v5 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if ((atomic_load_explicit(&qword_280877A10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877A10))
    {
      sub_2718519B4("VZTimestamp]", 0xBuLL, qword_2808779F8);
      __cxa_guard_release(&qword_280877A10);
    }

    if ((atomic_load_explicit(&qword_28087B010, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B010))
    {
      sub_2711B9074();
      __cxa_guard_release(&qword_28087B010);
    }

    if (byte_28087B047 < 0)
    {
      sub_271127178(&v24, xmmword_28087B030, *(&xmmword_28087B030 + 1));
    }

    else
    {
      v24 = xmmword_28087B030;
      v25 = unk_28087B040;
    }

    sub_2711309E8(&v22, &v24, 1uLL);
    LOBYTE(v11) = 0;
    v21 = 0;
    sub_27112E0C4(qword_2808779F8, &v22, &v11, 0);
    if (v21 == 1 && v20 == 1)
    {
      if (v19 == 1)
      {
        if (v18 < 0)
        {
          operator delete(__p);
        }

        if (v16 < 0)
        {
          operator delete(v15);
        }
      }

      if (v14 == 1 && v13 < 0)
      {
        operator delete(v12);
      }
    }

    v6 = v22;
    if (v22)
    {
      v7 = v23;
      v8 = v22;
      if (v23 != v22)
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
        v8 = v22;
      }

      v23 = v6;
      operator delete(v8);
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24);
    }

    result = 0;
    v10 = *MEMORY[0x277D85DE8];
  }

  return result;
}

void sub_2711B8400(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_28087B010);
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2711B842C(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x2711B8438);
  }

  sub_271120E50(a1);
}

_BYTE *VZTimestampCreateFromMachContinuousTime(unint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = sub_271374A58(a1);
  v3 = v2;
  result = operator new(0x20uLL, MEMORY[0x277D826F0]);
  if (result)
  {
    result[24] = v3;
    *(result + 7) = 1;
    *result = &unk_288119A78;
    *(result + 1) = &unk_288119AC8;
    *(result + 2) = v1;
    v5 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if ((atomic_load_explicit(&qword_280877A10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877A10))
    {
      sub_2718519B4("VZTimestamp]", 0xBuLL, qword_2808779F8);
      __cxa_guard_release(&qword_280877A10);
    }

    if ((atomic_load_explicit(&qword_28087B018, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B018))
    {
      *&xmmword_28087B048 = 0x263436746E6975;
      byte_28087B05F = 7;
      __cxa_guard_release(&qword_28087B018);
    }

    if (byte_28087B05F < 0)
    {
      sub_271127178(&v24, xmmword_28087B048, *(&xmmword_28087B048 + 1));
    }

    else
    {
      v24 = xmmword_28087B048;
      v25 = unk_28087B058;
    }

    sub_2711309E8(&v22, &v24, 1uLL);
    LOBYTE(v11) = 0;
    v21 = 0;
    sub_27112E0C4(qword_2808779F8, &v22, &v11, 0);
    if (v21 == 1 && v20 == 1)
    {
      if (v19 == 1)
      {
        if (v18 < 0)
        {
          operator delete(__p);
        }

        if (v16 < 0)
        {
          operator delete(v15);
        }
      }

      if (v14 == 1 && v13 < 0)
      {
        operator delete(v12);
      }
    }

    v6 = v22;
    if (v22)
    {
      v7 = v23;
      v8 = v22;
      if (v23 != v22)
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
        v8 = v22;
      }

      v23 = v6;
      operator delete(v8);
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24);
    }

    result = 0;
    v10 = *MEMORY[0x277D85DE8];
  }

  return result;
}

void sub_2711B86E8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_280877A10);
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2711B8700(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x2711B870CLL);
  }

  sub_271120E50(a1);
}

uint64_t VZTimestampGetNanosecondsSinceEpoch(uint64_t a1)
{
  if (sub_2711B8774("VZTimestampGetNanosecondsSinceEpoch", a1))
  {
    return 0;
  }

  else
  {
    return *(a1 + 16);
  }
}

BOOL sub_2711B8774(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_28087B028, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B028))
    {
      sub_2711B9790();
      __cxa_guard_release(&qword_28087B028);
    }

    if (byte_28087B08F < 0)
    {
      sub_271127178(v5, xmmword_28087B078, *(&xmmword_28087B078 + 1));
    }

    else
    {
      *v5 = xmmword_28087B078;
      v6 = unk_28087B088;
    }

    v7 = 1;
    sub_27112D7CC(a1, v5, &v8);
    v19 = v8;
    LOBYTE(v20) = 0;
    v29 = 0;
    if (v18 == 1)
    {
      v22 = 0;
      if (v11 == 1)
      {
        v20 = v9;
        v21 = v10;
        v10 = 0;
        v9 = 0uLL;
        v22 = 1;
      }

      LOBYTE(v23) = 0;
      v28 = 0;
      if (v17 == 1)
      {
        v24 = v13;
        v23 = *v12;
        v12[0] = 0;
        v12[1] = 0;
        v25 = v14;
        *__p = *v15;
        v27 = v16;
        v13 = 0;
        v15[0] = 0;
        v15[1] = 0;
        v16 = 0;
        v28 = 1;
      }

      v29 = 1;
    }

    v30 = 0;
    sub_27112B960(&v19, 0);
    if ((v30 & 1) == 0 && v29 == 1)
    {
      if (v28 == 1)
      {
        if (SHIBYTE(v27) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v24) < 0)
        {
          operator delete(v23);
        }
      }

      if (v22 == 1 && SHIBYTE(v21) < 0)
      {
        operator delete(v20);
      }
    }

    if (v18 == 1)
    {
      if (v17 == 1)
      {
        if (SHIBYTE(v16) < 0)
        {
          operator delete(v15[0]);
        }

        if (SHIBYTE(v13) < 0)
        {
          operator delete(v12[0]);
        }
      }

      if (v11 == 1 && SHIBYTE(v10) < 0)
      {
        operator delete(v9);
      }
    }

    if (v7 == 1 && SHIBYTE(v6) < 0)
    {
      operator delete(v5[0]);
    }
  }

  return a2 == 0;
}

void sub_2711B89D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t VZTimestampGetClockType(uint64_t a1)
{
  if (sub_2711B8774("VZTimestampGetClockType", a1))
  {
    return 0;
  }

  else
  {
    return *(a1 + 24);
  }
}

uint64_t sub_2711B8A70(uint64_t result)
{
  if (atomic_fetch_add((result + 28), 0xFFFFFFFF) == 1)
  {
    return (*(*(result + 8) + 8))();
  }

  return result;
}

uint64_t sub_2711B8AAC()
{
  if (atomic_load_explicit(&qword_28087B008, memory_order_acquire))
  {
    return qword_28087B000;
  }

  if (__cxa_guard_acquire(&qword_28087B008))
  {
    qword_28087B000 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087B008);
  }

  return qword_28087B000;
}

void *sub_2711B8B10(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28812C878, &unk_28812C798, 0);
  if (result)
  {
    return (*(a1 + 16) == result[2] && *(a1 + 24) == *(result + 24));
  }

  return result;
}

void sub_2711B8BA0(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280877A10, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280877A10))
    {
      sub_2718519B4("VZTimestamp]", 0xBuLL, qword_2808779F8);
      __cxa_guard_release(&qword_280877A10);
    }
  }

  v2 = a1;
  operator new();
}

uint64_t sub_2711B8EE4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  __cxa_guard_abort(&qword_280877A10);
  __cxa_begin_catch(a1);
  sub_2711B8FE4();
  sub_27112B400(v34, "failed to create description");
  sub_27112DB38(qword_2808779F8, v34, 0);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  __cxa_end_catch();
  return 0;
}

void sub_2711B8FE4()
{
  if ((atomic_load_explicit(&qword_280877A10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877A10))
  {
    sub_2718519B4("VZTimestamp]", 0xBuLL, qword_2808779F8);

    __cxa_guard_release(&qword_280877A10);
  }
}

void sub_2711B9074()
{
  v21 = *MEMORY[0x277D85DE8];
  *(&__s.__r_.__value_.__s + 23) = 21;
  strcpy(&__s, "std::chrono::duration");
  sub_27184BC8C(&__s, "std::__1::", 10, "std::", 5uLL, 0, 0, v10);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  v17 = 5;
  strcpy(v16, "int64");
  *(&__s.__r_.__value_.__s + 23) = 10;
  strcpy(&__s, "std::ratio");
  sub_27184BC8C(&__s, "std::__1::", 10, "std::", 5uLL, 0, 0, v13);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  sub_271851C68("1L]", 2, &__s);
  sub_271851C68("1000000000L]", 11, &v20);
  sub_2711309E8(__p, &__s, 2uLL);
  sub_271851AD8(v13, __p, &v18);
  v0 = __p[0];
  if (__p[0])
  {
    v1 = __p[1];
    v2 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v3 = *(v1 - 1);
        v1 -= 3;
        if (v3 < 0)
        {
          operator delete(*v1);
        }
      }

      while (v1 != v0);
      v2 = __p[0];
    }

    __p[1] = v0;
    operator delete(v2);
  }

  if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    operator delete(__s.__r_.__value_.__l.__data_);
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

  operator delete(v20.__r_.__value_.__l.__data_);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  if ((v14 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_31:
  operator delete(v13[0]);
LABEL_16:
  sub_2711309E8(v12, v16, 2uLL);
  sub_271851AD8(v10, v12, &xmmword_28087B030);
  v4 = v12[0];
  if (v12[0])
  {
    v5 = v12[1];
    v6 = v12[0];
    if (v12[1] != v12[0])
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
      v6 = v12[0];
    }

    v12[1] = v4;
    operator delete(v6);
  }

  if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

LABEL_33:
    operator delete(v16[0]);
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

LABEL_34:
    operator delete(v10[0]);
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v18.__r_.__value_.__l.__data_);
  if (v17 < 0)
  {
    goto LABEL_33;
  }

LABEL_26:
  if (v11 < 0)
  {
    goto LABEL_34;
  }

LABEL_27:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_2711B9340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  sub_27137F4D0(&a15);
  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

void sub_2711B9404()
{
  if (*(v0 - 57) < 0)
  {
    v1 = *(v0 - 80);
    JUMPOUT(0x2711B93E8);
  }

  JUMPOUT(0x2711B93ECLL);
}

void sub_2711B9418()
{
  if (*(v0 - 57) < 0)
  {
    v1 = *(v0 - 80);
    JUMPOUT(0x2711B93F8);
  }

  JUMPOUT(0x2711B93FCLL);
}

_BYTE *sub_2711B942C(uint64_t a1, char a2)
{
  v28 = *MEMORY[0x277D85DE8];
  result = operator new(0x20uLL, MEMORY[0x277D826F0]);
  if (!result)
  {
    if ((atomic_load_explicit(&qword_280877A10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877A10))
    {
      sub_2718519B4("VZTimestamp]", 0xBuLL, qword_2808779F8);
      __cxa_guard_release(&qword_280877A10);
    }

    if ((atomic_load_explicit(&qword_28087B010, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B010))
    {
      sub_2711B9074();
      __cxa_guard_release(&qword_28087B010);
    }

    if (byte_28087B047 < 0)
    {
      sub_271127178(&v24, xmmword_28087B030, *(&xmmword_28087B030 + 1));
    }

    else
    {
      v24 = xmmword_28087B030;
      v25 = unk_28087B040;
    }

    if ((atomic_load_explicit(&qword_28087B020, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B020))
    {
      sub_2718519B4("cv3d::kit::time::ClockType]", 0x1AuLL, &xmmword_28087B060);
      __cxa_guard_release(&qword_28087B020);
    }

    if (byte_28087B077 < 0)
    {
      sub_271127178(&v26, xmmword_28087B060, *(&xmmword_28087B060 + 1));
    }

    else
    {
      v26 = xmmword_28087B060;
      v27 = unk_28087B070;
    }

    sub_2711309E8(&v22, &v24, 2uLL);
    LOBYTE(v11) = 0;
    v21 = 0;
    sub_27112E0C4(qword_2808779F8, &v22, &v11, 0);
    if (v21 == 1 && v20 == 1)
    {
      if (v19 == 1)
      {
        if (v18 < 0)
        {
          operator delete(__p);
        }

        if (v16 < 0)
        {
          operator delete(v15);
        }
      }

      if (v14 == 1 && v13 < 0)
      {
        operator delete(v12);
      }
    }

    v6 = v22;
    if (v22)
    {
      v7 = v23;
      v8 = v22;
      if (v23 != v22)
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
        v8 = v22;
      }

      v23 = v6;
      operator delete(v8);
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26);
      if ((SHIBYTE(v25) & 0x80000000) == 0)
      {
        goto LABEL_33;
      }
    }

    else if ((SHIBYTE(v25) & 0x80000000) == 0)
    {
LABEL_33:
      result = 0;
      v10 = *MEMORY[0x277D85DE8];
      return result;
    }

    operator delete(v24);
    goto LABEL_33;
  }

  result[24] = a2;
  *(result + 7) = 1;
  *result = &unk_288119A78;
  *(result + 1) = &unk_288119AC8;
  *(result + 2) = a1;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2711B9738(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_28087B020);
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_2711B9790()
{
  *(&__p.__r_.__value_.__s + 23) = 11;
  strcpy(&__p, "VZTimestamp");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, &v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v0 = std::string::insert(&v9, 0, "const ", 6uLL);
  v1 = *&v0->__r_.__value_.__l.__data_;
  v8 = v0->__r_.__value_.__r.__words[2];
  v7 = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
LABEL_5:
      v3 = &v7;
      if (v2 == 22)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v2 = *(&v7 + 1);
  v4 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v4 == *(&v7 + 1))
  {
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_10:
    operator new();
  }

  v3 = v7;
LABEL_12:
  *(v3 + v2) = 42;
  v5 = v2 + 1;
  if (SHIBYTE(v8) < 0)
  {
    *(&v7 + 1) = v5;
  }

  else
  {
    HIBYTE(v8) = v5 & 0x7F;
  }

  *(v3 + v5) = 0;
  result = *&v7;
  xmmword_28087B078 = v7;
  unk_28087B088 = v8;
  return result;
}

void sub_2711B99B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711B9BC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2711B9C24(uint64_t a1)
{
  v2 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
    if (*(a1 + 48) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (*(a1 + 48) != 1)
  {
    goto LABEL_9;
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

LABEL_9:
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    MEMORY[0x2743BF050](v3, 0x1000C4072FAA15ELL);
  }

  return a1;
}

uint64_t sub_2711B9CE0(uint64_t a1)
{
  v2 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  if (*(a1 + 72) == 1 && *(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
    if (*(a1 + 40) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (*(a1 + 40) != 1)
  {
    goto LABEL_9;
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

LABEL_9:
  result = *(a1 + 8);
  *(a1 + 8) = 0;
  if (result)
  {

    JUMPOUT(0x2743BF050);
  }

  return result;
}

void sub_2711B9DB0(uint64_t a1)
{
  v2 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
    if (*(a1 + 48) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (*(a1 + 48) != 1)
  {
    goto LABEL_9;
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

LABEL_9:
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    MEMORY[0x2743BF050](v3, 0x1000C4072FAA15ELL);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2711B9E8C(uint64_t a1)
{
  v2 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  if (*(a1 + 72) == 1 && *(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
    if (*(a1 + 40) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (*(a1 + 40) != 1)
  {
    goto LABEL_9;
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

LABEL_9:
  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    MEMORY[0x2743BF050](v3, 0x1000C4072FAA15ELL);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t VZTransform3GetTypeID()
{
  if (atomic_load_explicit(&qword_28087B0A0, memory_order_acquire))
  {
    return qword_28087B098;
  }

  if (__cxa_guard_acquire(&qword_28087B0A0))
  {
    qword_28087B098 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087B0A0);
  }

  return qword_28087B098;
}

uint64_t VZDataCreateWithTransform3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v82 = *MEMORY[0x277D85DE8];
  if (!sub_2711BA9C4("VZDataCreateWithTransform3", a1, a3))
  {
    sub_27113347C(a2, &v20);
    v18 = &v19;
    v19 = a3;
    LOBYTE(v49) = 0;
    v81 = 0;
    if (v48 != 1)
    {
      goto LABEL_20;
    }

    v49 = v20;
    v50 = v21;
    LOBYTE(v51) = 0;
    v53 = 0;
    if (v24 == 1)
    {
      v51 = *v22;
      v52 = v23;
      v22[1] = 0;
      v23 = 0;
      v22[0] = 0;
      v53 = 1;
    }

    v54 = v25;
    v55 = v26;
    LOBYTE(v56) = 0;
    v58 = 0;
    if (v29 == 1)
    {
      v56 = v27;
      v57 = v28;
      v28 = 0;
      v27 = 0uLL;
      v58 = 1;
      LOBYTE(v59) = 0;
      v63 = 0;
      if (v32 != 1)
      {
LABEL_8:
        LOBYTE(v64[0]) = 0;
        v66 = 0;
        if (v35 != 1)
        {
          goto LABEL_9;
        }

        goto LABEL_13;
      }
    }

    else
    {
      LOBYTE(v59) = 0;
      v63 = 0;
      if (v32 != 1)
      {
        goto LABEL_8;
      }
    }

    _X0 = 0;
    _X1 = 0;
    v60 = v31;
    v59 = *v30;
    v30[1] = 0;
    v31 = 0;
    v30[0] = 0;
    __asm { CASPAL          X0, X1, X0, X1, [X8] }

    v61 = _X0;
    v62 = 0;
    v63 = 1;
    LOBYTE(v64[0]) = 0;
    v66 = 0;
    if (v35 != 1)
    {
LABEL_9:
      LOBYTE(v67) = 0;
      v80 = 0;
      if (v47 != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }

LABEL_13:
    *v64 = *v33;
    v65 = v34;
    v34 = 0;
    v33[1] = 0;
    v33[0] = 0;
    v66 = 1;
    LOBYTE(v67) = 0;
    v80 = 0;
    if (v47 != 1)
    {
LABEL_19:
      v81 = 1;
LABEL_20:
      sub_271374EF8((a1 + 16), &v49);
    }

LABEL_14:
    LOBYTE(v67) = 0;
    v69 = 0;
    if (v38 == 1)
    {
      v67 = v36;
      v68 = v37;
      v37 = 0;
      v36 = 0uLL;
      v69 = 1;
      LOBYTE(v70) = 0;
      v74 = 0;
      if (v41 != 1)
      {
LABEL_16:
        LOBYTE(__p) = 0;
        v77 = 0;
        if (v44 != 1)
        {
LABEL_18:
          v78 = v45;
          v79 = v46;
          v80 = 1;
          goto LABEL_19;
        }

LABEL_17:
        __p = *v42;
        v76 = v43;
        v43 = 0;
        v42[0] = 0;
        v42[1] = 0;
        v77 = 1;
        goto LABEL_18;
      }
    }

    else
    {
      LOBYTE(v70) = 0;
      v74 = 0;
      if (v41 != 1)
      {
        goto LABEL_16;
      }
    }

    _X0 = 0;
    _X1 = 0;
    v70 = *v39;
    v71 = v40;
    v40 = 0;
    v39[0] = 0;
    v39[1] = 0;
    __asm { CASPAL          X0, X1, X0, X1, [X9] }

    v72 = _X0;
    v73 = 0;
    v74 = 1;
    LOBYTE(__p) = 0;
    v77 = 0;
    if (v44 != 1)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v16 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_2711BA78C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::logic_error a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::runtime_error __p, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t *a53)
{
  if (a2)
  {
    sub_2711307D4(&a37);
    sub_271137BDC(&STACK[0x4A0]);
    if (a2 == 3)
    {
      exception_ptr = __cxa_get_exception_ptr(a1);
      std::logic_error::logic_error(&a10, exception_ptr);
      a10.__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_begin_catch(a1);
      a9 = std::logic_error::what(&a10);
      sub_27113604C(&__p, &a9);
      sub_271369D54(&__p, &a16);
      *&STACK[0x4A0] = a16;
      sub_27184A2B4(&STACK[0x4B0], &a17);
      LOBYTE(STACK[0x518]) = 1;
      sub_2711BC4D0(&a53, &STACK[0x4A0]);
      sub_2711307D4(&STACK[0x4A0]);
      sub_27112D71C(&a16);
      if (a34 == 1 && a33 < 0)
      {
        operator delete(__p.__vftable);
      }

      MEMORY[0x2743BE520](&a10);
      __cxa_end_catch();
    }

    else if (a2 == 2)
    {
      v56 = __cxa_get_exception_ptr(a1);
      sub_271135FD0(&__p, v56);
      __cxa_begin_catch(a1);
      v57 = (a35 + 48);
      if (*(a35 + 71) < 0)
      {
        v57 = *v57;
      }

      a9 = v57;
      sub_27113604C(&a10, &a9);
      sub_27136A868(&a10, &a16);
      *&STACK[0x4A0] = a16;
      sub_27184A2B4(&STACK[0x4B0], &a17);
      LOBYTE(STACK[0x518]) = 1;
      sub_2711BC4D0(&a53, &STACK[0x4A0]);
      sub_2711307D4(&STACK[0x4A0]);
      sub_27112D71C(&a16);
      if (a15 == 1 && a14 < 0)
      {
        operator delete(a10.__vftable);
      }

      MEMORY[0x2743BEBB0](&__p);
      __cxa_end_catch();
    }

    else
    {
      __cxa_begin_catch(a1);
      LOBYTE(STACK[0x4A0]) = 0;
      LOBYTE(STACK[0x518]) = 0;
      sub_2711BC4D0(&a53, &STACK[0x4A0]);
      sub_2711307D4(&STACK[0x4A0]);
      __cxa_end_catch();
    }

    JUMPOUT(0x2711BA5FCLL);
  }

  _Unwind_Resume(a1);
}

BOOL sub_2711BA9C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_28087B0A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B0A8))
    {
      sub_2711BC268();
      __cxa_guard_release(&qword_28087B0A8);
    }

    if (byte_28087B0F7 < 0)
    {
      sub_271127178(v7, xmmword_28087B0E0, *(&xmmword_28087B0E0 + 1));
    }

    else
    {
      *v7 = xmmword_28087B0E0;
      v8 = unk_28087B0F0;
    }

    v9 = 1;
    sub_27112D7CC(a1, v7, &v10);
    v21 = v10;
    LOBYTE(v22) = 0;
    v31 = 0;
    if (v20 == 1)
    {
      v24 = 0;
      if (v13 == 1)
      {
        v22 = v11;
        v23 = v12;
        v12 = 0;
        v11 = 0uLL;
        v24 = 1;
      }

      LOBYTE(v25) = 0;
      v30 = 0;
      if (v19 == 1)
      {
        v26 = v15;
        v25 = *v14;
        v14[0] = 0;
        v14[1] = 0;
        v27 = v16;
        *__p = *v17;
        v29 = v18;
        v15 = 0;
        v17[0] = 0;
        v17[1] = 0;
        v18 = 0;
        v30 = 1;
      }

      v31 = 1;
    }

    v32 = 0;
    sub_27112B960(&v21, a3);
    if ((v32 & 1) == 0 && v31 == 1)
    {
      if (v30 == 1)
      {
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25);
        }
      }

      if (v24 == 1 && SHIBYTE(v23) < 0)
      {
        operator delete(v22);
      }
    }

    if (v20 == 1)
    {
      if (v19 == 1)
      {
        if (SHIBYTE(v18) < 0)
        {
          operator delete(v17[0]);
        }

        if (SHIBYTE(v15) < 0)
        {
          operator delete(v14[0]);
        }
      }

      if (v13 == 1 && SHIBYTE(v12) < 0)
      {
        operator delete(v11);
      }
    }

    if (v9 == 1 && SHIBYTE(v8) < 0)
    {
      operator delete(v7[0]);
    }
  }

  return a2 == 0;
}

void sub_2711BAC34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t VZDataGetTransform3(uint64_t a1, uint64_t a2)
{
  if (sub_271133B3C("VZDataGetTransform3", a1, a2))
  {
    return 0;
  }

  result = *(a1 + 584);
  if (!result)
  {
    v5 = &v6;
    v6 = a2;
    sub_271375FA0(a1 + 32);
  }

  return result;
}

void sub_2711BAF38(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, const char *a9, std::logic_error a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::runtime_error __p, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_2711307D4(&a37);
  sub_2711BCE38((v37 - 176));
  if (a2 == 3)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    std::logic_error::logic_error(&a10, exception_ptr);
    a10.__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_begin_catch(a1);
    a9 = std::logic_error::what(&a10);
    sub_27113604C(&__p, &a9);
    sub_271369D54(&__p, &a16);
    *(v37 - 176) = a16;
    sub_27184A2B4(v37 - 160, &a17);
    *(v37 - 56) = 1;
    sub_2711BCAD0((v37 - 48), v37 - 176);
    sub_2711307D4(v37 - 176);
    sub_27112D71C(&a16);
    if (a34 == 1 && a33 < 0)
    {
      operator delete(__p.__vftable);
    }

    MEMORY[0x2743BE520](&a10);
    __cxa_end_catch();
  }

  else if (a2 == 2)
  {
    v41 = __cxa_get_exception_ptr(a1);
    sub_271135FD0(&__p, v41);
    __cxa_begin_catch(a1);
    v42 = (a35 + 48);
    if (*(a35 + 71) < 0)
    {
      v42 = *v42;
    }

    a9 = v42;
    sub_27113604C(&a10, &a9);
    sub_27136A868(&a10, &a16);
    *(v37 - 176) = a16;
    sub_27184A2B4(v37 - 160, &a17);
    *(v37 - 56) = 1;
    sub_2711BCAD0((v37 - 48), v37 - 176);
    sub_2711307D4(v37 - 176);
    sub_27112D71C(&a16);
    if (a15 == 1 && a14 < 0)
    {
      operator delete(a10.__vftable);
    }

    MEMORY[0x2743BEBB0](&__p);
    __cxa_end_catch();
  }

  else
  {
    __cxa_begin_catch(a1);
    *(v37 - 176) = 0;
    *(v37 - 56) = 0;
    sub_2711BCAD0((v37 - 48), v37 - 176);
    sub_2711307D4(v37 - 176);
    __cxa_end_catch();
  }

  JUMPOUT(0x2711BAE80);
}

uint64_t VZTransform3Create(uint64_t a1, char *a2, char *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = sub_2711A352C("VZTransform3Create", a1, 0);
  result = 0;
  if (!v6)
  {
    v8 = operator new(0x68uLL, MEMORY[0x277D826F0]);
    if (v8)
    {
      *v8 = &unk_288117810;
      sub_271374C7C(v8 + 16, (a1 + 16), a2, a3);
    }

    if ((atomic_load_explicit(&qword_28087B0B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B0B8))
    {
      sub_2718519B4("VZTransform3]", 0xCuLL, qword_28087B110);
      __cxa_guard_release(&qword_28087B0B8);
    }

    if ((atomic_load_explicit(&qword_28087B0C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B0C0))
    {
      sub_2711BCF24();
      __cxa_guard_release(&qword_28087B0C0);
    }

    if (byte_28087B13F < 0)
    {
      sub_271127178(&v28, xmmword_28087B128, *(&xmmword_28087B128 + 1));
    }

    else
    {
      v28 = xmmword_28087B128;
      v29 = unk_28087B138;
    }

    if ((atomic_load_explicit(&qword_2808779D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808779D0))
    {
      sub_27114C390(&xmmword_2808779B8);
      __cxa_guard_release(&qword_2808779D0);
    }

    if (byte_2808779CF < 0)
    {
      sub_271127178(&v30, xmmword_2808779B8, *(&xmmword_2808779B8 + 1));
    }

    else
    {
      v30 = xmmword_2808779B8;
      v31 = unk_2808779C8;
    }

    if ((atomic_load_explicit(&qword_2808779D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808779D0))
    {
      sub_27114C390(&xmmword_2808779B8);
      __cxa_guard_release(&qword_2808779D0);
    }

    if (byte_2808779CF < 0)
    {
      sub_271127178(&v32, xmmword_2808779B8, *(&xmmword_2808779B8 + 1));
    }

    else
    {
      v32 = xmmword_2808779B8;
      v33 = unk_2808779C8;
    }

    sub_2711309E8(&v26, &v28, 3uLL);
    LOBYTE(v15) = 0;
    v25 = 0;
    sub_27112E0C4(qword_28087B110, &v26, &v15, 0);
    if (v25 == 1 && v24 == 1)
    {
      if (v23 == 1)
      {
        if (v22 < 0)
        {
          operator delete(__p);
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

    v10 = v26;
    if (v26)
    {
      v11 = v27;
      v12 = v26;
      if (v27 != v26)
      {
        do
        {
          v13 = *(v11 - 1);
          v11 -= 3;
          if (v13 < 0)
          {
            operator delete(*v11);
          }
        }

        while (v11 != v10);
        v12 = v26;
      }

      v27 = v10;
      operator delete(v12);
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
      if ((SHIBYTE(v31) & 0x80000000) == 0)
      {
LABEL_39:
        if ((SHIBYTE(v29) & 0x80000000) == 0)
        {
LABEL_40:
          result = 0;
          v14 = *MEMORY[0x277D85DE8];
          return result;
        }

LABEL_43:
        operator delete(v28);
        goto LABEL_40;
      }
    }

    else if ((SHIBYTE(v31) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    operator delete(v30);
    if ((SHIBYTE(v29) & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_43;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2711BB540(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_2808779D0);
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2711BB560(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_28087B0C0);
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2711BB57C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_28087B0B8);
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2711BB598(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x2711BB5A4);
  }

  sub_271120E50(a1);
}

uint64_t VZTransform3GetValueType(uint64_t a1)
{
  if (sub_2711BA9C4("VZTransform3GetValueType", a1, 0))
  {
    return 255;
  }

  v3 = *(*(a1 + 16) + 136);
  if (v3 == 2 || v3 == 5)
  {
    return 12;
  }

  else
  {
    return 11;
  }
}

uint64_t VZTransform3GetSE3(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = sub_2711BA9C4("VZTransform3GetSE3", a1, 0);
  result = 0;
  if (!v2)
  {
    result = *(a1 + 96);
    if (!result)
    {
      v4 = *(a1 + 16);
      operator new();
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2711BB9C8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_28087B090);
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2711BB9F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x2711BBA00);
  }

  sub_271120E50(a1);
}

uint64_t VZTransform3GetSource(uint64_t a1)
{
  if (sub_2711BA9C4("VZTransform3GetSource", a1, 0))
  {
    return 0;
  }

  if (*(a1 + 48) != 1)
  {
    return 0;
  }

  result = a1 + 24;
  if (*(a1 + 47) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t VZTransform3GetDestination(uint64_t a1)
{
  if (sub_2711BA9C4("VZTransform3GetDestination", a1, 0))
  {
    return 0;
  }

  if (*(a1 + 80) != 1)
  {
    return 0;
  }

  result = a1 + 56;
  if (*(a1 + 79) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t sub_2711BBB08(uint64_t result)
{
  if (atomic_fetch_add((result + 88), 0xFFFFFFFF) == 1)
  {
    return (*(*(result + 8) + 8))();
  }

  return result;
}

uint64_t sub_2711BBB44()
{
  if (atomic_load_explicit(&qword_28087B0A0, memory_order_acquire))
  {
    return qword_28087B098;
  }

  if (__cxa_guard_acquire(&qword_28087B0A0))
  {
    qword_28087B098 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087B0A0);
  }

  return qword_28087B098;
}

void *sub_2711BBBA8(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28812C878, &unk_28812C728, 0);
  if (result)
  {
    return sub_27153D1BC(a1 + 16, result + 16);
  }

  return result;
}

uint64_t sub_2711BBC2C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  __cxa_begin_catch(a1);
  sub_2711BCDA8();
  sub_27112B400(v20, "failed to compare equal");
  sub_27112DB38(qword_28087B110, v20, 0);
  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  __cxa_end_catch();
  return 0;
}

void sub_2711BBC84(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_28087B0B8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_28087B0B8))
    {
      sub_2718519B4("VZTransform3]", 0xCuLL, qword_28087B110);
      __cxa_guard_release(&qword_28087B0B8);
    }
  }

  v2 = a1;
  operator new();
}

void sub_2711BC128(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  __cxa_guard_abort(&qword_28087B0B8);
  __cxa_begin_catch(a1);
  sub_2711BCDA8();
  sub_27112B400(&__p, "failed to create description");
  sub_27112DB38(qword_28087B110, &__p, 0);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x2711BC098);
}

double sub_2711BC268()
{
  *(&__p.__r_.__value_.__s + 23) = 12;
  strcpy(&__p, "VZTransform3");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, &v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v0 = std::string::insert(&v9, 0, "const ", 6uLL);
  v1 = *&v0->__r_.__value_.__l.__data_;
  v8 = v0->__r_.__value_.__r.__words[2];
  v7 = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
LABEL_5:
      v3 = &v7;
      if (v2 == 22)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v2 = *(&v7 + 1);
  v4 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v4 == *(&v7 + 1))
  {
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_10:
    operator new();
  }

  v3 = v7;
LABEL_12:
  *(v3 + v2) = 42;
  v5 = v2 + 1;
  if (SHIBYTE(v8) < 0)
  {
    *(&v7 + 1) = v5;
  }

  else
  {
    HIBYTE(v8) = v5 & 0x7F;
  }

  *(v3 + v5) = 0;
  result = *&v7;
  xmmword_28087B0E0 = v7;
  unk_28087B0F0 = v8;
  return result;
}

void sub_2711BC490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711BC4D0(uint64_t **a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280877850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877850))
  {
    sub_2718519B4("VZData]", 6uLL, qword_280877838);
    __cxa_guard_release(&qword_280877850);
  }

  if ((atomic_load_explicit(&qword_28087B0B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B0B0))
  {
    sub_2711BC868();
    __cxa_guard_release(&qword_28087B0B0);
  }

  if (byte_28087B10F < 0)
  {
    sub_271127178(&v23, xmmword_28087B0F8, *(&xmmword_28087B0F8 + 1));
  }

  else
  {
    v23 = xmmword_28087B0F8;
    v24 = unk_28087B108;
  }

  if ((atomic_load_explicit(&qword_280877830, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877830))
  {
    sub_271135818();
  }

  if (byte_28087782F < 0)
  {
    sub_271127178(&v25, xmmword_280877818, *(&xmmword_280877818 + 1));
  }

  else
  {
    v25 = xmmword_280877818;
    v26 = unk_280877828;
  }

  sub_2711309E8(&v21, &v23, 2uLL);
  LOBYTE(v10) = 0;
  v20 = 0;
  if (*(a2 + 120) == 1)
  {
    v10 = *a2;
    LOBYTE(v11) = 0;
    v19 = 0;
    if (*(a2 + 112) == 1)
    {
      sub_27112F6CC(&v11, (a2 + 16));
      v19 = 1;
    }

    v20 = 1;
  }

  sub_27112E0C4(qword_280877838, &v21, &v10, **a1);
  if (v20 == 1 && v19 == 1)
  {
    if (v18 == 1)
    {
      if (v17 < 0)
      {
        operator delete(__p);
      }

      if (v15 < 0)
      {
        operator delete(v14);
      }
    }

    if (v13 == 1 && v12 < 0)
    {
      operator delete(v11);
    }
  }

  v4 = v21;
  if (v21)
  {
    v5 = v22;
    v6 = v21;
    if (v22 != v21)
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
      v6 = v21;
    }

    v22 = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25);
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_37:
    operator delete(v23);
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  if (SHIBYTE(v24) < 0)
  {
    goto LABEL_37;
  }

LABEL_34:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_2711BC7C4(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_280877830);
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  _Unwind_Resume(a1);
}

double sub_2711BC868()
{
  *(&__p.__r_.__value_.__s + 23) = 12;
  strcpy(&__p, "VZTransform3");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, &v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v0 = std::string::insert(&v9, 0, "const ", 6uLL);
  v1 = *&v0->__r_.__value_.__l.__data_;
  v8 = v0->__r_.__value_.__r.__words[2];
  v7 = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
LABEL_5:
      v3 = &v7;
      if (v2 == 22)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v2 = *(&v7 + 1);
  v4 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v4 == *(&v7 + 1))
  {
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_10:
    operator new();
  }

  v3 = v7;
LABEL_12:
  *(v3 + v2) = 38;
  v5 = v2 + 1;
  if (SHIBYTE(v8) < 0)
  {
    *(&v7 + 1) = v5;
  }

  else
  {
    HIBYTE(v8) = v5 & 0x7F;
  }

  *(v3 + v5) = 0;
  result = *&v7;
  xmmword_28087B0F8 = v7;
  unk_28087B108 = v8;
  return result;
}

void sub_2711BCA90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711BCAD0(uint64_t **a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087B0B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B0B8))
  {
    sub_2718519B4("VZTransform3]", 0xCuLL, qword_28087B110);
    __cxa_guard_release(&qword_28087B0B8);
  }

  if ((atomic_load_explicit(&qword_2808778D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808778D0))
  {
    sub_271138414(&xmmword_2808778B8);
    __cxa_guard_release(&qword_2808778D0);
  }

  if (byte_2808778CF < 0)
  {
    sub_271127178(&v22, xmmword_2808778B8, *(&xmmword_2808778B8 + 1));
  }

  else
  {
    v22 = xmmword_2808778B8;
    v23 = unk_2808778C8;
  }

  sub_2711309E8(&v20, &v22, 1uLL);
  LOBYTE(v9) = 0;
  v19 = 0;
  if (*(a2 + 120) == 1)
  {
    v9 = *a2;
    LOBYTE(v10) = 0;
    v18 = 0;
    if (*(a2 + 112) == 1)
    {
      sub_27112F6CC(&v10, (a2 + 16));
      v18 = 1;
    }

    v19 = 1;
  }

  sub_27112E0C4(qword_28087B110, &v20, &v9, **a1);
  if (v19 == 1 && v18 == 1)
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

    if (v12 == 1 && v11 < 0)
    {
      operator delete(v10);
    }
  }

  v4 = v20;
  if (v20)
  {
    v5 = v21;
    v6 = v20;
    if (v21 != v20)
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
      v6 = v20;
    }

    v21 = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_2711BCD58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27112D66C(v9 + 16);
  sub_2711307D4(&a9);
  sub_27137F4D0((v10 - 96));
  if (*(v10 - 41) < 0)
  {
    operator delete(*(v10 - 64));
  }

  _Unwind_Resume(a1);
}

void sub_2711BCDA8()
{
  if ((atomic_load_explicit(&qword_28087B0B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B0B8))
  {
    sub_2718519B4("VZTransform3]", 0xCuLL, qword_28087B110);

    __cxa_guard_release(&qword_28087B0B8);
  }
}

uint64_t *sub_2711BCE38(uint64_t *a1)
{
  if (*(a1 + 120) == 1)
  {
    if (*(a1 + 64) == 1 && *(a1 + 63) < 0)
    {
      operator delete(a1[5]);
    }

    if (*(a1 + 32) == 1 && *(a1 + 31) < 0)
    {
      operator delete(a1[1]);
    }

    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      MEMORY[0x2743BF050](v2, 0x1000C4072FAA15ELL);
    }

    return a1;
  }

  if (*(a1 + 112) != 1)
  {
    return a1;
  }

  if (*(a1 + 104) == 1)
  {
    if (*(a1 + 103) < 0)
    {
      operator delete(a1[10]);
    }

    if (*(a1 + 71) < 0)
    {
      operator delete(a1[6]);
    }
  }

  if (*(a1 + 40) != 1 || (*(a1 + 39) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(a1[2]);
  return a1;
}

double sub_2711BCF24()
{
  *(&__p.__r_.__value_.__s + 23) = 5;
  strcpy(&__p, "VZSE3");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, &v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v0 = std::string::insert(&v9, 0, "const ", 6uLL);
  v1 = *&v0->__r_.__value_.__l.__data_;
  v8 = v0->__r_.__value_.__r.__words[2];
  v7 = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
LABEL_5:
      v3 = &v7;
      if (v2 == 22)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v2 = *(&v7 + 1);
  v4 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v4 == *(&v7 + 1))
  {
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_10:
    operator new();
  }

  v3 = v7;
LABEL_12:
  *(v3 + v2) = 38;
  v5 = v2 + 1;
  if (SHIBYTE(v8) < 0)
  {
    *(&v7 + 1) = v5;
  }

  else
  {
    HIBYTE(v8) = v5 & 0x7F;
  }

  *(v3 + v5) = 0;
  result = *&v7;
  xmmword_28087B128 = v7;
  unk_28087B138 = v8;
  return result;
}

void sub_2711BD140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711BD180(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a2;
  if (a1 || !a2)
  {
    if (a2)
    {
      if ((a2 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_2711BE688();
    }

    sub_27174E2EC();
  }

  sub_2711BD50C("bytes pointer is null but num_bytes is ", &v23);
  *v9 = *v7;
  v10 = v8;
  v11 = 1;
  sub_271369D54(v9, &v12);
  *a3 = v12;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v22 != 1)
  {
    *(a3 + 120) = 0;
    goto LABEL_17;
  }

  *(a3 + 40) = 0;
  v4 = v15;
  if (v15 == 1)
  {
    *(a3 + 16) = *__p;
    *(a3 + 32) = v14;
    __p[1] = 0;
    v14 = 0;
    __p[0] = 0;
    *(a3 + 40) = 1;
    *(a3 + 48) = 0;
    v5 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v21 & 1) == 0)
    {
LABEL_6:
      *(a3 + 112) = 1;
      *(a3 + 120) = 0;
      if (!v4)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }
  }

  else
  {
    *(a3 + 48) = 0;
    v5 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v21 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v6 = v18;
  *(v5 + 16) = v17;
  *v5 = v16;
  v16 = 0uLL;
  *(a3 + 72) = v6;
  *(a3 + 80) = v19;
  *(a3 + 96) = v20;
  v17 = 0;
  v19 = 0uLL;
  v20 = 0;
  *(a3 + 104) = 1;
  *(a3 + 112) = 1;
  *(a3 + 120) = 0;
  if (!v4)
  {
    goto LABEL_17;
  }

LABEL_15:
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_17:
  if (v11 == 1 && SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_2711BD4B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2711BD50C(std::string *a1, unint64_t *a2)
{
  v5 = 0;
  v7 = v4;
  v8 = a1;
  v9 = v4;
  v10 = a1;
  v11 = a1;
  v6.__r_.__value_.__r.__words[0] = &v7;
  sub_2711BF108(&v6);
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
  (off_28812DDB0[v5])(&v12, v4);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v7 = &v6;
  result = (off_28812DDC8[v5])(&v7, v4);
  if (v5 != -1)
  {
    return (off_28812DD98[v5])(&v7, v4);
  }

  return result;
}

void sub_2711BD624(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711BD640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_271130878(&a10);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x2711BD630);
}

void sub_2711BD664(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = *(*a1 + 16);
  v3 = *(*a1 + 24);
  v5 = *a1;
  v6 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = sub_2711BED38;
  operator new();
}

void sub_2711BDA50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711BDA9C(uint64_t a1, uint64_t a2)
{
  v25[25] = *MEMORY[0x277D85DE8];
  if (*(a2 + 400) != 1)
  {
    LOBYTE(v8) = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    LOBYTE(v12) = 0;
    v13 = 0;
    LOBYTE(v14) = 0;
    v15 = 0;
    LOBYTE(__p) = 0;
    v17 = 0;
    sub_2711BF1FC(a1, &v8);
  }

  if (*(a2 + 16) == 1)
  {
    v4 = *a2;
    v5 = *(a2 + 8);
    if (*(a2 + 56) != 1)
    {
LABEL_8:
      *&v18 = v4;
      BYTE8(v18) = v5;
      sub_27113523C(&v19, (a2 + 32));
      v20 = &unk_28812DE38;
      v21 = &unk_28812DE80;
      v6 = *a1;
      v7 = *(a1 + 16);
      *a1 = 0;
      *(a1 + 8) = 0;
      v22 = v6;
      v23 = v7;
      v24 = v18;
      sub_27113523C(v25, &v19);
      v20 = &unk_28810C888;
      sub_2711BF974();
    }
  }

  else
  {
    v20 = &unk_28810A440;
    v4 = sub_271815924();
    v5 = 2;
    if (*(a2 + 56) != 1)
    {
      goto LABEL_8;
    }
  }

  sub_2711DAE40((a2 + 32), 1000000000);
  goto LABEL_8;
}

void sub_2711BE018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2714FBE4C(va);
  sub_271134CBC(v4 + 16);
  _Unwind_Resume(a1);
}

void sub_2711BE034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_2711BFBEC(&a65);
  sub_271134CBC(v65 + 16);
  _Unwind_Resume(a1);
}

void sub_2711BE050(_Unwind_Exception *a1)
{
  sub_2711BFF28(v1);
  sub_271134CBC(v2 + 16);
  _Unwind_Resume(a1);
}

void sub_2711BE06C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_2714FBE4C(&a9);
  sub_271134CBC(&a15);
  _Unwind_Resume(a1);
}

void sub_2711BE088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_271134CBC(va);
  _Unwind_Resume(a1);
}

void sub_2711BE0A0(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 440);
  v3 = *(a1 + 448);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v2)
  {
    v4 = **v2;
    v5 = __dynamic_cast(v2, &unk_28811D1B0, &unk_28811DC90, 0) != 0;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = 0;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if (v5)
    {
LABEL_9:
      v6 = *(a1 + 440);
      v7 = *(a1 + 448);
      if (v7)
      {
        v8 = v7 + 1;
        atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
        v17 = v6;
        v18 = v7;
        if (v6)
        {
          atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
          v9 = *(v6 + 32);
          v10 = *(v6 + 40);
          v20 = v6;
          __p = v7;
          atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
          goto LABEL_20;
        }
      }

      else
      {
        v17 = *(a1 + 440);
        v18 = 0;
        if (v6)
        {
          v11 = *(v6 + 32);
          v12 = *(v6 + 40);
          v20 = v6;
          __p = 0;
LABEL_20:
          v19 = sub_2711BEB94;
          operator new();
        }
      }

LABEL_14:
      v22 = *"cv3d.viz";
      v23 = 0x800000000000000;
      LODWORD(v24) = 9;
      sub_2711BE814(&v16, &v22, 1uLL);
      if (*(a1 + 23) < 0)
      {
        sub_271127178(v13, *a1, *(a1 + 8));
      }

      else
      {
        *v13 = *a1;
        v14 = *(a1 + 16);
      }

      v15 = *(a1 + 24);
      operator new();
    }

LABEL_13:
    v17 = 0;
    v18 = 0;
    goto LABEL_14;
  }

LABEL_8:
  if (v5)
  {
    goto LABEL_9;
  }

  goto LABEL_13;
}

void sub_2711BE5E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, char a30)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2711BE6A0(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  *(a1 + 16) = *(a3 + 2);
  *a1 = v5;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  *(a1 + 24) = *(a3 + 6);
  v6 = sub_27113610C(a1 + 32, a3 + 2);
  v7 = *(a3 + 55);
  v8 = *(a3 + 56);
  *(a1 + 432) = off_28810C940;
  *(a1 + 440) = v7;
  *(a1 + 448) = v8;
  *(a3 + 55) = 0;
  *(a3 + 56) = 0;
  *(a1 + 464) = 0;
  *(a1 + 496) = 0;
  if (*(a3 + 496) == 1)
  {
    *(a1 + 464) = 0;
    *(a1 + 472) = 0;
    v9 = *(a3 + 58);
    if (v9)
    {
      v9(2, (a3 + 29), a1 + 464, 0, 0, v6);
    }

    *(a1 + 496) = 1;
  }

  *(a1 + 504) = 0;
  *(a1 + 528) = 0;
  if (*(a3 + 528) == 1)
  {
    *(a1 + 504) = &unk_288109288;
    *(a1 + 512) = a3[32];
    a3[32] = 0u;
    *(a1 + 528) = 1;
  }

  return a1;
}

void sub_2711BE7B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void (**sub_2711BE7CC(void (**a1)(void, void, void, void, void)))(void, void, void, void, void)
{
  if (*a1)
  {
    (*a1)(0, a1, 0, 0, 0);
  }

  return a1;
}

void *sub_2711BE814(void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (!(a3 >> 59))
    {
      operator new();
    }

    sub_2711BE688();
  }

  return result;
}

void sub_2711BE928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_2711BE948(&a11);
  *(v11 + 8) = v12;
  sub_2711BE9A8(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_2711BE948(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 9);
      v3 -= 4;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void ****sub_2711BE9A8(void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 9);
          v4 -= 4;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void ***sub_2711BEA2C(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 9);
        v3 -= 4;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_2711BEAC0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881069D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2711BEB14(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void *sub_2711BEB94(int a1, void *a2, void *a3, uint64_t a4, void *a5)
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
      *a3 = sub_2711BEB94;
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
      *a3 = sub_2711BEB94;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28811B808;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con4BlobENS3_7PackageELj9EvEEEE")
      {
        if (((v5 & "NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con4BlobENS3_7PackageELj9EvEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con4BlobENS3_7PackageELj9EvEEEE"))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con4BlobENS3_7PackageELj9EvEEEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_271858300)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void *sub_2711BED38(int a1, void *a2, void *a3, uint64_t a4, void *a5)
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
      *a3 = sub_2711BED38;
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
      *a3 = sub_2711BED38;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28811B868;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "NSt3__110shared_ptrIKN4cv3d3kit3con4BlobEEE")
      {
        if (((v5 & "NSt3__110shared_ptrIKN4cv3d3kit3con4BlobEEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "NSt3__110shared_ptrIKN4cv3d3kit3con4BlobEEE"))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIKN4cv3d3kit3con4BlobEEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_271858330)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_2711BF0AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

size_t sub_2711BF108(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28812DD98[v3])(&v6, v1);
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

void sub_2711BF1FC(__int128 *a1, uint64_t a2)
{
  v67 = *MEMORY[0x277D85DE8];
  LOBYTE(v15[0]) = 0;
  v17 = 0;
  if (*(a2 + 24) == 1)
  {
    *v15 = *a2;
    v16 = *(a2 + 16);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v17 = 1;
  }

  v18 = *(a2 + 32);
  v19 = *(a2 + 48);
  LOBYTE(v20) = 0;
  v22 = 0;
  if (*(a2 + 80) == 1)
  {
    v20 = *(a2 + 56);
    v21 = *(a2 + 72);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 56) = 0;
    v22 = 1;
    LOBYTE(v23) = 0;
    v27 = 0;
    if (*(a2 + 144) != 1)
    {
LABEL_5:
      LOBYTE(v28) = 0;
      v30 = 0;
      if (*(a2 + 184) != 1)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else
  {
    LOBYTE(v23) = 0;
    v27 = 0;
    if (*(a2 + 144) != 1)
    {
      goto LABEL_5;
    }
  }

  _X2 = 0;
  _X3 = 0;
  v24 = *(a2 + 112);
  v23 = *(a2 + 96);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  v25 = _X2;
  v26 = 0;
  v27 = 1;
  LOBYTE(v28) = 0;
  v30 = 0;
  if (*(a2 + 184) != 1)
  {
LABEL_7:
    sub_27113523C(&v53, v15);
    *&v31 = sub_271815924();
    BYTE8(v31) = 2;
    LOBYTE(v32[0]) = 0;
    v33 = 0;
    if (v55 == 1)
    {
      *v32 = v53;
      v32[2] = v54;
      v54 = 0;
      v53 = 0uLL;
      v33 = 1;
    }

    v34 = v56;
    v35 = v57;
    LOBYTE(v36) = 0;
    v38 = 0;
    if (v60 == 1)
    {
      v36 = v58;
      v37 = v59;
      v59 = 0;
      v58 = 0uLL;
      v38 = 1;
      LOBYTE(v39) = 0;
      v43 = 0;
      if (v63 != 1)
      {
LABEL_11:
        LOBYTE(v44) = 0;
        v46 = 0;
        if ((v66 & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_19;
      }
    }

    else
    {
      LOBYTE(v39) = 0;
      v43 = 0;
      if (v63 != 1)
      {
        goto LABEL_11;
      }
    }

    _X0 = 0;
    _X1 = 0;
    v40 = v62;
    v39 = __p;
    v62 = 0;
    __p = 0uLL;
    __asm { CASPAL          X0, X1, X0, X1, [X9] }

    v41 = _X0;
    v42 = 0;
    v43 = 1;
    LOBYTE(v44) = 0;
    v46 = 0;
    if ((v66 & 1) == 0)
    {
LABEL_12:
      if (v63 != 1)
      {
        goto LABEL_22;
      }

LABEL_20:
      if (SHIBYTE(v62) < 0)
      {
        operator delete(__p);
      }

LABEL_22:
      if (v60 == 1 && SHIBYTE(v59) < 0)
      {
        operator delete(v58);
      }

      if (v55 == 1 && SHIBYTE(v54) < 0)
      {
        operator delete(v53);
      }

      v47 = &unk_28812DE38;
      v48 = &unk_28812DE80;
      v13 = *a1;
      v14 = a1[1];
      *a1 = 0;
      *(a1 + 1) = 0;
      v49 = v13;
      v50 = v14;
      v51 = v31;
      sub_27113523C(&v52, v32);
      v47 = &unk_28810C888;
      sub_2711BF974();
    }

LABEL_19:
    v44 = v64;
    v45 = v65;
    v65 = 0;
    v64 = 0uLL;
    v46 = 1;
    if (v63 != 1)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

LABEL_6:
  v28 = *(a2 + 160);
  v29 = *(a2 + 176);
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 160) = 0;
  v30 = 1;
  goto LABEL_7;
}

void sub_2711BF920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  sub_2711BFBEC(&a61);
  sub_271134CBC(v61 + 16);
  sub_271134CBC(&a11);
  _Unwind_Resume(a1);
}

void sub_2711BF960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271134CBC(va);
  _Unwind_Resume(a1);
}

void *sub_2711BFBEC(void *a1)
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

void sub_2711BFCAC(void *a1)
{
  *a1 = &unk_28812DE38;
  sub_271134CBC((a1 + 8));
  a1[1] = &unk_28812DE80;
  v2 = a1[3];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2711BFD90(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280877CF0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280877CF0))
    {
      sub_2711C14E8(&stru_280877CD8);
      __cxa_guard_release(&qword_280877CF0);
    }
  }

  (*(*(a1 + 8) + 24))(__p, a1 + 8);
  sub_2711C1280(&stru_280877CD8, "{", __p, ",");
}

void sub_2711BFE90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711BFEAC(uint64_t a1@<X8>)
{
  *(a1 + 23) = 8;
  strcpy(a1, "cv3d.viz");
  *(a1 + 24) = 9;
}

void *sub_2711BFF28(void *result)
{
  *result = &unk_28812DE80;
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

void *sub_2711BFFBC(void *a1)
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

void sub_2711C007C(void *a1)
{
  *a1 = &unk_28812DE38;
  sub_271134CBC((a1 + 8));
  a1[1] = &unk_28812DE80;
  v2 = a1[3];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2711C0150()
{
  if ((atomic_load_explicit(&qword_280877CD0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280877CD0))
    {
      sub_2711C1008();
    }
  }

  sub_2711C0870(&xmmword_280877CB8, "{");
}

void sub_2711C0204(uint64_t a1@<X8>)
{
  *(a1 + 23) = 15;
  strcpy(a1, "unknown_package");
  *(a1 + 24) = 0;
}

void sub_2711C0230(void *a1)
{
  *a1 = &unk_28812DE80;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2711C02D8(char **a1, char **lpsrc)
{
  v4 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_288132918, &unk_28812DEA0, 0);
  if (result)
  {
    if (a1 == lpsrc)
    {
      return 1;
    }

    else
    {
      v6 = a1[4];
      if (v6 == *(result + 32))
      {
        v7 = result;
        result = 1;
        if (v6)
        {
          v8 = a1[3];
          v9 = *(v7 + 24);
          if (v8 != v9)
          {
            v10 = v6 - 1;
            do
            {
              v11 = v10;
              v12 = *v8;
              v13 = *v9;
              result = v12 == v13;
              if (v12 != v13)
              {
                break;
              }

              ++v8;
              ++v9;
              v10 = v11 - 1;
            }

            while (v11);
          }
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_2711C03C4()
{
  if ((atomic_load_explicit(&qword_280877CB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877CB0))
  {
    sub_2718519B4("cv3d::kit::con::Blob]", 0x14uLL, &xmmword_280877C98);
    __cxa_guard_release(&qword_280877CB0);
  }

  sub_2711C0478(&xmmword_280877C98, "{");
}

void sub_2711C0478(__int128 *a1, uint64_t a2)
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
  sub_2711C0624();
}

void sub_2711C05BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C05D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C05E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C05FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C0610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C082C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711C0870(__int128 *a1, uint64_t a2)
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
  sub_2711C0AA0();
}

void sub_2711C0A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C0A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C0A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C0A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C0A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C0A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C0A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C0D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_guard_abort(&qword_280877CB0);
  v23 = *(v21 - 56);
  *(v21 - 56) = 0;
  if (!v23)
  {
    _Unwind_Resume(a1);
  }

  sub_27184D728(v21 - 56, v23);
  _Unwind_Resume(a1);
}

void sub_2711C0FC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711C10DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711C110C(const void **a1@<X0>, std::string *a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  *(&__p.__r_.__value_.__s + 23) = 20;
  strcpy(&__p, "cv3d::kit::con::Blob");
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

void sub_2711C1240(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27137F4D0(va);
  if (*(v2 - 25) < 0)
  {
    operator delete(*(v2 - 48));
  }

  _Unwind_Resume(a1);
}

void sub_2711C1280(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v7, *a1, *(a1 + 1));
  }

  else
  {
    v7 = *a1;
    v8 = *(a1 + 2);
  }

  v9 = 1;
  v10 = &v7;
  v11 = a2;
  v12 = &v7;
  v13 = a2;
  v14 = a2;
  sub_271136F58(&v12, &v7);
  v10 = &v7;
  v11 = a3;
  v12 = &v7;
  v13 = a3;
  v14 = a3;
  if (v9 != -1)
  {
    v15 = &v10;
    (off_28812DDE0[v9])(&v15, &v7);
    v10 = &v7;
    v11 = a4;
    v12 = &v7;
    v13 = a4;
    v14 = a4;
    if (v9 != -1)
    {
      v15 = &v10;
      (*(&off_28812DDF8 + v9))(&v15, &v7);
      sub_2711C0DBC();
    }

    sub_2711308D4();
  }

  sub_2711308D4();
}

void sub_2711C1458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C1470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C1484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C1498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C14AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C14C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C14D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C14E8(std::string *a1@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  HIBYTE(v9[2]) = 16;
  strcpy(v9, "viz::PackageData");
  *(&__p.__r_.__value_.__s + 23) = 20;
  strcpy(&__p, "cv3d::kit::con::Blob");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v14 = 12;
  strcpy(v13, "viz::Package");
  sub_271851C68("9U]", 2, &v15);
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

void sub_2711C1704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
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

void sub_2711C17B4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  if (v4 && (atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    if (v5)
    {
LABEL_4:
      CFDataGetBytePtr(*a1);
      Length = CFDataGetLength(*a1);
      v24 = 0;
      v25 = 0;
      v26 = 0;
      if (Length << 32)
      {
        if ((Length & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_271135560();
      }

      sub_27174E070();
    }
  }

  else if (v5)
  {
    goto LABEL_4;
  }

  LOBYTE(v10) = 0;
  v12 = 0;
  sub_271369B1C(&v10, &v13);
  *a2 = v13;
  *(a2 + 16) = 0;
  *(a2 + 112) = 0;
  if (v23 != 1)
  {
    *(a2 + 120) = 0;
    goto LABEL_20;
  }

  *(a2 + 40) = 0;
  v7 = v16;
  if (v16 != 1)
  {
    *(a2 + 48) = 0;
    v8 = a2 + 48;
    *(a2 + 104) = 0;
    if ((v22 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_17:
    v9 = v19;
    *(v8 + 16) = v18;
    *v8 = v17;
    v17 = 0uLL;
    *(a2 + 72) = v9;
    *(a2 + 80) = v20;
    *(a2 + 96) = v21;
    v18 = 0;
    v20 = 0uLL;
    v21 = 0;
    *(a2 + 104) = 1;
    *(a2 + 112) = 1;
    *(a2 + 120) = 0;
    if (!v7)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  *(a2 + 16) = *__p;
  *(a2 + 32) = v15;
  __p[1] = 0;
  v15 = 0;
  __p[0] = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  v8 = a2 + 48;
  *(a2 + 104) = 0;
  if (v22)
  {
    goto LABEL_17;
  }

LABEL_13:
  *(a2 + 112) = 1;
  *(a2 + 120) = 0;
  if (!v7)
  {
    goto LABEL_20;
  }

LABEL_18:
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_20:
  if (v12 == 1 && v11 < 0)
  {
    operator delete(v10);
  }
}

void sub_2711C1AE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, __int16 a17, char a18, char a19)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711C1B34(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v4 = *(a1 + 8);
  if (v4 && (atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    if (v5)
    {
LABEL_4:
      CFDataGetBytePtr(*a1);
      CFDataGetLength(*a1);
      v13 = 0uLL;
      sub_2711C2560(&v13 + 8, a1);
    }
  }

  else if (v5)
  {
    goto LABEL_4;
  }

  LOBYTE(v10) = 0;
  v12 = 0;
  sub_271369B1C(&v10, &v13);
  *a2 = v13;
  *(a2 + 16) = 0;
  *(a2 + 112) = 0;
  if (v23 != 1)
  {
    *(a2 + 120) = 0;
    goto LABEL_16;
  }

  *(a2 + 40) = 0;
  v6 = v16;
  if (v16 != 1)
  {
    *(a2 + 48) = 0;
    v7 = a2 + 48;
    *(a2 + 104) = 0;
    if ((v22 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_13:
    v8 = v19;
    *(v7 + 16) = v18;
    *v7 = v17;
    v17 = 0uLL;
    *(a2 + 72) = v8;
    *(a2 + 80) = v20;
    *(a2 + 96) = v21;
    v18 = 0;
    v20 = 0uLL;
    v21 = 0;
    *(a2 + 104) = 1;
    *(a2 + 112) = 1;
    *(a2 + 120) = 0;
    if (!v6)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  *(a2 + 16) = __p;
  *(a2 + 32) = v15;
  v15 = 0;
  __p = 0uLL;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  v7 = a2 + 48;
  *(a2 + 104) = 0;
  if (v22)
  {
    goto LABEL_13;
  }

LABEL_9:
  *(a2 + 112) = 1;
  *(a2 + 120) = 0;
  if (!v6)
  {
    goto LABEL_16;
  }

LABEL_14:
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

LABEL_16:
  if (v12 == 1 && v11 < 0)
  {
    operator delete(v10);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_2711C1E7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, int a20, __int16 a21, char a22, char a23)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711C1EE8(uint64_t a1)
{
  v1 = *(*a1 + 24);
  if (v1)
  {
    sub_27180A0C8(*(*a1 + 16), v1);
  }

  operator new();
}

void sub_2711C20B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711C20DC(uint64_t a1)
{
  v2 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 24))
  {
    v1 = *(*a1 + 16);
    operator new();
  }

  operator new();
}

void sub_2711C2370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2711C23C4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_2711C2560(a3 + 8, a2 + 8);
    }

    v7 = *(a2 + 16);
    if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = a2;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      result = 0;
      *v8 = 0;
    }

    else
    {
      result = 0;
      *a2 = 0;
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 8) = *(a2 + 8);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a3 = sub_2711C23C4;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28812DED0;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "N4cv3d3kit2cf8DataRefTIPK8__CFDataEE")
      {
        if (((v5 & "N4cv3d3kit2cf8DataRefTIPK8__CFDataEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "N4cv3d3kit2cf8DataRefTIPK8__CFDataEE"))
        {
          return 0;
        }

        v9 = a2;
        v10 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3kit2cf8DataRefTIPK8__CFDataEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v9;
        if (v10)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_271858420)
    {
      return 0;
    }

    return (a2 + 8);
  }

  return result;
}

void sub_2711C2560(uint64_t a1, uint64_t a2)
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

  sub_2711C268C(&v4, v3);
}

void sub_2711C2890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_27112F828(v15);
  _Unwind_Resume(a1);
}

void sub_2711C2910(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2711C2948(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_2711C296C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIPK8__CFDataEC1ES5_EUlS5_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIPK8__CFDataEC1ES5_EUlS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIPK8__CFDataEC1ES5_EUlS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIPK8__CFDataEC1ES5_EUlS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2711C29EC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28812DEF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2711C2A40(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void *sub_2711C2AC0(int a1, void *a2, void *a3, uint64_t a4, void *a5)
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
      *a3 = sub_2711C2AC0;
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
      *a3 = sub_2711C2AC0;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28812DF38;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "NSt3__110shared_ptrIN4cv3d2vl13visual_logger10SharedBlobEEE")
      {
        if (((v5 & "NSt3__110shared_ptrIN4cv3d2vl13visual_logger10SharedBlobEEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "NSt3__110shared_ptrIN4cv3d2vl13visual_logger10SharedBlobEEE"))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIN4cv3d2vl13visual_logger10SharedBlobEEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_2718584BC)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_2711C2C64(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>, float a5@<S2>, float a6@<S3>)
{
  (*(**(a1 + 8) + 32))(*(a1 + 8));
  v12 = (*(**(a1 + 8) + 32))(*(a1 + 8));
  if ((*(**(a1 + 8) + 16))(*(a1 + 8)))
  {
    if (v12 == 11)
    {

      sub_2711C4150(a3, a4, a5, a6, a2, a1);
    }

    sub_2711C4680(a3, a4, a5, a6, a2, a1);
  }

  if (v12 == 11)
  {

    sub_2711C36B4(a3, a4, a5, a6, a2, a1);
  }

  sub_2711C3BE4(a3, a4, a5, a6, a2, a1);
}

uint64_t sub_2711C2E2C(uint64_t a1, int a2)
{
  result = (*(**(a1 + 8) + 32))(*(a1 + 8));
  if (a2 == 12 && result == 11)
  {
    v5 = (*(**(a1 + 8) + 16))(*(a1 + 8));
    v6 = (*(**(a1 + 8) + 24))(*(a1 + 8));
    if (v5 == 1)
    {
      if (v6 == 1)
      {
        v9 = sub_2711CB1B0(a1);
        v10 = vcvtq_f64_f32(v9[3]);
        v28 = vcvtq_f64_f32(v9[2]);
        v29 = v10;
        sub_2711CB574(&v27, &v28);
        v24 = v9[11];
        operator new();
      }
    }

    else if (!v5)
    {
      if (v6 == 2)
      {
        v17 = sub_2711C7E28(a1);
        v18 = v17[2];
        v19.i32[0] = v17[3].i32[0];
        v20 = v17[3].f32[1];
        v21 = v17[3].i32[2];
        v22 = vcvtq_f64_f32(*&v17[1].u32[2]);
        v28 = vcvtq_f64_f32(*v17[1].f32);
        v29 = v22;
        v30 = vcvtq_f64_f32(*v18.f32);
        v31 = vcvt_hight_f64_f32(v18);
        v32 = *&vcvtq_f64_f32(v19);
        v33 = v20;
        v34 = v21;
        sub_2711CCAC0(&v27, &v28);
        v26 = v17[7].i64[1];
        operator new();
      }

      if (v6 == 1)
      {
        v7 = sub_2711CB08C(a1);
        v8 = vcvtq_f64_f32(v7[3]);
        v28 = vcvtq_f64_f32(v7[2]);
        v29 = v8;
        sub_2711CB574(&v27, &v28);
        v23 = v7[11];
        operator new();
      }
    }

    v11 = sub_2711C7F0C(a1);
    v12 = v11[2];
    v13.i32[0] = v11[3].i32[0];
    v14 = v11[3].f32[1];
    v15 = v11[3].i32[2];
    v16 = vcvtq_f64_f32(*&v11[1].u32[2]);
    v28 = vcvtq_f64_f32(*v11[1].f32);
    v29 = v16;
    v30 = vcvtq_f64_f32(*v12.f32);
    v31 = vcvt_hight_f64_f32(v12);
    v32 = *&vcvtq_f64_f32(v13);
    v33 = v14;
    v34 = v15;
    sub_2711CCAC0(&v27, &v28);
    v25 = v11[7].i64[1];
    operator new();
  }

  return result;
}

void sub_2711C36B4(float a1, float a2, float a3, float a4, uint64_t a5, uint64_t a6)
{
  v27[0] = a1;
  v27[1] = a2;
  v27[2] = a3;
  v27[3] = a4;
  sub_2711CD91C(v19, v27);
  if (v26)
  {
    v12[0] = __PAIR64__(LODWORD(a2), LODWORD(a1));
    v12[1] = __PAIR64__(LODWORD(a4), LODWORD(a3));
    v11 = (*(**(a6 + 8) + 40))(*(a6 + 8));
    sub_2711CD758(&v13, v12);
    v19[1] = &unk_288114AB8;
    v22 = v16;
    v23 = v17;
    LODWORD(v24) = v18;
    v20 = v14;
    v21 = v15;
    v25 = *v11;
    v19[0] = &unk_288114998;
    operator new();
  }

  LODWORD(v15) = 0;
  sub_2711CE2CC();
}

void sub_2711C3BB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_271130878(va);
  sub_271120E50(a1);
}

void sub_2711C3BCC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_271130878(va);
  sub_271120E50(a1);
}

void sub_2711C3BE4(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v26[0] = a1;
  v26[1] = a2;
  v26[2] = a3;
  v26[3] = a4;
  sub_2711CB740(v12, v26);
  if (BYTE8(v19))
  {
    v23[0] = *&a1;
    v23[1] = *&a2;
    v24 = a3;
    v25 = a4;
    v11 = (*(**(a6 + 8) + 40))(*(a6 + 8));
    sub_2711CB574(v27, v23);
    v12[1] = &unk_288114AE8;
    v19 = v33;
    v20 = v34;
    v21 = v35;
    *v15 = v29;
    v16 = v30;
    *v17 = v31;
    v18 = v32;
    *v13 = *&v27[8];
    v14 = v28;
    v22 = *v11;
    v12[0] = &unk_288114A18;
    operator new();
  }

  LODWORD(v28) = 0;
  sub_2711CE2CC();
}

void sub_2711C4150(float a1, float a2, float a3, float a4, uint64_t a5, uint64_t a6)
{
  v27[0] = a1;
  v27[1] = a2;
  v27[2] = a3;
  v27[3] = a4;
  sub_2711CD91C(v19, v27);
  if (v26)
  {
    v12[0] = __PAIR64__(LODWORD(a2), LODWORD(a1));
    v12[1] = __PAIR64__(LODWORD(a4), LODWORD(a3));
    v11 = (*(**(a6 + 8) + 40))(*(a6 + 8));
    sub_2711CD758(&v13, v12);
    v19[1] = &unk_288114AB8;
    v22 = v16;
    v23 = v17;
    LODWORD(v24) = v18;
    v20 = v14;
    v21 = v15;
    v25 = *v11;
    v19[0] = &unk_288114958;
    operator new();
  }

  LODWORD(v15) = 0;
  sub_2711CE2CC();
}

void sub_2711C4654(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_271130878(va);
  sub_271120E50(a1);
}

void sub_2711C4668(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_271130878(va);
  sub_271120E50(a1);
}

void sub_2711C4680(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v26[0] = a1;
  v26[1] = a2;
  v26[2] = a3;
  v26[3] = a4;
  sub_2711CB740(v12, v26);
  if (BYTE8(v19))
  {
    v23[0] = *&a1;
    v23[1] = *&a2;
    v24 = a3;
    v25 = a4;
    v11 = (*(**(a6 + 8) + 40))(*(a6 + 8));
    sub_2711CB574(v27, v23);
    v12[1] = &unk_288114AE8;
    v19 = v33;
    v20 = v34;
    v21 = v35;
    *v15 = v29;
    v16 = v30;
    *v17 = v31;
    v18 = v32;
    *v13 = *&v27[8];
    v14 = v28;
    v22 = *v11;
    v12[0] = &unk_2881149D8;
    operator new();
  }

  LODWORD(v28) = 0;
  sub_2711CE2CC();
}

void sub_2711C4BEC(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  sub_2711C2E2C(a1, 12);
  v12 = (*(**(a1 + 8) + 32))(*(a1 + 8));
  if ((*(**(a1 + 8) + 16))(*(a1 + 8)))
  {
    if (v12 == 11)
    {

      v13 = a3;
      v14 = a4;
      v15 = a5;
      v16 = a6;
      sub_2711C4150(v13, v14, v15, v16, a2, a1);
    }

    sub_2711C4680(a3, a4, a5, a6, a2, a1);
  }

  if (v12 == 11)
  {

    v17 = a3;
    v18 = a4;
    v19 = a5;
    v20 = a6;
    sub_2711C36B4(v17, v18, v19, v20, a2, a1);
  }

  sub_2711C3BE4(a3, a4, a5, a6, a2, a1);
}

void sub_2711C4D90(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>, float a5@<S2>, float a6@<S3>, float a7@<S4>, float a8@<S5>, float a9@<S6>, float a10@<S7>, int a11)
{
  (*(**(a1 + 8) + 32))(*(a1 + 8));
  v20 = (*(**(a1 + 8) + 32))(*(a1 + 8));
  if ((*(**(a1 + 8) + 16))(*(a1 + 8)))
  {
    if (v20 != 11)
    {
      sub_2711C6060(a3, a4, a5, a6, a7, a8, a9, a10, a2, a1, v21, v22, v23, v24, v25, v26, COERCE__INT64(*&a11));
    }

    sub_2711C5AF8(a3, a4, a5, a6, a7, a8, a9, a10, a2, a1, v21, v22, v23, v24, v25, v26, a11);
  }

  if (v20 != 11)
  {
    sub_2711C5538(a3, a4, a5, a6, a7, a8, a9, a10, a2, a1, v21, v22, v23, v24, v25, v26, COERCE__INT64(*&a11));
  }

  sub_2711C4FD0(a3, a4, a5, a6, a7, a8, a9, a10, a2, a1, v21, v22, v23, v24, v25, v26, a11);
}

void sub_2711C4FD0(float a1, float a2, float a3, float a4, float a5, float a6, float a7, float a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17)
{
  *&v36 = __PAIR64__(LODWORD(a2), LODWORD(a1));
  *(&v36 + 1) = __PAIR64__(LODWORD(a4), LODWORD(a3));
  v37 = a5;
  v38 = a6;
  v39 = a7;
  v40 = a8;
  v41 = a17;
  v42 = 0xA3727C5ACLL;
  sub_2711CE574(v27, &v36);
  if (v35)
  {
    sub_2711CE97C(&v19, &v36);
    v18 = (*(**(a10 + 8) + 40))(*(a10 + 8));
    v27[1] = &unk_288114A58;
    v32 = v24;
    v33 = v25;
    v34 = v26;
    *v28 = v20;
    v29 = v21;
    v31 = v23;
    *v30 = v22;
    v35 = *v18;
    v27[0] = &unk_288114898;
    operator new();
  }

  LODWORD(v21) = 0;
  sub_2711CE2CC();
}

void sub_2711C550C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  sub_271120E50(a1);
}

void sub_2711C5520(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  sub_271120E50(a1);
}

void sub_2711C5538(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *v48 = a1;
  *&v48[1] = a2;
  *&v48[2] = a3;
  *&v48[3] = a4;
  *&v48[4] = a5;
  *&v48[5] = a6;
  *&v48[6] = a7;
  *&v48[7] = a8;
  v48[8] = a17;
  v48[9] = 0x3EE4F8B588E368F1;
  v49 = 10;
  sub_2711CCCD0(v19, v48);
  if (BYTE8(v26))
  {
    sub_2711CCAC0(&v34, v48);
    v18 = (*(**(a10 + 8) + 40))(*(a10 + 8));
    v19[1] = &unk_288114A88;
    v30 = v45;
    v31 = v46;
    v32 = v47;
    v26 = v41;
    v27 = v42;
    v29 = v44;
    v28 = v43;
    *v22 = v37;
    v23 = v38;
    v25 = v40;
    *v24 = v39;
    v21 = v36;
    *v20 = v35;
    v33 = *v18;
    v19[0] = &unk_288114918;
    operator new();
  }

  LODWORD(v36) = 0;
  sub_2711CE2CC();
}

void sub_2711C5AF8(float a1, float a2, float a3, float a4, float a5, float a6, float a7, float a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17)
{
  *&v36 = __PAIR64__(LODWORD(a2), LODWORD(a1));
  *(&v36 + 1) = __PAIR64__(LODWORD(a4), LODWORD(a3));
  v37 = a5;
  v38 = a6;
  v39 = a7;
  v40 = a8;
  v41 = a17;
  v42 = 0xA3727C5ACLL;
  sub_2711CE574(v27, &v36);
  if (v35)
  {
    sub_2711CE97C(&v19, &v36);
    v18 = (*(**(a10 + 8) + 40))(*(a10 + 8));
    v27[1] = &unk_288114A58;
    v32 = v24;
    v33 = v25;
    v34 = v26;
    *v28 = v20;
    v29 = v21;
    v31 = v23;
    *v30 = v22;
    v35 = *v18;
    v27[0] = &unk_288114858;
    operator new();
  }

  LODWORD(v21) = 0;
  sub_2711CE2CC();
}

void sub_2711C6034(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  sub_271120E50(a1);
}

void sub_2711C6048(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  sub_271120E50(a1);
}

void sub_2711C6060(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *v48 = a1;
  *&v48[1] = a2;
  *&v48[2] = a3;
  *&v48[3] = a4;
  *&v48[4] = a5;
  *&v48[5] = a6;
  *&v48[6] = a7;
  *&v48[7] = a8;
  v48[8] = a17;
  v48[9] = 0x3EE4F8B588E368F1;
  v49 = 10;
  sub_2711CCCD0(v19, v48);
  if (BYTE8(v26))
  {
    sub_2711CCAC0(&v34, v48);
    v18 = (*(**(a10 + 8) + 40))(*(a10 + 8));
    v19[1] = &unk_288114A88;
    v30 = v45;
    v31 = v46;
    v32 = v47;
    v26 = v41;
    v27 = v42;
    v29 = v44;
    v28 = v43;
    *v22 = v37;
    v23 = v38;
    v25 = v40;
    *v24 = v39;
    v21 = v36;
    *v20 = v35;
    v33 = *v18;
    v19[0] = &unk_2881148D8;
    operator new();
  }

  LODWORD(v36) = 0;
  sub_2711CE2CC();
}

void sub_2711C6620(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>, double a9@<D6>, double a10@<D7>, uint64_t a11)
{
  sub_2711C2E2C(a1, 12);
  v20 = (*(**(a1 + 8) + 32))(*(a1 + 8));
  if ((*(**(a1 + 8) + 16))(*(a1 + 8)))
  {
    if (v20 == 11)
    {

      v27 = a3;
      v28 = a4;
      v29 = a5;
      v30 = a6;
      v31 = a7;
      v32 = a8;
      v33 = a9;
      v34 = a10;
      *&v35 = *&a11;
      sub_2711C5AF8(v27, v28, v29, v30, v31, v32, v33, v34, a2, a1, v21, v22, v23, v24, v25, v26, v35);
    }

    sub_2711C6060(a3, a4, a5, a6, a7, a8, a9, a10, a2, a1, v21, v22, v23, v24, v25, v26, a11);
  }

  if (v20 == 11)
  {

    v36 = a3;
    v37 = a4;
    v38 = a5;
    v39 = a6;
    v40 = a7;
    v41 = a8;
    v42 = a9;
    v43 = a10;
    *&v44 = *&a11;
    sub_2711C4FD0(v36, v37, v38, v39, v40, v41, v42, v43, a2, a1, v21, v22, v23, v24, v25, v26, v44);
  }

  sub_2711C5538(a3, a4, a5, a6, a7, a8, a9, a10, a2, a1, v21, v22, v23, v24, v25, v26, a11);
}

char *sub_2711C6874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = "focal length";
  v4 = (*(**(a1 + 8) + 32))(*(a1 + 8));
  v9 = v4;
  v5 = (*(**(a1 + 8) + 24))(*(a1 + 8));
  v6 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  if (v4 != 11)
  {
    if ((atomic_load_explicit(&qword_28087B180, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B180))
    {
      sub_27112B400(byte_28087B250, "float32");
      __cxa_guard_release(&qword_28087B180);
    }

    sub_2711CF9E8(v8, &v10, byte_28087B250);
  }

  if (v5 == 1)
  {
    if (v6)
    {
      result = sub_2711CF778(a1);
    }

    else
    {
      result = sub_2711CF6A8(a1);
    }
  }

  else if (v6)
  {
    result = sub_2711CF918(a1);
  }

  else
  {
    result = sub_2711CF848(a1);
  }

  *a2 = result + 16;
  *(a2 + 120) = 1;
  return result;
}

char *sub_2711C6BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = "focal length";
  v4 = (*(**(a1 + 8) + 32))(*(a1 + 8));
  v9 = v4;
  v5 = (*(**(a1 + 8) + 24))(*(a1 + 8));
  v6 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  if (v4 != 12)
  {
    if ((atomic_load_explicit(&qword_28087B188, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B188))
    {
      sub_27112B400(byte_28087B268, "float64");
      __cxa_guard_release(&qword_28087B188);
    }

    sub_2711CF9E8(v8, &v10, byte_28087B268);
  }

  if (v5 == 1)
  {
    if (v6)
    {
      result = sub_2711D11D8(a1);
    }

    else
    {
      result = sub_2711D1108(a1);
    }
  }

  else if (v6)
  {
    result = sub_2711D1378(a1);
  }

  else
  {
    result = sub_2711D12A8(a1);
  }

  *a2 = result + 16;
  *(a2 + 120) = 1;
  return result;
}

char *sub_2711C6F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = "principal point";
  v4 = (*(**(a1 + 8) + 32))(*(a1 + 8));
  v9 = v4;
  v5 = (*(**(a1 + 8) + 24))(*(a1 + 8));
  v6 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  if (v4 != 11)
  {
    if ((atomic_load_explicit(&qword_28087B180, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B180))
    {
      sub_27112B400(byte_28087B250, "float32");
      __cxa_guard_release(&qword_28087B180);
    }

    sub_2711CF9E8(v8, &v10, byte_28087B250);
  }

  if (v5 == 1)
  {
    if (v6)
    {
      result = sub_2711CF778(a1);
    }

    else
    {
      result = sub_2711CF6A8(a1);
    }
  }

  else if (v6)
  {
    result = sub_2711CF918(a1);
  }

  else
  {
    result = sub_2711CF848(a1);
  }

  *a2 = result + 24;
  *(a2 + 120) = 1;
  return result;
}

char *sub_2711C72B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = "principal point";
  v4 = (*(**(a1 + 8) + 32))(*(a1 + 8));
  v9 = v4;
  v5 = (*(**(a1 + 8) + 24))(*(a1 + 8));
  v6 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  if (v4 != 12)
  {
    if ((atomic_load_explicit(&qword_28087B188, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B188))
    {
      sub_27112B400(byte_28087B268, "float64");
      __cxa_guard_release(&qword_28087B188);
    }

    sub_2711CF9E8(v8, &v10, byte_28087B268);
  }

  if (v5 == 1)
  {
    if (v6)
    {
      result = sub_2711D11D8(a1);
    }

    else
    {
      result = sub_2711D1108(a1);
    }
  }

  else if (v6)
  {
    result = sub_2711D1378(a1);
  }

  else
  {
    result = sub_2711D12A8(a1);
  }

  *a2 = result + 32;
  *(a2 + 120) = 1;
  return result;
}

char *sub_2711C7624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(**(a1 + 8) + 32))(*(a1 + 8));
  v10 = v4;
  v5 = (*(**(a1 + 8) + 24))(*(a1 + 8));
  v9 = v5;
  v6 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  if (v4 != 11)
  {
    if ((atomic_load_explicit(&qword_28087B180, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B180))
    {
      sub_27112B400(byte_28087B250, "float32");
      __cxa_guard_release(&qword_28087B180);
    }

    sub_2711C7FF0(v8, byte_28087B250);
  }

  if (v5 == 1)
  {
    sub_2711C7AF0();
  }

  if (v6)
  {
    result = sub_2711C7F0C(a1);
  }

  else
  {
    result = sub_2711C7E28(a1);
  }

  *a2 = result + 32;
  *(a2 + 120) = 1;
  return result;
}

void sub_2711C7D94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x2743BF050](v2, 0x10B2C40EED050F3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C7DC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C7DDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_271130878(&a10);
    _Unwind_Resume(a1);
  }

  sub_271130878(&a10);
  _Unwind_Resume(a1);
}

void *sub_2711C7E28(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2 || (v3 = **v2, (result = __dynamic_cast(v2, &unk_2881240F8, &unk_288124198, 0)) == 0))
  {
    if ((atomic_load_explicit(&qword_280877DD0, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_280877DD0))
      {
        sub_2711CF4A0();
      }
    }

    sub_2717412A4(a1, byte_280877DB8, "trying to cast camera");
  }

  return result;
}

void *sub_2711C7F0C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2 || (v3 = **v2, (result = __dynamic_cast(v2, &unk_2881240F8, &unk_288124180, 0)) == 0))
  {
    if ((atomic_load_explicit(&qword_280877D90, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_280877D90))
      {
        sub_2711CF5A4();
      }
    }

    sub_2717412A4(a1, byte_280877D78, "trying to cast camera");
  }

  return result;
}

void sub_2711C7FF0(uint64_t a1, const char *a2)
{
  v4 = 0;
  v5 = v3;
  v6 = "Cannot get heikkila distortion coefficients as ";
  v7 = v3;
  v8 = "Cannot get heikkila distortion coefficients as ";
  v9 = "Cannot get heikkila distortion coefficients as ";
  v10 = &v5;
  sub_2711D1BC0(&v10);
  v5 = v3;
  v6 = a2;
  v7 = v3;
  v8 = a2;
  v9 = a2;
  if (v4 != -1)
  {
    v10 = &v5;
    (off_28812E218[v4])(&v10, v3);
    v5 = v3;
    v6 = ", camera value type is ";
    v7 = v3;
    v8 = ", camera value type is ";
    v9 = ", camera value type is ";
    if (v4 != -1)
    {
      v10 = &v5;
      (off_28812E230[v4])(&v10, v3);
      sub_2711D022C();
    }

    sub_2711308D4();
  }

  sub_2711308D4();
}

char *sub_2711C81B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(**(a1 + 8) + 32))(*(a1 + 8));
  v10 = v4;
  v5 = (*(**(a1 + 8) + 24))(*(a1 + 8));
  v9 = v5;
  v6 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  if (v4 != 12)
  {
    if ((atomic_load_explicit(&qword_28087B188, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B188))
    {
      sub_27112B400(byte_28087B268, "float64");
      __cxa_guard_release(&qword_28087B188);
    }

    sub_2711C7FF0(v8, byte_28087B268);
  }

  if (v5 == 1)
  {
    sub_2711C7AF0();
  }

  if (v6)
  {
    result = sub_2711C8764(a1);
  }

  else
  {
    result = sub_2711C8680(a1);
  }

  *a2 = result + 48;
  *(a2 + 120) = 1;
  return result;
}

void *sub_2711C8680(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2 || (v3 = **v2, (result = __dynamic_cast(v2, &unk_2881240F8, &unk_2881241C8, 0)) == 0))
  {
    if ((atomic_load_explicit(&qword_280877DF0, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_280877DF0))
      {
        sub_2711D185C();
      }
    }

    sub_2717412A4(a1, byte_280877DD8, "trying to cast camera");
  }

  return result;
}

void *sub_2711C8764(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2 || (v3 = **v2, (result = __dynamic_cast(v2, &unk_2881240F8, &unk_2881241B0, 0)) == 0))
  {
    if ((atomic_load_explicit(&qword_280877DB0, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_280877DB0))
      {
        sub_2711D1ABC();
      }
    }

    sub_2717412A4(a1, byte_280877D98, "trying to cast camera");
  }

  return result;
}

void sub_2711C8868(_BYTE *a1)
{
  if (*a1 != 1)
  {
    if (!*a1)
    {
      v1 = xmmword_271858580;
      sub_2711CD758(&v2, &v1);
      operator new();
    }

    operator new();
  }

  v1 = xmmword_271858580;
  sub_2711CD758(&v2, &v1);
  operator new();
}

void sub_2711C8DDC(uint64_t a1)
{
  v2 = (*(**(a1 + 8) + 32))(*(a1 + 8));
  v3 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  v4 = (*(**(a1 + 8) + 24))(*(a1 + 8));
  if (v2 == 11)
  {
    if (v4 == 1)
    {
      if (v3)
      {
        v5 = sub_2711CB1B0(a1);
        v17 = v5[1];
        v49 = *(v5 + 20);
        v33 = v5[3];
        v41 = v5[4];
        v25 = v5[2];
        operator new();
      }

      v11 = sub_2711CB08C(a1);
      v21 = v11[1];
      v53 = *(v11 + 20);
      v37 = v11[3];
      v45 = v11[4];
      v29 = v11[2];
      operator new();
    }

    if (v3)
    {
      v9 = sub_2711C7F0C(a1);
      v27 = v9[2];
      v35 = v9[3];
      v19 = v9[1];
      v64 = *(v9 + 56);
      v51 = v9[5];
      v58 = v9[6];
      v43 = v9[4];
      operator new();
    }

    v14 = sub_2711C7E28(a1);
    v31 = v14[2];
    v39 = v14[3];
    v23 = v14[1];
    v67 = *(v14 + 56);
    v55 = v14[5];
    v61 = v14[6];
    v47 = v14[4];
    operator new();
  }

  if (v4 == 1)
  {
    v6 = *(a1 + 8);
    if (v3)
    {
      if (v6)
      {
        v7 = **v6;
        v8 = __dynamic_cast(v6, &unk_2881240F8, &unk_288124210, 0);
        if (v8)
        {
          v18 = v8[1];
          v42 = v8[4];
          v50 = v8[5];
          v26 = v8[2];
          v34 = v8[3];
          v63 = v8[7];
          v69 = v8[8];
          v57 = v8[6];
          v73 = *(v8 + 18);
          operator new();
        }
      }

      v16 = sub_2711CF16C();
    }

    else
    {
      if (v6)
      {
        v12 = **v6;
        v13 = __dynamic_cast(v6, &unk_2881240F8, &unk_288124228, 0);
        if (v13)
        {
          v22 = v13[1];
          v46 = v13[4];
          v54 = v13[5];
          v30 = v13[2];
          v38 = v13[3];
          v66 = v13[7];
          v71 = v13[8];
          v60 = v13[6];
          v75 = *(v13 + 18);
          operator new();
        }
      }

      v16 = sub_2711CEE38();
    }

    sub_2717412A4(a1, v16, "trying to cast camera");
  }

  if (v3)
  {
    v10 = sub_2711C8764(a1);
    v20 = v10[1];
    v44 = v10[4];
    v52 = v10[5];
    v28 = v10[2];
    v36 = v10[3];
    v70 = v10[8];
    v74 = v10[9];
    v65 = v10[7];
    v59 = v10[6];
    v83 = *(v10 + 104);
    v79 = v10[11];
    v81 = v10[12];
    v77 = v10[10];
    operator new();
  }

  v15 = sub_2711C8680(a1);
  v24 = v15[1];
  v48 = v15[4];
  v56 = v15[5];
  v32 = v15[2];
  v40 = v15[3];
  v72 = v15[8];
  v76 = v15[9];
  v68 = v15[7];
  v62 = v15[6];
  v84 = *(v15 + 104);
  v80 = v15[11];
  v82 = v15[12];
  v78 = v15[10];
  operator new();
}

void sub_2711C9BE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711C9C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C9C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C9C2C(uint64_t a1, uint64_t a2)
{
  v66 = *MEMORY[0x277D85DE8];
  if (*(a2 + 400) == 1)
  {
    if (*(a2 + 16) == 1)
    {
      v4 = *a2;
      v5 = *(a2 + 8);
      if (*(a2 + 56) != 1)
      {
LABEL_14:
        *&v29 = v4;
        BYTE8(v29) = v5;
        sub_27113523C(v30, (a2 + 32));
        v45 = &unk_28812E370;
        v46 = &unk_28812E3B8;
        v7 = *(a1 + 8);
        v6 = *(a1 + 16);
        v47 = &unk_288114818;
        v48 = v7;
        v49 = v6;
        if (v6)
        {
          atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
        }

        v50 = v29;
        sub_27113523C(v51, v30);
        v45 = &unk_28810C8D0;
        sub_2711D1F00();
      }
    }

    else
    {
      v45 = &unk_28810A440;
      v4 = sub_271815924();
      v5 = 2;
      if (*(a2 + 56) != 1)
      {
        goto LABEL_14;
      }
    }

    sub_2711DAE40((a2 + 32), 1000000000);
    goto LABEL_14;
  }

  LOBYTE(v17) = 0;
  LOBYTE(v18) = 0;
  LOBYTE(v19) = 0;
  v20 = 0;
  v21 = v17;
  v22 = v18;
  LOBYTE(v23) = 0;
  v24 = 0;
  LOBYTE(v25) = 0;
  v26 = 0;
  LOBYTE(v27) = 0;
  v28 = 0;
  sub_27113523C(&v52, &v19);
  *&v29 = sub_271815924();
  BYTE8(v29) = 2;
  LOBYTE(v30[0]) = 0;
  v31 = 0;
  if (v54 == 1)
  {
    *v30 = v52;
    v30[2] = v53;
    v53 = 0;
    v52 = 0uLL;
    v31 = 1;
  }

  v32 = v55;
  v33 = v56;
  LOBYTE(v34) = 0;
  v36 = 0;
  if (v59 == 1)
  {
    v34 = v57;
    v35 = v58;
    v58 = 0;
    v57 = 0uLL;
    v36 = 1;
    LOBYTE(v37) = 0;
    v41 = 0;
    if (v62 != 1)
    {
LABEL_9:
      LOBYTE(v42) = 0;
      v44 = 0;
      if ((v65 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }
  }

  else
  {
    LOBYTE(v37) = 0;
    v41 = 0;
    if (v62 != 1)
    {
      goto LABEL_9;
    }
  }

  _X0 = 0;
  _X1 = 0;
  v38 = v61;
  v37 = __p;
  v61 = 0;
  __p = 0uLL;
  __asm { CASPAL          X0, X1, X0, X1, [X9] }

  v39 = _X0;
  v40 = 0;
  v41 = 1;
  LOBYTE(v42) = 0;
  v44 = 0;
  if ((v65 & 1) == 0)
  {
LABEL_10:
    if (v62 != 1)
    {
      goto LABEL_22;
    }

LABEL_20:
    if (SHIBYTE(v61) < 0)
    {
      operator delete(__p);
    }

LABEL_22:
    if (v59 == 1 && SHIBYTE(v58) < 0)
    {
      operator delete(v57);
    }

    if (v54 == 1 && SHIBYTE(v53) < 0)
    {
      operator delete(v52);
    }

    v45 = &unk_28812E370;
    v46 = &unk_28812E3B8;
    v16 = *(a1 + 8);
    v15 = *(a1 + 16);
    v47 = &unk_288114818;
    v48 = v16;
    v49 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }

    v50 = v29;
    sub_27113523C(v51, v30);
    v45 = &unk_28810C8D0;
    sub_2711D1F00();
  }

LABEL_19:
  v42 = v63;
  v43 = v64;
  v64 = 0;
  v63 = 0uLL;
  v44 = 1;
  if (v62 != 1)
  {
    goto LABEL_22;
  }

  goto LABEL_20;
}

void sub_2711CAA2C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2711CAB30(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 440);
  v5 = *(a1 + 448);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v4)
  {
    v6 = **v4;
    v7 = __dynamic_cast(v4, &unk_28811D1B0, &unk_28811DCA8, 0) != 0;
    if (!v5)
    {
LABEL_8:
      if (v7)
      {
        goto LABEL_9;
      }

LABEL_16:
      v17 = 0;
      v18 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v7 = 0;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v7)
  {
    goto LABEL_16;
  }

LABEL_9:
  v8 = *(a1 + 440);
  v9 = *(a1 + 448);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = v8;
  v18 = v9;
  if (!v8)
  {
LABEL_17:
    v19 = *"cv3d.viz";
    v20 = 0x800000000000000;
    v21 = 5;
    sub_2711BE814(&v16, &v19, 1uLL);
    if (*(a1 + 23) < 0)
    {
      sub_271127178(v13, *a1, *(a1 + 8));
    }

    else
    {
      *v13 = *a1;
      v14 = *(a1 + 16);
    }

    v15 = *(a1 + 24);
    operator new();
  }

  v10 = *(v8 + 24);
  v11 = *(v8 + 32);
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = &unk_288114818;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;
  *(a2 + 120) = 1;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2711CAF38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void **a23)
{
  sub_2711BEA2C(&a23);
  if (*(v23 - 73) < 0)
  {
    operator delete(*(v23 - 96));
  }

  sub_27112F828(v23 - 112);
  _Unwind_Resume(a1);
}

void *sub_2711CB08C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2 || (v3 = **v2, (result = __dynamic_cast(v2, &unk_2881240F8, &unk_2881241F8, 0)) == 0))
  {
    if ((atomic_load_explicit(&qword_280877D50, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_280877D50))
      {
        sub_2711CB2D4();
      }
    }

    sub_2717412A4(a1, byte_280877D38, "trying to cast camera");
  }

  return result;
}

void *sub_2711CB1B0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2 || (v3 = **v2, (result = __dynamic_cast(v2, &unk_2881240F8, &unk_2881241E0, 0)) == 0))
  {
    if ((atomic_load_explicit(&qword_280877D10, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_280877D10))
      {
        sub_2711CD214();
      }
    }

    sub_2717412A4(a1, byte_280877CF8, "trying to cast camera");
  }

  return result;
}

void sub_2711CB3A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711CB3D8(const void **a1@<X0>, std::string *a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v12 = 7;
  strcpy(v11, "float32");
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

void sub_2711CB514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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

uint64_t sub_2711CB574(uint64_t a1, float64x2_t *a2)
{
  *a1 = &unk_288114AE8;
  v3 = *a2;
  *(a1 + 24) = a2[1];
  *(a1 + 8) = v3;
  __asm { FMOV            V0.2D, #1.0 }

  v9 = *a2;
  v10 = a2[1];
  v11 = vdivq_f64(_Q0, *a2);
  *(a1 + 40) = v11;
  *(a1 + 56) = vmulq_f64(v11, vnegq_f64(v10));
  *(a1 + 72) = v9.f64[0];
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 104) = v9.f64[1];
  *(a1 + 112) = 0;
  *(a1 + 120) = v10;
  *(a1 + 136) = 0x3FF0000000000000;
  sub_2711CB740(v15, (a1 + 8));
  v12 = v25;
  if (v25 == 1)
  {
    sub_271130094(v15);
    if (v25)
    {
      return a1;
    }
  }

  if (v24 != 1)
  {
    goto LABEL_10;
  }

  if (v23 != 1)
  {
    goto LABEL_7;
  }

  if (v22 < 0)
  {
    operator delete(v21);
    if ((v20 & 0x80000000) == 0)
    {
LABEL_7:
      if (v18 == 1)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }
  }

  else if ((v20 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(v19);
  if (v18 == 1)
  {
LABEL_8:
    if (v17 < 0)
    {
      operator delete(__p);
    }
  }

LABEL_10:
  if ((v12 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "PinholeModel parameters invalid");
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279E2F410, MEMORY[0x277D82610]);
  }

  return a1;
}

void sub_2711CB740(uint64_t a1, double *a2)
{
  v4 = (a2[2] & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (a2[3] & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  v5 = (a2[1] & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*a2 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  if (v5 && v4)
  {
    if (*a2 >= 0.00000001 && a2[1] >= 0.00000001)
    {
      *(a1 + 120) = 1;
      return;
    }

    v12 = 0x3E45798EE2308C3ALL;
    v46 = 0;
    v47 = v45;
    v48 = "focal length must be positive (>= ";
    v49 = v45;
    v50 = "focal length must be positive (>= ";
    v51 = "focal length must be positive (>= ";
    v52 = &v47;
    sub_2711CC468(&v52);
    sub_2711CC17C(&v44, v45, &v12);
    v47 = v45;
    v48 = ")";
    v49 = v45;
    v50 = ")";
    v51 = ")";
    if (v46 == -1)
    {
      sub_2711308D4();
    }

    v52 = &v47;
    (*(&off_28812E038 + v46))(&v52, v45);
    if (v46 == -1)
    {
      sub_2711308D4();
    }

    v47 = &v52;
    (off_28812E050[v46])(v13, &v47, v45);
    if (v46 != -1)
    {
      (off_28812DFD8[v46])(&v47, v45);
    }

    if (SHIBYTE(v14) < 0)
    {
      sub_271127178(v15, v13[0], v13[1]);
    }

    else
    {
      *v15 = *v13;
      v16 = v14;
    }

    v17 = 1;
    LOBYTE(v18) = 0;
    v22 = 0;
    v23 = 1;
    sub_2711CBCA8(0x16u, v15, &v33);
    *a1 = v33;
    *(a1 + 16) = 0;
    *(a1 + 112) = 0;
    if (v43 == 1)
    {
      *(a1 + 40) = 0;
      v9 = v36;
      if (v36 == 1)
      {
        *(a1 + 16) = __p;
        *(a1 + 32) = v35;
        v35 = 0;
        __p = 0uLL;
        *(a1 + 40) = 1;
        *(a1 + 48) = 0;
        v10 = a1 + 48;
        *(a1 + 104) = 0;
        if ((v42 & 1) == 0)
        {
LABEL_46:
          *(a1 + 112) = 1;
          *(a1 + 120) = 0;
          if (!v9)
          {
            goto LABEL_53;
          }

LABEL_51:
          if (SHIBYTE(v35) < 0)
          {
            operator delete(__p);
          }

          goto LABEL_53;
        }
      }

      else
      {
        *(a1 + 48) = 0;
        v10 = a1 + 48;
        *(a1 + 104) = 0;
        if ((v42 & 1) == 0)
        {
          goto LABEL_46;
        }
      }

      v11 = v39;
      *(v10 + 16) = v38;
      *v10 = v37;
      v37 = 0uLL;
      *(a1 + 72) = v11;
      *(a1 + 80) = v40;
      *(a1 + 96) = v41;
      v38 = 0;
      v40 = 0uLL;
      v41 = 0;
      *(a1 + 104) = 1;
      *(a1 + 112) = 1;
      *(a1 + 120) = 0;
      if (v9)
      {
        goto LABEL_51;
      }
    }

    else
    {
      *(a1 + 120) = 0;
    }

LABEL_53:
    if (v23 == 1)
    {
      if (v22 == 1)
      {
        if (v21 < 0)
        {
          operator delete(v20);
        }

        if (v19 < 0)
        {
          operator delete(v18);
        }
      }

      if (v17 == 1 && SHIBYTE(v16) < 0)
      {
        operator delete(v15[0]);
      }
    }

    if (SHIBYTE(v14) < 0)
    {
      operator delete(v13[0]);
    }

    return;
  }

  sub_2711CC04C(v24, "focal length and principal point must be finite");
  v32 = 1;
  sub_2711CBCA8(0x16u, v24, &v33);
  *a1 = v33;
  *(a1 + 16) = 0;
  *(a1 + 112) = 0;
  if (v43 != 1)
  {
    *(a1 + 120) = 0;
    goto LABEL_33;
  }

  *(a1 + 40) = 0;
  v6 = v36;
  if (v36 != 1)
  {
    *(a1 + 48) = 0;
    v7 = a1 + 48;
    *(a1 + 104) = 0;
    if ((v42 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_30:
    v8 = v39;
    *(v7 + 16) = v38;
    *v7 = v37;
    v37 = 0uLL;
    *(a1 + 72) = v8;
    *(a1 + 80) = v40;
    *(a1 + 96) = v41;
    v38 = 0;
    v40 = 0uLL;
    v41 = 0;
    *(a1 + 104) = 1;
    *(a1 + 112) = 1;
    *(a1 + 120) = 0;
    if (!v6)
    {
      goto LABEL_33;
    }

LABEL_31:
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__p);
    }

    goto LABEL_33;
  }

  *(a1 + 16) = __p;
  *(a1 + 32) = v35;
  v35 = 0;
  __p = 0uLL;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  v7 = a1 + 48;
  *(a1 + 104) = 0;
  if (v42)
  {
    goto LABEL_30;
  }

LABEL_20:
  *(a1 + 112) = 1;
  *(a1 + 120) = 0;
  if (v6)
  {
    goto LABEL_31;
  }

LABEL_33:
  if (v32 == 1)
  {
    if (v31 == 1)
    {
      if (v30 < 0)
      {
        operator delete(v29);
      }

      if (v28 < 0)
      {
        operator delete(v27);
      }
    }

    if (v26 == 1 && v25 < 0)
    {
      operator delete(v24[0]);
    }
  }
}

void sub_2711CBC14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711CBCA8(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LOBYTE(v8[0]) = 0;
  v16 = 0;
  if (*(a2 + 96) == 1)
  {
    sub_27112F6CC(v8, a2);
    v16 = 1;
  }

  sub_2711CBE94(&v17, a1, v8);
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

uint64_t sub_2711CBE94(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = std::generic_category();
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

void sub_2711CC038(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D66C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2711CC04C(uint64_t a1, char *__s)
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

  HIBYTE(v9) = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
    *(&__dst + v5) = 0;
    if ((SHIBYTE(v9) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v6 = __dst;
    sub_271127178(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = 1;
    *(a1 + 32) = 0;
    *(a1 + 88) = 0;
    operator delete(v6);
    return a1;
  }

  LOBYTE(__dst) = 0;
  if (SHIBYTE(v9) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v9;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 88) = 0;
  return a1;
}

void sub_2711CC17C(uint64_t a1, uint64_t a2, double *a3)
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

  v8 = &v6[-1].__r_.__value_.__r.__words[2] + 7;
  do
  {
    if (!size)
    {
      size = -1;
      if ((*(&v19.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        goto LABEL_14;
      }

LABEL_11:
      if (size != HIBYTE(v19.__r_.__value_.__r.__words[2]) - 1)
      {
        v5 = &v19;
        goto LABEL_17;
      }

LABEL_15:
      v20 = a2;
      p_p = &v19;
      v22 = a2;
      v23 = &v19;
      v24 = &v19;
      v10 = *(a2 + 24);
      if (v10 == -1)
      {
        sub_2711308D4();
      }

      goto LABEL_16;
    }

    v9 = v8[size--];
  }

  while (v9 == 48);
  if ((*(&v19.__r_.__value_.__s + 23) & 0x80) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  if (size == v19.__r_.__value_.__l.__size_ - 1)
  {
    goto LABEL_15;
  }

LABEL_17:
  if (strtod(v5, 0) != *a3)
  {
    v20 = a2;
    p_p = &v19;
    v22 = a2;
    v23 = &v19;
    v24 = &v19;
    v10 = *(a2 + 24);
    if (v10 == -1)
    {
      sub_2711308D4();
    }

LABEL_16:
    __p = &v20;
    (off_28812E008[v10])(&__p, a2);
    goto LABEL_38;
  }

  v11 = SHIBYTE(v19.__r_.__value_.__r.__words[2]);
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v19;
  }

  else
  {
    v12 = v19.__r_.__value_.__r.__words[0];
  }

  v13 = 1;
  if (v12->__r_.__value_.__s.__data_[size] == 46)
  {
    v13 = 2;
  }

  v14 = v13 + size;
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v11 = v19.__r_.__value_.__l.__size_;
  }

  if (v11 >= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v11;
  }

  if (v15 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (v15 >= 0x17)
  {
    operator new();
  }

  v18 = v15;
  if (v15)
  {
    memmove(&__p, v12, v15);
  }

  *(&__p + v15) = 0;
  v20 = a2;
  p_p = &__p;
  v22 = a2;
  v23 = &__p;
  v24 = &__p;
  v16 = *(a2 + 24);
  if (v16 == -1)
  {
    sub_2711308D4();
  }

  v25 = &v20;
  (off_28812E020[v16])(&v25, a2);
  if ((v18 & 0x80000000) == 0)
  {
LABEL_38:
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_41;
  }

  operator delete(__p);
  if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return;
  }

LABEL_41:
  operator delete(v19.__r_.__value_.__l.__data_);
}

void sub_2711CC3FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if ((a20 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

size_t sub_2711CC468(uint64_t **a1)
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

uint64_t **sub_2711CC55C(uint64_t **result)
{
  v1 = **result;
  v2 = (*result)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    result = (off_28812DFD8[v3])(&v5, v1);
  }

  *(v1 + 24) = -1;
  if (*(v2 + 23) < 0)
  {
    result = sub_271127178(v1, *v2, *(v2 + 1));
  }

  else
  {
    v4 = *v2;
    *(v1 + 16) = *(v2 + 2);
    *v1 = v4;
  }

  *(v1 + 24) = 1;
  return result;
}

uint64_t sub_2711CC608(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_2711CC82C(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    if (*(v3 + 23) < 0)
    {
      sub_271127178(*(a2 + 8), *v3, *(v3 + 8));
    }

    else
    {
      v5 = *v3;
      *(v4 + 16) = *(v3 + 16);
      *v4 = v5;
    }

    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

void sub_2711CC6A8(uint64_t *a1, uint64_t a2)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v16 + 7) = *(a2 + 15);
  v3 = *a2;
  v16[0] = *(a2 + 8);
  v4 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v11 = v3;
  *v12 = v16[0];
  *&v12[7] = *(v16 + 7);
  v13 = v4;
  memset(v16, 0, 15);
  v5 = a1[1];
  if (*(v5 + 23) < 0)
  {
    sub_271127178(&__p, *v5, *(v5 + 1));
  }

  else
  {
    v6 = *v5;
    v15 = *(v5 + 2);
    __p = v6;
  }

  v7 = *(v2 + 24);
  if (v7 != -1)
  {
    (off_28812DFD8[v7])(&v10, v2);
  }

  *(v2 + 24) = -1;
  sub_2711309E8(v2, &v11, 2uLL);
  *(v2 + 24) = 2;
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    operator delete(v11);
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v13 < 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_2711CC7E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2711CC82C(uint64_t a1, uint64_t a2)
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

void sub_2711CC96C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

void sub_2711CCA40(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106BD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2711CCAC0(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288114A88;
  v3 = *a2;
  *(a1 + 24) = *(a2 + 16);
  *(a1 + 8) = v3;
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  v6 = *(a2 + 64);
  *(a1 + 88) = *(a2 + 80);
  *(a1 + 72) = v6;
  *(a1 + 56) = v5;
  *(a1 + 40) = v4;
  v7 = *(a2 + 48) == 0.0;
  if (*(a2 + 56) != 0.0)
  {
    v7 = 0;
  }

  v8 = *(a2 + 64) == 0.0;
  __asm { FMOV            V0.2D, #1.0 }

  v14 = *a2;
  v15 = *(a2 + 16);
  v16 = vdivq_f64(_Q0, *a2);
  *(a1 + 96) = v16;
  *(a1 + 112) = vmulq_f64(v16, vnegq_f64(v15));
  *(a1 + 128) = v14.f64[0];
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0;
  *(a1 + 160) = v14.f64[1];
  *(a1 + 168) = 0;
  *(a1 + 176) = v15;
  *(a1 + 192) = 0x3FF0000000000000;
  *(a1 + 200) = v7 && v8;
  *(a1 + 201) = v8;
  sub_2711CCCD0(v20, a1 + 8);
  v17 = v30;
  if (v30 != 1 || (sub_271130094(v20), (v30 & 1) == 0))
  {
    if (v29 != 1)
    {
      goto LABEL_12;
    }

    if (v28 != 1)
    {
      goto LABEL_9;
    }

    if (v27 < 0)
    {
      operator delete(v26);
      if ((v25 & 0x80000000) == 0)
      {
LABEL_9:
        if (v23 == 1)
        {
          goto LABEL_10;
        }

        goto LABEL_12;
      }
    }

    else if ((v25 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    operator delete(v24);
    if (v23 == 1)
    {
LABEL_10:
      if (v22 < 0)
      {
        operator delete(__p);
      }
    }

LABEL_12:
    if ((v17 & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "HeikkilaModel parameters invalid");
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, off_279E2F410, MEMORY[0x277D82610]);
    }
  }

  return a1;
}

void sub_2711CCCD0(uint64_t a1, uint64_t a2)
{
  sub_2711CB740(a1, a2);
  if (*(a1 + 120) != 1)
  {
    return;
  }

  v4 = (*(a2 + 32) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  if ((*(a2 + 32) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v4 = (*(a2 + 40) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
    if ((*(a2 + 40) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v4 = (*(a2 + 48) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
      if ((*(a2 + 48) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v4 = (*(a2 + 56) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
        if ((*(a2 + 56) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v4 = (*(a2 + 64) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
        }
      }
    }
  }

  if (v4)
  {
    if ((*(a2 + 72) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      *(a1 + 120) = 1;
      return;
    }

    sub_2711CC04C(v11, "convergence epsilon must be finite");
    v19 = 1;
    sub_2711CBCA8(0x16u, v11, &v29);
    *a1 = v29;
    *(a1 + 16) = 0;
    *(a1 + 112) = 0;
    if (v39 != 1)
    {
      *(a1 + 120) = 0;
      goto LABEL_40;
    }

    *(a1 + 40) = 0;
    v5 = v32;
    if (v32 == 1)
    {
      *(a1 + 16) = v30;
      *(a1 + 32) = v31;
      v31 = 0;
      v30 = 0uLL;
      *(a1 + 40) = 1;
      *(a1 + 48) = 0;
      v6 = a1 + 48;
      *(a1 + 104) = 0;
      if ((v38 & 1) == 0)
      {
LABEL_12:
        *(a1 + 112) = 1;
        *(a1 + 120) = 0;
        if (!v5)
        {
LABEL_40:
          if (v19 == 1)
          {
            if (v18 == 1)
            {
              if (v17 < 0)
              {
                operator delete(v16);
              }

              if (v15 < 0)
              {
                operator delete(v14);
              }
            }

            if (v13 == 1 && v12 < 0)
            {
              operator delete(v11[0]);
            }
          }

          return;
        }

LABEL_38:
        if (SHIBYTE(v31) < 0)
        {
          operator delete(v30);
        }

        goto LABEL_40;
      }
    }

    else
    {
      *(a1 + 48) = 0;
      v6 = a1 + 48;
      *(a1 + 104) = 0;
      if ((v38 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v10 = v35;
    *(v6 + 16) = v34;
    *v6 = v33;
    v33 = 0uLL;
    *(a1 + 72) = v10;
    *(a1 + 80) = v36;
    *(a1 + 96) = v37;
    v34 = 0;
    v36 = 0uLL;
    v37 = 0;
    *(a1 + 104) = 1;
    *(a1 + 112) = 1;
    *(a1 + 120) = 0;
    if (!v5)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  sub_2711CC04C(v20, "distortion coefficients must be finite");
  v28 = 1;
  sub_2711CBCA8(0x16u, v20, &v29);
  *a1 = v29;
  *(a1 + 16) = 0;
  *(a1 + 112) = 0;
  if (v39 != 1)
  {
    *(a1 + 120) = 0;
    goto LABEL_27;
  }

  *(a1 + 40) = 0;
  v7 = v32;
  if (v32 != 1)
  {
    *(a1 + 48) = 0;
    v8 = a1 + 48;
    *(a1 + 104) = 0;
    if ((v38 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_24:
    v9 = v35;
    *(v8 + 16) = v34;
    *v8 = v33;
    v33 = 0uLL;
    *(a1 + 72) = v9;
    *(a1 + 80) = v36;
    *(a1 + 96) = v37;
    v34 = 0;
    v36 = 0uLL;
    v37 = 0;
    *(a1 + 104) = 1;
    *(a1 + 112) = 1;
    *(a1 + 120) = 0;
    if (!v7)
    {
      goto LABEL_27;
    }

LABEL_25:
    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30);
    }

    goto LABEL_27;
  }

  *(a1 + 16) = v30;
  *(a1 + 32) = v31;
  v31 = 0;
  v30 = 0uLL;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  v8 = a1 + 48;
  *(a1 + 104) = 0;
  if (v38)
  {
    goto LABEL_24;
  }

LABEL_17:
  *(a1 + 112) = 1;
  *(a1 + 120) = 0;
  if (v7)
  {
    goto LABEL_25;
  }

LABEL_27:
  if (v28 == 1)
  {
    if (v27 == 1)
    {
      if (v26 < 0)
      {
        operator delete(__p);
      }

      if (v24 < 0)
      {
        operator delete(v23);
      }
    }

    if (v22 == 1 && v21 < 0)
    {
      operator delete(v20[0]);
    }
  }
}

void sub_2711CD0B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D66C(va);
  _Unwind_Resume(a1);
}

void sub_2711CD0C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_27112D66C(va);
  _Unwind_Resume(a1);
}

void sub_2711CD198(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106AF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2711CD2E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711CD318(const void **a1@<X0>, std::string *a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v12 = 7;
  strcpy(v11, "float32");
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

void sub_2711CD454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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

void sub_2711CD570(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106B98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2711CD6AC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106AB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

float32x2_t *sub_2711CD758(float32x2_t *a1, float32x2_t *a2)
{
  *a1 = &unk_288114AB8;
  *a1[1].f32 = *a2->f32;
  __asm { FMOV            V0.2S, #1.0 }

  v8 = *a2;
  v9 = a2[1];
  v10 = vdiv_f32(_D0, *a2);
  a1[3] = v10;
  a1[4] = vmul_f32(v10, vneg_f32(v9));
  a1[5].i32[0] = v8.i32[0];
  a1[6] = 0;
  a1[5].i32[1] = 0;
  a1[7].i32[0] = v8.i32[1];
  a1[7].i32[1] = 0;
  a1[8] = v9;
  a1[9].i32[0] = 1065353216;
  sub_2711CD91C(v14, &a1[1]);
  v11 = v24;
  if (v24 == 1)
  {
    sub_271130094(v14);
    if (v24)
    {
      return a1;
    }
  }

  if (v23 != 1)
  {
    goto LABEL_10;
  }

  if (v22 != 1)
  {
    goto LABEL_7;
  }

  if (v21 < 0)
  {
    operator delete(v20);
    if ((v19 & 0x80000000) == 0)
    {
LABEL_7:
      if (v17 == 1)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }
  }

  else if ((v19 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(v18);
  if (v17 == 1)
  {
LABEL_8:
    if (v16 < 0)
    {
      operator delete(__p);
    }
  }

LABEL_10:
  if ((v11 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "PinholeModel parameters invalid");
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279E2F410, MEMORY[0x277D82610]);
  }

  return a1;
}

void sub_2711CD91C(uint64_t a1, float *a2)
{
  v4 = (a2[2] & 0x7FFFFFFFu) < 0x7F800000 && (a2[3] & 0x7FFFFFFFu) < 0x7F800000;
  v5 = (a2[1] & 0x7FFFFFFFu) < 0x7F800000 && (*a2 & 0x7FFFFFFFu) < 0x7F800000;
  if (v5 && v4)
  {
    if (*a2 >= 0.000001 && a2[1] >= 0.000001)
    {
      *(a1 + 120) = 1;
      return;
    }

    v13 = 897988541;
    v47 = 0;
    v48 = v46;
    v49 = "focal length must be positive (>= ";
    v50 = v46;
    v51 = "focal length must be positive (>= ";
    v52 = "focal length must be positive (>= ";
    v53 = &v48;
    sub_2711CC468(&v53);
    sub_2711CDE78(&v45, v46, &v13);
    v48 = v46;
    v49 = ")";
    v50 = v46;
    v51 = ")";
    v52 = ")";
    if (v47 == -1)
    {
      sub_2711308D4();
    }

    v53 = &v48;
    (*(&off_28812E038 + v47))(&v53, v46);
    if (v47 == -1)
    {
      sub_2711308D4();
    }

    v48 = &v53;
    (off_28812E050[v47])(v14, &v48, v46);
    if (v47 != -1)
    {
      (off_28812DFD8[v47])(&v48, v46);
    }

    if (SHIBYTE(v15) < 0)
    {
      sub_271127178(v16, v14[0], v14[1]);
    }

    else
    {
      *v16 = *v14;
      v17 = v15;
    }

    v18 = 1;
    LOBYTE(v19) = 0;
    v23 = 0;
    v24 = 1;
    sub_2711CBCA8(0x16u, v16, &v34);
    *a1 = v34;
    *(a1 + 16) = 0;
    *(a1 + 112) = 0;
    if (v44 == 1)
    {
      *(a1 + 40) = 0;
      v10 = v37;
      if (v37 == 1)
      {
        *(a1 + 16) = v35;
        *(a1 + 32) = v36;
        v36 = 0;
        v35 = 0uLL;
        *(a1 + 40) = 1;
        *(a1 + 48) = 0;
        v11 = a1 + 48;
        *(a1 + 104) = 0;
        if ((v43 & 1) == 0)
        {
LABEL_48:
          *(a1 + 112) = 1;
          *(a1 + 120) = 0;
          if (!v10)
          {
            goto LABEL_55;
          }

LABEL_53:
          if (SHIBYTE(v36) < 0)
          {
            operator delete(v35);
          }

          goto LABEL_55;
        }
      }

      else
      {
        *(a1 + 48) = 0;
        v11 = a1 + 48;
        *(a1 + 104) = 0;
        if ((v43 & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      v12 = v40;
      *(v11 + 16) = v39;
      *v11 = v38;
      v39 = 0;
      v38 = 0uLL;
      *(a1 + 72) = v12;
      *(a1 + 80) = v41;
      *(a1 + 96) = v42;
      v41 = 0uLL;
      v42 = 0;
      *(a1 + 104) = 1;
      *(a1 + 112) = 1;
      *(a1 + 120) = 0;
      if (v10)
      {
        goto LABEL_53;
      }
    }

    else
    {
      *(a1 + 120) = 0;
    }

LABEL_55:
    if (v24 == 1)
    {
      if (v23 == 1)
      {
        if (v22 < 0)
        {
          operator delete(__p);
        }

        if (v20 < 0)
        {
          operator delete(v19);
        }
      }

      if (v18 == 1 && SHIBYTE(v17) < 0)
      {
        operator delete(v16[0]);
      }
    }

    if (SHIBYTE(v15) < 0)
    {
      operator delete(v14[0]);
    }

    return;
  }

  sub_2711CC04C(v25, "focal length and principal point must be finite");
  v33 = 1;
  sub_2711CBCA8(0x16u, v25, &v34);
  *a1 = v34;
  *(a1 + 16) = 0;
  *(a1 + 112) = 0;
  if (v44 != 1)
  {
    *(a1 + 120) = 0;
    goto LABEL_35;
  }

  *(a1 + 40) = 0;
  v7 = v37;
  if (v37 != 1)
  {
    *(a1 + 48) = 0;
    v8 = a1 + 48;
    *(a1 + 104) = 0;
    if ((v43 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_32:
    v9 = v40;
    *(v8 + 16) = v39;
    *v8 = v38;
    v39 = 0;
    v38 = 0uLL;
    *(a1 + 72) = v9;
    *(a1 + 80) = v41;
    *(a1 + 96) = v42;
    v41 = 0uLL;
    v42 = 0;
    *(a1 + 104) = 1;
    *(a1 + 112) = 1;
    *(a1 + 120) = 0;
    if (!v7)
    {
      goto LABEL_35;
    }

LABEL_33:
    if (SHIBYTE(v36) < 0)
    {
      operator delete(v35);
    }

    goto LABEL_35;
  }

  *(a1 + 16) = v35;
  *(a1 + 32) = v36;
  v36 = 0;
  v35 = 0uLL;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  v8 = a1 + 48;
  *(a1 + 104) = 0;
  if (v43)
  {
    goto LABEL_32;
  }

LABEL_27:
  *(a1 + 112) = 1;
  *(a1 + 120) = 0;
  if (v7)
  {
    goto LABEL_33;
  }

LABEL_35:
  if (v33 == 1)
  {
    if (v32 == 1)
    {
      if (v31 < 0)
      {
        operator delete(v30);
      }

      if (v29 < 0)
      {
        operator delete(v28);
      }
    }

    if (v27 == 1 && v26 < 0)
    {
      operator delete(v25[0]);
    }
  }
}

void sub_2711CDDE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711CDE78(uint64_t a1, uint64_t a2, float *a3)
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

  v8 = &v6[-1].__r_.__value_.__r.__words[2] + 7;
  do
  {
    if (!size)
    {
      size = -1;
      if ((*(&v19.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        goto LABEL_14;
      }

LABEL_11:
      if (size != HIBYTE(v19.__r_.__value_.__r.__words[2]) - 1)
      {
        v5 = &v19;
        goto LABEL_17;
      }

LABEL_15:
      v20 = a2;
      p_p = &v19;
      v22 = a2;
      v23 = &v19;
      v24 = &v19;
      v10 = *(a2 + 24);
      if (v10 == -1)
      {
        sub_2711308D4();
      }

      goto LABEL_16;
    }

    v9 = v8[size--];
  }

  while (v9 == 48);
  if ((*(&v19.__r_.__value_.__s + 23) & 0x80) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  if (size == v19.__r_.__value_.__l.__size_ - 1)
  {
    goto LABEL_15;
  }

LABEL_17:
  if (strtof(v5, 0) != *a3)
  {
    v20 = a2;
    p_p = &v19;
    v22 = a2;
    v23 = &v19;
    v24 = &v19;
    v10 = *(a2 + 24);
    if (v10 == -1)
    {
      sub_2711308D4();
    }

LABEL_16:
    __p = &v20;
    (off_28812E008[v10])(&__p, a2);
    goto LABEL_38;
  }

  v11 = SHIBYTE(v19.__r_.__value_.__r.__words[2]);
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v19;
  }

  else
  {
    v12 = v19.__r_.__value_.__r.__words[0];
  }

  v13 = 1;
  if (v12->__r_.__value_.__s.__data_[size] == 46)
  {
    v13 = 2;
  }

  v14 = v13 + size;
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v11 = v19.__r_.__value_.__l.__size_;
  }

  if (v11 >= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v11;
  }

  if (v15 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (v15 >= 0x17)
  {
    operator new();
  }

  v18 = v15;
  if (v15)
  {
    memmove(&__p, v12, v15);
  }

  *(&__p + v15) = 0;
  v20 = a2;
  p_p = &__p;
  v22 = a2;
  v23 = &__p;
  v24 = &__p;
  v16 = *(a2 + 24);
  if (v16 == -1)
  {
    sub_2711308D4();
  }

  v25 = &v20;
  (off_28812E020[v16])(&v25, a2);
  if ((v18 & 0x80000000) == 0)
  {
LABEL_38:
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_41;
  }

  operator delete(__p);
  if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return;
  }

LABEL_41:
  operator delete(v19.__r_.__value_.__l.__data_);
}

void sub_2711CE0F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if ((a20 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_2711CE184(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106B28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2711CE250(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106B60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2711CE500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  v23 = *(v21 - 56);
  *(v21 - 56) = 0;
  if (!v23)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27184D728(v21 - 56, v23);
  _Unwind_Resume(exception_object);
}

void sub_2711CE574(uint64_t a1, uint64_t a2)
{
  sub_2711CD91C(a1, a2);
  if (*(a1 + 120) != 1)
  {
    return;
  }

  v4 = (*(a2 + 16) & 0x7FFFFFFFu) < 0x7F800000;
  if ((*(a2 + 16) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    v4 = (*(a2 + 20) & 0x7FFFFFFFu) < 0x7F800000;
    if ((*(a2 + 20) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      v4 = (*(a2 + 24) & 0x7FFFFFFFu) < 0x7F800000;
      if ((*(a2 + 24) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
      {
        v4 = (*(a2 + 28) & 0x7FFFFFFFu) < 0x7F800000;
        if ((*(a2 + 28) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
        {
          v4 = (*(a2 + 32) & 0x7FFFFFFFu) < 0x7F800000;
        }
      }
    }
  }

  if (v4)
  {
    if ((*(a2 + 36) & 0x7FFFFFFFu) < 0x7F800000)
    {
      *(a1 + 120) = 1;
      return;
    }

    sub_2711CC04C(v11, "convergence epsilon must be finite");
    v19 = 1;
    sub_2711CBCA8(0x16u, v11, &v29);
    *a1 = v29;
    *(a1 + 16) = 0;
    *(a1 + 112) = 0;
    if (v39 != 1)
    {
      *(a1 + 120) = 0;
      goto LABEL_40;
    }

    *(a1 + 40) = 0;
    v5 = v32;
    if (v32 == 1)
    {
      *(a1 + 16) = v30;
      *(a1 + 32) = v31;
      v31 = 0;
      v30 = 0uLL;
      *(a1 + 40) = 1;
      *(a1 + 48) = 0;
      v6 = a1 + 48;
      *(a1 + 104) = 0;
      if ((v38 & 1) == 0)
      {
LABEL_12:
        *(a1 + 112) = 1;
        *(a1 + 120) = 0;
        if (!v5)
        {
LABEL_40:
          if (v19 == 1)
          {
            if (v18 == 1)
            {
              if (v17 < 0)
              {
                operator delete(v16);
              }

              if (v15 < 0)
              {
                operator delete(v14);
              }
            }

            if (v13 == 1 && v12 < 0)
            {
              operator delete(v11[0]);
            }
          }

          return;
        }

LABEL_38:
        if (SHIBYTE(v31) < 0)
        {
          operator delete(v30);
        }

        goto LABEL_40;
      }
    }

    else
    {
      *(a1 + 48) = 0;
      v6 = a1 + 48;
      *(a1 + 104) = 0;
      if ((v38 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v10 = v35;
    *(v6 + 16) = v34;
    *v6 = v33;
    v33 = 0uLL;
    *(a1 + 72) = v10;
    *(a1 + 80) = v36;
    *(a1 + 96) = v37;
    v34 = 0;
    v36 = 0uLL;
    v37 = 0;
    *(a1 + 104) = 1;
    *(a1 + 112) = 1;
    *(a1 + 120) = 0;
    if (!v5)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  sub_2711CC04C(v20, "distortion coefficients must be finite");
  v28 = 1;
  sub_2711CBCA8(0x16u, v20, &v29);
  *a1 = v29;
  *(a1 + 16) = 0;
  *(a1 + 112) = 0;
  if (v39 != 1)
  {
    *(a1 + 120) = 0;
    goto LABEL_27;
  }

  *(a1 + 40) = 0;
  v7 = v32;
  if (v32 != 1)
  {
    *(a1 + 48) = 0;
    v8 = a1 + 48;
    *(a1 + 104) = 0;
    if ((v38 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_24:
    v9 = v35;
    *(v8 + 16) = v34;
    *v8 = v33;
    v33 = 0uLL;
    *(a1 + 72) = v9;
    *(a1 + 80) = v36;
    *(a1 + 96) = v37;
    v34 = 0;
    v36 = 0uLL;
    v37 = 0;
    *(a1 + 104) = 1;
    *(a1 + 112) = 1;
    *(a1 + 120) = 0;
    if (!v7)
    {
      goto LABEL_27;
    }

LABEL_25:
    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30);
    }

    goto LABEL_27;
  }

  *(a1 + 16) = v30;
  *(a1 + 32) = v31;
  v31 = 0;
  v30 = 0uLL;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  v8 = a1 + 48;
  *(a1 + 104) = 0;
  if (v38)
  {
    goto LABEL_24;
  }

LABEL_17:
  *(a1 + 112) = 1;
  *(a1 + 120) = 0;
  if (v7)
  {
    goto LABEL_25;
  }

LABEL_27:
  if (v28 == 1)
  {
    if (v27 == 1)
    {
      if (v26 < 0)
      {
        operator delete(__p);
      }

      if (v24 < 0)
      {
        operator delete(v23);
      }
    }

    if (v22 == 1 && v21 < 0)
    {
      operator delete(v20[0]);
    }
  }
}