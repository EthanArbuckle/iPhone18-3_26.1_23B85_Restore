void sub_27136ED6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27136ED88(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_27152F514(*(*a1 + 8), a2, &v13);
  if (v16 != 1)
  {
    sub_27136A984(a2, "client");
  }

  v6 = v13;
  v5 = v14;
  v7 = v15;
  v11 = v14;
  v12 = v15;
  if (v15)
  {
    v13 = &v14;
    v14 = 0;
    v15 = 0;
    v10 = &v11;
    v11 = 0;
    v12 = 0;
    *(a3 + 8) = v5;
    *(v5 + 2) = a3 + 8;
    v8 = &v8 + 8;
    __p = 0;
    v5 = 0;
  }

  else
  {
    v10 = &v11;
    *(&v8 + 1) = v14;
    __p = 0;
    *&v8 = &v8 + 8;
    *(a3 + 8) = v14;
    v6 = (a3 + 8);
  }

  *(a3 + 16) = v7;
  *a3 = v6;
  *(a3 + 120) = 1;
  sub_271167834(&v8, v5);
  sub_271167834(&v10, v11);
  if (v16 == 1)
  {
    sub_271167834(&v13, v14);
  }
}

void sub_27136EF90(_Unwind_Exception *exception_object)
{
  if (*(v1 - 40))
  {
    sub_271167834(v1 - 64, *(v1 - 56));
  }

  _Unwind_Resume(exception_object);
}

void sub_27136EFB0(uint64_t *a1, uint64_t a2, char *__s)
{
  v3 = *a1;
  v4 = *(a2 + 16);
  if (*(a2 + 16))
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

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

    HIBYTE(__p) = v7;
    if (v7)
    {
      memcpy(&__dst, __s, v7);
    }

    *(&__dst + v8) = 0;
  }

  else
  {
    HIBYTE(__p) = 0;
    LOBYTE(__dst) = 0;
  }

  sub_2715318B8(v3, v5, v4, &__dst);
}

void sub_27136F2C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D66C(v2 + 16);
  sub_27112D71C(va);
  sub_27112E024(v3 - 208);
  _Unwind_Resume(a1);
}

void sub_27136F2F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27136F30C(uint64_t *a1, uint64_t a2, char *__s)
{
  v3 = *a1;
  v4 = *(a2 + 16);
  if (*(a2 + 16))
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

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

    HIBYTE(__p) = v7;
    if (v7)
    {
      memcpy(&__dst, __s, v7);
    }

    *(&__dst + v8) = 0;
  }

  else
  {
    HIBYTE(__p) = 0;
    LOBYTE(__dst) = 0;
  }

  sub_271531D98(v3, v5, v4, &__dst);
}

void sub_27136F620(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D66C(v2 + 16);
  sub_27112D71C(va);
  sub_27112E024(v3 - 208);
  _Unwind_Resume(a1);
}

void sub_27136F64C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27136F668(char *__s@<X2>, uint64_t *a2@<X0>, uint64_t a3@<X1>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  v5 = a4;
  if (a4 < 3)
  {
    v7 = *a2;
    v8 = *(a3 + 16);
    if (*(a3 + 16))
    {
      v9 = a3;
    }

    else
    {
      v9 = 0;
    }

    if (__s)
    {
      v11 = strlen(__s);
      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_271120DA8();
      }

      v12 = v11;
      if (v11 >= 0x17)
      {
        operator new();
      }

      HIBYTE(__p) = v11;
      if (v11)
      {
        memcpy(&__dst, __s, v11);
      }

      *(&__dst + v12) = 0;
    }

    else
    {
      HIBYTE(__p) = 0;
      LOBYTE(__dst) = 0;
    }

    sub_271531EB4(v7, v9, v8, &__dst, v5);
  }

  sub_271239198(a4, &v18);
  *a5 = v18;
  *(a5 + 16) = 0;
  *(a5 + 112) = 0;
  if (v28 != 1)
  {
    *(a5 + 120) = 0;
    return;
  }

  *(a5 + 40) = 0;
  v13 = v21;
  if (v21 == 1)
  {
    *(a5 + 16) = v19;
    *(a5 + 32) = v20;
    v20 = 0;
    v19 = 0uLL;
    *(a5 + 40) = 1;
    *(a5 + 48) = 0;
    v14 = a5 + 48;
    *(a5 + 104) = 0;
    if ((v27 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_17:
    v15 = v24;
    *(v14 + 16) = v23;
    *v14 = v22;
    v22 = 0uLL;
    *(a5 + 72) = v15;
    *(a5 + 80) = v25;
    *(a5 + 96) = v26;
    v23 = 0;
    v25 = 0uLL;
    v26 = 0;
    *(a5 + 104) = 1;
    *(a5 + 112) = 1;
    *(a5 + 120) = 0;
    if (!v13)
    {
      return;
    }

    goto LABEL_24;
  }

  *(a5 + 48) = 0;
  v14 = a5 + 48;
  *(a5 + 104) = 0;
  if (v27)
  {
    goto LABEL_17;
  }

LABEL_13:
  *(a5 + 112) = 1;
  *(a5 + 120) = 0;
  if (!v13)
  {
    return;
  }

LABEL_24:
  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19);
  }
}

void sub_27136FA84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D66C(v2 + 16);
  sub_27112D71C(va);
  sub_27112E024(v3 - 224);
  _Unwind_Resume(a1);
}

void sub_27136FAB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27136FACC(uint64_t *a1, uint64_t a2, const void ***a3)
{
  v4 = *a1;
  v5 = *(a2 + 16);
  if (!*(a2 + 16))
  {
    a2 = 0;
  }

  sub_2715319D4(v4, a2, v5, a3);
}

void sub_27136FD20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D66C(v2 + 16);
  sub_27112D71C(va);
  sub_27112E024(v3 - 160);
  _Unwind_Resume(a1);
}

