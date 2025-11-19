void sub_27118EEA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27118EEE4(uint64_t **a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087A7A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A7A0))
  {
    sub_2718519B4("VZMesh]", 6uLL, qword_28087A7E0);
    __cxa_guard_release(&qword_28087A7A0);
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

  sub_27112E0C4(qword_28087A7E0, &v20, &v9, **a1);
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

void sub_27118F16C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

void sub_27118F1BC()
{
  if ((atomic_load_explicit(&qword_28087A7A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A7A0))
  {
    sub_2718519B4("VZMesh]", 6uLL, qword_28087A7E0);

    __cxa_guard_release(&qword_28087A7A0);
  }
}

uint64_t sub_27118F24C(uint64_t a1)
{
  if (*(a1 + 240) == 1)
  {
    sub_27118E634(a1 + 216, *(a1 + 224));
    sub_27118E634(a1 + 192, *(a1 + 200));
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
      operator delete(*(a1 + 80));
    }

    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }
  }

  if (*(a1 + 40) != 1 || (*(a1 + 39) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 16));
  return a1;
}

double sub_27118F2F8()
{
  *(&__p.__r_.__value_.__s + 23) = 6;
  strcpy(&__p, "VZMesh");
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
  xmmword_28087A7F8 = v5;
  unk_28087A808 = v6;
  return result;
}

void sub_27118F4C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27118F4F8(uint64_t result)
{
  v1 = *(result + 24);
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

void sub_27118F570(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_27118F5EC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

void sub_27118F678(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t VZNumberGetTypeID()
{
  if (atomic_load_explicit(&qword_28087A818, memory_order_acquire))
  {
    return qword_28087A810;
  }

  if (__cxa_guard_acquire(&qword_28087A818))
  {
    qword_28087A810 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087A818);
  }

  return qword_28087A810;
}

uint64_t VZDataCreateWithNumber(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v82 = *MEMORY[0x277D85DE8];
  if (!sub_271190164("VZDataCreateWithNumber", a1, a3))
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
      sub_27135C06C((a1 + 16), &v49);
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

void sub_27118FF2C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::logic_error a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::runtime_error __p, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t *a53)
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
      sub_271191958(&a53, &STACK[0x4A0]);
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
      sub_271191958(&a53, &STACK[0x4A0]);
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
      sub_271191958(&a53, &STACK[0x4A0]);
      sub_2711307D4(&STACK[0x4A0]);
      __cxa_end_catch();
    }

    JUMPOUT(0x27118FD9CLL);
  }

  _Unwind_Resume(a1);
}

BOOL sub_271190164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_28087A820, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A820))
    {
      sub_2711916F8();
      __cxa_guard_release(&qword_28087A820);
    }

    if (byte_28087A84F < 0)
    {
      sub_271127178(v7, xmmword_28087A838, *(&xmmword_28087A838 + 1));
    }

    else
    {
      *v7 = xmmword_28087A838;
      v8 = unk_28087A848;
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

void sub_2711903D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t VZDataGetNumber(uint64_t a1, uint64_t a2)
{
  if (sub_271133B3C("VZDataGetNumber", a1, a2))
  {
    return 0;
  }

  result = *(a1 + 584);
  if (!result)
  {
    v5 = &v6;
    v6 = a2;
    sub_27135CFB0(a1 + 32);
  }

  return result;
}

void sub_271190740(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, const char *a9, std::logic_error a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::runtime_error __p, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, char a37)
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
    sub_271191F50((v37 - 64), v37 - 192);
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
    sub_271191F50((v37 - 64), v37 - 192);
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
    sub_271191F50((v37 - 64), v37 - 192);
    sub_2711307D4(v37 - 192);
    __cxa_end_catch();
  }

  JUMPOUT(0x271190720);
}

void VZNumberCreate(unsigned __int16 *a1, unsigned __int8 a2, uint64_t a3)
{
  if (sub_271173EA8("VZNumberCreate", a1, a3))
  {
    return;
  }

  v30 = &v31;
  v31 = a3;
  sub_27135B554(a1, a2, &v19);
  if ((v29 & 1) == 0)
  {
    v8 = v19;
    LOBYTE(v9) = 0;
    v17 = 0;
    if (v28 == 1)
    {
      sub_27112F6CC(&v9, &v20);
      v17 = 1;
    }

    v18 = 1;
    sub_271192374(&v30, &v8);
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
        if (v29 == 1)
        {
          goto LABEL_31;
        }

LABEL_35:
        if (v28 == 1)
        {
          if (v27 == 1)
          {
            if (v26 < 0)
            {
              operator delete(v25);
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

        return;
      }
    }

LABEL_30:
    if (v29 != 1)
    {
      goto LABEL_35;
    }

    goto LABEL_31;
  }

  sub_271192228(&v19);
  v6 = operator new(0x28uLL, MEMORY[0x277D826F0]);
  if (!v6)
  {
    LOBYTE(v8) = 0;
    v18 = 0;
    sub_271192374(&v30, &v8);
    if (v18 == 1)
    {
      if (v17 != 1)
      {
        if (v29 != 1)
        {
          goto LABEL_35;
        }

        goto LABEL_31;
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

      if (v11 == 1 && v10 < 0)
      {
        operator delete(v9);
        if (v29 == 1)
        {
          goto LABEL_31;
        }

        goto LABEL_35;
      }
    }

    goto LABEL_30;
  }

  v6[1] = v19;
  v19 = 0uLL;
  *(v6 + 8) = 1;
  *v6 = &unk_288118E88;
  *(v6 + 1) = &unk_288118ED8;
  if (v29 != 1)
  {
    goto LABEL_35;
  }

LABEL_31:
  v7 = *(&v19 + 1);
  if (*(&v19 + 1) && !atomic_fetch_add((*(&v19 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_271190C88(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, const char *a9, std::logic_error a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::runtime_error __p, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_2711307D4(&a37);
  sub_27113827C(v37 - 176);
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
    sub_271192374((v37 - 48), v37 - 176);
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
    sub_271192374((v37 - 48), v37 - 176);
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
    sub_271192374((v37 - 48), v37 - 176);
    sub_2711307D4(v37 - 176);
    __cxa_end_catch();
  }

  JUMPOUT(0x271190C70);
}

uint64_t VZNumberGetBytePtr(uint64_t a1)
{
  v2 = sub_271190164("VZNumberGetBytePtr", a1, 0);
  result = 0;
  if (!v2)
  {
    return *(*(a1 + 16) + 8);
  }

  return result;
}

uint64_t VZNumberGetByteCount(uint64_t a1)
{
  v2 = sub_271190164("VZNumberGetByteCount", a1, 0);
  result = 0;
  if (!v2)
  {
    return *(*(a1 + 16) + 16) - *(*(a1 + 16) + 8);
  }

  return result;
}

uint64_t VZNumberGetValueType(uint64_t a1)
{
  if (sub_271190164("VZNumberGetValueType", a1, 0))
  {
    return 255;
  }

  else
  {
    return **(a1 + 16);
  }
}

uint64_t sub_271190F88(uint64_t result)
{
  if (atomic_fetch_add((result + 32), 0xFFFFFFFF) == 1)
  {
    return (*(*(result + 8) + 8))();
  }

  return result;
}

uint64_t sub_271190FC4()
{
  if (atomic_load_explicit(&qword_28087A818, memory_order_acquire))
  {
    return qword_28087A810;
  }

  if (__cxa_guard_acquire(&qword_28087A818))
  {
    qword_28087A810 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087A818);
  }

  return qword_28087A810;
}

_BYTE **sub_271191028(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28812C878, &unk_28812C1B0, 0);
  if (result)
  {
    return (sub_271835718(*(a1 + 16), result[2]) == 0);
  }

  return result;
}

uint64_t sub_2711910B4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  __cxa_begin_catch(a1);
  sub_2711922E4();
  sub_27112B400(v20, "failed to compare equal");
  sub_27112DB38(qword_28087A868, v20, 0);
  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  __cxa_end_catch();
  return 0;
}

void sub_27119110C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_28087A830, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_28087A830))
    {
      sub_2718519B4("VZNumber]", 8uLL, qword_28087A868);
      __cxa_guard_release(&qword_28087A830);
    }
  }

  v2 = a1;
  operator new();
}

void sub_2711915B8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  __cxa_guard_abort(&qword_28087A830);
  __cxa_begin_catch(a1);
  sub_2711922E4();
  sub_27112B400(&__p, "failed to create description");
  sub_27112DB38(qword_28087A868, &__p, 0);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x271191528);
}

double sub_2711916F8()
{
  *(&__p.__r_.__value_.__s + 23) = 8;
  strcpy(&__p, "VZNumber");
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
  xmmword_28087A838 = v7;
  unk_28087A848 = v8;
  return result;
}

void sub_271191918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271191958(uint64_t **a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280877850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877850))
  {
    sub_2718519B4("VZData]", 6uLL, qword_280877838);
    __cxa_guard_release(&qword_280877850);
  }

  if ((atomic_load_explicit(&qword_28087A828, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A828))
  {
    sub_271191CF0();
    __cxa_guard_release(&qword_28087A828);
  }

  if (byte_28087A867 < 0)
  {
    sub_271127178(&v23, xmmword_28087A850, *(&xmmword_28087A850 + 1));
  }

  else
  {
    v23 = xmmword_28087A850;
    v24 = unk_28087A860;
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

void sub_271191C4C(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_280877830);
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  _Unwind_Resume(a1);
}

double sub_271191CF0()
{
  *(&__p.__r_.__value_.__s + 23) = 8;
  strcpy(&__p, "VZNumber");
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
  xmmword_28087A850 = v7;
  unk_28087A860 = v8;
  return result;
}

void sub_271191F10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271191F50(uint64_t **a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087A830, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A830))
  {
    sub_2718519B4("VZNumber]", 8uLL, qword_28087A868);
    __cxa_guard_release(&qword_28087A830);
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

  sub_27112E0C4(qword_28087A868, &v20, &v9, **a1);
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

void sub_2711921D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

uint64_t sub_271192228(uint64_t result)
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

void sub_2711922A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D71C(va);
  _Unwind_Resume(a1);
}

void sub_2711922B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D71C(va);
  __cxa_free_exception(v2);
  _Unwind_Resume(a1);
}

