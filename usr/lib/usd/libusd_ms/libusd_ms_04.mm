void sub_29A019EA0(uint64_t a1, char **a2)
{
  if (a2)
  {
    sub_29A019EE8(a2, a2[1]);

    operator delete(a2);
  }
}

void sub_29A019EE8(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_29A019EE8(a1, *a2);
    sub_29A019EE8(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void sub_29A019F4C(char ***a1, char **a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    sub_29A019EE8(v2, v2[1]);

    operator delete(v2);
  }
}

void *sub_29A019FA0(void *a1, void *a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A203C9C8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  sub_29A017894(a1, a2, a2);
  return a1;
}

void sub_29A01A008(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v3 = sub_29A021F70(v1);
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A01A028(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29A01A050(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = sub_29A021F70(v1);

    operator delete(v2);
  }
}

uint64_t sub_29A01A084(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A203CA18))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29A01A0C4(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A203CA40;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A01A11C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    Alembic::Ogawa::v12::OData::~OData(v1);
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A01A13C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29A01A164(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    Alembic::Ogawa::v12::OData::~OData(v1);

    operator delete(v2);
  }
}

uint64_t sub_29A01A198(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A203CA90))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29A01A1D8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A203CAB8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  v6 = 0;
  sub_29A01A320(&v6, 0);
  return a1;
}

void sub_29A01A24C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A01A320(va, 0);
  _Unwind_Resume(a1);
}

void sub_29A01A268(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A01A298(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A203CB08))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29A01A2D8(int a1, void *__p)
{
  if (__p)
  {
    v3 = __p[5];
    if (v3)
    {
      sub_29A014BEC(v3);
    }

    operator delete(__p);
  }
}

void sub_29A01A320(void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = v2[5];
    if (v3)
    {
      sub_29A014BEC(v3);
    }

    operator delete(v2);
  }
}

uint64_t *sub_29A01A374(uint64_t *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A203CB30;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (a2)
  {
    v5 = (a2 + 8);
  }

  else
  {
    v5 = 0;
  }

  sub_29A017894(a1, v5, a2);
  return a1;
}

void sub_29A01A3E4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2844E4(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A01A400(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A01A428(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A01A458(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A203CB80))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A01A498(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  *(a1 + 48) = 0;
  *(a1 + 40) = a1 + 48;
  v6 = (a1 + 40);
  *(a1 + 56) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  v7 = *a2;
  if (!*a2)
  {
    sub_29A008864(&v38);
    sub_29A00911C(v40, "invalid compound data group", 27);
    std::stringbuf::str();
    sub_29A008C60(v37, __p);
    if (v36 < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v32 = sub_29A008E1C(exception, v37);
    __cxa_throw(v32, &unk_2A203B108, sub_29A008B08);
  }

  v11 = *(a2 + 8);
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    v12 = *(a1 + 24);
    *(a1 + 16) = v7;
    *(a1 + 24) = v11;
    if (v12)
    {
      sub_29A014BEC(v12);
      v7 = *(a1 + 16);
    }
  }

  else
  {
    *(a1 + 16) = v7;
    *(a1 + 24) = 0;
  }

  NumChildren = Alembic::Ogawa::v12::IGroup::getNumChildren(v7);
  if (NumChildren)
  {
    v14 = NumChildren - 1;
    if (Alembic::Ogawa::v12::IGroup::isChildData(*(a1 + 16), NumChildren - 1))
    {
      v38 = 0;
      v39 = 0;
      v40[0] = 0;
      v15 = *(a1 + 24);
      v33 = *(a1 + 16);
      v34 = v15;
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_29A027890(&v33, v14, a3, a4, a5, &v38);
      if (v34)
      {
        sub_29A014BEC(v34);
      }

      v17 = v38;
      v16 = v39;
      v18 = v39 - v38;
      if (is_mul_ok(v18, 0x60uLL))
      {
        v19 = (32 * (((v39 - v38) >> 3) + v39 - v38)) | 0x10;
      }

      else
      {
        v19 = -1;
      }

      v20 = operator new[](v19);
      *v20 = 96;
      v20[1] = v18;
      if (v16 != v17)
      {
        v21 = 0;
        v22 = 96 * v18;
        do
        {
          v23 = &v20[v21 / 8];
          *(v23 + 1) = 0u;
          *(v23 + 2) = 0u;
          pthread_mutex_init(&v20[v21 / 8 + 6], 0);
          v21 += 96;
        }

        while (v22 != v21);
        v17 = v38;
        v16 = v39;
      }

      *(a1 + 32) = v20 + 2;
      if (v16 != v17)
      {
        v24 = 0;
        do
        {
          __p[0] = *&v17[v24];
          sub_29A01BB28(v6, __p[0], &unk_29B430AE4, __p)[7] = v24;
          v25 = *(a1 + 32);
          v26 = v38[v24];
          v27 = *(&v38[v24] + 1);
          if (v27)
          {
            atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
          }

          v28 = v25 + 96 * v24;
          v29 = *(v28 + 8);
          *v28 = v26;
          if (v29)
          {
            sub_29A014BEC(v29);
          }

          ++v24;
          v17 = v38;
        }

        while (v24 < v39 - v38);
      }

      v37[0] = &v38;
      sub_29A0176E4(v37);
    }
  }

  return a1;
}

void sub_29A01A73C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v12.__vftable = va_arg(va1, std::exception_vtbl *);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  sub_29A019EE8(v8, *(v7 + 48));
  v10 = *(v7 + 24);
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  v11 = *(v7 + 8);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A01A7E8(uint64_t a1)
{
  pthread_mutex_destroy((a1 + 32));
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  return a1;
}

uint64_t sub_29A01A834(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 - 8);
    if (v3)
    {
      v4 = v2 + 96 * v3 - 88;
      v5 = -96 * v3;
      do
      {
        pthread_mutex_destroy((v4 + 24));
        v6 = *(v4 + 16);
        if (v6)
        {
          std::__shared_weak_count::__release_weak(v6);
        }

        if (*v4)
        {
          sub_29A014BEC(*v4);
        }

        v4 -= 96;
        v5 += 96;
      }

      while (v5);
    }

    operator delete[]((v2 - 16));
  }

  sub_29A019EE8(a1 + 40, *(a1 + 48));
  v7 = *(a1 + 24);
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  return a1;
}

