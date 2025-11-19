void sub_27117C85C(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_280877830);
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  _Unwind_Resume(a1);
}

double sub_27117C900()
{
  *(&__p.__r_.__value_.__s + 23) = 8;
  strcpy(&__p, "VZLines3");
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
  xmmword_28087A4F8 = v7;
  unk_28087A508 = v8;
  return result;
}

void sub_27117CB20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27117CB60(uint64_t **a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087A4A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A4A0))
  {
    sub_2718519B4("VZLines2]", 8uLL, qword_28087A510);
    __cxa_guard_release(&qword_28087A4A0);
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

  sub_27112E0C4(qword_28087A510, &v20, &v9, **a1);
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

void sub_27117CDE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

uint64_t sub_27117CE38(uint64_t result)
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

void sub_27117CEB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D71C(va);
  _Unwind_Resume(a1);
}

void sub_27117CEC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D71C(va);
  __cxa_free_exception(v2);
  _Unwind_Resume(a1);
}

void sub_27117CEF4()
{
  if ((atomic_load_explicit(&qword_28087A4A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A4A0))
  {
    sub_2718519B4("VZLines2]", 8uLL, qword_28087A510);

    __cxa_guard_release(&qword_28087A4A0);
  }
}

void sub_27117CF84(uint64_t **a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087A4A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A4A8))
  {
    sub_2718519B4("VZLines3]", 8uLL, qword_28087A528);
    __cxa_guard_release(&qword_28087A4A8);
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

  sub_27112E0C4(qword_28087A528, &v20, &v9, **a1);
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

void sub_27117D20C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

uint64_t sub_27117D25C(uint64_t result)
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

void sub_27117D2D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D71C(va);
  _Unwind_Resume(a1);
}

void sub_27117D2E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D71C(va);
  __cxa_free_exception(v2);
  _Unwind_Resume(a1);
}

void sub_27117D318()
{
  if ((atomic_load_explicit(&qword_28087A4A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A4A8))
  {
    sub_2718519B4("VZLines3]", 8uLL, qword_28087A528);

    __cxa_guard_release(&qword_28087A4A8);
  }
}

void sub_27117D3A8(uint64_t **a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087A4A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A4A0))
  {
    sub_2718519B4("VZLines2]", 8uLL, qword_28087A510);
    __cxa_guard_release(&qword_28087A4A0);
  }

  if ((atomic_load_explicit(&qword_2808778F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808778F0))
  {
    sub_271138A14(&xmmword_2808778D8);
    __cxa_guard_release(&qword_2808778F0);
  }

  if (byte_2808778EF < 0)
  {
    sub_271127178(&v23, xmmword_2808778D8, *(&xmmword_2808778D8 + 1));
  }

  else
  {
    v23 = xmmword_2808778D8;
    v24 = unk_2808778E8;
  }

  if ((atomic_load_explicit(&qword_280877910, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877910))
  {
    sub_271138D60(&xmmword_2808778F8);
    __cxa_guard_release(&qword_280877910);
  }

  if (byte_28087790F < 0)
  {
    sub_271127178(&v25, xmmword_2808778F8, *(&xmmword_2808778F8 + 1));
  }

  else
  {
    v25 = xmmword_2808778F8;
    v26 = unk_280877908;
  }

  if ((atomic_load_explicit(&qword_280877A30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877A30))
  {
    sub_2718519B4("cv3d::kit::ArithmeticType]", 0x19uLL, &xmmword_280877A18);
    __cxa_guard_release(&qword_280877A30);
  }

  if (byte_280877A2F < 0)
  {
    sub_271127178(&v27, xmmword_280877A18, *(&xmmword_280877A18 + 1));
  }

  else
  {
    v27 = xmmword_280877A18;
    v28 = unk_280877A28;
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

  sub_27112E0C4(qword_28087A510, &v21, &v10, **a1);
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

void sub_27117D748(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_280877A30);
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

void sub_27117D848(uint64_t **a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087A4A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A4A8))
  {
    sub_2718519B4("VZLines3]", 8uLL, qword_28087A528);
    __cxa_guard_release(&qword_28087A4A8);
  }

  if ((atomic_load_explicit(&qword_2808778F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808778F0))
  {
    sub_271138A14(&xmmword_2808778D8);
    __cxa_guard_release(&qword_2808778F0);
  }

  if (byte_2808778EF < 0)
  {
    sub_271127178(&v23, xmmword_2808778D8, *(&xmmword_2808778D8 + 1));
  }

  else
  {
    v23 = xmmword_2808778D8;
    v24 = unk_2808778E8;
  }

  if ((atomic_load_explicit(&qword_280877910, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877910))
  {
    sub_271138D60(&xmmword_2808778F8);
    __cxa_guard_release(&qword_280877910);
  }

  if (byte_28087790F < 0)
  {
    sub_271127178(&v25, xmmword_2808778F8, *(&xmmword_2808778F8 + 1));
  }

  else
  {
    v25 = xmmword_2808778F8;
    v26 = unk_280877908;
  }

  if ((atomic_load_explicit(&qword_280877A30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877A30))
  {
    sub_2718519B4("cv3d::kit::ArithmeticType]", 0x19uLL, &xmmword_280877A18);
    __cxa_guard_release(&qword_280877A30);
  }

  if (byte_280877A2F < 0)
  {
    sub_271127178(&v27, xmmword_280877A18, *(&xmmword_280877A18 + 1));
  }

  else
  {
    v27 = xmmword_280877A18;
    v28 = unk_280877A28;
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

  sub_27112E0C4(qword_28087A528, &v21, &v10, **a1);
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

void sub_27117DBE8(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_280877A30);
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

void *sub_27117DCE8(void *a1)
{
  v2 = a1[8];
  a1[8] = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = a1[6];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[3];
  if (!v4 || atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  return a1;
}

void sub_27117DDDC(void *a1)
{
  v2 = a1[7];
  a1[7] = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = a1[5];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = a1[2];
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = a1[2];
    if (!v4)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_27117DEE0(void *a1)
{
  v2 = a1[8];
  a1[8] = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = a1[6];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[3];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  JUMPOUT(0x2743BF050);
}

void sub_27117DFE4(void *a1)
{
  v2 = a1[7];
  a1[7] = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = a1[5];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[2];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  JUMPOUT(0x2743BF050);
}

void *sub_27117E0E8(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    v3 = a1[10];
    v4 = a1[9];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        v3 -= 2;
        if (v5 == 1)
        {
          v6 = *v3;
          *v3 = 0;
          if (v6)
          {
            (*(*v6 + 24))(v6);
          }
        }
      }

      while (v3 != v2);
      v4 = a1[9];
    }

    a1[10] = v2;
    operator delete(v4);
  }

  a1[4] = &unk_28812D848;
  a1[5] = &unk_288131488;
  v7 = a1[7];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  a1[1] = &unk_288131488;
  v8 = a1[3];
  if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return a1;
}

void sub_27117E28C(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    v3 = a1[9];
    v4 = a1[8];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        v3 -= 2;
        if (v5 == 1)
        {
          v6 = *v3;
          *v3 = 0;
          if (v6)
          {
            (*(*v6 + 24))(v6);
          }
        }
      }

      while (v3 != v2);
      v4 = a1[8];
    }

    a1[9] = v2;
    operator delete(v4);
  }

  a1[3] = &unk_28812D848;
  a1[4] = &unk_288131488;
  v7 = a1[6];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    *a1 = &unk_288131488;
    v8 = a1[2];
    if (!v8)
    {
      return;
    }
  }

  else
  {
    *a1 = &unk_288131488;
    v8 = a1[2];
    if (!v8)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);

    std::__shared_weak_count::__release_weak(v8);
  }
}

void sub_27117E458(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = a1[6];
    v4 = a1[5];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        v3 -= 2;
        if (v5 == 1)
        {
          v6 = *v3;
          *v3 = 0;
          if (v6)
          {
            (*(*v6 + 24))(v6);
          }
        }
      }

      while (v3 != v2);
      v4 = a1[5];
    }

    a1[6] = v2;
    operator delete(v4);
  }

  *a1 = &unk_28812D848;
  a1[1] = &unk_288131488;
  v7 = a1[3];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    *(a1 - 3) = &unk_288131488;
    v8 = *(a1 - 1);
    if (!v8)
    {
      return;
    }
  }

  else
  {
    *(a1 - 3) = &unk_288131488;
    v8 = *(a1 - 1);
    if (!v8)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);

    std::__shared_weak_count::__release_weak(v8);
  }
}

void sub_27117E624(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    v3 = a1[10];
    v4 = a1[9];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        v3 -= 2;
        if (v5 == 1)
        {
          v6 = *v3;
          *v3 = 0;
          if (v6)
          {
            (*(*v6 + 24))(v6);
          }
        }
      }

      while (v3 != v2);
      v4 = a1[9];
    }

    a1[10] = v2;
    operator delete(v4);
  }

  a1[4] = &unk_28812D848;
  a1[5] = &unk_288131488;
  v7 = a1[7];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  a1[1] = &unk_288131488;
  v8 = a1[3];
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t VZLogMessageGetTypeID()
{
  if (atomic_load_explicit(&qword_28087A558, memory_order_acquire))
  {
    return qword_28087A550;
  }

  if (__cxa_guard_acquire(&qword_28087A558))
  {
    qword_28087A550 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087A558);
  }

  return qword_28087A550;
}

uint64_t VZLogMessageCreateFromContextIDString(char *a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (!sub_271146460("VZLogMessageCreateFromContextIDString", a1, 0) && !sub_271133B3C("VZLogMessageCreateFromContextIDString", a2, 0))
  {
    v6 = strlen(a1);
    sub_27117ECD4(a1, v6, a2 + 32);
  }

  result = 0;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27117EC60(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_2808778D0);
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27117ECD4(char *a1, size_t a2, uint64_t a3)
{
  sub_2714F9B88(a1, a2, v6);
  v4 = *(a3 + 448);
  v5 = *(a3 + 440);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_27117F01C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_27112F828(v2 - 64);
  sub_2714FBE4C(va);
  sub_271181F68(va1);
  _Unwind_Resume(a1);
}

void sub_27117F040(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_2714FBE4C(va);
  sub_271181F68(va1);
  _Unwind_Resume(a1);
}

const char *VZLogMessageGetSubloggerName(uint64_t a1)
{
  if (sub_27115629C("VZLogMessageGetSubloggerName", a1, 0))
  {
    return "";
  }

  result = **(a1 + 16);
  if (result[23] < 0)
  {
    return *result;
  }

  return result;
}

const char *VZLogMessageGetNamespace(uint64_t a1)
{
  if (sub_27115629C("VZLogMessageGetNamespace", a1, 0))
  {
    return "";
  }

  v3 = **(a1 + 16);
  if (*(v3 + 48) != 1)
  {
    return 0;
  }

  result = (v3 + 24);
  if (*(v3 + 47) < 0)
  {
    return *result;
  }

  return result;
}

const char *VZLogMessageGetContextIDString(uint64_t a1)
{
  if (sub_27115629C("VZLogMessageGetContextIDString", a1, 0))
  {
    return "";
  }

  result = sub_2713963D8((a1 + 16));
  if (result[23] < 0)
  {
    return *result;
  }

  return result;
}

uint64_t VZLogMessageGetData(void *a1)
{
  v36 = *MEMORY[0x277D85DE8];
  if (sub_27115629C("VZLogMessageGetData", a1, 0))
  {
LABEL_2:
    result = 0;
    v3 = *MEMORY[0x277D85DE8];
    return result;
  }

  result = a1[8];
  if (!result)
  {
    v5 = a1[5];
    v4 = a1[6];
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
      goto LABEL_2;
    }

    v7 = a1[5];
    v6 = a1[6];
    v8 = operator new(0x250uLL, MEMORY[0x277D826F0]);
    if (v8)
    {
      v9 = v8;
      *v8 = &unk_288117810;
      v10 = (v8 + 4);
      v32[0] = off_28810C940;
      v32[1] = v7;
      v33 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_2711DA974(v10, v32);
      v11 = v33;
      if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }

      *(v9 + 568) = 1;
      *v9 = &unk_288119208;
      *(v9 + 16) = &unk_288119258;
      *(v9 + 576) = 0u;
      off_288119218(v9);
      v12 = 0;
      v13 = a1[8];
      a1[8] = v9;
      if (!v13)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if ((atomic_load_explicit(&qword_280877850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877850))
      {
        sub_2718519B4("VZData]", 6uLL, qword_280877838);
        __cxa_guard_release(&qword_280877850);
      }

      if ((atomic_load_explicit(&qword_28087A548, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A548))
      {
        sub_271181FDC();
        __cxa_guard_release(&qword_28087A548);
      }

      if (byte_28087A5AF < 0)
      {
        sub_271127178(&v34, xmmword_28087A598, *(&xmmword_28087A598 + 1));
      }

      else
      {
        v34 = xmmword_28087A598;
        v35 = unk_28087A5A8;
      }

      sub_2711309E8(&v30, &v34, 1uLL);
      LOBYTE(v19) = 0;
      v29 = 0;
      sub_27112E0C4(qword_280877838, &v30, &v19, 0);
      if (v29 == 1 && v28 == 1)
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
          operator delete(v20);
        }
      }

      v15 = v30;
      if (v30)
      {
        v16 = v31;
        v17 = v30;
        if (v31 != v30)
        {
          do
          {
            v18 = *(v16 - 1);
            v16 -= 3;
            if (v18 < 0)
            {
              operator delete(*v16);
            }
          }

          while (v16 != v15);
          v17 = v30;
        }

        v31 = v15;
        operator delete(v17);
      }

      if (SHIBYTE(v35) < 0)
      {
        operator delete(v34);
      }

      v9 = 0;
      v12 = 1;
      v13 = a1[8];
      a1[8] = 0;
      if (!v13)
      {
        goto LABEL_16;
      }
    }

    (*(*v13 + 24))(v13);
LABEL_16:
    if ((v12 & 1) == 0)
    {
      (*(*v9 + 24))(v9);
    }

    result = a1[8];
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27117F600(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_28087A548);
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

void sub_27117F62C(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x27117F638);
  }

  sub_271120E50(a1);
}

uint64_t VZLogMessageListGetTypeID()
{
  if (atomic_load_explicit(&qword_28087A570, memory_order_acquire))
  {
    return qword_28087A568;
  }

  if (__cxa_guard_acquire(&qword_28087A570))
  {
    qword_28087A568 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087A570);
  }

  return qword_28087A568;
}

uint64_t VZLogMessageListCreate()
{
  v0 = operator new(0x60uLL, MEMORY[0x277D826F0]);
  if (v0)
  {
    v0[4] = 0u;
    v0[5] = 0u;
    v0[2] = 0u;
    v0[3] = 0u;
    *v0 = 0u;
    v0[1] = 0u;
    *v0 = &unk_288117810;
    v20 = &unk_288131488;
    operator new();
  }

  if ((atomic_load_explicit(&qword_280877B10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877B10))
  {
    sub_2718519B4("VZLogMessageList]", 0x10uLL, qword_280877AF8);
    __cxa_guard_release(&qword_280877B10);
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
  LOBYTE(v6) = 0;
  v16 = 0;
  sub_27112E0C4(qword_280877AF8, &v17, &v6, 0);
  if (v16 == 1 && v15 == 1)
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
      operator delete(v7);
    }
  }

  v1 = v17;
  if (v17)
  {
    v2 = v18;
    v3 = v17;
    if (v18 != v17)
    {
      do
      {
        v4 = *(v2 - 1);
        v2 -= 3;
        if (v4 < 0)
        {
          operator delete(*v2);
        }
      }

      while (v2 != v1);
      v3 = v17;
    }

    v18 = v1;
    operator delete(v3);
  }

  return 0;
}