void *sub_27136FD58(void *result)
{
  qword_28087B780 = 0;
  qword_28087B788 = 0;
  qword_28087B790 = 0;
  v1 = result[1];
  if (v1 != *result)
  {
    if (((v1 - *result) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_271135560();
  }

  return result;
}

uint64_t sub_27136FE24(uint64_t result)
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

uint64_t sub_27136FEBC(uint64_t result)
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

void sub_27136FF6C(uint64_t a1)
{
  v67 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *v2;
  LOBYTE(v35) = 0;
  v36 = 0;
  v37 = 1;
  if ((atomic_load_explicit(&qword_28087B760, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B760))
  {
    v16 = sub_27139B104(1);
    sub_27136FD58(v16);
    __cxa_atexit(sub_271233D2C, &qword_28087B780, &dword_27111A000);
    __cxa_guard_release(&qword_28087B760);
  }

  __p = 0;
  v39 = 0;
  v40 = 0;
  if (qword_28087B788 != qword_28087B780)
  {
    if (((qword_28087B788 - qword_28087B780) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_271135560();
  }

  v41 = 1;
  v42 = 0;
  sub_27136CA7C(v43, &v35);
  if (v41 == 1)
  {
    v4 = __p;
    if (__p)
    {
      v5 = v39;
      v6 = __p;
      if (v39 != __p)
      {
        do
        {
          v7 = *(v5 - 1);
          if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          v5 -= 2;
        }

        while (v5 != v4);
        v6 = __p;
      }

      v39 = v4;
      operator delete(v6);
    }
  }

  if (*(v3 + 136) == 1)
  {
    sub_2711B50EC(v54, v3);
  }

  else
  {
    *v54 = *v43;
    *&v54[5] = *&v43[5];
    LOBYTE(v55) = 0;
    v57 = 0;
    if (v46 == 1)
    {
      v55 = v44;
      v56 = v45;
      v45 = 0;
      v44 = 0uLL;
      v57 = 1;
    }

    v58 = v47;
    v59 = 0;
    v61 = 0;
    if (v50 == 1)
    {
      if (v49)
      {
        if (v49 == &v48)
        {
          v60 = &v59;
          (*(*v49 + 24))();
        }

        else
        {
          v60 = v49;
          v49 = 0;
        }
      }

      else
      {
        v60 = 0;
      }

      v61 = 1;
    }

    v62 = 0;
    v64 = 0;
    if (v53 == 1)
    {
      if (v52)
      {
        if (v52 == &v51)
        {
          v63 = &v62;
          (*(*v52 + 24))();
        }

        else
        {
          v63 = v52;
          v52 = 0;
        }
      }

      else
      {
        v63 = 0;
      }

      v64 = 1;
    }
  }

  LOBYTE(v17[0]) = 0;
  v18 = 0;
  if (v57 == 1)
  {
    memset(v17, 0, sizeof(v17));
    v35 = v17;
    v36 = 0;
    if (*(&v55 + 1) != v55)
    {
      if (((*(&v55 + 1) - v55) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_271135560();
    }

    v18 = 1;
  }

  v19 = v58;
  v8 = v2[1];
  if (*(v8 + 32))
  {
    v9 = *(v8 + 24);
    if (v9)
    {
      if (v9 == v8)
      {
        v39 = &v35;
        (*(*v9 + 24))(v9, &v35);
        v9 = v39;
        if (!v39)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v9 = (*(*v9 + 16))(v9);
        v39 = v9;
        if (!v9)
        {
          goto LABEL_49;
        }
      }

      if (v9 == &v35)
      {
        v32 = &v31;
        (*(*v9 + 24))(v9, &v31);
LABEL_50:
        operator new();
      }

      v9 = (*(*v9 + 16))(v9);
    }

    else
    {
      v39 = 0;
    }

LABEL_49:
    v32 = v9;
    goto LABEL_50;
  }

  v34[0] = 0;
  v34[32] = 0;
  v31 = 0;
  v33 = 0;
  v10 = *v2;
  if (*(*v2 + 136) != 1)
  {
    v29[0] = 0;
    v30 = 0;
    goto LABEL_69;
  }

  if (*(v10 + 88) == 1)
  {
    v11 = *(v10 + 80);
    if (v11)
    {
      if (v11 == (v10 + 56))
      {
        v39 = &v35;
        (*(*v11 + 24))(v11, &v35);
        v11 = v39;
        if (!v39)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v11 = (*(*v11 + 16))(v11);
        v39 = v11;
        if (!v11)
        {
          goto LABEL_62;
        }
      }

      if (v11 == &v35)
      {
        v27 = v26;
        (*(*v11 + 24))(v11, v26);
LABEL_63:
        operator new();
      }

      v11 = (*(*v11 + 16))(v11);
    }

    else
    {
      v39 = 0;
    }

LABEL_62:
    v27 = v11;
    goto LABEL_63;
  }

  v29[0] = 0;
  v30 = 0;
  if ((*(v10 + 128) & 1) == 0)
  {
LABEL_69:
    v26[0] = 0;
    v28 = 0;
    sub_271371FB4(&v35, v34, &v31, v29, v26);
    v13 = v2[2];
    if ((*(v13 + 32) & 1) == 0)
    {
      v23[0] = 0;
      v25 = 0;
      v20[0] = 0;
      v22 = 0;
      sub_27152F708();
    }

    v14 = *(v13 + 24);
    if (v14)
    {
      if (v14 != v13)
      {
        v15 = (*(*v14 + 16))(v14);
        v66 = v15;
        if (!v15)
        {
          goto LABEL_76;
        }

LABEL_78:
        if (v15 == &v65)
        {
          v21 = v20;
          (*(*v15 + 24))(v15, v20);
        }

        else
        {
          v21 = v15;
          v66 = 0;
        }

LABEL_81:
        v24 = 0;
        operator new();
      }

      v66 = &v65;
      (*(*v14 + 24))(v14, &v65);
      v15 = v66;
      if (v66)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v66 = 0;
    }

LABEL_76:
    v21 = 0;
    goto LABEL_81;
  }

  v12 = *(v10 + 120);
  if (v12)
  {
    if (v12 == (v10 + 96))
    {
      v39 = &v35;
      (*(*v12 + 24))(v12, &v35);
      v12 = v39;
      if (!v39)
      {
        goto LABEL_86;
      }
    }

    else
    {
      v12 = (*(*v12 + 16))(v12);
      v39 = v12;
      if (!v12)
      {
        goto LABEL_86;
      }
    }

    if (v12 == &v35)
    {
      v24 = v23;
      (*(*v12 + 24))(v12, v23);
LABEL_87:
      operator new();
    }

    v12 = (*(*v12 + 16))(v12);
  }

  else
  {
    v39 = 0;
  }

LABEL_86:
  v24 = v12;
  goto LABEL_87;
}

void sub_2713714DC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2713716E0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106038;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27137175C(uint64_t a1)
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

void *sub_2713717E8(void *a1)
{
  *a1 = &unk_2881088B8;
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

void sub_271371894(void *a1)
{
  *a1 = &unk_2881088B8;
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

uint64_t sub_271371A3C(uint64_t result, void *a2)
{
  *a2 = &unk_2881088B8;
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

uint64_t sub_271371B0C(uint64_t a1)
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

void sub_271371B6C(char *__p)
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

void sub_271371C1C(uint64_t a1, char *a2, uint64_t *a3)
{
  v17[0] = *a2;
  v18 = *(a2 + 8);
  v19 = *(a2 + 6);
  LOBYTE(v20) = 0;
  v22 = 0;
  if (a2[56] == 1)
  {
    if (a2[55] < 0)
    {
      sub_271127178(&v20, *(a2 + 4), *(a2 + 5));
    }

    else
    {
      v20 = *(a2 + 2);
      v21 = *(a2 + 6);
    }

    v22 = 1;
  }

  LOBYTE(v23) = 0;
  v35 = 0;
  if (a2[208] == 1)
  {
    sub_2711B0ED4(&v23, a2 + 4);
    v35 = 1;
  }

  v36 = *(a2 + 216);
  v37 = *(a2 + 29);
  v6 = a3[1];
  v12 = *a3;
  v13 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = a3[3];
  v7 = a3[4];
  v14 = off_28810C940;
  v15 = v8;
  v16 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 32);
  if (!v9)
  {
    sub_27112AFFC();
  }

  (*(*v9 + 48))(v9, v17, &v12);
  v10 = v16;
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = v13;
  if (!v13 || atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (v35 != 1)
    {
      goto LABEL_34;
    }

LABEL_19:
    if (v34 < 0)
    {
      operator delete(__p);
      if ((v32 & 0x80000000) == 0)
      {
LABEL_21:
        if ((v30 & 0x80000000) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_30;
      }
    }

    else if ((v32 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    operator delete(v31);
    if ((v30 & 0x80000000) == 0)
    {
LABEL_22:
      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_31;
    }

LABEL_30:
    operator delete(v29);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_23:
      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_32;
    }

LABEL_31:
    operator delete(v27);
    if ((v26 & 0x80000000) == 0)
    {
LABEL_24:
      if ((v24 & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

LABEL_33:
      operator delete(v23);
      goto LABEL_34;
    }

LABEL_32:
    operator delete(v25);
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (v35 == 1)
  {
    goto LABEL_19;
  }

LABEL_34:
  if (v22 == 1 && SHIBYTE(v21) < 0)
  {
    operator delete(v20);
  }
}

void sub_271371EDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  if (a25 == 1 && a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271371F20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271396310(va);
  sub_2711B039C(v2 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_271371F3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4cv3d2vl13visual_logger22ForwardReceivedMessageINSt3__18functionIFvRKNS_3kit3viz14ConnectionInfoERKNS1_10LogMessageEEEEEENS3_8optionalINS4_IFvS9_RKNS6_11ContextDataEEEEEERNSF_IT_EEEUlS9_SI_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4cv3d2vl13visual_logger22ForwardReceivedMessageINSt3__18functionIFvRKNS_3kit3viz14ConnectionInfoERKNS1_10LogMessageEEEEEENS3_8optionalINS4_IFvS9_RKNS6_11ContextDataEEEEEERNSF_IT_EEEUlS9_SI_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d2vl13visual_logger22ForwardReceivedMessageINSt3__18functionIFvRKNS_3kit3viz14ConnectionInfoERKNS1_10LogMessageEEEEEENS3_8optionalINS4_IFvS9_RKNS6_11ContextDataEEEEEERNSF_IT_EEEUlS9_SI_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d2vl13visual_logger22ForwardReceivedMessageINSt3__18functionIFvRKNS_3kit3viz14ConnectionInfoERKNS1_10LogMessageEEEEEENS3_8optionalINS4_IFvS9_RKNS6_11ContextDataEEEEEERNSF_IT_EEEUlS9_SI_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_271371FB4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 0;
  *(result + 32) = 0;
  if (*(a2 + 32) == 1)
  {
    v5 = (a2 + 24);
    v6 = *(a2 + 24);
    if (v6)
    {
      if (v6 == a2)
      {
        *(result + 24) = result;
        v7 = result;
        v8 = a5;
        v9 = a4;
        v10 = a3;
        (*(**v5 + 24))(*v5, result);
        a3 = v10;
        a4 = v9;
        a5 = v8;
        result = v7;
        goto LABEL_8;
      }

      *(result + 24) = v6;
    }

    else
    {
      v5 = (result + 24);
    }

    *v5 = 0;
LABEL_8:
    *(result + 32) = 1;
  }

  *(result + 40) = 0;
  *(result + 72) = 0;
  if (*(a3 + 32) != 1)
  {
    goto LABEL_17;
  }

  v11 = (a3 + 24);
  v12 = *(a3 + 24);
  if (v12)
  {
    if (v12 == a3)
    {
      *(result + 64) = result + 40;
      v13 = result;
      v14 = a5;
      v15 = a4;
      (*(**v11 + 24))(*v11);
      a4 = v15;
      a5 = v14;
      result = v13;
      goto LABEL_16;
    }

    *(result + 64) = v12;
  }

  else
  {
    v11 = (result + 64);
  }

  *v11 = 0;
LABEL_16:
  *(result + 72) = 1;
LABEL_17:
  *(result + 80) = 0;
  *(result + 112) = 0;
  if (*(a4 + 32) != 1)
  {
    goto LABEL_25;
  }

  v16 = (a4 + 24);
  v17 = *(a4 + 24);
  if (v17)
  {
    if (v17 == a4)
    {
      *(result + 104) = result + 80;
      v18 = result;
      v19 = a5;
      (*(**v16 + 24))(*v16);
      a5 = v19;
      result = v18;
      goto LABEL_24;
    }

    *(result + 104) = v17;
  }

  else
  {
    v16 = (result + 104);
  }

  *v16 = 0;
LABEL_24:
  *(result + 112) = 1;
LABEL_25:
  *(result + 120) = 0;
  *(result + 152) = 0;
  if (*(a5 + 32) != 1)
  {
    return result;
  }

  v20 = (a5 + 24);
  v21 = *(a5 + 24);
  if (v21)
  {
    if (v21 == a5)
    {
      *(result + 144) = result + 120;
      v22 = result;
      (*(**v20 + 24))(*v20);
      result = v22;
      goto LABEL_32;
    }

    *(result + 144) = v21;
  }

  else
  {
    v20 = (result + 144);
  }

  *v20 = 0;
LABEL_32:
  *(result + 152) = 1;
  return result;
}

void *sub_271372218(void *a1)
{
  *a1 = &unk_288108910;
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

void sub_2713722C4(void *a1)
{
  *a1 = &unk_288108910;
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

uint64_t sub_27137246C(uint64_t result, void *a2)
{
  *a2 = &unk_288108910;
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

uint64_t sub_27137253C(uint64_t a1)
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

void sub_27137259C(char *__p)
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

void sub_27137264C(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  sub_2711D40C8(a3, v3);
  v5 = 0;
  v7[0] = v4;
  v7[1] = "in client connection ";
  v7[2] = v4;
  v7[3] = "in client connection ";
  v7[4] = "in client connection ";
  __dst = v7;
  sub_2712B31F0(&__dst);
  operator new();
}

void sub_2713729F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_27112D71C(&a30);
    _Unwind_Resume(a1);
  }

  sub_27112D71C(&a30);
  _Unwind_Resume(a1);
}

uint64_t sub_271372AA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4cv3d2vl13visual_logger18ForwardServerErrorINSt3__18functionIFvRKNS_3esn5ErrorEEEEEENS3_8optionalINS4_IFvRKNS_3kit3viz14ConnectionInfoES8_EEEEERNSB_IT_EEEUlSG_S8_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4cv3d2vl13visual_logger18ForwardServerErrorINSt3__18functionIFvRKNS_3esn5ErrorEEEEEENS3_8optionalINS4_IFvRKNS_3kit3viz14ConnectionInfoES8_EEEEERNSB_IT_EEEUlSG_S8_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d2vl13visual_logger18ForwardServerErrorINSt3__18functionIFvRKNS_3esn5ErrorEEEEEENS3_8optionalINS4_IFvRKNS_3kit3viz14ConnectionInfoES8_EEEEERNSB_IT_EEEUlSG_S8_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d2vl13visual_logger18ForwardServerErrorINSt3__18functionIFvRKNS_3esn5ErrorEEEEEENS3_8optionalINS4_IFvRKNS_3kit3viz14ConnectionInfoES8_EEEEERNSB_IT_EEEUlSG_S8_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_271372B20(uint64_t result)
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

uint64_t sub_271372BB8(uint64_t result)
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

uint64_t sub_271372C50(uint64_t a1)
{
  if (*(a1 + 152) == 1)
  {
    v2 = *(a1 + 144);
    if (v2 == a1 + 120)
    {
      (*(*v2 + 32))(v2);
      if (*(a1 + 112) != 1)
      {
        goto LABEL_12;
      }

      goto LABEL_6;
    }

    if (v2)
    {
      (*(*v2 + 40))(v2);
    }
  }

  if (*(a1 + 112) != 1)
  {
    goto LABEL_12;
  }

LABEL_6:
  v3 = *(a1 + 104);
  if (v3 == a1 + 80)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

LABEL_12:
  if (*(a1 + 72) != 1)
  {
    goto LABEL_16;
  }

  v4 = *(a1 + 64);
  if (v4 != a1 + 40)
  {
    if (v4)
    {
      (*(*v4 + 40))(v4);
    }

LABEL_16:
    if (*(a1 + 32) == 1)
    {
      goto LABEL_17;
    }

    return a1;
  }

  (*(*v4 + 32))(v4);
  if (*(a1 + 32) != 1)
  {
    return a1;
  }

LABEL_17:
  v5 = *(a1 + 24);
  if (v5 != a1)
  {
    if (v5)
    {
      (*(*v5 + 40))(v5);
    }

    return a1;
  }

  (*(*v5 + 32))(v5);
  return a1;
}

uint64_t sub_271372E44(uint64_t result)
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

uint64_t sub_271372EDC(uint64_t result)
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

void sub_271372F74(unsigned __int16 **a1, uint64_t a2)
{
  v3 = *a1;
  if ((*a2 & 1) == 0)
  {
    sub_271120E64(**(a2 + 8), ",", 1);
  }

  *a2 = 0;
  v4 = *(a2 + 8);
  v5[0] = v3;
  v5[1] = v3 + 6;
  v5[2] = v3 + 8;
  v5[3] = v3 + 24;
  sub_271120E64(*v4, "{", 1);
  v7[0] = 1;
  v8 = v4;
  v9 = &v6;
  sub_271373138(v5, v7);
}

void sub_271373138(unsigned __int16 **a1, uint64_t a2)
{
  v4 = *a1;
  if ((*a2 & 1) == 0)
  {
    sub_271120E64(**(a2 + 8), ",", 1);
  }

  *a2 = 0;
  v5 = *(a2 + 8);
  if (*(v4 + 8) == 1)
  {
    sub_271120E64(*v5, "{", 1);
    std::to_string(&__p, *v4);
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
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    sub_271120E64(*v5, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_271120E64(*v5, ",", 1);
    sub_2713737C0();
  }

  sub_271120E64(*v5, "nullopt", 7);
  v8 = a1[1];
  if ((*a2 & 1) == 0)
  {
    sub_271120E64(**(a2 + 8), ",", 1);
  }

  *a2 = 0;
  sub_271120E64(**(a2 + 8), "{", 1);
  operator new();
}

void sub_271373740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713739D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271373BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_271373C58(void *a1)
{
  *a1 = &unk_288108808;
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

void sub_271373D04(void *a1)
{
  *a1 = &unk_288108808;
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

uint64_t sub_271373EAC(uint64_t result, void *a2)
{
  *a2 = &unk_288108808;
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

uint64_t sub_271373F7C(uint64_t a1)
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

void sub_271373FDC(char *__p)
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

void sub_27137408C(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *a3;
  v7[0] = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 24);
  LOBYTE(__p) = 0;
  v12 = 0;
  if (*(a2 + 56) == 1)
  {
    if (*(a2 + 55) < 0)
    {
      sub_271127178(&__p, *(a2 + 32), *(a2 + 40));
    }

    else
    {
      __p = *(a2 + 32);
      v11 = *(a2 + 48);
    }

    v12 = 1;
  }

  LOBYTE(v13) = 0;
  v25 = 0;
  if (*(a2 + 208) == 1)
  {
    sub_2711B0ED4(&v13, (a2 + 64));
    v25 = 1;
  }

  v26 = *(a2 + 216);
  v27 = *(a2 + 232);
  v28 = v5;
  v6 = *(a1 + 32);
  if (!v6)
  {
    sub_27112AFFC();
  }

  (*(*v6 + 48))(v6, v7, &v28);
  if (v25 != 1)
  {
    goto LABEL_16;
  }

  if (v24 < 0)
  {
    operator delete(v23);
    if ((v22 & 0x80000000) == 0)
    {
LABEL_12:
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_22;
    }
  }

  else if ((v22 & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  operator delete(v21);
  if ((v20 & 0x80000000) == 0)
  {
LABEL_13:
    if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_23:
    operator delete(v17);
    if ((v16 & 0x80000000) == 0)
    {
LABEL_15:
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

LABEL_25:
      operator delete(v13);
      if (v12 != 1)
      {
        return;
      }

      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_22:
  operator delete(v19);
  if (v18 < 0)
  {
    goto LABEL_23;
  }

LABEL_14:
  if ((v16 & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_24:
  operator delete(v15);
  if (v14 < 0)
  {
    goto LABEL_25;
  }

LABEL_16:
  if (v12 != 1)
  {
    return;
  }

LABEL_17:
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }
}

void sub_271374264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (a20 == 1 && a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2713742BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4cv3d2vl13visual_logger30ForwardConnectionStatusChangedINSt3__18functionIFvRKNS_3kit3viz14ConnectionInfoENS6_16ConnectionStatusEEEEEENS3_8optionalISC_EERNSD_IT_EEEUlS9_SA_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4cv3d2vl13visual_logger30ForwardConnectionStatusChangedINSt3__18functionIFvRKNS_3kit3viz14ConnectionInfoENS6_16ConnectionStatusEEEEEENS3_8optionalISC_EERNSD_IT_EEEUlS9_SA_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d2vl13visual_logger30ForwardConnectionStatusChangedINSt3__18functionIFvRKNS_3kit3viz14ConnectionInfoENS6_16ConnectionStatusEEEEEENS3_8optionalISC_EERNSD_IT_EEEUlS9_SA_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d2vl13visual_logger30ForwardConnectionStatusChangedINSt3__18functionIFvRKNS_3kit3viz14ConnectionInfoENS6_16ConnectionStatusEEEEEENS3_8optionalISC_EERNSD_IT_EEEUlS9_SA_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *sub_271374334(void *a1)
{
  *a1 = &unk_288108860;
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

void sub_2713743E0(void *a1)
{
  *a1 = &unk_288108860;
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

uint64_t sub_271374588(uint64_t result, void *a2)
{
  *a2 = &unk_288108860;
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

uint64_t sub_271374658(uint64_t a1)
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

void sub_2713746B8(char *__p)
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

void sub_271374768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 24);
  LOBYTE(__p[0]) = 0;
  v12 = 0;
  if (*(a2 + 56) == 1)
  {
    if (*(a2 + 55) < 0)
    {
      sub_271127178(__p, *(a2 + 32), *(a2 + 40));
    }

    else
    {
      *__p = *(a2 + 32);
      v11 = *(a2 + 48);
    }

    v12 = 1;
  }

  LOBYTE(v13) = 0;
  v25 = 0;
  if (*(a2 + 208) == 1)
  {
    sub_2711B0ED4(&v13, (a2 + 64));
    v25 = 1;
  }

  v26 = *(a2 + 216);
  v27 = *(a2 + 232);
  v6 = *(a1 + 32);
  if (!v6)
  {
    sub_27112AFFC();
  }

  (*(*v6 + 48))(v6, v7, a3);
  if (v25 != 1)
  {
    goto LABEL_16;
  }

  if (v24 < 0)
  {
    operator delete(v23);
    if ((v22 & 0x80000000) == 0)
    {
LABEL_12:
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_22;
    }
  }

  else if ((v22 & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  operator delete(v21);
  if ((v20 & 0x80000000) == 0)
  {
LABEL_13:
    if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_23:
    operator delete(v17);
    if ((v16 & 0x80000000) == 0)
    {
LABEL_15:
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

LABEL_25:
      operator delete(v13);
      if (v12 != 1)
      {
        return;
      }

      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_22:
  operator delete(v19);
  if (v18 < 0)
  {
    goto LABEL_23;
  }

LABEL_14:
  if ((v16 & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_24:
  operator delete(v15);
  if (v14 < 0)
  {
    goto LABEL_25;
  }

LABEL_16:
  if (v12 != 1)
  {
    return;
  }

LABEL_17:
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_27137493C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271374994(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4cv3d2vl13visual_logger27ForwardContextStatusChangedINSt3__18functionIFvRKNS_3kit3viz14ConnectionInfoERKNS6_21UpdateEnabledContextsEEEEEENS3_8optionalISE_EERNSF_IT_EEEUlS9_SC_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4cv3d2vl13visual_logger27ForwardContextStatusChangedINSt3__18functionIFvRKNS_3kit3viz14ConnectionInfoERKNS6_21UpdateEnabledContextsEEEEEENS3_8optionalISE_EERNSF_IT_EEEUlS9_SC_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d2vl13visual_logger27ForwardContextStatusChangedINSt3__18functionIFvRKNS_3kit3viz14ConnectionInfoERKNS6_21UpdateEnabledContextsEEEEEENS3_8optionalISE_EERNSF_IT_EEEUlS9_SC_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d2vl13visual_logger27ForwardContextStatusChangedINSt3__18functionIFvRKNS_3kit3viz14ConnectionInfoERKNS6_21UpdateEnabledContextsEEEEEENS3_8optionalISE_EERNSF_IT_EEEUlS9_SC_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

unint64_t sub_271374A58(unint64_t a1)
{
  if ((atomic_load_explicit(&qword_28087C368, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087C368))
  {
    sub_271815770();
    v3 = qword_28087C350;
    sub_271815770();
    LODWORD(v4) = HIDWORD(qword_28087C350);
    *&qword_28087C360 = v3 / v4;
    __cxa_guard_release(&qword_28087C368);
  }

  return llround(*&qword_28087C360 * a1);
}

void sub_271374C1C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 64) == 1 && *(v1 + 63) < 0)
  {
    operator delete(*v4);
  }

  if (*(v1 + 32) == 1 && *(v1 + 31) < 0)
  {
    operator delete(*v3);
  }

  v6 = *v1;
  *v1 = 0;
  if (v6)
  {
    MEMORY[0x2743BF050](v6, v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_271374C7C(int a1, uint64_t *a2, char *__s, char *a4)
{
  if (__s)
  {
    v7 = strlen(__s);
    if (v7 > 0x7FFFFFFFFFFFFFF7)
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
      memcpy(&__dst, __s, v7);
    }

    *(&__dst + v8) = 0;
    v16 = 1;
    if (a4)
    {
      goto LABEL_11;
    }
  }

  else
  {
    LOBYTE(__dst) = 0;
    v16 = 0;
    if (a4)
    {
LABEL_11:
      v9 = strlen(a4);
      if (v9 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_271120DA8();
      }

      v10 = v9;
      if (v9 >= 0x17)
      {
        operator new();
      }

      v13 = v9;
      if (v9)
      {
        memcpy(&v12, a4, v9);
      }

      *(&v12 + v10) = 0;
LABEL_18:
      v11 = *a2;
      operator new();
    }
  }

  LOBYTE(v12) = 0;
  goto LABEL_18;
}

void sub_271374EB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a22 == 1 && a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271374EF8(uint64_t *a1, uint64_t a2)
{
  v59 = *MEMORY[0x277D85DE8];
  if (*(a2 + 400) == 1)
  {
    if (*(a2 + 16) == 1)
    {
      v4 = *a2;
      v5 = *(a2 + 8);
      if (*(a2 + 56) != 1)
      {
LABEL_14:
        v25 = v4;
        v26 = v5;
        sub_27113523C(v27, (a2 + 32));
        v42 = &unk_288131188;
        v43 = &unk_2881311D0;
        sub_271374B08(&v44, a1);
      }
    }

    else
    {
      v42 = &unk_28810A440;
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

  LOBYTE(v13) = 0;
  LOBYTE(v14) = 0;
  LOBYTE(v15) = 0;
  v16 = 0;
  v17 = v13;
  v18 = v14;
  LOBYTE(v19) = 0;
  v20 = 0;
  LOBYTE(v21) = 0;
  v22 = 0;
  LOBYTE(v23) = 0;
  v24 = 0;
  sub_27113523C(&v45, &v15);
  v25 = sub_271815924();
  v26 = 2;
  LOBYTE(v27[0]) = 0;
  v28 = 0;
  if (v47 == 1)
  {
    *v27 = v45;
    v27[2] = v46;
    v46 = 0;
    v45 = 0uLL;
    v28 = 1;
  }

  v29 = v48;
  v30 = v49;
  LOBYTE(v31) = 0;
  v33 = 0;
  if (v52 == 1)
  {
    v31 = v50;
    v32 = v51;
    v51 = 0;
    v50 = 0uLL;
    v33 = 1;
    LOBYTE(v34) = 0;
    v38 = 0;
    if (v55 != 1)
    {
LABEL_9:
      LOBYTE(v39) = 0;
      v41 = 0;
      if ((v58 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

  else
  {
    LOBYTE(v34) = 0;
    v38 = 0;
    if (v55 != 1)
    {
      goto LABEL_9;
    }
  }

  _X0 = 0;
  _X1 = 0;
  v35 = v54;
  v34 = __p;
  v54 = 0;
  __p = 0uLL;
  __asm { CASPAL          X0, X1, X0, X1, [X9] }

  v36 = _X0;
  v37 = 0;
  v38 = 1;
  LOBYTE(v39) = 0;
  v41 = 0;
  if ((v58 & 1) == 0)
  {
LABEL_10:
    if (v55 != 1)
    {
      goto LABEL_20;
    }

LABEL_18:
    if (SHIBYTE(v54) < 0)
    {
      operator delete(__p);
    }

LABEL_20:
    if (v52 == 1 && SHIBYTE(v51) < 0)
    {
      operator delete(v50);
    }

    if (v47 == 1 && SHIBYTE(v46) < 0)
    {
      operator delete(v45);
    }

    v42 = &unk_288131188;
    v43 = &unk_2881311D0;
    sub_271374B08(&v44, a1);
  }

LABEL_17:
  v39 = v56;
  v40 = v57;
  v57 = 0;
  v56 = 0uLL;
  v41 = 1;
  if (v55 != 1)
  {
    goto LABEL_20;
  }

  goto LABEL_18;
}

void sub_271375DD8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

void sub_271375FA0(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 440);
  v3 = *(a1 + 448);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v2)
  {
    v4 = **v2;
    v5 = __dynamic_cast(v2, &unk_28811D1B0, &unk_28811DBE8, 0) != 0;
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
      goto LABEL_9;
    }

    goto LABEL_14;
  }

LABEL_8:
  if (v5)
  {
LABEL_9:
    v6 = *(a1 + 440);
    v7 = *(a1 + 448);
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v12 = v6;
    v13 = v7;
    if (v6)
    {
      sub_271374B08(&v14, (v6 + 16));
    }

LABEL_15:
    v14 = *"cv3d.viz";
    v15 = 0x800000000000000;
    v16 = 11;
    sub_2711BE814(&v11, &v14, 1uLL);
    if (*(a1 + 23) < 0)
    {
      sub_271127178(v8, *a1, *(a1 + 8));
    }

    else
    {
      *v8 = *a1;
      v9 = *(a1 + 16);
    }

    v10 = *(a1 + 24);
    operator new();
  }

LABEL_14:
  v12 = 0;
  v13 = 0;
  goto LABEL_15;
}

void sub_2713764C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void **a23)
{
  sub_2711BEA2C(&a23);
  if (*(v23 - 105) < 0)
  {
    operator delete(*(v23 - 128));
  }

  sub_27112F828(v23 - 144);
  _Unwind_Resume(a1);
}

uint64_t *sub_271376568(uint64_t *a1)
{
  if (*(a1 + 64) == 1 && *(a1 + 63) < 0)
  {
    operator delete(a1[5]);
    if (*(a1 + 32) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 32) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(a1[1]);
  }

LABEL_7:
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MEMORY[0x2743BF050](v2, 0x1000C4072FAA15ELL);
  }

  return a1;
}

uint64_t sub_2713765F4(uint64_t a1)
{
  *a1 = &unk_288131188;
  sub_271134CBC(a1 + 112);
  *(a1 + 8) = &unk_2881311D0;
  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
    if (*(a1 + 48) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 48) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

LABEL_7:
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    MEMORY[0x2743BF050](v2, 0x1000C4072FAA15ELL);
  }

  return a1;
}

void sub_2713766C0(uint64_t a1)
{
  *a1 = &unk_288131188;
  sub_271134CBC(a1 + 112);
  *(a1 + 8) = &unk_2881311D0;
  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
    if (*(a1 + 48) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 48) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

LABEL_7:
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    MEMORY[0x2743BF050](v2, 0x1000C4072FAA15ELL);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2713767BC(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_2808786F0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2808786F0))
    {
      sub_271377B54();
    }
  }

  (*(*(a1 + 8) + 24))(__p, a1 + 8);
  sub_2711C1280(&xmmword_2808786D8, "{", __p, ",");
}

void sub_2713768BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713768D8(uint64_t a1@<X8>)
{
  *(a1 + 23) = 8;
  strcpy(a1, "cv3d.viz");
  *(a1 + 24) = 11;
}

uint64_t sub_271376954(uint64_t a1)
{
  *a1 = &unk_2881311D0;
  if (*(a1 + 72) == 1 && *(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
    if (*(a1 + 40) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 40) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

LABEL_7:
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    MEMORY[0x2743BF050](v2, 0x1000C4072FAA15ELL);
  }

  return a1;
}

uint64_t sub_2713769FC(uint64_t a1)
{
  *a1 = &unk_288131188;
  sub_271134CBC(a1 + 112);
  *(a1 + 8) = &unk_2881311D0;
  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
    if (*(a1 + 48) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 48) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

LABEL_7:
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    MEMORY[0x2743BF050](v2, 0x1000C4072FAA15ELL);
  }

  return a1;
}

void sub_271376AC8(uint64_t a1)
{
  *a1 = &unk_288131188;
  sub_271134CBC(a1 + 112);
  *(a1 + 8) = &unk_2881311D0;
  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
    if (*(a1 + 48) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 48) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

LABEL_7:
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    MEMORY[0x2743BF050](v2, 0x1000C4072FAA15ELL);
  }

  JUMPOUT(0x2743BF050);
}

void sub_271376BB4()
{
  if ((atomic_load_explicit(&qword_2808786D0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2808786D0))
    {
      sub_2713778C0();
    }
  }

  sub_271377374(&xmmword_2808786B8, "{");
}

void sub_271376C68(uint64_t a1@<X8>)
{
  *(a1 + 23) = 15;
  strcpy(a1, "unknown_package");
  *(a1 + 24) = 0;
}

void sub_271376C94(uint64_t a1)
{
  *a1 = &unk_2881311D0;
  if (*(a1 + 72) == 1 && *(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
    if (*(a1 + 40) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 40) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

LABEL_7:
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    MEMORY[0x2743BF050](v2, 0x1000C4072FAA15ELL);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271376D5C(char **a1, char **lpsrc)
{
  v4 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_288132918, &unk_2881311F0, 0);
  if (result)
  {
    if (a1 == lpsrc)
    {
      return 1;
    }

    else
    {

      return sub_27153D1BC((a1 + 1), result + 8);
    }
  }

  return result;
}

void sub_271376DFC()
{
  if ((atomic_load_explicit(&qword_2808786B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808786B0))
  {
    sub_2718519B4("cv3d::kit::viz::Transform3]", 0x1AuLL, &xmmword_280878698);
    __cxa_guard_release(&qword_2808786B0);
  }

  sub_271376EB0(&xmmword_280878698, "{");
}

void sub_271376EB0(__int128 *a1, uint64_t a2)
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
  sub_27137705C();
}

void sub_271376FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27137700C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271377020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271377034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271377048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271377264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2713772A8(uint64_t a1)
{
  *a1 = &unk_288131188;
  sub_271134CBC(a1 + 112);
  *(a1 + 8) = &unk_2881311D0;
  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
    if (*(a1 + 48) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 48) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

LABEL_7:
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    MEMORY[0x2743BF050](v2, 0x1000C4072FAA15ELL);
  }

  return a1;
}

void sub_271377374(__int128 *a1, uint64_t a2)
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
  sub_2713775A4();
}

void sub_271377514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27137752C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271377540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271377554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271377568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27137757C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271377590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271377838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_guard_abort(&qword_2808786B0);
  v23 = *(v21 - 56);
  *(v21 - 56) = 0;
  if (!v23)
  {
    _Unwind_Resume(a1);
  }

  sub_27184D728(v21 - 56, v23);
  _Unwind_Resume(a1);
}

void sub_271377994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271377B14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_27137F4D0(&a9);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271377B54()
{
  v1 = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "viz::PackageData");
  operator new();
}

void sub_271377D8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
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

__n128 sub_271377E40(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288131188;
  v2 = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a1 + 8) = &unk_2881311D0;
  *(a1 + 16) = v2;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    v3 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v3;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 24) = 0;
    *(a1 + 48) = 1;
  }

  *(a1 + 56) = 0;
  *(a1 + 80) = 0;
  if (*(a2 + 80) == 1)
  {
    v4 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v4;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 56) = 0;
    *(a1 + 80) = 1;
  }

  v5 = *(a2 + 96);
  *(a1 + 112) = 0;
  *(a1 + 96) = v5;
  *(a1 + 136) = 0;
  if (*(a2 + 136) == 1)
  {
    v6 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 112) = v6;
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    *(a2 + 112) = 0;
    *(a1 + 136) = 1;
  }

  result = *(a2 + 144);
  v8 = *(a2 + 160);
  *(a1 + 168) = 0;
  *(a1 + 160) = v8;
  *(a1 + 144) = result;
  *(a1 + 192) = 0;
  if (*(a2 + 192) == 1)
  {
    result = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 168) = result;
    *(a2 + 176) = 0;
    *(a2 + 184) = 0;
    *(a2 + 168) = 0;
    *(a1 + 192) = 1;
    *(a1 + 208) = 0;
    v9 = (a1 + 208);
    *(a1 + 256) = 0;
    if (*(a2 + 256) != 1)
    {
LABEL_9:
      *(a1 + 272) = 0;
      *(a1 + 296) = 0;
      if (*(a2 + 296) != 1)
      {
        return result;
      }

LABEL_13:
      *(a1 + 272) = 0;
      *(a1 + 280) = 0;
      *(a1 + 288) = 0;
      result = *(a2 + 272);
      *(a1 + 272) = result;
      *(a1 + 288) = *(a2 + 288);
      *(a2 + 272) = 0;
      *(a2 + 280) = 0;
      *(a2 + 288) = 0;
      *(a1 + 296) = 1;
      return result;
    }
  }

  else
  {
    *(a1 + 208) = 0;
    v9 = (a1 + 208);
    *(a1 + 256) = 0;
    if (*(a2 + 256) != 1)
    {
      goto LABEL_9;
    }
  }

  _X2 = 0;
  _X3 = 0;
  result = *(a2 + 208);
  v9[1].n128_u64[0] = *(a2 + 224);
  *v9 = result;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a2 + 208) = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  *(a1 + 240) = _X2;
  *(a1 + 248) = 0;
  *(a1 + 256) = 1;
  *(a1 + 272) = 0;
  *(a1 + 296) = 0;
  if (*(a2 + 296) == 1)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_27137803C(uint64_t a1)
{
  if (*a1)
  {
    v2 = ***a1;
    std::recursive_mutex::lock(v2);
    v3 = *(a1 + 8);
    *a1 = 0;
    *(a1 + 8) = 0;
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    std::recursive_mutex::unlock(v2);
  }

  v4 = *(a1 + 8);
  if (!v4 || atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  return a1;
}

void *sub_271378134(uint64_t *a1)
{
  sub_271379E78(*(*a1 + 88), *a1 + 152);
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 96);
  sub_271124B40(v3);
  sub_271124FDC(v3, 6);
  sub_271125930(v3, v9);
  v8 = v2;
  sub_27137A798(&v8, v9);
  sub_27137A6F8(v13);
  if (v12 < 0)
  {
    operator delete(__p);
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v10 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v9[0]);
LABEL_3:
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 104);
  sub_271124B40(v5);
  sub_271124FDC(v5, 6);
  sub_271125930(v5, v9);
  v8 = v4;
  sub_27137A798(&v8, v9);
  sub_27137A6F8(v13);
  if (v12 < 0)
  {
    operator delete(__p);
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((v10 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(v9[0]);
LABEL_5:
  sub_271379E78(*(*a1 + 88), *a1 + 152);
  sub_271124FDC(*(*a1 + 88), *(*a1 + 136));
  sub_271124FDC(*(*a1 + 96), *(*a1 + 140));
  v6 = *a1;
  if (*(*a1 + 148) == 1)
  {
    return sub_271124FDC(*(v6 + 104), *(v6 + 144));
  }

  else
  {
    return sub_271125528(*(v6 + 104));
  }
}

void sub_2713782C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271121DBC(va);
  _Unwind_Resume(a1);
}

void sub_2713782D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271121DBC(va);
  _Unwind_Resume(a1);
}

void sub_2713782EC(uint64_t *a1@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087B7B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B7B8))
  {
    sub_27137A818();
  }

  v2 = xmmword_28087B7A8;
  if (*(&xmmword_28087B7A8 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_28087B7A8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  std::recursive_mutex::lock(v2);
  if (*(&v2 + 1) && !atomic_fetch_add((*(&v2 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v2 + 1) + 16))(*(&v2 + 1));
    std::__shared_weak_count::__release_weak(*(&v2 + 1));
    v3 = qword_28087B7A0;
    if (!qword_28087B7A0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = qword_28087B7A0;
    if (!qword_28087B7A0)
    {
      goto LABEL_11;
    }
  }

  v4 = std::__shared_weak_count::lock(v3);
  v8 = v4;
  if (!v4 || (v7 = qword_28087B798) == 0)
  {
LABEL_11:
    operator new();
  }

  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v5 = qword_28087B7A0;
  qword_28087B798 = v7;
  qword_28087B7A0 = v8;
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v7;
    a1[1] = v8;
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  else
  {
    *a1 = v7;
    a1[1] = 0;
  }

  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  std::recursive_mutex::unlock(v2);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_27137948C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::recursive_mutex *a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  __cxa_guard_abort(&qword_28087C1B0);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  sub_271379638(v34);
  sub_271379638(v33);
  sub_27112F828(v32);
  sub_271379638(&a32);
  sub_271379638(v35 - 176);
  MEMORY[0x2743BF050](v32, 0x1060C406F83F42DLL);
  sub_271379638(&a24);
  sub_271379638(&a28);
  MEMORY[0x2743BF050](a14, 0x20C4093837F09);
  sub_27112F828(&a15);
  std::recursive_mutex::unlock(a12);
  _Unwind_Resume(a1);
}

uint64_t sub_271379638(uint64_t a1)
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

void sub_2713796C4(std::recursive_mutex ***a1, int a2)
{
  v4 = **a1;
  std::recursive_mutex::lock(v4);
  sub_271124BE8((*a1)[11], &__p);
  v5 = *a1;
  v7 = (*a1)[22];
  v6 = (*a1)[23];
  v8 = __p;
  if (v6 - v7 != v18 - __p)
  {
    goto LABEL_7;
  }

  if (v7 != v6)
  {
    while (v7->__m_.__sig == *v8)
    {
      v7 = (v7 + 16);
      v8 += 2;
      if (v7 == v6)
      {
        goto LABEL_5;
      }
    }

LABEL_7:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Log/src/APILogging.cpp", 425, "priv().initialized_root_appenders_ == current_root_appenders", 0x3CuLL, "root appenders have been illegally modified between Initialize() and Enable() of APILogging", 0x5BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1)
      {
        goto LABEL_14;
      }

      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_28;
      }
    }

    do
    {
      (*v9)(*(v9 + 8), "priv().initialized_root_appenders_ == current_root_appenders", 60, "root appenders have been illegally modified between Initialize() and Enable() of APILogging", 91);
      v9 += 16;
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
LABEL_14:
      qword_28087C420(*algn_28087C428, "priv().initialized_root_appenders_ == current_root_appenders", 60, "root appenders have been illegally modified between Initialize() and Enable() of APILogging", 91);
      v5 = *a1;
      if (*(*a1 + 28) != 2)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

LABEL_28:
    abort();
  }

LABEL_5:
  if (*(v5 + 28) == 2)
  {
LABEL_15:
    sub_2713799AC(a1);
    v5 = *a1;
  }

LABEL_16:
  v19 = v5[12];
  v11 = v5[5];
  if (!v11)
  {
    sub_27112AFFC();
  }

  (*(v11->__m_.__sig + 48))(v11, &v19);
  sub_271124FDC((*a1)[12], a2);
  v12 = *a1;
  *(v12 + 30) = a2;
  *(v12 + 124) = 1;
  *(*a1 + 28) = 2;
  v13 = __p;
  if (__p)
  {
    v14 = v18;
    v15 = __p;
    if (v18 != __p)
    {
      do
      {
        v16 = *(v14 - 1);
        if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v16->__on_zero_shared)(v16);
          std::__shared_weak_count::__release_weak(v16);
        }

        v14 -= 16;
      }

      while (v14 != v13);
      v15 = __p;
    }

    v18 = v13;
    operator delete(v15);
  }

  std::recursive_mutex::unlock(v4);
}

void sub_27137998C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  sub_271347F18(&a9);
  std::recursive_mutex::unlock(v9);
  _Unwind_Resume(a1);
}

void sub_2713799AC(std::recursive_mutex ***a1)
{
  v2 = **a1;
  std::recursive_mutex::lock(v2);
  v3 = (*a1)[10];
  v4 = (*a1)[12];
  sub_271124B40(v4);
  sub_271124FDC(v4, 6);
  sub_271125930(v4, v7);
  v6 = v3;
  sub_27137A798(&v6, v7);
  sub_27137A6F8(&v11);
  if ((v10 & 0x80000000) == 0)
  {
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    operator delete(v7[0]);
    v5 = *a1;
    if (*(*a1 + 124) != 1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  operator delete(__p);
  if (v8 < 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v5 = *a1;
  if (*(*a1 + 124) == 1)
  {
LABEL_4:
    *(v5 + 124) = 0;
  }

LABEL_5:
  *(v5 + 28) = 1;
  std::recursive_mutex::unlock(v2);
}

void sub_271379A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271121DBC(va);
  std::recursive_mutex::unlock(v3);
  _Unwind_Resume(a1);
}

void sub_271379AC4(std::recursive_mutex ***a1)
{
  v2 = **a1;
  std::recursive_mutex::lock(v2);
  sub_271124BE8((*a1)[11], &__p);
  v3 = *a1;
  v5 = (*a1)[22];
  v4 = (*a1)[23];
  v6 = __p;
  if (v4 - v5 != v14 - __p)
  {
    goto LABEL_7;
  }

  if (v5 != v4)
  {
    while (v5->__m_.__sig == *v6)
    {
      v5 = (v5 + 16);
      v6 += 2;
      if (v5 == v4)
      {
        goto LABEL_5;
      }
    }

LABEL_7:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Log/src/APILogging.cpp", 443, "priv().initialized_root_appenders_ == current_root_appenders", 0x3CuLL, "root appenders have been illegally modified between Initialize() and EnableInternal() of APILogging", 0x63uLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1)
      {
        goto LABEL_14;
      }

      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_14;
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
      (*v7)(*(v7 + 8), "priv().initialized_root_appenders_ == current_root_appenders", 60, "root appenders have been illegally modified between Initialize() and EnableInternal() of APILogging", 99);
      v7 += 16;
    }

    while (v7 != v8);
    if (byte_28087C430)
    {
LABEL_14:
      qword_28087C420(*algn_28087C428, "priv().initialized_root_appenders_ == current_root_appenders", 60, "root appenders have been illegally modified between Initialize() and EnableInternal() of APILogging", 99);
      v3 = *a1;
      if (*(*a1 + 29) != 2)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

LABEL_26:
    abort();
  }

LABEL_5:
  if (*(v3 + 29) == 2)
  {
LABEL_15:
    sub_271379D60(a1);
    v3 = *a1;
  }

LABEL_16:
  *(v3 + 32) = **&v3[13]->__m_.__opaque[40];
  *(v3 + 132) = 1;
  *(*a1 + 29) = 2;
  v9 = __p;
  if (__p)
  {
    v10 = v14;
    v11 = __p;
    if (v14 != __p)
    {
      do
      {
        v12 = *(v10 - 1);
        if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v12->__on_zero_shared)(v12);
          std::__shared_weak_count::__release_weak(v12);
        }

        v10 -= 16;
      }

      while (v10 != v9);
      v11 = __p;
    }

    v14 = v9;
    operator delete(v11);
  }

  std::recursive_mutex::unlock(v2);
}

void sub_271379D40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271347F18(va);
  std::recursive_mutex::unlock(v2);
  _Unwind_Resume(a1);
}

void sub_271379D60(std::recursive_mutex ***a1)
{
  v2 = **a1;
  std::recursive_mutex::lock(v2);
  v3 = (*a1)[10];
  v4 = (*a1)[13];
  sub_271124B40(v4);
  sub_271124FDC(v4, 6);
  sub_271125930(v4, v7);
  v6 = v3;
  sub_27137A798(&v6, v7);
  sub_27137A6F8(&v11);
  if ((v10 & 0x80000000) == 0)
  {
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    operator delete(v7[0]);
    v5 = *a1;
    if (*(*a1 + 132) != 1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  operator delete(__p);
  if (v8 < 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v5 = *a1;
  if (*(*a1 + 132) == 1)
  {
LABEL_4:
    *(v5 + 132) = 0;
  }

LABEL_5:
  *(v5 + 29) = 1;
  std::recursive_mutex::unlock(v2);
}

void sub_271379E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271121DBC(va);
  std::recursive_mutex::unlock(v3);
  _Unwind_Resume(a1);
}

void *sub_271379E78(void *a1, uint64_t a2)
{
  sub_271124B40(a1);
  v4 = *a2;
  if (*a2 != *(a2 + 8))
  {
    v5 = v4[1];
    v7[0] = *v4;
    v7[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    sub_271124498(a1, v7);
  }

  return sub_271124FDC(a1, 6);
}

uint64_t sub_271379F64(std::recursive_mutex ***a1, uint64_t a2, uint64_t a3)
{
  v6 = **a1;
  std::recursive_mutex::lock(v6);
  v7 = *a1;
  if (*(*a1 + 28) != 2)
  {
    goto LABEL_35;
  }

  v34 = a3;
  v35 = v7[10];
  v8 = v7[12];
  v9 = v8->__m_.__opaque[23];
  v10 = *&v8->__m_.__opaque[8];
  if ((v9 & 0x80u) == 0)
  {
    v11 = v8->__m_.__opaque[23];
  }

  else
  {
    v11 = *&v8->__m_.__opaque[8];
  }

  v12 = *(a2 + 23);
  v13 = *a2;
  if (v12 >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    v14 = *(a2 + 8);
  }

  opaque = v8->__m_.__opaque;
  if (v11 == v14)
  {
    if ((v9 & 0x80u) == 0)
    {
      v16 = v8->__m_.__opaque;
    }

    else
    {
      v16 = *opaque;
    }

    if (v12 >= 0)
    {
      v17 = a2;
    }

    else
    {
      v17 = *a2;
    }

    if (!memcmp(v16, v17, v11))
    {
      goto LABEL_45;
    }

    v18 = v8->__m_.__opaque;
    v19 = v9;
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_17;
    }

LABEL_28:
    v18 = *opaque;
    v19 = v10;
    if (v14 >= v10)
    {
      v21 = v10;
    }

    else
    {
      v21 = v14;
    }

    if (v14 < v21)
    {
      v21 = v14;
    }

    if (v21 != v10)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (v12 >= 0)
  {
    v17 = a2;
  }

  else
  {
    v17 = *a2;
  }

  v18 = v8->__m_.__opaque;
  v19 = v8->__m_.__opaque[23];
  if ((v9 & 0x80) != 0)
  {
    goto LABEL_28;
  }

LABEL_17:
  if (v14 >= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v14;
  }

  if (v14 < v20)
  {
    v20 = v14;
  }

  if (v20 != v19)
  {
    goto LABEL_35;
  }

LABEL_34:
  if (!memcmp(v17, v18, v19))
  {
    if ((v9 & 0x80) != 0)
    {
      if (v14 <= v10)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v10 = v9;
      if (v14 <= v9)
      {
        goto LABEL_35;
      }
    }

    if (v12 >= 0)
    {
      v24 = a2;
    }

    else
    {
      v24 = v13;
    }

    if (*(v24 + v10) != 46)
    {
      goto LABEL_35;
    }

LABEL_45:
    v36 = v35;
    v25 = sub_271122514(&v36, a2);
    if ((v34 & 0x100000000) != 0)
    {
      sub_271124FDC(v25, v34);
    }

    else
    {
      v26 = v8->__m_.__opaque[23];
      if (v26 >= 0)
      {
        v27 = v8->__m_.__opaque[23];
      }

      else
      {
        v27 = *&v8->__m_.__opaque[8];
      }

      v28 = *(a2 + 23);
      v29 = v28;
      if ((v28 & 0x80u) != 0)
      {
        v28 = *(a2 + 8);
      }

      if (v27 == v28)
      {
        v30 = v26 >= 0 ? v8->__m_.__opaque : *opaque;
        v31 = v29 >= 0 ? a2 : *a2;
        v32 = v25;
        v33 = memcmp(v30, v31, v27);
        v25 = v32;
        if (!v33)
        {
          goto LABEL_35;
        }
      }

      sub_271125528(v25);
    }

    v22 = 1;
    goto LABEL_36;
  }

LABEL_35:
  v22 = 0;
LABEL_36:
  std::recursive_mutex::unlock(v6);
  return v22;
}

uint64_t sub_27137A184(std::recursive_mutex ***a1, uint64_t *a2)
{
  v4 = **a1;
  std::recursive_mutex::lock(v4);
  if (*(*a1 + 28) == 2)
  {
    v5 = (*a1)[12];
    v6 = a2[1];
    v8[0] = *a2;
    v8[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    sub_271124498(v5, v8);
  }

  std::recursive_mutex::unlock(v4);
  return 0;
}

void sub_27137A25C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27112F828(&a9);
  std::recursive_mutex::unlock(v9);
  _Unwind_Resume(a1);
}

void sub_27137A278(std::recursive_mutex ***a1@<X0>, void *a2@<X8>)
{
  v4 = **a1;
  std::recursive_mutex::lock(v4);
  if (*(*a1 + 28) == 2)
  {
    sub_271124BE8((*a1)[12], &__p);
    v5 = __p;
    v6 = v11;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    v12 = a2;
    v13 = 0;
    if (v6 != v5)
    {
      if (((v6 - v5) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_271135560();
    }

    if (v5)
    {
      v7 = v11;
      v8 = v5;
      if (v11 != v5)
      {
        do
        {
          v9 = *(v7 - 1);
          if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v9->__on_zero_shared)(v9);
            std::__shared_weak_count::__release_weak(v9);
          }

          v7 -= 16;
        }

        while (v7 != v5);
        v8 = __p;
      }

      v11 = v5;
      operator delete(v8);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  std::recursive_mutex::unlock(v4);
}

void sub_27137A408(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_2711B5360(va1);
  sub_271347F18(va);
  std::recursive_mutex::unlock(v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_27137A42C(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_27137A480(v2);
    MEMORY[0x2743BF050](v4, 0x1060C406F83F42DLL);
    return v3;
  }

  return v1;
}

uint64_t sub_27137A480(uint64_t a1)
{
  std::mutex::~mutex((a1 + 216));
  v2 = *(a1 + 208);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 176);
  if (v3)
  {
    v4 = *(a1 + 184);
    v5 = *(a1 + 176);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 8);
        if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }

        v4 -= 16;
      }

      while (v4 != v3);
      v5 = *(a1 + 176);
    }

    *(a1 + 184) = v3;
    operator delete(v5);
  }

  v7 = *(a1 + 152);
  if (v7)
  {
    v8 = *(a1 + 160);
    v9 = *(a1 + 152);
    if (v8 != v7)
    {
      do
      {
        v10 = *(v8 - 8);
        if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }

        v8 -= 16;
      }

      while (v8 != v7);
      v9 = *(a1 + 152);
    }

    *(a1 + 160) = v7;
    operator delete(v9);
  }

  v11 = *(a1 + 72);
  if (v11 == a1 + 48)
  {
    (*(*v11 + 32))(v11);
    v12 = *(a1 + 40);
    if (v12 != a1 + 16)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (v11)
    {
      (*(*v11 + 40))(v11);
    }

    v12 = *(a1 + 40);
    if (v12 != a1 + 16)
    {
LABEL_25:
      if (v12)
      {
        (*(*v12 + 40))(v12);
      }

      v13 = *(a1 + 8);
      if (!v13)
      {
        return a1;
      }

      goto LABEL_31;
    }
  }

  (*(*v12 + 32))(v12);
  v13 = *(a1 + 8);
  if (!v13)
  {
    return a1;
  }

LABEL_31:
  if (atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v13->__on_zero_shared)(v13);
  std::__shared_weak_count::__release_weak(v13);
  return a1;
}

void ***sub_27137A6F8(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
LABEL_11:
      a1[1] = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      sub_27137A6F8(v3 - 3);
      if (*(v3 - 33) < 0)
      {
        operator delete(*(v3 - 7));
        v5 = v3 - 10;
        if (*(v3 - 57) < 0)
        {
LABEL_9:
          operator delete(*v5);
        }
      }

      else
      {
        v5 = v3 - 10;
        if (*(v3 - 57) < 0)
        {
          goto LABEL_9;
        }
      }

      v3 = v5;
      if (v5 == v2)
      {
        v4 = *a1;
        goto LABEL_11;
      }
    }
  }

  return a1;
}

void sub_27137A798(uint64_t ***a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  for (i = *(a2 + 64); v2 != i; v2 += 80)
  {
    v6 = *a1;
    sub_27137A798(&v6, v2);
    v6 = *a1;
    v5 = sub_271125D80(&v6, v2);
    sub_271125528(v5);
    sub_271124B40(v5);
  }
}

void sub_27137A880(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_27137A8B8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288105A18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27137A938(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106E00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27137AA0C(uint64_t result, uint64_t a2)
{
  *a2 = &unk_288108E38;
  *(a2 + 8) = *(result + 8);
  return result;
}

void sub_27137AA3C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*(a1 + 8) - 1 <= 1)
  {
    sub_2713782EC(&v7);
    v3 = *v7;
    std::mutex::lock((*v7 + 216));
    v9 = 0;
    v10 = 0;
    v4 = *(v3 + 208);
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      v10 = v5;
      if (v5)
      {
        v6 = *(v3 + 200);
        v9 = v6;
        if (v6)
        {
          v8[0] = v6;
          v8[1] = v5;
          std::mutex::unlock((v3 + 216));
          sub_271124498(v2, v8);
        }
      }
    }

    operator new();
  }

  operator new();
}

void sub_27137ACFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  std::__shared_weak_count::~__shared_weak_count(v13);
  operator delete(v16);
  sub_27112F828(&a13);
  std::mutex::unlock((v14 + 216));
  sub_27137803C(&a9);
  _Unwind_Resume(a1);
}

void sub_27137AD34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_27112F828(&a11);
  sub_27137803C(&a9);
  _Unwind_Resume(a1);
}

void sub_27137AD50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_27112F828(va1);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27137AD6C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_27137AD98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4cv3d3esn4elog10APILogging20DefaultSetupFunctionE")
  {
    return a1 + 8;
  }

  if (((v2 & "N4cv3d3esn4elog10APILogging20DefaultSetupFunctionE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4cv3d3esn4elog10APILogging20DefaultSetupFunctionE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3esn4elog10APILogging20DefaultSetupFunctionE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_27137AE84(uint64_t result, uint64_t a2)
{
  *a2 = &unk_288108DE0;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t sub_27137AEB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4cv3d3esn4elog10APILogging28DefaultInternalSetupFunctionE")
  {
    return a1 + 8;
  }

  if (((v2 & "N4cv3d3esn4elog10APILogging28DefaultInternalSetupFunctionE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4cv3d3esn4elog10APILogging28DefaultInternalSetupFunctionE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3esn4elog10APILogging28DefaultInternalSetupFunctionE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_27137AF34(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27137AF6C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    sub_271378134(*(result + 24));
    v2 = *v1;
    *v1 = 0;
    if (v2)
    {
      v3 = sub_27137A480(v2);
      MEMORY[0x2743BF050](v3, 0x1060C406F83F42DLL);
    }

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_27137AFF0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__110shared_ptrIN4cv3d3esn4elog10APILoggingEE27__shared_ptr_default_deleteIS4_S4_EE")
  {
    if (((v2 & "NSt3__110shared_ptrIN4cv3d3esn4elog10APILoggingEE27__shared_ptr_default_deleteIS4_S4_EE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__110shared_ptrIN4cv3d3esn4elog10APILoggingEE27__shared_ptr_default_deleteIS4_S4_EE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIN4cv3d3esn4elog10APILoggingEE27__shared_ptr_default_deleteIS4_S4_EE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t **sub_27137B050(uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_271378134(v2);
    v3 = *v2;
    *v2 = 0;
    if (v3)
    {
      v4 = sub_27137A480(v3);
      MEMORY[0x2743BF050](v4, 0x1060C406F83F42DLL);
    }

    MEMORY[0x2743BF050](v2, 0x20C4093837F09);
  }

  return a1;
}

void sub_27137B0C8(void *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_28087C1B0, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_28087C1B0))
  {
    *a1 = qword_28087C1A8;
  }

  else
  {
    sub_271120C4C(&qword_28087C1A8);
    __cxa_guard_release(&qword_28087C1B0);
    *a1 = qword_28087C1A8;
  }
}

uint64_t sub_27137B15C()
{
  if ((atomic_load_explicit(&qword_28087C1C0, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_28087C1C0))
  {
    return qword_28087C1B8;
  }

  sub_27137B0C8(&v3);
  sub_27112B400(__p, "cv3d");
  qword_28087C1B8 = sub_271125D80(&v3, __p);
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  __cxa_guard_release(&qword_28087C1C0);
  return qword_28087C1B8;
}

void sub_27137B200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    __cxa_guard_abort(&qword_28087C1C0);
    _Unwind_Resume(a1);
  }

  __cxa_guard_abort(&qword_28087C1C0);
  _Unwind_Resume(a1);
}

uint64_t sub_27137B258()
{
  if ((atomic_load_explicit(&qword_28087C1D0, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_28087C1D0))
  {
    return qword_28087C1C8;
  }

  sub_27137B0C8(&v3);
  sub_27112B400(__p, "cv3dapi");
  qword_28087C1C8 = sub_271125D80(&v3, __p);
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  __cxa_guard_release(&qword_28087C1D0);
  return qword_28087C1C8;
}

void sub_27137B2FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    __cxa_guard_abort(&qword_28087C1D0);
    _Unwind_Resume(a1);
  }

  __cxa_guard_abort(&qword_28087C1D0);
  _Unwind_Resume(a1);
}

void sub_27137B354(std::locale *a1)
{
  locale = a1[6].__locale_;
  if (locale && !atomic_fetch_add(&locale->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (locale->__on_zero_shared)(locale);
    std::__shared_weak_count::__release_weak(locale);
    a1 = v2;
  }

  std::locale::~locale(a1);
}

void *sub_27137B3EC(void *result)
{
  v1 = result[1];
  *result = &unk_288116B20;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2881166A0;
    v3 = v1[1];
    if (v3)
    {
      v1[1] = 0;
      (*(*v3 + 8))(v3);
      v4 = v1[1];
      v1[1] = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }
    }

    MEMORY[0x2743BF050](v1, 0xA1C40BD48D6D6);
    return v2;
  }

  return result;
}

void *sub_27137B4C8(void *result)
{
  v1 = result[1];
  *result = &unk_288116B20;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2881166A0;
    v3 = v1[1];
    if (v3)
    {
      v1[1] = 0;
      (*(*v3 + 8))(v3);
      v4 = v1[1];
      v1[1] = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }
    }

    MEMORY[0x2743BF050](v1, 0xA1C40BD48D6D6);
    return v2;
  }

  return result;
}

void sub_27137B5A4(void *a1)
{
  v1 = a1[1];
  *a1 = &unk_288116B20;
  a1[1] = 0;
  if (v1)
  {
    *v1 = &unk_2881166A0;
    v2 = v1[1];
    if (v2)
    {
      v1[1] = 0;
      (*(*v2 + 8))(v2);
      v3 = v1[1];
      v1[1] = 0;
      if (v3)
      {
        (*(*v3 + 8))(v3);
      }
    }

    MEMORY[0x2743BF050](v1, 0xA1C40BD48D6D6);
  }

  JUMPOUT(0x2743BF050);
}

void *sub_27137B6A0(void *a1)
{
  *a1 = &unk_2881166A0;
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

void sub_27137B740(void *a1)
{
  *a1 = &unk_2881166A0;
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

void sub_27137B8C8()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743BE550](exception, 17);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_27137B920()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743BE550](exception, 14);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_27137B9A8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27137B9E0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_27137BA10(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000027188D37DLL)
  {
    if (((v2 & 0x800000027188D37DLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000027188D37DLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000027188D37DLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_27137BA80(void *result)
{
  *result = &unk_288107028;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_27137BAF4(void *a1)
{
  *a1 = &unk_288107028;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27137BB84(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_27137BB98(void *result)
{
  *result = &unk_288107028;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_27137BC0C(void *a1)
{
  *a1 = &unk_288107028;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27137BC9C(uint64_t a1)
{
  v2 = MEMORY[0x2743BED80]();
  *(a1 + 8) = std::locale::use_facet(v2, MEMORY[0x277D82680]);
  *(a1 + 16) = std::locale::use_facet(a1, MEMORY[0x277D826A0]);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  return a1;
}

void sub_27137BDD4()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743BE550](exception, 6);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void *sub_27137BE2C(void *result)
{
  *result = &unk_288107028;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_27137BEA0(void *a1)
{
  *a1 = &unk_288107028;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27137BF30(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) != 1)
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }

LABEL_11:
    *a2 = -994;
    *(a2 + 80) = *(result + 8);
    return result;
  }

  if (*(a2 + 16) == *(a2 + 8) && (*(a2 + 88) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  *a2 = -993;
  *(a2 + 80) = 0;
  return result;
}

void *sub_27137BF98(void *result)
{
  *result = &unk_288107028;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_27137C00C(void *a1)
{
  *a1 = &unk_288107028;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27137C09C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    *(a2 + 80) = *(result + 8);
  }

  else
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  return result;
}

std::locale *sub_27137C0F0(std::locale *a1)
{
  a1->__locale_ = &unk_288107088;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_288107028;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_27137C17C(std::locale *a1)
{
  a1->__locale_ = &unk_288107088;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_288107028;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27137C228(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_19;
  }

  v4 = *(a2 + 16);
  if (v4 != v3)
  {
    if (v4 == v2)
    {
      v5 = *(a2 + 88);
      if ((v5 & 0x80) == 0)
      {
        if ((v5 & 4) == 0)
        {
          v6 = *v4;
          if (v6 == 95)
          {
            goto LABEL_17;
          }

          goto LABEL_15;
        }

        goto LABEL_19;
      }
    }

    v7 = *(v4 - 1);
    v8 = *v4;
    if (v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0)
    {
      v9 = 1;
      if (v8 == 95)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v9 = 0;
      if (v8 == 95)
      {
        goto LABEL_24;
      }
    }

    if ((v8 & 0x80) != 0 || (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) == 0)
    {
      if (*(result + 40) == (v9 != 0))
      {
        goto LABEL_20;
      }

      goto LABEL_27;
    }

LABEL_24:
    if (*(result + 40) != (v9 != 1))
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  if ((*(a2 + 88) & 8) == 0)
  {
    v6 = *(v4 - 1);
    if (v6 == 95)
    {
      goto LABEL_17;
    }

LABEL_15:
    if ((v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
    {
LABEL_17:
      if (*(result + 40) != 1)
      {
        goto LABEL_27;
      }

LABEL_20:
      *a2 = -993;
      *(a2 + 80) = 0;
      return result;
    }
  }

LABEL_19:
  if (!*(result + 40))
  {
    goto LABEL_20;
  }

LABEL_27:
  v10 = *(result + 8);
  *a2 = -994;
  *(a2 + 80) = v10;
  return result;
}

std::locale *sub_27137C37C(std::locale *a1)
{
  a1->__locale_ = &unk_288107178;
  locale = a1[8].__locale_;
  if (locale && !atomic_fetch_add(&locale->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (locale->__on_zero_shared)(locale);
    std::__shared_weak_count::__release_weak(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_288107028;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_27137C454(std::locale *a1)
{
  a1->__locale_ = &unk_288107178;
  locale = a1[8].__locale_;
  if (locale && !atomic_fetch_add(&locale->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (locale->__on_zero_shared)(locale);
    std::__shared_weak_count::__release_weak(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_288107028;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x2743BF050);
}

void sub_27137C54C(uint64_t a1, uint64_t a2)
{
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0uLL;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  __p = 0;
  v19 = 0;
  v4 = (*(a1 + 44) + 1);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v20 = 0;
  *&v21 = v5;
  *(&v21 + 1) = v5;
  v22 = 0;
  sub_27137CB94(&__p, v4, &v21);
  v23 = v6;
  v24 = v6;
  v25 = 0;
  v26 = v21;
  v27 = v22;
  v29 = v6;
  v28 = 1;
  v7 = *(a2 + 88) & 0xFFF;
  v8 = *(a2 + 16);
  if (v8 == *(a2 + 8))
  {
    v9 = *(a2 + 92);
  }

  else
  {
    v9 = 0;
  }

  if (*(a1 + 84) == sub_27137C6D4(a1 + 16, v8, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v9))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    v10 = __p;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  v10 = __p;
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v19 - __p) >> 3);
  if (v11 < 2)
  {
LABEL_10:
    if (!v10)
    {
      return;
    }

    goto LABEL_11;
  }

  v12 = *(a1 + 80);
  v13 = *(a2 + 32);
  v14 = 2;
  v15 = 1;
  do
  {
    v16 = &v10[24 * v15];
    v17 = v13 + 24 * v12;
    *v17 = *v16;
    *(v17 + 16) = v16[16];
    v15 = v14;
    ++v12;
    ++v14;
  }

  while (v11 > v15);
LABEL_11:
  v19 = v10;
  operator delete(v10);
}

void sub_27137C6B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27137C6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
    return 0;
  }

  *&v50 = a3;
  *(&v50 + 1) = a3;
  v51 = 0;
  *v47 = 0;
  memset(&v47[8], 0, 48);
  *__p = 0u;
  memset(v49, 0, 21);
  v53 = sub_27137CF08(&v52, v47);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v47[32])
  {
    *&v47[40] = *&v47[32];
    operator delete(*&v47[32]);
  }

  v13 = v53;
  *(v53 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  v14 = *(v13 - 8);
  v15 = *(a1 + 28);
  v16 = 0xAAAAAAAAAAAAAAABLL * ((*(v13 - 7) - v14) >> 3);
  if (v15 <= v16)
  {
    if (v15 < v16)
    {
      *(v13 - 7) = v14 + 24 * v15;
    }
  }

  else
  {
    sub_27137D234(v13 - 8, v15 - v16, &v50);
    v13 = v53;
  }

  v18 = *(v13 - 5);
  v19 = *(a1 + 32);
  v20 = (*(v13 - 4) - v18) >> 4;
  if (v19 <= v20)
  {
    if (v19 < v20)
    {
      *(v13 - 4) = v18 + 16 * v19;
    }
  }

  else
  {
    sub_27137D400(v13 - 40, v19 - v20);
    v13 = v53;
  }

  *(v13 - 2) = v6;
  *(v13 - 2) = a5;
  v21 = 1;
  *(v13 - 4) = a6;
  while (1)
  {
    if ((v21 & 0xFFF) == 0 && (v21 >> 12) >= a3 - a2)
    {
      sub_27137CDD4();
    }

    v23 = (v13 - 6);
    v24 = *(v13 - 2);
    if (v24)
    {
      (*(*v24 + 16))(v24, v13 - 6);
    }

    v25 = *v23;
    if (*v23 > -994)
    {
      if (v25 != -993)
      {
        if (v25 == -992)
        {
          sub_27137D554(v47, v13 - 6);
          (*(**(v13 - 2) + 24))(*(v13 - 2), 1, v13 - 6);
          (*(*v49[1] + 24))(v49[1], 0, v47);
          v30 = v53;
          if (v53 >= v54)
          {
            v53 = sub_27137CF08(&v52, v47);
            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }
          }

          else
          {
            v31 = *&v47[16];
            *v53 = *v47;
            v30[1] = v31;
            *(v30 + 6) = 0;
            *(v30 + 7) = 0;
            *(v30 + 4) = 0;
            *(v30 + 5) = 0;
            v30[2] = *&v47[32];
            *(v30 + 6) = *&v47[48];
            *&v47[32] = 0;
            *&v47[40] = 0;
            *(v30 + 8) = 0;
            *(v30 + 9) = 0;
            *(v30 + 56) = *__p;
            *(v30 + 9) = v49[0];
            *&v47[48] = 0;
            __p[0] = 0;
            __p[1] = 0;
            v49[0] = 0;
            v32 = v49[1];
            *(v30 + 85) = *(&v49[1] + 5);
            *(v30 + 10) = v32;
            v53 = v30 + 6;
          }

          if (*&v47[32])
          {
            *&v47[40] = *&v47[32];
            operator delete(*&v47[32]);
          }
        }

        else if (v25 != -991)
        {
          goto LABEL_60;
        }

        goto LABEL_17;
      }

      goto LABEL_32;
    }

    if ((v25 + 995) >= 2)
    {
      break;
    }

LABEL_17:
    v22 = v52;
    v13 = v53;
    ++v21;
    if (v52 == v53)
    {
      v17 = 0;
      if (!v52)
      {
        return v17;
      }

      goto LABEL_44;
    }
  }

  if (v25 != -1000)
  {
LABEL_60:
    sub_27137CE2C();
  }

  v26 = *(v13 - 10);
  if ((a5 & 0x20) != 0 && v26 == a2 || (a5 & 0x1000) != 0 && v26 != a3)
  {
LABEL_32:
    v27 = v53;
    v28 = *(v53 - 5);
    if (v28)
    {
      *(v53 - 4) = v28;
      operator delete(v28);
    }

    v29 = *(v27 - 8);
    if (v29)
    {
      *(v27 - 7) = v29;
      operator delete(v29);
    }

    v53 = v27 - 6;
    goto LABEL_17;
  }

  v38 = *a4;
  *v38 = a2;
  *(v38 + 8) = v26;
  *(v38 + 16) = 1;
  v39 = *(v13 - 8);
  v40 = *(v13 - 7) - v39;
  if (v40)
  {
    v41 = 0xAAAAAAAAAAAAAAABLL * (v40 >> 3);
    v42 = (v39 + 16);
    v43 = 1;
    do
    {
      v44 = v38 + 24 * v43;
      *v44 = *(v42 - 1);
      v45 = *v42;
      v42 += 24;
      *(v44 + 16) = v45;
    }

    while (v41 > v43++);
  }

  v17 = 1;
  v22 = v52;
  if (v52)
  {
LABEL_44:
    v33 = v53;
    v34 = v22;
    if (v53 != v22)
    {
      do
      {
        v35 = *(v33 - 5);
        if (v35)
        {
          *(v33 - 4) = v35;
          operator delete(v35);
        }

        v36 = *(v33 - 8);
        if (v36)
        {
          *(v33 - 7) = v36;
          operator delete(v36);
        }

        v33 -= 6;
      }

      while (v33 != v22);
      v34 = v52;
    }

    v53 = v22;
    operator delete(v34);
  }

  return v17;
}

void sub_27137CB24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27137CD90(&a9);
  sub_27137CE84((v9 - 104));
  _Unwind_Resume(a1);
}

char *sub_27137CB94(char **a1, unint64_t a2, uint64_t *a3)
{
  v5 = a1[2];
  v6 = *a1;
  result = v6;
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 3) < a2)
  {
    if (v6)
    {
      a1[1] = v6;
      operator delete(v6);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a2 <= 0xAAAAAAAAAAAAAAALL)
    {
      v8 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
      v9 = 2 * v8;
      if (2 * v8 <= a2)
      {
        v9 = a2;
      }

      if (v8 >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      if (v10 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_27137CD78();
  }

  v11 = a1[1];
  v12 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v6) >> 3);
  if (v12 >= a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v6) >> 3);
  }

  if (v13)
  {
    v14 = *a3;
    v15 = a3[1];
    v16 = v13;
    v17 = *(a3 + 16);
    if (v13 == 1)
    {
      goto LABEL_29;
    }

    result = &v6[24 * (v13 & 0xFFFFFFFFFFFFFFFELL)];
    v16 = v13 & 1;
    v18 = v6 + 24;
    v19 = v13 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      *(v18 - 3) = v14;
      *(v18 - 2) = v15;
      *v18 = v14;
      *(v18 + 1) = v15;
      *(v18 - 8) = v17;
      v18[16] = v17;
      v18 += 48;
      v19 -= 2;
    }

    while (v19);
    if (v13 != (v13 & 0xFFFFFFFFFFFFFFFELL))
    {
LABEL_29:
      do
      {
        *result = v14;
        *(result + 1) = v15;
        result[16] = v17;
        result += 24;
        --v16;
      }

      while (v16);
    }
  }

  if (a2 <= v12)
  {
    a1[1] = &v6[24 * a2];
  }

  else
  {
    v20 = &v11[24 * (a2 - v12)];
    v21 = 24 * a2 - 24 * v12;
    do
    {
      v22 = *a3;
      *(v11 + 2) = a3[2];
      *v11 = v22;
      v11 += 24;
      v21 -= 24;
    }

    while (v21);
    a1[1] = v20;
  }

  return result;
}

void *sub_27137CD90(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_27137CDD4()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743BE550](exception, 12);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_27137CE2C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743BE550](exception, 16);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void **sub_27137CE84(void **a1)
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
        v5 = *(v3 - 5);
        if (v5)
        {
          *(v3 - 4) = v5;
          operator delete(v5);
        }

        v6 = *(v3 - 8);
        if (v6)
        {
          *(v3 - 7) = v6;
          operator delete(v6);
        }

        v3 -= 96;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_27137CF08(void *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_27137CD78();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v5 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  v20 = a1;
  if (v5)
  {
    if (v5 <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v6 = 96 * v2;
  __p = 0;
  v17 = v6;
  v7 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v6 + 56) = *(a2 + 56);
  v8 = *(a2 + 72);
  v9 = *(a2 + 80);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(v6 + 85) = *(a2 + 85);
  *(v6 + 72) = v8;
  *(v6 + 80) = v9;
  v18 = 96 * v2 + 96;
  v19 = 0;
  sub_27137D094(a1, &__p);
  v10 = a1[1];
  v11 = v17;
  while (1)
  {
    v12 = v18;
    if (v18 == v11)
    {
      break;
    }

    v18 -= 96;
    v13 = *(v12 - 40);
    if (v13)
    {
      *(v12 - 32) = v13;
      operator delete(v13);
    }

    v14 = *(v12 - 64);
    if (v14)
    {
      *(v12 - 56) = v14;
      operator delete(v14);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

void sub_27137D080(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27137D1BC(va);
  _Unwind_Resume(a1);
}

void sub_27137D094(void *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v5;
    do
    {
      v9 = *(v7 + 1);
      *v8 = *v7;
      *(v8 + 16) = v9;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 32) = 0;
      *(v8 + 32) = *(v7 + 2);
      *(v8 + 48) = v7[6];
      v7[4] = 0;
      v7[5] = 0;
      v7[6] = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      *(v8 + 72) = 0;
      *(v8 + 56) = *(v7 + 7);
      *(v8 + 72) = v7[9];
      v7[7] = 0;
      v7[8] = 0;
      v7[9] = 0;
      v10 = v7[10];
      *(v8 + 85) = *(v7 + 85);
      *(v8 + 80) = v10;
      v7 += 12;
      v8 += 96;
    }

    while (v7 != v5);
    do
    {
      v11 = v4[7];
      if (v11)
      {
        v4[8] = v11;
        operator delete(v11);
      }

      v12 = v4[4];
      if (v12)
      {
        v4[5] = v12;
        operator delete(v12);
      }

      v4 += 12;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  a1[1] = v4;
  a2[1] = v4;
  v13 = a1[1];
  a1[1] = a2[2];
  a2[2] = v13;
  v14 = a1[2];
  a1[2] = a2[3];
  a2[3] = v14;
  *a2 = a2[1];
}

uint64_t sub_27137D1BC(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;
    v4 = *(i - 40);
    if (v4)
    {
      *(i - 32) = v4;
      operator delete(v4);
    }

    v5 = *(i - 64);
    if (v5)
    {
      *(i - 56) = v5;
      operator delete(v5);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_27137D234(uint64_t *a1, unint64_t a2, __int128 *a3)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 24 * a2;
      v10 = 24 * a2;
      do
      {
        v11 = *a3;
        *(v3 + 16) = *(a3 + 2);
        *v3 = v11;
        v3 += 24;
        v10 -= 24;
      }

      while (v10);
      v3 = v9;
    }

    a1[1] = v3;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_27137CD78();
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

    v12 = 24 * a2;
    v13 = 24 * v5;
    do
    {
      v14 = *a3;
      *(v13 + 16) = *(a3 + 2);
      *v13 = v14;
      v13 += 24;
      v12 -= 24;
    }

    while (v12);
    v15 = *a1;
    v16 = a1[1];
    v17 = 24 * v5 + *a1 - v16;
    if (v16 != *a1)
    {
      v18 = 24 * v5 + *a1 - v16;
      do
      {
        v19 = *v15;
        *(v18 + 16) = v15[2];
        *v18 = v19;
        v18 += 24;
        v15 += 3;
      }

      while (v15 != v16);
      v15 = *a1;
    }

    *a1 = v17;
    a1[1] = 24 * v5 + 24 * a2;
    a1[2] = 0;
    if (v15)
    {

      operator delete(v15);
    }
  }
}

void sub_27137D400(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if (a2)
    {
      v10 = 16 * a2;
      bzero(*(a1 + 8), 16 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 4) + a2;
    if (v7 >> 60)
    {
      sub_27137CD78();
    }

    v8 = v3 - v5;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 60))
      {
        operator new();
      }

      sub_2711270EC();
    }

    v11 = (16 * (v6 >> 4));
    v12 = 16 * a2;
    bzero(v11, 16 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t sub_27137D554(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *(result + 32) = 0;
  *result = v2;
  *(result + 16) = v3;
  *(result + 40) = 0;
  *(result + 48) = 0;
  v5 = *(a2 + 4);
  v4 = *(a2 + 5);
  if (v4 != v5)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_27137CD78();
  }

  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  v7 = *(a2 + 7);
  v6 = *(a2 + 8);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_27137CD78();
  }

  v8 = *(a2 + 10);
  *(result + 85) = *(a2 + 85);
  *(result + 80) = v8;
  return result;
}

void sub_27137D748(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 64) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void sub_27137D77C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743BE550](exception, 11);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void *sub_27137D7D4(void *result)
{
  *result = &unk_288107028;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_27137D848(void *a1)
{
  *a1 = &unk_288107028;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

void sub_27137D8D8()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743BE550](exception, 3);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_27137D930(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((v1 & 1) == 0)
  {
    if ((v1 & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_27137DAA8(_Unwind_Exception *a1)
{
  std::locale::~locale(v1 + 2);
  v1->__locale_ = &unk_288107028;
  locale = v1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  MEMORY[0x2743BF050](v1, v2);
  _Unwind_Resume(a1);
}

void sub_27137DB14()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743BE550](exception, 4);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_27137DB6C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((v1 & 1) == 0)
  {
    if ((v1 & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

std::locale *sub_27137DCA4(std::locale *a1)
{
  a1->__locale_ = &unk_288106F68;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_288107028;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_27137DD30(std::locale *a1)
{
  a1->__locale_ = &unk_288106F68;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_288107028;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27137DDDC(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == *(a2 + 24) || (v4 = result, result = (*(**(result + 24) + 40))(*(result + 24), *v3), *(v4 + 40) != result))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    ++*(a2 + 16);
    *(a2 + 80) = *(v4 + 8);
  }

  return result;
}

std::locale *sub_27137DE7C(std::locale *a1)
{
  a1->__locale_ = &unk_288106ED8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_288107028;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_27137DF08(std::locale *a1)
{
  a1->__locale_ = &unk_288106ED8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_288107028;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27137DFB4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    *(a2 + 80) = *(result + 8);
  }

  return result;
}

void *sub_27137DFFC(void *result)
{
  *result = &unk_288107028;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_27137E070(void *a1)
{
  *a1 = &unk_288107028;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27137E100(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    *(a2 + 80) = *(result + 8);
  }

  return result;
}

std::locale *sub_27137E148(std::locale *a1)
{
  a1->__locale_ = &unk_288107058;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_288107028;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_27137E1D4(std::locale *a1)
{
  a1->__locale_ = &unk_288107058;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_288107028;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27137E280(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v3 + 16) != 1 || (v4 = *(v3 + 8) - *v3, v5 = *(a2 + 16), *(a2 + 24) - v5 < v4))
  {
LABEL_3:
    *a2 = -993;
    *(a2 + 80) = 0;
    return result;
  }

  v6 = result;
  v7 = *(v3 + 8) != *v3;
  if (v4 >= 1)
  {
    v8 = 0;
    while (1)
    {
      v9 = (*(**(v6 + 24) + 40))(*(v6 + 24), *(*v3 + v8));
      result = (*(**(v6 + 24) + 40))(*(v6 + 24), *(*(a2 + 16) + v8));
      if (v9 != result)
      {
        goto LABEL_3;
      }

      if (v4 == ++v8)
      {
        v5 = *(a2 + 16);
        break;
      }
    }
  }

  *a2 = -994;
  *(a2 + 16) = v5 + v4;
  *(a2 + 80) = *(v6 + 8);
  return result;
}

std::locale *sub_27137E3B0(std::locale *a1)
{
  a1->__locale_ = &unk_288106F98;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_288107028;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_27137E43C(std::locale *a1)
{
  a1->__locale_ = &unk_288106F98;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_288107028;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27137E4E8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v2 + 16) != 1 || (v3 = *v2, v4 = *(v2 + 8) - *v2, v5 = *(a2 + 16), *(a2 + 24) - v5 < v4))
  {
LABEL_3:
    *a2 = -993;
    *(a2 + 80) = 0;
    return result;
  }

  if (v4 >= 1)
  {
    v6 = v4;
    v7 = *(a2 + 16);
    do
    {
      v9 = *v3++;
      v8 = v9;
      v10 = *v7++;
      if (v8 != v10)
      {
        goto LABEL_3;
      }
    }

    while (--v6);
  }

  *a2 = -994;
  *(a2 + 16) = v5 + v4;
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_27137E574(void *result)
{
  *result = &unk_288107028;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_27137E5E8(void *a1)
{
  *a1 = &unk_288107028;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27137E678(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    sub_27137DB14();
  }

  v4 = v3 + 24 * (v2 - 1);
  if (*(v4 + 16) != 1)
  {
    goto LABEL_5;
  }

  v6 = v4;
  v5 = *v4;
  v7 = *(v6 + 8) - v5;
  v8 = *(a2 + 16);
  if (*(a2 + 24) - v8 < v7)
  {
    goto LABEL_5;
  }

  v9 = result;
  v10 = a2;
  result = memcmp(v5, *(a2 + 16), v7);
  a2 = v10;
  if (!result)
  {
    *v10 = -994;
    *(v10 + 16) = v8 + v7;
    *(v10 + 80) = *(v9 + 8);
  }

  else
  {
LABEL_5:
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  return result;
}

void sub_27137E74C(uint64_t a1, char a2)
{
  if (*(a1 + 169) != 1)
  {
    v6 = *(a1 + 170);
    v8 = *(a1 + 48);
    v7 = *(a1 + 56);
    if (v8 < v7)
    {
      *v8 = a2;
      *(a1 + 48) = v8 + 1;
      return;
    }

    v9 = *(a1 + 40);
    v14 = (v8 - v9);
    v15 = v8 - v9 + 1;
    if (v15 >= 0)
    {
      v16 = v7 - v9;
      if (2 * v16 > v15)
      {
        v15 = 2 * v16;
      }

      if (v16 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v17 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        operator new();
      }

      v20 = v8 - v9;
      *v14 = a2;
      v19 = v14 + 1;
      memcpy(0, v9, v20);
      *(a1 + 40) = 0;
      *(a1 + 48) = v14 + 1;
      *(a1 + 56) = 0;
      if (v9)
      {
        goto LABEL_23;
      }

      goto LABEL_25;
    }

LABEL_26:
    sub_271135560();
  }

  v3 = (*(**(a1 + 24) + 40))(*(a1 + 24));
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  if (v5 < v4)
  {
    *v5 = v3;
    *(a1 + 48) = v5 + 1;
    return;
  }

  v9 = *(a1 + 40);
  v10 = (v5 - v9);
  v11 = v5 - v9 + 1;
  if (v11 < 0)
  {
    goto LABEL_26;
  }

  v12 = v4 - v9;
  if (2 * v12 > v11)
  {
    v11 = 2 * v12;
  }

  if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    operator new();
  }

  v18 = v5 - v9;
  *v10 = v3;
  v19 = v10 + 1;
  memcpy(0, v9, v18);
  *(a1 + 40) = 0;
  *(a1 + 48) = v10 + 1;
  *(a1 + 56) = 0;
  if (v9)
  {
LABEL_23:
    operator delete(v9);
    *(a1 + 48) = v19;
    return;
  }

LABEL_25:
  *(a1 + 48) = v19;
}

uint64_t sub_27137E968(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *a1 = &unk_288106F38;
  *(a1 + 8) = a3;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = a4;
  *(a1 + 169) = a5;
  *(a1 + 170) = a6;
  std::locale::locale(&v13, (a1 + 16));
  std::locale::name(&v14, &v13);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    v11 = v14.__r_.__value_.__l.__size_ != 1 || *v14.__r_.__value_.__l.__data_ != 67;
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  else
  {
    v11 = SHIBYTE(v14.__r_.__value_.__r.__words[2]) != 1 || v14.__r_.__value_.__s.__data_[0] != 67;
  }

  std::locale::~locale(&v13);
  *(a1 + 171) = v11;
  return a1;
}

void sub_27137EAA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  sub_27137F4D0((v9 + 136));
  v14 = *(v9 + 112);
  if (v14)
  {
    *(v9 + 120) = v14;
    operator delete(v14);
    sub_27137F544(v11);
    v15 = *(v9 + 64);
    if (!v15)
    {
LABEL_3:
      v16 = *v12;
      if (!*v12)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    sub_27137F544(v11);
    v15 = *(v9 + 64);
    if (!v15)
    {
      goto LABEL_3;
    }
  }

  *(v9 + 72) = v15;
  operator delete(v15);
  v16 = *v12;
  if (!*v12)
  {
LABEL_4:
    std::locale::~locale((v9 + 16));
    *v9 = v10;
    v17 = *(v9 + 8);
    if (!v17)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  *(v9 + 48) = v16;
  operator delete(v16);
  std::locale::~locale((v9 + 16));
  *v9 = v10;
  v17 = *(v9 + 8);
  if (!v17)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  (*(*v17 + 8))(v17);
  _Unwind_Resume(a1);
}

void sub_27137EB6C(std::locale *a1)
{
  sub_27137F638(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27137EBA4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (v4 == v5)
  {
    v23 = 0;
    v24 = *(a1 + 168);
    goto LABEL_59;
  }

  if (*(a1 + 171) != 1 || v4 + 1 == v5)
  {
    goto LABEL_34;
  }

  LOBYTE(v114) = *v4;
  v6 = v4[1];
  HIBYTE(v114) = v4[1];
  if (*(a1 + 169) == 1)
  {
    LOBYTE(v114) = (*(**(a1 + 24) + 40))(*(a1 + 24));
    HIBYTE(v114) = (*(**(a1 + 24) + 40))(*(a1 + 24), v6);
  }

  sub_27137F7B4(a1 + 16, &v114, &__p, &__p);
  if (v117 < 0)
  {
    v25 = v116;
    operator delete(__p);
    if (v25)
    {
      goto LABEL_8;
    }

LABEL_34:
    v24 = 0;
    v23 = 1;
    goto LABEL_35;
  }

  if (!v117)
  {
    goto LABEL_34;
  }

LABEL_8:
  v7 = *(a1 + 112);
  v8 = *(a1 + 120) - v7;
  if (v8)
  {
    v9 = v8 >> 1;
    if ((v8 >> 1) <= 1)
    {
      v9 = 1;
    }

    v10 = (v7 + 1);
    while (v114 != *(v10 - 1) || HIBYTE(v114) != *v10)
    {
      v10 += 2;
      if (!--v9)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_225;
  }

LABEL_17:
  if (*(a1 + 170) != 1 || *(a1 + 88) == *(a1 + 96))
  {
LABEL_179:
    if (*(a1 + 136) == *(a1 + 144))
    {
      v86 = 0;
      goto LABEL_207;
    }

    sub_27137FA70(a1 + 16, &v114, &__p, &__p);
    v87 = *(a1 + 136);
    v88 = v117;
    v89 = *(a1 + 144) - v87;
    if (v89)
    {
      v90 = v2;
      v91 = 0xAAAAAAAAAAAAAAABLL * (v89 >> 3);
      if (v117 >= 0)
      {
        v92 = v117;
      }

      else
      {
        v92 = v116;
      }

      if (v117 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v91 <= 1)
      {
        v94 = 1;
      }

      else
      {
        v94 = 0xAAAAAAAAAAAAAAABLL * (v89 >> 3);
      }

      v95 = 1;
      v96 = 1;
      do
      {
        v97 = *(v87 + 23);
        v98 = v97;
        if ((v97 & 0x80u) != 0)
        {
          v97 = *(v87 + 8);
        }

        if (v92 == v97)
        {
          v99 = v98 >= 0 ? v87 : *v87;
          if (!memcmp(p_p, v99, v92))
          {
            v86 = 1;
            v70 = 5;
            v2 = v90;
            if ((v88 & 0x80) == 0)
            {
              goto LABEL_204;
            }

            goto LABEL_203;
          }
        }

        v96 = v95++ < v91;
        v87 += 24;
        --v94;
      }

      while (v94);
      v70 = 0;
      v86 = 0;
      v2 = v90;
      if ((v88 & 0x80) == 0)
      {
        goto LABEL_204;
      }
    }

    else
    {
      v96 = 0;
      v70 = 0;
      v86 = 0;
      if ((v117 & 0x80) == 0)
      {
LABEL_204:
        if (v96)
        {
          goto LABEL_205;
        }

LABEL_207:
        if (v114 < 0)
        {
          v103 = *(a1 + 164);
        }

        else
        {
          v100 = *(a1 + 160);
          v101 = *(*(a1 + 24) + 16);
          v102 = *(v101 + 4 * v114);
          if (((v102 & v100) != 0 || v114 == 95 && (v100 & 0x80) != 0) && (SHIBYTE(v114) & 0x8000000000000000) == 0 && ((*(v101 + 4 * SHIBYTE(v114)) & v100) != 0 || (v100 & 0x80) != 0 && SHIBYTE(v114) == 95))
          {
            goto LABEL_225;
          }

          v103 = *(a1 + 164);
          if ((v103 & v102) != 0 || v114 == 95 && (v103 & 0x80) != 0)
          {
LABEL_224:
            v24 = v86;
LABEL_226:
            v23 = 2;
            goto LABEL_59;
          }
        }

        if ((SHIBYTE(v114) & 0x8000000000000000) == 0)
        {
          if ((*(*(*(a1 + 24) + 16) + 4 * SHIBYTE(v114)) & v103) == 0)
          {
            v24 = 1;
            if (SHIBYTE(v114) != 95 || (v103 & 0x80) == 0)
            {
              goto LABEL_226;
            }
          }

          goto LABEL_224;
        }

LABEL_225:
        v24 = 1;
        goto LABEL_226;
      }
    }

LABEL_203:
    operator delete(__p);
    goto LABEL_204;
  }

  v117 = 2;
  LOWORD(__p) = v114;
  BYTE2(__p) = 0;
  (*(**(a1 + 32) + 32))(&v111);
  if (v117 < 0)
  {
    operator delete(__p);
  }

  v12 = *(a1 + 88);
  v13 = v113;
  v14 = *(a1 + 96) - v12;
  if (!v14)
  {
    v22 = 0;
    v70 = 0;
    goto LABEL_175;
  }

  v106 = v2;
  v15 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 4);
  if (v113 >= 0)
  {
    v16 = &v111;
  }

  else
  {
    v16 = v111;
  }

  v17 = v113;
  if (v113 >= 0)
  {
    v18 = v113;
  }

  else
  {
    v18 = v112;
  }

  if (v15 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 4);
  }

  v20 = (v12 + 47);
  v21 = 1;
  v22 = 1;
  do
  {
    v60 = *(v20 - 24);
    if (v60 >= 0)
    {
      v61 = (v20 - 47);
    }

    else
    {
      v61 = *(v20 - 47);
    }

    if (v60 >= 0)
    {
      v62 = *(v20 - 24);
    }

    else
    {
      v62 = *(v20 - 39);
    }

    if (v18 >= v62)
    {
      v63 = v62;
    }

    else
    {
      v63 = v18;
    }

    v64 = memcmp(v61, v16, v63);
    if (v64)
    {
      if ((v64 & 0x80000000) == 0)
      {
        goto LABEL_109;
      }
    }

    else if (v62 > v18)
    {
      goto LABEL_109;
    }

    v65 = *v20;
    if (v65 >= 0)
    {
      v66 = (v20 - 23);
    }

    else
    {
      v66 = *(v20 - 23);
    }

    if (v65 >= 0)
    {
      v67 = *v20;
    }

    else
    {
      v67 = *(v20 - 15);
    }

    if (v67 >= v18)
    {
      v68 = v18;
    }

    else
    {
      v68 = v67;
    }

    v69 = memcmp(v16, v66, v68);
    if (v69)
    {
      if (v69 < 0)
      {
LABEL_134:
        v70 = 5;
        goto LABEL_173;
      }
    }

    else if (v18 <= v67)
    {
      goto LABEL_134;
    }

LABEL_109:
    v22 = v21++ < v15;
    v20 += 48;
    --v19;
  }

  while (v19);
  v70 = 0;
LABEL_173:
  v2 = v106;
  v13 = v17;
LABEL_175:
  if (v13 < 0)
  {
    operator delete(v111);
  }

  if (!v22)
  {
    goto LABEL_179;
  }

  v86 = 1;
LABEL_205:
  v23 = 2;
  v24 = v86;
  if (v70)
  {
    goto LABEL_59;
  }

LABEL_35:
  v26 = **(v2 + 16);
  LOBYTE(v114) = **(v2 + 16);
  if (*(a1 + 169) == 1)
  {
    LODWORD(v26) = (*(**(a1 + 24) + 40))(*(a1 + 24), v26);
    LOBYTE(v114) = v26;
  }

  v27 = *(a1 + 40);
  v28 = *(a1 + 48) - v27;
  if (v28)
  {
    if (v28 <= 1)
    {
      v28 = 1;
    }

    do
    {
      v29 = *v27++;
      if (v29 == v26)
      {
        goto LABEL_58;
      }

      --v28;
    }

    while (v28);
  }

  v30 = *(a1 + 164);
  if (v30 || *(a1 + 64) != *(a1 + 72))
  {
    if ((v26 & 0x80000000) != 0 || (*(*(*(a1 + 24) + 16) + 4 * v26) & v30) == 0)
    {
      v32 = (v30 >> 7) & 1;
      v31 = v26 == 95 ? v32 : 0;
    }

    else
    {
      v31 = 1;
    }

    v33 = *(a1 + 72);
    v34 = memchr(*(a1 + 64), v26, v33 - *(a1 + 64));
    v35 = !v34 || v34 == v33;
    v36 = !v35;
    if ((v31 & 1) == 0 && !v36)
    {
      goto LABEL_58;
    }
  }

  v39 = *(a1 + 88);
  v40 = *(a1 + 96);
  if (v39 == v40)
  {
    goto LABEL_139;
  }

  v109 = v24;
  if (*(a1 + 170) == 1)
  {
    v117 = 1;
    LOWORD(__p) = v26;
    (*(**(a1 + 32) + 32))(&v111);
    if (v117 < 0)
    {
      operator delete(__p);
    }

    v39 = *(a1 + 88);
    v41 = v113;
    v42 = *(a1 + 96) - v39;
    if (!v42)
    {
LABEL_68:
      v43 = 0;
      if ((v41 & 0x80) != 0)
      {
        goto LABEL_137;
      }

      goto LABEL_138;
    }
  }

  else
  {
    v41 = 1;
    v113 = 1;
    LOWORD(v111) = v26;
    v42 = v40 - v39;
    if (!v42)
    {
      goto LABEL_68;
    }
  }

  v105 = v23;
  v107 = v2;
  v44 = 0xAAAAAAAAAAAAAAABLL * (v42 >> 4);
  v104 = v41;
  if ((v41 & 0x80u) == 0)
  {
    v45 = &v111;
  }

  else
  {
    v45 = v111;
  }

  if ((v41 & 0x80u) == 0)
  {
    v46 = v41;
  }

  else
  {
    v46 = v112;
  }

  if (v44 <= 1)
  {
    v47 = 1;
  }

  else
  {
    v47 = 0xAAAAAAAAAAAAAAABLL * (v42 >> 4);
  }

  v48 = (v39 + 47);
  v49 = 1;
  v43 = 1;
  while (2)
  {
    v50 = *(v48 - 24);
    if (v50 >= 0)
    {
      v51 = (v48 - 47);
    }

    else
    {
      v51 = *(v48 - 47);
    }

    if (v50 >= 0)
    {
      v52 = *(v48 - 24);
    }

    else
    {
      v52 = *(v48 - 39);
    }

    if (v46 >= v52)
    {
      v53 = v52;
    }

    else
    {
      v53 = v46;
    }

    v54 = memcmp(v51, v45, v53);
    if (v54)
    {
      if (v54 < 0)
      {
        goto LABEL_96;
      }
    }

    else if (v52 <= v46)
    {
LABEL_96:
      v55 = *v48;
      if (v55 >= 0)
      {
        v56 = (v48 - 23);
      }

      else
      {
        v56 = *(v48 - 23);
      }

      if (v55 >= 0)
      {
        v57 = *v48;
      }

      else
      {
        v57 = *(v48 - 15);
      }

      if (v57 >= v46)
      {
        v58 = v46;
      }

      else
      {
        v58 = v57;
      }

      v59 = memcmp(v45, v56, v58);
      if (v59)
      {
        if (v59 < 0)
        {
LABEL_107:
          v24 = 1;
          v2 = v107;
          goto LABEL_136;
        }
      }

      else if (v46 <= v57)
      {
        goto LABEL_107;
      }
    }

    v43 = v49++ < v44;
    v48 += 48;
    if (--v47)
    {
      continue;
    }

    break;
  }

  v2 = v107;
  v24 = v109;
LABEL_136:
  v23 = v105;
  if (v104 < 0)
  {
LABEL_137:
    operator delete(v111);
  }

LABEL_138:
  if (!v43)
  {
LABEL_139:
    if (*(a1 + 136) != *(a1 + 144))
    {
      v71 = v23;
      v72 = &__p;
      sub_27137FA70(a1 + 16, &v114, &v114 + 1, &__p);
      v73 = *(a1 + 136);
      v74 = v117;
      v75 = *(a1 + 144) - v73;
      if (v75)
      {
        v110 = v24;
        v108 = v2;
        v76 = 0xAAAAAAAAAAAAAAABLL * (v75 >> 3);
        if (v117 >= 0)
        {
          v77 = v117;
        }

        else
        {
          v77 = v116;
        }

        if (v117 < 0)
        {
          v72 = __p;
        }

        if (v76 <= 1)
        {
          v78 = 1;
        }

        else
        {
          v78 = 0xAAAAAAAAAAAAAAABLL * (v75 >> 3);
        }

        v79 = 1;
        v80 = 1;
        do
        {
          v81 = *(v73 + 23);
          v82 = v81;
          if ((v81 & 0x80u) != 0)
          {
            v81 = *(v73 + 8);
          }

          if (v77 == v81)
          {
            v83 = v82 >= 0 ? v73 : *v73;
            if (!memcmp(v72, v83, v77))
            {
              v24 = 1;
              v2 = v108;
              if ((v74 & 0x80) == 0)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            }
          }

          v80 = v79++ < v76;
          v73 += 24;
          --v78;
        }

        while (v78);
        v2 = v108;
        v24 = v110;
        if ((v74 & 0x80) == 0)
        {
          goto LABEL_162;
        }

LABEL_161:
        operator delete(__p);
      }

      else
      {
        v80 = 0;
        if (v117 < 0)
        {
          goto LABEL_161;
        }
      }

LABEL_162:
      if (v80)
      {
        v23 = v71;
        goto LABEL_59;
      }

      LOBYTE(v26) = v114;
      v23 = v71;
    }

    v84 = *(a1 + 160);
    if ((v26 & 0x80) != 0 || (*(*(*(a1 + 24) + 16) + 4 * v26) & v84) == 0)
    {
      v85 = (v84 >> 7) & 1;
      if (v26 != 95)
      {
        LOBYTE(v85) = 0;
      }

      v24 |= v85;
      goto LABEL_59;
    }

LABEL_58:
    v24 = 1;
  }

LABEL_59:
  if (*(a1 + 168) == (v24 & 1))
  {
    v37 = 0;
    v38 = -993;
  }

  else
  {
    *(v2 + 16) += v23;
    v37 = *(a1 + 8);
    v38 = -995;
  }

  *v2 = v38;
  *(v2 + 80) = v37;
}

void sub_27137F4B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ***sub_27137F4D0(void ***a1)
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
        v5 = *(v3 - 1);
        v3 -= 3;
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

void ***sub_27137F544(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
LABEL_11:
      a1[1] = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
        v5 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
LABEL_9:
          operator delete(*v5);
        }
      }

      else
      {
        v5 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
          goto LABEL_9;
        }
      }

      v3 = v5;
      if (v5 == v2)
      {
        v4 = *a1;
        goto LABEL_11;
      }
    }
  }

  return a1;
}

uint64_t sub_27137F5DC(uint64_t a1)
{
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

std::locale *sub_27137F638(std::locale *a1)
{
  a1->__locale_ = &unk_288106F38;
  locale = a1[17].__locale_;
  if (locale)
  {
    v3 = a1[18].__locale_;
    v4 = a1[17].__locale_;
    if (v3 != locale)
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

      while (v3 != locale);
      v4 = a1[17].__locale_;
    }

    a1[18].__locale_ = locale;
    operator delete(v4);
  }

  v6 = a1[14].__locale_;
  if (v6)
  {
    a1[15].__locale_ = v6;
    operator delete(v6);
  }

  v7 = a1[11].__locale_;
  if (v7)
  {
    v8 = a1[12].__locale_;
    v9 = a1[11].__locale_;
    if (v8 == v7)
    {
LABEL_21:
      a1[12].__locale_ = v7;
      operator delete(v9);
      goto LABEL_22;
    }

    while (1)
    {
      if (*(v8 - 1) < 0)
      {
        operator delete(*(v8 - 3));
        v10 = v8 - 6;
        if (*(v8 - 25) < 0)
        {
LABEL_19:
          operator delete(*v10);
        }
      }

      else
      {
        v10 = v8 - 6;
        if (*(v8 - 25) < 0)
        {
          goto LABEL_19;
        }
      }

      v8 = v10;
      if (v10 == v7)
      {
        v9 = a1[11].__locale_;
        goto LABEL_21;
      }
    }
  }

LABEL_22:
  v11 = a1[8].__locale_;
  if (v11)
  {
    a1[9].__locale_ = v11;
    operator delete(v11);
  }

  v12 = a1[5].__locale_;
  if (v12)
  {
    a1[6].__locale_ = v12;
    operator delete(v12);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_288107028;
  v13 = a1[1].__locale_;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  return a1;
}

void sub_27137F7B4(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a3 - a2;
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (v5 > 0x16)
  {
    operator new();
  }

  HIBYTE(v16) = a3 - a2;
  if (a3 != a2)
  {
    memcpy(&__dst, a2, v5);
  }

  *(&__dst + v5) = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  if (SHIBYTE(v16) < 0)
  {
    if (!*(&__dst + 1))
    {
      goto LABEL_15;
    }

    p_dst = __dst;
  }

  else
  {
    if (!HIBYTE(v16))
    {
      return;
    }

    p_dst = &__dst;
  }

  std::__get_collation_name(&v14, p_dst);
  *a4 = *&v14.__r_.__value_.__l.__data_;
  v8 = v14.__r_.__value_.__r.__words[2];
  *(a4 + 16) = *(&v14.__r_.__value_.__l + 2);
  v9 = HIBYTE(v8);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a4 + 8);
  }

  if (v9)
  {
    goto LABEL_15;
  }

  if ((SHIBYTE(v16) & 0x8000000000000000) == 0)
  {
    if (SHIBYTE(v16) >= 3)
    {
      return;
    }

    goto LABEL_22;
  }

  if (*(&__dst + 1) < 3uLL)
  {
LABEL_22:
    (*(**(a1 + 16) + 32))(&v14);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = v14;
    if (*(a4 + 23) < 0)
    {
      v11 = *(a4 + 8);
      if (v11 == 1 || v11 == 12)
      {
        if (&__dst != a4)
        {
          if (v16 >= 0)
          {
            v12 = &__dst;
          }

          else
          {
            v12 = __dst;
          }

          if (v16 >= 0)
          {
            v13 = HIBYTE(v16);
          }

          else
          {
            v13 = *(&__dst + 1);
          }

          sub_2711289F8(a4, v12, v13);
        }
      }

      else
      {
        **a4 = 0;
        *(a4 + 8) = 0;
      }
    }

    else
    {
      v10 = *(a4 + 23);
      if (v10 == 1 || v10 == 12)
      {
        if (&__dst != a4)
        {
          if (SHIBYTE(v16) < 0)
          {
            sub_271128928(a4, __dst, *(&__dst + 1));
          }

          else
          {
            *a4 = __dst;
            *(a4 + 16) = v16;
          }
        }
      }

      else
      {
        *a4 = 0;
        *(a4 + 23) = 0;
      }
    }
  }

LABEL_15:
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__dst);
  }
}

void sub_27137FA2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
    if ((a17 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_27137FA70(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a3 - a2;
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (v5 > 0x16)
  {
    operator new();
  }

  v13 = a3 - a2;
  if (a3 != a2)
  {
    memcpy(__dst, a2, v5);
  }

  *(__dst + v5) = 0;
  v7 = v13;
  if ((v13 & 0x80u) == 0)
  {
    v8 = __dst;
  }

  else
  {
    v8 = __dst[0];
  }

  if ((v13 & 0x80u) != 0)
  {
    v7 = __dst[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v8, v8 + v7);
  v9 = *(a4 + 23);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a4 + 8);
  }

  if (v9 == 1)
  {
    goto LABEL_23;
  }

  if (v9 != 12)
  {
    if (v10 < 0)
    {
      **a4 = 0;
      *(a4 + 8) = 0;
      if ((v13 & 0x80000000) == 0)
      {
        return;
      }

LABEL_26:
      operator delete(__dst[0]);
      return;
    }

    *a4 = 0;
    *(a4 + 23) = 0;
LABEL_23:
    if ((v13 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_26;
  }

  if (v10 >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = *a4;
  }

  v11[11] = v11[3];
  if (v13 < 0)
  {
    goto LABEL_26;
  }
}

void sub_27137FC14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27137FC30()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743BE550](exception, 5);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_27137FC88(uint64_t a1, char *a2, char *a3)
{
  v3 = a3;
  v4 = a2;
  if (*(a1 + 170) != 1)
  {
    v11 = a2[23];
    if (v11 < 0)
    {
      if (*(a2 + 1) != 1)
      {
        goto LABEL_73;
      }
    }

    else if (v11 != 1)
    {
      goto LABEL_73;
    }

    v29 = a3[23];
    if (v29 < 0)
    {
      v29 = *(a3 + 1);
    }

    if (v29 != 1)
    {
LABEL_73:
      sub_271380894();
    }

    if (*(a1 + 169) != 1)
    {
LABEL_63:
      *v39 = *v4;
      v40 = *(v4 + 2);
      *(v4 + 1) = 0;
      *(v4 + 2) = 0;
      *v4 = 0;
      *__p = *v3;
      v42 = *(v3 + 2);
      *v3 = 0;
      *(v3 + 1) = 0;
      *(v3 + 2) = 0;
      sub_2713805B0((a1 + 88), v39);
      if (SHIBYTE(v42) < 0)
      {
        operator delete(__p[0]);
        if (SHIBYTE(v40) < 0)
        {
          goto LABEL_67;
        }
      }

      else if (SHIBYTE(v40) < 0)
      {
        goto LABEL_67;
      }

      return;
    }

    v30 = a2;
    if ((v11 & 0x80000000) != 0)
    {
      v30 = *a2;
    }

    v31 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v30);
    if (v4[23] < 0)
    {
      **v4 = v31;
      v32 = v3;
      if ((v3[23] & 0x80000000) == 0)
      {
        goto LABEL_60;
      }
    }

    else
    {
      *v4 = v31;
      v32 = v3;
      if ((v3[23] & 0x80000000) == 0)
      {
LABEL_60:
        v33 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v32);
        v34 = v3;
        if (v3[23] < 0)
        {
          v34 = *v3;
        }

        *v34 = v33;
        goto LABEL_63;
      }
    }

    v32 = *v3;
    goto LABEL_60;
  }

  if (*(a1 + 169))
  {
    for (i = 0; ; ++i)
    {
      v7 = v4[23];
      if ((v7 & 0x8000000000000000) != 0)
      {
        if (i >= *(v4 + 1))
        {
LABEL_25:
          for (j = 0; ; ++j)
          {
            v17 = v3[23];
            if ((v17 & 0x8000000000000000) != 0)
            {
              if (j >= *(v3 + 1))
              {
                goto LABEL_44;
              }
            }

            else if (j >= v17)
            {
              goto LABEL_44;
            }

            v18 = v3;
            if ((v17 & 0x80000000) != 0)
            {
              v18 = *v3;
            }

            v19 = (*(**(a1 + 24) + 40))(*(a1 + 24), v18[j]);
            v20 = v3;
            if (v3[23] < 0)
            {
              v20 = *v3;
            }

            v20[j] = v19;
          }
        }
      }

      else if (i >= v7)
      {
        goto LABEL_25;
      }

      v8 = v4;
      if ((v7 & 0x80000000) != 0)
      {
        v8 = *v4;
      }

      v9 = (*(**(a1 + 24) + 40))(*(a1 + 24), v8[i]);
      v10 = v4;
      if (v4[23] < 0)
      {
        v10 = *v4;
      }

      v10[i] = v9;
    }
  }

  for (k = 0; ; ++k)
  {
    v14 = a2[23];
    if ((v14 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (k >= v14)
    {
      goto LABEL_35;
    }

LABEL_23:
    v13 = a2;
    if ((v14 & 0x80000000) != 0)
    {
      v13 = *a2;
      v15 = *a2;
    }

    else
    {
      v15 = a2;
    }

    v15[k] = v13[k];
  }

  if (k < *(a2 + 1))
  {
    goto LABEL_23;
  }

LABEL_35:
  for (m = 0; ; ++m)
  {
    v23 = a3[23];
    if ((v23 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (m >= v23)
    {
      goto LABEL_44;
    }

LABEL_42:
    v22 = a3;
    if ((v23 & 0x80000000) != 0)
    {
      v22 = *a3;
      v24 = *a3;
    }

    else
    {
      v24 = a3;
    }

    v24[m] = v22[m];
  }

  if (m < *(a3 + 1))
  {
    goto LABEL_42;
  }

LABEL_44:
  v25 = v4[23];
  if (v25 < 0)
  {
    v26 = v4;
    v4 = *v4;
    v25 = *(v26 + 1);
  }

  sub_271380738(a1 + 16, v4, &v4[v25]);
  v27 = v3[23];
  if (v27 < 0)
  {
    v28 = v3;
    v3 = *v3;
    v27 = *(v28 + 1);
  }

  sub_271380738(a1 + 16, v3, &v3[v27]);
  *v39 = *v37;
  v40 = v38;
  *__p = *v35;
  v42 = v36;
  sub_2713805B0((a1 + 88), v39);
  if ((SHIBYTE(v42) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v40) & 0x80000000) == 0)
    {
      return;
    }

LABEL_67:
    operator delete(v39[0]);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v40) < 0)
  {
    goto LABEL_67;
  }
}

void sub_2713800D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27137F5DC(va);
  _Unwind_Resume(a1);
}

void sub_2713800E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  sub_27137F5DC(&a21);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void sub_271380124()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743BE550](exception, 1);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_27138017C(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a3 - a2;
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (v5 > 0x16)
  {
    operator new();
  }

  v13 = a3 - a2;
  if (a3 != a2)
  {
    memmove(__dst, a2, v5);
  }

  *(__dst + v5) = 0;
  v7 = v13;
  if ((v13 & 0x80u) == 0)
  {
    v8 = __dst;
  }

  else
  {
    v8 = __dst[0];
  }

  if ((v13 & 0x80u) != 0)
  {
    v7 = __dst[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v8, v8 + v7);
  v9 = *(a4 + 23);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a4 + 8);
  }

  if (v9 == 1)
  {
    goto LABEL_23;
  }

  if (v9 != 12)
  {
    if (v10 < 0)
    {
      **a4 = 0;
      *(a4 + 8) = 0;
      if ((v13 & 0x80000000) == 0)
      {
        return;
      }

LABEL_26:
      operator delete(__dst[0]);
      return;
    }

    *a4 = 0;
    *(a4 + 23) = 0;
LABEL_23:
    if ((v13 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_26;
  }

  if (v10 >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = *a4;
  }

  v11[11] = v11[3];
  if (v13 < 0)
  {
    goto LABEL_26;
  }
}

void sub_271380320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27138033C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743BE550](exception, 2);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_271380394(uint64_t a1, char a2)
{
  if (*(a1 + 169) != 1)
  {
    v6 = *(a1 + 170);
    v8 = *(a1 + 72);
    v7 = *(a1 + 80);
    if (v8 < v7)
    {
      *v8 = a2;
      *(a1 + 72) = v8 + 1;
      return;
    }

    v9 = *(a1 + 64);
    v14 = (v8 - v9);
    v15 = v8 - v9 + 1;
    if (v15 >= 0)
    {
      v16 = v7 - v9;
      if (2 * v16 > v15)
      {
        v15 = 2 * v16;
      }

      if (v16 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v17 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        operator new();
      }

      v20 = v8 - v9;
      *v14 = a2;
      v19 = v14 + 1;
      memcpy(0, v9, v20);
      *(a1 + 64) = 0;
      *(a1 + 72) = v14 + 1;
      *(a1 + 80) = 0;
      if (v9)
      {
        goto LABEL_23;
      }

      goto LABEL_25;
    }

LABEL_26:
    sub_271135560();
  }

  v3 = (*(**(a1 + 24) + 40))(*(a1 + 24));
  v5 = *(a1 + 72);
  v4 = *(a1 + 80);
  if (v5 < v4)
  {
    *v5 = v3;
    *(a1 + 72) = v5 + 1;
    return;
  }

  v9 = *(a1 + 64);
  v10 = (v5 - v9);
  v11 = v5 - v9 + 1;
  if (v11 < 0)
  {
    goto LABEL_26;
  }

  v12 = v4 - v9;
  if (2 * v12 > v11)
  {
    v11 = 2 * v12;
  }

  if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    operator new();
  }

  v18 = v5 - v9;
  *v10 = v3;
  v19 = v10 + 1;
  memcpy(0, v9, v18);
  *(a1 + 64) = 0;
  *(a1 + 72) = v10 + 1;
  *(a1 + 80) = 0;
  if (v9)
  {
LABEL_23:
    operator delete(v9);
    *(a1 + 72) = v19;
    return;
  }

LABEL_25:
  *(a1 + 72) = v19;
}

void sub_2713805B0(void **a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 2) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = *(a2 + 24);
    *(v3 + 5) = *(a2 + 5);
    *(v3 + 24) = v6;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v7 = (v3 + 48);
LABEL_3:
    a1[1] = v7;
    return;
  }

  v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
  v9 = v8 + 1;
  if (v8 + 1 > 0x555555555555555)
  {
    sub_27137CD78();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0x2AAAAAAAAAAAAAALL)
  {
    v11 = 0x555555555555555;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 <= 0x555555555555555)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v12 = 48 * v8;
  *v12 = *a2;
  *(v12 + 16) = *(a2 + 2);
  *a2 = 0;
  *(a2 + 1) = 0;
  v13 = *(a2 + 24);
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(v12 + 40) = *(a2 + 5);
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  v7 = 48 * v8 + 48;
  v14 = *a1;
  v15 = a1[1] - *a1;
  *(v12 + 24) = v13;
  v16 = v12 - v15;
  memcpy((v12 - v15), v14, v15);
  *a1 = v16;
  a1[1] = v7;
  a1[2] = 0;
  if (!v14)
  {
    goto LABEL_3;
  }

  operator delete(v14);
  a1[1] = v7;
}

void sub_271380738(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v3 = a3 - a2;
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (v3 > 0x16)
  {
    operator new();
  }

  v8 = a3 - a2;
  if (a3 != a2)
  {
    memmove(__dst, a2, v3);
  }

  *(__dst + v3) = 0;
  v5 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v6 = __dst;
  }

  else
  {
    v6 = __dst[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v5 = __dst[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v6, v6 + v5);
  if (v8 < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_271380878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271380894()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743BE550](exception, 9);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_2713808EC(uint64_t a1, _WORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 1;
  if (v7 >> 1 <= -2)
  {
    sub_27137CD78();
  }

  v9 = v3 - v6;
  if (v9 <= v8 + 1)
  {
    v10 = v8 + 1;
  }

  else
  {
    v10 = v9;
  }

  if (v9 >= 0x7FFFFFFFFFFFFFFELL)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v10;
  }

  if (v11)
  {
    if ((v11 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711270EC();
  }

  *(2 * v8) = *a2;
  v5 = 2 * v8 + 2;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void *sub_2713809FC(void *result)
{
  *result = &unk_288107028;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_271380A70(void *a1)
{
  *a1 = &unk_288107028;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271380B00(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_271380B30(void *result)
{
  *result = &unk_288107028;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_271380BA4(void *a1)
{
  *a1 = &unk_288107028;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271380C34(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = *(a2 + 32) + 24 * (*(result + 16) - 1);
  *(v2 + 8) = *(a2 + 16);
  *(v2 + 16) = 1;
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_271380DFC()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743BE550](exception, 8);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_271380E54()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743BE550](exception, 7);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void *sub_271380EAC(void *a1)
{
  *a1 = &unk_288106FF8;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = &unk_288107028;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_271380F60(void *a1)
{
  *a1 = &unk_288106FF8;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = &unk_288107028;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271381034(uint64_t result, uint64_t a2)
{
  v2 = (*(a2 + 56) + 16 * *(result + 40));
  if (*a2 != -991)
  {
    *v2 = 0;
    if (!*(result + 32))
    {
      *a2 = -994;
      goto LABEL_28;
    }

    if (*(result + 24))
    {
      *a2 = -994;
      *(a2 + 80) = *(result + 8);
      v2[1] = *(a2 + 16);
      v18 = *(result + 44);
      v19 = *(result + 48);
      if (v18 == v19)
      {
        return result;
      }

      v20 = (v19 - 1);
      v21 = (v18 - 1);
      v22 = *(a2 + 24);
      v23 = *(a2 + 32);
      v24 = v20 - v21;
      if ((v20 - v21) >= 2)
      {
        v25 = (v24 & 0xFFFFFFFFFFFFFFFELL) + v21;
        v26 = v23 + 24 * v21 + 24;
        v27 = v24 & 0xFFFFFFFFFFFFFFFELL;
        do
        {
          *(v26 - 24) = v22;
          *(v26 - 16) = v22;
          *v26 = v22;
          *(v26 + 8) = v22;
          *(v26 - 8) = 0;
          *(v26 + 16) = 0;
          v26 += 48;
          v27 -= 2;
        }

        while (v27);
        if (v24 == (v24 & 0xFFFFFFFFFFFFFFFELL))
        {
          return result;
        }
      }

      else
      {
        v25 = v21;
      }

      v28 = v20 - v25;
      v29 = (v23 + 24 * v25 + 16);
      do
      {
        *(v29 - 2) = v22;
        *(v29 - 1) = v22;
        *v29 = 0;
        v29 += 24;
        --v28;
      }

      while (v28);
      return result;
    }

LABEL_26:
    *a2 = -992;
    return result;
  }

  v3 = *v2 + 1;
  *v2 = v3;
  v4 = *(result + 24);
  v5 = *(result + 32);
  v6 = v3 < v5;
  if (v3 < v5 && v3 >= v4)
  {
    v6 = v3 < v5 && v2[1] != *(a2 + 16);
  }

  if (v6 && v3 >= v4)
  {
    goto LABEL_26;
  }

  *a2 = -994;
  if (!v6)
  {
LABEL_28:
    *(a2 + 80) = *(result + 16);
    return result;
  }

  *(a2 + 80) = *(result + 8);
  v2[1] = *(a2 + 16);
  v10 = *(result + 44);
  v11 = *(result + 48);
  if (v10 == v11)
  {
    return result;
  }

  v12 = (v11 - 1);
  v13 = (v10 - 1);
  v14 = *(a2 + 24);
  v15 = *(a2 + 32);
  v16 = v12 - v13;
  if ((v12 - v13) < 2)
  {
    v17 = v13;
LABEL_39:
    v32 = v12 - v17;
    v33 = (v15 + 24 * v17 + 16);
    do
    {
      *(v33 - 2) = v14;
      *(v33 - 1) = v14;
      *v33 = 0;
      v33 += 24;
      --v32;
    }

    while (v32);
    return result;
  }

  v17 = (v16 & 0xFFFFFFFFFFFFFFFELL) + v13;
  v30 = v15 + 24 * v13 + 24;
  v31 = v16 & 0xFFFFFFFFFFFFFFFELL;
  do
  {
    *(v30 - 24) = v14;
    *(v30 - 16) = v14;
    *v30 = v14;
    *(v30 + 8) = v14;
    *(v30 - 8) = 0;
    *(v30 + 16) = 0;
    v30 += 48;
    v31 -= 2;
  }

  while (v31);
  if (v16 != (v16 & 0xFFFFFFFFFFFFFFFELL))
  {
    goto LABEL_39;
  }

  return result;
}

uint64_t sub_27138120C(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    *(a3 + 80) = *(result + 16);
    return result;
  }

  *(a3 + 80) = *(result + 8);
  v3 = *(result + 44);
  *(*(a3 + 56) + 16 * *(result + 40) + 8) = *(a3 + 16);
  v4 = *(result + 48);
  if (v3 != v4)
  {
    v5 = (v4 - 1);
    v6 = (v3 - 1);
    v7 = *(a3 + 24);
    v8 = *(a3 + 32);
    v9 = v5 - v6;
    if ((v5 - v6) < 2)
    {
      v10 = v6;
LABEL_9:
      v13 = v5 - v10;
      v14 = (v8 + 24 * v10 + 16);
      do
      {
        *(v14 - 2) = v7;
        *(v14 - 1) = v7;
        *v14 = 0;
        v14 += 24;
        --v13;
      }

      while (v13);
      return result;
    }

    v10 = (v9 & 0xFFFFFFFFFFFFFFFELL) + v6;
    v11 = v8 + 24 * v6 + 24;
    v12 = v9 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      *(v11 - 24) = v7;
      *(v11 - 16) = v7;
      *v11 = v7;
      *(v11 + 8) = v7;
      *(v11 - 8) = 0;
      *(v11 + 16) = 0;
      v11 += 48;
      v12 -= 2;
    }

    while (v12);
    if (v9 != (v9 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_9;
    }
  }

  return result;
}

void *sub_2713812D4(void *a1)
{
  *a1 = &unk_288106FF8;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = &unk_288107028;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_271381388(void *a1)
{
  *a1 = &unk_288106FF8;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = &unk_288107028;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271381474(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_271381488(void *a1)
{
  *a1 = &unk_288106FF8;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = &unk_288107028;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_27138153C(void *a1)
{
  *a1 = &unk_288106FF8;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = &unk_288107028;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27138161C(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  v3 = 8;
  if (a2)
  {
    v3 = 16;
  }

  *(a3 + 80) = *(result + v3);
  return result;
}

uint64_t sub_271381658(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_27138166C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743BE550](exception, 15);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void *sub_2713816C4(void *result)
{
  *result = &unk_288107028;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_271381738(void *a1)
{
  *a1 = &unk_288107028;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713817C8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || !*v2)
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    *(a2 + 80) = *(result + 8);
  }

  return result;
}

uint64_t sub_271381808(uint64_t a1, unsigned __int8 a2)
{
  if (((a2 & 0xF8) == 0x30 || (a2 & 0xFE) == 0x38) && a2 - 49 <= 8)
  {
    if (a2 - 48 <= *(a1 + 28))
    {
      sub_27137DB6C(a1);
    }

    sub_27137DB14();
  }

  return 0;
}

uint64_t sub_27138186C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if ((a5 & 0x80) != 0)
  {
    v9 = a5 & 0xFFA;
  }

  else
  {
    v9 = a5;
  }

  v10 = *(a1 + 28);
  *(a4 + 24) = a3;
  v11 = (a4 + 24);
  *(a4 + 32) = a3;
  *(a4 + 40) = 0;
  sub_27137CB94(a4, (v10 + 1), (a4 + 24));
  *(a4 + 48) = a2;
  *(a4 + 56) = a2;
  *(a4 + 64) = 0;
  *(a4 + 72) = *v11;
  *(a4 + 88) = *(a4 + 40);
  if ((v9 & 0x800) == 0)
  {
    *(a4 + 104) = a2;
  }

  *(a4 + 96) = 1;
  if ((*(a1 + 24) & 0x1F0) == 0)
  {
    if (sub_27137C6D4(a1, a2, a3, a4, v9, (v9 & 0x800) == 0))
    {
      goto LABEL_28;
    }

    goto LABEL_13;
  }

  if (*(a1 + 28))
  {
    if (sub_271382478(a1, a2, a3, a4, v9, (v9 & 0x800) == 0))
    {
      goto LABEL_28;
    }

LABEL_13:
    if (a2 != a3 && (v9 & 0x40) == 0)
    {
      for (i = a2 + 1; i != a3; ++i)
      {
        sub_27137CB94(a4, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3), v11);
        if ((*(a1 + 24) & 0x1F0) != 0)
        {
          if (*(a1 + 28))
          {
            if (sub_271382478(a1, i, a3, a4, v9 | 0x80u, 0))
            {
              goto LABEL_28;
            }
          }

          else if (sub_271381B78(a1, i, a3, a4, v9 | 0x80u, 0))
          {
            goto LABEL_28;
          }
        }

        else if (sub_27137C6D4(a1, i, a3, a4, v9 | 0x80u, 0))
        {
          goto LABEL_28;
        }

        sub_27137CB94(a4, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3), v11);
      }

      sub_27137CB94(a4, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3), v11);
      if ((*(a1 + 24) & 0x1F0) != 0)
      {
        if (*(a1 + 28))
        {
          if (sub_271382478(a1, i, a3, a4, v9 | 0x80u, 0))
          {
            goto LABEL_28;
          }
        }

        else if (sub_271381B78(a1, i, a3, a4, v9 | 0x80u, 0))
        {
          goto LABEL_28;
        }
      }

      else if (sub_27137C6D4(a1, i, a3, a4, v9 | 0x80u, 0))
      {
        goto LABEL_28;
      }
    }

    result = 0;
    *(a4 + 8) = *a4;
    return result;
  }

  if ((sub_271381B78(a1, a2, a3, a4, v9, (v9 & 0x800) == 0) & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_28:
  if (*(a4 + 8) == *a4)
  {
    v13 = v11;
  }

  else
  {
    v13 = *a4;
  }

  v14 = *v13;
  *(a4 + 56) = *v13;
  *(a4 + 64) = *(a4 + 48) != v14;
  v15 = *(v13 + 1);
  *(a4 + 72) = v15;
  *(a4 + 88) = v15 != *(a4 + 80);
  return 1;
}

uint64_t sub_271381B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v82 = 0u;
  v83 = 0u;
  v81 = 0u;
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_93;
  }

  *v78 = 0;
  memset(&v78[8], 0, 48);
  *__p = 0uLL;
  memset(v80, 0, 21);
  sub_271382BE0(&v81);
  v12 = *(*(&v81 + 1) + 8 * ((v83.i64[0] + v83.i64[1]) / 0x2AuLL)) + 96 * ((v83.i64[0] + v83.i64[1]) % 0x2AuLL);
  v13 = *&v78[16];
  *v12 = *v78;
  *(v12 + 16) = v13;
  *(v12 + 40) = 0;
  *(v12 + 48) = 0;
  *(v12 + 32) = 0;
  memset(&v78[32], 0, 24);
  *(v12 + 56) = 0;
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  __p[0] = 0;
  __p[1] = 0;
  v80[0] = 0;
  v14 = v80[1];
  *(v12 + 85) = *(&v80[1] + 5);
  *(v12 + 80) = v14;
  v16 = v83.i64[1];
  v15 = v83.i64[0];
  v17 = ++v83.i64[1];
  v18 = *(&v81 + 1);
  v19 = *(a1 + 32);
  v20 = *(*(&v81 + 1) + 8 * ((v83.i64[0] + v16) / 0x2AuLL)) + 96 * ((v83.i64[0] + v16) % 0x2AuLL);
  *v20 = 0;
  *(v20 + 8) = a2;
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  v21 = *(v20 + 56);
  v22 = (*(v20 + 64) - v21) >> 4;
  v74 = a4;
  if (v19 <= v22)
  {
    if (v19 < v22)
    {
      *(v20 + 64) = v21 + 16 * v19;
    }
  }

  else
  {
    sub_27137D400(v20 + 56, v19 - v22);
    v17 = v83.i64[1];
    v15 = v83.i64[0];
    v18 = *(&v81 + 1);
  }

  v76 = 0;
  v23 = 0;
  v24 = 0;
  v25 = *(v18 + 8 * ((v15 + v17 - 1) / 0x2AuLL)) + 96 * ((v15 + v17 - 1) % 0x2AuLL);
  *(v25 + 80) = v6;
  *(v25 + 92) = a6;
  v75 = a3;
  v26 = a3 - a2;
  *(v25 + 88) = a5;
  do
  {
    if ((++v23 & 0xFFF) == 0 && (v23 >> 12) >= v26)
    {
      sub_27137CDD4();
    }

    v28 = *(*(&v81 + 1) + 8 * ((v17 + v83.i64[0] - 1) / 0x2AuLL)) + 96 * ((v17 + v83.i64[0] - 1) % 0x2AuLL);
    v29 = *(v28 + 80);
    if (v29)
    {
      (*(*v29 + 16))(v29, v28);
    }

    v30 = *v28;
    if (*v28 <= -995)
    {
      if (v30 != -1000)
      {
        if (v30 == -999)
        {
          goto LABEL_9;
        }

        if (v30 != -995)
        {
LABEL_107:
          sub_27137CE2C();
        }

        v31 = v83.i64[0];
        if (!v83.i64[0])
        {
          sub_2713832C4(&v81);
          v31 = v83.i64[0];
        }

        v32 = (*(&v81 + 1) + 8 * (v31 / 0x2A));
        v33 = *v32 + 96 * (v31 % 0x2A);
        if (v82 == *(&v81 + 1))
        {
          v33 = 0;
        }

        if (v33 == *v32)
        {
          v33 = *(v32 - 1) + 4032;
        }

        v34 = *(v28 + 16);
        *(v33 - 96) = *v28;
        *(v33 - 80) = v34;
        *(v33 - 56) = 0;
        *(v33 - 48) = 0;
        *(v33 - 64) = 0;
        *(v33 - 64) = *(v28 + 32);
        *(v33 - 48) = *(v28 + 48);
        *(v28 + 32) = 0;
        *(v28 + 40) = 0;
        *(v28 + 48) = 0;
        *(v33 - 40) = 0;
        *(v33 - 32) = 0;
        *(v33 - 24) = 0;
        *(v33 - 40) = *(v28 + 56);
        *(v33 - 24) = *(v28 + 72);
        *(v28 + 56) = 0;
        *(v28 + 64) = 0;
        *(v28 + 72) = 0;
        v35 = *(v28 + 80);
        *(v33 - 11) = *(v28 + 85);
        *(v33 - 16) = v35;
        v36 = vdupq_laneq_s64(v83, 1);
        v83 = vaddq_s64(v83, xmmword_27188D260);
        v36.i64[0] = vaddq_s64(v36, v83).u64[0];
        v37 = (*(*(&v81 + 1) + 8 * (v36.i64[0] / 0x2AuLL)) + 96 * (v36.i64[0] % 0x2AuLL));
        v38 = v37[7];
        if (!v38)
        {
          goto LABEL_39;
        }

LABEL_38:
        v37[8] = v38;
        operator delete(v38);
LABEL_39:
        v40 = v37[4];
        if (v40)
        {
          v37[5] = v40;
          operator delete(v40);
        }

        v41 = 42 * ((v82 - *(&v81 + 1)) >> 3) - 1;
        v42 = v83;
        --v83.i64[1];
        if (v82 == *(&v81 + 1))
        {
          v41 = 0;
        }

        if ((v41 - (v42.i64[1] + v42.i64[0]) + 1) >= 0x54)
        {
          operator delete(*(v82 - 8));
          *&v82 = v82 - 8;
        }

        goto LABEL_9;
      }

      v39 = *(v28 + 16);
      if ((a5 & 0x20) != 0 && v39 == a2 || (a5 & 0x1000) != 0 && v39 != v75)
      {
        goto LABEL_37;
      }

      v49 = v39 - *(v28 + 8);
      if (v24 <= v49)
      {
        v50 = v49;
      }

      else
      {
        v50 = v24;
      }

      if (v76)
      {
        v24 = v50;
      }

      else
      {
        v24 = v49;
      }

      if (v24 == v26)
      {
        v51 = *(&v81 + 1);
        v52 = v82;
        if (v82 == *(&v81 + 1))
        {
          v83.i64[1] = 0;
          v64 = 0;
        }

        else
        {
          v53 = (*(&v81 + 1) + 8 * (v83.i64[0] / 0x2AuLL));
          v54 = (*v53 + 96 * (v83.i64[0] % 0x2AuLL));
          v55 = *(*(&v81 + 1) + 8 * ((v83.i64[1] + v83.i64[0]) / 0x2AuLL)) + 96 * ((v83.i64[1] + v83.i64[0]) % 0x2AuLL);
          if (v54 != v55)
          {
            do
            {
              v56 = v54[7];
              if (v56)
              {
                v54[8] = v56;
                operator delete(v56);
              }

              v57 = v54[4];
              if (v57)
              {
                v54[5] = v57;
                operator delete(v57);
              }

              v54 += 12;
              if ((v54 - *v53) == 4032)
              {
                v58 = v53[1];
                ++v53;
                v54 = v58;
              }
            }

            while (v54 != v55);
            v51 = *(&v81 + 1);
            v52 = v82;
          }

          v83.i64[1] = 0;
          v64 = (v52 - v51) >> 3;
          if (v64 >= 3)
          {
            do
            {
              operator delete(*v51);
              v51 = (*(&v81 + 1) + 8);
              *(&v81 + 1) = v51;
              v64 = (v82 - v51) >> 3;
            }

            while (v64 > 2);
          }
        }

        if (v64 == 1)
        {
          v65 = 21;
LABEL_88:
          v83.i64[0] = v65;
        }

        else if (v64 == 2)
        {
          v65 = 42;
          goto LABEL_88;
        }

        v76 = 1;
        v24 = v26;
        goto LABEL_9;
      }

      v59 = (*(*(&v81 + 1) + 8 * ((v83.i64[1] + v83.i64[0] - 1) / 0x2AuLL)) + 96 * ((v83.i64[1] + v83.i64[0] - 1) % 0x2AuLL));
      v60 = v59[7];
      if (v60)
      {
        v59[8] = v60;
        operator delete(v60);
      }

      v61 = v59[4];
      if (v61)
      {
        v59[5] = v61;
        operator delete(v61);
      }

      v62 = 42 * ((v82 - *(&v81 + 1)) >> 3) - 1;
      v63 = v83;
      --v83.i64[1];
      if (v82 == *(&v81 + 1))
      {
        v62 = 0;
      }

      if ((v62 - (v63.i64[1] + v63.i64[0]) + 1) >= 0x54)
      {
        operator delete(*(v82 - 8));
        *&v82 = v82 - 8;
      }

      v76 = 1;
    }

    else
    {
      if (v30 <= -993)
      {
        if (v30 == -994)
        {
          goto LABEL_9;
        }

        if (v30 != -993)
        {
          goto LABEL_107;
        }

LABEL_37:
        v37 = (*(*(&v81 + 1) + 8 * ((v83.i64[1] + v83.i64[0] - 1) / 0x2AuLL)) + 96 * ((v83.i64[1] + v83.i64[0] - 1) % 0x2AuLL));
        v38 = v37[7];
        if (v38)
        {
          goto LABEL_38;
        }

        goto LABEL_39;
      }

      if (v30 == -992)
      {
        sub_27137D554(v78, v28);
        (*(**(v28 + 80) + 24))(*(v28 + 80), 1, v28);
        (*(*v80[1] + 24))(v80[1], 0, v78);
        v43 = *(&v81 + 1);
        if (v82 == *(&v81 + 1))
        {
          v44 = 0;
        }

        else
        {
          v44 = 42 * ((v82 - *(&v81 + 1)) >> 3) - 1;
        }

        v45 = v83.i64[1] + v83.i64[0];
        if (v44 == v83.i64[1] + v83.i64[0])
        {
          sub_271382BE0(&v81);
          v43 = *(&v81 + 1);
          v45 = v83.i64[1] + v83.i64[0];
        }

        v46 = *(v43 + 8 * (v45 / 0x2A)) + 96 * (v45 % 0x2A);
        v47 = *&v78[16];
        *v46 = *v78;
        *(v46 + 16) = v47;
        *(v46 + 40) = 0;
        *(v46 + 48) = 0;
        *(v46 + 32) = 0;
        *(v46 + 32) = *&v78[32];
        *(v46 + 48) = *&v78[48];
        memset(&v78[32], 0, 24);
        *(v46 + 56) = 0;
        *(v46 + 64) = 0;
        *(v46 + 72) = 0;
        *(v46 + 56) = *__p;
        *(v46 + 72) = v80[0];
        __p[0] = 0;
        __p[1] = 0;
        v80[0] = 0;
        v48 = v80[1];
        *(v46 + 85) = *(&v80[1] + 5);
        *(v46 + 80) = v48;
        ++v83.i64[1];
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (*&v78[32])
        {
          *&v78[40] = *&v78[32];
          operator delete(*&v78[32]);
        }
      }

      else if (v30 != -991)
      {
        goto LABEL_107;
      }
    }

LABEL_9:
    v17 = v83.i64[1];
  }

  while (v83.i64[1]);
  if (v76)
  {
    v66 = *v74;
    *v66 = a2;
    *(v66 + 8) = a2 + v24;
    v67 = 1;
    *(v66 + 16) = 1;
    v68 = *(&v81 + 1);
    v69 = v82;
    v83.i64[1] = 0;
    v70 = (v82 - *(&v81 + 1)) >> 3;
    if (v70 < 3)
    {
      goto LABEL_95;
    }

    goto LABEL_94;
  }

LABEL_93:
  v67 = 0;
  v68 = *(&v81 + 1);
  v69 = v82;
  v83.i64[1] = 0;
  v70 = (v82 - *(&v81 + 1)) >> 3;
  if (v70 < 3)
  {
    goto LABEL_95;
  }

  do
  {
LABEL_94:
    operator delete(*v68);
    v69 = v82;
    v68 = (*(&v81 + 1) + 8);
    *(&v81 + 1) = v68;
    v70 = (v82 - v68) >> 3;
  }

  while (v70 > 2);
LABEL_95:
  if (v70 == 1)
  {
    v71 = 21;
LABEL_99:
    v83.i64[0] = v71;
  }

  else if (v70 == 2)
  {
    v71 = 42;
    goto LABEL_99;
  }

  if (v68 != v69)
  {
    do
    {
      v72 = *v68++;
      operator delete(v72);
    }

    while (v68 != v69);
    if (v82 != *(&v81 + 1))
    {
      *&v82 = v82 + ((*(&v81 + 1) - v82 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (v81)
  {
    operator delete(v81);
  }

  return v67;
}