void sub_2711922E4()
{
  if ((atomic_load_explicit(&qword_28087A830, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A830))
  {
    sub_2718519B4("VZNumber]", 8uLL, qword_28087A868);

    __cxa_guard_release(&qword_28087A830);
  }
}

void sub_271192374(uint64_t **a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087A830, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A830))
  {
    sub_2718519B4("VZNumber]", 8uLL, qword_28087A868);
    __cxa_guard_release(&qword_28087A830);
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

  if ((atomic_load_explicit(&qword_280877A30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877A30))
  {
    sub_2718519B4("cv3d::kit::ArithmeticType]", 0x19uLL, &xmmword_280877A18);
    __cxa_guard_release(&qword_280877A30);
  }

  if (byte_280877A2F < 0)
  {
    sub_271127178(&v25, xmmword_280877A18, *(&xmmword_280877A18 + 1));
  }

  else
  {
    v25 = xmmword_280877A18;
    v26 = unk_280877A28;
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

  sub_27112E0C4(qword_28087A868, &v21, &v10, **a1);
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

void sub_27119267C(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_280877A30);
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_271192720(uint64_t result)
{
  v1 = *(result + 24);
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

void sub_271192798(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_271192814(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2711928A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t VZNumbersGetTypeID()
{
  if (atomic_load_explicit(&qword_28087A888, memory_order_acquire))
  {
    return qword_28087A880;
  }

  if (__cxa_guard_acquire(&qword_28087A888))
  {
    qword_28087A880 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087A888);
  }

  return qword_28087A880;
}

uint64_t VZDataCreateWithNumbers(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = *MEMORY[0x277D85DE8];
  if (!sub_27119338C("VZDataCreateWithNumbers", a1, a3))
  {
    sub_27113347C(a2, &v19);
    v17 = &v18;
    v18 = a3;
    LOBYTE(v48) = 0;
    v80 = 0;
    if (v47 != 1)
    {
      goto LABEL_20;
    }

    v48 = v19;
    v49 = v20;
    LOBYTE(v50) = 0;
    v52 = 0;
    if (v23 == 1)
    {
      v50 = *v21;
      v51 = v22;
      v21[1] = 0;
      v22 = 0;
      v21[0] = 0;
      v52 = 1;
    }

    v53 = v24;
    v54 = v25;
    LOBYTE(v55) = 0;
    v57 = 0;
    if (v28 == 1)
    {
      v55 = v26;
      v56 = v27;
      v27 = 0;
      v26 = 0uLL;
      v57 = 1;
      LOBYTE(v58) = 0;
      v62 = 0;
      if (v31 != 1)
      {
LABEL_8:
        LOBYTE(v63[0]) = 0;
        v65 = 0;
        if (v34 != 1)
        {
          goto LABEL_9;
        }

        goto LABEL_13;
      }
    }

    else
    {
      LOBYTE(v58) = 0;
      v62 = 0;
      if (v31 != 1)
      {
        goto LABEL_8;
      }
    }

    _X0 = 0;
    _X1 = 0;
    v59 = v30;
    v58 = *v29;
    v29[1] = 0;
    v30 = 0;
    v29[0] = 0;
    __asm { CASPAL          X0, X1, X0, X1, [X8] }

    v60 = _X0;
    v61 = 0;
    v62 = 1;
    LOBYTE(v63[0]) = 0;
    v65 = 0;
    if (v34 != 1)
    {
LABEL_9:
      LOBYTE(v66) = 0;
      v79 = 0;
      if (v46 != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }

LABEL_13:
    *v63 = *v32;
    v64 = v33;
    v33 = 0;
    v32[1] = 0;
    v32[0] = 0;
    v65 = 1;
    LOBYTE(v66) = 0;
    v79 = 0;
    if (v46 != 1)
    {
LABEL_19:
      v80 = 1;
LABEL_20:
      sub_27135DFB8();
    }

LABEL_14:
    LOBYTE(v66) = 0;
    v68 = 0;
    if (v37 == 1)
    {
      v66 = v35;
      v67 = v36;
      v36 = 0;
      v35 = 0uLL;
      v68 = 1;
      LOBYTE(v69) = 0;
      v73 = 0;
      if (v40 != 1)
      {
LABEL_16:
        LOBYTE(__p) = 0;
        v76 = 0;
        if (v43 != 1)
        {
LABEL_18:
          v77 = v44;
          v78 = v45;
          v79 = 1;
          goto LABEL_19;
        }

LABEL_17:
        __p = *v41;
        v75 = v42;
        v42 = 0;
        v41[0] = 0;
        v41[1] = 0;
        v76 = 1;
        goto LABEL_18;
      }
    }

    else
    {
      LOBYTE(v69) = 0;
      v73 = 0;
      if (v40 != 1)
      {
        goto LABEL_16;
      }
    }

    _X0 = 0;
    _X1 = 0;
    v69 = *v38;
    v70 = v39;
    v39 = 0;
    v38[0] = 0;
    v38[1] = 0;
    __asm { CASPAL          X0, X1, X0, X1, [X9] }

    v71 = _X0;
    v72 = 0;
    v73 = 1;
    LOBYTE(__p) = 0;
    v76 = 0;
    if (v43 != 1)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v15 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_271193154(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::logic_error a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::runtime_error __p, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t *a53)
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
      sub_271194B98(&a53, &STACK[0x4A0]);
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
      sub_271194B98(&a53, &STACK[0x4A0]);
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
      sub_271194B98(&a53, &STACK[0x4A0]);
      sub_2711307D4(&STACK[0x4A0]);
      __cxa_end_catch();
    }

    JUMPOUT(0x271192FC4);
  }

  _Unwind_Resume(a1);
}

BOOL sub_27119338C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_28087A890, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A890))
    {
      sub_271194938();
      __cxa_guard_release(&qword_28087A890);
    }

    if (byte_28087A8BF < 0)
    {
      sub_271127178(v7, xmmword_28087A8A8, *(&xmmword_28087A8A8 + 1));
    }

    else
    {
      *v7 = xmmword_28087A8A8;
      v8 = unk_28087A8B8;
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

void sub_2711935FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t VZDataGetNumbers(uint64_t a1, uint64_t a2)
{
  if (sub_271133B3C("VZDataGetNumbers", a1, a2))
  {
    return 0;
  }

  result = *(a1 + 584);
  if (!result)
  {
    v5 = &v6;
    v6 = a2;
    sub_27135ED00(a1 + 32);
  }

  return result;
}

void sub_271193968(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, const char *a9, std::logic_error a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::runtime_error __p, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, char a37)
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
    sub_271195190((v37 - 64), v37 - 192);
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
    sub_271195190((v37 - 64), v37 - 192);
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
    sub_271195190((v37 - 64), v37 - 192);
    sub_2711307D4(v37 - 192);
    __cxa_end_catch();
  }

  JUMPOUT(0x271193948);
}

_OWORD *VZNumbersCreate(uint64_t a1, unint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v31 = &v32;
  v32 = a4;
  sub_27135D928(a1, a2, a3, &v20);
  v5 = v30;
  if ((v30 & 1) == 0)
  {
    v9 = v20;
    LOBYTE(v10) = 0;
    v18 = 0;
    if (v29 == 1)
    {
      sub_27112F6CC(&v10, &v21);
      v18 = 1;
    }

    v19 = 1;
    sub_2711955B4(&v31, &v9);
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
        if (v30 == 1)
        {
          goto LABEL_31;
        }

LABEL_35:
        if (v29 == 1)
        {
          if (v28 == 1)
          {
            if (v27 < 0)
            {
              operator delete(v26);
            }

            if (v25 < 0)
            {
              operator delete(v24);
            }
          }

          if (v23 == 1 && v22 < 0)
          {
            operator delete(v21);
          }
        }

        goto LABEL_44;
      }
    }

LABEL_30:
    if (v30 != 1)
    {
      goto LABEL_35;
    }

    goto LABEL_31;
  }

  sub_271195468(&v20);
  v6 = operator new(0x28uLL, MEMORY[0x277D826F0]);
  if (!v6)
  {
    LOBYTE(v9) = 0;
    v19 = 0;
    sub_2711955B4(&v31, &v9);
    if (v19 == 1)
    {
      if (v18 != 1)
      {
        v4 = 0;
        if (v30 != 1)
        {
          goto LABEL_35;
        }

        goto LABEL_31;
      }

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

      v4 = 0;
      if (v12 == 1 && v11 < 0)
      {
        operator delete(v10);
        v4 = 0;
        if (v30 == 1)
        {
          goto LABEL_31;
        }

        goto LABEL_35;
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_30;
  }

  v4 = v6;
  v6[1] = v20;
  v20 = 0uLL;
  *(v6 + 8) = 1;
  *v6 = &unk_288118DA8;
  *(v6 + 1) = &unk_288118DF8;
  if (v30 != 1)
  {
    goto LABEL_35;
  }

LABEL_31:
  v7 = *(&v20 + 1);
  if (*(&v20 + 1) && !atomic_fetch_add((*(&v20 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_44:
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  return v4;
}

void sub_271193E54(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, const char *a9, std::logic_error a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::runtime_error __p, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_2711307D4(&a37);
  sub_27113827C(v37 - 176);
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
    sub_2711955B4((v37 - 48), v37 - 176);
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
    sub_2711955B4((v37 - 48), v37 - 176);
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
    sub_2711955B4((v37 - 48), v37 - 176);
    sub_2711307D4(v37 - 176);
    __cxa_end_catch();
  }

  JUMPOUT(0x271193E38);
}

uint64_t VZNumbersGetBytePtr(uint64_t a1)
{
  v2 = sub_27119338C("VZNumbersGetBytePtr", a1, 0);
  result = 0;
  if (!v2)
  {
    return *(**(a1 + 16) + 40);
  }

  return result;
}

uint64_t VZNumbersGetCount(uint64_t a1)
{
  v2 = sub_27119338C("VZNumbersGetCount", a1, 0);
  result = 0;
  if (!v2)
  {
    return *(**(a1 + 16) + 56);
  }

  return result;
}

uint64_t VZNumbersGetByteCount(uint64_t a1)
{
  v2 = sub_27119338C("VZNumbersGetByteCount", a1, 0);
  result = 0;
  if (!v2)
  {
    return *(**(a1 + 16) + 48);
  }

  return result;
}

uint64_t VZNumbersGetValueType(uint64_t a1)
{
  if (sub_27119338C("VZNumbersGetValueType", a1, 0))
  {
    return 255;
  }

  else
  {
    return ***(a1 + 16);
  }
}

uint64_t sub_2711941AC(uint64_t result)
{
  if (atomic_fetch_add((result + 32), 0xFFFFFFFF) == 1)
  {
    return (*(*(result + 8) + 8))();
  }

  return result;
}

uint64_t sub_2711941E8()
{
  if (atomic_load_explicit(&qword_28087A888, memory_order_acquire))
  {
    return qword_28087A880;
  }

  if (__cxa_guard_acquire(&qword_28087A888))
  {
    qword_28087A880 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087A888);
  }

  return qword_28087A880;
}

void *sub_27119424C(uint64_t a1, char **lpsrc, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v16 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28812C878, &unk_28812C140, 0);
  if (result)
  {
    v18 = result[2];
    v19 = **(a1 + 16);
    v20 = *v19;
    v21 = *v18;
    if (v20 == *v21)
    {
      v22[0] = &v23;
      v22[1] = v19;
      v22[2] = v21;
      return sub_27175A954(v20, v22);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_27119434C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_28087A8A0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_28087A8A0))
    {
      sub_2718519B4("VZNumbers]", 9uLL, qword_28087A8D8);
      __cxa_guard_release(&qword_28087A8A0);
    }
  }

  v2 = a1;
  operator new();
}

void sub_2711947F8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  __cxa_guard_abort(&qword_28087A8A0);
  __cxa_begin_catch(a1);
  sub_271195524();
  sub_27112B400(&__p, "failed to create description");
  sub_27112DB38(qword_28087A8D8, &__p, 0);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x271194768);
}