uint64_t sub_29A01A8EC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a1 + 56) < a3)
  {
    sub_29A008864(&v12);
    v4 = sub_29A00911C(v13, "Out of range index in ", 22);
    v5 = sub_29A00911C(v4, "CprData::getPropertyHeader: ", 28);
    MEMORY[0x29C2C1F00](v5, a3);
    std::stringbuf::str();
    sub_29A008C60(v11, &__p);
    if (v10 < 0)
    {
      operator delete(__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v7 = sub_29A008E1C(exception, v11);
    __cxa_throw(v7, &unk_2A203B108, sub_29A008B08);
  }

  return *(*(a1 + 32) + 96 * a3);
}

void sub_29A01A9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7.__vftable = va_arg(va1, std::exception_vtbl *);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_29A01A9EC(uint64_t a1, uint64_t a2, const void **a3)
{
  v5 = sub_29A01BCCC(a1 + 40, a3);
  if (a1 + 48 == v5)
  {
    return 0;
  }

  v7 = *(a2 + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = sub_29A01A8EC(a1, v6, *(v5 + 56));
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  return v8;
}

void sub_29A01AA64(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A01AA7C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = sub_29A01BCCC(a1 + 40, a3);
  if (a1 + 48 == result)
  {
    *a4 = 0;
    a4[1] = 0;
    return result;
  }

  v9 = result;
  v10 = *(a1 + 32) + 96 * *(result + 56);
  if (*(*v10 + 24) != 1)
  {
    sub_29A008864(&lpsrc);
    v25 = sub_29A00911C(v51, "Tried to read a scalar property from a non-scalar: ", 51);
    v26 = *(a3 + 23);
    if (v26 >= 0)
    {
      v27 = a3;
    }

    else
    {
      v27 = *a3;
    }

    if (v26 >= 0)
    {
      v28 = *(a3 + 23);
    }

    else
    {
      v28 = *(a3 + 8);
    }

    v29 = sub_29A00911C(v25, v27, v28);
    v30 = sub_29A00911C(v29, ", type: ", 8);
    MEMORY[0x29C2C1ED0](v30, *(*v10 + 24));
    std::stringbuf::str();
    sub_29A008C60(&v47, __p);
    if (v46 < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v32 = sub_29A008E1C(exception, &v47);
    __cxa_throw(v32, &unk_2A203B108, sub_29A008B08);
  }

  pthread_mutex_lock((v10 + 32));
  v11 = *(v10 + 24);
  if (v11)
  {
    v12 = std::__shared_weak_count::lock(v11);
    v13 = v12;
    if (v12)
    {
      v14 = *(v10 + 16);
      v15 = v12;
      if (v14)
      {
        goto LABEL_45;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  (*(**a2 + 24))(&v47);
  (*(*v47 + 24))(&lpsrc);
  v16 = lpsrc;
  {
    v17 = v50;
    if (v50)
    {
      atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v17 = 0;
  }

  sub_29A0173F4(v16, &v43);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  if (v50)
  {
    sub_29A014BEC(v50);
  }

  if (v48)
  {
    sub_29A014BEC(v48);
  }

  Alembic::Ogawa::v12::IGroup::getGroup(*(a1 + 16), *(v9 + 56), 1, *(v43 + 8), &v41);
  v18 = v41;
  if (!v41)
  {
    sub_29A008864(&lpsrc);
    sub_29A00911C(v51, "Scalar Property not backed by a valid group.", 44);
    std::stringbuf::str();
    sub_29A008C60(&v47, __p);
    if (v46 < 0)
    {
      operator delete(__p[0]);
    }

    v33 = __cxa_allocate_exception(0x20uLL);
    v34 = sub_29A008E1C(v33, &v47);
    __cxa_throw(v34, &unk_2A203B108, sub_29A008B08);
  }

  v19 = operator new(0x48uLL);
  v20 = v19;
  v21 = a2[1];
  v39 = *a2;
  v40 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v37 = v18;
  v38 = v42;
  if (v42)
  {
    atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v35 = *v10;
  v22 = *(v10 + 8);
  v36 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A0297DC(v19, &v39, &v37, &v35);
  sub_29A01BD5C(&lpsrc, v20);
  v14 = lpsrc;
  v15 = v50;
  lpsrc = 0;
  v50 = 0;
  if (v13)
  {
    sub_29A014BEC(v13);
    if (v50)
    {
      sub_29A014BEC(v50);
    }
  }

  if (v36)
  {
    sub_29A014BEC(v36);
  }

  if (v38)
  {
    sub_29A014BEC(v38);
  }

  if (v40)
  {
    sub_29A014BEC(v40);
  }

  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v23 = *(v10 + 24);
  *(v10 + 16) = v14;
  *(v10 + 24) = v15;
  if (v23)
  {
    std::__shared_weak_count::__release_weak(v23);
  }

  if (v42)
  {
    sub_29A014BEC(v42);
  }

  if (v44)
  {
    sub_29A014BEC(v44);
  }

  if (!v14)
  {
LABEL_48:
    *a4 = 0;
    a4[1] = 0;
    if (v15)
    {
      goto LABEL_49;
    }

    return pthread_mutex_unlock((v10 + 32));
  }

LABEL_45:
  if (!v24)
  {
    goto LABEL_48;
  }

  *a4 = v24;
  a4[1] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_49:
    sub_29A014BEC(v15);
  }

  return pthread_mutex_unlock((v10 + 32));
}

void sub_29A01AF00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::exception a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_29A008F20(&a22);
  sub_29A008B0C(&a26);
  _Unwind_Resume(a1);
}

uint64_t sub_29A01B004@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = sub_29A01BCCC(a1 + 40, a3);
  if (a1 + 48 == result)
  {
    *a4 = 0;
    a4[1] = 0;
    return result;
  }

  v9 = result;
  v10 = *(a1 + 32) + 96 * *(result + 56);
  if (*(*v10 + 24) != 2)
  {
    sub_29A008864(&lpsrc);
    v25 = sub_29A00911C(v51, "Tried to read an array property from a non-array: ", 50);
    v26 = *(a3 + 23);
    if (v26 >= 0)
    {
      v27 = a3;
    }

    else
    {
      v27 = *a3;
    }

    if (v26 >= 0)
    {
      v28 = *(a3 + 23);
    }

    else
    {
      v28 = *(a3 + 8);
    }

    v29 = sub_29A00911C(v25, v27, v28);
    v30 = sub_29A00911C(v29, ", type: ", 8);
    MEMORY[0x29C2C1ED0](v30, *(*v10 + 24));
    std::stringbuf::str();
    sub_29A008C60(&v47, __p);
    if (v46 < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v32 = sub_29A008E1C(exception, &v47);
    __cxa_throw(v32, &unk_2A203B108, sub_29A008B08);
  }

  pthread_mutex_lock((v10 + 32));
  v11 = *(v10 + 24);
  if (v11)
  {
    v12 = std::__shared_weak_count::lock(v11);
    v13 = v12;
    if (v12)
    {
      v14 = *(v10 + 16);
      v15 = v12;
      if (v14)
      {
        goto LABEL_45;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  (*(**a2 + 24))(&v47);
  (*(*v47 + 24))(&lpsrc);
  v16 = lpsrc;
  {
    v17 = v50;
    if (v50)
    {
      atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v17 = 0;
  }

  sub_29A0173F4(v16, &v43);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  if (v50)
  {
    sub_29A014BEC(v50);
  }

  if (v48)
  {
    sub_29A014BEC(v48);
  }

  Alembic::Ogawa::v12::IGroup::getGroup(*(a1 + 16), *(v9 + 56), 1, *(v43 + 8), &v41);
  v18 = v41;
  if (!v41)
  {
    sub_29A008864(&lpsrc);
    sub_29A00911C(v51, "Array Property not backed by a valid group.", 43);
    std::stringbuf::str();
    sub_29A008C60(&v47, __p);
    if (v46 < 0)
    {
      operator delete(__p[0]);
    }

    v33 = __cxa_allocate_exception(0x20uLL);
    v34 = sub_29A008E1C(v33, &v47);
    __cxa_throw(v34, &unk_2A203B108, sub_29A008B08);
  }

  v19 = operator new(0x48uLL);
  v20 = v19;
  v21 = a2[1];
  v39 = *a2;
  v40 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v37 = v18;
  v38 = v42;
  if (v42)
  {
    atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v35 = *v10;
  v22 = *(v10 + 8);
  v36 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A013E44(v19, &v39, &v37, &v35);
  sub_29A01BE80(&lpsrc, v20);
  v14 = lpsrc;
  v15 = v50;
  lpsrc = 0;
  v50 = 0;
  if (v13)
  {
    sub_29A014BEC(v13);
    if (v50)
    {
      sub_29A014BEC(v50);
    }
  }

  if (v36)
  {
    sub_29A014BEC(v36);
  }

  if (v38)
  {
    sub_29A014BEC(v38);
  }

  if (v40)
  {
    sub_29A014BEC(v40);
  }

  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v23 = *(v10 + 24);
  *(v10 + 16) = v14;
  *(v10 + 24) = v15;
  if (v23)
  {
    std::__shared_weak_count::__release_weak(v23);
  }

  if (v42)
  {
    sub_29A014BEC(v42);
  }

  if (v44)
  {
    sub_29A014BEC(v44);
  }

  if (!v14)
  {
LABEL_48:
    *a4 = 0;
    a4[1] = 0;
    if (v15)
    {
      goto LABEL_49;
    }

    return pthread_mutex_unlock((v10 + 32));
  }

LABEL_45:
  if (!v24)
  {
    goto LABEL_48;
  }

  *a4 = v24;
  a4[1] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_49:
    sub_29A014BEC(v15);
  }

  return pthread_mutex_unlock((v10 + 32));
}

void sub_29A01B488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::exception a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_29A008F20(&a22);
  sub_29A008B0C(&a26);
  _Unwind_Resume(a1);
}

uint64_t sub_29A01B58C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = sub_29A01BCCC(a1 + 40, a3);
  if (a1 + 48 == result)
  {
    *a4 = 0;
    a4[1] = 0;
    return result;
  }

  v9 = result;
  v10 = *(a1 + 32) + 96 * *(result + 56);
  if (*(*v10 + 24))
  {
    sub_29A008864(&lpsrc);
    v26 = sub_29A00911C(v52, "Tried to read a compound property from a non-compound: ", 55);
    v27 = *(a3 + 23);
    if (v27 >= 0)
    {
      v28 = a3;
    }

    else
    {
      v28 = *a3;
    }

    if (v27 >= 0)
    {
      v29 = *(a3 + 23);
    }

    else
    {
      v29 = *(a3 + 8);
    }

    v30 = sub_29A00911C(v26, v28, v29);
    v31 = sub_29A00911C(v30, ", type: ", 8);
    MEMORY[0x29C2C1ED0](v31, *(*v10 + 24));
    std::stringbuf::str();
    sub_29A008C60(&v48, __p);
    if (v47 < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v33 = sub_29A008E1C(exception, &v48);
    __cxa_throw(v33, &unk_2A203B108, sub_29A008B08);
  }

  pthread_mutex_lock((v10 + 32));
  v11 = *(v10 + 24);
  if (v11)
  {
    v12 = std::__shared_weak_count::lock(v11);
    v13 = v12;
    if (v12)
    {
      v14 = *(v10 + 16);
      v15 = v12;
      if (v14)
      {
        goto LABEL_46;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  (*(**a2 + 24))(&v48);
  (*(*v48 + 24))(&lpsrc);
  if (!lpsrc)
  {
    v16 = 0;
    goto LABEL_14;
  }

  if (!v16)
  {
LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  v17 = v51;
  if (v51)
  {
    atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_15:
  if (v51)
  {
    sub_29A014BEC(v51);
  }

  if (v49)
  {
    sub_29A014BEC(v49);
  }

  sub_29A0173F4(v16, &v44);
  Alembic::Ogawa::v12::IGroup::getGroup(*(a1 + 16), *(v9 + 56), 0, *(v44 + 8), &v42);
  v18 = v42;
  if (!v42)
  {
    sub_29A008864(&lpsrc);
    sub_29A00911C(v52, "Compound Property not backed by a valid group.", 46);
    std::stringbuf::str();
    sub_29A008C60(&v48, __p);
    if (v47 < 0)
    {
      operator delete(__p[0]);
    }

    v34 = __cxa_allocate_exception(0x20uLL);
    v35 = sub_29A008E1C(v34, &v48);
    __cxa_throw(v35, &unk_2A203B108, sub_29A008B08);
  }

  v19 = operator new(0x58uLL);
  v20 = a2[1];
  v40 = *a2;
  v41 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v38 = v18;
  v39 = v43;
  if (v43)
  {
    atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v36 = *v10;
  v21 = *(v10 + 8);
  v37 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = *(v44 + 8);
  v23 = sub_29A017500(v16);
  sub_29A01C5E4(v19, &v40, &v38, &v36, v22, v23);
  sub_29A01BFA4(&lpsrc, v19);
  v14 = lpsrc;
  v15 = v51;
  lpsrc = 0;
  v51 = 0;
  if (v13)
  {
    sub_29A014BEC(v13);
    if (v51)
    {
      sub_29A014BEC(v51);
    }
  }

  if (v37)
  {
    sub_29A014BEC(v37);
  }

  if (v39)
  {
    sub_29A014BEC(v39);
  }

  if (v41)
  {
    sub_29A014BEC(v41);
  }

  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v24 = *(v10 + 24);
  *(v10 + 16) = v14;
  *(v10 + 24) = v15;
  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }

  if (v43)
  {
    sub_29A014BEC(v43);
  }

  if (v45)
  {
    sub_29A014BEC(v45);
  }

  if (v17)
  {
    sub_29A014BEC(v17);
  }

  if (!v14)
  {
LABEL_49:
    *a4 = 0;
    a4[1] = 0;
    if (v15)
    {
      goto LABEL_50;
    }

    return pthread_mutex_unlock((v10 + 32));
  }

LABEL_46:
  if (!v25)
  {
    goto LABEL_49;
  }

  *a4 = v25;
  a4[1] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_50:
    sub_29A014BEC(v15);
  }

  return pthread_mutex_unlock((v10 + 32));
}

void sub_29A01BA30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::exception a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_29A008F20(&a22);
  sub_29A008B0C(&a26);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A01BB28(uint64_t **a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v6 = sub_29A00B0D0(a1, &v9, a2);
  result = *v6;
  if (!*v6)
  {
    sub_29A01BBC0(a1, a4, &v8);
    sub_29A00B204(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

_BYTE *sub_29A01BBC0@<X0>(uint64_t a1@<X0>, __int128 **a2@<X2>, void *a3@<X8>)
{
  result = operator new(0x40uLL);
  v7 = result;
  *a3 = result;
  a3[1] = a1;
  a3[2] = 0;
  v8 = *a2;
  if (*(*a2 + 23) < 0)
  {
    result = sub_29A008D14(result + 32, *v8, *(v8 + 1));
  }

  else
  {
    v9 = *v8;
    *(result + 6) = *(v8 + 2);
    *(result + 2) = v9;
  }

  *(v7 + 7) = 0;
  *(a3 + 16) = 1;
  return result;
}

void sub_29A01BC4C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A01BC68(v3, v2);
  _Unwind_Resume(a1);
}

void sub_29A01BC68(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_29A01BCCC(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = sub_29A00AFCC(a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || sub_29A00AFCC(a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

uint64_t *sub_29A01BD5C(uint64_t *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A203CBA8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (a2)
  {
    v5 = (a2 + 8);
  }

  else
  {
    v5 = 0;
  }

  sub_29A017894(a1, v5, a2);
  return a1;
}

void sub_29A01BDCC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B284568(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A01BDE8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A01BE10(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A01BE40(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A203CBF8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_29A01BE80(uint64_t *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A203CC20;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (a2)
  {
    v5 = (a2 + 8);
  }

  else
  {
    v5 = 0;
  }

  sub_29A017894(a1, v5, a2);
  return a1;
}

void sub_29A01BEF0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B284568(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A01BF0C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A01BF34(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A01BF64(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A203CC70))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_29A01BFA4(uint64_t *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A203CC98;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (a2)
  {
    v5 = (a2 + 8);
  }

  else
  {
    v5 = 0;
  }

  sub_29A017894(a1, v5, a2);
  return a1;
}

void sub_29A01C014(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B284568(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A01C030(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A01C058(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A01C088(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A203CCE8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A01C0C8(uint64_t a1, void *a2, uint64_t *a3, void *a4, unint64_t a5, void *a6)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A203CD10;
  *(a1 + 24) = *a2;
  v10 = a2[1];
  *(a1 + 32) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = *a4;
  v11 = a4[1];
  *(a1 + 48) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 56) = 0u;
  v12 = a1 + 56;
  *(a1 + 72) = 0u;
  v13 = *(a1 + 24);
  if (!v13)
  {
    sub_29A008864(&v38);
    sub_29A00911C(v40, "Invalid parent in CprImpl(Compound)", 35);
    std::stringbuf::str();
    sub_29A008C60(v37, __p);
    if (v36 < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v23 = sub_29A008E1C(exception, v37);
    __cxa_throw(v23, &unk_2A203B108, sub_29A008B08);
  }

  v14 = *(a1 + 40);
  if (!v14)
  {
    sub_29A008864(&v38);
    sub_29A00911C(v40, "invalid header in CprImpl(Compound)", 35);
    std::stringbuf::str();
    sub_29A008C60(v37, __p);
    if (v36 < 0)
    {
      operator delete(__p[0]);
    }

    v24 = __cxa_allocate_exception(0x20uLL);
    v25 = sub_29A008E1C(v24, v37);
    __cxa_throw(v25, &unk_2A203B108, sub_29A008B08);
  }

  v15 = *(v14 + 24);
  if (v15)
  {
    sub_29A008864(&v38);
    v26 = sub_29A00911C(v40, "Tried to create compound property with the wrong property type: ", 64);
    MEMORY[0x29C2C1ED0](v26, v15);
    std::stringbuf::str();
    sub_29A008C60(v37, __p);
    if (v36 < 0)
    {
      operator delete(__p[0]);
    }

    v27 = __cxa_allocate_exception(0x20uLL);
    v28 = sub_29A008E1C(v27, v37);
    __cxa_throw(v28, &unk_2A203B108, sub_29A008B08);
  }

  (*(*v13 + 24))(&v33);
  v16 = v33;
  if (!v33)
  {
    sub_29A008864(&v38);
    sub_29A00911C(v40, "Invalid object in CprImpl::CprImpl(Compound)", 44);
    std::stringbuf::str();
    sub_29A008C60(v37, __p);
    if (v36 < 0)
    {
      operator delete(__p[0]);
    }

    v29 = __cxa_allocate_exception(0x20uLL);
    v30 = sub_29A008E1C(v29, v37);
    __cxa_throw(v30, &unk_2A203B108, sub_29A008B08);
  }

  v17 = v34;
  if (v34)
  {
    atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *(a1 + 64);
  *(a1 + 56) = v16;
  *(a1 + 64) = v17;
  if (v18)
  {
    sub_29A014BEC(v18);
  }

  v19 = operator new(0x40uLL);
  v20 = a3[1];
  v31 = *a3;
  v32 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(**v12 + 24))(&v38);
  sub_29A01A830(v19, &v31, a5, v38, a6);
  sub_29A01C59C((a1 + 72), v19);
  if (v39)
  {
    sub_29A014BEC(v39);
  }

  if (v32)
  {
    sub_29A014BEC(v32);
  }

  if (v34)
  {
    sub_29A014BEC(v34);
  }

  return a1;
}

void sub_29A01C490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v15.__vftable = va_arg(va1, std::exception_vtbl *);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  v10 = *(v8 + 10);
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  v11 = *(v8 + 8);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  v12 = *(v8 + 6);
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  v13 = *(v8 + 4);
  if (v13)
  {
    sub_29A014BEC(v13);
  }

  v14 = *(v8 + 2);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  Alembic::AbcCoreAbstract::v12::CompoundPropertyReader::~CompoundPropertyReader(v8);
  _Unwind_Resume(a1);
}

void sub_29A01C59C(void *a1, void *a2)
{
  sub_29A01CE88(&v5, a2);
  v3 = a1[1];
  v4 = v5;
  *&v5 = *a1;
  *(&v5 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    sub_29A014BEC(v3);
  }
}

uint64_t sub_29A01C5E8(uint64_t a1, void *a2, void *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0u;
  v4 = (a1 + 40);
  *a1 = &unk_2A203CD10;
  *(a1 + 24) = 0u;
  *(a1 + 56) = *a2;
  v5 = a2[1];
  *(a1 + 64) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = *a3;
  v6 = a3[1];
  *(a1 + 80) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 56);
  if (!v7)
  {
    sub_29A008864(&__p);
    sub_29A00911C(v19, "Invalid object in CprImpl(Object)", 33);
    std::stringbuf::str();
    sub_29A008C60(v17, v15);
    if (v16 < 0)
    {
      operator delete(v15[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v12 = sub_29A008E1C(exception, v17);
    __cxa_throw(v12, &unk_2A203B108, sub_29A008B08);
  }

  if (!*(a1 + 72))
  {
    sub_29A008864(&__p);
    sub_29A00911C(v19, "Invalid data in CprImpl(Object)", 31);
    std::stringbuf::str();
    sub_29A008C60(v17, v15);
    if (v16 < 0)
    {
      operator delete(v15[0]);
    }

    v13 = __cxa_allocate_exception(0x20uLL);
    v14 = sub_29A008E1C(v13, v17);
    __cxa_throw(v14, &unk_2A203B108, sub_29A008B08);
  }

  __p = 0uLL;
  v19[0] = 0;
  v8 = operator new(0x68uLL);
  v9 = (*(*v7 + 16))(v7);
  sub_29A01CDF8(v8, &__p, (v9 + 48));
  *(v8 + 40) = 257;
  *(v8 + 92) = 0;
  *(v8 + 84) = 0;
  sub_29A01C8C0(v4, v8);
  if (SHIBYTE(v19[0]) < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_29A01C814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::exception a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_29A008F20(&a12);
  sub_29A008B0C(&__p);
  v23 = *(v21 + 10);
  if (v23)
  {
    sub_29A014BEC(v23);
  }

  v24 = *(v21 + 8);
  if (v24)
  {
    sub_29A014BEC(v24);
  }

  v25 = *(v21 + 6);
  if (v25)
  {
    sub_29A014BEC(v25);
  }

  v26 = *(v21 + 4);
  if (v26)
  {
    sub_29A014BEC(v26);
  }

  v27 = *(v21 + 2);
  if (v27)
  {
    std::__shared_weak_count::__release_weak(v27);
  }

  Alembic::AbcCoreAbstract::v12::CompoundPropertyReader::~CompoundPropertyReader(v21);
  _Unwind_Resume(a1);
}

void sub_29A01C8C0(void *a1, uint64_t a2)
{
  sub_29A01CFAC(&v5, a2);
  v3 = a1[1];
  v4 = v5;
  *&v5 = *a1;
  *(&v5 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    sub_29A014BEC(v3);
  }
}

void sub_29A01C90C(Alembic::AbcCoreAbstract::v12::CompoundPropertyReader *this)
{
  *this = &unk_2A203CD10;
  v2 = *(this + 10);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  Alembic::AbcCoreAbstract::v12::CompoundPropertyReader::~CompoundPropertyReader(this);
}

void sub_29A01C99C(Alembic::AbcCoreAbstract::v12::CompoundPropertyReader *a1)
{
  sub_29A01C90C(a1);

  operator delete(v1);
}

uint64_t sub_29A01C9C4(uint64_t a1)
{
  result = *(a1 + 40);
  if (!result)
  {
    sub_29A008864(&v7);
    sub_29A00911C(v8, "Invalid header", 14);
    std::stringbuf::str();
    sub_29A008C60(v6, &__p);
    if (v5 < 0)
    {
      operator delete(__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v3 = sub_29A008E1C(exception, v6);
    __cxa_throw(v3, &unk_2A203B108, sub_29A008B08);
  }

  return result;
}

void sub_29A01CA68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5.__vftable = va_arg(va1, std::exception_vtbl *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_29A01CA90@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 64);
  *a2 = *(result + 56);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29A01CAAC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *a2 = *(result + 24);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

double sub_29A01CAC8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_29A014C58(&v4, (a1 + 8));
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_29A01CB10(void *a1, unint64_t a2)
{
  v3 = a1[9];
  (*(*a1 + 56))(&v6);
  v4 = sub_29A01A8EC(v3, &v6, a2);
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  return v4;
}

void sub_29A01CB88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A01CBA0(void *a1, const void **a2)
{
  v3 = a1[9];
  (*(*a1 + 56))(&v6);
  v4 = sub_29A01A9EC(v3, &v6, a2);
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  return v4;
}

void sub_29A01CC18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A01CC30(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = a1[9];
  (*(*a1 + 56))(&v6);
  sub_29A01AA7C(v5, &v6, a2, a3);
  if (v7)
  {
    sub_29A014BEC(v7);
  }
}

void sub_29A01CCB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A01CCC8(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = a1[9];
  (*(*a1 + 56))(&v6);
  sub_29A01B004(v5, &v6, a2, a3);
  if (v7)
  {
    sub_29A014BEC(v7);
  }
}

void sub_29A01CD48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A01CD60(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = a1[9];
  (*(*a1 + 56))(&v6);
  sub_29A01B58C(v5, &v6, a2, a3);
  if (v7)
  {
    sub_29A014BEC(v7);
  }
}

void sub_29A01CDE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A01CDF8(void *__dst, __int128 *a2, const void ***a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v5;
  }

  *(__dst + 6) = 0;
  sub_29A019350(__dst + 4, a3);
  *(__dst + 14) = 127;
  *(__dst + 60) = 0;
  __dst[8] = 0;
  __dst[9] = 0;
  return __dst;
}

void sub_29A01CE6C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A01CE88(void *a1, void *a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A203CDD8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  sub_29A017894(a1, a2, a2);
  return a1;
}

void sub_29A01CEF0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v3 = sub_29A01A8E0(v1);
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A01CF10(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29A01CF38(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = sub_29A01A8E0(v1);

    operator delete(v2);
  }
}

uint64_t sub_29A01CF6C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A203CE28))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29A01CFAC(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A203CE50;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A01D00C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_29A01D0A0(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A01D030(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A01D060(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A203CEA0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29A01D0A0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 72);
    if (v3)
    {
      sub_29A014BEC(v3);
    }

    sub_29A01752C(a2 + 32, *(a2 + 40));
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    operator delete(a2);
  }
}

void *sub_29A01D104(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  v2 = a2[1];
  result[2] = *a2;
  result[3] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result[4] = 0;
  result[5] = 0;
  result[8] = 0;
  result[9] = 0;
  result[10] = 0;
  result[6] = 0;
  result[7] = result + 8;
  result[11] = 0;
  result[12] = 0;
  return result;
}

uint64_t sub_29A01D13C(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  sub_29A01E5E8(a1 + 56, *(a1 + 64));
  v6 = (a1 + 32);
  sub_29A0176E4(&v6);
  v3 = *(a1 + 24);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

uint64_t sub_29A01D1C0(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2 > (*(a1 + 40) - v3) >> 4)
  {
    sub_29A008864(v17);
    v8 = sub_29A00911C(v18, "Out of range index in ", 22);
    v9 = sub_29A00911C(v8, "CpwImpl::getPropertyHeader: ", 28);
    MEMORY[0x29C2C1F00](v9, a2);
    std::stringbuf::str();
    sub_29A008C60(v16, __p);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v11 = sub_29A008E1C(exception, v16);
    __cxa_throw(v11, &unk_2A203B108, sub_29A008B08);
  }

  v4 = (v3 + 16 * a2);
  v6 = *v4;
  v5 = v4[1];
  if (!v5)
  {
    if (v6)
    {
      return v6;
    }

LABEL_10:
    sub_29A008864(v17);
    sub_29A00911C(v18, "Invalid property header ptr in CpwImpl", 38);
    std::stringbuf::str();
    sub_29A008C60(v16, __p);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    v12 = __cxa_allocate_exception(0x20uLL);
    v13 = sub_29A008E1C(v12, v16);
    __cxa_throw(v13, &unk_2A203B108, sub_29A008B08);
  }

  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  if (!v6)
  {
    goto LABEL_10;
  }

  sub_29A014BEC(v5);
  return v6;
}

void sub_29A01D340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5.__vftable = va_arg(va1, std::exception_vtbl *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  _Unwind_Resume(a1);
}

void *sub_29A01D3A0(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2 == v3)
  {
    return 0;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  while (1)
  {
    v7 = *v2;
    v8 = *(*v2 + 23);
    v9 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(*v2 + 8);
    }

    if (v8 == v5)
    {
      v10 = v9 >= 0 ? *v2 : *v7;
      if (!memcmp(v10, v6, v5))
      {
        break;
      }
    }

    v2 += 16;
    if (v2 == v3)
    {
      return 0;
    }
  }

  return v7;
}

void sub_29A01D440(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v5 = sub_29A01BCCC(a1 + 56, a2);
  if (a1 + 64 == v5 || (v6 = *(v5 + 64)) == 0)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v7 = *(v5 + 56);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *a3 = 0;
    v8 = std::__shared_weak_count::lock(v6);
    a3[1] = v8;
    if (v8)
    {
      *a3 = v7;
    }

    std::__shared_weak_count::__release_weak(v6);
  }
}

void sub_29A01D4D8(uint64_t a1@<X0>, void *a2@<X1>, const void **a3@<X2>, const void ***a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, _OWORD *a7@<X8>)
{
  if (sub_29A00AF58(a1 + 56, a3))
  {
    sub_29A008864(&v40);
    v26 = sub_29A00911C(v42, "Already have a property named: ", 31);
    v27 = *(a3 + 23);
    if (v27 >= 0)
    {
      v28 = a3;
    }

    else
    {
      v28 = *a3;
    }

    if (v27 >= 0)
    {
      v29 = *(a3 + 23);
    }

    else
    {
      v29 = a3[1];
    }

    sub_29A00911C(v26, v28, v29);
    std::stringbuf::str();
    sub_29A008C60(v39, __p);
    if (v38 < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v31 = sub_29A008E1C(exception, v39);
    __cxa_throw(v31, &unk_2A203B108, sub_29A008B08);
  }

  if (!*(a5 + 4) || (*a5 != 127 ? (v14 = *a5 == 14) : (v14 = 1), v14))
  {
    sub_29A008864(&v40);
    sub_29A00911C(v42, "createScalarProperty, illegal DataType provided.", 48);
    std::stringbuf::str();
    sub_29A008C60(v39, __p);
    if (v38 < 0)
    {
      operator delete(__p[0]);
    }

    v22 = __cxa_allocate_exception(0x20uLL);
    v23 = sub_29A008E1C(v22, v39);
    __cxa_throw(v23, &unk_2A203B108, sub_29A008B08);
  }

  if (*(a3 + 23) < 0)
  {
    if (!a3[1])
    {
      goto LABEL_38;
    }
  }

  else if (!*(a3 + 23))
  {
LABEL_38:
    sub_29A008864(&v40);
    sub_29A00911C(v42, "Invalid name", 12);
    std::stringbuf::str();
    sub_29A008C60(v39, __p);
    if (v38 < 0)
    {
      operator delete(__p[0]);
    }

    v24 = __cxa_allocate_exception(0x20uLL);
    v25 = sub_29A008E1C(v24, v39);
    __cxa_throw(v25, &unk_2A203B108, sub_29A008B08);
  }

  if (std::string::find(a3, 47, 0) != -1)
  {
    goto LABEL_38;
  }

  (*(**a2 + 24))(__p);
  (*(*__p[0] + 24))(v39);
  (*(**&v39[0] + 56))(&v40);
  if (*(&v39[0] + 1))
  {
    sub_29A014BEC(*(&v39[0] + 1));
  }

  if (__p[1])
  {
    sub_29A014BEC(__p[1]);
  }

  v15 = operator new(0x68uLL);
  sub_29A01E52C(v15, a3, 1, a4, a5, &v40);
  v15[40] = 257;
  *(v15 + 11) = 0;
  *(v15 + 21) = 0;
  *(v15 + 24) = a6;
  sub_29A01CFAC(v39, v15);
  v16 = operator new(0x70uLL);
  v17 = a2[1];
  v35 = *a2;
  v36 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Alembic::Ogawa::v12::OGroup::addGroup(*(a1 + 16), &v33);
  v32 = v39[0];
  if (*(&v39[0] + 1))
  {
    atomic_fetch_add_explicit((*(&v39[0] + 1) + 8), 1uLL, memory_order_relaxed);
  }

  sub_29A02A138(v16, &v35, &v33, &v32, (*(a1 + 40) - *(a1 + 32)) >> 4);
  sub_29A01E698(__p, v16);
  if (*(&v32 + 1))
  {
    sub_29A014BEC(*(&v32 + 1));
  }

  if (v34)
  {
    sub_29A014BEC(v34);
  }

  if (v36)
  {
    sub_29A014BEC(v36);
  }

  sub_29A017F80((a1 + 32), v39);
  v19 = __p[0];
  v18 = __p[1];
  if (__p[1])
  {
    atomic_fetch_add_explicit(__p[1] + 2, 1uLL, memory_order_relaxed);
  }

  v43 = a3;
  v20 = sub_29A01E7BC((a1 + 56), a3, &unk_29B4311F1, &v43);
  v21 = v20[8];
  v20[7] = v19;
  v20[8] = v18;
  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }

  v43 = 0;
  sub_29A018094((a1 + 80), &v43);
  v43 = 0;
  sub_29A018094((a1 + 80), &v43);
  *a7 = *__p;
  if (*(&v39[0] + 1))
  {
    sub_29A014BEC(*(&v39[0] + 1));
  }

  if (v41)
  {
    sub_29A014BEC(v41);
  }
}

void sub_29A01D934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11.__vftable = va_arg(va1, std::exception_vtbl *);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  _Unwind_Resume(a1);
}

void sub_29A01DA44(uint64_t a1@<X0>, void *a2@<X1>, const void **a3@<X2>, const void ***a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, _OWORD *a7@<X8>)
{
  if (sub_29A00AF58(a1 + 56, a3))
  {
    sub_29A008864(&v40);
    v26 = sub_29A00911C(v42, "Already have a property named: ", 31);
    v27 = *(a3 + 23);
    if (v27 >= 0)
    {
      v28 = a3;
    }

    else
    {
      v28 = *a3;
    }

    if (v27 >= 0)
    {
      v29 = *(a3 + 23);
    }

    else
    {
      v29 = a3[1];
    }

    sub_29A00911C(v26, v28, v29);
    std::stringbuf::str();
    sub_29A008C60(v39, __p);
    if (v38 < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v31 = sub_29A008E1C(exception, v39);
    __cxa_throw(v31, &unk_2A203B108, sub_29A008B08);
  }

  if (!*(a5 + 4) || (*a5 != 127 ? (v14 = *a5 == 14) : (v14 = 1), v14))
  {
    sub_29A008864(&v40);
    sub_29A00911C(v42, "createArrayProperty, illegal DataType provided.", 47);
    std::stringbuf::str();
    sub_29A008C60(v39, __p);
    if (v38 < 0)
    {
      operator delete(__p[0]);
    }

    v22 = __cxa_allocate_exception(0x20uLL);
    v23 = sub_29A008E1C(v22, v39);
    __cxa_throw(v23, &unk_2A203B108, sub_29A008B08);
  }

  if (*(a3 + 23) < 0)
  {
    if (!a3[1])
    {
      goto LABEL_38;
    }
  }

  else if (!*(a3 + 23))
  {
LABEL_38:
    sub_29A008864(&v40);
    sub_29A00911C(v42, "Invalid name", 12);
    std::stringbuf::str();
    sub_29A008C60(v39, __p);
    if (v38 < 0)
    {
      operator delete(__p[0]);
    }

    v24 = __cxa_allocate_exception(0x20uLL);
    v25 = sub_29A008E1C(v24, v39);
    __cxa_throw(v25, &unk_2A203B108, sub_29A008B08);
  }

  if (std::string::find(a3, 47, 0) != -1)
  {
    goto LABEL_38;
  }

  (*(**a2 + 24))(__p);
  (*(*__p[0] + 24))(v39);
  (*(**&v39[0] + 56))(&v40);
  if (*(&v39[0] + 1))
  {
    sub_29A014BEC(*(&v39[0] + 1));
  }

  if (__p[1])
  {
    sub_29A014BEC(__p[1]);
  }

  v15 = operator new(0x68uLL);
  sub_29A01E52C(v15, a3, 2, a4, a5, &v40);
  v15[40] = 257;
  *(v15 + 11) = 0;
  *(v15 + 21) = 0;
  *(v15 + 24) = a6;
  sub_29A01CFAC(v39, v15);
  v16 = operator new(0x88uLL);
  v17 = a2[1];
  v35 = *a2;
  v36 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Alembic::Ogawa::v12::OGroup::addGroup(*(a1 + 16), &v33);
  v32 = v39[0];
  if (*(&v39[0] + 1))
  {
    atomic_fetch_add_explicit((*(&v39[0] + 1) + 8), 1uLL, memory_order_relaxed);
  }

  sub_29A015094(v16, &v35, &v33, &v32, (*(a1 + 40) - *(a1 + 32)) >> 4);
  sub_29A01E944(__p, v16);
  if (*(&v32 + 1))
  {
    sub_29A014BEC(*(&v32 + 1));
  }

  if (v34)
  {
    sub_29A014BEC(v34);
  }

  if (v36)
  {
    sub_29A014BEC(v36);
  }

  sub_29A017F80((a1 + 32), v39);
  v19 = __p[0];
  v18 = __p[1];
  if (__p[1])
  {
    atomic_fetch_add_explicit(__p[1] + 2, 1uLL, memory_order_relaxed);
  }

  v43 = a3;
  v20 = sub_29A01E7BC((a1 + 56), a3, &unk_29B4311F1, &v43);
  v21 = v20[8];
  v20[7] = v19;
  v20[8] = v18;
  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }

  v43 = 0;
  sub_29A018094((a1 + 80), &v43);
  v43 = 0;
  sub_29A018094((a1 + 80), &v43);
  *a7 = *__p;
  if (*(&v39[0] + 1))
  {
    sub_29A014BEC(*(&v39[0] + 1));
  }

  if (v41)
  {
    sub_29A014BEC(v41);
  }
}

void sub_29A01DEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11.__vftable = va_arg(va1, std::exception_vtbl *);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  _Unwind_Resume(a1);
}

void sub_29A01DFB0(uint64_t a1@<X0>, uint64_t *a2@<X1>, const void **a3@<X2>, const void ***a4@<X3>, _OWORD *a5@<X8>)
{
  if (sub_29A00AF58(a1 + 56, a3))
  {
    sub_29A008864(&v30);
    v16 = sub_29A00911C(v31, "Already have a property named: ", 31);
    v17 = *(a3 + 23);
    if (v17 >= 0)
    {
      v18 = a3;
    }

    else
    {
      v18 = *a3;
    }

    if (v17 >= 0)
    {
      v19 = *(a3 + 23);
    }

    else
    {
      v19 = a3[1];
    }

    sub_29A00911C(v16, v18, v19);
    std::stringbuf::str();
    sub_29A008C60(v29, __p);
    if (v28 < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v21 = sub_29A008E1C(exception, v29);
    __cxa_throw(v21, &unk_2A203B108, sub_29A008B08);
  }

  v10 = operator new(0x68uLL);
  sub_29A01CDF8(v10, a3, a4);
  *(v10 + 40) = 257;
  *(v10 + 92) = 0;
  *(v10 + 84) = 0;
  sub_29A01CFAC(&v30, v10);
  v11 = operator new(0x60uLL);
  v12 = a2[1];
  v25 = *a2;
  v26 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Alembic::Ogawa::v12::OGroup::addGroup(*(a1 + 16), &v23);
  v22 = v30;
  if (*(&v30 + 1))
  {
    atomic_fetch_add_explicit((*(&v30 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  sub_29A01F300(v11, &v25, &v23, &v22, (*(a1 + 40) - *(a1 + 32)) >> 4);
  sub_29A01EA68(v29, v11);
  if (*(&v22 + 1))
  {
    sub_29A014BEC(*(&v22 + 1));
  }

  if (v24)
  {
    sub_29A014BEC(v24);
  }

  if (v26)
  {
    sub_29A014BEC(v26);
  }

  sub_29A017F80((a1 + 32), &v30);
  v13 = *v29;
  if (v29[1])
  {
    atomic_fetch_add_explicit((v29[1] + 16), 1uLL, memory_order_relaxed);
  }

  __p[0] = a3;
  v14 = sub_29A01E7BC((a1 + 56), a3, &unk_29B4311F1, __p);
  v15 = v14[8];
  *(v14 + 7) = v13;
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  __p[0] = 0;
  sub_29A018094((a1 + 80), __p);
  __p[0] = 0;
  sub_29A018094((a1 + 80), __p);
  *a5 = *v29;
  if (*(&v30 + 1))
  {
    sub_29A014BEC(*(&v30 + 1));
  }
}

void sub_29A01E208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12.__vftable = va_arg(va1, std::exception_vtbl *);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  _Unwind_Resume(a1);
}

void sub_29A01E2C8(uint64_t a1, uint64_t *a2)
{
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v2 = *(a1 + 32);
  if (*(a1 + 40) != v2)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = (v2 + v5);
      v8 = *v7;
      v9 = v7[1];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = *(v8 + 80);
      v11 = *(v8 + 81);
      v12 = *(v8 + 84);
      v13 = *(v8 + 88);
      v15 = *(v8 + 92);
      v14 = *(v8 + 96);
      v16 = a2[1];
      v20 = *a2;
      v21 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_29A02C258(&v22, v8, v10, v11, v14, v12, v13, v15, &v20);
      if (v21)
      {
        sub_29A014BEC(v21);
      }

      if (v9)
      {
        sub_29A014BEC(v9);
      }

      ++v6;
      v2 = *(a1 + 32);
      v5 += 16;
    }

    while (v6 < (*(a1 + 40) - v2) >> 4);
    v17 = v22;
    if (v22 != v23)
    {
      Alembic::Ogawa::v12::OGroup::addData(*(a1 + 16), v22, v23 - v22, &v18);
      if (v19)
      {
        sub_29A014BEC(v19);
      }

      v17 = v22;
    }

    if (v17)
    {
      v23 = v17;
      operator delete(v17);
    }
  }
}

void sub_29A01E3E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A01E41C(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >= (result[5] - result[4]) >> 4 || (v4 = result[10], 2 * a2 >= (result[11] - v4) >> 3))
  {
    sub_29A008864(&v11);
    sub_29A00911C(v12, "Invalid property requested in CpwData::fillHash", 47);
    std::stringbuf::str();
    sub_29A008C60(v10, &__p);
    if (v9 < 0)
    {
      operator delete(__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v7 = sub_29A008E1C(exception, v10);
    __cxa_throw(v7, &unk_2A203B108, sub_29A008B08);
  }

  v5 = (v4 + 16 * a2);
  *v5 = a3;
  v5[1] = a4;
  return result;
}

void sub_29A01E4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5.__vftable = va_arg(va1, std::exception_vtbl *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  _Unwind_Resume(a1);
}

void *sub_29A01E50C(void *result, Alembic::Util::v12::SpookyHash *this)
{
  v2 = result[10];
  v3 = result[11];
  if (v2 != v3)
  {
    return Alembic::Util::v12::SpookyHash::Update(this, v2, v3 - v2);
  }

  return result;
}

void *sub_29A01E52C(void *__dst, __int128 *a2, int a3, const void ***a4, void *a5, void *a6)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v11 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v11;
  }

  *(__dst + 6) = a3;
  sub_29A019350(__dst + 4, a4);
  __dst[7] = *a5;
  v12 = a6[1];
  __dst[8] = *a6;
  __dst[9] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  return __dst;
}

void sub_29A01E5CC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A01E5E8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29A01E5E8(a1, *a2);
    sub_29A01E5E8(a1, a2[1]);
    sub_29A01E644((a2 + 4));

    operator delete(a2);
  }
}

void sub_29A01E644(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t *sub_29A01E698(uint64_t *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A203CEC8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (a2)
  {
    v5 = (a2 + 8);
  }

  else
  {
    v5 = 0;
  }

  sub_29A017894(a1, v5, a2);
  return a1;
}

void sub_29A01E708(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B28458C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A01E724(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A01E74C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A01E77C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A203CF18))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_29A01E7BC(uint64_t **a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v6 = sub_29A00B0D0(a1, &v9, a2);
  result = *v6;
  if (!*v6)
  {
    sub_29A01E854(a1, a4, &v8);
    sub_29A00B204(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

_BYTE *sub_29A01E854@<X0>(uint64_t a1@<X0>, __int128 **a2@<X2>, void *a3@<X8>)
{
  result = operator new(0x48uLL);
  v7 = result;
  *a3 = result;
  a3[1] = a1;
  a3[2] = 0;
  v8 = *a2;
  if (*(*a2 + 23) < 0)
  {
    result = sub_29A008D14(result + 32, *v8, *(v8 + 1));
  }

  else
  {
    v9 = *v8;
    *(result + 6) = *(v8 + 2);
    *(result + 2) = v9;
  }

  *(v7 + 7) = 0;
  *(v7 + 8) = 0;
  *(a3 + 16) = 1;
  return result;
}

void sub_29A01E8E8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A01E644(v2 + 32);
    }

    operator delete(v2);
  }
}

uint64_t *sub_29A01E944(uint64_t *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A203CF40;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (a2)
  {
    v5 = (a2 + 8);
  }

  else
  {
    v5 = 0;
  }

  sub_29A017894(a1, v5, a2);
  return a1;
}

void sub_29A01E9B4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B28458C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A01E9D0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A01E9F8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A01EA28(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A203CF90))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_29A01EA68(uint64_t *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A203CFB8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (a2)
  {
    v5 = (a2 + 8);
  }

  else
  {
    v5 = 0;
  }

  sub_29A017894(a1, v5, a2);
  return a1;
}

void sub_29A01EAD8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B28458C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A01EAF4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A01EB1C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A01EB4C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A203D008))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29A01EB8C(void *a1, void *a2, void *a3, const void ***a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A203D030;
  a1[3] = *a2;
  v7 = a2[1];
  a1[4] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  a1[5] = 0;
  a1[6] = 0;
  v8 = operator new(0x68uLL);
  sub_29A008E78(&__p, "");
  sub_29A01CDF8(v8, &__p, a4);
  *(v8 + 40) = 257;
  *(v8 + 92) = 0;
  *(v8 + 84) = 0;
  sub_29A01CFAC(a1 + 7, v8);
  if (SHIBYTE(v19[0]) < 0)
  {
    operator delete(__p);
  }

  a1[9] = *a3;
  v9 = a3[1];
  a1[10] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  a1[11] = 0;
  if (!a1[3])
  {
    sub_29A008864(&__p);
    sub_29A00911C(v19, "Invalid object", 14);
    std::stringbuf::str();
    sub_29A008C60(v17, v15);
    if (v16 < 0)
    {
      operator delete(v15[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v12 = sub_29A008E1C(exception, v17);
    __cxa_throw(v12, &unk_2A203B108, sub_29A008B08);
  }

  if (!a1[9])
  {
    sub_29A008864(&__p);
    sub_29A00911C(v19, "Invalid compound data", 21);
    std::stringbuf::str();
    sub_29A008C60(v17, v15);
    if (v16 < 0)
    {
      operator delete(v15[0]);
    }

    v13 = __cxa_allocate_exception(0x20uLL);
    v14 = sub_29A008E1C(v13, v17);
    __cxa_throw(v14, &unk_2A203B108, sub_29A008B08);
  }

  return a1;
}

void sub_29A01EDA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::exception a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_29A008F20(&a12);
  sub_29A008B0C(&__p);
  v23 = *(v21 + 10);
  if (v23)
  {
    sub_29A014BEC(v23);
  }

  v24 = *(v21 + 8);
  if (v24)
  {
    sub_29A014BEC(v24);
  }

  v25 = *(v21 + 6);
  if (v25)
  {
    sub_29A014BEC(v25);
  }

  v26 = *(v21 + 4);
  if (v26)
  {
    sub_29A014BEC(v26);
  }

  v27 = *(v21 + 2);
  if (v27)
  {
    std::__shared_weak_count::__release_weak(v27);
  }

  Alembic::AbcCoreAbstract::v12::CompoundPropertyWriter::~CompoundPropertyWriter(v21);
  _Unwind_Resume(a1);
}

void *sub_29A01EE64(void *a1, void *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A203D030;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = *a2;
  v7 = a2[1];
  a1[6] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  a1[7] = *a4;
  v8 = a4[1];
  a1[8] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  a1[9] = 0;
  a1[10] = 0;
  a1[11] = a5;
  if (!a1[5])
  {
    sub_29A008864(&v29);
    sub_29A00911C(v30, "Invalid parent", 14);
    std::stringbuf::str();
    sub_29A008C60(v28, __p);
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v19 = sub_29A008E1C(exception, v28);
    __cxa_throw(v19, &unk_2A203B108, sub_29A008B08);
  }

  if (!a1[7])
  {
    sub_29A008864(&v29);
    sub_29A00911C(v30, "Invalid header", 14);
    std::stringbuf::str();
    sub_29A008C60(v28, __p);
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    v20 = __cxa_allocate_exception(0x20uLL);
    v21 = sub_29A008E1C(v20, v28);
    __cxa_throw(v21, &unk_2A203B108, sub_29A008B08);
  }

  (*(**a2 + 24))(&v29);
  v9 = v29;
  v29 = 0uLL;
  v10 = a1[4];
  *(a1 + 3) = v9;
  if (v10)
  {
    sub_29A014BEC(v10);
    if (*(&v29 + 1))
    {
      sub_29A014BEC(*(&v29 + 1));
    }
  }

  if (!a1[5])
  {
    sub_29A008864(&v29);
    sub_29A00911C(v30, "Invalid parent object", 21);
    std::stringbuf::str();
    sub_29A008C60(v28, __p);
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    v22 = __cxa_allocate_exception(0x20uLL);
    v23 = sub_29A008E1C(v22, v28);
    __cxa_throw(v23, &unk_2A203B108, sub_29A008B08);
  }

  v11 = a1[7];
  if (*(v11 + 23) < 0)
  {
    if (!*(v11 + 8))
    {
      goto LABEL_21;
    }
  }

  else if (!*(v11 + 23))
  {
LABEL_21:
    sub_29A008864(&v29);
    sub_29A00911C(v30, "Invalid name", 12);
    std::stringbuf::str();
    sub_29A008C60(v28, __p);
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    v16 = __cxa_allocate_exception(0x20uLL);
    v17 = sub_29A008E1C(v16, v28);
    __cxa_throw(v17, &unk_2A203B108, sub_29A008B08);
  }

  if (std::string::find(v11, 47, 0) != -1)
  {
    goto LABEL_21;
  }

  v12 = operator new(0x68uLL);
  v13 = v12;
  v14 = a3[1];
  v24 = *a3;
  v25 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A01D104(v12, &v24);
  sub_29A01F2B8(a1 + 9, v13);
  if (v25)
  {
    sub_29A014BEC(v25);
  }

  return a1;
}

void sub_29A01F1EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v14.__vftable = va_arg(va1, std::exception_vtbl *);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  v9 = *(v7 + 10);
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  v10 = *(v7 + 8);
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  v11 = *(v7 + 6);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  v12 = *(v7 + 4);
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  v13 = *(v7 + 2);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  Alembic::AbcCoreAbstract::v12::CompoundPropertyWriter::~CompoundPropertyWriter(v7);
  _Unwind_Resume(a1);
}

void sub_29A01F298(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (v12)
  {
    operator delete(v11);
  }

  JUMPOUT(0x29A01F24CLL);
}

void sub_29A01F2B8(void *a1, void *a2)
{
  sub_29A01F840(&v5, a2);
  v3 = a1[1];
  v4 = v5;
  *&v5 = *a1;
  *(&v5 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    sub_29A014BEC(v3);
  }
}

void sub_29A01F304(Alembic::AbcCoreAbstract::v12::CompoundPropertyWriter *this)
{
  *this = &unk_2A203D030;
  if (*(this + 5))
  {
    v2 = *(this + 3);
    v3 = *(this + 4);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v2 + 24))(&lpsrc);
    v5 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = *(v4 + 29);
    v6 = *(v4 + 30);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v5)
    {
      sub_29A014BEC(v5);
    }

    if (v21)
    {
      sub_29A014BEC(v21);
    }

    if (v3)
    {
      sub_29A014BEC(v3);
    }

    v8 = *(this + 9);
    v22 = v7;
    v23 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29A01E2C8(v8, &v22);
    if (v23)
    {
      sub_29A014BEC(v23);
    }

    Alembic::Util::v12::SpookyHash::Init(&lpsrc, 0, 0);
    sub_29A01E50C(*(this + 9), &lpsrc);
    sub_29A02B5E8(*(this + 7), &lpsrc);
    v18 = 0;
    v19 = 0;
    Alembic::Util::v12::SpookyHash::Final(&lpsrc, &v19, &v18, v9, v10);
    v12 = *(this + 6);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29A01E41C(v11[9], *(this + 11), v19, v18);
    if (v12)
    {
      sub_29A014BEC(v12);
    }

    if (v6)
    {
      sub_29A014BEC(v6);
    }
  }

  v13 = *(this + 10);
  if (v13)
  {
    sub_29A014BEC(v13);
  }

  v14 = *(this + 8);
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  v15 = *(this + 6);
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  v16 = *(this + 4);
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  v17 = *(this + 2);
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  Alembic::AbcCoreAbstract::v12::CompoundPropertyWriter::~CompoundPropertyWriter(this);
}

void sub_29A01F568(Alembic::AbcCoreAbstract::v12::CompoundPropertyWriter *a1)
{
  sub_29A01F304(a1);

  operator delete(v1);
}

uint64_t sub_29A01F598@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *a2 = *(result + 24);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29A01F5B4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 48);
  *a2 = *(result + 40);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

double sub_29A01F5D0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_29A014C58(&v4, (a1 + 8));
  result = *&v4;
  *a2 = v4;
  return result;
}

void sub_29A01F630(void *a1@<X0>, const void **a2@<X1>, const void ***a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, _OWORD *a6@<X8>)
{
  v11 = a1[9];
  (*(*a1 + 56))(&v12);
  sub_29A01D4D8(v11, &v12, a2, a3, a4, a5, a6);
  if (v13)
  {
    sub_29A014BEC(v13);
  }
}

void sub_29A01F6D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A01F6E8(void *a1@<X0>, const void **a2@<X1>, const void ***a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, _OWORD *a6@<X8>)
{
  v11 = a1[9];
  (*(*a1 + 56))(&v12);
  sub_29A01DA44(v11, &v12, a2, a3, a4, a5, a6);
  if (v13)
  {
    sub_29A014BEC(v13);
  }
}

void sub_29A01F788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A01F7A0(void *a1@<X0>, const void **a2@<X1>, const void ***a3@<X2>, _OWORD *a4@<X8>)
{
  v7 = a1[9];
  (*(*a1 + 56))(&v8);
  sub_29A01DFB0(v7, &v8, a2, a3, a4);
  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A01F828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A01F840(void *a1, void *a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A203D100;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  sub_29A017894(a1, a2, a2);
  return a1;
}

void sub_29A01F8A8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v3 = sub_29A01D1AC(v1);
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A01F8C8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29A01F8F0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = sub_29A01D1AC(v1);

    operator delete(v2);
  }
}

uint64_t sub_29A01F924(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A203D150))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A01F964(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    v4 = *(a2 + 8);
    if (!v4)
    {
      return 0;
    }

    if (v4 > 0xFF)
    {
      return 255;
    }
  }

  else if (!*(a2 + 23))
  {
    return 0;
  }

  v5 = sub_29A01BCCC(a1, a2);
  if (a1 + 8 != v5)
  {
    return (*(v5 + 56) + 1);
  }

  v7 = *(a1 + 16);
  if (v7 <= 0xFD)
  {
    v8 = a2;
    *(sub_29A01FC68(a1, a2, &unk_29B4315F5, &v8) + 14) = v7;
    return (v7 + 1);
  }

  return 255;
}

void sub_29A01FA20(void *a1, Alembic::Ogawa::v12::OGroup **a2)
{
  v3 = a1[2];
  if (v3)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    sub_29A01FBC8(&v23, v3);
    v7 = *a1;
    v5 = a1 + 1;
    v6 = v7;
    if (v7 != v5)
    {
      do
      {
        std::string::operator=((v23 + 24 * *(v6 + 14)), (v6 + 4));
        v8 = v6[1];
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = v6[2];
            v10 = *v9 == v6;
            v6 = v9;
          }

          while (!v10);
        }

        v6 = v9;
      }

      while (v9 != v5);
    }

    __p = 0;
    __dst = 0;
    v22 = 0;
    v11 = v23;
    v12 = v24;
    do
    {
      v13 = *(v11 + 23);
      if (v13 < 0)
      {
        LOBYTE(v13) = *(v11 + 8);
      }

      v19 = v13;
      sub_29A00D178(&__p, &v19);
      v14 = *(v11 + 23);
      if (v14 < 0)
      {
        v15 = *v11;
        v14 = *(v11 + 8);
      }

      else
      {
        v15 = v11;
      }

      sub_29A01FFA8(&__p, __dst, v15, &v15[v14], v14);
      v11 += 24;
    }

    while (v11 != v12);
    Alembic::Ogawa::v12::OGroup::addData(*a2, __p, __dst - __p, &v17);
    if (v18)
    {
      sub_29A014BEC(v18);
    }

    if (__p)
    {
      __dst = __p;
      operator delete(__p);
    }

    __p = &v23;
    sub_29A012C90(&__p);
  }

  else
  {
    v16 = *a2;

    Alembic::Ogawa::v12::OGroup::addEmptyData(v16);
  }
}

void sub_29A01FB88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *__p, char *a14, uint64_t a15, char a16)
{
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  __p = &a16;
  sub_29A012C90(&__p);
  _Unwind_Resume(a1);
}

void sub_29A01FBC8(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_29A01FDA8(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    while (v3 != v7)
    {
      v8 = *(v3 - 1);
      v3 -= 3;
      if (v8 < 0)
      {
        operator delete(*v3);
      }
    }

    a1[1] = v7;
  }
}

uint64_t *sub_29A01FC68(uint64_t **a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v6 = sub_29A00B0D0(a1, &v9, a2);
  result = *v6;
  if (!*v6)
  {
    sub_29A01FD00(a1, a4, &v8);
    sub_29A00B204(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

_BYTE *sub_29A01FD00@<X0>(uint64_t a1@<X0>, __int128 **a2@<X2>, void *a3@<X8>)
{
  result = operator new(0x40uLL);
  v7 = result;
  *a3 = result;
  a3[1] = a1;
  a3[2] = 0;
  v8 = *a2;
  if (*(*a2 + 23) < 0)
  {
    result = sub_29A008D14(result + 32, *v8, *(v8 + 1));
  }

  else
  {
    v9 = *v8;
    *(result + 6) = *(v8 + 2);
    *(result + 2) = v9;
  }

  *(v7 + 14) = 0;
  *(a3 + 16) = 1;
  return result;
}

void sub_29A01FD8C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A01BC68(v3, v2);
  _Unwind_Resume(a1);
}

void sub_29A01FDA8(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v11 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v11);
      v5 += v11;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29A00C9A4();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v20[4] = a1;
    if (v9)
    {
      v10 = sub_29A012C48(a1, v9);
    }

    else
    {
      v10 = 0;
    }

    v12 = &v10[24 * v6];
    v13 = &v10[24 * v9];
    v14 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v12, v14);
    v15 = &v12[v14];
    v16 = *(a1 + 8) - *a1;
    v17 = &v12[-v16];
    memcpy(&v12[-v16], *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v15;
    v19 = *(a1 + 16);
    *(a1 + 16) = v13;
    v20[2] = v18;
    v20[3] = v19;
    v20[0] = v18;
    v20[1] = v18;
    sub_29A01FF14(v20);
  }
}

uint64_t sub_29A01FF14(uint64_t a1)
{
  sub_29A01FF4C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29A01FF4C(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
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

    while (v5 != a2);
  }
}

char *sub_29A01FFA8(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v6 = a5;
  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 >= a5)
  {
    v17 = v10 - __dst;
    if (v10 - __dst >= a5)
    {
      v21 = &__dst[a5];
      v22 = &v10[-a5];
      v23 = *(a1 + 8);
      if (v10 >= a5)
      {
        do
        {
          v24 = *v22++;
          *v23++ = v24;
        }

        while (v22 != v10);
      }

      *(a1 + 8) = v23;
      if (v10 != v21)
      {
        memmove(&__dst[a5], __dst, v10 - v21);
      }

      v25 = v5;
      v26 = v7;
      v27 = v6;
    }

    else
    {
      v18 = &__src[v17];
      if (&__src[v17] == a4)
      {
        v19 = *(a1 + 8);
        v20 = v19;
      }

      else
      {
        v19 = (&v10[a4] - v18);
        v20 = *(a1 + 8);
        do
        {
          v35 = *v18++;
          *v20++ = v35;
        }

        while (v18 != a4);
      }

      *(a1 + 8) = v19;
      if (v17 < 1)
      {
        return v5;
      }

      v36 = &__dst[a5];
      v37 = &v19[-a5];
      v38 = v19;
      if (&v19[-a5] < v10)
      {
        do
        {
          v39 = *v37++;
          *v38++ = v39;
        }

        while (v37 != v10);
      }

      *(a1 + 8) = v38;
      if (v20 != v36)
      {
        memmove(&__dst[a5], __dst, v19 - v36);
      }

      v25 = v5;
      v26 = v7;
      v27 = v10 - v5;
    }

    memmove(v25, v26, v27);
    return v5;
  }

  v11 = *a1;
  v12 = &v10[a5 - *a1];
  if (v12 < 0)
  {
    sub_29A00C9A4();
  }

  v13 = (__dst - v11);
  v14 = v9 - v11;
  if (2 * v14 > v12)
  {
    v12 = 2 * v14;
  }

  if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    v16 = operator new(v15);
  }

  else
  {
    v16 = 0;
  }

  v28 = &v13[v16];
  v29 = &v13[v16 + v6];
  v30 = v28;
  do
  {
    v31 = *v7++;
    *v30++ = v31;
    --v6;
  }

  while (v6);
  v32 = v16 + v15;
  memcpy(v29, v5, v10 - v5);
  *(a1 + 8) = v5;
  v33 = *a1;
  v34 = &v28[*a1 - v5];
  memcpy(v34, *a1, &v5[-*a1]);
  *a1 = v34;
  *(a1 + 8) = &v29[v10 - v5];
  *(a1 + 16) = v32;
  if (v33)
  {
    operator delete(v33);
  }

  return v28;
}

uint64_t sub_29A0201B4(uint64_t a1, uint64_t a2, const void **a3, unint64_t a4, uint64_t a5, void *a6)
{
  *(a1 + 32) = 0;
  v12 = (a1 + 32);
  *(a1 + 48) = 0;
  *(a1 + 40) = a1 + 48;
  v13 = (a1 + 40);
  *(a1 + 56) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  pthread_mutex_init((a1 + 96), 0);
  v14 = *a2;
  if (!*a2)
  {
    sub_29A008864(&v51);
    sub_29A00911C(v53, "Invalid object data group", 25);
    std::stringbuf::str();
    sub_29A008C60(v50, __p);
    if (v49 < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v41 = sub_29A008E1C(exception, v50);
    __cxa_throw(v41, &unk_2A203B108, sub_29A008B08);
  }

  v15 = *(a2 + 8);
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  v16 = *(a1 + 24);
  *(a1 + 16) = v14;
  *(a1 + 24) = v15;
  if (v16)
  {
    sub_29A014BEC(v16);
    v14 = *(a1 + 16);
  }

  NumChildren = Alembic::Ogawa::v12::IGroup::getNumChildren(v14);
  if (NumChildren)
  {
    v18 = NumChildren - 1;
    if (Alembic::Ogawa::v12::IGroup::isChildData(*(a1 + 16), NumChildren - 1))
    {
      v51 = 0;
      v52 = 0;
      v53[0] = 0;
      v19 = *(a1 + 24);
      v46 = *(a1 + 16);
      v47 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_29A027430(&v46, v18, a4, a3, a6, &v51);
      v43 = a5;
      if (v47)
      {
        sub_29A014BEC(v47);
      }

      if (v51 != v52)
      {
        v42 = a6;
        v20 = (v52 - v51) >> 4;
        if (is_mul_ok(v20, 0x60uLL))
        {
          v21 = (32 * (((v52 - v51) >> 3) + ((v52 - v51) >> 4))) | 0x10;
        }

        else
        {
          v21 = -1;
        }

        v22 = operator new[](v21);
        v23 = 0;
        *v22 = 96;
        v22[1] = v20;
        v24 = 96 * v20;
        do
        {
          v25 = &v22[v23 / 8];
          *(v25 + 1) = 0u;
          *(v25 + 2) = 0u;
          pthread_mutex_init(&v22[v23 / 8 + 6], 0);
          v23 += 96;
        }

        while (v24 != v23);
        *&v50[0] = 0;
        v26 = *v12;
        *v12 = (v22 + 2);
        a6 = v42;
        if (v26)
        {
          sub_29A020F74(v12, v26);
          v27 = *&v50[0];
          *&v50[0] = 0;
          if (v27)
          {
            sub_29A020F74(v50, v27);
          }
        }

        v28 = v51;
        if (v52 != v51)
        {
          v29 = 0;
          do
          {
            __p[0] = *(&v28->__vftable + 2 * v29);
            sub_29A01BB28(v13, __p[0], &unk_29B4315F6, __p)[7] = v29;
            v30 = *v12;
            v31 = *(&v51->std::__shared_count + v29);
            v32 = *(&v51->__shared_owners_ + 2 * v29);
            if (v32)
            {
              atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
            }

            v33 = v30 + 96 * v29;
            v34 = *(v33 + 8);
            *v33 = v31;
            if (v34)
            {
              sub_29A014BEC(v34);
            }

            ++v29;
            v28 = v51;
          }

          while (v29 < (v52 - v51) >> 4);
        }
      }

      *&v50[0] = &v51;
      sub_29A0176E4(v50);
      a5 = v43;
    }

    if (Alembic::Ogawa::v12::IGroup::isChildGroup(*(a1 + 16), 0))
    {
      Alembic::Ogawa::v12::IGroup::getGroup(*(a1 + 16), 0, 0, a4, &v51);
      v35 = operator new(0x40uLL);
      v36 = v35;
      v44 = v51;
      v45 = v52;
      if (v52)
      {
        atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_29A01A830(v35, &v44, a4, a5, a6);
      sub_29A01CE88(v50, v36);
      v37 = v50[0];
      v50[0] = 0uLL;
      v38 = *(a1 + 88);
      *(a1 + 80) = v37;
      if (v38)
      {
        sub_29A014BEC(v38);
        if (*(&v50[0] + 1))
        {
          sub_29A014BEC(*(&v50[0] + 1));
        }
      }

      if (v45)
      {
        sub_29A014BEC(v45);
      }

      if (v52)
      {
        sub_29A014BEC(v52);
      }
    }
  }

  return a1;
}

void sub_29A020560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v21.__vftable = va_arg(va1, std::exception_vtbl *);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  pthread_mutex_destroy((v11 + 96));
  v16 = *(v11 + 88);
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  v17 = *(v11 + 72);
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  sub_29A019EE8(v13, *v14);
  v18 = *v12;
  *v12 = 0;
  if (v18)
  {
    sub_29A020F74(v12, v18);
  }

  v19 = *(v11 + 24);
  if (v19)
  {
    sub_29A014BEC(v19);
  }

  v20 = *(v11 + 8);
  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A020684(uint64_t a1)
{
  pthread_mutex_destroy((a1 + 32));
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  return a1;
}

uint64_t sub_29A0206D0(uint64_t a1)
{
  pthread_mutex_destroy((a1 + 96));
  v2 = *(a1 + 88);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  sub_29A019EE8(a1 + 40, *(a1 + 48));
  v4 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v4)
  {
    sub_29A020F74(a1 + 32, v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  return a1;
}

uint64_t sub_29A020754@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  pthread_mutex_lock((a1 + 96));
  *a3 = 0;
  a3[1] = 0;
  v6 = *(a1 + 72);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    a3[1] = v7;
    if (v7)
    {
      v8 = *(a1 + 64);
      *a3 = v8;
      if (v8)
      {
        return pthread_mutex_unlock((a1 + 96));
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = operator new(0x58uLL);
  v10 = v9;
  v11 = a2[1];
  v19 = *a2;
  v20 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *(a1 + 88);
  v17 = *(a1 + 80);
  v18 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A01C908(v9, &v19, &v17);
  sub_29A01BFA4(&v21, v10);
  v14 = v21;
  v13 = v22;
  v21 = 0;
  v22 = 0;
  *a3 = v14;
  a3[1] = v13;
  if (v7)
  {
    sub_29A014BEC(v7);
    if (v22)
    {
      sub_29A014BEC(v22);
    }
  }

  if (v18)
  {
    sub_29A014BEC(v18);
  }

  if (v20)
  {
    sub_29A014BEC(v20);
  }

  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = *(a1 + 72);
  *(a1 + 64) = v14;
  *(a1 + 72) = v13;
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  return pthread_mutex_unlock((a1 + 96));
}

void sub_29A020890(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pthread_mutex_unlock((v1 + 96));
  _Unwind_Resume(a1);
}

uint64_t sub_29A0208F4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a1 + 56) <= a3)
  {
    sub_29A008864(&v11);
    v5 = sub_29A00911C(v12, "Out of range index in OrData::getChildHeader: ", 46);
    MEMORY[0x29C2C1F00](v5, a3);
    std::stringbuf::str();
    sub_29A008C60(v10, &__p);
    if (v9 < 0)
    {
      operator delete(__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v7 = sub_29A008E1C(exception, v10);
    __cxa_throw(v7, &unk_2A203B108, sub_29A008B08);
  }

  return *(*(a1 + 32) + 96 * a3);
}

void sub_29A0209C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5.__vftable = va_arg(va1, std::exception_vtbl *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_29A0209EC(uint64_t a1, uint64_t a2, const void **a3)
{
  v5 = sub_29A01BCCC(a1 + 40, a3);
  if (a1 + 48 == v5)
  {
    return 0;
  }

  v7 = *(a2 + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = sub_29A0208F4(a1, v6, *(v5 + 56));
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  return v8;
}

void sub_29A020A64(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A020A7C(void *a1@<X0>, uint64_t *a2@<X1>, const void **a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = sub_29A01BCCC((a1 + 5), a3);
  if (a1 + 6 == v7)
  {
    *a4 = 0;
    a4[1] = 0;
  }

  else
  {
    v8 = *a2;
    v9 = a2[1];
    v10[0] = v8;
    v10[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29A020B40(a1, v10, *(v7 + 56), a4);
    if (v9)
    {

      sub_29A014BEC(v9);
    }
  }
}

void sub_29A020B28(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A020B40@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (a1[7] <= a3)
  {
    sub_29A008864(&v36);
    v24 = sub_29A00911C(v38, "Out of range index in OrData::getChild: ", 40);
    MEMORY[0x29C2C1F00](v24, a3);
    std::stringbuf::str();
    sub_29A008C60(v35, &__p);
    if (v34 < 0)
    {
      operator delete(__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v26 = sub_29A008E1C(exception, v35);
    __cxa_throw(v26, &unk_2A203B108, sub_29A008B08);
  }

  v8 = a1[4] + 96 * a3;
  pthread_mutex_lock((v8 + 32));
  v9 = a1[4] + 96 * a3;
  *a4 = 0;
  a4[1] = 0;
  v10 = *(v9 + 24);
  if (v10)
  {
    v11 = std::__shared_weak_count::lock(v10);
    a4[1] = v11;
    if (v11)
    {
      v12 = *(v9 + 16);
      *a4 = v12;
      if (v12)
      {
        return pthread_mutex_unlock((v8 + 32));
      }
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = operator new(0x58uLL);
  v14 = v13;
  v15 = a2[1];
  v31 = *a2;
  v32 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = a1[3];
  v29 = a1[2];
  v30 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = (a1[4] + 96 * a3);
  v27 = *v17;
  v18 = v17[1];
  v28 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A0214C4(v13, &v31, &v29, a3 + 1, &v27);
  sub_29A0179BC(&v36, v14);
  v20 = v36;
  v19 = v37;
  v36 = 0;
  v37 = 0;
  *a4 = v20;
  a4[1] = v19;
  if (v11)
  {
    sub_29A014BEC(v11);
    if (v37)
    {
      sub_29A014BEC(v37);
    }
  }

  if (v28)
  {
    sub_29A014BEC(v28);
  }

  if (v30)
  {
    sub_29A014BEC(v30);
  }

  if (v32)
  {
    sub_29A014BEC(v32);
  }

  v21 = a1[4] + 96 * a3;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = *(v21 + 24);
  *(v21 + 16) = v20;
  *(v21 + 24) = v19;
  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  return pthread_mutex_unlock((v8 + 32));
}

void sub_29A020D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11.__vftable = va_arg(va1, std::exception_vtbl *);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  _Unwind_Resume(a1);
}

void sub_29A020E0C(uint64_t a1, void *a2, unint64_t a3)
{
  NumChildren = Alembic::Ogawa::v12::IGroup::getNumChildren(*(a1 + 16));
  Alembic::Ogawa::v12::IGroup::getData(*(a1 + 16), NumChildren - 1, a3, &v9);
  if (v9 && Alembic::Ogawa::v12::IData::getSize(v9) >= 0x20)
  {
    v7 = v9;
    Size = Alembic::Ogawa::v12::IData::getSize(v9);
    Alembic::Ogawa::v12::IData::read(v7, 16, a2, Size - 32, a3);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }
}

void sub_29A020EA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A020EC0(uint64_t a1, void *a2, unint64_t a3)
{
  NumChildren = Alembic::Ogawa::v12::IGroup::getNumChildren(*(a1 + 16));
  Alembic::Ogawa::v12::IGroup::getData(*(a1 + 16), NumChildren - 1, a3, &v9);
  if (v9 && Alembic::Ogawa::v12::IData::getSize(v9) >= 0x20)
  {
    v7 = v9;
    Size = Alembic::Ogawa::v12::IData::getSize(v9);
    Alembic::Ogawa::v12::IData::read(v7, 16, a2, Size - 16, a3);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }
}

void sub_29A020F5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A020F74(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 - 8);
    if (v3)
    {
      v4 = a2 + 96 * v3 - 88;
      v5 = -96 * v3;
      do
      {
        pthread_mutex_destroy((v4 + 24));
        v6 = *(v4 + 16);
        if (v6)
        {
          std::__shared_weak_count::__release_weak(v6);
        }

        if (*v4)
        {
          sub_29A014BEC(*v4);
        }

        v4 -= 96;
        v5 += 96;
      }

      while (v5);
    }

    operator delete[]((a2 - 16));
  }
}

uint64_t sub_29A021010(uint64_t a1, uint64_t a2, unint64_t ***a3, unint64_t a4, void *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0u;
  v10 = (a1 + 24);
  *(a1 + 56) = 0u;
  v11 = (a1 + 56);
  *a1 = &unk_2A203D178;
  *(a1 + 40) = 0u;
  *(a1 + 72) = *a5;
  v12 = a5[1];
  *(a1 + 80) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *a2;
  {
    v14 = *(a2 + 8);
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a1 + 32);
  *(a1 + 24) = v13;
  *(a1 + 32) = v14;
  if (v15)
  {
    sub_29A014BEC(v15);
    v13 = *v10;
  }

  if (!v13)
  {
    sub_29A008864(&v37);
    sub_29A00911C(v39, "Invalid parent in OrImpl(Object)", 32);
    std::stringbuf::str();
    sub_29A008C60(&v35, __p);
    if (v34 < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v26 = sub_29A008E1C(exception, &v35);
    __cxa_throw(v26, &unk_2A203B108, sub_29A008B08);
  }

  if (!*(a1 + 72))
  {
    sub_29A008864(&v37);
    sub_29A00911C(v39, "Invalid header in OrImpl(Object)", 32);
    std::stringbuf::str();
    sub_29A008C60(&v35, __p);
    if (v34 < 0)
    {
      operator delete(__p[0]);
    }

    v27 = __cxa_allocate_exception(0x20uLL);
    v28 = sub_29A008E1C(v27, &v35);
    __cxa_throw(v28, &unk_2A203B108, sub_29A008B08);
  }

  v17 = v13[5];
  v16 = v13[6];
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v18 = *(a1 + 48);
  *(a1 + 40) = v17;
  *(a1 + 48) = v16;
  if (v18)
  {
    sub_29A014BEC(v18);
    v17 = *(a1 + 40);
  }

  if (!v17)
  {
    sub_29A008864(&v37);
    sub_29A00911C(v39, "Invalid archive in OrImpl(Object)", 33);
    std::stringbuf::str();
    sub_29A008C60(&v35, __p);
    if (v34 < 0)
    {
      operator delete(__p[0]);
    }

    v29 = __cxa_allocate_exception(0x20uLL);
    v30 = sub_29A008E1C(v29, &v35);
    __cxa_throw(v30, &unk_2A203B108, sub_29A008B08);
  }

  sub_29A0173F4(v17, &v37);
  v19 = *(v37 + 8);
  Alembic::Ogawa::v12::IGroup::getGroup(*a3, a4, 0, v19, &v35);
  v20 = operator new(0xA0uLL);
  v31 = v35;
  v32 = v36;
  if (v36)
  {
    atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = *a5;
  v22 = *(a1 + 40);
  v23 = sub_29A017500(v22);
  sub_29A0206CC(v20, &v31, v21 + 24, v19, v22, v23);
  sub_29A02147C(v11, v20);
  if (v32)
  {
    sub_29A014BEC(v32);
  }

  if (v36)
  {
    sub_29A014BEC(v36);
  }

  if (v38)
  {
    sub_29A014BEC(v38);
  }

  return a1;
}

void sub_29A02139C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v13.__vftable = va_arg(va1, std::exception_vtbl *);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  v8 = *(v6 + 10);
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  v9 = *(v6 + 8);
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  v10 = *(v6 + 6);
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  v11 = *(v6 + 4);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  v12 = *(v6 + 2);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  Alembic::AbcCoreAbstract::v12::ObjectReader::~ObjectReader(v6);
  _Unwind_Resume(a1);
}

void sub_29A02147C(void *a1, void *a2)
{
  sub_29A017810(&v5, a2);
  v3 = a1[1];
  v4 = v5;
  *&v5 = *a1;
  *(&v5 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    sub_29A014BEC(v3);
  }
}

void *sub_29A0214C8(void *result, void *a2, void *a3, void *a4)
{
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A203D178;
  result[3] = 0;
  result[4] = 0;
  result[5] = *a2;
  v4 = a2[1];
  result[6] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  result[7] = *a3;
  v5 = a3[1];
  result[8] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  result[9] = *a4;
  v6 = a4[1];
  result[10] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  if (!result[5])
  {
    sub_29A008864(v16);
    sub_29A00911C(v17, "Invalid archive in OrImpl(Archive)", 34);
    std::stringbuf::str();
    sub_29A008C60(v15, __p);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v8 = sub_29A008E1C(exception, v15);
    __cxa_throw(v8, &unk_2A203B108, sub_29A008B08);
  }

  if (!result[7])
  {
    sub_29A008864(v16);
    sub_29A00911C(v17, "Invalid data in OrImpl(Archive)", 31);
    std::stringbuf::str();
    sub_29A008C60(v15, __p);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = __cxa_allocate_exception(0x20uLL);
    v10 = sub_29A008E1C(v9, v15);
    __cxa_throw(v10, &unk_2A203B108, sub_29A008B08);
  }

  if (!result[9])
  {
    sub_29A008864(v16);
    sub_29A00911C(v17, "Invalid header in OrImpl(Archive)", 33);
    std::stringbuf::str();
    sub_29A008C60(v15, __p);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    v11 = __cxa_allocate_exception(0x20uLL);
    v12 = sub_29A008E1C(v11, v15);
    __cxa_throw(v12, &unk_2A203B108, sub_29A008B08);
  }

  return result;
}

void sub_29A02170C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v11.__vftable = va_arg(va1, std::exception_vtbl *);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  v6 = *(v4 + 10);
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  v7 = *(v4 + 8);
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  v8 = *(v4 + 6);
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  v9 = *(v4 + 4);
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  v10 = *(v4 + 2);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  Alembic::AbcCoreAbstract::v12::ObjectReader::~ObjectReader(v4);
  _Unwind_Resume(a1);
}

void sub_29A0217A4(Alembic::AbcCoreAbstract::v12::ObjectReader *this)
{
  *this = &unk_2A203D178;
  v2 = *(this + 10);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  Alembic::AbcCoreAbstract::v12::ObjectReader::~ObjectReader(this);
}

void sub_29A021834(Alembic::AbcCoreAbstract::v12::ObjectReader *a1)
{
  sub_29A0217A4(a1);

  operator delete(v1);
}

uint64_t sub_29A021864@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 48);
  *a2 = *(result + 40);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29A021880@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *a2 = *(result + 24);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_29A02189C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[7];
  (*(*a1 + 104))(&v4);
  sub_29A020754(v3, &v4, a2);
  if (v5)
  {
    sub_29A014BEC(v5);
  }
}

void sub_29A02190C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A02192C(void *a1, unint64_t a2)
{
  v3 = a1[7];
  (*(*a1 + 104))(&v6);
  v4 = sub_29A0208F4(v3, &v6, a2);
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  return v4;
}

void sub_29A0219A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A0219BC(void *a1, const void **a2)
{
  v3 = a1[7];
  (*(*a1 + 104))(&v6);
  v4 = sub_29A0209EC(v3, &v6, a2);
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  return v4;
}

void sub_29A021A34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A021A4C(void *a1@<X0>, const void **a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1[7];
  (*(*a1 + 104))(&v6);
  sub_29A020A7C(v5, &v6, a2, a3);
  if (v7)
  {
    sub_29A014BEC(v7);
  }
}

void sub_29A021ACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A021AE4(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1[7];
  (*(*a1 + 104))(&v6);
  sub_29A020B40(v5, &v6, a2, a3);
  if (v7)
  {
    sub_29A014BEC(v7);
  }
}

void sub_29A021B64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_29A021B7C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_29A014C58(&v4, (a1 + 8));
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_29A021BBC(uint64_t a1, void *a2)
{
  sub_29A0173F4(*(a1 + 40), &v5);
  sub_29A020E0C(*(a1 + 56), a2, *(v5 + 8));
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  return 1;
}

void sub_29A021C18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A021C30(uint64_t a1, void *a2)
{
  sub_29A0173F4(*(a1 + 40), &v5);
  sub_29A020EC0(*(a1 + 56), a2, *(v5 + 8));
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  return 1;
}

void sub_29A021C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A021CA4(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v3 = *a2;
  *(a1 + 16) = *a2;
  v4 = *(a2 + 8);
  *(a1 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *(a1 + 16);
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  if (!v3)
  {
    sub_29A008864(&v16);
    sub_29A00911C(v17, "Invalid parent group", 20);
    std::stringbuf::str();
    sub_29A008C60(v15, &__p);
    if (v14 < 0)
    {
      operator delete(__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v10 = sub_29A008E1C(exception, v15);
    __cxa_throw(v10, &unk_2A203B108, sub_29A008B08);
  }

  v5 = operator new(0x68uLL);
  Alembic::Ogawa::v12::OGroup::addGroup(v3, &v11);
  sub_29A01D104(v5, &v11);
  sub_29A01F840(&v16, v5);
  v6 = v16;
  v16 = 0uLL;
  v7 = *(a1 + 104);
  *(a1 + 96) = v6;
  if (v7)
  {
    sub_29A014BEC(v7);
    if (*(&v16 + 1))
    {
      sub_29A014BEC(*(&v16 + 1));
    }
  }

  if (v12)
  {
    sub_29A014BEC(v12);
  }

  return a1;
}

void sub_29A021E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v15.__vftable = va_arg(va1, std::exception_vtbl *);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  v10 = *(v7 + 112);
  if (v10)
  {
    *(v7 + 120) = v10;
    operator delete(v10);
  }

  v11 = *(v7 + 104);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  v12 = *(v7 + 88);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  sub_29A01E5E8(v8, *(v7 + 64));
  sub_29A0176E4(va1);
  v13 = *(v7 + 24);
  if (v13)
  {
    sub_29A014BEC(v13);
  }

  v14 = *(v7 + 8);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A021EE8(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    *(a1 + 120) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 104);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(a1 + 88);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  sub_29A01E5E8(a1 + 56, *(a1 + 64));
  v8 = (a1 + 32);
  sub_29A0176E4(&v8);
  v5 = *(a1 + 24);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  return a1;
}

void sub_29A021F74(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  v6 = a1[11];
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    a3[1] = v7;
    if (v7)
    {
      v8 = a1[10];
      *a3 = v8;
      if (v8)
      {
        return;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = operator new(0x60uLL);
  v10 = a2[1];
  v18 = *a2;
  v19 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = a1[13];
  v16 = a1[12];
  v17 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = (*(**a2 + 16))(*a2);
  sub_29A01EE60(v9, &v18, &v16, (v12 + 48));
  sub_29A01EA68(&v20, v9);
  v14 = v20;
  v13 = v21;
  v20 = 0;
  v21 = 0;
  *a3 = v14;
  a3[1] = v13;
  if (v7)
  {
    sub_29A014BEC(v7);
    if (v21)
    {
      sub_29A014BEC(v21);
    }
  }

  if (v17)
  {
    sub_29A014BEC(v17);
  }

  if (v19)
  {
    sub_29A014BEC(v19);
  }

  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = a1[11];
  a1[10] = v14;
  a1[11] = v13;
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }
}

void sub_29A0220CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A022120(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2 >= (*(a1 + 40) - v2) >> 4)
  {
    sub_29A008864(v15);
    v5 = sub_29A00911C(v16, "Out of range index in OwData::getChildHeader: ", 46);
    MEMORY[0x29C2C1F00](v5, a2);
    std::stringbuf::str();
    sub_29A008C60(v14, __p);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v7 = sub_29A008E1C(exception, v14);
    __cxa_throw(v7, &unk_2A203B108, sub_29A008B08);
  }

  result = *(v2 + 16 * a2);
  if (!result)
  {
    sub_29A008864(v15);
    v9 = sub_29A00911C(v16, "Invalid child header: ", 22);
    MEMORY[0x29C2C1F00](v9, a2);
    std::stringbuf::str();
    sub_29A008C60(v14, __p);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    v10 = __cxa_allocate_exception(0x20uLL);
    v11 = sub_29A008E1C(v10, v14);
    __cxa_throw(v11, &unk_2A203B108, sub_29A008B08);
  }

  return result;
}

void sub_29A022278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5.__vftable = va_arg(va1, std::exception_vtbl *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  _Unwind_Resume(a1);
}

void *sub_29A0222AC(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40) - v2;
  if (!v3)
  {
    return 0;
  }

  v4 = v3 >> 4;
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  if (v5 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v4 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v4;
  }

  while (1)
  {
    v9 = *v2;
    v10 = *(*v2 + 23);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(*v2 + 8);
    }

    if (v10 == v6)
    {
      v12 = v11 >= 0 ? *v2 : *v9;
      if (!memcmp(v12, v7, v6))
      {
        break;
      }
    }

    v2 += 16;
    if (!--v8)
    {
      return 0;
    }
  }

  return v9;
}

void sub_29A022358(uint64_t a1@<X0>, uint64_t *a2@<X1>, void **a3@<X2>, __int128 *a4@<X3>, _OWORD *a5@<X8>)
{
  if (*(a4 + 23) < 0)
  {
    sub_29A008D14(&__dst, *a4, *(a4 + 1));
  }

  else
  {
    __dst = *a4;
    v48 = *(a4 + 2);
  }

  if (sub_29A00AF58(a1 + 56, &__dst))
  {
    sub_29A008864(&v46);
    v19 = sub_29A00911C(&v46.__r_.__value_.__r.__words[2], "Already have an Object named: ", 30);
    if (v48 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    if (v48 >= 0)
    {
      v21 = HIBYTE(v48);
    }

    else
    {
      v21 = *(&__dst + 1);
    }

    sub_29A00911C(v19, p_dst, v21);
    std::stringbuf::str();
    sub_29A008C60(__p, v42);
    if (v43 < 0)
    {
      operator delete(v42[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v23 = sub_29A008E1C(exception, __p);
    __cxa_throw(v23, &unk_2A203B108, sub_29A008B08);
  }

  v10 = HIBYTE(v48);
  if (v48 < 0)
  {
    v10 = *(&__dst + 1);
  }

  if (!v10)
  {
    sub_29A008864(&v46);
    v24 = sub_29A00911C(&v46.__r_.__value_.__r.__words[2], "Object not given a name, parent is: ", 36);
    v25 = *(a3 + 23);
    if (v25 >= 0)
    {
      v26 = a3;
    }

    else
    {
      v26 = *a3;
    }

    if (v25 >= 0)
    {
      v27 = *(a3 + 23);
    }

    else
    {
      v27 = a3[1];
    }

    sub_29A00911C(v24, v26, v27);
    std::stringbuf::str();
    sub_29A008C60(__p, v42);
    if (v43 < 0)
    {
      operator delete(v42[0]);
    }

    v28 = __cxa_allocate_exception(0x20uLL);
    v29 = sub_29A008E1C(v28, __p);
    __cxa_throw(v29, &unk_2A203B108, sub_29A008B08);
  }

  if (std::string::find(a4, 47, 0) != -1)
  {
    sub_29A008864(&v46);
    v30 = sub_29A00911C(&v46.__r_.__value_.__r.__words[2], "Object has illegal name: ", 25);
    v31 = *(a4 + 23);
    if (v31 >= 0)
    {
      v32 = a4;
    }

    else
    {
      v32 = *a4;
    }

    if (v31 >= 0)
    {
      v33 = *(a4 + 23);
    }

    else
    {
      v33 = *(a4 + 1);
    }

    sub_29A00911C(v30, v32, v33);
    std::stringbuf::str();
    sub_29A008C60(__p, v42);
    if (v43 < 0)
    {
      operator delete(v42[0]);
    }

    v34 = __cxa_allocate_exception(0x20uLL);
    v35 = sub_29A008E1C(v34, __p);
    __cxa_throw(v35, &unk_2A203B108, sub_29A008B08);
  }

  if (*(a3 + 23) < 0)
  {
    sub_29A008D14(&v46, *a3, a3[1]);
  }

  else
  {
    v46 = *a3;
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v46.__r_.__value_.__l.__size_ == 1)
    {
      v11 = v46.__r_.__value_.__r.__words[0];
LABEL_17:
      if (v11->__r_.__value_.__s.__data_[0] == 47)
      {
        goto LABEL_19;
      }
    }
  }

  else if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) == 1)
  {
    v11 = &v46;
    goto LABEL_17;
  }

  std::string::append(&v46, "/");
LABEL_19:
  v12 = operator new(0x48uLL);
  pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(&v46.__r_.__value_.__l.__data_, a4, __p);
  sub_29A022D18(v12, a4, __p, a4 + 6);
  sub_29A017588(v42, v12);
  if (v45 < 0)
  {
    operator delete(__p[0]);
  }

  v13 = operator new(0x60uLL);
  v14 = a2[1];
  v40 = *a2;
  v41 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Alembic::Ogawa::v12::OGroup::addGroup(*(a1 + 16), &v38);
  v36 = v42[0];
  v37 = v42[1];
  if (v42[1])
  {
    atomic_fetch_add_explicit(v42[1] + 1, 1uLL, memory_order_relaxed);
  }

  sub_29A02363C(v13, &v40, &v38, &v36, (*(a1 + 40) - *(a1 + 32)) >> 4);
  sub_29A01A374(__p, v13);
  if (v37)
  {
    sub_29A014BEC(v37);
  }

  if (v39)
  {
    sub_29A014BEC(v39);
  }

  if (v41)
  {
    sub_29A014BEC(v41);
  }

  sub_29A017F80((a1 + 32), v42);
  v16 = __p[0];
  v15 = __p[1];
  if (__p[1])
  {
    atomic_fetch_add_explicit(__p[1] + 2, 1uLL, memory_order_relaxed);
  }

  v49 = a4;
  v17 = sub_29A022E5C((a1 + 56), a4, &unk_29B431662, &v49);
  v18 = v17[8];
  v17[7] = v16;
  v17[8] = v15;
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  v49 = 0;
  sub_29A018094((a1 + 112), &v49);
  v49 = 0;
  sub_29A018094((a1 + 112), &v49);
  *a5 = *__p;
  if (v42[1])
  {
    sub_29A014BEC(v42[1]);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(__dst);
  }
}

void sub_29A0227E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_29A008F20(&a19);
  sub_29A008B0C(&__p);
  if (*(v31 - 89) < 0)
  {
    operator delete(*(v31 - 112));
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = sub_29A022DE0(a3, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

void sub_29A0229F4(uint64_t a1, uint64_t *a2, Alembic::Util::v12::SpookyHash *a3)
{
  v33[1] = *MEMORY[0x29EDCA608];
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v6 = *(a1 + 32);
  if (*(a1 + 40) != v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *(v6 + v7);
      v10 = a2[1];
      v25 = *a2;
      v26 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_29A02C6A4(&v27, v9, &v25);
      if (v26)
      {
        sub_29A014BEC(v26);
      }

      ++v8;
      v6 = *(a1 + 32);
      v7 += 16;
    }

    while (v8 < (*(a1 + 40) - v6) >> 4);
  }

  Alembic::Util::v12::SpookyHash::Init(v24, 0, 0);
  sub_29A01E50C(*(a1 + 96), v24);
  Alembic::Util::v12::SpookyHash::Final(v24, &__src, &v31, v11, v12);
  Alembic::Util::v12::SpookyHash::Init(a3, 0, 0);
  v13 = *(a1 + 112);
  v14 = *(a1 + 120);
  if (v13 == v14)
  {
    v32 = 0;
    v33[0] = 0;
  }

  else
  {
    Alembic::Util::v12::SpookyHash::Update(a3, v13, v14 - v13);
    Alembic::Util::v12::SpookyHash::Final(a3, &v32, v33, v15, v16);
  }

  for (i = 0; i != 32; ++i)
  {
    sub_29A00D178(&v27, &__src + i);
  }

  Alembic::Util::v12::SpookyHash::Update(a3, &__src, 0x10uLL);
  if (v27 != v28)
  {
    Alembic::Ogawa::v12::OGroup::addData(*(a1 + 16), v27, v28 - v27, &v22);
    if (v23)
    {
      sub_29A014BEC(v23);
    }
  }

  v18 = *(a1 + 96);
  v19 = a2[1];
  v20 = *a2;
  v21 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A01E2C8(v18, &v20);
  if (v21)
  {
    sub_29A014BEC(v21);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }
}

void sub_29A022BDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  v12 = *(v10 - 128);
  if (v12)
  {
    *(v10 - 120) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A022C28(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >= (result[5] - result[4]) >> 4 || (v4 = result[14], 2 * a2 >= (result[15] - v4) >> 3))
  {
    sub_29A008864(&v11);
    sub_29A00911C(v12, "Invalid property index requested in OwData::fillHash", 52);
    std::stringbuf::str();
    sub_29A008C60(v10, &__p);
    if (v9 < 0)
    {
      operator delete(__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v7 = sub_29A008E1C(exception, v10);
    __cxa_throw(v7, &unk_2A203B108, sub_29A008B08);
  }

  v5 = (v4 + 16 * a2);
  *v5 = a3;
  v5[1] = a4;
  return result;
}

void sub_29A022CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5.__vftable = va_arg(va1, std::exception_vtbl *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  _Unwind_Resume(a1);
}

char *sub_29A022D18(char *__dst, __int128 *a2, __int128 *a3, const void ***a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v7;
  }

  if (*(a3 + 23) < 0)
  {
    sub_29A008D14(__dst + 24, *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(__dst + 5) = *(a3 + 2);
    *(__dst + 24) = v8;
  }

  sub_29A019350(__dst + 6, a4);
  return __dst;
}

void sub_29A022DAC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A022DE0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_29A008DA8();
  }

  if (a2 > 0x16)
  {
    if ((a2 | 7) == 0x17)
    {
      v4 = 25;
    }

    else
    {
      v4 = (a2 | 7) + 1;
    }

    v5 = operator new(v4);
    *(a1 + 8) = a2;
    *(a1 + 16) = v4 | 0x8000000000000000;
    *a1 = v5;
  }

  else
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    *(a1 + 23) = a2;
  }

  return a1;
}

uint64_t *sub_29A022E5C(uint64_t **a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v6 = sub_29A00B0D0(a1, &v9, a2);
  result = *v6;
  if (!*v6)
  {
    sub_29A022EF4(a1, a4, &v8);
    sub_29A00B204(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

_BYTE *sub_29A022EF4@<X0>(uint64_t a1@<X0>, __int128 **a2@<X2>, void *a3@<X8>)
{
  result = operator new(0x48uLL);
  v7 = result;
  *a3 = result;
  a3[1] = a1;
  a3[2] = 0;
  v8 = *a2;
  if (*(*a2 + 23) < 0)
  {
    result = sub_29A008D14(result + 32, *v8, *(v8 + 1));
  }

  else
  {
    v9 = *v8;
    *(result + 6) = *(v8 + 2);
    *(result + 2) = v9;
  }

  *(v7 + 7) = 0;
  *(v7 + 8) = 0;
  *(a3 + 16) = 1;
  return result;
}

void *sub_29A022F88(void *a1, void *a2, void *a3, const void ***a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A203D240;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = *a2;
  v7 = a2[1];
  a1[6] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = operator new(0x48uLL);
  sub_29A008E78(&v19, "ABC");
  sub_29A008E78(__p, "/");
  sub_29A022D18(v8, &v19, __p, a4);
  sub_29A017588(a1 + 7, v8);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v20[0]) < 0)
  {
    operator delete(v19);
  }

  a1[9] = *a3;
  v9 = a3[1];
  a1[10] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  a1[11] = 0;
  if (!a1[5])
  {
    sub_29A008864(&v19);
    sub_29A00911C(v20, "Invalid archive", 15);
    std::stringbuf::str();
    sub_29A008C60(__p, v15);
    if (v16 < 0)
    {
      operator delete(v15[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v12 = sub_29A008E1C(exception, __p);
    __cxa_throw(v12, &unk_2A203B108, sub_29A008B08);
  }

  if (!a1[9])
  {
    sub_29A008864(&v19);
    sub_29A00911C(v20, "Invalid data", 12);
    std::stringbuf::str();
    sub_29A008C60(__p, v15);
    if (v16 < 0)
    {
      operator delete(v15[0]);
    }

    v13 = __cxa_allocate_exception(0x20uLL);
    v14 = sub_29A008E1C(v13, __p);
    __cxa_throw(v14, &unk_2A203B108, sub_29A008B08);
  }

  return a1;
}

void sub_29A0231B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_29A008F20(&a12);
  sub_29A008B0C(&__p);
  v26 = *(v24 + 10);
  if (v26)
  {
    sub_29A014BEC(v26);
  }

  v27 = *(v24 + 8);
  if (v27)
  {
    sub_29A014BEC(v27);
  }

  v28 = *(v24 + 6);
  if (v28)
  {
    sub_29A014BEC(v28);
  }

  v29 = *(v24 + 4);
  if (v29)
  {
    sub_29A014BEC(v29);
  }

  v30 = *(v24 + 2);
  if (v30)
  {
    std::__shared_weak_count::__release_weak(v30);
  }

  Alembic::AbcCoreAbstract::v12::ObjectWriter::~ObjectWriter(v24);
  _Unwind_Resume(a1);
}

void *sub_29A02329C(void *a1, void *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A203D240;
  a1[3] = *a2;
  v7 = a2[1];
  a1[4] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  a1[5] = 0;
  a1[6] = 0;
  v8 = a1 + 5;
  a1[7] = *a4;
  v9 = a4[1];
  a1[8] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  a1[9] = 0;
  a1[10] = 0;
  a1[11] = a5;
  v10 = a1[3];
  if (!v10)
  {
    sub_29A008864(&v28);
    sub_29A00911C(v29, "Invalid parent", 14);
    std::stringbuf::str();
    sub_29A008C60(v27, __p);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v20 = sub_29A008E1C(exception, v27);
    __cxa_throw(v20, &unk_2A203B108, sub_29A008B08);
  }

  if (!a1[7])
  {
    sub_29A008864(&v28);
    sub_29A00911C(v29, "Invalid header", 14);
    std::stringbuf::str();
    sub_29A008C60(v27, __p);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    v21 = __cxa_allocate_exception(0x20uLL);
    v22 = sub_29A008E1C(v21, v27);
    __cxa_throw(v22, &unk_2A203B108, sub_29A008B08);
  }

  (*(*v10 + 24))(&v28);
  v11 = v28;
  v28 = 0uLL;
  v12 = a1[6];
  *(a1 + 5) = v11;
  if (!v12)
  {
    if (v11)
    {
      goto LABEL_11;
    }

LABEL_17:
    sub_29A008864(&v28);
    sub_29A00911C(v29, "Invalid archive", 15);
    std::stringbuf::str();
    sub_29A008C60(v27, __p);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    v17 = __cxa_allocate_exception(0x20uLL);
    v18 = sub_29A008E1C(v17, v27);
    __cxa_throw(v18, &unk_2A203B108, sub_29A008B08);
  }

  sub_29A014BEC(v12);
  if (*(&v28 + 1))
  {
    sub_29A014BEC(*(&v28 + 1));
  }

  if (!*v8)
  {
    goto LABEL_17;
  }

LABEL_11:
  v13 = operator new(0x88uLL);
  v14 = v13;
  v15 = a3[1];
  v23 = *a3;
  v24 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A021EE4(v13, &v23);
  sub_29A018898(a1 + 9, v14);
  if (v24)
  {
    sub_29A014BEC(v24);
  }

  return a1;
}

void sub_29A023580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v14.__vftable = va_arg(va1, std::exception_vtbl *);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  v9 = *(v7 + 10);
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  v10 = *(v7 + 8);
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  v11 = *(v7 + 6);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  v12 = *(v7 + 4);
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  v13 = *(v7 + 2);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  Alembic::AbcCoreAbstract::v12::ObjectWriter::~ObjectWriter(v7);
  _Unwind_Resume(a1);
}

void sub_29A023640(Alembic::AbcCoreAbstract::v12::ObjectWriter *this)
{
  *this = &unk_2A203D240;
  if (!*(this + 3))
  {
    goto LABEL_28;
  }

  v3 = *(this + 6);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(v2 + 29);
  v4 = *(v2 + 30);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    sub_29A014BEC(v3);
  }

  Alembic::Util::v12::SpookyHash::Init(v27, 0, 0);
  v6 = *(this + 9);
  v25 = v5;
  v26 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A0229F4(v6, &v25, v27);
  if (v26)
  {
    sub_29A014BEC(v26);
  }

  Alembic::Util::v12::TokenMap::get((*(this + 7) + 48), 0x3Bu, 61, 1);
  v7 = v24;
  if ((v24 & 0x8000000000000000) != 0)
  {
    v7 = v23;
    if (v23)
    {
      p_p = __p;
      goto LABEL_17;
    }
  }

  else if (v24)
  {
    p_p = &__p;
LABEL_17:
    Alembic::Util::v12::SpookyHash::Update(v27, p_p, v7);
  }

  v9 = *(this + 7);
  v10 = *(v9 + 23);
  if ((v10 & 0x8000000000000000) != 0)
  {
    v9 = *v9;
    v10 = *(*(this + 7) + 8);
  }

  Alembic::Util::v12::SpookyHash::Update(v27, v9, v10);
  v20 = 0;
  v21 = 0;
  Alembic::Util::v12::SpookyHash::Final(v27, &v21, &v20, v11, v12);
  v14 = *(this + 4);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A022C28(v13[9], *(this + 11), v21, v20);
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  if (v24 < 0)
  {
    operator delete(__p);
  }

  if (v4)
  {
    sub_29A014BEC(v4);
  }

LABEL_28:
  v15 = *(this + 10);
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  v16 = *(this + 8);
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  v17 = *(this + 6);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  v18 = *(this + 4);
  if (v18)
  {
    sub_29A014BEC(v18);
  }

  v19 = *(this + 2);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  Alembic::AbcCoreAbstract::v12::ObjectWriter::~ObjectWriter(this);
}

void sub_29A023898(Alembic::AbcCoreAbstract::v12::ObjectWriter *a1)
{
  sub_29A023640(a1);

  operator delete(v1);
}

uint64_t sub_29A0238C0(uint64_t a1)
{
  result = *(a1 + 56);
  if (!result)
  {
    sub_29A008864(&v7);
    sub_29A00911C(v8, "Invalid header", 14);
    std::stringbuf::str();
    sub_29A008C60(v6, &__p);
    if (v5 < 0)
    {
      operator delete(__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v3 = sub_29A008E1C(exception, v6);
    __cxa_throw(v3, &unk_2A203B108, sub_29A008B08);
  }

  return result;
}

void sub_29A023964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5.__vftable = va_arg(va1, std::exception_vtbl *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_29A02398C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 48);
  *a2 = *(result + 40);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29A0239A8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *a2 = *(result + 24);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_29A0239C4(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[9];
  (*(*a1 + 88))(&v4);
  sub_29A021F74(v3, &v4, a2);
  if (v5)
  {
    sub_29A014BEC(v5);
  }
}

void sub_29A023A34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A023A6C(void *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = a1[9];
  (*(*a1 + 88))(&v7);
  sub_29A022358(v6, &v7, (a1[7] + 24), a2, a3);
  if (v8)
  {
    sub_29A014BEC(v8);
  }
}

void sub_29A023AF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_29A023B10@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_29A014C58(&v4, (a1 + 8));
  result = *&v4;
  *a2 = v4;
  return result;
}

void sub_29A023B50(Alembic::Ogawa::v12::IData **a1, Alembic::Ogawa::v12::IData **a2, unint64_t a3, unsigned int *a4, void **a5)
{
  if (!Alembic::Ogawa::v12::IData::getSize(*a1))
  {
    if (Alembic::Ogawa::v12::IData::getSize(*a2))
    {
      v12 = sub_29A00D14C(a4);
      if (Alembic::Ogawa::v12::IData::getSize(*a2) > 0xF)
      {
        if (v12)
        {
          v16 = (Alembic::Ogawa::v12::IData::getSize(*a2) - 16) / v12;
          sub_29A0161D0(&__p, 1uLL, &v16);
          if (&__p != a5)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v16 = 0;
          sub_29A0161D0(&__p, 1uLL, &v16);
          if (&__p != a5)
          {
LABEL_19:
            sub_29A00CB24(a5, __p, v18, (v18 - __p) >> 3);
          }
        }
      }

      else
      {
        v16 = 0;
        sub_29A0161D0(&__p, 1uLL, &v16);
        if (&__p != a5)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      v16 = 0;
      sub_29A0161D0(&__p, 1uLL, &v16);
      if (&__p != a5)
      {
        goto LABEL_19;
      }
    }

    v15 = __p;
    if (!__p)
    {
      return;
    }

    v18 = __p;
    goto LABEL_22;
  }

  Size = Alembic::Ogawa::v12::IData::getSize(*a1);
  sub_29A023D7C(a5, Size >> 3);
  sub_29A011718(&__p, Size >> 3);
  v11 = __p;
  if (__p != v18)
  {
    Alembic::Ogawa::v12::IData::read(*a1, Size & 0xFFFFFFFFFFFFFFF8, __p, 0, a3);
    v11 = __p;
    if (Size >= 8)
    {
      v13 = 0;
      v14 = *a5;
      do
      {
        v14[v13] = *&v11[8 * v13];
        ++v13;
      }

      while (Size >> 3 != v13);
      goto LABEL_12;
    }
  }

  if (v11)
  {
LABEL_12:
    v18 = v11;
    v15 = v11;
LABEL_22:
    operator delete(v15);
  }
}

void sub_29A023D50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A023D7C(void *a1, unint64_t a2)
{
  v4 = a1[1] - *a1;
  sub_29A00BF50(a1, a2);
  if (a2 > v4 >> 3)
  {
    v5 = (*a1 + v4);

    bzero(v5, 8 * a2 - v4);
  }
}

void sub_29A023DEC(int a1, int a2, __int16 *a3, char *a4, unint64_t a5, double a6)
{
  if (a1 > 5)
  {
    if (a1 > 8)
    {
      switch(a1)
      {
        case 9:
          if (a2 <= 4)
          {
            if (a2 <= 1)
            {
              if (a2)
              {
                if (a2 == 1)
                {
                  sub_29A025C50(a3, a4, a5);
                }
              }

              else
              {
                sub_29A025BD8(a3, a4, a5);
              }
            }

            else if (a2 == 2)
            {
              sub_29A025D48(a3, a4, a5);
            }

            else if (a2 == 3)
            {
              sub_29A025E44(a3, a4, a5);
            }

            else
            {
              sub_29A025F4C(a3, a4, a5);
            }
          }

          else if (a2 > 7)
          {
            switch(a2)
            {
              case 8:
                sub_29A02639C(a3, a4, a5);
                break;
              case 10:
                sub_29A0264B0(a3, a4, a5);
                break;
              case 11:
                sub_29A0265BC(a3, a4, a5);
                break;
            }
          }

          else if (a2 == 5)
          {
            sub_29A026078(a3, a4, a5);
          }

          else if (a2 == 6)
          {
            sub_29A026180(a3, a4, a5);
          }

          else
          {
            sub_29A026294(a3, a4, a5);
          }

          break;
        case 10:
          if (a2 <= 4)
          {
            if (a2 <= 1)
            {
              if (a2)
              {
                if (a2 == 1)
                {
                  sub_29A0266D0(a3, a4, a5);
                }
              }

              else if (a5 >= 4)
              {
                v113 = a5 >> 2;
                do
                {
                  v114 = *a3;
                  a3 += 2;
                  *a4++ = v114 != 0.0;
                  --v113;
                }

                while (v113);
              }
            }

            else if (a2 == 2)
            {
              sub_29A026720(a3, a4, a5);
            }

            else if (a2 == 3)
            {
              sub_29A026770(a3, a4, a5);
            }

            else
            {
              sub_29A0267BC(a3, a4, a5);
            }
          }

          else if (a2 > 7)
          {
            if (a2 == 8)
            {
              if (a5 >= 4)
              {
                v153 = a5 >> 2;
                do
                {
                  v154 = *&a3[2 * v153 - 2];
                  v155 = -3.4028e38;
                  if (v154 >= -3.4028e38)
                  {
                    v155 = *&a3[2 * v153 - 2];
                    if (v154 > 3.4028e38)
                    {
                      v155 = 3.4028e38;
                    }
                  }

                  *&a4[8 * v153-- - 8] = v155;
                }

                while (v153);
              }
            }

            else if (a2 == 9)
            {
              sub_29A026808(a3, a4, a5);
            }

            else if (a2 == 11 && a5 >= 4)
            {
              v41 = a5 >> 2;
              do
              {
                v42 = *&a3[2 * v41 - 2];
                v43 = -3.4028e38;
                if (v42 >= -3.4028e38)
                {
                  v43 = *&a3[2 * v41 - 2];
                  if (v42 > 3.4028e38)
                  {
                    v43 = 3.4028e38;
                  }
                }

                *&a4[8 * v41-- - 8] = v43;
              }

              while (v41);
            }
          }

          else if (a2 == 5)
          {
            if (a5 >= 4)
            {
              v150 = a5 >> 2;
              do
              {
                v151 = *&a3[2 * v150 - 2];
                v152 = 0.0;
                if (v151 >= 0.0)
                {
                  v152 = *&a3[2 * v150 - 2];
                  if (v151 > 3.4028e38)
                  {
                    v152 = 3.4028e38;
                  }
                }

                *&a4[4 * v150-- - 4] = v152;
              }

              while (v150);
            }
          }

          else if (a2 == 6)
          {
            if (a5 >= 4)
            {
              v129 = a5 >> 2;
              do
              {
                v130 = *&a3[2 * v129 - 2];
                v131 = -3.4028e38;
                if (v130 >= -3.4028e38)
                {
                  v131 = *&a3[2 * v129 - 2];
                  if (v130 > 3.4028e38)
                  {
                    v131 = 3.4028e38;
                  }
                }

                *&a4[4 * v129-- - 4] = v131;
              }

              while (v129);
            }
          }

          else if (a5 >= 4)
          {
            v19 = a5 >> 2;
            do
            {
              v20 = *&a3[2 * v19 - 2];
              v21 = 0.0;
              if (v20 >= 0.0)
              {
                v21 = *&a3[2 * v19 - 2];
                if (v20 > 3.4028e38)
                {
                  v21 = 3.4028e38;
                }
              }

              *&a4[8 * v19-- - 8] = v21;
            }

            while (v19);
          }

          break;
        case 11:
          if (a2 <= 4)
          {
            if (a2 <= 1)
            {
              if (a2)
              {
                if (a2 == 1)
                {
                  sub_29A026928(a3, a4, a5);
                }
              }

              else if (a5 >= 8)
              {
                v104 = a5 >> 3;
                do
                {
                  v105 = *a3;
                  a3 += 4;
                  *a4++ = v105 != 0.0;
                  --v104;
                }

                while (v104);
              }
            }

            else if (a2 == 2)
            {
              sub_29A026974(a3, a4, a5);
            }

            else if (a2 == 3)
            {
              sub_29A0269C4(a3, a4, a5);
            }

            else
            {
              sub_29A026A10(a3, a4, a5);
            }
          }

          else if (a2 > 7)
          {
            if (a2 == 8)
            {
              if (a5 >= 8)
              {
                v141 = a5 >> 3;
                do
                {
                  v142 = *&a3[4 * v141 - 4];
                  v143 = -1.79769313e308;
                  if (v142 >= -1.79769313e308)
                  {
                    v143 = *&a3[4 * v141 - 4];
                    if (v142 > 1.79769313e308)
                    {
                      v143 = 1.79769313e308;
                    }
                  }

                  *&a4[8 * v141-- - 8] = v143;
                }

                while (v141);
              }
            }

            else if (a2 == 9)
            {
              sub_29A026A60(a3, a4, a5);
            }

            else if (a2 == 10 && a5 >= 8)
            {
              v34 = a5 >> 3;
              do
              {
                v35 = -3.40282347e38;
                if (*a3 >= -3.40282347e38)
                {
                  v35 = *a3;
                  if (*a3 > 3.40282347e38)
                  {
                    v35 = 3.40282347e38;
                  }
                }

                v36 = v35;
                *a4 = v36;
                a4 += 4;
                a3 += 4;
                --v34;
              }

              while (v34);
            }
          }

          else if (a2 == 5)
          {
            if (a5 >= 8)
            {
              v139 = a5 >> 3;
              do
              {
                v140 = 0.0;
                if (*a3 >= 0.0)
                {
                  v140 = *a3;
                  if (*a3 > 4294967300.0)
                  {
                    v140 = 4294967300.0;
                  }
                }

                *a4 = v140;
                a4 += 4;
                a3 += 4;
                --v139;
              }

              while (v139);
            }
          }

          else if (a2 == 6)
          {
            if (a5 >= 8)
            {
              v120 = a5 >> 3;
              do
              {
                v121 = -2147483650.0;
                if (*a3 >= -2147483650.0)
                {
                  v121 = *a3;
                  if (*a3 > 2147483650.0)
                  {
                    v121 = 2147483650.0;
                  }
                }

                *a4 = v121;
                a4 += 4;
                a3 += 4;
                --v120;
              }

              while (v120);
            }
          }

          else if (a5 >= 8)
          {
            v10 = a5 >> 3;
            do
            {
              v11 = *&a3[4 * v10 - 4];
              v12 = 0.0;
              if (v11 >= 0.0)
              {
                v12 = *&a3[4 * v10 - 4];
                if (v11 > 1.79769313e308)
                {
                  v12 = 1.79769313e308;
                }
              }

              *&a4[8 * v10-- - 8] = v12;
            }

            while (v10);
          }

          break;
      }
    }

    else if (a1 == 6)
    {
      if (a2 <= 4)
      {
        if (a2 <= 1)
        {
          if (a2)
          {
            if (a2 == 1 && a5 >= 4)
            {
              v60 = a5 >> 2;
              do
              {
                v62 = *a3;
                a3 += 2;
                v61 = v62;
                if (v62 >= 255)
                {
                  v61 = 255;
                }

                *a4++ = v61 & ~(v61 >> 31);
                --v60;
              }

              while (v60);
            }
          }

          else if (a5 >= 4)
          {
            v106 = a5 >> 2;
            do
            {
              v107 = *a3;
              a3 += 2;
              *a4++ = LODWORD(v107) != 0;
              --v106;
            }

            while (v106);
          }
        }

        else if (a2 == 2)
        {
          if (a5 >= 4)
          {
            v133 = a5 >> 2;
            do
            {
              v135 = *a3;
              a3 += 2;
              v134 = v135;
              if (v135 >= 127)
              {
                v134 = 127;
              }

              if (v134 <= -128)
              {
                LOBYTE(v134) = 0x80;
              }

              *a4++ = v134;
              --v133;
            }

            while (v133);
          }
        }

        else if (a2 == 3)
        {
          if (a5 >= 4)
          {
            v115 = a5 >> 2;
            do
            {
              v117 = *a3;
              a3 += 2;
              v116 = v117;
              if (v117 >= 0xFFFF)
              {
                v116 = 0xFFFF;
              }

              *a4 = v116 & ~(v116 >> 31);
              a4 += 2;
              --v115;
            }

            while (v115);
          }
        }

        else if (a5 >= 4)
        {
          v26 = a5 >> 2;
          do
          {
            v28 = *a3;
            a3 += 2;
            v27 = v28;
            if (v28 >= 0x7FFF)
            {
              v27 = 0x7FFF;
            }

            if (v27 <= -32768)
            {
              LOWORD(v27) = 0x8000;
            }

            *a4 = v27;
            a4 += 2;
            --v26;
          }

          while (v26);
        }
      }

      else if (a2 > 8)
      {
        if (a2 == 9)
        {
          sub_29A0259C0(a3, a4, a5);
        }

        else if (a2 == 10)
        {
          if (a5 >= 4)
          {
            v126 = a5 >> 2;
            do
            {
              *&a4[4 * v126 - 4] = *&a3[2 * v126 - 2];
              --v126;
            }

            while (v126);
          }
        }

        else if (a2 == 11 && a5 >= 4)
        {
          v38 = a5 >> 2;
          do
          {
            *&a4[8 * v38 - 8] = *&a3[2 * v38 - 2];
            --v38;
          }

          while (v38);
        }
      }

      else if (a2 == 5)
      {
        if (a5 >= 4)
        {
          v147 = a5 >> 2;
          do
          {
            *&a4[4 * v147 - 4] = *&a3[2 * v147 - 2] & ~(*&a3[2 * v147 - 2] >> 31);
            --v147;
          }

          while (v147);
        }
      }

      else if (a2 == 7)
      {
        if (a5 >= 4)
        {
          v123 = a5 >> 2;
          do
          {
            *&a4[8 * v123 - 8] = *&a3[2 * v123 - 2] & ~(*&a3[2 * v123 - 2] >> 31);
            --v123;
          }

          while (v123);
        }
      }

      else if (a2 == 8 && a5 >= 4)
      {
        v13 = a5 >> 2;
        do
        {
          *&a4[8 * v13 - 8] = *&a3[2 * v13 - 2];
          --v13;
        }

        while (v13);
      }
    }

    else if (a1 == 7)
    {
      if (a2 > 3)
      {
        if (a2 > 5)
        {
          if (a2 == 6)
          {
            if (a5 >= 8)
            {
              v78 = a5 >> 3;
              do
              {
                v80 = *a3;
                a3 += 4;
                v79 = v80;
                if (v80 >= 0x7FFFFFFF)
                {
                  v79 = 0x7FFFFFFF;
                }

                *a4 = v79;
                a4 += 4;
                --v78;
              }

              while (v78);
            }
          }

          else if (a2 == 8 && a5 >= 8)
          {
            v47 = a5 >> 3;
            do
            {
              v48 = *&a3[4 * v47 - 4];
              if (v48 >= 0x7FFFFFFFFFFFFFFFLL)
              {
                v48 = 0x7FFFFFFFFFFFFFFFLL;
              }

              *&a4[8 * v47-- - 8] = v48;
            }

            while (v47);
          }
        }

        else if (a2 == 4)
        {
          if (a5 >= 8)
          {
            v72 = a5 >> 3;
            do
            {
              v74 = *a3;
              a3 += 4;
              v73 = v74;
              if (v74 >= 0x7FFF)
              {
                v73 = 0x7FFF;
              }

              *a4 = v73;
              a4 += 2;
              --v72;
            }

            while (v72);
          }
        }

        else if (a5 >= 8)
        {
          v23 = a5 >> 3;
          do
          {
            v25 = *a3;
            a3 += 4;
            v24 = v25;
            if (v25 >= 0xFFFFFFFF)
            {
              v24 = -1;
            }

            *a4 = v24;
            a4 += 4;
            --v23;
          }

          while (v23);
        }
      }

      else if (a2 > 1)
      {
        if (a2 == 2)
        {
          if (a5 >= 8)
          {
            v75 = a5 >> 3;
            do
            {
              v77 = *a3;
              a3 += 4;
              v76 = v77;
              if (v77 >= 0x7F)
              {
                v76 = 127;
              }

              *a4++ = v76;
              --v75;
            }

            while (v75);
          }
        }

        else if (a5 >= 8)
        {
          v44 = a5 >> 3;
          do
          {
            v46 = *a3;
            a3 += 4;
            v45 = v46;
            if (v46 >= 0xFFFF)
            {
              v45 = -1;
            }

            *a4 = v45;
            a4 += 2;
            --v44;
          }

          while (v44);
        }
      }

      else if (a2)
      {
        if (a2 == 1 && a5 >= 8)
        {
          v15 = a5 >> 3;
          do
          {
            v17 = *a3;
            a3 += 4;
            v16 = v17;
            if (v17 >= 0xFF)
            {
              v16 = -1;
            }

            *a4++ = v16;
            --v15;
          }

          while (v15);
        }
      }

      else if (a5 >= 8)
      {
        v70 = a5 >> 3;
        do
        {
          v71 = *a3;
          a3 += 4;
          *a4++ = v71 != 0;
          --v70;
        }

        while (v70);
      }
    }

    else if (a2 > 4)
    {
      if (a2 <= 6)
      {
        if (a2 == 5)
        {
          if (a5 >= 8)
          {
            v93 = a5 >> 3;
            do
            {
              v95 = *a3;
              a3 += 4;
              v94 = v95;
              if (v95 >= 0xFFFFFFFFLL)
              {
                v94 = 0xFFFFFFFFLL;
              }

              *a4 = v94 & ~(v94 >> 63);
              a4 += 4;
              --v93;
            }

            while (v93);
          }
        }

        else if (a5 >= 8)
        {
          v57 = a5 >> 3;
          do
          {
            v59 = *a3;
            a3 += 4;
            v58 = v59;
            if (v59 >= 0x7FFFFFFF)
            {
              v58 = 0x7FFFFFFFLL;
            }

            if (v58 <= 0xFFFFFFFF80000000)
            {
              LODWORD(v58) = 0x80000000;
            }

            *a4 = v58;
            a4 += 4;
            --v57;
          }

          while (v57);
        }
      }

      else if (a2 == 7)
      {
        if (a5 >= 8)
        {
          v99 = a5 >> 3;
          do
          {
            *&a4[8 * v99 - 8] = *&a3[4 * v99 - 4] & ~(*&a3[4 * v99 - 4] >> 63);
            --v99;
          }

          while (v99);
        }
      }

      else if (a2 == 9)
      {
        sub_29A025ACC(a3, a4, a5);
      }

      else if (a2 == 11 && a5 >= 8)
      {
        v22 = a5 >> 3;
        do
        {
          *&a4[8 * v22 - 8] = *&a3[4 * v22 - 4];
          --v22;
        }

        while (v22);
      }
    }

    else if (a2 <= 1)
    {
      if (a2)
      {
        if (a2 == 1 && a5 >= 8)
        {
          v54 = a5 >> 3;
          do
          {
            v56 = *a3;
            a3 += 4;
            v55 = v56;
            if (v56 >= 255)
            {
              v55 = 255;
            }

            *a4++ = v55 & ~(v55 >> 63);
            --v54;
          }

          while (v54);
        }
      }

      else if (a5 >= 8)
      {
        v91 = a5 >> 3;
        do
        {
          v92 = *a3;
          a3 += 4;
          *a4++ = v92 != 0;
          --v91;
        }

        while (v91);
      }
    }

    else if (a2 == 2)
    {
      if (a5 >= 8)
      {
        v96 = a5 >> 3;
        do
        {
          v98 = *a3;
          a3 += 4;
          v97 = v98;
          if (v98 >= 127)
          {
            v97 = 127;
          }

          if (v97 <= -128)
          {
            LOBYTE(v97) = 0x80;
          }

          *a4++ = v97;
          --v96;
        }

        while (v96);
      }
    }

    else if (a2 == 3)
    {
      if (a5 >= 8)
      {
        v100 = a5 >> 3;
        do
        {
          v102 = *a3;
          a3 += 4;
          v101 = v102;
          if (v102 >= 0xFFFF)
          {
            v101 = 0xFFFFLL;
          }

          *a4 = v101 & ~(v101 >> 63);
          a4 += 2;
          --v100;
        }

        while (v100);
      }
    }

    else if (a5 >= 8)
    {
      v6 = a5 >> 3;
      do
      {
        v8 = *a3;
        a3 += 4;
        v7 = v8;
        if (v8 >= 0x7FFF)
        {
          v7 = 0x7FFFLL;
        }

        if (v7 <= -32768)
        {
          LOWORD(v7) = 0x8000;
        }

        *a4 = v7;
        a4 += 2;
        --v6;
      }

      while (v6);
    }
  }

  else if (a1 > 2)
  {
    if (a1 == 3)
    {
      if (a2 <= 5)
      {
        if (a2 <= 1)
        {
          if (a2)
          {
            if (a2 == 1 && a5 >= 2)
            {
              v63 = a5 >> 1;
              do
              {
                v65 = *a3++;
                v64 = v65;
                if (v65 >= 0xFF)
                {
                  v64 = -1;
                }

                *a4++ = v64;
                --v63;
              }

              while (v63);
            }
          }

          else if (a5 >= 2)
          {
            v108 = a5 >> 1;
            do
            {
              v109 = *a3++;
              *a4++ = v109 != 0;
              --v108;
            }

            while (v108);
          }
        }

        else if (a2 == 2)
        {
          if (a5 >= 2)
          {
            v136 = a5 >> 1;
            do
            {
              v138 = *a3++;
              v137 = v138;
              if (v138 >= 0x7F)
              {
                v137 = 127;
              }

              *a4++ = v137;
              --v136;
            }

            while (v136);
          }
        }

        else if (a2 == 4)
        {
          if (a5 >= 2)
          {
            v118 = a5 >> 1;
            do
            {
              v119 = a3[v118 - 1];
              if (v119 >= 0x7FFF)
              {
                LOWORD(v119) = 0x7FFF;
              }

              *&a4[2 * v118-- - 2] = v119;
            }

            while (v118);
          }
        }

        else if (a2 == 5 && a5 >= 2)
        {
          v29 = a5 >> 1;
          do
          {
            *&a4[4 * v29 - 4] = a3[v29 - 1];
            --v29;
          }

          while (v29);
        }
      }

      else if (a2 > 8)
      {
        if (a2 == 9)
        {
          sub_29A025888(a3, a4, a5);
        }

        else if (a2 == 10)
        {
          if (a5 >= 2)
          {
            v127 = a5 >> 1;
            do
            {
              LOWORD(a6) = a3[v127 - 1];
              *&a6 = LODWORD(a6);
              *&a4[4 * v127-- - 4] = LODWORD(a6);
            }

            while (v127);
          }
        }

        else if (a2 == 11 && a5 >= 2)
        {
          v39 = a5 >> 1;
          do
          {
            LOWORD(a6) = a3[v39 - 1];
            a6 = *&a6;
            *&a4[8 * v39-- - 8] = a6;
          }

          while (v39);
        }
      }

      else if (a2 == 6)
      {
        if (a5 >= 2)
        {
          v148 = a5 >> 1;
          do
          {
            *&a4[4 * v148 - 4] = a3[v148 - 1];
            --v148;
          }

          while (v148);
        }
      }

      else if (a2 == 7)
      {
        if (a5 >= 2)
        {
          v124 = a5 >> 1;
          do
          {
            *&a4[8 * v124 - 8] = a3[v124 - 1];
            --v124;
          }

          while (v124);
        }
      }

      else if (a5 >= 2)
      {
        v14 = a5 >> 1;
        do
        {
          *&a4[8 * v14 - 8] = a3[v14 - 1];
          --v14;
        }

        while (v14);
      }
    }

    else if (a1 == 4)
    {
      if (a2 <= 5)
      {
        if (a2 <= 1)
        {
          if (a2)
          {
            if (a2 == 1 && a5 >= 2)
            {
              v67 = a5 >> 1;
              do
              {
                v69 = *a3++;
                v68 = v69;
                if (v69 >= 255)
                {
                  v68 = 255;
                }

                *a4++ = v68 & ~(v68 >> 31);
                --v67;
              }

              while (v67);
            }
          }

          else if (a5 >= 2)
          {
            v111 = a5 >> 1;
            do
            {
              v112 = *a3++;
              *a4++ = v112 != 0;
              --v111;
            }

            while (v111);
          }
        }

        else if (a2 == 2)
        {
          if (a5 >= 2)
          {
            v144 = a5 >> 1;
            do
            {
              v146 = *a3++;
              v145 = v146;
              if (v146 >= 127)
              {
                v145 = 127;
              }

              if (v145 <= -128)
              {
                LOBYTE(v145) = 0x80;
              }

              *a4++ = v145;
              --v144;
            }

            while (v144);
          }
        }

        else if (a2 == 3)
        {
          if (a5 >= 2)
          {
            v122 = a5 >> 1;
            do
            {
              *&a4[2 * v122 - 2] = a3[v122 - 1] & ~(a3[v122 - 1] >> 15);
              --v122;
            }

            while (v122);
          }
        }

        else if (a2 == 5 && a5 >= 2)
        {
          v30 = a5 >> 1;
          do
          {
            *&a4[4 * v30 - 4] = a3[v30 - 1] & ~(a3[v30 - 1] >> 31);
            --v30;
          }

          while (v30);
        }
      }

      else if (a2 > 8)
      {
        if (a2 == 9)
        {
          sub_29A0258C0(a3, a4, a5);
        }

        else if (a2 == 10)
        {
          if (a5 >= 2)
          {
            v132 = a5 >> 1;
            do
            {
              *&a4[4 * v132 - 4] = a3[v132 - 1];
              --v132;
            }

            while (v132);
          }
        }

        else if (a2 == 11 && a5 >= 2)
        {
          v40 = a5 >> 1;
          do
          {
            *&a4[8 * v40 - 8] = a3[v40 - 1];
            --v40;
          }

          while (v40);
        }
      }

      else if (a2 == 6)
      {
        if (a5 >= 2)
        {
          v149 = a5 >> 1;
          do
          {
            *&a4[4 * v149 - 4] = a3[v149 - 1];
            --v149;
          }

          while (v149);
        }
      }

      else if (a2 == 7)
      {
        if (a5 >= 2)
        {
          v128 = a5 >> 1;
          do
          {
            *&a4[8 * v128 - 8] = a3[v128 - 1] & ~(a3[v128 - 1] >> 31);
            --v128;
          }

          while (v128);
        }
      }

      else if (a5 >= 2)
      {
        v18 = a5 >> 1;
        do
        {
          *&a4[8 * v18 - 8] = a3[v18 - 1];
          --v18;
        }

        while (v18);
      }
    }

    else if (a2 <= 3)
    {
      if (a2 > 1)
      {
        if (a2 == 2)
        {
          if (a5 >= 4)
          {
            v83 = a5 >> 2;
            do
            {
              v85 = *a3;
              a3 += 2;
              v84 = v85;
              if (v85 >= 0x7F)
              {
                v84 = 127;
              }

              *a4++ = v84;
              --v83;
            }

            while (v83);
          }
        }

        else if (a5 >= 4)
        {
          v49 = a5 >> 2;
          do
          {
            v51 = *a3;
            a3 += 2;
            v50 = v51;
            if (v51 >= 0xFFFF)
            {
              v50 = -1;
            }

            *a4 = v50;
            a4 += 2;
            --v49;
          }

          while (v49);
        }
      }

      else if (a2)
      {
        if (a2 == 1 && a5 >= 4)
        {
          v31 = a5 >> 2;
          do
          {
            v33 = *a3;
            a3 += 2;
            v32 = v33;
            if (v33 >= 0xFF)
            {
              v32 = -1;
            }

            *a4++ = v32;
            --v31;
          }

          while (v31);
        }
      }

      else if (a5 >= 4)
      {
        v81 = a5 >> 2;
        do
        {
          v82 = *a3;
          a3 += 2;
          *a4++ = LODWORD(v82) != 0;
          --v81;
        }

        while (v81);
      }
    }

    else if (a2 <= 6)
    {
      if (a2 == 4)
      {
        if (a5 >= 4)
        {
          v87 = a5 >> 2;
          do
          {
            v89 = *a3;
            a3 += 2;
            v88 = v89;
            if (v89 >= 0x7FFF)
            {
              v88 = 0x7FFF;
            }

            *a4 = v88;
            a4 += 2;
            --v87;
          }

          while (v87);
        }
      }

      else if (a2 == 6 && a5 >= 4)
      {
        v52 = a5 >> 2;
        do
        {
          v53 = *&a3[2 * v52 - 2];
          if (v53 >= 0x7FFFFFFF)
          {
            v53 = 0x7FFFFFFF;
          }

          *&a4[4 * v52-- - 4] = v53;
        }

        while (v52);
      }
    }

    else if (a2 == 7)
    {
      if (a5 >= 4)
      {
        v86 = a5 >> 2;
        do
        {
          *&a4[8 * v86 - 8] = *&a3[2 * v86 - 2];
          --v86;
        }

        while (v86);
      }
    }

    else if (a2 == 8)
    {
      if (a5 >= 4)
      {
        v90 = a5 >> 2;
        do
        {
          *&a4[8 * v90 - 8] = *&a3[2 * v90 - 2];
          --v90;
        }

        while (v90);
      }
    }

    else if (a2 == 11 && a5 >= 4)
    {
      v9 = a5 >> 2;
      do
      {
        LODWORD(a6) = *&a3[2 * v9 - 2];
        a6 = *&a6;
        *&a4[8 * v9-- - 8] = a6;
      }

      while (v9);
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      if (a2 <= 5)
      {
        if (a2 <= 2)
        {
          if (a2)
          {
            if (a2 == 2 && a5)
            {
              do
              {
                v66 = *(a3 + a5 - 1);
                if (v66 >= 0x7F)
                {
                  LOBYTE(v66) = 127;
                }

                a4[--a5] = v66;
              }

              while (a5);
            }
          }

          else
          {
            for (; a5; --a5)
            {
              v110 = *a3;
              a3 = (a3 + 1);
              *a4++ = v110 != 0;
            }
          }
        }

        else if (a2 == 3)
        {
          for (; a5; --a5)
          {
            *&a4[2 * a5 - 2] = *(a3 + a5 - 1);
          }
        }

        else if (a2 == 4)
        {
          for (; a5; --a5)
          {
            *&a4[2 * a5 - 2] = *(a3 + a5 - 1);
          }
        }

        else
        {
          for (; a5; --a5)
          {
            *&a4[4 * a5 - 4] = *(a3 + a5 - 1);
          }
        }
      }

      else if (a2 > 8)
      {
        if (a2 == 9)
        {
          sub_29A02575C(a3, a4, a5);
        }

        else if (a2 == 10)
        {
          for (; a5; --a5)
          {
            LOBYTE(a6) = *(a3 + a5 - 1);
            *&a6 = LODWORD(a6);
            *&a4[4 * a5 - 4] = LODWORD(a6);
          }
        }

        else if (a2 == 11 && a5)
        {
          do
          {
            LOBYTE(a6) = *(a3 + a5 - 1);
            a6 = *&a6;
            *&a4[8 * a5-- - 8] = a6;
          }

          while (a5);
        }
      }

      else if (a2 == 6)
      {
        for (; a5; --a5)
        {
          *&a4[4 * a5 - 4] = *(a3 + a5 - 1);
        }
      }

      else if (a2 == 7)
      {
        for (; a5; --a5)
        {
          *&a4[8 * a5 - 8] = *(a3 + a5 - 1);
        }
      }

      else
      {
        for (; a5; --a5)
        {
          *&a4[8 * a5 - 8] = *(a3 + a5 - 1);
        }
      }
    }

    else if (a1 == 2)
    {
      if (a2 <= 5)
      {
        if (a2 <= 2)
        {
          if (a2)
          {
            if (a2 == 1 && a5)
            {
              do
              {
                a4[a5 - 1] = *(a3 + a5 - 1) & ~(*(a3 + a5 - 1) >> 31);
                --a5;
              }

              while (a5);
            }
          }

          else
          {
            for (; a5; --a5)
            {
              v103 = *a3;
              a3 = (a3 + 1);
              *a4++ = v103 != 0;
            }
          }
        }

        else if (a2 == 3)
        {
          for (; a5; --a5)
          {
            *&a4[2 * a5 - 2] = *(a3 + a5 - 1) & ~(*(a3 + a5 - 1) >> 31);
          }
        }

        else if (a2 == 4)
        {
          for (; a5; --a5)
          {
            *&a4[2 * a5 - 2] = *(a3 + a5 - 1);
          }
        }

        else
        {
          for (; a5; --a5)
          {
            *&a4[4 * a5 - 4] = *(a3 + a5 - 1) & ~(*(a3 + a5 - 1) >> 31);
          }
        }
      }

      else if (a2 > 8)
      {
        if (a2 == 9)
        {
          sub_29A025790(a3, a4, a5);
        }

        else if (a2 == 10)
        {
          for (; a5; --a5)
          {
            *&a4[4 * a5 - 4] = *(a3 + a5 - 1);
          }
        }

        else if (a2 == 11 && a5)
        {
          do
          {
            *&a4[8 * a5 - 8] = *(a3 + a5 - 1);
            --a5;
          }

          while (a5);
        }
      }

      else if (a2 == 6)
      {
        for (; a5; --a5)
        {
          *&a4[4 * a5 - 4] = *(a3 + a5 - 1);
        }
      }

      else if (a2 == 7)
      {
        for (; a5; --a5)
        {
          *&a4[8 * a5 - 8] = *(a3 + a5 - 1) & ~(*(a3 + a5 - 1) >> 31);
        }
      }

      else
      {
        for (; a5; --a5)
        {
          *&a4[8 * a5 - 8] = *(a3 + a5 - 1);
        }
      }
    }
  }

  else if (a2 <= 5)
  {
    if (a2 <= 2)
    {
      if (a2 == 1)
      {
        for (; a5; --a5)
        {
          a4[a5 - 1] = *(a3 + a5 - 1) != 0;
        }
      }

      else if (a2 == 2 && a5)
      {
        do
        {
          a4[a5 - 1] = *(a3 + a5 - 1) != 0;
          --a5;
        }

        while (a5);
      }
    }

    else if (a2 == 3)
    {
      for (; a5; --a5)
      {
        *&a4[2 * a5 - 2] = *(a3 + a5 - 1) != 0;
      }
    }

    else if (a2 == 4)
    {
      for (; a5; --a5)
      {
        *&a4[2 * a5 - 2] = *(a3 + a5 - 1) != 0;
      }
    }

    else
    {
      for (; a5; --a5)
      {
        *&a4[4 * a5 - 4] = *(a3 + a5 - 1) != 0;
      }
    }
  }

  else if (a2 > 8)
  {
    if (a2 == 9)
    {
      sub_29A025728(a3, a4, a5);
    }

    else if (a2 == 10)
    {
      for (; a5; --a5)
      {
        if (*(a3 + a5 - 1))
        {
          v125 = 1.0;
        }

        else
        {
          v125 = 0.0;
        }

        *&a4[4 * a5 - 4] = v125;
      }
    }

    else if (a2 == 11 && a5)
    {
      do
      {
        if (*(a3 + a5 - 1))
        {
          v37 = 1.0;
        }

        else
        {
          v37 = 0.0;
        }

        *&a4[8 * a5-- - 8] = v37;
      }

      while (a5);
    }
  }

  else if (a2 == 6)
  {
    for (; a5; --a5)
    {
      *&a4[4 * a5 - 4] = *(a3 + a5 - 1) != 0;
    }
  }

  else if (a2 == 7)
  {
    for (; a5; --a5)
    {
      *&a4[8 * a5 - 8] = *(a3 + a5 - 1) != 0;
    }
  }

  else
  {
    for (; a5; --a5)
    {
      *&a4[8 * a5 - 8] = *(a3 + a5 - 1) != 0;
    }
  }
}

uint64_t sub_29A025728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return sub_29B284610();
  }

  return result;
}

uint64_t sub_29A02575C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return sub_29B2846F8();
  }

  return result;
}

uint64_t sub_29A025790(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = result - 1;
    v4 = a2 - 2;
    do
    {
      v5 = *(v3 + a3);
      result = COERCE_UNSIGNED_INT(fabs(v5));
      v6 = HIWORD(LODWORD(v5));
      v7 = HIWORD(LODWORD(v5)) & 0x8000;
      if ((LODWORD(v5) >> 23) < 0x71u)
      {
        if (result >= 0x33000001)
        {
          v9 = 126 - (result >> 23);
          v10 = result & 0x7FFFFF | 0x800000;
          result = v10 << ((result >> 23) - 94);
          v11 = v10 >> v9;
          LOWORD(v7) = v11 | v6 & 0x8000;
          if (result > 0x80000000 || (result == 0x80000000 ? (v12 = (v11 & 1) == 0) : (v12 = 1), !v12))
          {
            LOWORD(v7) = v7 + 1;
          }
        }
      }

      else
      {
        v8 = v7 | ((result + ((result >> 13) & 1) + 134221823) >> 13);
        v7 |= 0x7C00u;
        if (result >= 0x477FF000)
        {
          LOWORD(v8) = v7;
        }

        if (result != 2139095040)
        {
          v7 |= (result >> 13) & 0x3FF | (((result >> 13) & 0x3FF) == 0);
        }

        if (result >> 23 < 0xFF)
        {
          LOWORD(v7) = v8;
        }
      }

      *(v4 + 2 * a3--) = v7;
    }

    while (a3);
  }

  return result;
}

uint64_t sub_29A025888(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >= 2)
  {
    return sub_29B2847D4(a3, result, a2);
  }

  return result;
}

unint64_t sub_29A0258C0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = a3 >> 1;
    v4 = result - 2;
    v5 = a2 - 2;
    do
    {
      v6 = *(v4 + 2 * v3);
      v7 = fabs(v6);
      v8 = HIWORD(LODWORD(v6));
      v9 = HIWORD(LODWORD(v6)) & 0x8000;
      if ((LODWORD(v6) >> 23) < 0x71u)
      {
        if (LODWORD(v7) >= 0x33000001)
        {
          v11 = 126 - (LODWORD(v7) >> 23);
          v12 = LODWORD(v7) & 0x7FFFFF | 0x800000;
          v13 = v12 << ((LODWORD(v7) >> 23) - 94);
          v14 = v12 >> v11;
          LOWORD(v9) = v14 | v8 & 0x8000;
          if (v13 > 0x80000000 || (v13 == 0x80000000 ? (v15 = (v14 & 1) == 0) : (v15 = 1), !v15))
          {
            LOWORD(v9) = v9 + 1;
          }
        }
      }

      else
      {
        v10 = v9 | ((LODWORD(v7) + ((LODWORD(v7) >> 13) & 1) + 134221823) >> 13);
        v9 |= 0x7C00u;
        if (LODWORD(v7) >= 0x477FF000)
        {
          LOWORD(v10) = v9;
        }

        if (v7 != INFINITY)
        {
          v9 |= (LODWORD(v7) >> 13) & 0x3FF | (((LODWORD(v7) >> 13) & 0x3FF) == 0);
        }

        if (LODWORD(v7) >> 23 < 0xFF)
        {
          LOWORD(v9) = v10;
        }
      }

      *(v5 + 2 * v3) = v9;
      result = v3 - 1;
      v3 = result;
    }

    while (result);
  }

  return result;
}

int *sub_29A0259C0(int *result, _WORD *a2, unint64_t a3)
{
  if (a3 >= 4)
  {
    v3 = a3 >> 2;
    do
    {
      v5 = *result++;
      v4 = v5;
      if (v5 >= 65504)
      {
        v4 = 65504;
      }

      if (v4 <= -65504)
      {
        v4 = -65504;
      }

      v6 = v4;
      v7 = fabs(v4);
      v8 = HIWORD(COERCE_UNSIGNED_INT(v4));
      v9 = v8 & 0x8000;
      if ((LODWORD(v6) >> 23) < 0x71u)
      {
        if (LODWORD(v7) >= 0x33000001)
        {
          v11 = 126 - (LODWORD(v7) >> 23);
          v12 = LODWORD(v7) & 0x7FFFFF | 0x800000;
          v13 = v12 << ((LODWORD(v7) >> 23) - 94);
          v14 = v12 >> v11;
          LOWORD(v9) = v14 | v8 & 0x8000;
          if (v13 > 0x80000000 || (v13 == 0x80000000 ? (v15 = (v14 & 1) == 0) : (v15 = 1), !v15))
          {
            LOWORD(v9) = v9 + 1;
          }
        }
      }

      else
      {
        v10 = v9 | ((LODWORD(v7) + ((LODWORD(v7) >> 13) & 1) + 134221823) >> 13);
        v9 |= 0x7C00u;
        if (LODWORD(v7) >= 0x477FF000)
        {
          LOWORD(v10) = v9;
        }

        if (v7 != INFINITY)
        {
          v9 |= (LODWORD(v7) >> 13) & 0x3FF | (((LODWORD(v7) >> 13) & 0x3FF) == 0);
        }

        if (LODWORD(v7) >> 23 < 0xFF)
        {
          LOWORD(v9) = v10;
        }
      }

      *a2++ = v9;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t *sub_29A025ACC(uint64_t *result, _WORD *a2, unint64_t a3)
{
  if (a3 >= 8)
  {
    v3 = a3 >> 3;
    do
    {
      v5 = *result++;
      v4 = v5;
      if (v5 >= 65504)
      {
        v4 = 65504;
      }

      if (v4 <= -65504)
      {
        v4 = -65504;
      }

      v6 = v4;
      v7 = fabs(v4);
      v8 = HIWORD(COERCE_UNSIGNED_INT(v4));
      v9 = v8 & 0x8000;
      if ((LODWORD(v6) >> 23) < 0x71u)
      {
        if (LODWORD(v7) >= 0x33000001)
        {
          v11 = 126 - (LODWORD(v7) >> 23);
          v12 = LODWORD(v7) & 0x7FFFFF | 0x800000;
          v13 = v12 << ((LODWORD(v7) >> 23) - 94);
          v14 = v12 >> v11;
          LOWORD(v9) = v14 | v8 & 0x8000;
          if (v13 > 0x80000000 || (v13 == 0x80000000 ? (v15 = (v14 & 1) == 0) : (v15 = 1), !v15))
          {
            LOWORD(v9) = v9 + 1;
          }
        }
      }

      else
      {
        v10 = v9 | ((LODWORD(v7) + ((LODWORD(v7) >> 13) & 1) + 134221823) >> 13);
        v9 |= 0x7C00u;
        if (LODWORD(v7) >= 0x477FF000)
        {
          LOWORD(v10) = v9;
        }

        if (v7 != INFINITY)
        {
          v9 |= (LODWORD(v7) >> 13) & 0x3FF | (((LODWORD(v7) >> 13) & 0x3FF) == 0);
        }

        if (LODWORD(v7) >> 23 < 0xFF)
        {
          LOWORD(v9) = v10;
        }
      }

      *a2++ = v9;
      --v3;
    }

    while (v3);
  }

  return result;
}

unsigned __int16 *sub_29A025BD8(unsigned __int16 *result, BOOL *a2, unint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = a3 >> 1;
    do
    {
      v4 = *result++;
      v5 = v4 << 13;
      v6 = (v4 << 13) & 0xFFFE000;
      if (v6 < 0x800000)
      {
        if (v6)
        {
          v7 = __clz(v6) - 8;
          v6 = ((v6 << v7) | 0x38800000) - (v7 << 23);
        }
      }

      else if (v6 >> 23 > 0x1E)
      {
        v6 = v5 | 0x7F800000;
      }

      else
      {
        v6 += 939524096;
      }

      *a2++ = (v6 & 0x7FFFFFFF) != 0;
      --v3;
    }

    while (v3);
  }

  return result;
}

float sub_29A025C50(__int16 *a1, _BYTE *a2, unint64_t a3)
{
  if (a3 >= 2)
  {
    for (i = a3 >> 1; i; --i)
    {
      v4 = *a1++;
      v5 = (v4 & 0x7FFF) << 13;
      v6 = v4 & 0x80000000;
      v7 = __clz(v5) - 8;
      LODWORD(v8) = (v4 & 0x80000000 | 0x38800000 | (v5 << v7)) - (v7 << 23);
      if (v5)
      {
        v9 = v8;
      }

      else
      {
        v9 = *&v6;
      }

      v10 = v5 >> 23;
      v11 = v5 | v6 | 0x7F800000;
      if (v5 >> 23 <= 0x1E)
      {
        v12 = (v5 | v6) + 939524096;
      }

      else
      {
        v12 = v5 | v6 | 0x7F800000;
      }

      if (v5 >= 0x800000)
      {
        v9 = *&v12;
      }

      if (v9 >= 0.0)
      {
        if (!v5)
        {
          v8 = *&v6;
        }

        if (v10 <= 0x1E)
        {
          v11 = (v5 | v6) + 939524096;
        }

        if (v5 >= 0x800000)
        {
          v8 = *&v11;
        }

        if (v8 <= 255.0)
        {
          if (v5 < 0x800000)
          {
            if (v5)
            {
              v6 = (v6 | 0x38800000 | (v5 << v7)) - (v7 << 23);
            }

            goto LABEL_24;
          }

          v13 = v5 | v6;
          if (v10 > 0x1E)
          {
            v6 = v13 | 0x7F800000;
            goto LABEL_24;
          }
        }

        else
        {
          v13 = 192872448;
        }

        v6 = v13 + 939524096;
      }

      else
      {
        *&v6 = 0.0;
      }

LABEL_24:
      result = *&v6;
      *a2++ = *&v6;
    }
  }

  return result;
}

__int16 *sub_29A025D48(__int16 *result, _BYTE *a2, unint64_t a3)
{
  if (a3 >= 2)
  {
    for (i = a3 >> 1; i; --i)
    {
      v4 = *result++;
      v5 = (v4 & 0x7FFF) << 13;
      v6 = v4 & 0x80000000;
      v7 = __clz(v5) - 8;
      LODWORD(v8) = (v4 & 0x80000000 | 0x38800000 | (v5 << v7)) - (v7 << 23);
      if (v5)
      {
        v9 = v8;
      }

      else
      {
        v9 = *&v6;
      }

      v10 = v5 >> 23;
      v11 = v5 | v6 | 0x7F800000;
      if (v5 >> 23 <= 0x1E)
      {
        v12 = (v5 | v6) + 939524096;
      }

      else
      {
        v12 = v5 | v6 | 0x7F800000;
      }

      if (v5 >= 0x800000)
      {
        v9 = *&v12;
      }

      if (v9 >= -128.0)
      {
        if (!v5)
        {
          v8 = *&v6;
        }

        if (v10 <= 0x1E)
        {
          v11 = (v5 | v6) + 939524096;
        }

        if (v5 >= 0x800000)
        {
          v8 = *&v11;
        }

        if (v8 <= 127.0)
        {
          if (v5 < 0x800000)
          {
            if (v5)
            {
              v6 = (v6 | 0x38800000 | (v5 << v7)) - (v7 << 23);
            }

            goto LABEL_24;
          }

          v13 = v5 | v6;
          if (v10 > 0x1E)
          {
            v6 = v13 | 0x7F800000;
            goto LABEL_24;
          }
        }

        else
        {
          v13 = 184418304;
        }
      }

      else
      {
        v13 = -1962934272;
      }

      v6 = v13 + 939524096;
LABEL_24:
      *a2++ = *&v6;
    }
  }

  return result;
}