void VZLogMessageListAddLogMessage(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (!sub_27115629C("VZLogMessageListAddLogMessage", a2, 0))
    {
      v4 = *(a1 + 48);
      v5 = v4[1];
      if (v5 >= v4[2])
      {
        v9 = sub_2711825F8(v4, a2 + 2);
      }

      else
      {
        v6 = a2[3];
        *v5 = a2[2];
        v5[1] = v6;
        if (v6)
        {
          atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
        }

        v8 = a2[5];
        v7 = a2[6];
        v5[2] = off_28810C940;
        v5[3] = v8;
        v5[4] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
        }

        v9 = v5 + 5;
      }

      v4[1] = v9;
    }
  }

  else
  {
    if ((atomic_load_explicit(&qword_28087A578, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A578))
    {
      sub_2711823FC();
      __cxa_guard_release(&qword_28087A578);
    }

    if (byte_28087A5DF < 0)
    {
      sub_271127178(v10, xmmword_28087A5C8, *(&xmmword_28087A5C8 + 1));
    }

    else
    {
      *v10 = xmmword_28087A5C8;
      v11 = unk_28087A5D8;
    }

    v12 = 1;
    sub_27112D7CC("VZLogMessageListAddLogMessage", v10, &v13);
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
        v30 = v19;
        *__p = *v20;
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
    sub_27112B960(&v24, 0);
    if ((v35 & 1) == 0 && v34 == 1)
    {
      if (v33 == 1)
      {
        if (SHIBYTE(v32) < 0)
        {
          operator delete(__p[0]);
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
      if (v22 == 1)
      {
        if (SHIBYTE(v21) < 0)
        {
          operator delete(v20[0]);
        }

        if (SHIBYTE(v18) < 0)
        {
          operator delete(v17[0]);
        }
      }

      if (v16 == 1 && SHIBYTE(v15) < 0)
      {
        operator delete(v14);
      }
    }

    if (v12 == 1 && SHIBYTE(v11) < 0)
    {
      operator delete(v10[0]);
    }
  }
}

void sub_27117FD18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t VZLogMessageListGetSize(uint64_t a1)
{
  v2 = sub_2711570DC("VZLogMessageListGetSize", a1, 0);
  result = 0;
  if (!v2)
  {
    return 0xCCCCCCCCCCCCCCCDLL * ((*(*(a1 + 48) + 8) - **(a1 + 48)) >> 3);
  }

  return result;
}

uint64_t VZLogMessageListGetLogMessage(void *a1, unint64_t a2)
{
  v4 = sub_2711570DC("VZLogMessageListGetLogMessage", a1, 0);
  result = 0;
  if (v4)
  {
    return result;
  }

  v6 = a1[6];
  v7 = *v6;
  v8 = v6[1];
  v95 = a2;
  v9 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v7) >> 3);
  if (v9 <= a2)
  {
    v72 = v9;
    sub_27115EBF0("index ", &v95, " out of range for list of size ", &v72);
    if (SHIBYTE(v74) < 0)
    {
      sub_271127178(v75, v73[0], v73[1]);
    }

    else
    {
      *v75 = *v73;
      v76 = v74;
    }

    v77 = 1;
    LOBYTE(v78) = 0;
    v82 = 0;
    v83 = 1;
    sub_27112D480(0xAu, v75, &v84);
    v60 = v84;
    LOBYTE(v61[0]) = 0;
    v70 = 0;
    if (v94 != 1)
    {
      v71 = 0;
      goto LABEL_22;
    }

    v63 = 0;
    if (v87 == 1)
    {
      *v61 = v85;
      v62 = v86;
      v86 = 0;
      v85 = 0uLL;
      v63 = 1;
      LOBYTE(v64[0]) = 0;
      v69 = 0;
      if ((v93 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      LOBYTE(v64[0]) = 0;
      v69 = 0;
      if ((v93 & 1) == 0)
      {
LABEL_15:
        v70 = 1;
        v71 = 0;
        if (!v87)
        {
          goto LABEL_22;
        }

        goto LABEL_20;
      }
    }

    v65 = v89;
    *v64 = v88;
    v88 = 0uLL;
    v66 = v90;
    *v67 = v91;
    v68 = v92;
    v89 = 0;
    v91 = 0uLL;
    v92 = 0;
    v69 = 1;
    v70 = 1;
    v71 = 0;
    if (!v87)
    {
      goto LABEL_22;
    }

LABEL_20:
    if (SHIBYTE(v86) < 0)
    {
      operator delete(v85);
    }

LABEL_22:
    if (v83 == 1)
    {
      if (v82 == 1)
      {
        if (v81 < 0)
        {
          operator delete(__p);
        }

        if (v79 < 0)
        {
          operator delete(v78);
        }
      }

      if (v77 == 1 && SHIBYTE(v76) < 0)
      {
        operator delete(v75[0]);
      }
    }

    if (SHIBYTE(v74) < 0)
    {
      operator delete(v73[0]);
    }

    sub_27112B960(&v60, 0);
    result = 0;
    if (v71 != 1)
    {
      goto LABEL_88;
    }

    goto LABEL_57;
  }

  v10 = (v7 + 40 * a2);
  v11 = *v10;
  v12 = v10[1];
  *(&v84 + 1) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  *&v85 = off_28810C940;
  v13 = v10[3];
  *(&v85 + 1) = v13;
  v14 = v10[4];
  v86 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    v12 = *(&v84 + 1);
    v13 = *(&v85 + 1);
    v14 = v86;
  }

  *&v60 = v11;
  *(&v60 + 1) = v12;
  v61[0] = off_28810C940;
  v61[1] = v13;
  v62 = v14;
  v71 = 1;
  v15 = a1[9];
  v16 = a1[10];
  v17 = v16 - v15;
  v18 = (v16 - v15) >> 4;
  v19 = a2 + 1;
  v20 = a2 + 1 - v18;
  if (a2 + 1 > v18)
  {
    if (v18 == a2)
    {
      v21 = sub_27118179C(&v60);
      v22 = v21;
      if (v21)
      {
        (*(*v21 + 16))(v21);
      }

      v24 = a1[10];
      v23 = a1[11];
      if (v24 >= v23)
      {
        v37 = a1[9];
        v38 = (v24 - v37) >> 4;
        v39 = v38 + 1;
        if ((v38 + 1) >> 60)
        {
          sub_271135560();
        }

        v40 = v23 - v37;
        if (v40 >> 3 > v39)
        {
          v39 = v40 >> 3;
        }

        if (v40 >= 0x7FFFFFFFFFFFFFF0)
        {
          v41 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v41 = v39;
        }

        if (v41)
        {
          if (!(v41 >> 60))
          {
            operator new();
          }

          sub_2711270EC();
        }

        v53 = (v24 - v37) >> 4;
        v54 = 16 * v38;
        *v54 = v22;
        *(v54 + 8) = 1;
        v25 = 16 * v38 + 16;
        v55 = 16 * v38 - 16 * v53;
        if (v37 != v24)
        {
          v56 = (-16 * v53 + 16 * v38 + 8);
          v57 = v37;
          do
          {
            *(v56 - 8) = 0;
            *v56 = 0;
            if (v57[8] == 1)
            {
              v58 = *v57;
              *v57 = 0;
              *(v56 - 1) = v58;
              *v56 = 1;
            }

            v57 += 16;
            v56 += 16;
          }

          while (v57 != v24);
          do
          {
            if (v37[8] == 1)
            {
              v59 = *v37;
              *v37 = 0;
              if (v59)
              {
                (*(*v59 + 24))(v59);
              }
            }

            v37 += 16;
          }

          while (v37 != v24);
          v37 = a1[9];
        }

        a1[9] = v55;
        a1[10] = v25;
        a1[11] = 0;
        if (v37)
        {
          operator delete(v37);
        }
      }

      else
      {
        *v24 = v22;
        v24[8] = 1;
        v25 = (v24 + 16);
      }

      a1[10] = v25;
      if (v22)
      {
        (*(*v22 + 24))(v22);
        v25 = a1[10];
      }

      result = *(v25 - 16);
      if (v71 != 1)
      {
        goto LABEL_88;
      }

      goto LABEL_57;
    }

    v30 = a1[11];
    if (v20 > (v30 - v16) >> 4)
    {
      if (!(v19 >> 60))
      {
        v31 = v30 - v15;
        if (v31 >> 3 > v19)
        {
          v19 = v31 >> 3;
        }

        if (v31 >= 0x7FFFFFFFFFFFFFF0)
        {
          v32 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v32 = v19;
        }

        if (!(v32 >> 60))
        {
          operator new();
        }

        sub_2711270EC();
      }

      sub_271135560();
    }

    v42 = (v16 + 16 * v20);
    v43 = 16 * a2 - v17;
    v44 = a1[10];
    if (v43 < 0x10)
    {
      goto LABEL_119;
    }

    v45 = (v43 >> 4) + 1;
    v44 = (v16 + 16 * (v45 & 0x1FFFFFFFFFFFFFFELL));
    v46 = (v16 + 16);
    v47 = v45 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v46 - 16) = 0;
      *v46 = 0;
      *(v46 - 8) = 0;
      v46[8] = 0;
      v46 += 32;
      v47 -= 2;
    }

    while (v47);
    if (v45 != (v45 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_119:
      do
      {
        *v44 = 0;
        v44[8] = 0;
        v44 += 16;
      }

      while (v44 != v42);
    }

    a1[10] = v42;
    v26 = a1[9] + 16 * a2;
    v48 = sub_27118179C(&v60);
    v28 = v48;
    if (*(v26 + 8) == 1)
    {
      if (v48)
      {
        (*(*v48 + 16))(v48);
      }

      v49 = *v26;
      *v26 = v28;
      if (v49)
      {
        (*(*v49 + 24))(v49);
      }

      goto LABEL_85;
    }

    goto LABEL_82;
  }

  v26 = v15 + 16 * a2;
  if (*(v26 + 8))
  {
    goto LABEL_87;
  }

  v27 = sub_27118179C(&v60);
  v28 = v27;
  if (*(v26 + 8) != 1)
  {
LABEL_82:
    *v26 = v28;
    if (v28)
    {
      (*(*v28 + 16))(v28);
    }

    *(v26 + 8) = 1;
    goto LABEL_85;
  }

  if (v27)
  {
    (*(*v27 + 16))(v27);
  }

  v29 = *v26;
  *v26 = v28;
  if (!v29)
  {
LABEL_85:
    if (!v28)
    {
      goto LABEL_87;
    }

    goto LABEL_86;
  }

  (*(*v29 + 24))(v29);
  if (v28)
  {
LABEL_86:
    (*(*v28 + 24))(v28);
  }

LABEL_87:
  result = *v26;
  if (v71 != 1)
  {
LABEL_88:
    if (v70 == 1)
    {
      if (v69 == 1)
      {
        if (SHIBYTE(v68) < 0)
        {
          v50 = result;
          operator delete(v67[0]);
          result = v50;
        }

        if (SHIBYTE(v65) < 0)
        {
          v51 = result;
          operator delete(v64[0]);
          result = v51;
        }
      }

      if (v63 == 1 && SHIBYTE(v62) < 0)
      {
        v52 = result;
        operator delete(v61[0]);
        return v52;
      }
    }

    return result;
  }

LABEL_57:
  v33 = v62;
  if (v62 && !atomic_fetch_add(&v62->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v34 = result;
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
    result = v34;
  }

  v35 = *(&v60 + 1);
  if (*(&v60 + 1) && !atomic_fetch_add((*(&v60 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    v36 = result;
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
    return v36;
  }

  return result;
}

void sub_2711807AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271180868(uint64_t result)
{
  if (atomic_fetch_add((result + 56), 0xFFFFFFFF) == 1)
  {
    return (*(*(result + 8) + 8))();
  }

  return result;
}

uint64_t sub_2711808A4()
{
  if (atomic_load_explicit(&qword_28087A558, memory_order_acquire))
  {
    return qword_28087A550;
  }

  if (__cxa_guard_acquire(&qword_28087A558))
  {
    qword_28087A550 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087A558);
  }

  return qword_28087A550;
}

uint64_t **sub_271180908(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28812C878, &unk_28812C760, 0);
  if (result)
  {
    return sub_2713961E0((a1 + 16), result + 2);
  }

  return result;
}

uint64_t sub_27118098C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  __cxa_begin_catch(a1);
  sub_271181AB8();
  sub_27112B400(v20, "failed to compare equal");
  sub_27112DB38(qword_280877AB8, v20, 0);
  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  __cxa_end_catch();
  return 0;
}

void sub_2711809E4(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280877AD0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280877AD0))
    {
      sub_2718519B4("VZLogMessage]", 0xCuLL, qword_280877AB8);
      __cxa_guard_release(&qword_280877AD0);
    }
  }

  v2 = a1;
  operator new();
}

void sub_271180E88(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  __cxa_guard_abort(&qword_280877AD0);
  __cxa_begin_catch(a1);
  sub_271181AB8();
  sub_27112B400(&__p, "failed to create description");
  sub_27112DB38(qword_280877AB8, &__p, 0);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x271180DF8);
}

uint64_t sub_271180FD8(uint64_t result)
{
  if (atomic_fetch_add((result + 64), 0xFFFFFFFF) == 1)
  {
    return (*(*(result + 8) + 8))();
  }

  return result;
}

uint64_t sub_271181014()
{
  if (atomic_load_explicit(&qword_28087A570, memory_order_acquire))
  {
    return qword_28087A568;
  }

  if (__cxa_guard_acquire(&qword_28087A570))
  {
    qword_28087A568 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087A570);
  }

  return qword_28087A568;
}

uint64_t sub_271181078(uint64_t a1, char **lpsrc, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v16 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28812C878, &unk_28812C530, 0);
  if (result)
  {
    v18 = *(a1 + 16);
    v19 = *(result + 16);
    if (v18 == v19)
    {
      return 1;
    }

    v20 = *v18;
    v21 = v18[1];
    v22 = *v19;
    if (v21 - *v18 != *(v19 + 8) - *v19)
    {
      return 0;
    }

    if (v20 == v21)
    {
      return 1;
    }

    do
    {
      result = sub_2713961E0(v20, v22);
      v20 += 5;
      v22 += 5;
      if (v20 == v21)
      {
        v23 = 0;
      }

      else
      {
        v23 = result;
      }
    }

    while ((v23 & 1) != 0);
  }

  return result;
}

void sub_2711811B8(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280877B10, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280877B10))
    {
      sub_2718519B4("VZLogMessageList]", 0x10uLL, qword_280877AF8);
      __cxa_guard_release(&qword_280877B10);
    }
  }

  v2 = a1;
  operator new();
}

void sub_27118165C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  __cxa_guard_abort(&qword_280877B10);
  __cxa_begin_catch(a1);
  sub_2711821F0();
  sub_27112B400(&__p, "failed to create description");
  sub_27112DB38(qword_280877AF8, &__p, 0);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x2711815CCLL);
}