double sub_271194938()
{
  *(&__p.__r_.__value_.__s + 23) = 9;
  strcpy(&__p, "VZNumbers");
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
  xmmword_28087A8A8 = v7;
  unk_28087A8B8 = v8;
  return result;
}

void sub_271194B58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271194B98(uint64_t **a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280877850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877850))
  {
    sub_2718519B4("VZData]", 6uLL, qword_280877838);
    __cxa_guard_release(&qword_280877850);
  }

  if ((atomic_load_explicit(&qword_28087A898, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A898))
  {
    sub_271194F30();
    __cxa_guard_release(&qword_28087A898);
  }

  if (byte_28087A8D7 < 0)
  {
    sub_271127178(&v23, xmmword_28087A8C0, *(&xmmword_28087A8C0 + 1));
  }

  else
  {
    v23 = xmmword_28087A8C0;
    v24 = unk_28087A8D0;
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

void sub_271194E8C(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_280877830);
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  _Unwind_Resume(a1);
}

double sub_271194F30()
{
  *(&__p.__r_.__value_.__s + 23) = 9;
  strcpy(&__p, "VZNumbers");
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
  xmmword_28087A8C0 = v7;
  unk_28087A8D0 = v8;
  return result;
}

void sub_271195150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271195190(uint64_t **a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087A8A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A8A0))
  {
    sub_2718519B4("VZNumbers]", 9uLL, qword_28087A8D8);
    __cxa_guard_release(&qword_28087A8A0);
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

  sub_27112E0C4(qword_28087A8D8, &v20, &v9, **a1);
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

void sub_271195418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

uint64_t sub_271195468(uint64_t result)
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

void sub_2711954E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D71C(va);
  _Unwind_Resume(a1);
}

void sub_2711954F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D71C(va);
  __cxa_free_exception(v2);
  _Unwind_Resume(a1);
}

void sub_271195524()
{
  if ((atomic_load_explicit(&qword_28087A8A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A8A0))
  {
    sub_2718519B4("VZNumbers]", 9uLL, qword_28087A8D8);

    __cxa_guard_release(&qword_28087A8A0);
  }
}

void sub_2711955B4(uint64_t **a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087A8A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A8A0))
  {
    sub_2718519B4("VZNumbers]", 9uLL, qword_28087A8D8);
    __cxa_guard_release(&qword_28087A8A0);
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

  sub_27112E0C4(qword_28087A8D8, &v21, &v10, **a1);
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

void sub_271195954(_Unwind_Exception *a1)
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

uint64_t sub_271195A54(uint64_t result)
{
  v1 = *(result + 24);
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

void sub_271195ACC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_271195B48(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

void sub_271195BD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271195C64(uint64_t result)
{
  v1 = *(result + 24);
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

void sub_271195CDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_271195D58(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

void sub_271195DE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t VZPoints2GetTypeID()
{
  if (atomic_load_explicit(&qword_28087A8F8, memory_order_acquire))
  {
    return qword_28087A8F0;
  }

  if (__cxa_guard_acquire(&qword_28087A8F8))
  {
    qword_28087A8F0 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087A8F8);
  }

  return qword_28087A8F0;
}

uint64_t VZPoints3GetTypeID()
{
  if (atomic_load_explicit(&qword_28087A908, memory_order_acquire))
  {
    return qword_28087A900;
  }

  if (__cxa_guard_acquire(&qword_28087A908))
  {
    qword_28087A900 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087A908);
  }

  return qword_28087A900;
}

uint64_t VZDataCreateWithPoints2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = *MEMORY[0x277D85DE8];
  if (!sub_271196934("VZDataCreateWithPoints2", a1, a3))
  {
    sub_27113347C(a2, &v19);
    v17 = &v18;
    v18 = a3;
    LOBYTE(v48) = 0;
    v80 = 0;
    if (v47 != 1)
    {
      goto LABEL_20;
    }

    v48 = v19;
    v49 = v20;
    LOBYTE(v50) = 0;
    v52 = 0;
    if (v23 == 1)
    {
      v50 = *v21;
      v51 = v22;
      v21[1] = 0;
      v22 = 0;
      v21[0] = 0;
      v52 = 1;
    }

    v53 = v24;
    v54 = v25;
    LOBYTE(v55) = 0;
    v57 = 0;
    if (v28 == 1)
    {
      v55 = v26;
      v56 = v27;
      v27 = 0;
      v26 = 0uLL;
      v57 = 1;
      LOBYTE(v58) = 0;
      v62 = 0;
      if (v31 != 1)
      {
LABEL_8:
        LOBYTE(v63[0]) = 0;
        v65 = 0;
        if (v34 != 1)
        {
          goto LABEL_9;
        }

        goto LABEL_13;
      }
    }

    else
    {
      LOBYTE(v58) = 0;
      v62 = 0;
      if (v31 != 1)
      {
        goto LABEL_8;
      }
    }

    _X0 = 0;
    _X1 = 0;
    v59 = v30;
    v58 = *v29;
    v29[1] = 0;
    v30 = 0;
    v29[0] = 0;
    __asm { CASPAL          X0, X1, X0, X1, [X8] }

    v60 = _X0;
    v61 = 0;
    v62 = 1;
    LOBYTE(v63[0]) = 0;
    v65 = 0;
    if (v34 != 1)
    {
LABEL_9:
      LOBYTE(v66) = 0;
      v79 = 0;
      if (v46 != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }

LABEL_13:
    *v63 = *v32;
    v64 = v33;
    v33 = 0;
    v32[1] = 0;
    v32[0] = 0;
    v65 = 1;
    LOBYTE(v66) = 0;
    v79 = 0;
    if (v46 != 1)
    {
LABEL_19:
      v80 = 1;
LABEL_20:
      sub_2713619F0();
    }

LABEL_14:
    LOBYTE(v66) = 0;
    v68 = 0;
    if (v37 == 1)
    {
      v66 = v35;
      v67 = v36;
      v36 = 0;
      v35 = 0uLL;
      v68 = 1;
      LOBYTE(v69) = 0;
      v73 = 0;
      if (v40 != 1)
      {
LABEL_16:
        LOBYTE(__p) = 0;
        v76 = 0;
        if (v43 != 1)
        {
LABEL_18:
          v77 = v44;
          v78 = v45;
          v79 = 1;
          goto LABEL_19;
        }

LABEL_17:
        __p = *v41;
        v75 = v42;
        v42 = 0;
        v41[0] = 0;
        v41[1] = 0;
        v76 = 1;
        goto LABEL_18;
      }
    }

    else
    {
      LOBYTE(v69) = 0;
      v73 = 0;
      if (v40 != 1)
      {
        goto LABEL_16;
      }
    }

    _X0 = 0;
    _X1 = 0;
    v69 = *v38;
    v70 = v39;
    v39 = 0;
    v38[0] = 0;
    v38[1] = 0;
    __asm { CASPAL          X0, X1, X0, X1, [X9] }

    v71 = _X0;
    v72 = 0;
    v73 = 1;
    LOBYTE(__p) = 0;
    v76 = 0;
    if (v43 != 1)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v15 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_2711966FC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::logic_error a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::runtime_error __p, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t *a53)
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
      sub_27119A0F8(&a53, &STACK[0x4A0]);
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
      sub_27119A0F8(&a53, &STACK[0x4A0]);
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
      sub_27119A0F8(&a53, &STACK[0x4A0]);
      sub_2711307D4(&STACK[0x4A0]);
      __cxa_end_catch();
    }

    JUMPOUT(0x27119656CLL);
  }

  _Unwind_Resume(a1);
}

BOOL sub_271196934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_28087A910, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A910))
    {
      sub_271199E98();
      __cxa_guard_release(&qword_28087A910);
    }

    if (byte_28087A957 < 0)
    {
      sub_271127178(v7, xmmword_28087A940, *(&xmmword_28087A940 + 1));
    }

    else
    {
      *v7 = xmmword_28087A940;
      v8 = unk_28087A950;
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

void sub_271196BA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t VZDataCreateWithPoints3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = *MEMORY[0x277D85DE8];
  if (!sub_2711975DC("VZDataCreateWithPoints3", a1, a3))
  {
    sub_27113347C(a2, &v19);
    v17 = &v18;
    v18 = a3;
    LOBYTE(v48) = 0;
    v80 = 0;
    if (v47 != 1)
    {
      goto LABEL_20;
    }

    v48 = v19;
    v49 = v20;
    LOBYTE(v50) = 0;
    v52 = 0;
    if (v23 == 1)
    {
      v50 = *v21;
      v51 = v22;
      v21[1] = 0;
      v22 = 0;
      v21[0] = 0;
      v52 = 1;
    }

    v53 = v24;
    v54 = v25;
    LOBYTE(v55) = 0;
    v57 = 0;
    if (v28 == 1)
    {
      v55 = v26;
      v56 = v27;
      v27 = 0;
      v26 = 0uLL;
      v57 = 1;
      LOBYTE(v58) = 0;
      v62 = 0;
      if (v31 != 1)
      {
LABEL_8:
        LOBYTE(v63[0]) = 0;
        v65 = 0;
        if (v34 != 1)
        {
          goto LABEL_9;
        }

        goto LABEL_13;
      }
    }

    else
    {
      LOBYTE(v58) = 0;
      v62 = 0;
      if (v31 != 1)
      {
        goto LABEL_8;
      }
    }

    _X0 = 0;
    _X1 = 0;
    v59 = v30;
    v58 = *v29;
    v29[1] = 0;
    v30 = 0;
    v29[0] = 0;
    __asm { CASPAL          X0, X1, X0, X1, [X8] }

    v60 = _X0;
    v61 = 0;
    v62 = 1;
    LOBYTE(v63[0]) = 0;
    v65 = 0;
    if (v34 != 1)
    {
LABEL_9:
      LOBYTE(v66) = 0;
      v79 = 0;
      if (v46 != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }

LABEL_13:
    *v63 = *v32;
    v64 = v33;
    v33 = 0;
    v32[1] = 0;
    v32[0] = 0;
    v65 = 1;
    LOBYTE(v66) = 0;
    v79 = 0;
    if (v46 != 1)
    {
LABEL_19:
      v80 = 1;
LABEL_20:
      sub_2713626B0();
    }

LABEL_14:
    LOBYTE(v66) = 0;
    v68 = 0;
    if (v37 == 1)
    {
      v66 = v35;
      v67 = v36;
      v36 = 0;
      v35 = 0uLL;
      v68 = 1;
      LOBYTE(v69) = 0;
      v73 = 0;
      if (v40 != 1)
      {
LABEL_16:
        LOBYTE(__p) = 0;
        v76 = 0;
        if (v43 != 1)
        {
LABEL_18:
          v77 = v44;
          v78 = v45;
          v79 = 1;
          goto LABEL_19;
        }

LABEL_17:
        __p = *v41;
        v75 = v42;
        v42 = 0;
        v41[0] = 0;
        v41[1] = 0;
        v76 = 1;
        goto LABEL_18;
      }
    }

    else
    {
      LOBYTE(v69) = 0;
      v73 = 0;
      if (v40 != 1)
      {
        goto LABEL_16;
      }
    }

    _X0 = 0;
    _X1 = 0;
    v69 = *v38;
    v70 = v39;
    v39 = 0;
    v38[0] = 0;
    v38[1] = 0;
    __asm { CASPAL          X0, X1, X0, X1, [X9] }

    v71 = _X0;
    v72 = 0;
    v73 = 1;
    LOBYTE(__p) = 0;
    v76 = 0;
    if (v43 != 1)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v15 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_2711973A4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::logic_error a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::runtime_error __p, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t *a53)
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
      sub_27119A950(&a53, &STACK[0x4A0]);
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
      sub_27119A950(&a53, &STACK[0x4A0]);
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
      sub_27119A950(&a53, &STACK[0x4A0]);
      sub_2711307D4(&STACK[0x4A0]);
      __cxa_end_catch();
    }

    JUMPOUT(0x271197214);
  }

  _Unwind_Resume(a1);
}

BOOL sub_2711975DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_28087A920, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A920))
    {
      sub_27119A6F0();
      __cxa_guard_release(&qword_28087A920);
    }

    if (byte_28087A987 < 0)
    {
      sub_271127178(v7, xmmword_28087A970, *(&xmmword_28087A970 + 1));
    }

    else
    {
      *v7 = xmmword_28087A970;
      v8 = unk_28087A980;
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

void sub_27119784C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t VZDataGetPoints2(uint64_t a1, uint64_t a2)
{
  if (sub_271133B3C("VZDataGetPoints2", a1, a2))
  {
    return 0;
  }

  result = *(a1 + 584);
  if (!result)
  {
    v5 = &v6;
    v6 = a2;
    sub_2713633E8(a1 + 32);
  }

  return result;
}

void sub_271197BB8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, const char *a9, std::logic_error a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::runtime_error __p, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, char a37)
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
    sub_27119AF48((v37 - 64), v37 - 192);
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
    sub_27119AF48((v37 - 64), v37 - 192);
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
    sub_27119AF48((v37 - 64), v37 - 192);
    sub_2711307D4(v37 - 192);
    __cxa_end_catch();
  }

  JUMPOUT(0x271197B98);
}

uint64_t VZDataGetPoints3(uint64_t a1, uint64_t a2)
{
  if (sub_271133B3C("VZDataGetPoints3", a1, a2))
  {
    return 0;
  }

  result = *(a1 + 584);
  if (!result)
  {
    v5 = &v6;
    v6 = a2;
    sub_2713649AC(a1 + 32);
  }

  return result;
}

void sub_2711980F4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, const char *a9, std::logic_error a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::runtime_error __p, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, char a37)
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
    sub_27119B36C((v37 - 64), v37 - 192);
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
    sub_27119B36C((v37 - 64), v37 - 192);
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
    sub_27119B36C((v37 - 64), v37 - 192);
    sub_2711307D4(v37 - 192);
    __cxa_end_catch();
  }

  JUMPOUT(0x2711980D4);
}

_OWORD *VZPoints2Create(uint64_t a1, unint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v31 = &v32;
  v32 = a4;
  sub_2713603A8(a1, a2, a3, &v20);
  v5 = v30;
  if ((v30 & 1) == 0)
  {
    v9 = v20;
    LOBYTE(v10) = 0;
    v18 = 0;
    if (v29 == 1)
    {
      sub_27112F6CC(&v10, &v21);
      v18 = 1;
    }

    v19 = 1;
    sub_27119B790(&v31, &v9);
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
        if (v30 == 1)
        {
          goto LABEL_31;
        }

LABEL_35:
        if (v29 == 1)
        {
          if (v28 == 1)
          {
            if (v27 < 0)
            {
              operator delete(v26);
            }

            if (v25 < 0)
            {
              operator delete(v24);
            }
          }

          if (v23 == 1 && v22 < 0)
          {
            operator delete(v21);
          }
        }

        goto LABEL_44;
      }
    }

LABEL_30:
    if (v30 != 1)
    {
      goto LABEL_35;
    }

    goto LABEL_31;
  }

  sub_27119B220(&v20);
  v6 = operator new(0x28uLL, MEMORY[0x277D826F0]);
  if (!v6)
  {
    LOBYTE(v9) = 0;
    v19 = 0;
    sub_27119B790(&v31, &v9);
    if (v19 == 1)
    {
      if (v18 != 1)
      {
        v4 = 0;
        if (v30 != 1)
        {
          goto LABEL_35;
        }

        goto LABEL_31;
      }

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

      v4 = 0;
      if (v12 == 1 && v11 < 0)
      {
        operator delete(v10);
        v4 = 0;
        if (v30 == 1)
        {
          goto LABEL_31;
        }

        goto LABEL_35;
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_30;
  }

  v4 = v6;
  v6[1] = v20;
  v20 = 0uLL;
  *(v6 + 8) = 1;
  *v6 = &unk_288118D38;
  *(v6 + 1) = &unk_288118D88;
  if (v30 != 1)
  {
    goto LABEL_35;
  }

LABEL_31:
  v7 = *(&v20 + 1);
  if (*(&v20 + 1) && !atomic_fetch_add((*(&v20 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_44:
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  return v4;
}

void sub_2711985E0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, const char *a9, std::logic_error a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::runtime_error __p, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_2711307D4(&a37);
  sub_27113827C(v37 - 176);
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
    sub_27119B790((v37 - 48), v37 - 176);
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
    sub_27119B790((v37 - 48), v37 - 176);
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
    sub_27119B790((v37 - 48), v37 - 176);
    sub_2711307D4(v37 - 176);
    __cxa_end_catch();
  }

  JUMPOUT(0x2711985C4);
}

_OWORD *VZPoints3Create(uint64_t a1, unint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v31 = &v32;
  v32 = a4;
  sub_271360ECC(a1, a2, a3, &v20);
  v5 = v30;
  if ((v30 & 1) == 0)
  {
    v9 = v20;
    LOBYTE(v10) = 0;
    v18 = 0;
    if (v29 == 1)
    {
      sub_27112F6CC(&v10, &v21);
      v18 = 1;
    }

    v19 = 1;
    sub_27119BC30(&v31, &v9);
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
        if (v30 == 1)
        {
          goto LABEL_31;
        }

LABEL_35:
        if (v29 == 1)
        {
          if (v28 == 1)
          {
            if (v27 < 0)
            {
              operator delete(v26);
            }

            if (v25 < 0)
            {
              operator delete(v24);
            }
          }

          if (v23 == 1 && v22 < 0)
          {
            operator delete(v21);
          }
        }

        goto LABEL_44;
      }
    }

LABEL_30:
    if (v30 != 1)
    {
      goto LABEL_35;
    }

    goto LABEL_31;
  }

  sub_27119B644(&v20);
  v6 = operator new(0x28uLL, MEMORY[0x277D826F0]);
  if (!v6)
  {
    LOBYTE(v9) = 0;
    v19 = 0;
    sub_27119BC30(&v31, &v9);
    if (v19 == 1)
    {
      if (v18 != 1)
      {
        v4 = 0;
        if (v30 != 1)
        {
          goto LABEL_35;
        }

        goto LABEL_31;
      }

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

      v4 = 0;
      if (v12 == 1 && v11 < 0)
      {
        operator delete(v10);
        v4 = 0;
        if (v30 == 1)
        {
          goto LABEL_31;
        }

        goto LABEL_35;
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_30;
  }

  v4 = v6;
  v6[1] = v20;
  v20 = 0uLL;
  *(v6 + 8) = 1;
  *v6 = &unk_288118CC8;
  *(v6 + 1) = &unk_288118D18;
  if (v30 != 1)
  {
    goto LABEL_35;
  }

LABEL_31:
  v7 = *(&v20 + 1);
  if (*(&v20 + 1) && !atomic_fetch_add((*(&v20 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_44:
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  return v4;
}

void sub_271198ACC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, const char *a9, std::logic_error a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::runtime_error __p, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_2711307D4(&a37);
  sub_27113827C(v37 - 176);
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
    sub_27119BC30((v37 - 48), v37 - 176);
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
    sub_27119BC30((v37 - 48), v37 - 176);
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
    sub_27119BC30((v37 - 48), v37 - 176);
    sub_2711307D4(v37 - 176);
    __cxa_end_catch();
  }

  JUMPOUT(0x271198AB0);
}

uint64_t VZPoints2GetBytePtr(uint64_t a1)
{
  v2 = sub_271196934("VZPoints2GetBytePtr", a1, 0);
  result = 0;
  if (!v2)
  {
    return *(**(a1 + 16) + 40);
  }

  return result;
}

uint64_t VZPoints3GetBytePtr(uint64_t a1)
{
  v2 = sub_2711975DC("VZPoints3GetBytePtr", a1, 0);
  result = 0;
  if (!v2)
  {
    return *(**(a1 + 16) + 40);
  }

  return result;
}

uint64_t VZPoints2GetCount(uint64_t a1)
{
  v2 = sub_271196934("VZPoints2GetCount", a1, 0);
  result = 0;
  if (!v2)
  {
    return *(**(a1 + 16) + 56) >> 1;
  }

  return result;
}

unint64_t VZPoints3GetCount(uint64_t a1)
{
  v2 = sub_2711975DC("VZPoints3GetCount", a1, 0);
  result = 0;
  if (!v2)
  {
    return *(**(a1 + 16) + 56) / 3uLL;
  }

  return result;
}

uint64_t VZPoints2GetByteCount(uint64_t a1)
{
  v2 = sub_271196934("VZPoints2GetByteCount", a1, 0);
  result = 0;
  if (!v2)
  {
    return *(**(a1 + 16) + 48);
  }

  return result;
}

uint64_t VZPoints3GetByteCount(uint64_t a1)
{
  v2 = sub_2711975DC("VZPoints3GetByteCount", a1, 0);
  result = 0;
  if (!v2)
  {
    return *(**(a1 + 16) + 48);
  }

  return result;
}

uint64_t VZPoints2GetValueType(uint64_t a1)
{
  if (sub_271196934("VZPoints2GetValueType", a1, 0))
  {
    return 255;
  }

  else
  {
    return ***(a1 + 16);
  }
}

uint64_t VZPoints3GetValueType(uint64_t a1)
{
  if (sub_2711975DC("VZPoints3GetValueType", a1, 0))
  {
    return 255;
  }

  else
  {
    return ***(a1 + 16);
  }
}

uint64_t sub_271198F70(uint64_t result)
{
  if (atomic_fetch_add((result + 32), 0xFFFFFFFF) == 1)
  {
    return (*(*(result + 8) + 8))();
  }

  return result;
}

uint64_t sub_271198FAC()
{
  if (atomic_load_explicit(&qword_28087A8F8, memory_order_acquire))
  {
    return qword_28087A8F0;
  }

  if (__cxa_guard_acquire(&qword_28087A8F8))
  {
    qword_28087A8F0 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087A8F8);
  }

  return qword_28087A8F0;
}

void *sub_271199010(uint64_t a1, char **lpsrc, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v16 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28812C878, &unk_28812C108, 0);
  if (result)
  {
    v18 = result[2];
    v19 = **(a1 + 16);
    v20 = *v19;
    v21 = *v18;
    if (v20 == *v21)
    {
      v22[0] = &v23;
      v22[1] = v19;
      v22[2] = v21;
      return sub_27175A954(v20, v22);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_271199110(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_28087A930, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_28087A930))
    {
      sub_2718519B4("VZPoints2]", 9uLL, qword_28087A9A0);
      __cxa_guard_release(&qword_28087A930);
    }
  }

  v2 = a1;
  operator new();
}

void sub_2711995BC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  __cxa_guard_abort(&qword_28087A930);
  __cxa_begin_catch(a1);
  sub_27119B2DC();
  sub_27112B400(&__p, "failed to create description");
  sub_27112DB38(qword_28087A9A0, &__p, 0);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x27119952CLL);
}

uint64_t sub_27119970C(uint64_t result)
{
  if (atomic_fetch_add((result + 32), 0xFFFFFFFF) == 1)
  {
    return (*(*(result + 8) + 8))();
  }

  return result;
}

uint64_t sub_271199748()
{
  if (atomic_load_explicit(&qword_28087A908, memory_order_acquire))
  {
    return qword_28087A900;
  }

  if (__cxa_guard_acquire(&qword_28087A908))
  {
    qword_28087A900 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087A908);
  }

  return qword_28087A900;
}