void *sub_27118179C(void *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  result = operator new(0x48uLL, MEMORY[0x277D826F0]);
  if (result)
  {
    *result = &unk_288117810;
    v3 = a1[1];
    result[2] = *a1;
    result[3] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    v5 = a1[3];
    v4 = a1[4];
    result[4] = off_28810C940;
    result[5] = v5;
    result[6] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    *(result + 14) = 1;
    *result = &unk_288119A08;
    result[1] = &unk_288119A58;
    result[8] = 0;
    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if ((atomic_load_explicit(&qword_280877AD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877AD0))
    {
      sub_2718519B4("VZLogMessage]", 0xCuLL, qword_280877AB8);
      __cxa_guard_release(&qword_280877AD0);
    }

    if ((atomic_load_explicit(&qword_28087A540, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A540))
    {
      sub_271181B48();
    }

    if (byte_28087A597 < 0)
    {
      sub_271127178(&v25, xmmword_28087A580, *(&xmmword_28087A580 + 1));
    }

    else
    {
      v25 = xmmword_28087A580;
      v26 = unk_28087A590;
    }

    sub_2711309E8(&v23, &v25, 1uLL);
    LOBYTE(v12) = 0;
    v22 = 0;
    sub_27112E0C4(qword_280877AB8, &v23, &v12, 0);
    if (v22 == 1 && v21 == 1)
    {
      if (v20 == 1)
      {
        if (v19 < 0)
        {
          operator delete(__p);
        }

        if (v17 < 0)
        {
          operator delete(v16);
        }
      }

      if (v15 == 1 && v14 < 0)
      {
        operator delete(v13);
      }
    }

    v7 = v23;
    if (v23)
    {
      v8 = v24;
      v9 = v23;
      if (v24 != v23)
      {
        do
        {
          v10 = *(v8 - 1);
          v8 -= 3;
          if (v10 < 0)
          {
            operator delete(*v8);
          }
        }

        while (v8 != v7);
        v9 = v23;
      }

      v24 = v7;
      operator delete(v9);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25);
    }

    result = 0;
    v11 = *MEMORY[0x277D85DE8];
  }

  return result;
}

void sub_271181A74(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_28087A540);
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271181AB8()
{
  if ((atomic_load_explicit(&qword_280877AD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877AD0))
  {
    sub_2718519B4("VZLogMessage]", 0xCuLL, qword_280877AB8);

    __cxa_guard_release(&qword_280877AD0);
  }
}

void sub_271181D40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271181D90(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28812D798;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271181DE4(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
    v2 = *(a1 + 32);
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *(a1 + 32);
    if (!v2)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_271181EA4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28812D7E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271181EF8(uint64_t a1)
{
  if (*(a1 + 72) == 1 && *(a1 + 71) < 0)
  {
    v2 = a1;
    operator delete(*(a1 + 48));
    a1 = v2;
    if ((*(v2 + 47) & 0x80000000) == 0)
    {
      return;
    }
  }

  else if ((*(a1 + 47) & 0x80000000) == 0)
  {
    return;
  }

  v3 = *(a1 + 24);

  operator delete(v3);
}

uint64_t sub_271181F68(uint64_t result)
{
  if (*(result + 48) != 1 || (*(result + 47) & 0x80000000) == 0)
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
  operator delete(*(result + 24));
  result = v1;
  if (*(v1 + 23) < 0)
  {
    goto LABEL_6;
  }

  return result;
}

double sub_271181FDC()
{
  *(&v9.__r_.__value_.__s + 23) = 15;
  strcpy(&v9, "viz::SharedData");
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
LABEL_3:
      v3 = &v7;
      if (v2 == 22)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
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

LABEL_8:
    operator new();
  }

  v3 = v7;
LABEL_10:
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
  xmmword_28087A598 = v7;
  unk_28087A5A8 = v8;
  return result;
}

void sub_2711821C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (v17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711821F0()
{
  if ((atomic_load_explicit(&qword_280877B10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877B10))
  {
    sub_2718519B4("VZLogMessageList]", 0x10uLL, qword_280877AF8);

    __cxa_guard_release(&qword_280877B10);
  }
}

void *sub_271182280(void *result)
{
  *result = &unk_28812D848;
  result[1] = &unk_288131488;
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

void sub_271182334(void *a1)
{
  *a1 = &unk_28812D848;
  a1[1] = &unk_288131488;
  v1 = a1[3];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

double sub_2711823FC()
{
  *(&__p.__r_.__value_.__s + 23) = 16;
  strcpy(&__p, "VZLogMessageList");
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
  xmmword_28087A5C8 = v5;
  unk_28087A5D8 = v6;
  return result;
}

void sub_2711825C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2711825F8(void *a1, void *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_271135560();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v5 = 0x666666666666666;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x666666666666666)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v18 = a2[1];
  v19 = (8 * ((a1[1] - *a1) >> 3));
  *v19 = *a2;
  v19[1] = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = a2[3];
  v6 = a2[4];
  *(40 * v2 + 0x10) = off_28810C940;
  *(40 * v2 + 0x18) = v7;
  *(40 * v2 + 0x20) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *a1;
  v9 = a1[1];
  v10 = (v19 - (v9 - *a1));
  v11 = v19 + 5;
  if (v9 != *a1)
  {
    v12 = 40 * v2 - 8 * ((v9 - *a1) >> 3) + 16;
    v13 = *a1;
    v14 = v10;
    do
    {
      *v14 = *v13;
      *v13 = 0;
      v13[1] = 0;
      *(v14 + 2) = off_28810C940;
      *(v14 + 24) = *(v13 + 3);
      v13[3] = 0;
      v13[4] = 0;
      v13 += 5;
      v14 += 40;
      v12 += 40;
    }

    while (v13 != v9);
    while (1)
    {
      v15 = v8[4];
      if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v15->__on_zero_shared)(v15);
        std::__shared_weak_count::__release_weak(v15);
        v16 = v8[1];
        if (v16)
        {
LABEL_21:
          if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v16->__on_zero_shared)(v16);
            std::__shared_weak_count::__release_weak(v16);
          }
        }
      }

      else
      {
        v16 = v8[1];
        if (v16)
        {
          goto LABEL_21;
        }
      }

      v8 += 5;
      if (v8 == v9)
      {
        v8 = *a1;
        break;
      }
    }
  }

  *a1 = v10;
  a1[1] = v11;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v11;
}

uint64_t sub_271182880(uint64_t a1)
{
  if (*(a1 + 120) == 1)
  {
    v2 = *(a1 + 112);
    if (v2 != -1)
    {
      (off_28812D858[v2])(&v5, a1 + 88);
    }

    *(a1 + 112) = -1;
  }

  if (*(a1 + 64) == 1)
  {
    v3 = *(a1 + 56);
    if (v3 != -1)
    {
      (off_28812D868[v3])(&v6, a1 + 24);
    }

    *(a1 + 56) = -1;
  }

  return a1;
}

uint64_t sub_271182924(uint64_t result)
{
  v1 = result;
  if (*(result + 112) == 1)
  {
    v2 = *(result + 104);
    if (v2 != -1)
    {
      result = (off_28812D858[v2])(&v4, result + 80);
    }

    *(v1 + 104) = -1;
  }

  if (*(v1 + 56) == 1)
  {
    v3 = *(v1 + 48);
    if (v3 != -1)
    {
      result = (off_28812D868[v3])(&v5, v1 + 16);
    }

    *(v1 + 48) = -1;
  }

  return result;
}

uint64_t sub_2711829C4(uint64_t a1)
{
  if (*(a1 + 120) == 1)
  {
    v2 = *(a1 + 112);
    if (v2 != -1)
    {
      (off_28812D858[v2])(&v5, a1 + 88);
    }

    *(a1 + 112) = -1;
  }

  if (*(a1 + 64) == 1)
  {
    v3 = *(a1 + 56);
    if (v3 != -1)
    {
      (off_28812D868[v3])(&v6, a1 + 24);
    }

    *(a1 + 56) = -1;
  }

  return MEMORY[0x2743BF050](a1, 0x1093C40E93C9851);
}

uint64_t sub_271182A7C(uint64_t a1)
{
  if (*(a1 + 112) == 1)
  {
    v2 = *(a1 + 104);
    if (v2 != -1)
    {
      (off_28812D858[v2])(&v5, a1 + 80);
    }

    *(a1 + 104) = -1;
  }

  if (*(a1 + 56) == 1)
  {
    v3 = *(a1 + 48);
    if (v3 != -1)
    {
      (off_28812D868[v3])(&v6, a1 + 16);
    }

    *(a1 + 48) = -1;
  }

  return MEMORY[0x2743BF050](a1 - 8, 0x1093C40E93C9851);
}

uint64_t VZLogMessageFilterGetTypeID()
{
  if (atomic_load_explicit(&qword_28087A5E8, memory_order_acquire))
  {
    return qword_28087A5E0;
  }

  if (__cxa_guard_acquire(&qword_28087A5E8))
  {
    qword_28087A5E0 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087A5E8);
  }

  return qword_28087A5E0;
}

void *VZLogMessageFilterCreate()
{
  v24 = *MEMORY[0x277D85DE8];
  v0 = operator new(0x88uLL, MEMORY[0x277D826F0]);
  if (v0)
  {
    v1 = v0;
    *v0 = 0u;
    v0[16] = 0;
    *(v0 + 6) = 0u;
    *(v0 + 7) = 0u;
    *(v0 + 4) = 0u;
    *(v0 + 5) = 0u;
    *(v0 + 2) = 0u;
    *(v0 + 3) = 0u;
    *(v0 + 1) = 0u;
    v2 = (v0 + 2);
    *v0 = &unk_288117810;
    bzero(&v13, 0x300uLL);
    *&v13 = off_2881327C0;
    sub_271346D30(v2, &v13);
    *&v13 = off_2881327C0;
    sub_271347580(&v14);
    *(v1 + 32) = 1;
    *v1 = &unk_288119438;
    v1[1] = &unk_288119488;
    v3 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if ((atomic_load_explicit(&qword_28087A5F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A5F0))
    {
      sub_2718519B4("VZLogMessageFilter]", 0x12uLL, qword_28087A600);
      __cxa_guard_release(&qword_28087A5F0);
    }

    v10 = 0;
    v11 = 0;
    v12 = 0;
    LOBYTE(v13) = 0;
    v23 = 0;
    sub_27112E0C4(qword_28087A600, &v10, &v13, 0);
    if (v23 == 1 && v22 == 1)
    {
      if (v21 == 1)
      {
        if (v20 < 0)
        {
          operator delete(__p);
        }

        if (v18 < 0)
        {
          operator delete(v17);
        }
      }

      if (v16 == 1 && v15 < 0)
      {
        operator delete(v14);
      }
    }

    v5 = v10;
    if (v10)
    {
      v6 = v11;
      v7 = v10;
      if (v11 != v10)
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
        v7 = v10;
      }

      v11 = v5;
      operator delete(v7);
    }

    v1 = 0;
    v9 = *MEMORY[0x277D85DE8];
  }

  return v1;
}

void sub_271182E44(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_28087A5F0);
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

void sub_271182E5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x271182E68);
  }

  sub_271120E50(a1);
}

void VZLogMessageFilterRequirePackageIDWildcard(uint64_t a1, char *a2)
{
  if (!sub_271182F30("VZLogMessageFilterRequirePackageIDWildcard", a1))
  {
    sub_2711831D4(__p, a2);
    sub_271347090(a1 + 16, __p);
    if (v7 == 1 && v6 < 0)
    {
      v4 = __p[0];

      operator delete(v4);
    }
  }
}

void sub_271182F08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_271182F30(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_28087A5F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A5F8))
    {
      sub_27118423C();
      __cxa_guard_release(&qword_28087A5F8);
    }

    if (byte_28087A62F < 0)
    {
      sub_271127178(v5, xmmword_28087A618, *(&xmmword_28087A618 + 1));
    }

    else
    {
      *v5 = xmmword_28087A618;
      v6 = unk_28087A628;
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

void sub_271183194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double sub_2711831D4(uint64_t a1, char *__s)
{
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

    HIBYTE(v8) = v4;
    if (v4)
    {
      memcpy(&__dst, __s, v4);
    }

    *(&__dst + v5) = 0;
    result = *&__dst;
    *a1 = __dst;
    *(a1 + 16) = v8;
    *(a1 + 24) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 24) = 0;
  }

  return result;
}

void sub_2711832D0(void *a1)
{
  __cxa_begin_catch(a1);
  sub_271184440();
  v2 = sub_27114CB44();
  sub_27112E8EC(byte_280877C18, v2, 0);
  *v1 = 0;
  v1[24] = 0;
  __cxa_end_catch();
  JUMPOUT(0x271183234);
}

BOOL VZLogMessageFilterRequireDataTypeIDExact(uint64_t a1, unsigned int a2)
{
  result = sub_271182F30("VZLogMessageFilterRequireDataTypeIDExact", a1);
  if (!result)
  {
    if (a2 == -1)
    {
      v5 = 0;
    }

    else
    {
      v5 = a2;
    }

    if (a2 == -1)
    {
      if (*(a1 + 80) == 1)
      {
        *(a1 + 80) = 0;
      }
    }

    else
    {
      if ((*(a1 + 80) & 1) == 0)
      {
        *(a1 + 80) = 1;
      }

      *(a1 + 72) = v5 | ((a2 != -1) << 32);
    }
  }

  return result;
}

void VZLogMessageFilterRequireSubloggerWildcard(uint64_t a1, char *a2)
{
  if (!sub_271182F30("VZLogMessageFilterRequireSubloggerWildcard", a1))
  {
    sub_2711831D4(__p, a2);
    sub_271347320(a1 + 16, __p);
    if (v7 == 1 && v6 < 0)
    {
      v4 = __p[0];

      operator delete(v4);
    }
  }
}

void sub_271183410(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271183448(uint64_t result)
{
  if (atomic_fetch_add((result + 128), 0xFFFFFFFF) == 1)
  {
    return (*(*(result + 8) + 8))();
  }

  return result;
}

uint64_t sub_271183484()
{
  if (atomic_load_explicit(&qword_28087A5E8, memory_order_acquire))
  {
    return qword_28087A5E0;
  }

  if (__cxa_guard_acquire(&qword_28087A5E8))
  {
    qword_28087A5E0 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087A5E8);
  }

  return qword_28087A5E0;
}

uint64_t sub_2711834E8(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28812C878, &unk_28812C488, 0);
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = *(a1 + 64);
  v7 = *(result + 64);
  if (v6 != v7 || v6 == 0)
  {
    if (v6 != v7)
    {
      return 0;
    }
  }

  else if (!sub_2714F5B38(a1 + 16, result + 16))
  {
    return 0;
  }

  v9 = *(a1 + 80);
  v10 = v9 == *(v5 + 80);
  v11 = v9 != *(v5 + 80) || v9 == 0;
  if (v11 || ((v12 = *(a1 + 76), v10 = v12 == *(v5 + 76)) ? (v13 = v12 == 0) : (v13 = 1), v13))
  {
    if (!v10)
    {
      return 0;
    }
  }

  else if (*(a1 + 72) != *(v5 + 72))
  {
    return 0;
  }

  v14 = *(v5 + 120);
  v15 = *(a1 + 120);
  result = v15 == v14;
  if (v15 == v14 && v15 != 0)
  {
    v17 = *(a1 + 112);
    v18 = *(v5 + 112);
    if (v17)
    {
      if (v18 == 1)
      {
        if (v17 != 1)
        {
          sub_2711308D4();
        }

        v19 = *(a1 + 111);
        if ((v19 & 0x80000000) == 0)
        {
          v20 = *(a1 + 111);
        }

        else
        {
          v20 = *(a1 + 96);
        }

        v21 = *(v5 + 111);
        v22 = *(v5 + 96);
        if ((v21 & 0x80000000) == 0)
        {
          v22 = *(v5 + 111);
        }

        if (v20 == v22)
        {
          v23 = v19 >> 63;
          v24 = v21 >> 63;
LABEL_44:
          v28 = (v5 + 88);
          if (v23)
          {
            v29 = *(a1 + 88);
          }

          else
          {
            v29 = (a1 + 88);
          }

          v30 = *v28;
          if (v24)
          {
            v31 = *v28;
          }

          else
          {
            v31 = (v5 + 88);
          }

          return memcmp(v29, v31, v20) == 0;
        }
      }
    }

    else if (!v18)
    {
      v25 = *(a1 + 111);
      if ((v25 & 0x80000000) == 0)
      {
        v20 = *(a1 + 111);
      }

      else
      {
        v20 = *(a1 + 96);
      }

      v26 = *(v5 + 111);
      v27 = *(v5 + 96);
      if ((v26 & 0x80000000) == 0)
      {
        v27 = *(v5 + 111);
      }

      if (v20 == v27)
      {
        v23 = v25 >> 63;
        v24 = v26 >> 63;
        goto LABEL_44;
      }
    }

    return 0;
  }

  return result;
}

void sub_271183700(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_28087A5F0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_28087A5F0))
    {
      sub_2718519B4("VZLogMessageFilter]", 0x12uLL, qword_28087A600);
      __cxa_guard_release(&qword_28087A5F0);
    }
  }

  v2 = a1;
  operator new();
}

void sub_271184048(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  __cxa_guard_abort(&qword_28087A5F0);
  __cxa_begin_catch(a1);
  sub_2711841AC();
  sub_27112B400(&__p, "failed to create description");
  sub_27112DB38(qword_28087A600, &__p, 0);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x271183F54);
}

void sub_2711841AC()
{
  if ((atomic_load_explicit(&qword_28087A5F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A5F0))
  {
    sub_2718519B4("VZLogMessageFilter]", 0x12uLL, qword_28087A600);

    __cxa_guard_release(&qword_28087A5F0);
  }
}

double sub_27118423C()
{
  *(&__p.__r_.__value_.__s + 23) = 18;
  strcpy(&__p, "VZLogMessageFilter");
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
  xmmword_28087A618 = v5;
  unk_28087A628 = v6;
  return result;
}

void sub_271184410(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271184440()
{
  if ((atomic_load_explicit(&qword_280877C30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877C30))
  {
    sub_27112B400(byte_280877C18, "char");

    __cxa_guard_release(&qword_280877C30);
  }
}

void *sub_2711844CC(void *a1, uint64_t a2)
{
  if (*(a2 + 4) == 1)
  {
    std::to_string(&v6, *a2);
    if ((v6.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v3 = &v6;
    }

    else
    {
      v3 = v6.__r_.__value_.__r.__words[0];
    }

    if ((v6.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v6.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v6.__r_.__value_.__l.__size_;
    }

    sub_271120E64(a1, v3, size);
    if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v6.__r_.__value_.__l.__data_);
    }

    return a1;
  }

  else
  {
    sub_271120E64(a1, "nullopt", 7);
    return a1;
  }
}

void sub_271184580(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27118459C(uint64_t a1)
{
  sub_2711898C0(*(a1 + 120));
  std::mutex::~mutex((a1 + 48));
  result = a1;
  v3 = *(a1 + 24);
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

void sub_27118462C(uint64_t a1)
{
  sub_2711898C0(*(a1 + 112));
  std::mutex::~mutex((a1 + 40));
  v2 = *(a1 + 16);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_2711846BC(uint64_t a1)
{
  sub_2711898C0(*(a1 + 120));
  std::mutex::~mutex((a1 + 48));
  v2 = *(a1 + 24);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x2743BF050);
}

void sub_271184760(uint64_t a1)
{
  sub_2711898C0(*(a1 + 112));
  std::mutex::~mutex((a1 + 40));
  v2 = *(a1 + 16);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t *sub_2711847FC(uint64_t a1, const char *a2)
{
  v66 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = "";
  }

  v4 = strlen(v3);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v50 = v4;
  if (v4)
  {
    memcpy(&__dst, v3, v4);
  }

  *(&__dst + v5) = 0;
  std::mutex::lock((a1 + 48));
  v7 = (a1 + 120);
  v6 = *(a1 + 120);
  if (!v6)
  {
    goto LABEL_49;
  }

  if ((v50 & 0x80u) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if ((v50 & 0x80u) == 0)
  {
    v9 = v50;
  }

  else
  {
    v9 = __dst_8;
  }

  v10 = (a1 + 120);
  do
  {
    while (1)
    {
      v11 = *(v6 + 55);
      v12 = v11 >= 0 ? (v6 + 4) : v6[4];
      v13 = v11 >= 0 ? *(v6 + 55) : v6[5];
      v14 = v9 >= v13 ? v13 : v9;
      v15 = memcmp(v12, p_dst, v14);
      if (v15)
      {
        break;
      }

      if (v13 >= v9)
      {
        goto LABEL_32;
      }

LABEL_18:
      v6 = v6[1];
      if (!v6)
      {
        goto LABEL_33;
      }
    }

    if (v15 < 0)
    {
      goto LABEL_18;
    }

LABEL_32:
    v10 = v6;
    v6 = *v6;
  }

  while (v6);
LABEL_33:
  if (v10 != v7)
  {
    v16 = *(v10 + 55);
    if (v16 >= 0)
    {
      v17 = (v10 + 4);
    }

    else
    {
      v17 = v10[4];
    }

    if (v16 >= 0)
    {
      v18 = *(v10 + 55);
    }

    else
    {
      v18 = v10[5];
    }

    if (v18 >= v9)
    {
      v19 = v9;
    }

    else
    {
      v19 = v18;
    }

    v20 = memcmp(p_dst, v17, v19);
    if (v20)
    {
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_45;
      }
    }

    else if (v9 >= v18)
    {
LABEL_45:
      v21 = v10[7];
      std::mutex::unlock((a1 + 48));
      if (v50 < 0)
      {
        goto LABEL_46;
      }

      goto LABEL_47;
    }
  }

LABEL_49:
  sub_271349A00((a1 + 16), &__dst, &v45);
  v24 = operator new(0x38uLL, MEMORY[0x277D826F0]);
  if (!v24)
  {
    if ((atomic_load_explicit(&qword_28087A640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A640))
    {
      sub_2718519B4("VZSubLogger]", 0xBuLL, qword_28087A6A8);
      __cxa_guard_release(&qword_28087A640);
    }

    if ((atomic_load_explicit(&qword_28087A648, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A648))
    {
      sub_2718519B4("cv3d::vl::visual_logger::SubLogger]", 0x22uLL, &xmmword_28087A6C0);
      __cxa_guard_release(&qword_28087A648);
    }

    if (byte_28087A6D7 < 0)
    {
      sub_271127178(&v64, xmmword_28087A6C0, *(&xmmword_28087A6C0 + 1));
    }

    else
    {
      v64 = xmmword_28087A6C0;
      v65 = unk_28087A6D0;
    }

    sub_2711309E8(&v62, &v64, 1uLL);
    LOBYTE(v51) = 0;
    v61 = 0;
    sub_27112E0C4(qword_28087A6A8, &v62, &v51, 0);
    if (v61 == 1 && v60 == 1)
    {
      if (v59 == 1)
      {
        if (v58 < 0)
        {
          operator delete(__p);
        }

        if (v56 < 0)
        {
          operator delete(v55);
        }
      }

      if (v54 == 1 && v53 < 0)
      {
        operator delete(v52);
      }
    }

    v40 = v62;
    if (v62)
    {
      v41 = v63;
      v42 = v62;
      if (v63 != v62)
      {
        do
        {
          v43 = *(v41 - 1);
          v41 -= 3;
          if (v43 < 0)
          {
            operator delete(*v41);
          }
        }

        while (v41 != v40);
        v42 = v62;
      }

      v63 = v40;
      operator delete(v42);
    }

    if (SHIBYTE(v65) < 0)
    {
      operator delete(v64);
      v44 = *(&v47 + 1);
      v45 = &unk_2881177D0;
      if (!*(&v47 + 1))
      {
        goto LABEL_107;
      }
    }

    else
    {
      v44 = *(&v47 + 1);
      v45 = &unk_2881177D0;
      if (!*(&v47 + 1))
      {
        goto LABEL_107;
      }
    }

    if (!atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v44->__on_zero_shared)(v44);
      std::__shared_weak_count::__release_weak(v44);
      v21 = 0;
      std::mutex::unlock((a1 + 48));
      if ((v50 & 0x80000000) == 0)
      {
        goto LABEL_47;
      }

LABEL_46:
      operator delete(__dst);
      goto LABEL_47;
    }

LABEL_107:
    v21 = 0;
    std::mutex::unlock((a1 + 48));
    if ((v50 & 0x80000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  v25 = v24;
  v26 = v47;
  v24[1] = v46;
  v24[2] = v26;
  *(v24 + 12) = 1;
  *v24 = &unk_288119AE8;
  *(v24 + 1) = &unk_288119B38;
  v27 = *v7;
  if (!*v7)
  {
LABEL_76:
    operator new();
  }

  if ((v50 & 0x80u) == 0)
  {
    v28 = &__dst;
  }

  else
  {
    v28 = __dst;
  }

  if ((v50 & 0x80u) == 0)
  {
    v29 = v50;
  }

  else
  {
    v29 = __dst_8;
  }

  while (2)
  {
    while (2)
    {
      v30 = v27;
      v33 = v27[4];
      v31 = v27 + 4;
      v32 = v33;
      v34 = *(v31 + 23);
      if (v34 >= 0)
      {
        v35 = v31;
      }

      else
      {
        v35 = v32;
      }

      if (v34 >= 0)
      {
        v36 = *(v31 + 23);
      }

      else
      {
        v36 = v31[1];
      }

      if (v36 >= v29)
      {
        v37 = v29;
      }

      else
      {
        v37 = v36;
      }

      v38 = memcmp(v28, v35, v37);
      if (v38)
      {
        if (v38 < 0)
        {
          goto LABEL_57;
        }
      }

      else if (v29 < v36)
      {
LABEL_57:
        v27 = *v30;
        if (!*v30)
        {
          goto LABEL_76;
        }

        continue;
      }

      break;
    }

    v39 = memcmp(v35, v28, v37);
    if (v39)
    {
      if ((v39 & 0x80000000) == 0)
      {
        goto LABEL_81;
      }

LABEL_75:
      v27 = v30[1];
      if (!v27)
      {
        goto LABEL_76;
      }

      continue;
    }

    break;
  }

  if (v36 < v29)
  {
    goto LABEL_75;
  }

LABEL_81:
  (*(*v25 + 24))(v25);
  v21 = v30[7];
  std::mutex::unlock((a1 + 48));
  if (v50 < 0)
  {
    goto LABEL_46;
  }

LABEL_47:
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

void sub_271184E78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_28087A648);
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271184F2C(uint64_t result)
{
  *(result + 8) = &unk_2881177D0;
  v1 = *(result + 40);
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

void sub_271184FC4(void *a1)
{
  *a1 = &unk_2881177D0;
  v1 = a1[4];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_27118505C(uint64_t a1)
{
  *(a1 + 8) = &unk_2881177D0;
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

void sub_271185108(void *a1)
{
  *a1 = &unk_2881177D0;
  v1 = a1[4];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t VZLoggerGetTypeID()
{
  if (atomic_load_explicit(&qword_28087A658, memory_order_acquire))
  {
    return qword_28087A650;
  }

  if (__cxa_guard_acquire(&qword_28087A658))
  {
    qword_28087A650 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087A658);
  }

  return qword_28087A650;
}

void VZLoggerCreateWithNamespace(const char *a1, uint64_t a2)
{
  if (sub_271146460("VZLoggerCreateWithNamespace", a1, a2))
  {
    return;
  }

  v37 = &v38;
  v38 = a2;
  LOBYTE(v22) = 0;
  v25 = 0;
  sub_271347FCC(a1, &v22, &v26);
  if (v25 != 1)
  {
    goto LABEL_16;
  }

  v22 = &unk_28812D898;
  v4 = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

  v5 = v24;
  v6 = v23;
  if (v24 == v23)
  {
    goto LABEL_15;
  }

  do
  {
    v7 = *(v5 - 1);
    if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v8 = *(v5 - 3);
      if (!v8)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v8 = *(v5 - 3);
      if (!v8)
      {
        goto LABEL_6;
      }
    }

    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }

LABEL_6:
    v5 -= 32;
  }

  while (v5 != v4);
  v6 = v23;
LABEL_15:
  v24 = v4;
  operator delete(v6);
LABEL_16:
  if ((v36 & 1) == 0)
  {
    v11 = v26;
    LOBYTE(v12) = 0;
    v20 = 0;
    if (v35 == 1)
    {
      sub_27112F6CC(&v12, &v27);
      v20 = 1;
    }

    v21 = 1;
    sub_271189EF4(&v37, &v11);
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
        if (v36 != 1)
        {
          goto LABEL_49;
        }

        goto LABEL_45;
      }
    }

    goto LABEL_44;
  }

  sub_27118A298(&v26);
  v9 = operator new(0x88uLL, MEMORY[0x277D826F0]);
  if (!v9)
  {
    LOBYTE(v11) = 0;
    v21 = 0;
    sub_271189EF4(&v37, &v11);
    if (v21 == 1)
    {
      if (v20 != 1)
      {
        if (v36 == 1)
        {
          goto LABEL_45;
        }

        goto LABEL_49;
      }

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
        if (v36 != 1)
        {
          goto LABEL_49;
        }

        goto LABEL_45;
      }
    }

LABEL_44:
    if (v36 == 1)
    {
      goto LABEL_45;
    }

LABEL_49:
    if (v35 == 1)
    {
      if (v34 == 1)
      {
        if (v33 < 0)
        {
          operator delete(v32);
        }

        if (v31 < 0)
        {
          operator delete(v30);
        }
      }

      if (v29 == 1 && v28 < 0)
      {
        operator delete(v27);
      }
    }

    return;
  }

  v9[1] = v26;
  v26 = 0uLL;
  *(v9 + 4) = v27;
  *(v9 + 10) = 1;
  *v9 = &unk_288118EF8;
  *(v9 + 1) = &unk_288118F48;
  *(v9 + 6) = 850045863;
  *(v9 + 56) = 0u;
  *(v9 + 72) = 0u;
  *(v9 + 88) = 0u;
  *(v9 + 16) = 0;
  *(v9 + 15) = 0;
  *(v9 + 13) = 0;
  *(v9 + 14) = v9 + 120;
  if (v36 != 1)
  {
    goto LABEL_49;
  }

LABEL_45:
  v10 = *(&v26 + 1);
  if (*(&v26 + 1) && !atomic_fetch_add((*(&v26 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }
}

void sub_271185698(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, const char *a9, std::logic_error a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::runtime_error __p, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_2711307D4(&a37);
  sub_27113827C(v37 - 192);
  if (a2 == 3)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    std::logic_error::logic_error(&a10, exception_ptr);
    a10.__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_begin_catch(a1);
    a9 = std::logic_error::what(&a10);
    sub_27113604C(&__p, &a9);
    sub_271369D54(&__p, &a16);
    *(v37 - 192) = a16;
    sub_27184A2B4(v37 - 176, &a17);
    *(v37 - 72) = 1;
    sub_271189EF4((v37 - 64), v37 - 192);
    sub_2711307D4(v37 - 192);
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
    *(v37 - 192) = a16;
    sub_27184A2B4(v37 - 176, &a17);
    *(v37 - 72) = 1;
    sub_271189EF4((v37 - 64), v37 - 192);
    sub_2711307D4(v37 - 192);
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
    *(v37 - 192) = 0;
    *(v37 - 72) = 0;
    sub_271189EF4((v37 - 64), v37 - 192);
    sub_2711307D4(v37 - 192);
    __cxa_end_catch();
  }

  JUMPOUT(0x27118567CLL);
}

uint64_t VZLoggerCreateWithDestinations(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x277D85DE8];
  if (sub_27115CEC0("VZLoggerCreateWithDestinations", a1, a2))
  {
    goto LABEL_42;
  }

  sub_2711895D8(&v16, a1 + 8);
  v16 = &unk_28812ED60;
  v4 = operator new(0x88uLL, MEMORY[0x277D826F0]);
  if (v4)
  {
    *v4 = &unk_288117810;
    v35 = *v17;
    v36 = v18;
    v17[0] = 0;
    v17[1] = 0;
    v18 = 0;
    v34 = &unk_28812ED60;
    v37 = 1;
    LOBYTE(v32) = 0;
    v33 = 0;
    sub_271347894((v4 + 2), &v34);
  }

  if ((atomic_load_explicit(&qword_28087A660, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A660))
  {
    sub_2718519B4("VZLogger]", 8uLL, qword_28087A6D8);
    __cxa_guard_release(&qword_28087A660);
  }

  if ((atomic_load_explicit(&qword_28087A668, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A668))
  {
    sub_2718519B4("cv3d::vl::visual_logger::DestinationList]", 0x28uLL, &xmmword_28087A6F0);
    __cxa_guard_release(&qword_28087A668);
  }

  if (byte_28087A707 < 0)
  {
    sub_271127178(&v38, xmmword_28087A6F0, *(&xmmword_28087A6F0 + 1));
  }

  else
  {
    v38 = xmmword_28087A6F0;
    v39 = unk_28087A700;
  }

  sub_2711309E8(&v30, &v38, 1uLL);
  LOBYTE(v19) = 0;
  v29 = 0;
  sub_27112E0C4(qword_28087A6D8, &v30, &v19, a2);
  if (v29 == 1 && v28 == 1)
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
      operator delete(v20);
    }
  }

  v5 = v30;
  if (v30)
  {
    v6 = v31;
    v7 = v30;
    if (v31 != v30)
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
      v7 = v30;
    }

    v31 = v5;
    operator delete(v7);
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38);
  }

  v16 = &unk_28812D898;
  v9 = v17[0];
  if (!v17[0])
  {
    goto LABEL_42;
  }

  v10 = v17[1];
  v11 = v17[0];
  if (v17[1] == v17[0])
  {
    goto LABEL_41;
  }

  do
  {
    v12 = *(v10 - 1);
    if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
      v13 = *(v10 - 3);
      if (!v13)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v13 = *(v10 - 3);
      if (!v13)
      {
        goto LABEL_32;
      }
    }

    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }

LABEL_32:
    v10 -= 32;
  }

  while (v10 != v9);
  v11 = v17[0];
LABEL_41:
  v17[1] = v9;
  operator delete(v11);
LABEL_42:
  v14 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_271185EE4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_28087A668);
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

void sub_271185F00(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_28087A660);
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

void sub_271185F1C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

void VZLoggerCreateWithNamespaceAndDestinations(const char *a1, uint64_t a2, uint64_t a3)
{
  if (sub_271146460("VZLoggerCreateWithNamespaceAndDestinations", a1, a3) || sub_27115CEC0("VZLoggerCreateWithNamespaceAndDestinations", a2, a3))
  {
    return;
  }

  v39 = &v40;
  v40 = a3;
  sub_2711895D8(&v24, a2 + 8);
  v24 = &unk_28812ED60;
  v27 = 1;
  sub_271347FCC(a1, &v24, &v28);
  if (v27 == 1)
  {
    v24 = &unk_28812D898;
    v6 = v25;
    if (v25)
    {
      v7 = v26;
      v8 = v25;
      if (v26 != v25)
      {
        do
        {
          v9 = *(v7 - 1);
          if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v9->__on_zero_shared)(v9);
            std::__shared_weak_count::__release_weak(v9);
          }

          v10 = *(v7 - 3);
          if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v10->__on_zero_shared)(v10);
            std::__shared_weak_count::__release_weak(v10);
          }

          v7 -= 32;
        }

        while (v7 != v6);
        v8 = v25;
      }

      v26 = v6;
      operator delete(v8);
    }
  }

  if ((v38 & 1) == 0)
  {
    v13 = v28;
    LOBYTE(v14) = 0;
    v22 = 0;
    if (v37 == 1)
    {
      sub_27112F6CC(&v14, &v29);
      v22 = 1;
    }

    v23 = 1;
    sub_27118A354(&v39, &v13);
    if (v23 == 1 && v22 == 1)
    {
      if (v21 == 1)
      {
        if (v20 < 0)
        {
          operator delete(__p);
        }

        if (v18 < 0)
        {
          operator delete(v17);
        }
      }

      if (v16 == 1 && v15 < 0)
      {
        operator delete(v14);
        if (v38 == 1)
        {
          goto LABEL_45;
        }

LABEL_49:
        if (v37 == 1)
        {
          if (v36 == 1)
          {
            if (v35 < 0)
            {
              operator delete(v34);
            }

            if (v33 < 0)
            {
              operator delete(v32);
            }
          }

          if (v31 == 1 && v30 < 0)
          {
            operator delete(v29);
          }
        }

        return;
      }
    }

LABEL_44:
    if (v38 != 1)
    {
      goto LABEL_49;
    }

    goto LABEL_45;
  }

  sub_27118A298(&v28);
  v11 = operator new(0x88uLL, MEMORY[0x277D826F0]);
  if (!v11)
  {
    LOBYTE(v13) = 0;
    v23 = 0;
    sub_27118A354(&v39, &v13);
    if (v23 == 1)
    {
      if (v22 != 1)
      {
        if (v38 != 1)
        {
          goto LABEL_49;
        }

        goto LABEL_45;
      }

      if (v21 == 1)
      {
        if (v20 < 0)
        {
          operator delete(__p);
        }

        if (v18 < 0)
        {
          operator delete(v17);
        }
      }

      if (v16 == 1 && v15 < 0)
      {
        operator delete(v14);
        if (v38 == 1)
        {
          goto LABEL_45;
        }

        goto LABEL_49;
      }
    }

    goto LABEL_44;
  }

  v11[1] = v28;
  v28 = 0uLL;
  *(v11 + 4) = v29;
  *(v11 + 10) = 1;
  *v11 = &unk_288118EF8;
  *(v11 + 1) = &unk_288118F48;
  *(v11 + 6) = 850045863;
  *(v11 + 56) = 0u;
  *(v11 + 72) = 0u;
  *(v11 + 88) = 0u;
  *(v11 + 16) = 0;
  *(v11 + 15) = 0;
  *(v11 + 13) = 0;
  *(v11 + 14) = v11 + 120;
  if (v38 != 1)
  {
    goto LABEL_49;
  }

LABEL_45:
  v12 = *(&v28 + 1);
  if (*(&v28 + 1) && !atomic_fetch_add((*(&v28 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_2711863DC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, const char *a9, std::logic_error a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::runtime_error __p, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_2711307D4(&a37);
  sub_27113827C(v37 - 192);
  if (a2 == 3)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    std::logic_error::logic_error(&a10, exception_ptr);
    a10.__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_begin_catch(a1);
    a9 = std::logic_error::what(&a10);
    sub_27113604C(&__p, &a9);
    sub_271369D54(&__p, &a16);
    *(v37 - 192) = a16;
    sub_27184A2B4(v37 - 176, &a17);
    *(v37 - 72) = 1;
    sub_27118A354((v37 - 64), v37 - 192);
    sub_2711307D4(v37 - 192);
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
    *(v37 - 192) = a16;
    sub_27184A2B4(v37 - 176, &a17);
    *(v37 - 72) = 1;
    sub_27118A354((v37 - 64), v37 - 192);
    sub_2711307D4(v37 - 192);
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
    *(v37 - 192) = 0;
    *(v37 - 72) = 0;
    sub_27118A354((v37 - 64), v37 - 192);
    sub_2711307D4(v37 - 192);
    __cxa_end_catch();
  }

  JUMPOUT(0x2711863C0);
}

uint64_t VZLoggerCreateWithFileExporter(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  if (!sub_271146460("VZLoggerCreateWithFileExporter", a1, a3))
  {
    v14 = a3;
    v13 = &v14;
    if (a2)
    {
      v6 = (a2 + 16);
    }

    else
    {
      v6 = 0;
    }

    __p[0] = 0;
    __p[1] = 0;
    v12 = 0;
    v7 = a1 - 1;
      ;
    }

    sub_271171230(__p, a1, v7);
    v15[0] = &unk_288108A18;
    v15[1] = sub_271141150;
    v15[3] = v15;
    v16 = 1;
    sub_27134842C(__p, v6 | (a2 + 16) & 0xFFFFFFFFFFFFFF00, a2 != 0, v15);
  }

  result = 0;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_271186AC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, const char *a9, std::logic_error a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::runtime_error __p, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a2)
  {
    sub_2711307D4(&a37);
    sub_27113827C(v42 - 240);
    if (a2 == 3)
    {
      exception_ptr = __cxa_get_exception_ptr(exception_object);
      std::logic_error::logic_error(&a10, exception_ptr);
      a10.__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_begin_catch(exception_object);
      a9 = std::logic_error::what(&a10);
      sub_27113604C(&__p, &a9);
      sub_271369D54(&__p, &a16);
      *(v42 - 240) = a16;
      sub_27184A2B4(v42 - 224, &a17);
      *(v42 - 120) = 1;
      sub_27118A94C((v42 - 112), v42 - 240);
      sub_2711307D4(v42 - 240);
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
      v46 = __cxa_get_exception_ptr(exception_object);
      sub_271135FD0(&__p, v46);
      __cxa_begin_catch(exception_object);
      v47 = (a35 + 48);
      if (*(a35 + 71) < 0)
      {
        v47 = *v47;
      }

      a9 = v47;
      sub_27113604C(&a10, &a9);
      sub_27136A868(&a10, &a16);
      *(v42 - 240) = a16;
      sub_27184A2B4(v42 - 224, &a17);
      *(v42 - 120) = 1;
      sub_27118A94C((v42 - 112), v42 - 240);
      sub_2711307D4(v42 - 240);
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
      __cxa_begin_catch(exception_object);
      *(v42 - 240) = 0;
      *(v42 - 120) = 0;
      sub_27118A94C((v42 - 112), v42 - 240);
      sub_2711307D4(v42 - 240);
      __cxa_end_catch();
    }

    JUMPOUT(0x271186A90);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VZLoggerGetNamespace(uint64_t a1)
{
  if (sub_271186D88("VZLoggerGetNamespace", a1))
  {
    return 0;
  }

  v3 = sub_271543694(*(a1 + 16));
  if (*(v3 + 23) >= 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = *v3;
  }

  if (*(v3 + 24))
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

BOOL sub_271186D88(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_28087A680, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A680))
    {
      sub_27118B134();
      __cxa_guard_release(&qword_28087A680);
    }

    if (byte_28087A74F < 0)
    {
      sub_271127178(v5, xmmword_28087A738, *(&xmmword_28087A738 + 1));
    }

    else
    {
      *v5 = xmmword_28087A738;
      v6 = unk_28087A748;
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

void sub_271186FEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void VZLoggerAddDestination(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_2711400D0("VZLoggerAddDestination", a1, a3) && !sub_27115CBB8("VZLoggerAddDestination", a2, a3))
  {
    sub_27134918C((a1 + 16), (a2 + 16), v6);
    if ((v16 & 1) == 0)
    {
      sub_27112B960(v6, a3);
      if ((v16 & 1) == 0 && v15 == 1)
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
          operator delete(v7);
        }
      }
    }
  }
}

void VZLoggerRemoveDestination(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_2711400D0("VZLoggerRemoveDestination", a1, a3) && !sub_27115CBB8("VZLoggerRemoveDestination", a2, a3))
  {
    sub_2713493F0((a1 + 16), (a2 + 16), v6);
    if ((v16 & 1) == 0)
    {
      sub_27112B960(v6, a3);
      if ((v16 & 1) == 0 && v15 == 1)
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
          operator delete(v7);
        }
      }
    }
  }
}