void *sub_2711997AC(uint64_t a1, char **lpsrc, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v16 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28812C878, &unk_28812C0D0, 0);
  if (result)
  {
    v18 = result[2];
    v19 = **(a1 + 16);
    v20 = *v19;
    v21 = *v18;
    if (v20 == *v21)
    {
      v22[0] = &v23;
      v22[1] = v19;
      v22[2] = v21;
      return sub_27175A954(v20, v22);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_2711998AC(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_28087A938, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_28087A938))
    {
      sub_2718519B4("VZPoints3]", 9uLL, qword_28087A9B8);
      __cxa_guard_release(&qword_28087A938);
    }
  }

  v2 = a1;
  operator new();
}

void sub_271199D58(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  __cxa_guard_abort(&qword_28087A938);
  __cxa_begin_catch(a1);
  sub_27119B700();
  sub_27112B400(&__p, "failed to create description");
  sub_27112DB38(qword_28087A9B8, &__p, 0);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x271199CC8);
}

double sub_271199E98()
{
  *(&__p.__r_.__value_.__s + 23) = 9;
  strcpy(&__p, "VZPoints2");
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
  xmmword_28087A940 = v7;
  unk_28087A950 = v8;
  return result;
}

void sub_27119A0B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27119A0F8(uint64_t **a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280877850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877850))
  {
    sub_2718519B4("VZData]", 6uLL, qword_280877838);
    __cxa_guard_release(&qword_280877850);
  }

  if ((atomic_load_explicit(&qword_28087A918, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A918))
  {
    sub_27119A490();
    __cxa_guard_release(&qword_28087A918);
  }

  if (byte_28087A96F < 0)
  {
    sub_271127178(&v23, xmmword_28087A958, *(&xmmword_28087A958 + 1));
  }

  else
  {
    v23 = xmmword_28087A958;
    v24 = unk_28087A968;
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

void sub_27119A3EC(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_280877830);
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  _Unwind_Resume(a1);
}

double sub_27119A490()
{
  *(&__p.__r_.__value_.__s + 23) = 9;
  strcpy(&__p, "VZPoints2");
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
  xmmword_28087A958 = v7;
  unk_28087A968 = v8;
  return result;
}

void sub_27119A6B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_27119A6F0()
{
  *(&__p.__r_.__value_.__s + 23) = 9;
  strcpy(&__p, "VZPoints3");
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
  xmmword_28087A970 = v7;
  unk_28087A980 = v8;
  return result;
}

void sub_27119A910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27119A950(uint64_t **a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280877850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877850))
  {
    sub_2718519B4("VZData]", 6uLL, qword_280877838);
    __cxa_guard_release(&qword_280877850);
  }

  if ((atomic_load_explicit(&qword_28087A928, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A928))
  {
    sub_27119ACE8();
    __cxa_guard_release(&qword_28087A928);
  }

  if (byte_28087A99F < 0)
  {
    sub_271127178(&v23, xmmword_28087A988, *(&xmmword_28087A988 + 1));
  }

  else
  {
    v23 = xmmword_28087A988;
    v24 = unk_28087A998;
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

void sub_27119AC44(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_280877830);
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  _Unwind_Resume(a1);
}

double sub_27119ACE8()
{
  *(&__p.__r_.__value_.__s + 23) = 9;
  strcpy(&__p, "VZPoints3");
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
  xmmword_28087A988 = v7;
  unk_28087A998 = v8;
  return result;
}

void sub_27119AF08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27119AF48(uint64_t **a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087A930, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A930))
  {
    sub_2718519B4("VZPoints2]", 9uLL, qword_28087A9A0);
    __cxa_guard_release(&qword_28087A930);
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

  sub_27112E0C4(qword_28087A9A0, &v20, &v9, **a1);
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

void sub_27119B1D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

uint64_t sub_27119B220(uint64_t result)
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

void sub_27119B298(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D71C(va);
  _Unwind_Resume(a1);
}

void sub_27119B2AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D71C(va);
  __cxa_free_exception(v2);
  _Unwind_Resume(a1);
}

void sub_27119B2DC()
{
  if ((atomic_load_explicit(&qword_28087A930, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A930))
  {
    sub_2718519B4("VZPoints2]", 9uLL, qword_28087A9A0);

    __cxa_guard_release(&qword_28087A930);
  }
}

void sub_27119B36C(uint64_t **a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087A938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A938))
  {
    sub_2718519B4("VZPoints3]", 9uLL, qword_28087A9B8);
    __cxa_guard_release(&qword_28087A938);
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

  sub_27112E0C4(qword_28087A9B8, &v20, &v9, **a1);
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

void sub_27119B5F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

uint64_t sub_27119B644(uint64_t result)
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

void sub_27119B6BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D71C(va);
  _Unwind_Resume(a1);
}

void sub_27119B6D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D71C(va);
  __cxa_free_exception(v2);
  _Unwind_Resume(a1);
}

void sub_27119B700()
{
  if ((atomic_load_explicit(&qword_28087A938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A938))
  {
    sub_2718519B4("VZPoints3]", 9uLL, qword_28087A9B8);

    __cxa_guard_release(&qword_28087A938);
  }
}

void sub_27119B790(uint64_t **a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087A930, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A930))
  {
    sub_2718519B4("VZPoints2]", 9uLL, qword_28087A9A0);
    __cxa_guard_release(&qword_28087A930);
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

  sub_27112E0C4(qword_28087A9A0, &v21, &v10, **a1);
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

void sub_27119BB30(_Unwind_Exception *a1)
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

void sub_27119BC30(uint64_t **a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087A938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A938))
  {
    sub_2718519B4("VZPoints3]", 9uLL, qword_28087A9B8);
    __cxa_guard_release(&qword_28087A938);
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

  sub_27112E0C4(qword_28087A9B8, &v21, &v10, **a1);
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

void sub_27119BFD0(_Unwind_Exception *a1)
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

void *sub_27119C0D0(void *result)
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

uint64_t VZProtocolVersionGetTypeID()
{
  if (atomic_load_explicit(&qword_28087A9F0, memory_order_acquire))
  {
    return qword_28087A9E8;
  }

  if (__cxa_guard_acquire(&qword_28087A9F0))
  {
    qword_28087A9E8 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087A9F0);
  }

  return qword_28087A9E8;
}

uint64_t VZProtocolVersionGetCurrent()
{
  if ((atomic_load_explicit(&qword_28087A9D8, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_28087A9D8))
  {
    return qword_28087A9D0;
  }

  v3 = 0x500000001;
  v4 = 0;
  v1 = sub_27119CBD0(&v3);
  qword_28087A9D0 = v1;
  if (v1)
  {
    v2 = v1;
    (*(*v1 + 16))(v1);
    (*(*v2 + 24))(v2);
  }

  __cxa_atexit(sub_27119C0D0, &qword_28087A9D0, &dword_27111A000);
  __cxa_guard_release(&qword_28087A9D8);
  return qword_28087A9D0;
}

uint64_t VZProtocolVersionGetMajor(uint64_t a1)
{
  if (sub_27119C310("VZProtocolVersionGetMajor", a1))
  {
    return 0;
  }

  else
  {
    return *(a1 + 16);
  }
}

BOOL sub_27119C310(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_28087A9F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A9F8))
    {
      sub_27119CF28();
      __cxa_guard_release(&qword_28087A9F8);
    }

    if (byte_28087AA2F < 0)
    {
      sub_271127178(v5, xmmword_28087AA18, *(&xmmword_28087AA18 + 1));
    }

    else
    {
      *v5 = xmmword_28087AA18;
      v6 = unk_28087AA28;
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

void sub_27119C574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t VZProtocolVersionGetMinor(uint64_t a1)
{
  if (sub_27119C310("VZProtocolVersionGetMinor", a1))
  {
    return 0;
  }

  else
  {
    return *(a1 + 20);
  }
}

uint64_t VZProtocolVersionGetRevision(uint64_t a1)
{
  if (sub_27119C310("VZProtocolVersionGetRevision", a1))
  {
    return 0;
  }

  else
  {
    return *(a1 + 24);
  }
}

uint64_t sub_27119C654(uint64_t result)
{
  if (atomic_fetch_add((result + 28), 0xFFFFFFFF) == 1)
  {
    return (*(*(result + 8) + 8))();
  }

  return result;
}

uint64_t sub_27119C690()
{
  if (atomic_load_explicit(&qword_28087A9F0, memory_order_acquire))
  {
    return qword_28087A9E8;
  }

  if (__cxa_guard_acquire(&qword_28087A9F0))
  {
    qword_28087A9E8 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087A9F0);
  }

  return qword_28087A9E8;
}

void *sub_27119C6F4(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28812C878, &unk_28812C4C0, 0);
  if (result)
  {
    v6 = *(a1 + 24);
    return (*(a1 + 16) == result[2] && *(a1 + 24) == *(result + 6));
  }

  return result;
}

void sub_27119C78C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280877C50, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280877C50))
    {
      sub_2718519B4("VZProtocolVersion]", 0x11uLL, qword_280877C38);
      __cxa_guard_release(&qword_280877C50);
    }
  }

  v2 = a1;
  operator new();
}

uint64_t sub_27119CAD0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  __cxa_guard_abort(&qword_280877C50);
  __cxa_begin_catch(a1);
  sub_27119CE98();
  sub_27112B400(v34, "failed to create description");
  sub_27112DB38(qword_280877C38, v34, 0);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  __cxa_end_catch();
  return 0;
}