double VZLoggerCopyDestinationReferences(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  if (sub_271186D88("VZLoggerCopyDestinationReferences", a1))
  {
    goto LABEL_2;
  }

  sub_2713495D4((a1 + 16), &v15);
  v4 = operator new(0x48uLL, MEMORY[0x277D826F0]);
  if (v4)
  {
    result = *v16;
    v4[1] = *v16;
    *(v4 + 4) = v17;
    *(v4 + 10) = 1;
    *v4 = &unk_288119518;
    *(v4 + 1) = &unk_288119568;
    *(v4 + 8) = 0;
    *(v4 + 7) = 0;
    *(v4 + 6) = v4 + 56;
    v5 = *MEMORY[0x277D85DE8];
    return result;
  }

  if ((atomic_load_explicit(&qword_280877B50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877B50))
  {
    sub_2718519B4("VZDestinationList]", 0x11uLL, qword_280877B38);
    __cxa_guard_release(&qword_280877B50);
  }

  if ((atomic_load_explicit(&qword_28087A668, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A668))
  {
    sub_2718519B4("cv3d::vl::visual_logger::DestinationList]", 0x28uLL, &xmmword_28087A6F0);
    __cxa_guard_release(&qword_28087A668);
  }

  if (byte_28087A707 < 0)
  {
    sub_271127178(&v31, xmmword_28087A6F0, *(&xmmword_28087A6F0 + 1));
  }

  else
  {
    v31 = xmmword_28087A6F0;
    v32 = unk_28087A700;
  }

  sub_2711309E8(&v29, &v31, 1uLL);
  LOBYTE(v18) = 0;
  v28 = 0;
  sub_27112E0C4(qword_280877B38, &v29, &v18, 0);
  if (v28 == 1 && v27 == 1)
  {
    if (v26 == 1)
    {
      if (v25 < 0)
      {
        operator delete(__p);
      }

      if (v23 < 0)
      {
        operator delete(v22);
      }
    }

    if (v21 == 1 && v20 < 0)
    {
      operator delete(v19);
    }
  }

  v6 = v29;
  if (v29)
  {
    v7 = v30;
    v8 = v29;
    if (v30 != v29)
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
      v8 = v29;
    }

    v30 = v6;
    operator delete(v8);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31);
  }

  v10 = v16[0];
  v15 = &unk_28812D898;
  if (!v16[0])
  {
    goto LABEL_2;
  }

  v11 = v16[1];
  v12 = v16[0];
  if (v16[1] == v16[0])
  {
    goto LABEL_42;
  }

  do
  {
    v13 = *(v11 - 1);
    if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
      v14 = *(v11 - 3);
      if (!v14)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v14 = *(v11 - 3);
      if (!v14)
      {
        goto LABEL_33;
      }
    }

    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }

LABEL_33:
    v11 -= 32;
  }

  while (v11 != v10);
  v12 = v16[0];
LABEL_42:
  v16[1] = v10;
  operator delete(v12);
LABEL_2:
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2711875D4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_28087A668);
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VZSubLoggerGetTypeID()
{
  if (atomic_load_explicit(&qword_28087A690, memory_order_acquire))
  {
    return qword_28087A688;
  }

  if (__cxa_guard_acquire(&qword_28087A690))
  {
    qword_28087A688 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087A690);
  }

  return qword_28087A688;
}

uint64_t *VZLoggerGetSubLogger(uint64_t a1, const char *a2)
{
  if (sub_271186D88("VZLoggerGetSubLogger", a1))
  {
    return 0;
  }

  return sub_2711847FC(a1, a2);
}

uint64_t *VZLoggerGetSubLoggerMutable(uint64_t a1, const char *a2)
{
  if (sub_2711400D0("VZLoggerGetSubLoggerMutable", a1, 0))
  {
    return 0;
  }

  return sub_2711847FC(a1, a2);
}

uint64_t VZLoggerEnabled(uint64_t a1, const char *a2)
{
  if (sub_271186D88("VZLoggerEnabled", a1))
  {
    return 0;
  }

  v5 = *(a1 + 32);
  if (a2)
  {
    v6 = strlen(a2);
  }

  else
  {
    v6 = 0;
    a2 = "";
  }

  v7 = *(*(*(*v5 + 64))(v5, a2, v6) + 24);

  return v7();
}

uint64_t VZLoggerGetEnableState(uint64_t a1, const char *a2)
{
  if (sub_271186D88("VZLoggerGetEnableState", a1))
  {
    return 2;
  }

  return sub_271349BD8((a1 + 16), a2);
}

uint64_t VZSubLoggerGetEnableState(uint64_t a1)
{
  if (sub_271187908("VZSubLoggerGetEnableState", a1))
  {
    return 2;
  }

  v3 = *(**(a1 + 16) + 32);

  return v3();
}

BOOL sub_271187908(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_28087A698, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A698))
    {
      sub_27118B394();
      __cxa_guard_release(&qword_28087A698);
    }

    if (byte_28087A767 < 0)
    {
      sub_271127178(v5, xmmword_28087A750, *(&xmmword_28087A750 + 1));
    }

    else
    {
      *v5 = xmmword_28087A750;
      v6 = unk_28087A760;
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

void sub_271187B6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void VZLoggerEnable(uint64_t a1, const char *a2)
{
  if (!sub_2711400D0("VZLoggerEnable", a1, 0))
  {

    sub_271349D58((a1 + 16), a2);
  }
}

uint64_t VZSubLoggerEnable(uint64_t a1)
{
  result = sub_271187C88("VZSubLoggerEnable", a1, 0);
  if ((result & 1) == 0)
  {
    v3 = *(**(a1 + 16) + 40);

    return v3();
  }

  return result;
}

BOOL sub_271187C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_28087A6A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A6A0))
    {
      sub_27118B5FC();
      __cxa_guard_release(&qword_28087A6A0);
    }

    if (byte_28087A77F < 0)
    {
      sub_271127178(v7, xmmword_28087A768, *(&xmmword_28087A768 + 1));
    }

    else
    {
      *v7 = xmmword_28087A768;
      v8 = unk_28087A778;
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

void sub_271187EF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void VZLoggerDisable(uint64_t a1, const char *a2)
{
  if (!sub_2711400D0("VZLoggerDisable", a1, 0))
  {

    sub_271349ED0((a1 + 16), a2);
  }
}

uint64_t VZSubLoggerDisable(uint64_t a1)
{
  result = sub_271187C88("VZSubLoggerDisable", a1, 0);
  if ((result & 1) == 0)
  {
    v3 = *(**(a1 + 16) + 40);

    return v3();
  }

  return result;
}

uint64_t VZLoggerSetEnableState(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (sub_2711400D0("VZLoggerSetEnableState", a1, a4))
  {
    return 0;
  }

  sub_27134A048((a1 + 16), a3, a2, v10);
  v8 = v20;
  if (v20)
  {
    return v8;
  }

  sub_27112B960(v10, a4);
  if ((v20 & 1) != 0 || v19 != 1)
  {
    return v8;
  }

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

  if (v13 != 1 || (v12 & 0x80000000) == 0)
  {
    return v8;
  }

  operator delete(v11);
  return v8;
}

uint64_t VZLoggerSetEnableStates(uint64_t a1, uint64_t a2)
{
  result = sub_2711400D0("VZLoggerSetEnableStates", a1, 0);
  if ((result & 1) == 0)
  {
    result = sub_2711663C4("VZLoggerSetEnableStates", a2, 0);
    if ((result & 1) == 0)
    {
      v5 = *(a1 + 16);

      return sub_271541D3C(v5);
    }
  }

  return result;
}

uint64_t VZSubLoggerSetEnableState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_271187C88("VZSubLoggerSetEnableState", a1, a3))
  {
    return 0;
  }

  sub_27134ACF0(a1 + 8, a2, v8);
  v6 = v18;
  if (v18)
  {
    return v6;
  }

  sub_27112B960(v8, a3);
  if ((v18 & 1) != 0 || v17 != 1)
  {
    return v6;
  }

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

  if (v11 != 1 || (v10 & 0x80000000) == 0)
  {
    return v6;
  }

  operator delete(v9);
  return v6;
}

BOOL VZLoggerResetEnableStates(uint64_t a1)
{
  result = sub_2711400D0("VZLoggerResetEnableStates", a1, 0);
  if (!result)
  {
    v3 = *(a1 + 16);

    sub_271541BFC(v3);
  }

  return result;
}