_DWORD *sub_27119CBD0(uint64_t *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  result = operator new(0x20uLL, MEMORY[0x277D826F0]);
  if (result)
  {
    v3 = *a1;
    result[6] = *(a1 + 2);
    result[7] = 1;
    *result = &unk_2881194A8;
    *(result + 1) = &unk_2881194F8;
    *(result + 2) = v3;
    v4 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if ((atomic_load_explicit(&qword_280877C50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877C50))
    {
      sub_2718519B4("VZProtocolVersion]", 0x11uLL, qword_280877C38);
      __cxa_guard_release(&qword_280877C50);
    }

    if ((atomic_load_explicit(&qword_28087A9E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A9E0))
    {
      sub_2718519B4("cv3d::kit::kio::Version]", 0x17uLL, &xmmword_28087AA00);
      __cxa_guard_release(&qword_28087A9E0);
    }

    if (byte_28087AA17 < 0)
    {
      sub_271127178(&v23, xmmword_28087AA00, *(&xmmword_28087AA00 + 1));
    }

    else
    {
      v23 = xmmword_28087AA00;
      v24 = unk_28087AA10;
    }

    sub_2711309E8(&v21, &v23, 1uLL);
    LOBYTE(v10) = 0;
    v20 = 0;
    sub_27112E0C4(qword_280877C38, &v21, &v10, 0);
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

    v5 = v21;
    if (v21)
    {
      v6 = v22;
      v7 = v21;
      if (v22 != v21)
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
        v7 = v21;
      }

      v22 = v5;
      operator delete(v7);
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23);
    }

    result = 0;
    v9 = *MEMORY[0x277D85DE8];
  }

  return result;
}

void sub_27119CE54(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_28087A9E0);
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27119CE98()
{
  if ((atomic_load_explicit(&qword_280877C50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877C50))
  {
    sub_2718519B4("VZProtocolVersion]", 0x11uLL, qword_280877C38);

    __cxa_guard_release(&qword_280877C50);
  }
}

double sub_27119CF28()
{
  *(&__p.__r_.__value_.__s + 23) = 17;
  strcpy(&__p, "VZProtocolVersion");
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
  xmmword_28087AA18 = v7;
  unk_28087AA28 = v8;
  return result;
}

void sub_27119D148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (v23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27119D358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27119D3E8(uint64_t result)
{
  v1 = *(result + 24);
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

void sub_27119D460(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_27119D4DC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

void sub_27119D568(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t VZRecorderOptionsGetTypeID()
{
  if (atomic_load_explicit(&qword_28087AA38, memory_order_acquire))
  {
    return qword_28087AA30;
  }

  if (__cxa_guard_acquire(&qword_28087AA38))
  {
    qword_28087AA30 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087AA38);
  }

  return qword_28087AA30;
}

_OWORD *VZRecorderOptionsCreate()
{
  result = operator new(0x30uLL, MEMORY[0x277D826F0]);
  if (result)
  {
    result[1] = 0u;
    result[2] = 0u;
    *(result + 8) = 1066401792;
    *(result + 10) = 1;
    *result = &unk_28812D8B8;
    *(result + 1) = &unk_28812D908;
  }

  else
  {
    if ((atomic_load_explicit(&qword_28087AA40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AA40))
    {
      sub_2718519B4("VZRecorderOptions]", 0x11uLL, qword_28087AA90);
      __cxa_guard_release(&qword_28087AA40);
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    LOBYTE(v5) = 0;
    v15 = 0;
    sub_27112E0C4(qword_28087AA90, &v16, &v5, 0);
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

BOOL VZRecorderOptionsSetMaximumMessageAgeNanoseconds(uint64_t a1, uint64_t a2)
{
  result = sub_27119D89C("VZRecorderOptionsSetMaximumMessageAgeNanoseconds", a1);
  if (!result)
  {
    if (a2 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (*(a1 + 24))
      {
        *(a1 + 24) = 0;
      }
    }

    else
    {
      if ((*(a1 + 24) & 1) == 0)
      {
        *(a1 + 24) = 1;
      }

      *(a1 + 16) = a2;
    }
  }

  return result;
}

BOOL sub_27119D89C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_28087AA48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AA48))
    {
      sub_2711A0644();
      __cxa_guard_release(&qword_28087AA48);
    }

    if (byte_28087AABF < 0)
    {
      sub_271127178(v5, xmmword_28087AAA8, *(&xmmword_28087AAA8 + 1));
    }

    else
    {
      *v5 = xmmword_28087AAA8;
      v6 = unk_28087AAB8;
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

void sub_27119DB00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL VZRecorderOptionsSetAutoCleanupSizeRatio(uint64_t a1, float a2)
{
  result = sub_27119D89C("VZRecorderOptionsSetAutoCleanupSizeRatio", a1);
  if (!result)
  {
    *(a1 + 32) = a2;
  }

  return result;
}

uint64_t VZRecorderGetTypeID()
{
  if (atomic_load_explicit(&qword_28087AA58, memory_order_acquire))
  {
    return qword_28087AA50;
  }

  if (__cxa_guard_acquire(&qword_28087AA58))
  {
    qword_28087AA50 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087AA58);
  }

  return qword_28087AA50;
}

uint64_t VZRecorderCreate(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = operator new(0x28uLL, MEMORY[0x277D826F0]);
  if (v4)
  {
    v5 = (a1 + 16);
    if (!a1)
    {
      v5 = 0;
    }

    *v4 = &unk_288117810;
    v29[0] = &unk_288108A18;
    v29[1] = sub_271141150;
    v29[3] = v29;
    v30 = 1;
    sub_2713674D8((v4 + 2), (v5 | (a1 + 16) & 0xFFFFFFFFFFFFFF00), a1 != 0, v29);
  }

  if ((atomic_load_explicit(&qword_28087AA60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AA60))
  {
    sub_2718519B4("VZRecorder]", 0xAuLL, qword_28087AAC0);
    __cxa_guard_release(&qword_28087AA60);
  }

  if ((atomic_load_explicit(&qword_28087AA68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AA68))
  {
    sub_2711A08D4();
  }

  if (byte_28087AAEF < 0)
  {
    sub_271127178(&v25, xmmword_28087AAD8, *(&xmmword_28087AAD8 + 1));
  }

  else
  {
    v25 = xmmword_28087AAD8;
    v26 = unk_28087AAE8;
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

  sub_2711309E8(&v23, &v25, 2uLL);
  LOBYTE(v12) = 0;
  v22 = 0;
  sub_27112E0C4(qword_28087AAC0, &v23, &v12, a2);
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

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27);
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_36:
    operator delete(v25);
    goto LABEL_34;
  }

  if (SHIBYTE(v26) < 0)
  {
    goto LABEL_36;
  }

LABEL_34:
  v11 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_27119E00C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_280877990);
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

void sub_27119E04C(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x27119E058);
  }

  sub_271120E50(a1);
}

uint64_t VZRecorderGetMaximumMessageAgeNanoseconds(uint64_t a1)
{
  if (sub_27119E10C("VZRecorderGetMaximumMessageAgeNanoseconds", a1, 0))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  (*(**(*(a1 + 16) + 8) + 64))(*(*(a1 + 16) + 8));
  if ((v2 & 1) == 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return (*(**(*(a1 + 16) + 8) + 64))(*(*(a1 + 16) + 8));
  }
}

BOOL sub_27119E10C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_28087AA70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AA70))
    {
      sub_2711A0B74();
      __cxa_guard_release(&qword_28087AA70);
    }

    if (byte_28087AB07 < 0)
    {
      sub_271127178(v7, xmmword_28087AAF0, *(&xmmword_28087AAF0 + 1));
    }

    else
    {
      *v7 = xmmword_28087AAF0;
      v8 = unk_28087AB00;
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

void sub_27119E37C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

_OWORD *VZRecorderCopyLogMessages(uint64_t a1, uint64_t a2)
{
  if (sub_27119E10C("VZRecorderCopyLogMessages", a1, a2))
  {
    return 0;
  }

  v29 = &v30;
  v30 = a2;
  sub_271367664(a1 + 16, &v8);
  v19 = v9;
  v21 = &unk_288131488;
  v22 = v11;
  v18 = &unk_288130A18;
  v20 = &unk_288130A38;
  v28 = 1;
  v6 = sub_271159A48(&v18);
  v7 = operator new(0x60uLL, MEMORY[0x277D826F0]);
  v4 = v7;
  if (v7)
  {
    v7[1] = *(v6 + 8);
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
    *(v7 + 5) = &unk_288131488;
    v7[3] = *(v6 + 40);
    *(v6 + 40) = 0;
    *(v6 + 48) = 0;
    *(v7 + 16) = 1;
    *v7 = &unk_288119588;
    *(v7 + 1) = &unk_2881195D8;
    *(v7 + 4) = &unk_2881195F8;
    *(v7 + 10) = 0;
    *(v7 + 11) = 0;
    *(v7 + 9) = 0;
  }

  else
  {
    LOBYTE(v8) = 0;
    v17 = 0;
    sub_2711A0DD8(&v29, &v8);
    if (v17 == 1 && v16 == 1)
    {
      if (v15 == 1)
      {
        if (v14 < 0)
        {
          operator delete(__p);
        }

        if (v12 < 0)
        {
          operator delete(*(&v11 + 1));
        }
      }

      if (v11 == 1 && v10 < 0)
      {
        operator delete(*(&v9 + 1));
      }
    }
  }

  if (v28 == 1)
  {
    (*v18)(&v18);
    return v4;
  }

  else
  {
    if (v27 != 1)
    {
      return v4;
    }

    if (v26 == 1)
    {
      if (v25 < 0)
      {
        operator delete(v24);
      }

      if (v23 < 0)
      {
        operator delete(*(&v22 + 1));
      }
    }

    if (v22 != 1 || (SHIBYTE(v21) & 0x80000000) == 0)
    {
      return v4;
    }

    operator delete(*(&v19 + 1));
    return v4;
  }
}

void sub_27119E69C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, const char *a9, std::logic_error a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::runtime_error __p, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_2711307D4(&a37);
  sub_271159B04(v37 - 176);
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
    sub_2711A0DD8((v37 - 48), v37 - 176);
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
    sub_2711A0DD8((v37 - 48), v37 - 176);
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
    sub_2711A0DD8((v37 - 48), v37 - 176);
    sub_2711307D4(v37 - 176);
    __cxa_end_catch();
  }

  JUMPOUT(0x27119E3F4);
}

_OWORD *VZRecorderCopyNewLogMessages(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v30 = &v31;
    v31 = a2;
    sub_271367938(a1 + 16, v10);
    *&v20[8] = *&v10[8];
    v21 = &unk_288131488;
    *v22 = *v12;
    *v20 = &unk_288130A18;
    *&v20[24] = &unk_288130A38;
    v29 = 1;
    v3 = sub_271159A48(v20);
    v4 = operator new(0x60uLL, MEMORY[0x277D826F0]);
    v5 = v4;
    if (v4)
    {
      v4[1] = *(v3 + 8);
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
      *(v4 + 5) = &unk_288131488;
      v4[3] = *(v3 + 40);
      *(v3 + 40) = 0;
      *(v3 + 48) = 0;
      *(v4 + 16) = 1;
      *v4 = &unk_288119588;
      *(v4 + 1) = &unk_2881195D8;
      *(v4 + 4) = &unk_2881195F8;
      *(v4 + 10) = 0;
      *(v4 + 11) = 0;
      *(v4 + 9) = 0;
    }

    else
    {
      v10[0] = 0;
      v19 = 0;
      sub_2711A150C(&v30, v10);
      if (v19 == 1 && v18 == 1)
      {
        if (v17 == 1)
        {
          if (SHIBYTE(v16) < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v13) < 0)
          {
            operator delete(*&v12[8]);
          }
        }

        if (v12[0] == 1 && SHIBYTE(v11) < 0)
        {
          operator delete(*&v10[16]);
        }
      }
    }

    if (v29 == 1)
    {
      (**v20)(v20);
    }

    else if (v28 == 1)
    {
      if (v27 == 1)
      {
        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25);
        }

        if (SHIBYTE(v23) < 0)
        {
          operator delete(*&v22[8]);
        }
      }

      if (v22[0] == 1 && SHIBYTE(v21) < 0)
      {
        operator delete(*&v20[16]);
        return v5;
      }
    }

    return v5;
  }

  else
  {
    if ((atomic_load_explicit(&qword_28087AA80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AA80))
    {
      sub_2711A1308();
      __cxa_guard_release(&qword_28087AA80);
    }

    if (byte_28087AB37 < 0)
    {
      sub_271127178(v7, xmmword_28087AB20, *(&xmmword_28087AB20 + 1));
    }

    else
    {
      *v7 = xmmword_28087AB20;
      v8 = unk_28087AB30;
    }

    v9 = 1;
    sub_27112D7CC("VZRecorderCopyNewLogMessages", v7, v10);
    *v20 = *v10;
    v20[16] = 0;
    v28 = 0;
    if (v18 == 1)
    {
      v22[0] = 0;
      if (v12[0] == 1)
      {
        *&v20[16] = *&v10[16];
        v21 = v11;
        *&v10[24] = 0;
        v11 = 0;
        *&v10[16] = 0;
        v22[0] = 1;
      }

      v22[8] = 0;
      v27 = 0;
      if (v17 == 1)
      {
        v23 = v13;
        *&v22[8] = *&v12[8];
        *&v12[8] = 0;
        *&v12[16] = 0;
        v25 = __p;
        v24 = v14;
        v26 = v16;
        v13 = 0;
        __p = 0uLL;
        v16 = 0;
        v27 = 1;
      }

      v28 = 1;
    }

    v29 = 0;
    sub_27112B960(v20, a2);
    if ((v29 & 1) == 0 && v28 == 1)
    {
      if (v27 == 1)
      {
        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25);
        }

        if (SHIBYTE(v23) < 0)
        {
          operator delete(*&v22[8]);
        }
      }

      if (v22[0] == 1 && SHIBYTE(v21) < 0)
      {
        operator delete(*&v20[16]);
      }
    }

    if (v18 == 1)
    {
      if (v17 == 1)
      {
        if (SHIBYTE(v16) < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v13) < 0)
        {
          operator delete(*&v12[8]);
        }
      }

      if (v12[0] == 1 && SHIBYTE(v11) < 0)
      {
        operator delete(*&v10[16]);
      }
    }

    if (v9 == 1 && SHIBYTE(v8) < 0)
    {
      operator delete(v7[0]);
    }

    return 0;
  }
}

void sub_27119ED84(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const char *a10, std::logic_error a11, int a12, __int16 a13, char a14, char a15, char a16, __int128 a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::runtime_error __p, int a32, __int16 a33, char a34, char a35, char a36, uint64_t a37, uint64_t a38, char a39)
{
  sub_2711307D4(&a39);
  sub_271159B04(v40 - 176);
  if (a2 == 3)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    std::logic_error::logic_error(&a11, exception_ptr);
    a11.__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_begin_catch(a1);
    a10 = std::logic_error::what(&a11);
    sub_27113604C(&__p, &a10);
    sub_271369D54(&__p, &a17);
    *(v39 + 128) = a17;
    sub_27184A2B4(v40 - 160, &a18);
    *(v40 - 56) = 1;
    sub_2711A150C((v40 - 48), v40 - 176);
    sub_2711307D4(v40 - 176);
    sub_27112D71C(&a17);
    if (a36 == 1 && a35 < 0)
    {
      operator delete(__p.__vftable);
    }

    MEMORY[0x2743BE520](&a11);
    __cxa_end_catch();
  }

  else if (a2 == 2)
  {
    v44 = __cxa_get_exception_ptr(a1);
    sub_271135FD0(&__p, v44);
    __cxa_begin_catch(a1);
    v45 = (a37 + 48);
    if (*(a37 + 71) < 0)
    {
      v45 = *v45;
    }

    a10 = v45;
    sub_27113604C(&a11, &a10);
    sub_27136A868(&a11, &a17);
    *(v39 + 128) = a17;
    sub_27184A2B4(v40 - 160, &a18);
    *(v40 - 56) = 1;
    sub_2711A150C((v40 - 48), v40 - 176);
    sub_2711307D4(v40 - 176);
    sub_27112D71C(&a17);
    if (a16 == 1 && a15 < 0)
    {
      operator delete(a11.__vftable);
    }

    MEMORY[0x2743BEBB0](&__p);
    __cxa_end_catch();
  }

  else
  {
    __cxa_begin_catch(a1);
    *(v40 - 176) = 0;
    *(v40 - 56) = 0;
    sub_2711A150C((v40 - 48), v40 - 176);
    sub_2711307D4(v40 - 176);
    __cxa_end_catch();
  }

  JUMPOUT(0x27119ED2CLL);
}

uint64_t VZDestinationCreateWithRecorder(uint64_t a1, uint64_t a2)
{
  if (!sub_27119E10C("VZDestinationCreateWithRecorder", a1, a2))
  {
    v5 = *(a1 + 16);
    v4 = *(a1 + 24);
    v7[18] = &v8;
    v8 = a2;
    v7[0] = v5;
    v7[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    sub_271367D38(v7);
  }

  return 0;
}

void sub_27119F25C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, const char *a9, std::logic_error a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::runtime_error __p, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_2711307D4(&a37);
  sub_271145690(v37 - 176);
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
    sub_2711A19DC((v37 - 48), v37 - 176);
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
    sub_2711A19DC((v37 - 48), v37 - 176);
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
    sub_2711A19DC((v37 - 48), v37 - 176);
    sub_2711307D4(v37 - 176);
    __cxa_end_catch();
  }

  JUMPOUT(0x27119F1ACLL);
}

uint64_t sub_27119F484(uint64_t result)
{
  if (atomic_fetch_add((result + 40), 0xFFFFFFFF) == 1)
  {
    return (*(*(result + 8) + 8))();
  }

  return result;
}

uint64_t sub_27119F4C0()
{
  if (atomic_load_explicit(&qword_28087AA38, memory_order_acquire))
  {
    return qword_28087AA30;
  }

  if (__cxa_guard_acquire(&qword_28087AA38))
  {
    qword_28087AA30 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087AA38);
  }

  return qword_28087AA30;
}

float *sub_27119F524(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28812C878, &unk_28812D950, 0);
  if (result)
  {
    v5 = *(a1 + 24);
    v6 = *(result + 24);
    if (v5 == v6 && v5 != 0)
    {
      if (*(a1 + 16) != *(result + 2))
      {
        return 0;
      }

LABEL_11:
      if (*(a1 + 32) == result[8] && *(a1 + 36) == *(result + 36))
      {
        return (*(a1 + 37) == *(result + 37));
      }

      return 0;
    }

    if (v5 == v6)
    {
      goto LABEL_11;
    }

    return 0;
  }

  return result;
}

void sub_27119F60C(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087AA40, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_28087AA40))
    {
      sub_2718519B4("VZRecorderOptions]", 0x11uLL, qword_28087AA90);
      __cxa_guard_release(&qword_28087AA40);
    }
  }

  v2 = a1;
  operator new();
}

void sub_27119FE80(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x27119FE88);
  }

  sub_271120E50(a1);
}

uint64_t sub_27119FEB4(uint64_t result)
{
  if (atomic_fetch_add((result + 32), 0xFFFFFFFF) == 1)
  {
    return (*(*(result + 8) + 8))();
  }

  return result;
}

uint64_t sub_27119FEF0()
{
  if (atomic_load_explicit(&qword_28087AA58, memory_order_acquire))
  {
    return qword_28087AA50;
  }

  if (__cxa_guard_acquire(&qword_28087AA58))
  {
    qword_28087AA50 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087AA58);
  }

  return qword_28087AA50;
}

void *sub_27119FF54(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28812C878, &unk_28812DA48, 0);
  if (result)
  {
    return (*(a1 + 16) == result[2]);
  }

  return result;
}

void sub_27119FFD0(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_28087AA60, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_28087AA60))
    {
      sub_2718519B4("VZRecorder]", 0xAuLL, qword_28087AAC0);
      __cxa_guard_release(&qword_28087AA60);
    }
  }

  v2 = a1;
  operator new();
}

void sub_2711A0474(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  __cxa_guard_abort(&qword_28087AA60);
  __cxa_begin_catch(a1);
  sub_2711A0844();
  sub_27112B400(&__p, "failed to create description");
  sub_27112DB38(qword_28087AAC0, &__p, 0);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x2711A03E4);
}

void sub_2711A05B4()
{
  if ((atomic_load_explicit(&qword_28087AA40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AA40))
  {
    sub_2718519B4("VZRecorderOptions]", 0x11uLL, qword_28087AA90);

    __cxa_guard_release(&qword_28087AA40);
  }
}

double sub_2711A0644()
{
  *(&__p.__r_.__value_.__s + 23) = 17;
  strcpy(&__p, "VZRecorderOptions");
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
  xmmword_28087AAA8 = v5;
  unk_28087AAB8 = v6;
  return result;
}

void sub_2711A0814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711A0844()
{
  if ((atomic_load_explicit(&qword_28087AA60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AA60))
  {
    sub_2718519B4("VZRecorder]", 0xAuLL, qword_28087AAC0);

    __cxa_guard_release(&qword_28087AA60);
  }
}

void sub_2711A08D4()
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

void sub_2711A0AEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void **a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
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

void sub_2711A0B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    JUMPOUT(0x2711A0B54);
  }

  JUMPOUT(0x2711A0B58);
}

double sub_2711A0B74()
{
  *(&__p.__r_.__value_.__s + 23) = 10;
  strcpy(&__p, "VZRecorder");
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
  xmmword_28087AAF0 = v7;
  unk_28087AB00 = v8;
  return result;
}