uint64_t VZLoggerGet()
{
  if (atomic_load_explicit(&qword_28087A638, memory_order_acquire))
  {
    return qword_28087A630;
  }

  if (__cxa_guard_acquire(&qword_28087A638))
  {
    qword_28087A630 = VZLoggerCreate_0();
    __cxa_atexit(sub_271188408, &qword_28087A630, &dword_27111A000);
    __cxa_guard_release(&qword_28087A638);
  }

  return qword_28087A630;
}

uint64_t VZLoggerGetMutable()
{
  if (atomic_load_explicit(&qword_28087A638, memory_order_acquire))
  {
    return qword_28087A630;
  }

  if (__cxa_guard_acquire(&qword_28087A638))
  {
    qword_28087A630 = VZLoggerCreate_0();
    __cxa_atexit(sub_271188408, &qword_28087A630, &dword_27111A000);
    __cxa_guard_release(&qword_28087A638);
  }

  return qword_28087A630;
}

void *sub_271188408(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 24))(v1);
    return v2;
  }

  return result;
}

uint64_t VZLoggerLogData(uint64_t a1, const char *a2, uint64_t a3)
{
  result = sub_271186D88("VZLoggerLogData", a1);
  if ((result & 1) == 0)
  {
    result = sub_271133B3C("VZLoggerLogData", a3, 0);
    if ((result & 1) == 0)
    {
      v7 = *(a1 + 16);
      if (!a2)
      {
        a2 = &unk_2719251FD;
      }

      v8 = strlen(a2);
      v9 = (*(*v7 + 48))(v7, a2, v8);

      return sub_27134B074(v7, v9, a3 + 464);
    }
  }

  return result;
}

void VZLoggerLogMessage(uint64_t a1, uint64_t a2)
{
  if (!sub_271186D88("VZLoggerLogMessage", a1) && !sub_27115629C("VZLoggerLogMessage", a2, 0))
  {

    sub_27134A680((a1 + 16), (a2 + 16));
  }
}

void VZLoggerLogMessageList(uint64_t a1, uint64_t a2)
{
  if (!sub_271186D88("VZLoggerLogMessageList", a1) && !sub_2711570DC("VZLoggerLogMessageList", a2, 0))
  {

    sub_27134A7C8((a1 + 16), a2 + 8);
  }
}

uint64_t VZSubLoggerLogData(uint64_t a1, uint64_t a2)
{
  result = sub_271187908("VZSubLoggerLogData", a1);
  if ((result & 1) == 0)
  {
    result = sub_271133B3C("VZSubLoggerLogData", a2, 0);
    if ((result & 1) == 0)
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 16);

      return sub_27134B074(v5, v6, a2 + 464);
    }
  }

  return result;
}

uint64_t VZLoggerSync(uint64_t a1, uint64_t a2)
{
  if (sub_2711400D0("VZLoggerSync", a1, a2))
  {
    return 0;
  }

  sub_27134A938((a1 + 16), v8);
  result = sub_27113C65C("VZLoggerSync", v8, 0, a2);
  if ((v18 & 1) == 0 && v17 == 1)
  {
    if (v16 == 1)
    {
      if (v15 < 0)
      {
        v5 = result;
        operator delete(__p);
        result = v5;
      }

      if (v13 < 0)
      {
        v6 = result;
        operator delete(v12);
        result = v6;
      }
    }

    if (v11 == 1 && v10 < 0)
    {
      v7 = result;
      operator delete(v9);
      return v7;
    }
  }

  return result;
}

uint64_t sub_2711887B8(uint64_t result)
{
  if (atomic_fetch_add((result + 40), 0xFFFFFFFF) == 1)
  {
    return (*(*(result + 8) + 8))();
  }

  return result;
}

uint64_t sub_2711887F4()
{
  if (atomic_load_explicit(&qword_28087A658, memory_order_acquire))
  {
    return qword_28087A650;
  }

  if (__cxa_guard_acquire(&qword_28087A658))
  {
    qword_28087A650 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087A658);
  }

  return qword_28087A650;
}

BOOL sub_271188858(void *a1, char **lpsrc)
{
  v3 = **lpsrc;
  v4 = __dynamic_cast(lpsrc, &unk_28812C878, &unk_28812C1E8, 0);
  return v4 && v4 == a1;
}

void sub_2711888CC(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_28087A660, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_28087A660))
    {
      sub_2718519B4("VZLogger]", 8uLL, qword_28087A6D8);
      __cxa_guard_release(&qword_28087A660);
    }
  }

  v2 = a1;
  operator new();
}

void sub_271188D7C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  __cxa_guard_abort(&qword_28087A660);
  __cxa_begin_catch(a1);
  sub_271189E64();
  sub_27112B400(&__p, "failed to create description");
  sub_27112DB38(qword_28087A6D8, &__p, 0);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x271188CECLL);
}

uint64_t sub_271188ECC(uint64_t result)
{
  if (atomic_fetch_add((result + 48), 0xFFFFFFFF) == 1)
  {
    return (*(*(result + 8) + 8))();
  }

  return result;
}

uint64_t sub_271188F08()
{
  if (atomic_load_explicit(&qword_28087A690, memory_order_acquire))
  {
    return qword_28087A688;
  }

  if (__cxa_guard_acquire(&qword_28087A690))
  {
    qword_28087A688 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087A690);
  }

  return qword_28087A688;
}

void *sub_271188F6C(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28812C878, &unk_28812C7D0, 0);
  if (result)
  {
    return (*(a1 + 16) == result[2]);
  }

  return result;
}

void sub_271188FE8(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_28087A640, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_28087A640))
    {
      sub_2718519B4("VZSubLogger]", 0xBuLL, qword_28087A6A8);
      __cxa_guard_release(&qword_28087A640);
    }
  }

  v2 = a1;
  operator new();
}

void sub_271189498(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  __cxa_guard_abort(&qword_28087A640);
  __cxa_begin_catch(a1);
  sub_27118996C();
  sub_27112B400(&__p, "failed to create description");
  sub_27112DB38(qword_28087A6A8, &__p, 0);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x271189408);
}