void sub_2711A0D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711A0DD8(uint64_t **a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280877B10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877B10))
  {
    sub_2718519B4("VZLogMessageList]", 0x10uLL, qword_280877AF8);
    __cxa_guard_release(&qword_280877B10);
  }

  if ((atomic_load_explicit(&qword_28087AA78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AA78))
  {
    sub_2711A10A4();
    __cxa_guard_release(&qword_28087AA78);
  }

  if (byte_28087AB1F < 0)
  {
    sub_271127178(&v22, xmmword_28087AB08, *(&xmmword_28087AB08 + 1));
  }

  else
  {
    v22 = xmmword_28087AB08;
    v23 = unk_28087AB18;
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

  sub_27112E0C4(qword_280877AF8, &v20, &v9, **a1);
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

void sub_2711A1054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27112D66C(v9 + 16);
  sub_2711307D4(&a9);
  sub_27137F4D0((v10 - 88));
  if (*(v10 - 41) < 0)
  {
    operator delete(*(v10 - 64));
  }

  _Unwind_Resume(a1);
}

double sub_2711A10A4()
{
  *(&__p.__r_.__value_.__s + 23) = 10;
  strcpy(&__p, "VZRecorder");
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
  xmmword_28087AB08 = v7;
  unk_28087AB18 = v8;
  return result;
}

void sub_2711A12C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_2711A1308()
{
  *(&__p.__r_.__value_.__s + 23) = 10;
  strcpy(&__p, "VZRecorder");
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
  xmmword_28087AB20 = v5;
  unk_28087AB30 = v6;
  return result;
}

void sub_2711A14DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711A150C(uint64_t **a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280877B10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877B10))
  {
    sub_2718519B4("VZLogMessageList]", 0x10uLL, qword_280877AF8);
    __cxa_guard_release(&qword_280877B10);
  }

  if ((atomic_load_explicit(&qword_28087AA88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AA88))
  {
    sub_2711A17D8();
    __cxa_guard_release(&qword_28087AA88);
  }

  if (byte_28087AB4F < 0)
  {
    sub_271127178(&v22, xmmword_28087AB38, *(&xmmword_28087AB38 + 1));
  }

  else
  {
    v22 = xmmword_28087AB38;
    v23 = unk_28087AB48;
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

  sub_27112E0C4(qword_280877AF8, &v20, &v9, **a1);
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

void sub_2711A1788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27112D66C(v9 + 16);
  sub_2711307D4(&a9);
  sub_27137F4D0((v10 - 88));
  if (*(v10 - 41) < 0)
  {
    operator delete(*(v10 - 64));
  }

  _Unwind_Resume(a1);
}

double sub_2711A17D8()
{
  *(&__p.__r_.__value_.__s + 23) = 10;
  strcpy(&__p, "VZRecorder");
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
  *(v1 + v0) = 38;
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
  xmmword_28087AB38 = v5;
  unk_28087AB48 = v6;
  return result;
}

void sub_2711A19AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711A19DC(uint64_t **a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280877950, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877950))
  {
    sub_2718519B4("VZDestination]", 0xDuLL, qword_280877938);
    __cxa_guard_release(&qword_280877950);
  }

  if ((atomic_load_explicit(&qword_28087AA78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AA78))
  {
    sub_2711A10A4();
    __cxa_guard_release(&qword_28087AA78);
  }

  if (byte_28087AB1F < 0)
  {
    sub_271127178(&v22, xmmword_28087AB08, *(&xmmword_28087AB08 + 1));
  }

  else
  {
    v22 = xmmword_28087AB08;
    v23 = unk_28087AB18;
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

  sub_27112E0C4(qword_280877938, &v20, &v9, **a1);
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

void sub_2711A1C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27112D66C(v9 + 16);
  sub_2711307D4(&a9);
  sub_27137F4D0((v10 - 88));
  if (*(v10 - 41) < 0)
  {
    operator delete(*(v10 - 64));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2711A1CA8(uint64_t result)
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

uint64_t sub_2711A1D40(uint64_t result)
{
  v1 = *(result + 16);
  *(result + 16) = 0;
  if (v1)
  {
    v2 = result;
    MEMORY[0x2743BF050](v1, 0x1000C4072FAA15ELL);
    return v2;
  }

  return result;
}

uint64_t sub_2711A1D8C(uint64_t a1)
{
  result = *(a1 + 8);
  *(a1 + 8) = 0;
  if (result)
  {
    JUMPOUT(0x2743BF050);
  }

  return result;
}

void sub_2711A1DB4(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    MEMORY[0x2743BF050](v2, 0x1000C4072FAA15ELL);
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

void sub_2711A1E1C(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    MEMORY[0x2743BF050](v2, 0x1000C4072FAA15ELL);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t VZSE3GetTypeID()
{
  if (atomic_load_explicit(&qword_28087AB58, memory_order_acquire))
  {
    return qword_28087AB50;
  }

  if (__cxa_guard_acquire(&qword_28087AB58))
  {
    qword_28087AB50 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087AB58);
  }

  return qword_28087AB50;
}

uint64_t VZSE3CreateWithAlgebraF(uint64_t *a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if (!sub_2711A2278("VZSE3CreateWithAlgebraF", a1, 0) && !sub_2711A2278("VZSE3CreateWithAlgebraF", a2, 0))
  {
    sub_27136AEE0(a1, a2);
  }

  result = 0;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2711A2224(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_28087AB68);
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2711A2278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_28087AB60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AB60))
    {
      sub_2711A48C0();
      __cxa_guard_release(&qword_28087AB60);
    }

    if (byte_28087ABB7 < 0)
    {
      sub_271127178(v7, xmmword_28087ABA0, *(&xmmword_28087ABA0 + 1));
    }

    else
    {
      *v7 = xmmword_28087ABA0;
      v8 = unk_28087ABB0;
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

void sub_2711A24E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t VZSE3CreateWithAlgebraD(__int128 *a1, __int128 *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if (!sub_2711A28BC("VZSE3CreateWithAlgebraD", a1, 0) && !sub_2711A28BC("VZSE3CreateWithAlgebraD", a2, 0))
  {
    sub_27136AF74(a1, a2);
  }

  result = 0;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2711A2868(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_28087AB78);
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2711A28BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_28087AB70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AB70))
    {
      sub_2711A4DCC();
      __cxa_guard_release(&qword_28087AB70);
    }

    if (byte_28087ABE7 < 0)
    {
      sub_271127178(v7, xmmword_28087ABD0, *(&xmmword_28087ABD0 + 1));
    }

    else
    {
      *v7 = xmmword_28087ABD0;
      v8 = unk_28087ABE0;
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

void sub_2711A2B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

_DWORD *VZSE3CreateWithAffine3x4F(int a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  if (sub_2711A2278("VZSE3CreateWithAffine3x4F", a2, a4))
  {
    return 0;
  }

  v38 = &v39;
  v39 = a4;
  sub_27136B014(a1, a2, a3, &v27, v8, v9, v10);
  v11 = v37;
  if (v37)
  {
    sub_2711A56E4(&v27);
    v12 = operator new(0x20uLL, MEMORY[0x277D826F0]);
    if (v12)
    {
      a3 = v12;
      v13 = v27;
      *&v27 = 0;
      v12[6] = 1;
      *v12 = &unk_2881192E8;
      *(v12 + 1) = &unk_288119338;
      *(v12 + 2) = v13;
      goto LABEL_28;
    }

    LOBYTE(v16) = 0;
    v26 = 0;
    sub_2711A5248(&v38, &v16);
    if (v26 != 1 || v25 != 1)
    {
      goto LABEL_27;
    }

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

    a3 = 0;
    if (v19 == 1 && v18 < 0)
    {
LABEL_26:
      operator delete(v17);
LABEL_27:
      a3 = 0;
    }
  }

  else
  {
    v16 = v27;
    LOBYTE(v17) = 0;
    v25 = 0;
    if (v36 == 1)
    {
      sub_27112F6CC(&v17, &v28);
      v25 = 1;
    }

    v26 = 1;
    sub_2711A5248(&v38, &v16);
    if (v26 == 1 && v25 == 1)
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
        goto LABEL_26;
      }
    }
  }

LABEL_28:
  if (v37 == 1)
  {
    v14 = v27;
    *&v27 = 0;
    if (v14)
    {
      MEMORY[0x2743BF050](v14, 0x1000C4072FAA15ELL);
      if (v11)
      {
        return a3;
      }

      return 0;
    }
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

    if (v30 == 1 && v29 < 0)
    {
      operator delete(v28);
    }
  }

  if ((v11 & 1) == 0)
  {
    return 0;
  }

  return a3;
}

void sub_2711A2E1C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, const char *a9, std::logic_error a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::runtime_error __p, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_2711307D4(&a37);
  sub_2711A57A0((v37 - 192));
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
    sub_2711A5248((v37 - 64), v37 - 192);
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
    sub_2711A5248((v37 - 64), v37 - 192);
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
    sub_2711A5248((v37 - 64), v37 - 192);
    sub_2711307D4(v37 - 192);
    __cxa_end_catch();
  }

  JUMPOUT(0x2711A2DFCLL);
}

_DWORD *VZSE3CreateWithAffine3x4D(int a1, int64x2_t *a2, _DWORD *a3, uint64_t a4)
{
  if (sub_2711A28BC("VZSE3CreateWithAffine3x4D", a2, a4))
  {
    return 0;
  }

  v38 = &v39;
  v39 = a4;
  sub_27136B6F4(a1, a2, a3, &v27, v8, v9, v10);
  v11 = v37;
  if (v37)
  {
    sub_2711A56E4(&v27);
    v12 = operator new(0x20uLL, MEMORY[0x277D826F0]);
    if (v12)
    {
      a3 = v12;
      v13 = v27;
      *&v27 = 0;
      v12[6] = 1;
      *v12 = &unk_2881192E8;
      *(v12 + 1) = &unk_288119338;
      *(v12 + 2) = v13;
      goto LABEL_28;
    }

    LOBYTE(v16) = 0;
    v26 = 0;
    sub_2711A5AD4(&v38, &v16);
    if (v26 != 1 || v25 != 1)
    {
      goto LABEL_27;
    }

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

    a3 = 0;
    if (v19 == 1 && v18 < 0)
    {
LABEL_26:
      operator delete(v17);
LABEL_27:
      a3 = 0;
    }
  }

  else
  {
    v16 = v27;
    LOBYTE(v17) = 0;
    v25 = 0;
    if (v36 == 1)
    {
      sub_27112F6CC(&v17, &v28);
      v25 = 1;
    }

    v26 = 1;
    sub_2711A5AD4(&v38, &v16);
    if (v26 == 1 && v25 == 1)
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
        goto LABEL_26;
      }
    }
  }

LABEL_28:
  if (v37 == 1)
  {
    v14 = v27;
    *&v27 = 0;
    if (v14)
    {
      MEMORY[0x2743BF050](v14, 0x1000C4072FAA15ELL);
      if (v11)
      {
        return a3;
      }

      return 0;
    }
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

    if (v30 == 1 && v29 < 0)
    {
      operator delete(v28);
    }
  }

  if ((v11 & 1) == 0)
  {
    return 0;
  }

  return a3;
}

void sub_2711A32CC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, const char *a9, std::logic_error a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::runtime_error __p, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_2711307D4(&a37);
  sub_2711A57A0((v37 - 192));
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
    sub_2711A5AD4((v37 - 64), v37 - 192);
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
    sub_2711A5AD4((v37 - 64), v37 - 192);
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
    sub_2711A5AD4((v37 - 64), v37 - 192);
    sub_2711307D4(v37 - 192);
    __cxa_end_catch();
  }

  JUMPOUT(0x2711A32ACLL);
}