void *sub_2711895D8(void *result, uint64_t a2)
{
  *result = &unk_28812D898;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  if (v3 != v2)
  {
    if (((v3 - v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_271135560();
  }

  return result;
}

uint64_t sub_2711896D4(uint64_t a1)
{
  *a1 = &unk_28812D898;
  v3 = (a1 + 8);
  sub_271189798(&v3);
  return a1;
}

uint64_t sub_27118972C(uint64_t a1)
{
  *a1 = &unk_28812D898;
  v3 = (a1 + 8);
  sub_271189798(&v3);
  return MEMORY[0x2743BF050](a1, 0xA1C4030951706);
}

void sub_271189798(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (!v2)
  {
    return;
  }

  v4 = v1[1];
  v5 = **a1;
  if (v4 == v2)
  {
    goto LABEL_13;
  }

  do
  {
    v6 = *(v4 - 1);
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      v7 = *(v4 - 3);
      if (!v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *(v4 - 3);
      if (!v7)
      {
        goto LABEL_4;
      }
    }

    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }

LABEL_4:
    v4 -= 32;
  }

  while (v4 != v2);
  v5 = **a1;
LABEL_13:
  v1[1] = v2;

  operator delete(v5);
}

void sub_2711898C0(char *a1)
{
  if (a1)
  {
    sub_2711898C0(*a1);
    sub_2711898C0(*(a1 + 1));
    v2 = *(a1 + 7);
    *(a1 + 7) = 0;
    if (v2)
    {
      (*(*v2 + 24))(v2);
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
      v3 = a1;
    }

    else
    {
      v3 = a1;
    }

    operator delete(v3);
  }
}

void sub_27118996C()
{
  if ((atomic_load_explicit(&qword_28087A640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A640))
  {
    sub_2718519B4("VZSubLogger]", 0xBuLL, qword_28087A6A8);

    __cxa_guard_release(&qword_28087A640);
  }
}

uint64_t *sub_2711899FC(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 56);
      *(v2 + 56) = 0;
      if (v3)
      {
        (*(*v3 + 24))(v3);
      }

      if (*(v2 + 55) < 0)
      {
        operator delete(*(v2 + 32));
      }
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t VZLoggerCreate_0()
{
  v0 = operator new(0x88uLL, MEMORY[0x277D826F0]);
  if (v0)
  {
    *v0 = 0u;
    v0[16] = 0;
    *(v0 + 6) = 0u;
    *(v0 + 7) = 0u;
    *(v0 + 4) = 0u;
    *(v0 + 5) = 0u;
    *(v0 + 2) = 0u;
    *(v0 + 3) = 0u;
    *(v0 + 1) = 0u;
    *v0 = &unk_288117810;
    LOBYTE(v22) = 0;
    v23 = 0;
    LOBYTE(v20) = 0;
    v21 = 0;
    sub_271347894((v0 + 2), &v22);
  }

  if ((atomic_load_explicit(&qword_28087A660, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A660))
  {
    sub_2718519B4("VZLogger]", 8uLL, qword_28087A6D8);
    __cxa_guard_release(&qword_28087A660);
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
  LOBYTE(v6) = 0;
  v16 = 0;
  sub_27112E0C4(qword_28087A6D8, &v17, &v6, 0);
  if (v16 == 1 && v15 == 1)
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
      operator delete(v7);
    }
  }

  v1 = v17;
  if (v17)
  {
    v2 = v18;
    v3 = v17;
    if (v18 != v17)
    {
      do
      {
        v4 = *(v2 - 1);
        v2 -= 3;
        if (v4 < 0)
        {
          operator delete(*v2);
        }
      }

      while (v2 != v1);
      v3 = v17;
    }

    v18 = v1;
    operator delete(v3);
  }

  return 0;
}

void sub_271189E64()
{
  if ((atomic_load_explicit(&qword_28087A660, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A660))
  {
    sub_2718519B4("VZLogger]", 8uLL, qword_28087A6D8);

    __cxa_guard_release(&qword_28087A660);
  }
}

void sub_271189EF4(uint64_t **a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087A660, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A660))
  {
    sub_2718519B4("VZLogger]", 8uLL, qword_28087A6D8);
    __cxa_guard_release(&qword_28087A660);
  }

  if ((atomic_load_explicit(&qword_2808779D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808779D0))
  {
    sub_27114C390(&xmmword_2808779B8);
    __cxa_guard_release(&qword_2808779D0);
  }

  if (byte_2808779CF < 0)
  {
    sub_271127178(&v23, xmmword_2808779B8, *(&xmmword_2808779B8 + 1));
  }

  else
  {
    v23 = xmmword_2808779B8;
    v24 = unk_2808779C8;
  }

  if ((atomic_load_explicit(&qword_280877BF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877BF0))
  {
    sub_27117058C(&xmmword_280877BD8);
    __cxa_guard_release(&qword_280877BF0);
  }

  if (byte_280877BEF < 0)
  {
    sub_271127178(&v25, xmmword_280877BD8, *(&xmmword_280877BD8 + 1));
  }

  else
  {
    v25 = xmmword_280877BD8;
    v26 = unk_280877BE8;
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

  sub_27112E0C4(qword_28087A6D8, &v21, &v10, **a1);
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

void sub_27118A1F4(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_280877BF0);
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27118A298(uint64_t result)
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

void sub_27118A310(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D71C(va);
  _Unwind_Resume(a1);
}

void sub_27118A324(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D71C(va);
  __cxa_free_exception(v2);
  _Unwind_Resume(a1);
}

void sub_27118A354(uint64_t **a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087A660, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A660))
  {
    sub_2718519B4("VZLogger]", 8uLL, qword_28087A6D8);
    __cxa_guard_release(&qword_28087A660);
  }

  if ((atomic_load_explicit(&qword_2808779D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808779D0))
  {
    sub_27114C390(&xmmword_2808779B8);
    __cxa_guard_release(&qword_2808779D0);
  }

  if (byte_2808779CF < 0)
  {
    sub_271127178(&v23, xmmword_2808779B8, *(&xmmword_2808779B8 + 1));
  }

  else
  {
    v23 = xmmword_2808779B8;
    v24 = unk_2808779C8;
  }

  if ((atomic_load_explicit(&qword_28087A670, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A670))
  {
    sub_27118A6EC();
    __cxa_guard_release(&qword_28087A670);
  }

  if (byte_28087A71F < 0)
  {
    sub_271127178(&v25, xmmword_28087A708, *(&xmmword_28087A708 + 1));
  }

  else
  {
    v25 = xmmword_28087A708;
    v26 = unk_28087A718;
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

  sub_27112E0C4(qword_28087A6D8, &v21, &v10, **a1);
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

void sub_27118A648(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_28087A670);
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  _Unwind_Resume(a1);
}

double sub_27118A6EC()
{
  *(&__p.__r_.__value_.__s + 23) = 17;
  strcpy(&__p, "VZDestinationList");
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
  xmmword_28087A708 = v7;
  unk_28087A718 = v8;
  return result;
}

void sub_27118A90C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (v23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27118A94C(uint64_t **a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087A660, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A660))
  {
    sub_2718519B4("VZLogger]", 8uLL, qword_28087A6D8);
    __cxa_guard_release(&qword_28087A660);
  }

  if ((atomic_load_explicit(&qword_2808779D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808779D0))
  {
    sub_27114C390(&xmmword_2808779B8);
    __cxa_guard_release(&qword_2808779D0);
  }

  if (byte_2808779CF < 0)
  {
    sub_271127178(&v23, xmmword_2808779B8, *(&xmmword_2808779B8 + 1));
  }

  else
  {
    v23 = xmmword_2808779B8;
    v24 = unk_2808779C8;
  }

  if ((atomic_load_explicit(&qword_28087A678, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A678))
  {
    sub_27118AE94();
  }

  if (byte_28087A737 < 0)
  {
    sub_271127178(&v25, xmmword_28087A720, *(&xmmword_28087A720 + 1));
  }

  else
  {
    v25 = xmmword_28087A720;
    v26 = unk_28087A730;
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

  if ((atomic_load_explicit(&qword_280877BF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877BF0))
  {
    sub_27117058C(&xmmword_280877BD8);
    __cxa_guard_release(&qword_280877BF0);
  }

  if (byte_280877BEF < 0)
  {
    sub_271127178(&v29, xmmword_280877BD8, *(&xmmword_280877BD8 + 1));
  }

  else
  {
    v29 = xmmword_280877BD8;
    v30 = unk_280877BE8;
  }

  sub_2711309E8(&v21, &v23, 4uLL);
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

  sub_27112E0C4(qword_28087A6D8, &v21, &v10, **a1);
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

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29);
    if ((SHIBYTE(v28) & 0x80000000) == 0)
    {
LABEL_42:
      if ((SHIBYTE(v26) & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

LABEL_48:
      operator delete(v25);
      if ((SHIBYTE(v24) & 0x80000000) == 0)
      {
        goto LABEL_44;
      }

LABEL_49:
      operator delete(v23);
      v9 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  else if ((SHIBYTE(v28) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  operator delete(v27);
  if (SHIBYTE(v26) < 0)
  {
    goto LABEL_48;
  }

LABEL_43:
  if (SHIBYTE(v24) < 0)
  {
    goto LABEL_49;
  }

LABEL_44:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_27118AD6C(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_280877BF0);
  while (1)
  {
    v4 = *(v1 - 1);
    v1 -= 3;
    if (v4 < 0)
    {
      operator delete(*v1);
    }

    if (v1 == (v2 - 144))
    {
      _Unwind_Resume(a1);
    }
  }
}

void sub_27118AE94()
{
  v2 = *MEMORY[0x277D85DE8];
  strcpy(&__p, "cv3d::esn::OptionalRef");
  *(&__p.__r_.__value_.__s + 23) = 22;
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, &v0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_27118B0AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void **a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_27137F4D0(&a16);
  if (*(v30 - 25) < 0)
  {
    operator delete(*(v30 - 48));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27118B120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    JUMPOUT(0x27118B114);
  }

  JUMPOUT(0x27118B118);
}

double sub_27118B134()
{
  *(&__p.__r_.__value_.__s + 23) = 8;
  strcpy(&__p, "VZLogger");
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
  xmmword_28087A738 = v7;
  unk_28087A748 = v8;
  return result;
}

void sub_27118B354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_27118B394()
{
  *(&__p.__r_.__value_.__s + 23) = 11;
  strcpy(&__p, "VZSubLogger");
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
  xmmword_28087A750 = v7;
  unk_28087A760 = v8;
  return result;
}

void sub_27118B5BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_27118B5FC()
{
  *(&__p.__r_.__value_.__s + 23) = 11;
  strcpy(&__p, "VZSubLogger");
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
  xmmword_28087A768 = v5;
  unk_28087A778 = v6;
  return result;
}

void sub_27118B7D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27118B804(uint64_t a1)
{
  sub_27118E634(a1 + 232, *(a1 + 240));
  sub_27118E634(a1 + 208, *(a1 + 216));
  return a1;
}

void sub_27118B840(uint64_t a1)
{
  sub_27118E634(a1 + 224, *(a1 + 232));
  v2 = *(a1 + 208);

  sub_27118E634(a1 + 200, v2);
}

void sub_27118B884(uint64_t a1)
{
  sub_27118E634(a1 + 232, *(a1 + 240));
  sub_27118E634(a1 + 208, *(a1 + 216));

  JUMPOUT(0x2743BF050);
}

void sub_27118B8E0(uint64_t a1)
{
  sub_27118E634(a1 + 224, *(a1 + 232));
  sub_27118E634(a1 + 200, *(a1 + 208));

  JUMPOUT(0x2743BF050);
}

uint64_t VZMeshGetTypeID()
{
  if (atomic_load_explicit(&qword_28087A788, memory_order_acquire))
  {
    return qword_28087A780;
  }

  if (__cxa_guard_acquire(&qword_28087A788))
  {
    qword_28087A780 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087A788);
  }

  return qword_28087A780;
}

void **VZDataCreateWithMesh(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v114 = *MEMORY[0x277D85DE8];
  if (sub_27118C39C("VZDataCreateWithMesh", a1, a3))
  {
    v5 = 0;
    goto LABEL_129;
  }

  sub_27113347C(a2, &v41);
  v39 = &v40;
  v40 = a3;
  LOBYTE(v70) = 0;
  v102 = 0;
  if (v69 == 1)
  {
    v70 = v41;
    v71 = v42;
    LOBYTE(v72) = 0;
    v74 = 0;
    if (v45 == 1)
    {
      v72 = *v43;
      v73 = v44;
      v43[1] = 0;
      v44 = 0;
      v43[0] = 0;
      v74 = 1;
    }

    v75 = v46;
    v76 = v47;
    LOBYTE(v77) = 0;
    v79 = 0;
    if (v50 == 1)
    {
      v77 = v48;
      v78 = v49;
      v49 = 0;
      v48 = 0uLL;
      v79 = 1;
      LOBYTE(v80) = 0;
      v84 = 0;
      if (v53 != 1)
      {
LABEL_8:
        LOBYTE(v85[0]) = 0;
        v87 = 0;
        if (v56 != 1)
        {
          goto LABEL_9;
        }

        goto LABEL_13;
      }
    }

    else
    {
      LOBYTE(v80) = 0;
      v84 = 0;
      if (v53 != 1)
      {
        goto LABEL_8;
      }
    }

    _X0 = 0;
    _X1 = 0;
    v81 = v52;
    v80 = *v51;
    v51[1] = 0;
    v52 = 0;
    v51[0] = 0;
    __asm { CASPAL          X0, X1, X0, X1, [X8] }

    v82 = _X0;
    v83 = 0;
    v84 = 1;
    LOBYTE(v85[0]) = 0;
    v87 = 0;
    if (v56 != 1)
    {
LABEL_9:
      LOBYTE(v88) = 0;
      v101 = 0;
      if (v68 != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }

LABEL_13:
    *v85 = *v54;
    v86 = v55;
    v55 = 0;
    v54[1] = 0;
    v54[0] = 0;
    v87 = 1;
    LOBYTE(v88) = 0;
    v101 = 0;
    if (v68 != 1)
    {
LABEL_19:
      v102 = 1;
      goto LABEL_20;
    }

LABEL_14:
    LOBYTE(v88) = 0;
    v90 = 0;
    if (v59 == 1)
    {
      v88 = v57;
      v89 = v58;
      v58 = 0;
      v57 = 0uLL;
      v90 = 1;
      LOBYTE(v91) = 0;
      v95 = 0;
      if (v62 != 1)
      {
LABEL_16:
        LOBYTE(__p) = 0;
        v98 = 0;
        if (v65 != 1)
        {
LABEL_18:
          v99 = v66;
          v100 = v67;
          v101 = 1;
          goto LABEL_19;
        }

LABEL_17:
        __p = *v63;
        v97 = v64;
        v64 = 0;
        v63[0] = 0;
        v63[1] = 0;
        v98 = 1;
        goto LABEL_18;
      }
    }

    else
    {
      LOBYTE(v91) = 0;
      v95 = 0;
      if (v62 != 1)
      {
        goto LABEL_16;
      }
    }

    _X0 = 0;
    _X1 = 0;
    v91 = *v60;
    v92 = v61;
    v61 = 0;
    v60[0] = 0;
    v60[1] = 0;
    __asm { CASPAL          X0, X1, X0, X1, [X9] }

    v93 = _X0;
    v94 = 0;
    v95 = 1;
    LOBYTE(__p) = 0;
    v98 = 0;
    if (v65 != 1)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_20:
  sub_271350260((v5 + 2), &v70, &v103);
  if (v102 != 1)
  {
    goto LABEL_57;
  }

  if (v101 == 1)
  {
    if (v98 == 1 && SHIBYTE(v97) < 0)
    {
      operator delete(__p);
    }

    if (v95 == 1 && SHIBYTE(v92) < 0)
    {
      operator delete(v91);
    }

    if (v90 == 1 && SHIBYTE(v89) < 0)
    {
      operator delete(v88);
    }
  }

  if (v87 == 1)
  {
    v5 = v85[0];
    if (v85[0])
    {
      v13 = v85[1];
      v14 = v85[0];
      if (v85[1] == v85[0])
      {
LABEL_47:
        v85[1] = v5;
        operator delete(v14);
        goto LABEL_48;
      }

      while (1)
      {
        v15 = v13;
        if (*(v13 - 16) == 1 && *(v13 - 41) < 0)
        {
          operator delete(*(v13 - 8));
          v13 -= 12;
          if (*(v15 - 72) == 1)
          {
LABEL_39:
            if (*(v15 - 73) < 0)
            {
              operator delete(*v13);
            }
          }
        }

        else
        {
          v13 -= 12;
          if (*(v15 - 72) == 1)
          {
            goto LABEL_39;
          }
        }

        if (v13 == v5)
        {
          v14 = v85[0];
          goto LABEL_47;
        }
      }
    }
  }

LABEL_48:
  if (v84 == 1 && SHIBYTE(v81) < 0)
  {
    operator delete(v80);
  }

  if (v79 == 1 && SHIBYTE(v78) < 0)
  {
    operator delete(v77);
  }

  if (v74 == 1 && SHIBYTE(v73) < 0)
  {
    operator delete(v72);
  }

LABEL_57:
  v19 = v113;
  if (v113)
  {
    v20 = sub_271135F14(&v103);
    sub_271135E2C(v20);
    v5 = v21;
    if (v21)
    {
      goto LABEL_82;
    }

    LOBYTE(v28) = 0;
    v38 = 0;
    sub_27118E8EC(&v39, &v28);
    if (v38 != 1 || v37 != 1)
    {
      goto LABEL_81;
    }

    if (v36 == 1)
    {
      if (v35 < 0)
      {
        operator delete(v34);
      }

      if (v33 < 0)
      {
        operator delete(v32);
      }
    }

    v5 = 0;
    if (v31 == 1 && v30 < 0)
    {
LABEL_80:
      operator delete(v29);
LABEL_81:
      v5 = 0;
    }
  }

  else
  {
    v28 = v103;
    LOBYTE(v29) = 0;
    v37 = 0;
    if (v112 == 1)
    {
      sub_27112F6CC(&v29, &v104);
      v37 = 1;
    }

    v38 = 1;
    sub_27118E8EC(&v39, &v28);
    if (v38 == 1 && v37 == 1)
    {
      if (v36 == 1)
      {
        if (v35 < 0)
        {
          operator delete(v34);
        }

        if (v33 < 0)
        {
          operator delete(v32);
        }
      }

      if (v31 == 1 && v30 < 0)
      {
        goto LABEL_80;
      }
    }
  }

LABEL_82:
  if (v113 == 1)
  {
    sub_27113681C(&v103);
  }

  else if (v112 == 1)
  {
    if (v111 == 1)
    {
      if (v110 < 0)
      {
        operator delete(v109);
      }

      if (v108 < 0)
      {
        operator delete(v107);
      }
    }

    if (v106 == 1 && v105 < 0)
    {
      operator delete(v104);
    }
  }

  if ((v19 & 1) == 0)
  {
    v5 = 0;
  }

  if (v69 == 1)
  {
    if (v68 == 1)
    {
      if (v65 == 1 && SHIBYTE(v64) < 0)
      {
        operator delete(v63[0]);
      }

      if (v62 == 1 && SHIBYTE(v61) < 0)
      {
        operator delete(v60[0]);
      }

      if (v59 == 1 && SHIBYTE(v58) < 0)
      {
        operator delete(v57);
      }
    }

    if (v56 != 1)
    {
      goto LABEL_120;
    }

    v22 = v54[0];
    if (!v54[0])
    {
      goto LABEL_120;
    }

    v23 = v54[1];
    v24 = v54[0];
    if (v54[1] == v54[0])
    {
LABEL_119:
      v54[1] = v22;
      operator delete(v24);
LABEL_120:
      if (v53 == 1 && SHIBYTE(v52) < 0)
      {
        operator delete(v51[0]);
      }

      if (v50 == 1 && SHIBYTE(v49) < 0)
      {
        operator delete(v48);
      }

      if (v45 == 1 && SHIBYTE(v44) < 0)
      {
        operator delete(v43[0]);
      }

      goto LABEL_129;
    }

    while (1)
    {
      v25 = v23;
      if (*(v23 - 16) == 1 && *(v23 - 41) < 0)
      {
        operator delete(*(v23 - 8));
        v23 -= 12;
        if (*(v25 - 72) == 1)
        {
LABEL_114:
          if (*(v25 - 73) < 0)
          {
            operator delete(*v23);
          }
        }
      }

      else
      {
        v23 -= 12;
        if (*(v25 - 72) == 1)
        {
          goto LABEL_114;
        }
      }

      if (v23 == v22)
      {
        v24 = v54[0];
        goto LABEL_119;
      }
    }
  }

LABEL_129:
  v26 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_27118C164(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::logic_error a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::runtime_error __p, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t *a53)
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
      sub_27118E8EC(&a53, &STACK[0x4A0]);
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
      sub_27118E8EC(&a53, &STACK[0x4A0]);
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
      sub_27118E8EC(&a53, &STACK[0x4A0]);
      sub_2711307D4(&STACK[0x4A0]);
      __cxa_end_catch();
    }

    JUMPOUT(0x27118BFD4);
  }

  _Unwind_Resume(a1);
}

BOOL sub_27118C39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_28087A790, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A790))
    {
      sub_27118E68C();
      __cxa_guard_release(&qword_28087A790);
    }

    if (byte_28087A7C7 < 0)
    {
      sub_271127178(v7, xmmword_28087A7B0, *(&xmmword_28087A7B0 + 1));
    }

    else
    {
      *v7 = xmmword_28087A7B0;
      v8 = unk_28087A7C0;
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

void sub_27118C60C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void VZDataGetMesh(uint64_t a1, uint64_t a2)
{
  if (sub_271133B3C("VZDataGetMesh", a1, a2) || *(a1 + 584))
  {
    return;
  }

  v53 = &v54;
  v54 = a2;
  sub_271353588((a1 + 32), &v34);
  v4 = v52;
  if ((v52 & 1) == 0)
  {
    v23 = v34;
    LOBYTE(v24) = 0;
    v32 = 0;
    if (v41 == 1)
    {
      sub_27112F6CC(&v24, v35);
      v32 = 1;
    }

    v33 = 1;
    sub_27118EEE4(&v53, &v23);
    if (v33 == 1 && v32 == 1)
    {
      if (v31 == 1)
      {
        if (v30 < 0)
        {
          operator delete(__p);
        }

        if (v28 < 0)
        {
          operator delete(v27);
        }
      }

      if (v26 == 1 && v25 < 0)
      {
        operator delete(v24);
        if (v52 != 1)
        {
          goto LABEL_40;
        }

LABEL_33:
        v16 = v5;
        sub_27118E634(&v49, v50);
        sub_27118E634(&v46, v47);
        goto LABEL_34;
      }
    }

    goto LABEL_32;
  }

  v5 = operator new(0x108uLL, MEMORY[0x277D826F0]);
  if (!v5)
  {
    LOBYTE(v23) = 0;
    v33 = 0;
    sub_27118EEE4(&v53, &v23);
    if (v33 != 1 || v32 != 1)
    {
      goto LABEL_31;
    }

    if (v31 == 1)
    {
      if (v30 < 0)
      {
        operator delete(__p);
      }

      if (v28 < 0)
      {
        operator delete(v27);
      }
    }

    v5 = 0;
    if (v26 == 1 && v25 < 0)
    {
      operator delete(v24);
LABEL_31:
      v5 = 0;
    }

LABEL_32:
    if (v52 != 1)
    {
      goto LABEL_40;
    }

    goto LABEL_33;
  }

  *v5 = &unk_288117810;
  v6 = v43;
  *(v5 + 9) = v42;
  *(v5 + 10) = v6;
  v7 = v45;
  *(v5 + 11) = v44;
  *(v5 + 12) = v7;
  v8 = *v39;
  *(v5 + 5) = v38;
  *(v5 + 6) = v8;
  v9 = v41;
  *(v5 + 7) = v40;
  *(v5 + 8) = v9;
  v10 = *v35;
  *(v5 + 1) = v34;
  *(v5 + 2) = v10;
  v11 = *v37;
  *(v5 + 3) = v36;
  *(v5 + 4) = v11;
  v12 = v46;
  v13 = v47;
  *(v5 + 27) = v47;
  v14 = v5 + 216;
  *(v5 + 26) = v12;
  v15 = v48;
  *(v5 + 28) = v48;
  if (v15)
  {
    v13[2] = v14;
    v46 = &v47;
    v47 = 0;
    v48 = 0;
  }

  else
  {
    *(v5 + 26) = v14;
  }

  v17 = v49;
  v18 = v50;
  *(v5 + 30) = v50;
  v19 = v5 + 240;
  *(v5 + 29) = v17;
  v20 = v51;
  *(v5 + 31) = v51;
  if (v20)
  {
    v18[2] = v19;
    v49 = &v50;
    v50 = 0;
    v51 = 0;
  }

  else
  {
    *(v5 + 29) = v19;
  }

  *(v5 + 64) = 1;
  *v5 = &unk_288119198;
  *(v5 + 1) = &unk_2881191E8;
  if (v52 == 1)
  {
    goto LABEL_33;
  }

LABEL_40:
  if (v41 != 1)
  {
    goto LABEL_49;
  }

  if (BYTE8(v40) == 1)
  {
    if (SBYTE7(v40) < 0)
    {
      v21 = v5;
      operator delete(v39[0]);
      v5 = v21;
    }

    if (SBYTE7(v38) < 0)
    {
      v22 = v5;
      operator delete(v37[0]);
      v5 = v22;
    }
  }

  if (BYTE8(v36) != 1 || (SBYTE7(v36) & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

  v16 = v5;
  operator delete(v35[0]);
LABEL_34:
  v5 = v16;
LABEL_49:
  if ((v4 & 1) == 0)
  {
    v5 = 0;
  }

  *(a1 + 584) = v5;
}

void sub_27118C9F8(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::logic_error a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::runtime_error __p, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, __int128 a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_2711307D4(&a37);
  sub_27118F24C(&a53);
  if (a2 == 3)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    std::logic_error::logic_error(&a10, exception_ptr);
    a10.__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_begin_catch(a1);
    a9 = std::logic_error::what(&a10);
    sub_27113604C(&__p, &a9);
    sub_271369D54(&__p, &a16);
    a53 = a16;
    sub_27184A2B4(&a54, &a17);
    a67 = 1;
    sub_27118EEE4((v67 - 64), &a53);
    sub_2711307D4(&a53);
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
    v71 = __cxa_get_exception_ptr(a1);
    sub_271135FD0(&__p, v71);
    __cxa_begin_catch(a1);
    v72 = (a35 + 48);
    if (*(a35 + 71) < 0)
    {
      v72 = *v72;
    }

    a9 = v72;
    sub_27113604C(&a10, &a9);
    sub_27136A868(&a10, &a16);
    a53 = a16;
    sub_27184A2B4(&a54, &a17);
    a67 = 1;
    sub_27118EEE4((v67 - 64), &a53);
    sub_2711307D4(&a53);
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
    LOBYTE(a53) = 0;
    a67 = 0;
    sub_27118EEE4((v67 - 64), &a53);
    sub_2711307D4(&a53);
    __cxa_end_catch();
  }

  JUMPOUT(0x27118C9D8);
}

char *VZMeshCreate()
{
  result = operator new(0x108uLL, MEMORY[0x277D826F0]);
  if (result)
  {
    *(result + 2) = 0;
    *(result + 24) = xmmword_271856B50;
    *(result + 5) = 0;
    *(result + 6) = 0;
    *(result + 56) = xmmword_271856B50;
    *(result + 9) = 0;
    *(result + 10) = 0;
    *(result + 88) = xmmword_271856B50;
    *(result + 13) = 0;
    *(result + 14) = 0;
    *(result + 120) = xmmword_271856B50;
    *(result + 17) = 0;
    *(result + 18) = 0;
    *(result + 152) = xmmword_271856B50;
    *(result + 21) = 0;
    *(result + 22) = 0;
    *(result + 184) = xmmword_271856B50;
    *(result + 27) = 0;
    *(result + 25) = 0;
    *(result + 26) = result + 216;
    *(result + 31) = 0;
    *(result + 32) = 1;
    *(result + 30) = 0;
    *(result + 28) = 0;
    *(result + 29) = result + 240;
    *result = &unk_288119198;
    *(result + 1) = &unk_2881191E8;
  }

  else
  {
    if ((atomic_load_explicit(&qword_28087A7A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A7A0))
    {
      sub_2718519B4("VZMesh]", 6uLL, qword_28087A7E0);
      __cxa_guard_release(&qword_28087A7A0);
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    LOBYTE(v5) = 0;
    v15 = 0;
    sub_27112E0C4(qword_28087A7E0, &v16, &v5, 0);
    if (v15 == 1 && v14 == 1)
    {
      if (v13 == 1)
      {
        if (v12 < 0)
        {
          operator delete(__p);
        }

        if (v10 < 0)
        {
          operator delete(v9);
        }
      }

      if (v8 == 1 && v7 < 0)
      {
        operator delete(v6);
      }
    }

    v1 = v16;
    if (v16)
    {
      v2 = v17;
      v3 = v16;
      if (v17 != v16)
      {
        do
        {
          v4 = *(v2 - 1);
          v2 -= 3;
          if (v4 < 0)
          {
            operator delete(*v2);
          }
        }

        while (v2 != v1);
        v3 = v16;
      }

      v17 = v1;
      operator delete(v3);
    }

    return 0;
  }

  return result;
}

BOOL VZMeshSetVertices(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_27118CE84("VZMeshSetVertices", a1))
  {
    return 0;
  }

  return sub_27134D960(a1 + 16, a2, a3);
}

BOOL sub_27118CE84(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_28087A7A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A7A8))
    {
      sub_27118F2F8();
      __cxa_guard_release(&qword_28087A7A8);
    }

    if (byte_28087A80F < 0)
    {
      sub_271127178(v5, xmmword_28087A7F8, *(&xmmword_28087A7F8 + 1));
    }

    else
    {
      *v5 = xmmword_28087A7F8;
      v6 = unk_28087A808;
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

void sub_27118D0E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL VZMeshSetFaces(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_27118CE84("VZMeshSetFaces", a1))
  {
    return 0;
  }

  return sub_27134DB20(a1 + 16, a2, a3);
}

BOOL VZMeshSetVertexNormals(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_27118CE84("VZMeshSetVertexNormals", a1))
  {
    return 0;
  }

  return sub_27134E060(a1 + 16, a2, a3);
}

BOOL VZMeshSetFaceNormals(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_27118CE84("VZMeshSetFaceNormals", a1))
  {
    return 0;
  }

  return sub_27134E220(a1 + 16, a2, a3);
}

BOOL VZMeshSetVertexColors(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_27118CE84("VZMeshSetVertexColors", a1))
  {
    return 0;
  }

  return sub_27134DCE0(a1 + 16, a2, a3);
}

BOOL VZMeshSetFaceColors(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_27118CE84("VZMeshSetFaceColors", a1))
  {
    return 0;
  }

  return sub_27134DEA0(a1 + 16, a2, a3);
}

uint64_t VZMeshSetVertexLabels(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned __int8 a5)
{
  if (sub_27118CE84("VZMeshSetVertexLabels", a1))
  {
    return 0;
  }

  return sub_27134E3E0((a1 + 16), a2, a3, a4, a5);
}

uint64_t VZMeshSetFaceLabels(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned __int8 a5)
{
  if (sub_27118CE84("VZMeshSetFaceLabels", a1))
  {
    return 0;
  }

  return sub_27134E688((a1 + 16), a2, a3, a4, a5);
}

uint64_t VZMeshGetVertices(uint64_t a1)
{
  v2 = sub_27118C39C("VZMeshGetVertices", a1, 0);
  result = 0;
  if (!v2)
  {
    return *(a1 + 16);
  }

  return result;
}

uint64_t VZMeshGetVertexCount(uint64_t a1)
{
  v2 = sub_27118C39C("VZMeshGetVertexCount", a1, 0);
  result = 0;
  if (!v2)
  {
    return *(a1 + 28);
  }

  return result;
}

uint64_t VZMeshGetFaces(uint64_t a1)
{
  v2 = sub_27118C39C("VZMeshGetFaces", a1, 0);
  result = 0;
  if (!v2)
  {
    return *(a1 + 48);
  }

  return result;
}

uint64_t VZMeshGetFaceCount(uint64_t a1)
{
  v2 = sub_27118C39C("VZMeshGetFaceCount", a1, 0);
  result = 0;
  if (!v2)
  {
    return *(a1 + 60);
  }

  return result;
}

uint64_t VZMeshGetVertexNormals(uint64_t a1)
{
  v2 = sub_27118C39C("VZMeshGetVertexNormals", a1, 0);
  result = 0;
  if (!v2)
  {
    return *(a1 + 144);
  }

  return result;
}

uint64_t VZMeshGetFaceNormals(uint64_t a1)
{
  v2 = sub_27118C39C("VZMeshGetFaceNormals", a1, 0);
  result = 0;
  if (!v2)
  {
    return *(a1 + 176);
  }

  return result;
}

uint64_t VZMeshGetVertexNormalCount(uint64_t a1)
{
  v2 = sub_27118C39C("VZMeshGetVertexNormalCount", a1, 0);
  result = 0;
  if (!v2)
  {
    return *(a1 + 156);
  }

  return result;
}

uint64_t VZMeshGetFaceNormalCount(uint64_t a1)
{
  v2 = sub_27118C39C("VZMeshGetFaceNormalCount", a1, 0);
  result = 0;
  if (!v2)
  {
    return *(a1 + 188);
  }

  return result;
}

uint64_t VZMeshGetVertexColors(uint64_t a1)
{
  v2 = sub_27118C39C("VZMeshGetVertexColors", a1, 0);
  result = 0;
  if (!v2)
  {
    return *(a1 + 80);
  }

  return result;
}

uint64_t VZMeshGetFaceColors(uint64_t a1)
{
  v2 = sub_27118C39C("VZMeshGetFaceColors", a1, 0);
  result = 0;
  if (!v2)
  {
    return *(a1 + 112);
  }

  return result;
}

uint64_t VZMeshGetVertexColorCount(uint64_t a1)
{
  v2 = sub_27118C39C("VZMeshGetVertexColorCount", a1, 0);
  result = 0;
  if (!v2)
  {
    return *(a1 + 92);
  }

  return result;
}

uint64_t VZMeshGetFaceColorCount(uint64_t a1)
{
  v2 = sub_27118C39C("VZMeshGetFaceColorCount", a1, 0);
  result = 0;
  if (!v2)
  {
    return *(a1 + 124);
  }

  return result;
}

uint64_t VZMeshGetVertexLabelListCount(uint64_t a1)
{
  v2 = sub_27118C39C("VZMeshGetVertexLabelListCount", a1, 0);
  result = 0;
  if (!v2)
  {
    return *(a1 + 224);
  }

  return result;
}

uint64_t VZMeshGetFaceLabelListCount(uint64_t a1)
{
  v2 = sub_27118C39C("VZMeshGetFaceLabelListCount", a1, 0);
  result = 0;
  if (!v2)
  {
    return *(a1 + 248);
  }

  return result;
}

uint64_t VZMeshGetVertexLabelType(uint64_t a1, unint64_t a2)
{
  if (sub_27118C39C("VZMeshGetVertexLabelType", a1, 0))
  {
    return 0;
  }

  sub_27134E930(a1 + 16, a2, v8);
  result = sub_27118D950("VZMeshGetVertexLabelType", v8);
  if ((v17 & 1) == 0 && v16 == 1)
  {
    if (v15 == 1)
    {
      if (v14 < 0)
      {
        v5 = result;
        operator delete(__p);
        result = v5;
      }

      if (v12 < 0)
      {
        v6 = result;
        operator delete(v11);
        result = v6;
      }
    }

    if (v10 == 1 && v9 < 0)
    {
      v7 = result;
      operator delete(v8[2]);
      return v7;
    }
  }

  return result;
}

uint64_t sub_27118D950(uint64_t a1, uint64_t *a2)
{
  v16 = a1;
  if (a2[15])
  {
    return *a2;
  }

  sub_27113F150("in function ", &v16);
  sub_271849064(a2, &v4, v6);
  sub_27112B960(v6, 0);
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
      operator delete(v7);
    }
  }

  if (v5 < 0)
  {
    operator delete(v4);
  }

  return 0;
}

void sub_27118DA44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  sub_27112D71C(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t VZMeshGetFaceLabelType(uint64_t a1, unint64_t a2)
{
  if (sub_27118C39C("VZMeshGetFaceLabelType", a1, 0))
  {
    return 0;
  }

  sub_27134EE30(a1 + 16, a2, v8);
  result = sub_27118D950("VZMeshGetFaceLabelType", v8);
  if ((v17 & 1) == 0 && v16 == 1)
  {
    if (v15 == 1)
    {
      if (v14 < 0)
      {
        v5 = result;
        operator delete(__p);
        result = v5;
      }

      if (v12 < 0)
      {
        v6 = result;
        operator delete(v11);
        result = v6;
      }
    }

    if (v10 == 1 && v9 < 0)
    {
      v7 = result;
      operator delete(v8[2]);
      return v7;
    }
  }

  return result;
}

uint64_t VZMeshGetVertexLabels(uint64_t a1, unsigned int a2)
{
  if (sub_27118C39C("VZMeshGetVertexLabels", a1, 0))
  {
    return 0;
  }

  v6 = *(a1 + 216);
  v5 = a1 + 216;
  v4 = v6;
  if (!v6)
  {
    return 0;
  }

  v7 = v5;
  do
  {
    v8 = *(v4 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * v10);
  }

  while (v4);
  if (v7 == v5 || *(v7 + 32) > a2)
  {
    return 0;
  }

  else
  {
    return *(v7 + 48);
  }
}

uint64_t VZMeshGetFaceLabels(uint64_t a1, unsigned int a2)
{
  if (sub_27118C39C("VZMeshGetFaceLabels", a1, 0))
  {
    return 0;
  }

  v6 = *(a1 + 240);
  v5 = a1 + 240;
  v4 = v6;
  if (!v6)
  {
    return 0;
  }

  v7 = v5;
  do
  {
    v8 = *(v4 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * v10);
  }

  while (v4);
  if (v7 == v5 || *(v7 + 32) > a2)
  {
    return 0;
  }

  else
  {
    return *(v7 + 48);
  }
}

uint64_t VZMeshGetVertexLabelCount(uint64_t a1, unsigned int a2)
{
  if (sub_27118C39C("VZMeshGetVertexLabelCount", a1, 0))
  {
    return 0;
  }

  v6 = *(a1 + 216);
  v5 = a1 + 216;
  v4 = v6;
  if (!v6)
  {
    return 0;
  }

  v7 = v5;
  do
  {
    v8 = *(v4 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * v10);
  }

  while (v4);
  if (v7 == v5 || *(v7 + 32) > a2)
  {
    return 0;
  }

  result = sub_27134B650((v7 + 40));
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t VZMeshGetFaceLabelCount(uint64_t a1, unsigned int a2)
{
  if (sub_27118C39C("VZMeshGetFaceLabelCount", a1, 0))
  {
    return 0;
  }

  v6 = *(a1 + 240);
  v5 = a1 + 240;
  v4 = v6;
  if (!v6)
  {
    return 0;
  }

  v7 = v5;
  do
  {
    v8 = *(v4 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * v10);
  }

  while (v4);
  if (v7 == v5 || *(v7 + 32) > a2)
  {
    return 0;
  }

  result = sub_27134B650((v7 + 40));
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t VZMeshGetVertexLabelValueType(uint64_t a1, unsigned int a2)
{
  if (sub_27118C39C("VZMeshGetVertexLabelValueType", a1, 0))
  {
    return 255;
  }

  v6 = *(a1 + 216);
  v5 = a1 + 216;
  v4 = v6;
  if (!v6)
  {
    return 255;
  }

  v7 = v5;
  do
  {
    v8 = *(v4 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * v10);
  }

  while (v4);
  if (v7 == v5 || *(v7 + 32) > a2)
  {
    return 255;
  }

  else
  {
    return *(v7 + 40);
  }
}

uint64_t VZMeshGetFaceLabelValueType(uint64_t a1, unsigned int a2)
{
  if (sub_27118C39C("VZMeshGetFaceLabelValueType", a1, 0))
  {
    return 255;
  }

  v6 = *(a1 + 240);
  v5 = a1 + 240;
  v4 = v6;
  if (!v6)
  {
    return 255;
  }

  v7 = v5;
  do
  {
    v8 = *(v4 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * v10);
  }

  while (v4);
  if (v7 == v5 || *(v7 + 32) > a2)
  {
    return 255;
  }

  else
  {
    return *(v7 + 40);
  }
}

uint64_t sub_27118DED4(uint64_t result)
{
  if (atomic_fetch_add((result + 256), 0xFFFFFFFF) == 1)
  {
    return (*(*(result + 8) + 8))();
  }

  return result;
}

uint64_t sub_27118DF10()
{
  if (atomic_load_explicit(&qword_28087A788, memory_order_acquire))
  {
    return qword_28087A780;
  }

  if (__cxa_guard_acquire(&qword_28087A788))
  {
    qword_28087A780 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087A788);
  }

  return qword_28087A780;
}

void *sub_27118DF74(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28812C878, &unk_28812C338, 0);
  if (result)
  {
    return sub_27134F330(a1 + 16, result + 16);
  }

  return result;
}

uint64_t sub_27118DFF8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  __cxa_begin_catch(a1);
  sub_27118F1BC();
  sub_27112B400(v20, "failed to compare equal");
  sub_27112DB38(qword_28087A7E0, v20, 0);
  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  __cxa_end_catch();
  return 0;
}

void sub_27118E050(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_28087A7A0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_28087A7A0))
    {
      sub_2718519B4("VZMesh]", 6uLL, qword_28087A7E0);
      __cxa_guard_release(&qword_28087A7A0);
    }
  }

  v2 = a1;
  operator new();
}

void sub_27118E4F4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  __cxa_guard_abort(&qword_28087A7A0);
  __cxa_begin_catch(a1);
  sub_27118F1BC();
  sub_27112B400(&__p, "failed to create description");
  sub_27112DB38(qword_28087A7E0, &__p, 0);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x27118E464);
}

void sub_27118E634(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_27118E634(a1, *a2);
    sub_27118E634(a1, a2[1]);

    operator delete(a2);
  }
}

double sub_27118E68C()
{
  *(&__p.__r_.__value_.__s + 23) = 6;
  strcpy(&__p, "VZMesh");
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
  xmmword_28087A7B0 = v7;
  unk_28087A7C0 = v8;
  return result;
}

void sub_27118E8AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27118E8EC(uint64_t **a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280877850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877850))
  {
    sub_2718519B4("VZData]", 6uLL, qword_280877838);
    __cxa_guard_release(&qword_280877850);
  }

  if ((atomic_load_explicit(&qword_28087A798, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A798))
  {
    sub_27118EC84();
    __cxa_guard_release(&qword_28087A798);
  }

  if (byte_28087A7DF < 0)
  {
    sub_271127178(&v23, xmmword_28087A7C8, *(&xmmword_28087A7C8 + 1));
  }

  else
  {
    v23 = xmmword_28087A7C8;
    v24 = unk_28087A7D8;
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

void sub_27118EBE0(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_280877830);
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  _Unwind_Resume(a1);
}

double sub_27118EC84()
{
  *(&__p.__r_.__value_.__s + 23) = 6;
  strcpy(&__p, "VZMesh");
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
  xmmword_28087A7C8 = v7;
  unk_28087A7D8 = v8;
  return result;
}