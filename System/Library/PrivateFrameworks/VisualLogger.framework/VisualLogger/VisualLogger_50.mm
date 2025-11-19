void sub_271504764(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10, char a11)
{
  if (a11 == 1)
  {
    std::mutex::unlock(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_271504904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271504934(uint64_t a1)
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

uint64_t sub_2715049C0(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        goto LABEL_7;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    result = v2;
  }

LABEL_7:
  v3 = *(result + 8);
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

void *sub_271504AB8(void *result)
{
  v1 = result[1];
  *result = &unk_288116478;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

uint64_t ***sub_271504B2C(uint64_t ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
      v4 = sub_27174B42C(v3);
      MEMORY[0x2743BF050](v4, 0x1020C4014B85259);
    }

    MEMORY[0x2743BF050](v1, 0x20C4093837F09);
    return v2;
  }

  return result;
}

uint64_t sub_271504B98(uint64_t result)
{
  v1 = *(result + 16);
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

void sub_271504C10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t *sub_271504CC8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (*(v2 + 24) == 1)
  {
    v3 = *(**(v2 + 16) + 24);

    return v3();
  }

  else if ((atomic_load_explicit(&qword_28087B938, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_28087B938))
  {
    return &qword_28087B960;
  }

  else
  {
    qword_28087B960 = 0;
    unk_28087B968 = 0;
    __cxa_guard_release(&qword_28087B938);
    return &qword_28087B960;
  }
}

void sub_271504DFC()
{
  v0 = &unk_28810CA28;
  v1 = 1;
  v2 = &unk_28810CB78;
  operator new();
}

void sub_271505380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  sub_27112D66C(v35 - 168);
  sub_271506144(&a24);
  sub_27173115C(&a35);
  _Unwind_Resume(a1);
}

void sub_2715053A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  operator delete(v35);
  sub_271506144(&a24);
  sub_27173115C(&a35);
  _Unwind_Resume(a1);
}

void sub_2715053C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  sub_271506144(&a24);
  sub_27173115C(&a35);
  _Unwind_Resume(a1);
}

void *sub_271505424(void *result, uint64_t a2, unint64_t a3)
{
  memset(__p, 0, 24);
  __p[3] = __p;
  v4 = 0;
  if (a3)
  {
    if (a3 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_271135560();
  }

  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

void sub_271505660(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_2715106E4(va1);
  sub_271392A1C(va);
  _Unwind_Resume(a1);
}

void sub_27150567C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2715106E4(va);
  _Unwind_Resume(a1);
}

void sub_271505690(void *a1, uint64_t a2, const void **a3, uint64_t a4, char a5)
{
  v8 = *(a2 + 240);
  v9 = v8;
  if ((a5 & 1) == 0)
  {
    std::mutex::lock((v8 + 24));
    v9 = *(a2 + 240);
  }

  v13 = *(v9 + 8);
  v11 = (v9 + 8);
  v12 = v13;
  if (!v13)
  {
    goto LABEL_49;
  }

  v14 = *(a3 + 23);
  if (v14 >= 0)
  {
    v15 = a3;
  }

  else
  {
    v15 = *a3;
  }

  if (v14 >= 0)
  {
    v16 = *(a3 + 23);
  }

  else
  {
    v16 = a3[1];
  }

  v17 = *(a3 + 12);
  v18 = v11;
  do
  {
    v19 = *(v12 + 55);
    if (v19 >= 0)
    {
      v20 = v12 + 4;
    }

    else
    {
      v20 = v12[4];
    }

    if (v19 >= 0)
    {
      v21 = *(v12 + 55);
    }

    else
    {
      v21 = v12[5];
    }

    if (v16 >= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v16;
    }

    v23 = memcmp(v20, v15, v22);
    if (v23)
    {
      if (v23 < 0)
      {
        goto LABEL_11;
      }

LABEL_24:
      v18 = v12;
      goto LABEL_12;
    }

    if (v21 != v16)
    {
      if (v21 < v16)
      {
LABEL_11:
        ++v12;
        goto LABEL_12;
      }

      goto LABEL_24;
    }

    v24 = *(v12 + 28);
    v32 = v24 >= v17;
    v25 = v24 < v17;
    if (v32)
    {
      v18 = v12;
    }

    v12 += v25;
LABEL_12:
    v12 = *v12;
  }

  while (v12);
  if (v18 == v11)
  {
    goto LABEL_49;
  }

  v26 = *(v18 + 55);
  if (v26 >= 0)
  {
    v27 = v18 + 4;
  }

  else
  {
    v27 = v18[4];
  }

  if (v26 >= 0)
  {
    v28 = *(v18 + 55);
  }

  else
  {
    v28 = v18[5];
  }

  if (v28 >= v16)
  {
    v29 = v16;
  }

  else
  {
    v29 = v28;
  }

  v30 = memcmp(v15, v27, v29);
  if (v30)
  {
    if ((v30 & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

LABEL_49:
    if ((atomic_load_explicit(&qword_28087B940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B940))
    {
      v40 = 2;
      v34 = 270;
      strcpy(v33, "unknown client");
      v35 = 0;
      v36 = 0;
      v38 = 0;
      v39 = 0;
      v37 = 0;
      sub_27151A284();
    }

    v31 = *algn_28087B978;
    *a1 = qword_28087B970;
    a1[1] = v31;
    if (v31)
    {
LABEL_51:
      atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v32 = v16 >= v28;
    if (v16 == v28)
    {
      v32 = v17 >= *(v18 + 28);
    }

    if (!v32)
    {
      goto LABEL_49;
    }

LABEL_44:
    v31 = v18[9];
    *a1 = v18[8];
    a1[1] = v31;
    if (v31)
    {
      goto LABEL_51;
    }
  }

  if ((a5 & 1) == 0)
  {
    std::mutex::unlock((v8 + 24));
  }
}

void sub_2715058B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2711B039C(va);
  __cxa_guard_abort(&qword_28087B940);
  if ((v2 & 1) == 0)
  {
    std::mutex::unlock((v3 + 24));
  }

  _Unwind_Resume(a1);
}

void sub_2715058E4()
{
  v0 = &unk_28810CA28;
  v1 = 1;
  v2 = &unk_28810CB78;
  operator new();
}

void sub_271505FBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  std::mutex::unlock((v32 + 24));
  sub_271506144(&a32);
  sub_27173115C((v33 - 152));
  _Unwind_Resume(a1);
}

void sub_271506014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_271506144(&a29);
  sub_27173115C((v29 - 152));
  _Unwind_Resume(a1);
}

void sub_271506030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_271506084(va);
  sub_27173115C((v6 - 152));
  _Unwind_Resume(a1);
}

void sub_27150604C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_2715106E4(&a9);
  sub_27173115C((v9 - 152));
  _Unwind_Resume(a1);
}

char **sub_271506084(char **a1)
{
  if (*(a1 + 24) == 1)
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
          if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v5->__on_zero_shared)(v5);
            std::__shared_weak_count::__release_weak(v5);
          }

          v3 -= 24;
        }

        while (v3 != v2);
        v4 = *a1;
      }

      a1[1] = v2;
      operator delete(v4);
    }
  }

  return a1;
}

uint64_t sub_271506144(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      v3 = *(a1 + 64);
      v4 = *(a1 + 56);
      if (v3 != v2)
      {
        do
        {
          v5 = *(v3 - 8);
          if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v5->__on_zero_shared)(v5);
            std::__shared_weak_count::__release_weak(v5);
          }

          v3 -= 16;
        }

        while (v3 != v2);
        v4 = *(a1 + 56);
      }

      *(a1 + 64) = v2;
      operator delete(v4);
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(a1 + 40);
      v8 = *(a1 + 32);
      if (v7 != v6)
      {
        do
        {
          v7 -= 88;
          sub_27151111C(v7);
        }

        while (v7 != v6);
        v8 = *(a1 + 32);
      }

      *(a1 + 40) = v6;
      operator delete(v8);
    }
  }

  return a1;
}

uint64_t sub_27150628C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v3;
  v6 = *(a2 + 32);
  return (*(*v2 + 56))(v2, v5);
}

void sub_2715062E4(uint64_t a1, const void **a2, uint64_t a3, unsigned int a4)
{
  if (*(a1 + 200) == 1)
  {
    sub_271505690(&v29, *a1, a2, 0, 0);
    v7 = v29;
    sub_271847E00(a3, &v10);
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_271127178(&v11, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
    }

    else
    {
      v11 = v10;
    }

    v12 = 1;
    LOBYTE(v13) = 0;
    v17 = 0;
    v18 = 1;
    sub_271390244(v19, a4, &v11);
    v8 = *(a1 + 192);
    if (!v8)
    {
      sub_27112AFFC();
    }

    (*(*v8 + 48))(v8, v7, v19);
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
        operator delete(v20);
      }
    }

    if (v18 == 1)
    {
      if (v17 == 1)
      {
        if (v16 < 0)
        {
          operator delete(v15);
        }

        if (v14 < 0)
        {
          operator delete(v13);
        }
      }

      if (v12 == 1 && SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v11.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }

    v9 = v30;
    if (v30)
    {
      if (!atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }
}

void sub_2715064F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_27112F828(v29 - 64);
  _Unwind_Resume(a1);
}

void sub_271507CA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271507FBC(uint64_t result)
{
  v1 = *(result + 8);
  *(result + 8) = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void sub_271508018(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

uint64_t *sub_271508090(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (*(v2 + 16) == 1)
  {
    v3 = *(**(v2 + 8) + 16);

    return v3();
  }

  else if ((atomic_load_explicit(&qword_28087B958, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_28087B958))
  {
    return &qword_28087B9A0;
  }

  else
  {
    qword_28087B9A0 = 0;
    unk_28087B9A8 = 0;
    __cxa_guard_release(&qword_28087B958);
    return &qword_28087B9A0;
  }
}

uint64_t *sub_27150813C(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    v2 = *(**(a1 + 8) + 16);

    return v2();
  }

  else if (atomic_load_explicit(&qword_28087B958, memory_order_acquire))
  {
    return &qword_28087B9A0;
  }

  else
  {
    if (__cxa_guard_acquire(&qword_28087B958))
    {
      qword_28087B9A0 = 0;
      unk_28087B9A8 = 0;
      __cxa_guard_release(&qword_28087B958);
    }

    return &qword_28087B9A0;
  }
}

uint64_t sub_271508248(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 8) + 8);
  v3 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v3;
  v6 = *(a2 + 32);
  return (*(*v2 + 56))(v2, v5);
}

void sub_2715082A8(void *a1)
{
  sub_271515404(a1);

  JUMPOUT(0x2743BF050);
}

void ***sub_2715082E0(void ***a1)
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
        v5 = *(v3 - 17);
        v3 -= 5;
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

void sub_271508358(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271508390(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *v1;
    *v1 = 0;
    if (v2)
    {
      v3 = sub_27174B42C(v2);
      MEMORY[0x2743BF050](v3, 0x1020C4014B85259);
    }

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_271508408(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit11concurrency17NodeTaskSchedulerEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit11concurrency17NodeTaskSchedulerEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit11concurrency17NodeTaskSchedulerEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit11concurrency17NodeTaskSchedulerEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_27150846C(uint64_t a1)
{
  sub_27151040C(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2715084A8(uint64_t a1)
{
  sub_271510144(a1);

  JUMPOUT(0x2743BF050);
}

void *sub_2715084E0(void *result)
{
  v1 = result[1];
  *result = &unk_2881164A0;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void sub_271508554(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2881164A0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27150860C(uint64_t result)
{
  *result = &unk_288116450;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void sub_271508660(uint64_t a1)
{
  *a1 = &unk_288116450;
  if (*(a1 + 16))
  {
    std::__shared_weak_count::__release_weak(*(a1 + 16));
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

void sub_2715086D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    v13 = v5;
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      v12 = v7;
      if (v7)
      {
        v8 = *(a2 + 8);
        *(a2 + 8) = 0;
        v10 = &unk_288116478;
        v11 = v8;
        (*(*v7 + 16))(v7, &v10);
        v9 = v11;
        v10 = &unk_288116478;
        v11 = 0;
        if (v9)
        {
          (*(*v9 + 8))(v9);
        }
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }
}

void sub_271508800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    (*(*a3 + 8))(a3);
  }

  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_271508844(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_288116478;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2715088FC(uint64_t result)
{
  *result = &unk_2881164C8;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void sub_271508950(uint64_t a1)
{
  *a1 = &unk_2881164C8;
  if (*(a1 + 16))
  {
    std::__shared_weak_count::__release_weak(*(a1 + 16));
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

void sub_2715089C0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        (*(*v5 + 16))(v5);
      }

      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);

        std::__shared_weak_count::__release_weak(v4);
      }
    }
  }
}

void sub_271508AA4(uint64_t a1)
{
  sub_27150B9A4(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271508ADC(void *a1, uint64_t *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  result = (*(*a1 + 48))(a1);
  if (result)
  {
    if (a1[9])
    {
      if (a1[18])
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Concurrency/include/Kit/Concurrency/Channel/detail/Processor.h", 234, "scheduler_", 0xAuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1)
      {
        goto LABEL_12;
      }

      v5 = qword_28087C408;
      v6 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v5 = qword_28087C408;
      v6 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_23;
      }
    }

    do
    {
      v8 = *v5;
      v7 = *(v5 + 8);
      v5 += 16;
      v8(v7, "scheduler_", 10, "", 0);
    }

    while (v5 != v6);
    if (byte_28087C430)
    {
LABEL_12:
      qword_28087C420(*algn_28087C428, "scheduler_", 10, "", 0);
      if (a1[18])
      {
LABEL_4:
        operator new();
      }

LABEL_13:
      v9 = a1[9];
      v10 = a1[5];
      if (v10)
      {
        v11 = std::__shared_weak_count::lock(v10);
        if (v11)
        {
          v13 = a1[4];
          atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v14 = v11;
            (v11->__on_zero_shared)(v11, v12);
            std::__shared_weak_count::__release_weak(v14);
          }
        }
      }

      v15 = a2[1];
      v18 = *a2;
      if (v15)
      {
        atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
      }

      v16 = a2[4];
      v19 = a2[3];
      if (v16)
      {
        atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

LABEL_23:
    abort();
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_271509228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  sub_2714D6590(&a19);
  sub_27150D10C(&a9);
  _Unwind_Resume(a1);
}

void sub_271509258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_2714D6590(v9 - 104);
  sub_27150CABC(va1);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_271509284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_27150BB80(va1);
  std::__shared_weak_count::__release_weak(v9);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2715092A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  MEMORY[0x2743BF050](v10, 0x20C4093837F09);
  std::__shared_weak_count::__release_weak(v9);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2715092DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::__shared_weak_count::__release_weak(v17);
  sub_27112F828(&a17);
  _Unwind_Resume(a1);
}

void sub_271509328(void *a1, uint64_t *a2, std::__assoc_sub_state **a3)
{
  v38 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 48))(a1))
  {
    if (a1[9])
    {
      if (a1[18])
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Concurrency/include/Kit/Concurrency/Channel/detail/Processor.h", 294, "scheduler_", 0xAuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1)
      {
        goto LABEL_21;
      }

      v16 = qword_28087C408;
      v17 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v16 = qword_28087C408;
      v17 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_33;
      }
    }

    do
    {
      v19 = *v16;
      v18 = *(v16 + 8);
      v16 += 16;
      v19(v18, "scheduler_", 10, "", 0);
    }

    while (v16 != v17);
    if (byte_28087C430)
    {
LABEL_21:
      qword_28087C420(*algn_28087C428, "scheduler_", 10, "", 0);
      if (a1[18])
      {
LABEL_4:
        operator new();
      }

LABEL_22:
      v20 = a1[9];
      v21 = a1[5];
      if (v21)
      {
        v22 = std::__shared_weak_count::lock(v21);
        if (v22)
        {
          v24 = a1[4];
          atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v25 = v22;
            (v22->__on_zero_shared)(v22, v23);
            std::__shared_weak_count::__release_weak(v25);
          }
        }
      }

      v26 = a2[1];
      v29 = *a2;
      if (v26)
      {
        atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
      }

      v27 = a2[4];
      v30 = a2[3];
      if (v27)
      {
        atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

LABEL_33:
    abort();
  }

  v33[0].__ptr_ = "Invalid operation. Interface is disabled for ";
  v33[1].__ptr_ = 45;
  v8 = a1[6];
  v7 = a1 + 6;
  v6 = v8;
  v9 = *(v7 + 23);
  if ((v9 & 0x80u) != 0)
  {
    v9 = v7[1];
  }

  else
  {
    v6 = v7;
  }

  v34 = v6;
  v35 = v9;
  sub_271131230(v33, v36, 0, 0, &v37);
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v37;
  }

  else
  {
    v10 = v37.__r_.__value_.__r.__words[0];
  }

  std::runtime_error::runtime_error(&v31, v10);
  v31.__vftable = &unk_288116428;
  exception = __cxa_allocate_exception(0x10uLL);
  __cxa_init_primary_exception();
  v12 = std::runtime_error::runtime_error(exception, &v31);
  exception->__vftable = &unk_288116428;
  std::exception_ptr::__from_native_exception_pointer(&v32, v12, v13);
  v14 = *a3;
  if (!*a3)
  {
    sub_27150C8D8(3u);
  }

  std::exception_ptr::exception_ptr(v33, &v32);
  v15.__ptr_ = v33;
  std::__assoc_sub_state::set_exception(v14, v15);
  std::exception_ptr::~exception_ptr(v33);
  std::exception_ptr::~exception_ptr(&v32);
  std::runtime_error::~runtime_error(&v31);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void sub_271509E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_2714D6590(&a27);
  sub_27150E420(&a9);
  _Unwind_Resume(a1);
}

void sub_271509E70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, std::runtime_error a22, std::exception_ptr a23, char a24, uint64_t a25, std::exception_ptr a26)
{
  sub_271396310(v26 + 16);
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_271509F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_271509F7C(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (!v1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Concurrency/include/Kit/Concurrency/Channel/detail/Processor.h", 167, "scheduler_ != nullptr", 0x15uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "scheduler_ != nullptr", 21, "", 0);
        v1 = *(a1 + 72);
        goto LABEL_10;
      }
    }

    else
    {
      v3 = qword_28087C408;
      v4 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v6 = *v3;
      v5 = *(v3 + 8);
      v3 += 16;
      v6(v5, "scheduler_ != nullptr", 21, "", 0);
    }

    while (v3 != v4);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:
  v7 = *v1;

  sub_27174ABCC(v7);
}

void sub_27150A0B4(void *a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a1[9])
  {
    goto LABEL_10;
  }

  v2 = a1;
  v3 = a2;
  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Concurrency/include/Kit/Concurrency/Channel/detail/Processor.h", 181, "scheduler_", 0xAuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "scheduler_", 10, "", 0);
      a1 = v2;
      v8 = v2[9];
      a2 = v3;
LABEL_10:
      v9 = a1[5];
      v11 = a1[4];
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
      }

      v10 = *(a2 + 8);
      *(a2 + 8) = 0;
      operator new();
    }
  }

  else
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_13;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "scheduler_", 10, "", 0);
  }

  while (v4 != v5);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_13:
  abort();
}

void sub_27150A390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_2714D6590(&a14);
  sub_27150EAC8(&a9);
  _Unwind_Resume(a1);
}

void sub_27150A3C0(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a1[9])
  {
    goto LABEL_10;
  }

  v1 = a1;
  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Concurrency/include/Kit/Concurrency/Channel/detail/Processor.h", 202, "scheduler_", 0xAuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v2 = qword_28087C408, v3 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "scheduler_", 10, "", 0);
      a1 = v1;
      v6 = v1[9];
LABEL_10:
      v8 = a1[4];
      v7 = a1[5];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
      }

      operator new();
    }
  }

  else
  {
    v2 = qword_28087C408;
    v3 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_13;
    }
  }

  do
  {
    v5 = *v2;
    v4 = *(v2 + 8);
    v2 += 16;
    v5(v4, "scheduler_", 10, "", 0);
  }

  while (v2 != v3);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_13:
  abort();
}

void sub_27150A5E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2714D6590(va);
  _Unwind_Resume(a1);
}

void sub_27150A5F8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_27150A8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (atomic_fetch_add(v10, 0xFFFFFFFFFFFFFFFFLL))
  {
    sub_27150F674(&a9);
    _Unwind_Resume(a1);
  }

  (*(*v9 + 16))(v9);
  sub_27150F674(&a9);
  _Unwind_Resume(a1);
}

void sub_27150A948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock(v9);
  sub_27150F674(&a9);
  _Unwind_Resume(a1);
}

void sub_27150AC0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (atomic_fetch_add(v10, 0xFFFFFFFFFFFFFFFFLL))
  {
    sub_27150F674(&a9);
    _Unwind_Resume(a1);
  }

  (*(*v9 + 16))(v9);
  sub_27150F674(&a9);
  _Unwind_Resume(a1);
}

void sub_27150ACB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock(v9);
  sub_27150F674(&a9);
  _Unwind_Resume(a1);
}

void sub_27150ACE8(uint64_t a1)
{
  sub_27150B9A4(a1 - 16);

  JUMPOUT(0x2743BF050);
}

void sub_27150AD4C(uint64_t a1)
{
  sub_27150B9A4(a1 - 24);

  JUMPOUT(0x2743BF050);
}

void sub_27150ADB0(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8);
  v3 = 1;
  v2 = &unk_28810CA28;
  v4 = &unk_28810CB78;
  operator new();
}

void sub_27150B3E4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27150B400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15)
{
  if (a14 == 1)
  {
    sub_271396310(&a9);
    sub_27173115C(&a15);
    _Unwind_Resume(a1);
  }

  sub_27173115C(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_27150B450(uint64_t a1, char *a2)
{
  __src = 1;
  sub_27173318C(a1 + 24, *(a1 + 32), &__src, &v7, 4uLL);
  sub_2717312C0(a1);
  sub_27173318C(a1 + 24, *(a1 + 32), a2, a2 + 4, 4uLL);
  sub_27173318C(a1 + 24, *(a1 + 32), a2 + 4, a2 + 8, 4uLL);
  sub_27173318C(a1 + 24, *(a1 + 32), a2 + 8, a2 + 12, 4uLL);
  sub_27173318C(a1 + 24, *(a1 + 32), a2 + 12, a2 + 16, 4uLL);
  sub_27173318C(a1 + 24, *(a1 + 32), a2 + 16, a2 + 20, 4uLL);
  sub_27173318C(a1 + 24, *(a1 + 32), a2 + 20, a2 + 24, 4uLL);
  v4 = *(*(a1 + 56) - 8) + *(a1 + 24);
  *(v4 + 10) = *(a1 + 32) - v4 - 18;
  *(a1 + 56) -= 8;
  return a1;
}

uint64_t sub_27150B564(uint64_t a1, uint64_t a2)
{
  LODWORD(__src) = 2;
  sub_27173318C(a1 + 24, *(a1 + 32), &__src, &__src + 4, 4uLL);
  sub_2717312C0(a1);
  v4 = *(a2 + 31);
  if (v4 < 0)
  {
    v4 = *(a2 + 16);
  }

  __src = v4;
  sub_27173318C(a1 + 24, *(a1 + 32), &__src, v16, 8uLL);
  v5 = *(a2 + 31);
  if (v5 >= 0)
  {
    v6 = (a2 + 8);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 31);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  sub_27173318C(a1 + 24, *(a1 + 32), v6, &v6[v7], v7);
  sub_27173318C(a1 + 24, *(a1 + 32), (a2 + 32), (a2 + 36), 4uLL);
  v8 = *(*(a1 + 56) - 8) + *(a1 + 24);
  *(v8 + 10) = *(a1 + 32) - v8 - 18;
  *(a1 + 56) -= 8;
  if (*(a2 + 56) > 1u)
  {
    sub_2711308D4();
  }

  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v11 = v9;
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      v9 = v11;
    }
  }

  __src = &unk_28810A5F8;
  *v16 = v9;
  v17 = (*(*v9 + 16))(v9);
  sub_27173318C(a1 + 24, *(a1 + 32), &v17, &v18, 4uLL);
  v12 = v17;
  sub_2717312C0(a1);
  result = (*(**v16 + 32))(*v16, a1, v12);
  v14 = *(*(a1 + 56) - 8) + *(a1 + 24);
  *(v14 + 10) = *(a1 + 32) - v14 - 18;
  *(a1 + 56) -= 8;
  return result;
}

char ***sub_27150B798(char ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    std::mutex::~mutex((v1 + 7));
    if (*(v1 + 48) == 1)
    {
      v2 = *v1;
      if (*v1)
      {
        v3 = v1[1];
        v4 = *v1;
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

            v3 -= 16;
          }

          while (v3 != v2);
          v4 = *v1;
        }

        v1[1] = v2;
        operator delete(v4);
      }
    }

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t *sub_27150B89C(uint64_t *a1)
{
  if (a1[6])
  {
    v2 = a1 + 4;
    v3 = a1[5];
    v4 = *(a1[4] + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    a1[6] = 0;
    if (v3 != a1 + 4)
    {
      do
      {
        v6 = v3[1];
        operator delete(v3);
        v3 = v6;
      }

      while (v6 != v2);
    }
  }

  if (a1[3])
  {
    v7 = a1[2];
    v8 = *(a1[1] + 8);
    v9 = *v7;
    *(v9 + 8) = v8;
    *v8 = v9;
    a1[3] = 0;
    if (v7 != a1 + 1)
    {
      do
      {
        v10 = v7[1];
        (*v7[2])();
        operator delete(v7);
        v7 = v10;
      }

      while (v10 != a1 + 1);
    }
  }

  v11 = *a1;
  *a1 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  return a1;
}

uint64_t sub_27150B9A4(uint64_t a1)
{
  *a1 = &unk_288116280;
  *(a1 + 16) = &unk_2881162F8;
  *(a1 + 24) = &unk_288116338;
  sub_27150B798((a1 + 144));
  if (*(a1 + 136))
  {
    v2 = *(a1 + 128);
    v3 = *(*(a1 + 120) + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(a1 + 136) = 0;
    if (v2 != (a1 + 120))
    {
      do
      {
        v5 = v2[1];
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != (a1 + 120));
    }
  }

  if (*(a1 + 112))
  {
    v6 = *(a1 + 104);
    v7 = *(*(a1 + 96) + 8);
    v8 = *v6;
    *(v8 + 8) = v7;
    *v7 = v8;
    *(a1 + 112) = 0;
    if (v6 != (a1 + 96))
    {
      do
      {
        v9 = v6[1];
        (*v6[2])();
        operator delete(v6);
        v6 = v9;
      }

      while (v9 != (a1 + 96));
    }
  }

  v10 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(a1 + 80);
  if (!v11 || atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(a1 + 71) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (*(a1 + 71) < 0)
  {
LABEL_12:
    operator delete(*(a1 + 48));
  }

LABEL_13:
  v12 = *(a1 + 40);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  return a1;
}

std::mutex ***sub_27150BB80(std::mutex ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    std::mutex::unlock(*v1);
    MEMORY[0x2743BF050](v1, 0x20C4093837F09);
    return v2;
  }

  return result;
}

void sub_27150BBF4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106850;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27150BC48(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
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

void *sub_27150BD20(void *a1)
{
  *a1 = &unk_2881085A0;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_27150BD78(void *a1)
{
  *a1 = &unk_2881085A0;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  JUMPOUT(0x2743BF050);
}

void *sub_27150BE7C(void *result, uint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_2881085A0;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  *(a2 + 24) = result[3];
  *(a2 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 44) = 0;
  *(a2 + 41) = 0;
  return result;
}

void sub_27150BED4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_27150BF24(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = __p[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(__p);
}

void sub_27150BF70(void *a1)
{
  v12 = 0;
  v2 = a1[4];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    v12 = v3;
    if (v3)
    {
      v4 = a1[2];
      v5 = a1[3];
      v11 = 0;
      if (!v4)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = 0;
  v11 = 0;
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_7:
  v6 = std::__shared_weak_count::lock(v4);
  v11 = v6;
  if (v6)
  {
    v7 = a1[1];
    v10 = v6;
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!v3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_10:
  v7 = 0;
  v10 = 0;
  if (v3)
  {
LABEL_11:
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_12:
  if (v7 && v5)
  {
    LOBYTE(v13) = 0;
    v14 = 0;
    sub_27150C248((v7 + 88), v5, &v13);
  }

  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    v8 = v11;
    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v8 = v11;
    if (!v11)
    {
      goto LABEL_22;
    }
  }

  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    v9 = v12;
    if (!v12)
    {
      return;
    }

    goto LABEL_23;
  }

LABEL_22:
  v9 = v12;
  if (!v12)
  {
    return;
  }

LABEL_23:
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void sub_27150C1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  sub_27112F828(&a9);
  sub_27112F828(&a11);
  sub_27112F828(&a13);
  sub_27112F828(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_27150C1D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE25EnqueueMessageAndDispatchIZNKS6_4SendERKS5_EUlT_T0_E_EEvS9_SA_EUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE25EnqueueMessageAndDispatchIZNKS6_4SendERKS5_EUlT_T0_E_EEvS9_SA_EUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE25EnqueueMessageAndDispatchIZNKS6_4SendERKS5_EUlT_T0_E_EEvS9_SA_EUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE25EnqueueMessageAndDispatchIZNKS6_4SendERKS5_EUlT_T0_E_EEvS9_SA_EUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_27150C248(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a1;
  if (!v6)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Concurrency/include/Kit/Concurrency/Channel/detail/ProcessorInputMessageHandlingStrategy.h", 228, "callable_", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "callable_", 9, "", 0);
        v6 = *a1;
        goto LABEL_10;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v7)(*(v7 + 8), "callable_", 9, "", 0);
      v7 += 16;
    }

    while (v7 != v8);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_20:
    abort();
  }

LABEL_10:
  v14 = (*(*v6 + 16))(v6, a2);
  v9 = a1 + 1;
  for (i = a1[2]; i != v9; i = i[1])
  {
    (*(i[2] + 16))(i + 2, &v14);
  }

  if (a3[1])
  {
    v11 = *a3;
    if (!*a3)
    {
      sub_27150C8D8(3u);
    }

    std::mutex::lock((v11 + 24));
    if ((*(v11 + 136) & 1) != 0 || (v13.__ptr_ = 0, v12 = *(v11 + 16), std::exception_ptr::~exception_ptr(&v13), v12))
    {
      sub_27150C8D8(2u);
    }

    *(v11 + 140) = v14;
    *(v11 + 136) |= 5u;
    std::condition_variable::notify_all((v11 + 88));
    std::mutex::unlock((v11 + 24));
  }
}

void sub_27150C55C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x27150C57CLL);
}

uint64_t sub_27150C588(uint64_t a1, const char *a2, const char *a3)
{
  v7 = 0;
  v8 = v6;
  v9 = "Caught unexpected exception of type: ";
  v10 = v6;
  v11 = "Caught unexpected exception of type: ";
  v12 = "Caught unexpected exception of type: ";
  v13 = &v8;
  sub_271359634(&v13);
  if (*a2)
  {
    v8 = v6;
    v9 = a2;
    v10 = v6;
    v11 = a2;
    v12 = a2;
    if (v7 != -1)
    {
      v13 = &v8;
      (off_288132B18[v7])(&v13, v6);
      goto LABEL_6;
    }

LABEL_18:
    sub_2711308D4();
  }

  v8 = v6;
  v9 = "nullptr";
  v10 = v6;
  v11 = "nullptr";
  v12 = "nullptr";
  if (v7 == -1)
  {
    goto LABEL_18;
  }

  v13 = &v8;
  (*(&off_288132B00 + v7))(&v13, v6);
LABEL_6:
  v8 = v6;
  v9 = "\n";
  v10 = v6;
  v11 = "\n";
  v12 = "\n";
  if (v7 == -1)
  {
    sub_2711308D4();
  }

  v13 = &v8;
  (*(&off_288132B30 + v7))(&v13, v6);
  v8 = v6;
  v9 = "message: ";
  v10 = v6;
  v11 = "message: ";
  v12 = "message: ";
  if (v7 == -1)
  {
    sub_2711308D4();
  }

  v13 = &v8;
  (*(&off_288132B48 + v7))(&v13, v6);
  if (*a3)
  {
    v8 = v6;
    v9 = a3;
    v10 = v6;
    v11 = a3;
    v12 = a3;
    if (v7 != -1)
    {
      v13 = &v8;
      (off_288132B18[v7])(&v13, v6);
      goto LABEL_13;
    }

LABEL_21:
    sub_2711308D4();
  }

  v8 = v6;
  v9 = "nullptr";
  v10 = v6;
  v11 = "nullptr";
  v12 = "nullptr";
  if (v7 == -1)
  {
    goto LABEL_21;
  }

  v13 = &v8;
  (*(&off_288132B00 + v7))(&v13, v6);
LABEL_13:
  v8 = v6;
  v9 = "\n";
  v10 = v6;
  v11 = "\n";
  v12 = "\n";
  if (v7 == -1)
  {
    sub_2711308D4();
  }

  v13 = &v8;
  (*(&off_288132B30 + v7))(&v13, v6);
  if (v7 == -1)
  {
    sub_2711308D4();
  }

  v8 = &v13;
  result = (off_288132AE8[v7])(&v8, v6);
  if (v7 != -1)
  {
    return (off_288132AD0[v7])(&v8, v6);
  }

  return result;
}

void sub_27150C8D8(unsigned int a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v3 = std::future_category();
  MEMORY[0x2743BE5F0](exception, a1, v3);
  __cxa_throw(exception, MEMORY[0x277D82710], MEMORY[0x277D82648]);
}

void *sub_27150C940(void *result)
{
  v1 = *result;
  if (*result)
  {
    if ((*(v1 + 136) & 1) == 0)
    {
      v12.__ptr_ = 0;
      v2 = *(v1 + 16);
      v3 = result;
      std::exception_ptr::~exception_ptr(&v12);
      result = v3;
      v1 = *v3;
      if (!v2 && *(v1 + 8) >= 1)
      {
        v4 = std::future_category();
        MEMORY[0x2743BE5F0](v10, 4, v4);
        exception = __cxa_allocate_exception(0x20uLL);
        __cxa_init_primary_exception();
        v6 = std::logic_error::logic_error(exception, v10);
        exception->__vftable = (MEMORY[0x277D82838] + 16);
        exception[1] = v10[1];
        std::exception_ptr::__from_native_exception_pointer(&v11, v6, v7);
        v8.__ptr_ = &v11;
        std::__assoc_sub_state::set_exception(v1, v8);
        std::exception_ptr::~exception_ptr(&v11);
        MEMORY[0x2743BE600](v10);
        result = v3;
        v1 = *v3;
      }
    }

    if (!atomic_fetch_add((v1 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v9 = result;
      (*(*v1 + 16))(v1);
      return v9;
    }
  }

  return result;
}

uint64_t sub_27150CABC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void *sub_27150CAF8(void *a1)
{
  *a1 = &unk_2881084F0;
  v2 = a1[7];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[4];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void sub_27150CBD4(void *a1)
{
  *a1 = &unk_2881084F0;
  v2 = a1[7];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[4];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  JUMPOUT(0x2743BF050);
}

void *sub_27150CD8C(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_2881084F0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  a2[3] = result[3];
  a2[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = result[6];
  v5 = result[7];
  a2[5] = off_28810C940;
  a2[6] = v6;
  a2[7] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_27150CE14(void *a1)
{
  v2 = a1[7];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[4];
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

  std::__shared_weak_count::__release_weak(v4);
}

void sub_27150CEF0(void *__p)
{
  v2 = __p[7];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = __p[4];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = __p[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(__p);
}

void sub_27150CFC0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    v9 = v3;
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      v8 = v5;
      if (v5)
      {
        LOBYTE(v6) = 0;
        v7 = 0;
        sub_27150C248((v5 + 88), a1 + 24, &v6);
      }

      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);

        std::__shared_weak_count::__release_weak(v4);
      }
    }
  }
}

void sub_27150D080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27150D094(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE4SendERKS5_EUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE4SendERKS5_EUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE4SendERKS5_EUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE4SendERKS5_EUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *sub_27150D10C(void *a1)
{
  v2 = a1[6];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[3];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void sub_27150D210(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288105778;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void *sub_27150D270(void *a1)
{
  *a1 = &unk_288108548;
  v2 = a1[6];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void sub_27150D310(void *a1)
{
  *a1 = &unk_288108548;
  v2 = a1[6];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  JUMPOUT(0x2743BF050);
}

void *sub_27150D46C(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_288108548;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  a2[3] = result[3];
  a2[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = result[6];
  a2[5] = result[5];
  a2[6] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_27150D4D4(void *a1)
{
  v2 = a1[6];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[2];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_27150D56C(void *__p)
{
  v2 = __p[6];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = __p[4];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = __p[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(__p);
}

void sub_27150D600(void *a1)
{
  v24 = 0;
  v2 = a1[4];
  if (!v2)
  {
    v3 = 0;
LABEL_6:
    v5 = 0;
    v23 = 0;
    v4 = a1[2];
    if (!v4)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v3 = std::__shared_weak_count::lock(v2);
  v24 = v3;
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = a1[2];
  v5 = a1[3];
  v23 = 0;
  if (!v4)
  {
LABEL_10:
    v7 = 0;
    v22 = 0;
    if (!v3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_7:
  v6 = std::__shared_weak_count::lock(v4);
  v23 = v6;
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = a1[1];
  v22 = v6;
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  if (v3)
  {
LABEL_11:
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_12:
  if (v7)
  {
    if (v5)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = a1[5];
    std::runtime_error::runtime_error(&v27, "Processor is no longer available.");
    v27.__vftable = &unk_288116428;
    exception = __cxa_allocate_exception(0x10uLL);
    __cxa_init_primary_exception();
    v11 = std::runtime_error::runtime_error(exception, &v27);
    exception->__vftable = &unk_288116428;
    std::exception_ptr::__from_native_exception_pointer(&v28, v11, v12);
    v13 = *v9;
    if (!*v9)
    {
      sub_27150C8D8(3u);
    }

    std::exception_ptr::exception_ptr(&v25, &v28);
    v14.__ptr_ = &v25;
    std::__assoc_sub_state::set_exception(v13, v14);
    std::exception_ptr::~exception_ptr(&v25);
    std::exception_ptr::~exception_ptr(&v28);
    std::runtime_error::~runtime_error(&v27);
    if (v5)
    {
LABEL_14:
      v8 = a1[5];
      v25.__vftable = *v8;
      *v8 = 0;
      LOBYTE(v25.__imp_.__imp_) = 1;
      sub_27150C248((v7 + 88), v5, &v25);
      sub_27150C940(&v25);
      if (!v3)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }
  }

  v15 = a1[5];
  std::runtime_error::runtime_error(&v25, "Message was dropped.");
  v25.__vftable = &unk_288116428;
  v16 = __cxa_allocate_exception(0x10uLL);
  __cxa_init_primary_exception();
  v17 = std::runtime_error::runtime_error(v16, &v25);
  v16->__vftable = &unk_288116428;
  std::exception_ptr::__from_native_exception_pointer(&v26, v17, v18);
  v19 = *v15;
  if (!*v15)
  {
    sub_27150C8D8(3u);
  }

  std::exception_ptr::exception_ptr(&v29, &v26);
  v20.__ptr_ = &v29;
  std::__assoc_sub_state::set_exception(v19, v20);
  std::exception_ptr::~exception_ptr(&v29);
  std::exception_ptr::~exception_ptr(&v26);
  std::runtime_error::~runtime_error(&v25);
  if (v3)
  {
LABEL_20:
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }

LABEL_22:
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
    v21 = v24;
    if (!v24)
    {
      return;
    }
  }

  else
  {
    v21 = v24;
    if (!v24)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }
}

void sub_27150D9EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, std::runtime_error a18, std::exception_ptr a19)
{
  std::exception_ptr::~exception_ptr((v19 - 56));
  std::exception_ptr::~exception_ptr(&a19);
  std::runtime_error::~runtime_error(&a18);
  sub_27112F828(&a10);
  sub_27112F828(&a12);
  sub_27112F828(&a14);
  sub_27112F828(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_27150DA78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE25EnqueueMessageAndDispatchIZNKS6_7ProcessERKS5_NSt3__17promiseIbEEEUlT_T0_E_EEvS9_SD_EUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE25EnqueueMessageAndDispatchIZNKS6_7ProcessERKS5_NSt3__17promiseIbEEEUlT_T0_E_EEvS9_SD_EUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE25EnqueueMessageAndDispatchIZNKS6_7ProcessERKS5_NSt3__17promiseIbEEEUlT_T0_E_EEvS9_SD_EUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE25EnqueueMessageAndDispatchIZNKS6_7ProcessERKS5_NSt3__17promiseIbEEEUlT_T0_E_EEvS9_SD_EUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *sub_27150DAF0(void *a1)
{
  v2 = a1[5];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void *sub_27150DB74(void *a1)
{
  *a1 = &unk_288108498;
  v2 = a1[9];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[7];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[4];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void sub_27150DC98(void *a1)
{
  *a1 = &unk_288108498;
  v2 = a1[9];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[7];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[4];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  JUMPOUT(0x2743BF050);
}

void *sub_27150DEB0(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_288108498;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  a2[3] = result[3];
  a2[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = result[6];
  v5 = result[7];
  a2[5] = off_28810C940;
  a2[6] = v6;
  a2[7] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = result[9];
  a2[8] = result[8];
  a2[9] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_27150DF50(void *a1)
{
  v2 = a1[9];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[7];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[4];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v5 = a1[2];
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = a1[2];
    if (!v5)
    {
      return;
    }
  }

  std::__shared_weak_count::__release_weak(v5);
}

void sub_27150E074(void *__p)
{
  v2 = __p[9];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = __p[7];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = __p[4];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = __p[2];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(__p);
}

void sub_27150E18C(void *a1)
{
  v14 = 0;
  v15 = 0;
  v2 = a1[2];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    v15 = v3;
    if (v3)
    {
      v4 = a1[1];
      v14 = v4;
      if (v4)
      {
        v5 = a1[8];
        v13.__vftable = *v5;
        *v5 = 0;
        LOBYTE(v13.__imp_.__imp_) = 1;
        sub_27150C248((v4 + 88), (a1 + 3), &v13);
        sub_27150C940(&v13);
LABEL_8:
        if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v3->__on_zero_shared)(v3);
          std::__shared_weak_count::__release_weak(v3);
        }

        return;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v6 = a1[8];
  std::runtime_error::runtime_error(&v13, "Invalid operation. Processor is released.");
  v13.__vftable = &unk_288116428;
  exception = __cxa_allocate_exception(0x10uLL);
  __cxa_init_primary_exception();
  v8 = std::runtime_error::runtime_error(exception, &v13);
  exception->__vftable = &unk_288116428;
  std::exception_ptr::__from_native_exception_pointer(&v12, v8, v9);
  v10 = *v6;
  if (!*v6)
  {
    sub_27150C8D8(3u);
  }

  std::exception_ptr::exception_ptr(&v16, &v12);
  v11.__ptr_ = &v16;
  std::__assoc_sub_state::set_exception(v10, v11);
  std::exception_ptr::~exception_ptr(&v16);
  std::exception_ptr::~exception_ptr(&v12);
  std::runtime_error::~runtime_error(&v13);
  if (v3)
  {
    goto LABEL_8;
  }
}

void sub_27150E344(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_27150C940(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_27150E360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::runtime_error a10, char a11, uint64_t a12, std::exception_ptr a13)
{
  std::exception_ptr::~exception_ptr(&a13);
  std::exception_ptr::~exception_ptr(&a9);
  std::runtime_error::~runtime_error(&a10);
  sub_27112F828(&a11);
  _Unwind_Resume(a1);
}

void sub_27150E394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27150E3A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE7ProcessERKS5_NSt3__17promiseIbEEEUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE7ProcessERKS5_NSt3__17promiseIbEEEUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE7ProcessERKS5_NSt3__17promiseIbEEEUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE7ProcessERKS5_NSt3__17promiseIbEEEUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *sub_27150E420(void *a1)
{
  v2 = a1[8];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
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

  v5 = a1[1];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void *sub_27150E528(void *a1)
{
  *a1 = &unk_288108700;
  v2 = a1[4];
  a1[3] = &unk_288116478;
  a1[4] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_27150E5C0(void *a1)
{
  *a1 = &unk_288108700;
  v2 = a1[4];
  a1[3] = &unk_288116478;
  a1[4] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  JUMPOUT(0x2743BF050);
}

void sub_27150E738(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_27150E758(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_288108700;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = &unk_288116478;
  return (*(**(a1 + 32) + 16))(*(a1 + 32));
}

void sub_27150E7F8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_27150E810(void *a1)
{
  v2 = a1[4];
  a1[3] = &unk_288116478;
  a1[4] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[2];
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_27150E8A0(void *__p)
{
  v2 = __p[4];
  __p[3] = &unk_288116478;
  __p[4] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = __p[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(__p);
}

void sub_27150E92C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      if (*(a1 + 8))
      {
        operator new();
      }

      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);

        std::__shared_weak_count::__release_weak(v4);
      }
    }
  }
}

uint64_t sub_27150EA50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE9SubscribeENS1_12ChannelInputIbEEEUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE9SubscribeENS1_12ChannelInputIbEEEUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE9SubscribeENS1_12ChannelInputIbEEEUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE9SubscribeENS1_12ChannelInputIbEEEUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *sub_27150EAC8(void *a1)
{
  v2 = a1[3];
  a1[2] = &unk_288116478;
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

uint64_t sub_27150EB44(uint64_t result)
{
  *result = &unk_288108758;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void sub_27150EB98(uint64_t a1)
{
  *a1 = &unk_288108758;
  if (*(a1 + 16))
  {
    std::__shared_weak_count::__release_weak(*(a1 + 16));
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27150EC7C(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_288108758;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 28) = 0;
  *(a2 + 25) = 0;
  return result;
}

void sub_27150ECBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_27150ECCC(std::__shared_weak_count **a1)
{
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void sub_27150ED10(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      if (*(a1 + 8))
      {
        operator new();
      }

      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);

        std::__shared_weak_count::__release_weak(v4);
      }
    }
  }
}

uint64_t sub_27150EE00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE15AddErrorHandlerENS1_12ChannelInputIvEEEUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE15AddErrorHandlerENS1_12ChannelInputIvEEEUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE15AddErrorHandlerENS1_12ChannelInputIvEEEUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE15AddErrorHandlerENS1_12ChannelInputIvEEEUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_27150EE78(uint64_t a1)
{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

void sub_27150EEE4(uint64_t a1)
{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27150EF64(uint64_t a1)
{
  if (*(a1 + 136))
  {
    v1 = *(a1 + 144);
    if (v1)
    {
      *(a1 + 152) = v1;
      v2 = a1;
      operator delete(v1);
      a1 = v2;
    }
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_27150EFD4(uint64_t result)
{
  *result = &unk_2881085F8;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void sub_27150F028(uint64_t a1)
{
  *a1 = &unk_2881085F8;
  if (*(a1 + 16))
  {
    std::__shared_weak_count::__release_weak(*(a1 + 16));
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

void *sub_27150F10C(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_2881085F8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void sub_27150F14C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_27150F15C(std::__shared_weak_count **a1)
{
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void sub_27150F1A0(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    __p[4] = v3;
    if (v3)
    {
      v4 = v3;
      v5 = a1[1];
      __p[3] = v5;
      if (v5)
      {
        v6 = a1[3];
        v7 = v5[14];
        if (v7)
        {
          if (!(v7 >> 61))
          {
            operator new();
          }

          sub_2711EB2F8();
        }

        v8 = v5[13];
        if (v8 != v5 + 12)
        {
          (*(**(v8 + 24) + 48))(*(v8 + 24));
          operator new();
        }

        memset(__p, 0, 24);
        if (!*v6)
        {
          sub_27150C8D8(3u);
        }

        sub_27150F4DC(*v6, __p);
        if (__p[0])
        {
          operator delete(__p[0]);
        }
      }

      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);

        std::__shared_weak_count::__release_weak(v4);
      }
    }
  }
}

void sub_27150F41C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27150F430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_27112F828(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_27150F464(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE16OutputHandlerIDsEvEUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE16OutputHandlerIDsEvEUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE16OutputHandlerIDsEvEUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE16OutputHandlerIDsEvEUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_27150F4DC(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
  {
    sub_27150C8D8(2u);
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = *a2;
  *(a1 + 160) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

void sub_27150F594(uint64_t a1, uint64_t a2)
{
  __lk.__m_ = (a2 + 24);
  __lk.__owns_ = 1;
  std::mutex::lock((a2 + 24));
  std::__assoc_sub_state::__sub_wait(a2, &__lk);
  v4 = *(a2 + 16);
  v7.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v7);
  if (v4)
  {
    std::exception_ptr::exception_ptr(&v6, (a2 + 16));
    v5.__ptr_ = &v6;
    std::rethrow_exception(v5);
    __break(1u);
  }

  else
  {
    *a1 = *(a2 + 144);
    *(a1 + 16) = *(a2 + 160);
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
    *(a2 + 144) = 0;
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

void sub_27150F644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

void *sub_27150F674(void *result)
{
  v1 = *result;
  if (*result)
  {
    if ((*(v1 + 136) & 1) == 0)
    {
      v12.__ptr_ = 0;
      v2 = *(v1 + 16);
      v3 = result;
      std::exception_ptr::~exception_ptr(&v12);
      result = v3;
      v1 = *v3;
      if (!v2 && *(v1 + 8) >= 1)
      {
        v4 = std::future_category();
        MEMORY[0x2743BE5F0](v10, 4, v4);
        exception = __cxa_allocate_exception(0x20uLL);
        __cxa_init_primary_exception();
        v6 = std::logic_error::logic_error(exception, v10);
        exception->__vftable = (MEMORY[0x277D82838] + 16);
        exception[1] = v10[1];
        std::exception_ptr::__from_native_exception_pointer(&v11, v6, v7);
        v8.__ptr_ = &v11;
        std::__assoc_sub_state::set_exception(v1, v8);
        std::exception_ptr::~exception_ptr(&v11);
        MEMORY[0x2743BE600](v10);
        result = v3;
        v1 = *v3;
      }
    }

    if (!atomic_fetch_add((v1 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v9 = result;
      (*(*v1 + 16))(v1);
      return v9;
    }
  }

  return result;
}

uint64_t sub_27150F7CC(uint64_t result)
{
  *result = &unk_288108650;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void sub_27150F820(uint64_t a1)
{
  *a1 = &unk_288108650;
  if (*(a1 + 16))
  {
    std::__shared_weak_count::__release_weak(*(a1 + 16));
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

void *sub_27150F904(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_288108650;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void sub_27150F944(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_27150F954(std::__shared_weak_count **a1)
{
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void sub_27150F998(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    v8 = v3;
    if (v3)
    {
      v4 = v3;
      if (a1[1])
      {
        v5 = a1[3];
        memset(__p, 0, sizeof(__p));
        if (!*v5)
        {
          sub_27150C8D8(3u);
        }

        sub_27150F4DC(*v5, __p);
        if (__p[0])
        {
          operator delete(__p[0]);
        }
      }

      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);

        std::__shared_weak_count::__release_weak(v4);
      }
    }
  }
}

void sub_27150FA74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_27112F828(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_27150FA94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE15ErrorHandlerIDsEvEUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE15ErrorHandlerIDsEvEUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE15ErrorHandlerIDsEvEUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK4cv3d3kit11concurrency6detail9ProcessorINS0_3viz11ContextDataEbvbLb0EE15ErrorHandlerIDsEvEUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_27150FB10(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27150FB48(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_27150FB78(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__110shared_ptrIN4cv3d3kit11concurrency6detail9ProcessorINS2_3viz11ContextDataEbvbLb0EEEE27__shared_ptr_default_deleteIS8_S8_EE")
  {
    if (((v2 & "NSt3__110shared_ptrIN4cv3d3kit11concurrency6detail9ProcessorINS2_3viz11ContextDataEbvbLb0EEEE27__shared_ptr_default_deleteIS8_S8_EE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__110shared_ptrIN4cv3d3kit11concurrency6detail9ProcessorINS2_3viz11ContextDataEbvbLb0EEEE27__shared_ptr_default_deleteIS8_S8_EE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIN4cv3d3kit11concurrency6detail9ProcessorINS2_3viz11ContextDataEbvbLb0EEEE27__shared_ptr_default_deleteIS8_S8_EE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_27150FBD8(uint64_t result)
{
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void sub_27150FC10(uint64_t a1)
{
  if (*(a1 + 16))
  {
    std::__shared_weak_count::__release_weak(*(a1 + 16));
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

void sub_27150FCD8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        (*(*v5 + 32))(v5);
      }

      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);

        std::__shared_weak_count::__release_weak(v4);
      }
    }
  }
}

void sub_27150FDB8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        (*(*v5 + 40))(v5);
      }

      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);

        std::__shared_weak_count::__release_weak(v4);
      }
    }
  }
}

std::__shared_weak_count *sub_27150FE98(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    result = std::__shared_weak_count::lock(result);
    if (result)
    {
      v3 = result;
      result = *(a1 + 8);
      if (result)
      {
        result = (result->__vftable[1].~__shared_weak_count_0)(result);
      }

      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

std::__shared_weak_count *sub_27150FF74(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    result = std::__shared_weak_count::lock(result);
    if (result)
    {
      v3 = result;
      result = *(a1 + 8);
      if (result)
      {
        result = (result->__get_deleter)(result);
      }

      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_271510050(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        (*(*v7 + 16))(v7, a2);
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);

        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }
}

uint64_t sub_271510144(uint64_t a1)
{
  *a1 = &unk_288116260;
  v2 = (a1 + 72);
  if (*(a1 + 72))
  {
    v3 = *(a1 + 80);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v4 = *(a1 + 80);
      *v2 = 0;
      *(a1 + 80) = 0;
      if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
      }

      while (v3->__shared_owners_ != -1)
      {
        sched_yield();
      }
    }

    else
    {
      *v2 = 0;
      *(a1 + 80) = 0;
    }

    v5 = *(a1 + 56);
    if (v5)
    {
      sub_27174ABCC(*v5);
    }

    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }
  }

  *(a1 + 144) = &unk_2881164C8;
  v6 = *(a1 + 160);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  *(a1 + 120) = &unk_288116450;
  v7 = *(a1 + 136);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *(a1 + 112);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = *(a1 + 96);
  *(a1 + 88) = &unk_2881164A0;
  *(a1 + 96) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(a1 + 80);
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = *(a1 + 64);
  if (!v11 || atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

LABEL_30:
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_31;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (*(a1 + 55) < 0)
  {
    goto LABEL_30;
  }

LABEL_27:
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_31:
  operator delete(*(a1 + 8));
  return a1;
}

uint64_t *sub_2715103B8(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_271510144(v2);
    MEMORY[0x2743BF050](v4, 0x10B2C4085F70915);
    return v3;
  }

  return v1;
}

uint64_t sub_27151040C(uint64_t a1)
{
  *a1 = &unk_288116408;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    v3 = sub_271510144(v2);
    MEMORY[0x2743BF050](v3, 0x10B2C4085F70915);
  }

  v4 = *(a1 + 64);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v5)
  {
    v6 = sub_271510144(v5);
    MEMORY[0x2743BF050](v6, 0x10B2C4085F70915);
  }

  v7 = *(a1 + 64);
  if (!v7 || atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_15;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  if (*(a1 + 55) < 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_15:
  operator delete(*(a1 + 8));
  return a1;
}

void *sub_27151056C(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 40);
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
      }
    }

    sub_271510610(v1 + 8, *(v1 + 16));
    MEMORY[0x2743BF050](v1, 0x1020C401722722ELL);
    return v2;
  }

  return result;
}

void sub_271510610(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_271510610(a1, *a2);
    sub_271510610(a1, *(a2 + 8));
    v4 = *(a2 + 64);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      if ((*(a2 + 55) & 0x80000000) == 0)
      {
LABEL_5:
        v5 = a2;

LABEL_7:
        operator delete(v5);
        return;
      }
    }

    else if ((*(a2 + 55) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    operator delete(*(a2 + 32));
    v5 = a2;

    goto LABEL_7;
  }
}

void ***sub_2715106E4(void ***a1)
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
          v6 = *(v4 - 1);
          if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v6->__on_zero_shared)(v6);
            std::__shared_weak_count::__release_weak(v6);
          }

          v4 -= 24;
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

_BYTE *sub_2715107A8(_BYTE *result, uint64_t *a2)
{
  v2 = result;
  v18 = *MEMORY[0x277D85DE8];
  if (*(a2 + 24) == 1)
  {
    v3 = *a2;
    v4 = a2[1];
    v12 = 0;
    v11 = 0uLL;
    if (v4 != v3)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3) <= 0x2E8BA2E8BA2E8BALL)
      {
        v16 = &v11;
        operator new();
      }

      sub_271135560();
    }

    v10 = v11;
    *__p = v11;
    v5 = v12;
    v14 = v12;
    v6 = sub_27139B104(0);
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v7 = *v6;
    v8 = v6[1];
    *&v11 = &v15;
    BYTE8(v11) = 0;
    if (v8 != v7)
    {
      if (((v8 - v7) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_271135560();
    }

    result = 0;
    *v2 = v10;
    *(v2 + 2) = v5;
    *(v2 + 3) = 0;
    *(v2 + 4) = 0;
    *(v2 + 5) = 0;
    v2[48] = 1;
  }

  else
  {
    *result = 0;
    result[48] = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_271510E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void *);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_2715110C8(va1);
  sub_271510F0C(va);
  _Unwind_Resume(a1);
}

void sub_271510EF0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_271120E50(a1);
}

void **sub_271510F0C(void **a1)
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
        v3 -= 88;
        sub_27151111C(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t *sub_271510F70(uint64_t *result, void *a2)
{
  v3 = *result;
  v4 = result[1];
  v5 = a2[1] + *result - v4;
  if (v4 != *result)
  {
    v13 = result;
    v6 = 0;
    do
    {
      v7 = v5 + v6;
      v8 = v3 + v6;
      v9 = *(v3 + v6 + 8);
      *(v7 + 24) = *(v3 + v6 + 24);
      *(v7 + 8) = v9;
      *(v8 + 16) = 0;
      *(v8 + 24) = 0;
      *(v8 + 8) = 0;
      *(v7 + 32) = *(v3 + v6 + 32);
      *(v5 + v6 + 40) = 0;
      *(v7 + 56) = -1;
      v10 = *(v3 + v6 + 56);
      if (v10 != -1)
      {
        v14 = v5 + v6 + 40;
        (off_288132AC0[v10])(&v14, v8 + 40);
        *(v7 + 56) = v10;
      }

      *(v7 + 64) = 0;
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      *(v7 + 64) = *(v8 + 64);
      *(v7 + 80) = *(v8 + 80);
      *(v8 + 64) = 0;
      *(v8 + 72) = 0;
      *(v8 + 80) = 0;
      v6 += 88;
    }

    while (v3 + v6 != v4);
    do
    {
      sub_27151111C(v3);
      v3 += 88;
    }

    while (v3 != v4);
    result = v13;
    v3 = *v13;
  }

  a2[1] = v5;
  *result = v5;
  result[1] = v3;
  a2[1] = v3;
  v11 = result[1];
  result[1] = a2[2];
  a2[2] = v11;
  v12 = result[2];
  result[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return result;
}

uint64_t sub_2715110C8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 88;
    sub_27151111C(i - 88);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_27151111C(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = *(a1 + 72);
    v4 = *(a1 + 64);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 64);
    }

    *(a1 + 72) = v2;
    operator delete(v4);
  }

  v6 = *(a1 + 56);
  if (v6 != -1)
  {
    (off_288132AB0[v6])(&v7, a1 + 40);
  }

  *(a1 + 56) = -1;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

void sub_271511244(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 56);
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
    goto LABEL_27;
  }

  v7 = v1[1];
  v2[6] = v3 + 4;
  sub_27173170C(v2);
  sub_2714A815C(&v22, v2, (v7 + 4));
  v9 = v2[6];
  v8 = v2[7];
  if (v8 <= v9)
  {
LABEL_26:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
LABEL_27:
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v10 = *(v2[3] + v9);
  v11 = v9 + 1;
  v2[6] = v11;
  if (v10)
  {
    if ((*(v7 + 176) & 1) == 0)
    {
      v12 = sub_27139B104(0);
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 32) = 0;
      sub_27139A608(v7 + 56, v12);
      *(v7 + 144) = 0;
      *(v7 + 168) = 0;
      *(v7 + 176) = 1;
      v11 = v2[6];
      v8 = v2[7];
    }

    v5 = v8 >= v11;
    v13 = v8 - v11;
    if (!v5)
    {
      v13 = 0;
    }

    if (v13 > 3)
    {
      v14 = *(v2[3] + v11);
      v2[6] = v11 + 4;
      sub_27173170C(v2);
      sub_2717318E8(v2, v7 + 32);
      sub_271511504(v2, v7 + 56);
      if (v14 < 2)
      {
LABEL_23:
        v17 = v2[12];
        v18 = v2[9];
        v2[6] = *(v17 - 8) + *(v18 - 8) + 8;
        v2[9] = v18 - 8;
        v2[12] = v17 - 8;
        goto LABEL_24;
      }

      v15 = v2[6];
      if (v2[7] > v15)
      {
        v16 = *(v2[3] + v15);
        v2[6] = v15 + 1;
        if (v16)
        {
          if ((*(v7 + 168) & 1) == 0)
          {
            *(v7 + 144) = 0;
            *(v7 + 152) = 0;
            *(v7 + 160) = 0;
            *(v7 + 168) = 1;
          }

          sub_2717318E8(v2, v7 + 144);
        }

        else if (*(v7 + 168))
        {
          if (*(v7 + 167) < 0)
          {
            operator delete(*(v7 + 144));
          }

          *(v7 + 168) = 0;
        }

        goto LABEL_23;
      }
    }

    goto LABEL_26;
  }

  if (*(v7 + 176))
  {
    sub_2713A1844(v7 + 32);
    *(v7 + 176) = 0;
  }

LABEL_24:
  v19 = v2[12];
  v20 = v2[9];
  v2[6] = *(v19 - 8) + *(v20 - 8) + 8;
  v2[9] = v20 - 8;
  v2[12] = v19 - 8;
}

void sub_2715114C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void sub_271511504(void *a1, uint64_t a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = a1[6];
  v3 = a1[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v8 = *(a1[3] + v2);
  a1[6] = v2 + 4;
  if (v8 <= 1)
  {
    sub_27139A124(&v41, (a2 + 64));
    sub_271511A2C(a1, &v42);
    sub_27139A288(&v41);
    if (v45)
    {
      sub_2711308D4();
    }

    v16 = v44;
    v34 = &unk_28810A5B0;
    v35 = v44;
    v17 = a1[6];
    v18 = a1[7];
    v4 = v18 >= v17;
    v19 = v18 - v17;
    if (!v4)
    {
      v19 = 0;
    }

    if (v19 <= 3)
    {
      v32 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v32, "Not enough data to read");
      v32->__vftable = (MEMORY[0x277D828E8] + 16);
      __cxa_throw(v32, off_279E2F400, MEMORY[0x277D825F8]);
    }

    v20 = *(a1[3] + v17);
    a1[6] = v17 + 4;
    (*(*v16 + 40))(v16, a1, v20);
    sub_2713A0DC8(&v34, &v41);
    sub_2713A0F0C(a2, &v34);
    v21 = __p;
    if (__p)
    {
      v22 = v40;
      v23 = __p;
      if (v40 != __p)
      {
        do
        {
          v24 = *(v22 - 1);
          if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v24->__on_zero_shared)(v24);
            std::__shared_weak_count::__release_weak(v24);
          }

          v22 -= 16;
        }

        while (v22 != v21);
        v23 = __p;
      }

      v40 = v21;
      operator delete(v23);
    }

    if (v38 != -1)
    {
      (off_288132AB0[v38])(&v33, &v37);
    }

    v38 = -1;
    if (v36 < 0)
    {
      operator delete(v35);
    }

    v25 = v46;
    if (v46)
    {
      v26 = v47;
      v27 = v46;
      if (v47 != v46)
      {
        do
        {
          v28 = *(v26 - 1);
          if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v28->__on_zero_shared)(v28);
            std::__shared_weak_count::__release_weak(v28);
          }

          v26 -= 16;
        }

        while (v26 != v25);
        v27 = v46;
      }

      v47 = v25;
      operator delete(v27);
    }

    if (v45 != -1)
    {
      (off_288132AB0[v45])(&v34, &v44);
    }

    v45 = -1;
    if (v43 < 0)
    {
      operator delete(v42);
    }
  }

  else
  {
    sub_27173170C(a1);
    sub_271511A2C(a1, a2 + 8);
    sub_27139ABFC(a2);
    if (*(a2 + 56))
    {
      sub_2711308D4();
    }

    v9 = *(a2 + 40);
    v41 = &unk_28810A568;
    v42 = v9;
    v10 = a1[6];
    v11 = a1[7];
    v4 = v11 >= v10;
    v12 = v11 - v10;
    if (!v4)
    {
      v12 = 0;
    }

    if (v12 <= 3)
    {
      v31 = __cxa_allocate_exception(0x10uLL);
      sub_271128104(v31, "Not enough data to read");
      __cxa_throw(v31, off_279E2F400, MEMORY[0x277D825F8]);
    }

    v13 = *(a1[3] + v10);
    a1[6] = v10 + 4;
    sub_27173170C(a1);
    (*(*v42 + 40))(v42, a1, v13);
    v14 = a1[12];
    v15 = a1[9];
    a1[6] = *(v14 - 8) + *(v15 - 8) + 8;
    a1[6] = *(v14 - 16) + *(v15 - 16) + 8;
    a1[9] = v15 - 16;
    a1[12] = v14 - 16;
  }

  v29 = *MEMORY[0x277D85DE8];
}

void sub_27151198C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  __cxa_free_exception(v21);
  sub_2713A1270(&a21);
  _Unwind_Resume(a1);
}

void sub_2715119BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271511A2C(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 3)
  {
    goto LABEL_20;
  }

  v8 = *(a1[3] + v2);
  a1[6] = v2 + 4;
  if (v8 > 1)
  {
    sub_27173170C(a1);
    sub_2717318E8(a1, a2);
    v9 = a1[6];
    v10 = a1[7];
    v4 = v10 >= v9;
    v11 = v10 - v9;
    if (!v4)
    {
      v11 = 0;
    }

    if (v11 > 3)
    {
      *(a2 + 24) = *(a1[3] + v9);
      a1[6] += 4;
      v12 = a1[12];
      v13 = a1[9];
      a1[6] = *(v12 - 8) + *(v13 - 8) + 8;
      a1[9] = v13 - 8;
      a1[12] = v12 - 8;
      return;
    }

LABEL_20:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  HIBYTE(v24) = 0;
  LOBYTE(__p[0]) = 0;
  v25 = 0;
  sub_2717318E8(a1, __p);
  v15 = a1[6];
  v14 = a1[7];
  v4 = v14 >= v15;
  v16 = v14 - v15;
  if (!v4)
  {
    v16 = 0;
  }

  if (v16 <= 3)
  {
    v19 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v19, "Not enough data to read");
    v19->__vftable = (MEMORY[0x277D828E8] + 16);
    __cxa_throw(v19, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v17 = *(a1[3] + v15);
  v25 = v17;
  a1[6] = v15 + 4;
  if ((SHIBYTE(v24) & 0x80000000) == 0)
  {
    v20 = *__p;
    v21 = v24;
    v22 = v17;
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  sub_271127178(&v20, __p[0], __p[1]);
  v17 = v25;
  v22 = v25;
  if (*(a2 + 23) < 0)
  {
LABEL_15:
    operator delete(*a2);
    v17 = v22;
  }

LABEL_16:
  *a2 = v20;
  *(a2 + 16) = v21;
  *(a2 + 24) = v17;
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_271511C58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271511CB0(uint64_t a1)
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

uint64_t sub_271511D3C(uint64_t a1)
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

uint64_t sub_271511DC8(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = *(a1 + 56);
  if (v3 != v2)
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(a1 + 24);
    if (v4 != a1)
    {
      goto LABEL_5;
    }

LABEL_9:
    (*(*v4 + 32))(v4);
    return a1;
  }

  (*(*v3 + 32))(v3);
  v4 = *(a1 + 24);
  if (v4 == a1)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  return a1;
}

uint64_t sub_271511EBC(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 40);
    if (v3 != a1 + 16)
    {
      goto LABEL_4;
    }

LABEL_8:
    (*(*v3 + 32))(v3);
    return a1;
  }

  v3 = *(a1 + 40);
  if (v3 == a1 + 16)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  return a1;
}

void sub_271511FC4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106658;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2715121EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void **);
  v8 = va_arg(va2, void);
  sub_2711B5360(va1);
  sub_27112F828(va2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_271512230(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106738;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271512284(uint64_t a1)
{
  std::mutex::~mutex((a1 + 48));
  v2 = *(a1 + 32);

  sub_2715122C4(v2);
}

void sub_2715122C4(uint64_t a1)
{
  if (a1)
  {
    sub_2715122C4(*a1);
    sub_2715122C4(*(a1 + 8));
    v2 = *(a1 + 72);
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
      if ((*(a1 + 55) & 0x80000000) == 0)
      {
LABEL_5:
        v3 = a1;

LABEL_7:
        operator delete(v3);
        return;
      }
    }

    else if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    operator delete(*(a1 + 32));
    v3 = a1;

    goto LABEL_7;
  }
}

uint64_t sub_271512390(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1 + 16;
  v5 = *(a2 + 40);
  if (v5)
  {
    if (v5 == a2 + 16)
    {
      *(a1 + 40) = v4;
      (*(**(a2 + 40) + 24))(*(a2 + 40), v4);
      v6 = a1 + 48;
      v7 = *(a2 + 72);
      if (!v7)
      {
LABEL_10:
        *(a1 + 72) = v7;
        goto LABEL_12;
      }
    }

    else
    {
      *(a1 + 40) = (*(*v5 + 16))(v5);
      v6 = a1 + 48;
      v7 = *(a2 + 72);
      if (!v7)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    *(a1 + 40) = 0;
    v6 = a1 + 48;
    v7 = *(a2 + 72);
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  if (v7 != a2 + 48)
  {
    v7 = (*(*v7 + 16))(v7);
    goto LABEL_10;
  }

  *(a1 + 72) = v6;
  (*(**(a2 + 72) + 24))(*(a2 + 72), v6);
LABEL_12:
  v8 = *(a2 + 104);
  if (!v8)
  {
LABEL_15:
    *(a1 + 104) = v8;
    goto LABEL_17;
  }

  if (v8 != a2 + 80)
  {
    v8 = (*(*v8 + 16))(v8);
    goto LABEL_15;
  }

  *(a1 + 104) = a1 + 80;
  (*(**(a2 + 104) + 24))(*(a2 + 104), a1 + 80);
LABEL_17:
  v9 = *(a2 + 136);
  if (!v9)
  {
LABEL_20:
    *(a1 + 136) = v9;
    goto LABEL_22;
  }

  if (v9 != a2 + 112)
  {
    v9 = (*(*v9 + 16))(v9);
    goto LABEL_20;
  }

  *(a1 + 136) = a1 + 112;
  (*(**(a2 + 136) + 24))(*(a2 + 136), a1 + 112);
LABEL_22:
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  v10 = *(a2 + 144);
  v11 = *(a2 + 152);
  if (v11 != v10)
  {
    if (((v11 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_271135560();
  }

  *(a1 + 168) = 0;
  *(a1 + 200) = 0;
  if (*(a2 + 200) == 1)
  {
    v12 = *(a2 + 192);
    if (v12)
    {
      if (v12 == a2 + 168)
      {
        *(a1 + 192) = a1 + 168;
        (*(**(a2 + 192) + 24))(*(a2 + 192), a1 + 168);
        goto LABEL_31;
      }

      v12 = (*(*v12 + 16))(v12);
    }

    *(a1 + 192) = v12;
LABEL_31:
    *(a1 + 200) = 1;
  }

  *(a1 + 208) = *(a2 + 208);
  return a1;
}

void sub_2715126F4(_Unwind_Exception *a1)
{
  sub_271372BB8(v6);
  sub_271233D2C(v5);
  sub_2711AA15C(v4);
  sub_2711A9E28(v3);
  sub_271511CB0(v2);
  sub_271511D3C(v1);
  _Unwind_Resume(a1);
}

void *sub_271512778(void *a1)
{
  *a1 = &unk_288108B78;
  sub_271515124((a1 + 1));
  return a1;
}

void sub_2715127BC(void *a1)
{
  *a1 = &unk_288108B78;
  sub_271515124((a1 + 1));

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2715128A0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_288108B78;
  result = sub_271512390(a2 + 8, a1 + 8);
  *(a2 + 220) = 0;
  *(a2 + 217) = 0;
  return result;
}

void sub_2715128FC(void *a1)
{
  sub_271515124(a1 + 8);

  operator delete(a1);
}

void sub_271512938(uint64_t a1, const void **a2, uint64_t a3)
{
  v90[27] = *MEMORY[0x277D85DE8];
  v59 = 0x500000001;
  v60 = 0;
  v61 = 1;
  v62 = 0;
  sub_27139A608(&v77, (a1 + 152));
  v64 = 0;
  v66 = v79;
  v6 = v82;
  v67 = v80;
  v69 = -1;
  LOBYTE(v85[0]) = 0;
  LOBYTE(v86[1]) = 0;
  v63 = 0u;
  memset(v76, 0, sizeof(v76));
  v65 = *v78;
  v78[0] = 0;
  v78[1] = 0;
  v79 = 0;
  v68 = 0;
  if (v82 == -1)
  {
    v7 = 0;
  }

  else
  {
    *&v46 = &v68;
    (off_288132AC0[v82])(&v46, v81);
    v69 = v6;
    v7 = v86[1];
  }

  v70 = *v83;
  v71 = v84;
  v84 = 0;
  *v83 = 0uLL;
  LOBYTE(v72) = 0;
  v74 = 0;
  if (v7)
  {
    v72 = *v85;
    v73 = v86[0];
    v85[1] = 0;
    v86[0] = 0;
    v85[0] = 0;
    v74 = 1;
  }

  v75 = 1;
  sub_2713A1844(v76);
  *&v46 = a3;
  *(&v46 + 1) = &v58;
  v90[0] = &unk_2881168D0;
  v90[1] = &v46;
  sub_27184A384(v90, v76);
  if (v85[1])
  {
    if (v75)
    {
      sub_2713974FC(&v63);
    }

    v41 = 0;
    v45 = 0;
    sub_2714FCC00(&v43);
    v9 = HIBYTE(v76[2]);
    if (SHIBYTE(v76[2]) < 0)
    {
      v9 = v76[1];
    }

    if (v9 == 8)
    {
      v10 = v76[0];
      if (SHIBYTE(v76[2]) >= 0)
      {
        v10 = v76;
      }

      v11 = *"cv3d.net" == *v10;
      if ((SHIBYTE(v76[2]) & 0x80000000) == 0)
      {
LABEL_24:
        if (v11)
        {
          goto LABEL_25;
        }

        goto LABEL_58;
      }
    }

    else
    {
      v11 = 0;
      if ((SHIBYTE(v76[2]) & 0x80000000) == 0)
      {
        goto LABEL_24;
      }
    }

    operator delete(v76[0]);
    if (v11)
    {
LABEL_25:
      sub_2714FCC00(&v43);
      v12 = v77;
      if (SHIBYTE(v76[2]) < 0)
      {
        operator delete(v76[0]);
        if (v12 == 1)
        {
LABEL_27:
          v13 = v44;
          if (*(&v44 + 1))
          {
            atomic_fetch_add_explicit((*(&v44 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          if (v13)
          {
            v14 = **v13;
            v15 = __dynamic_cast(v13, &unk_28811D1B0, &unk_28811DB40, 0) != 0;
            if (!*(&v13 + 1))
            {
              goto LABEL_66;
            }
          }

          else
          {
            v15 = 0;
            if (!*(&v13 + 1))
            {
              goto LABEL_66;
            }
          }

          if (!atomic_fetch_add((*(&v13 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (*(**(&v13 + 1) + 16))(*(&v13 + 1));
            std::__shared_weak_count::__release_weak(*(&v13 + 1));
          }

LABEL_66:
          if (v15)
          {
            v19 = *(&v44 + 1);
            v18 = v44;
            if (*(&v44 + 1))
            {
              atomic_fetch_add_explicit((*(&v44 + 1) + 8), 1uLL, memory_order_relaxed);
              v20 = v18 + 16;
              if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v19->__on_zero_shared)(v19);
                std::__shared_weak_count::__release_weak(v19);
              }

LABEL_72:
              std::mutex::lock((*(*(a1 + 8) + 240) + 24));
              LOBYTE(v76[0]) = 2;
              *&v76[1] = *v20;
              LODWORD(v77) = *(v20 + 16);
              LOBYTE(v78[0]) = 0;
              LOBYTE(v80) = 0;
              if (*(v20 + 48) == 1)
              {
                if (*(v20 + 47) < 0)
                {
                  sub_271127178(v78, *(v20 + 24), *(v20 + 32));
                }

                else
                {
                  v21 = *(v20 + 24);
                  v79 = *(v20 + 40);
                  *v78 = v21;
                }

                LOBYTE(v80) = 1;
              }

              v81[0] = 0;
              v87 = 0;
              if (*(v20 + 200) == 1)
              {
                sub_2711B0ED4(v81, (v20 + 56));
                v87 = 1;
              }

              v22 = *(v20 + 208);
              v89 = *(v20 + 224);
              v88 = v22;
              operator new();
            }
          }

          else
          {
            v18 = 0;
          }

          v20 = v18 + 16;
          goto LABEL_72;
        }
      }

      else if (v77 == 1)
      {
        goto LABEL_27;
      }

      sub_271505690(&v56, *(a1 + 8), a2, 0, 0);
      sub_2714FCC00(&v43);
      v23 = v77;
      if (SHIBYTE(v76[2]) < 0)
      {
        operator delete(v76[0]);
        if (v23 == 2)
        {
LABEL_82:
          v24 = v44;
          if (*(&v44 + 1))
          {
            atomic_fetch_add_explicit((*(&v44 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          if (v24)
          {
            v25 = **v24;
            v26 = __dynamic_cast(v24, &unk_28811D1B0, &unk_28811DB88, 0) != 0;
            if (!*(&v24 + 1))
            {
              goto LABEL_94;
            }
          }

          else
          {
            v26 = 0;
            if (!*(&v24 + 1))
            {
              goto LABEL_94;
            }
          }

          if (!atomic_fetch_add((*(&v24 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (*(**(&v24 + 1) + 16))(*(&v24 + 1));
            std::__shared_weak_count::__release_weak(*(&v24 + 1));
          }

LABEL_94:
          if (v26)
          {
            v28 = v44;
            if (!*(&v44 + 1))
            {
              v29 = v44 + 16;
              v30 = *(a1 + 80);
              if (!v30)
              {
                goto LABEL_109;
              }

              goto LABEL_101;
            }

            atomic_fetch_add_explicit((*(&v44 + 1) + 8), 1uLL, memory_order_relaxed);
            v29 = v28 + 16;
            if (!atomic_fetch_add((*(&v28 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
            {
              (*(**(&v28 + 1) + 16))(*(&v28 + 1));
              std::__shared_weak_count::__release_weak(*(&v28 + 1));
              v29 = v28 + 16;
              v30 = *(a1 + 80);
              if (!v30)
              {
LABEL_109:
                sub_27112AFFC();
              }

              goto LABEL_101;
            }
          }

          else
          {
            v29 = 16;
          }

          v30 = *(a1 + 80);
          if (!v30)
          {
            goto LABEL_109;
          }

LABEL_101:
          (*(*v30 + 48))(v30, v56, *(a1 + 8), v29);
          goto LABEL_121;
        }
      }

      else if (v77 == 2)
      {
        goto LABEL_82;
      }

      sub_2714FCC00(&v43);
      v27 = v77;
      if (SHIBYTE(v76[2]) < 0)
      {
        operator delete(v76[0]);
        if (v27 != 3)
        {
          goto LABEL_121;
        }
      }

      else if (v77 != 3)
      {
        goto LABEL_121;
      }

      v31 = v44;
      if (*(&v44 + 1))
      {
        atomic_fetch_add_explicit((*(&v44 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      if (v31)
      {
        v32 = **v31;
        v33 = __dynamic_cast(v31, &unk_28811D1B0, &unk_28811DBB8, 0) != 0;
        if (!*(&v31 + 1))
        {
          goto LABEL_113;
        }
      }

      else
      {
        v33 = 0;
        if (!*(&v31 + 1))
        {
LABEL_113:
          if (v33)
          {
            v34 = v44;
            if (*(&v44 + 1))
            {
              atomic_fetch_add_explicit((*(&v44 + 1) + 8), 1uLL, memory_order_relaxed);
              v35 = v34 + 16;
              if (!atomic_fetch_add((*(&v34 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
              {
                (*(**(&v34 + 1) + 16))(*(&v34 + 1));
                std::__shared_weak_count::__release_weak(*(&v34 + 1));
                v35 = v34 + 16;
              }
            }

            else
            {
              v35 = v44 + 16;
            }
          }

          else
          {
            v35 = 16;
          }

          v36 = *(a1 + 144);
          if (!v36)
          {
            sub_27112AFFC();
          }

          (*(*v36 + 48))(v36, v56, v35);
LABEL_121:
          v17 = v57;
          if (!v57)
          {
LABEL_124:
            if (v45 == 1)
            {
              v37 = *(&v44 + 1);
              if (*(&v44 + 1) && !atomic_fetch_add((*(&v44 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
              {
                (v37->__on_zero_shared)(v37);
                std::__shared_weak_count::__release_weak(v37);
              }

              v38 = v42;
              if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v38->__on_zero_shared)(v38);
                std::__shared_weak_count::__release_weak(v38);
              }
            }

            goto LABEL_131;
          }

LABEL_122:
          if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v17->__on_zero_shared)(v17);
            std::__shared_weak_count::__release_weak(v17);
          }

          goto LABEL_124;
        }
      }

      if (!atomic_fetch_add((*(&v31 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (*(**(&v31 + 1) + 16))(*(&v31 + 1));
        std::__shared_weak_count::__release_weak(*(&v31 + 1));
      }

      goto LABEL_113;
    }

LABEL_58:
    sub_271505690(v76, *(a1 + 8), a2, 0, 0);
    v16 = *(a1 + 48);
    if (!v16)
    {
      sub_27112AFFC();
    }

    (*(*v16 + 48))(v16, v76[0], &v41);
    v17 = v76[1];
    if (!v76[1])
    {
      goto LABEL_124;
    }

    goto LABEL_122;
  }

  if ((atomic_load_explicit(&qword_28087B948, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B948))
  {
    qword_28087B980 = 9;
    qword_28087B988 = &off_288132220;
    __cxa_guard_release(&qword_28087B948);
  }

  if ((atomic_load_explicit(&qword_28087B950, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B950))
  {
    qword_28087B990 = 10;
    qword_28087B998 = &off_288132220;
    __cxa_guard_release(&qword_28087B950);
  }

  if (LOBYTE(v85[1]) == 1)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_288108EC0;
    __cxa_throw(exception, &unk_28811C2D8, std::exception::~exception);
  }

  v46 = *v76;
  LOBYTE(v47) = 0;
  v55 = 0;
  if (LOBYTE(v85[0]) == 1)
  {
    sub_27112F6CC(&v47, &v76[2]);
    v55 = 1;
  }

  if (*(&v46 + 1) == qword_28087B988 && v46 == qword_28087B980)
  {
    if ((*(a1 + 216) & 1) == 0)
    {
      v8 = 5;
LABEL_36:
      sub_2715062E4(a1 + 8, a2, &v46, v8);
    }
  }

  else
  {
    v8 = 7;
    if (*(&v46 + 1) != qword_28087B998 || v46 != qword_28087B990)
    {
      goto LABEL_36;
    }

    if ((*(a1 + 216) & 1) == 0)
    {
      v8 = 6;
      goto LABEL_36;
    }
  }

  if (v55 == 1)
  {
    if (v54 == 1)
    {
      if (v53 < 0)
      {
        operator delete(__p);
      }

      if (v51 < 0)
      {
        operator delete(v50);
      }
    }

    if (v49 == 1 && v48 < 0)
    {
      operator delete(v47);
    }
  }

  if ((v85[1] & 1) == 0 && LOBYTE(v85[0]) == 1)
  {
    if (v84 == 1)
    {
      if (SHIBYTE(v83[1]) < 0)
      {
        operator delete(v82);
      }

      if ((v81[7] & 0x80000000) != 0)
      {
        operator delete(v79);
      }
    }

    if (LOBYTE(v78[1]) == 1 && SHIBYTE(v78[0]) < 0)
    {
      operator delete(v76[2]);
    }
  }

LABEL_131:
  if (v75 == 1)
  {
    sub_2713A1844(&v63);
  }

  v39 = *MEMORY[0x277D85DE8];
}

void sub_2715142C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (LOBYTE(STACK[0x3D0]) == 1 && SLOBYTE(STACK[0x3CF]) < 0)
  {
    operator delete(STACK[0x3B8]);
  }

  sub_271134CBC(&STACK[0x560]);
  sub_271134CBC(&STACK[0x490]);
  sub_271134CBC(&STACK[0x2C0]);
  sub_2711B039C(&a39);
  sub_27112F828(&a71);
  if (a18 == 1)
  {
    sub_271396310(&a13);
  }

  if (LOBYTE(STACK[0x2B8]) == 1)
  {
    sub_2713A1844(&STACK[0x228]);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_271514528(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4cv3d3kit3viz13NetworkServer7Private19ProcessReceivedDataE")
  {
    return a1 + 8;
  }

  if (((v2 & "N4cv3d3kit3viz13NetworkServer7Private19ProcessReceivedDataE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4cv3d3kit3viz13NetworkServer7Private19ProcessReceivedDataE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3kit3viz13NetworkServer7Private19ProcessReceivedDataE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_2715145A0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a2 + 40;
  v5 = *(a2 + 40);
  if (!v5)
  {
    v4 = a1 + 40;
    goto LABEL_5;
  }

  if (v5 != a2 + 16)
  {
    *(a1 + 40) = v5;
LABEL_5:
    *v4 = 0;
    goto LABEL_7;
  }

  *(a1 + 40) = a1 + 16;
  (*(**v4 + 24))();
LABEL_7:
  v6 = a2 + 72;
  v7 = *(a2 + 72);
  if (!v7)
  {
    v6 = a1 + 72;
    goto LABEL_11;
  }

  if (v7 != a2 + 48)
  {
    *(a1 + 72) = v7;
LABEL_11:
    *v6 = 0;
    goto LABEL_13;
  }

  *(a1 + 72) = a1 + 48;
  (*(**v6 + 24))();
LABEL_13:
  v8 = a2 + 104;
  v9 = *(a2 + 104);
  if (!v9)
  {
    v8 = a1 + 104;
    goto LABEL_17;
  }

  if (v9 != a2 + 80)
  {
    *(a1 + 104) = v9;
LABEL_17:
    *v8 = 0;
    goto LABEL_19;
  }

  *(a1 + 104) = a1 + 80;
  (*(**v8 + 24))();
LABEL_19:
  v10 = a2 + 136;
  v11 = *(a2 + 136);
  if (!v11)
  {
    v10 = a1 + 136;
    goto LABEL_23;
  }

  if (v11 != a2 + 112)
  {
    *(a1 + 136) = v11;
LABEL_23:
    *v10 = 0;
    goto LABEL_25;
  }

  *(a1 + 136) = a1 + 112;
  (*(**v10 + 24))();
LABEL_25:
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 200) = 0;
  if (*(a2 + 200) == 1)
  {
    v12 = a2 + 192;
    v13 = *(a2 + 192);
    if (v13)
    {
      if (v13 == a2 + 168)
      {
        *(a1 + 192) = a1 + 168;
        (*(**v12 + 24))();
        goto LABEL_32;
      }

      *(a1 + 192) = v13;
    }

    else
    {
      v12 = a1 + 192;
    }

    *v12 = 0;
LABEL_32:
    *(a1 + 200) = 1;
  }

  *(a1 + 208) = *(a2 + 208);
  return a1;
}

void *sub_2715147F4(void *a1)
{
  *a1 = &unk_288108B20;
  v2 = a1[8];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = a1[6];
    if (v3 != a1 + 3)
    {
      goto LABEL_4;
    }

LABEL_8:
    (*(*v3 + 32))(v3);
    return a1;
  }

  v3 = a1[6];
  if (v3 == a1 + 3)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  return a1;
}

void sub_2715148F8(void *a1)
{
  *a1 = &unk_288108B20;
  v2 = a1[8];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = a1[6];
    if (v3 != a1 + 3)
    {
LABEL_4:
      if (v3)
      {
        (*(*v3 + 40))(v3);
      }

LABEL_8:

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = a1[6];
    if (v3 != a1 + 3)
    {
      goto LABEL_4;
    }
  }

  (*(*v3 + 32))(v3);
  goto LABEL_8;
}

uint64_t sub_271514B0C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_288108B20;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 48);
  if (result)
  {
    if (result == a1 + 24)
    {
      *(a2 + 48) = a2 + 24;
      result = (*(**(a1 + 48) + 24))(*(a1 + 48));
      v5 = *(a1 + 64);
      *(a2 + 56) = *(a1 + 56);
      *(a2 + 64) = v5;
      if (!v5)
      {
        return result;
      }
    }

    else
    {
      result = (*(*result + 16))(result);
      *(a2 + 48) = result;
      v5 = *(a1 + 64);
      *(a2 + 56) = *(a1 + 56);
      *(a2 + 64) = v5;
      if (!v5)
      {
        return result;
      }
    }
  }

  else
  {
    *(a2 + 48) = 0;
    v5 = *(a1 + 64);
    *(a2 + 56) = *(a1 + 56);
    *(a2 + 64) = v5;
    if (!v5)
    {
      return result;
    }
  }

  atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  return result;
}

uint64_t sub_271514BFC(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    result = *(a1 + 48);
    if (result != a1 + 24)
    {
      goto LABEL_4;
    }

LABEL_9:
    v4 = *(*result + 32);

    return v4();
  }

  v2 = a1 + 24;
  result = *(a1 + 48);
  if (result == v2)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (!result)
  {
    return result;
  }

  v4 = *(*result + 40);

  return v4();
}

void sub_271514D00(void *__p)
{
  v2 = __p[8];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = __p[6];
    if (v3 != __p + 3)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v3 = __p[6];
    if (v3 != __p + 3)
    {
LABEL_4:
      if (v3)
      {
        (*(*v3 + 40))(v3);
      }

      v4 = __p;

      goto LABEL_8;
    }
  }

  (*(*v3 + 32))(v3);
  v4 = __p;

LABEL_8:
  operator delete(v4);
}

void sub_271514E08(uint64_t a1, const void **a2, unsigned __int8 *a3)
{
  v33 = *a3;
  v5 = (*(*(a1 + 8) + 240) + 24);
  v36 = v5;
  v37 = 1;
  std::mutex::lock(v5);
  v32 = *(a1 + 8);
  v6 = *(v32 + 240);
  v9 = *(v6 + 8);
  v7 = (v6 + 8);
  v8 = v9;
  if (!v9)
  {
    goto LABEL_51;
  }

  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = a2[1];
  }

  v13 = *(a2 + 12);
  v14 = v7;
  do
  {
    v15 = *(v8 + 55);
    if (v15 >= 0)
    {
      v16 = v8 + 4;
    }

    else
    {
      v16 = v8[4];
    }

    if (v15 >= 0)
    {
      v17 = *(v8 + 55);
    }

    else
    {
      v17 = v8[5];
    }

    if (v12 >= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v12;
    }

    v19 = memcmp(v16, v11, v18);
    if (v19)
    {
      if (v19 < 0)
      {
        goto LABEL_9;
      }

LABEL_22:
      v14 = v8;
      goto LABEL_10;
    }

    if (v17 != v12)
    {
      if (v17 < v12)
      {
LABEL_9:
        ++v8;
        goto LABEL_10;
      }

      goto LABEL_22;
    }

    v20 = *(v8 + 28);
    v29 = v20 >= v13;
    v21 = v20 < v13;
    if (v29)
    {
      v14 = v8;
    }

    v8 += v21;
LABEL_10:
    v8 = *v8;
  }

  while (v8);
  if (v14 == v7)
  {
    goto LABEL_51;
  }

  v22 = *(v14 + 55);
  if (v22 >= 0)
  {
    v23 = v14 + 4;
  }

  else
  {
    v23 = v14[4];
  }

  if (v22 >= 0)
  {
    v24 = *(v14 + 55);
  }

  else
  {
    v24 = v14[5];
  }

  if (v24 >= v12)
  {
    v25 = v12;
  }

  else
  {
    v25 = v24;
  }

  v26 = memcmp(v11, v23, v25);
  if (v26)
  {
    if ((v26 & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

LABEL_51:
    v27 = v33;
    if (v33 != 1)
    {
      goto LABEL_52;
    }

LABEL_59:
    std::mutex::unlock(v5);
  }

  else
  {
    v29 = v12 >= v24;
    if (v12 == v24)
    {
      v29 = v13 >= *(v14 + 28);
    }

    if (!v29)
    {
      goto LABEL_51;
    }

LABEL_42:
    v27 = v33;
    if (v33 == 1 && v14 == v7)
    {
      goto LABEL_59;
    }

LABEL_52:
    sub_271505690(&v34, v32, a2, &v36, 1);
    if (v37)
    {
      std::mutex::unlock(v36);
      v37 = 0;
      v38 = v27;
      v30 = *(a1 + 48);
      if (!v30)
      {
        sub_27112AFFC();
      }

      (*(*v30 + 48))(v30, v34, &v38);
      v31 = v35;
      if (v35)
      {
        if (!atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v31->__on_zero_shared)(v31);
          std::__shared_weak_count::__release_weak(v31);
        }
      }

      if (v37)
      {
        v5 = v36;
        goto LABEL_59;
      }
    }

    else
    {
      std::__throw_system_error(1, "unique_lock::unlock: not locked");
      __break(1u);
    }
  }
}

void sub_271515080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, std::mutex *a14, char a15)
{
  if (a15)
  {
    std::mutex::unlock(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2715150AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4cv3d3kit3viz13NetworkServer7Private24ForwardConnectionChangedE")
  {
    return a1 + 8;
  }

  if (((v2 & "N4cv3d3kit3viz13NetworkServer7Private24ForwardConnectionChangedE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4cv3d3kit3viz13NetworkServer7Private24ForwardConnectionChangedE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3kit3viz13NetworkServer7Private24ForwardConnectionChangedE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_271515124(uint64_t a1)
{
  if (*(a1 + 200) == 1)
  {
    v2 = *(a1 + 192);
    if (v2 == a1 + 168)
    {
      (*(*v2 + 32))(v2);
      v3 = *(a1 + 144);
      if (!v3)
      {
        goto LABEL_14;
      }

      goto LABEL_6;
    }

    if (v2)
    {
      (*(*v2 + 40))(v2);
    }
  }

  v3 = *(a1 + 144);
  if (!v3)
  {
    goto LABEL_14;
  }

LABEL_6:
  v4 = *(a1 + 152);
  v5 = v3;
  if (v4 != v3)
  {
    do
    {
      v6 = *(v4 - 1);
      if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }

      v4 -= 16;
    }

    while (v4 != v3);
    v5 = *(a1 + 144);
  }

  *(a1 + 152) = v3;
  operator delete(v5);
LABEL_14:
  v7 = *(a1 + 136);
  if (v7 == a1 + 112)
  {
    (*(*v7 + 32))(v7);
    v8 = *(a1 + 104);
    if (v8 != a1 + 80)
    {
      goto LABEL_18;
    }

LABEL_28:
    (*(*v8 + 32))(v8);
    v9 = *(a1 + 72);
    if (v9 != a1 + 48)
    {
      goto LABEL_21;
    }

    goto LABEL_29;
  }

  if (v7)
  {
    (*(*v7 + 40))(v7);
  }

  v8 = *(a1 + 104);
  if (v8 == a1 + 80)
  {
    goto LABEL_28;
  }

LABEL_18:
  if (v8)
  {
    (*(*v8 + 40))(v8);
  }

  v9 = *(a1 + 72);
  if (v9 != a1 + 48)
  {
LABEL_21:
    if (v9)
    {
      (*(*v9 + 40))(v9);
    }

    v10 = *(a1 + 40);
    if (v10 != a1 + 16)
    {
      goto LABEL_24;
    }

LABEL_30:
    (*(*v10 + 32))(v10);
    return a1;
  }

LABEL_29:
  (*(*v9 + 32))(v9);
  v10 = *(a1 + 40);
  if (v10 == a1 + 16)
  {
    goto LABEL_30;
  }

LABEL_24:
  if (v10)
  {
    (*(*v10 + 40))(v10);
  }

  return a1;
}

void *sub_271515404(void *a1)
{
  *a1 = &unk_28810C0C8;
  v2 = a1[40];
  a1[40] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[39];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = a1[37];
    if (v4 != a1 + 34)
    {
LABEL_6:
      if (v4)
      {
        (*(*v4 + 40))(v4);
      }

      v5 = a1[31];
      if (!v5)
      {
        goto LABEL_9;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v4 = a1[37];
    if (v4 != a1 + 34)
    {
      goto LABEL_6;
    }
  }

  (*(*v4 + 32))(v4);
  v5 = a1[31];
  if (!v5)
  {
LABEL_9:
    sub_271515124((a1 + 3));
    return a1;
  }

LABEL_12:
  if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_9;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  sub_271515124((a1 + 3));
  return a1;
}

void sub_2715155B8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881067A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27151560C(uint64_t a1)
{
  if (*(a1 + 320) == 1)
  {
    sub_2711B039C(a1 + 88);
  }

  std::mutex::~mutex((a1 + 24));
}

uint64_t sub_271515658(uint64_t result)
{
  *result = &unk_288108BD0;
  if (*(result + 56) == 1)
  {
    v1 = *(result + 48);
    if (v1 == result + 24)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 48));
    }

    else
    {
      if (!v1)
      {
        goto LABEL_7;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 48));
    }

    result = v2;
  }

LABEL_7:
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

void sub_27151576C(uint64_t a1)
{
  *a1 = &unk_288108BD0;
  if (*(a1 + 56) == 1)
  {
    v1 = *(a1 + 48);
    if (v1 == a1 + 24)
    {
      v2 = a1;
      (*(*v1 + 32))(*(a1 + 48));
      goto LABEL_6;
    }

    if (v1)
    {
      v2 = a1;
      (*(*v1 + 40))(*(a1 + 48));
LABEL_6:
      a1 = v2;
    }
  }

  v3 = *(a1 + 16);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2715159B4(_Unwind_Exception *a1)
{
  sub_2711D66B0(v3);
  sub_27112F828(v1);
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_2715159D8(uint64_t result, uint64_t a2)
{
  *a2 = &unk_288108BD0;
  v2 = *(result + 16);
  *(a2 + 8) = *(result + 8);
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 24) = 0;
  *(a2 + 56) = 0;
  if (*(result + 56) == 1)
  {
    v3 = *(result + 48);
    if (v3)
    {
      if (v3 == result + 24)
      {
        *(a2 + 48) = a2 + 24;
        v5 = a2;
        result = (*(**(result + 48) + 24))(*(result + 48), a2 + 24);
        a2 = v5;
        goto LABEL_10;
      }

      v4 = a2;
      result = (*(*v3 + 16))(*(result + 48));
      a2 = v4;
    }

    else
    {
      result = 0;
    }

    *(a2 + 48) = result;
LABEL_10:
    *(a2 + 56) = 1;
  }

  return result;
}

void sub_271515AE4(_Unwind_Exception *a1)
{
  sub_2711D66B0(v2);
  sub_27112F828(v1);
  _Unwind_Resume(a1);
}

void sub_271515B00(uint64_t a1)
{
  if (*(a1 + 56) != 1)
  {
    goto LABEL_5;
  }

  v2 = *(a1 + 48);
  if (v2 != a1 + 24)
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

LABEL_5:
    v3 = *(a1 + 16);
    if (!v3)
    {
      return;
    }

    goto LABEL_6;
  }

  (*(*v2 + 32))(v2);
  v3 = *(a1 + 16);
  if (!v3)
  {
    return;
  }

LABEL_6:
  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_271515BF4(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v1 = *(a1 + 48);
    if (v1 == a1 + 24)
    {
      v2 = a1;
      (*(*v1 + 32))(*(a1 + 48));
      goto LABEL_6;
    }

    if (v1)
    {
      v2 = a1;
      (*(*v1 + 40))(*(a1 + 48));
LABEL_6:
      a1 = v2;
    }
  }

  v3 = *(a1 + 16);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v4 = a1;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    a1 = v4;
  }

  operator delete(a1);
}

void sub_271516D64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  __cxa_free_exception(v14);
  sub_271506144(&a14);
  _Unwind_Resume(a1);
}

void sub_271516DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28)
{
  sub_2715106E4((v28 - 192));
  sub_271392A1C(&a28);
  sub_271506144(&a14);
  _Unwind_Resume(a1);
}

void sub_271516DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31)
{
  sub_271392A1C(&a31);
  sub_271506144(&a14);
  _Unwind_Resume(a1);
}

void sub_271516ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_271506144(va);
  _Unwind_Resume(a1);
}

void sub_271516EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27139FD58(v5 - 192);
  sub_271506144(va);
  JUMPOUT(0x271516EF4);
}

uint64_t sub_271516EFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4cv3d3kit3viz13NetworkClient4Impl28ProcessReceivedServerMessageE")
  {
    return a1 + 8;
  }

  if (((v2 & "N4cv3d3kit3viz13NetworkClient4Impl28ProcessReceivedServerMessageE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4cv3d3kit3viz13NetworkClient4Impl28ProcessReceivedServerMessageE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3kit3viz13NetworkClient4Impl28ProcessReceivedServerMessageE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_271516F74(uint64_t *a1, unint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (0x2E8BA2E8BA2E8BA3 * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v4 + 88 * a2;
      v10 = 88 * a2;
      do
      {
        v11 = sub_27139B104(0);
        sub_27139A608(v4, v11);
        v4 += 88;
        v10 -= 88;
      }

      while (v10);
      v4 = v9;
    }

    a1[1] = v4;
  }

  else
  {
    v5 = 0x2E8BA2E8BA2E8BA3 * ((v4 - *a1) >> 3);
    if (v5 + a2 > 0x2E8BA2E8BA2E8BALL)
    {
      sub_271135560();
    }

    v6 = 0x2E8BA2E8BA2E8BA3 * ((v3 - *a1) >> 3);
    v7 = 2 * v6;
    if (2 * v6 <= v5 + a2)
    {
      v7 = v5 + a2;
    }

    if (v6 >= 0x1745D1745D1745DLL)
    {
      v8 = 0x2E8BA2E8BA2E8BALL;
    }

    else
    {
      v8 = v7;
    }

    v22 = a1;
    if (v8)
    {
      if (v8 <= 0x2E8BA2E8BA2E8BALL)
      {
        operator new();
      }

      sub_2711270EC();
    }

    v12 = 88 * v5;
    __p = 0;
    v19 = v12;
    v20 = v12;
    v21 = 0;
    v13 = 88 * a2;
    v14 = v12 + 88 * a2;
    do
    {
      v15 = sub_27139B104(0);
      sub_27139A608(v12, v15);
      v12 += 88;
      v13 -= 88;
    }

    while (v13);
    v20 = v14;
    sub_271510F70(a1, &__p);
    v17 = v19;
    for (i = v20; i != v17; sub_27151111C(i))
    {
      i -= 88;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_271517134(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2715110C8(va);
  _Unwind_Resume(a1);
}

void sub_271517150(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2715110C8(va);
  _Unwind_Resume(a1);
}

void sub_271517168(uint64_t *a1, void *a2, void *a3)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4 != -1)
  {
    if (!v4)
    {
      v6 = *a3;
      v5 = a3[1];
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      v7 = a2[1];
      *a2 = v6;
      a2[1] = v5;
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);

        std::__shared_weak_count::__release_weak(v7);
      }

      return;
    }

    v8 = a3;
    (off_288132AB0[v4])(&v10, v3);
    a3 = v8;
  }

  *(v3 + 16) = -1;
  v9 = a3[1];
  *v3 = *a3;
  *(v3 + 8) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(v3 + 16) = 0;
}

void sub_271517274(uint64_t *a1, void *a2, void *a3)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4 != -1)
  {
    if (v4 == 1)
    {
      v6 = *a3;
      v5 = a3[1];
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      v7 = a2[1];
      *a2 = v6;
      a2[1] = v5;
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);

        std::__shared_weak_count::__release_weak(v7);
      }

      return;
    }

    v8 = a3;
    (off_288132AB0[v4])(&v10, v3);
    a3 = v8;
  }

  *(v3 + 16) = -1;
  v9 = a3[1];
  *v3 = *a3;
  *(v3 + 8) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(v3 + 16) = 1;
}

uint64_t sub_271517388(uint64_t a1)
{
  v2 = a1 + 8;
  v3 = *(a1 + 32);
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

void sub_271517418(uint64_t a1)
{
  v1 = a1 + 8;
  v2 = *(a1 + 32);
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

uint64_t sub_271517658(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    goto LABEL_10;
  }

  v3 = a1;
  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Concurrency/include/Kit/Concurrency/Channel/detail/ChannelInputModel.h", 301, "processor_", 0xAuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1)
    {
      goto LABEL_9;
    }

    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_13;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "processor_", 10, "", 0);
  }

  while (v4 != v5);
  if ((byte_28087C430 & 1) == 0)
  {
LABEL_13:
    abort();
  }

LABEL_9:
  qword_28087C420(*algn_28087C428, "processor_", 10, "", 0);
  v2 = *(v3 + 32);
  if (!v2)
  {
    sub_27112AFFC();
  }

LABEL_10:
  v8 = *(*v2 + 48);

  return v8();
}

uint64_t sub_271517838(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_288132B80;
  a2[1] = v2;
  return result;
}

void sub_271517864(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::mutex::lock((v1 + 184));
  atomic_fetch_add((v1 + 128), 0xFFFFFFFF);
  std::condition_variable::notify_one((v1 + 136));

  std::mutex::unlock((v1 + 184));
}

uint64_t sub_2715178B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4cv3d3kit3viz13NetworkClient4Impl22BuildNetworkOutputNodeEvE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4cv3d3kit3viz13NetworkClient4Impl22BuildNetworkOutputNodeEvE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit3viz13NetworkClient4Impl22BuildNetworkOutputNodeEvE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit3viz13NetworkClient4Impl22BuildNetworkOutputNodeEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_27151794C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106770;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2715179A0(uint64_t a1)
{
  v2 = *(*(*(a1 + 144) + 72) + 72);
  (*(*v2 + 64))(v2);
  std::mutex::~mutex((a1 + 208));
  std::condition_variable::~condition_variable((a1 + 160));
  v3 = *(a1 + 144);
  *(a1 + 144) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 136);
  *(a1 + 136) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (*(a1 + 104) != 1)
  {
LABEL_9:
    v6 = *(a1 + 64);
    if (!v6)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v5 = *(a1 + 96);
  if (v5 != a1 + 72)
  {
    if (v5)
    {
      (*(*v5 + 40))(v5);
    }

    goto LABEL_9;
  }

  (*(*v5 + 32))(v5);
  v6 = *(a1 + 64);
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_10:
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

LABEL_13:
  v7 = *(a1 + 32);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_271517B84(uint64_t a1, unsigned int *a2, uint64_t a3, __int128 *a4, __int128 *a5, __int128 *a6, uint64_t a7)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  v8 = *a4;
  v9 = *a5;
  v13 = *(a5 + 2);
  v10 = *a6;
  v12 = *a6;
  v14[0] = 0;
  v16 = 0;
  if (*(a7 + 32) != 1)
  {
LABEL_8:
    operator new();
  }

  v11 = *(a7 + 24);
  if (v11)
  {
    if (v11 == a7)
    {
      v15 = v14;
      (*(*v11 + 24))(v11, v14);
      goto LABEL_7;
    }

    v11 = (*(*v11 + 16))(v11);
  }

  v15 = v11;
LABEL_7:
  v16 = 1;
  goto LABEL_8;
}

void sub_271519C3C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_27151A144(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 72);
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

void sub_27151A224(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288132C00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27151A3F4(uint64_t a1, uint64_t a2)
{
  sub_27150B450(a1, (a2 + 4));
  if (*(a2 + 80) == 1)
  {
    LOBYTE(v14) = 1;
    sub_27173318C(a1 + 24, *(a1 + 32), &v14, &v14 + 1, 1uLL);
    LODWORD(v14) = 1;
    sub_27173318C(a1 + 24, *(a1 + 32), &v14, &v14 + 4, 4uLL);
    sub_2717312C0(a1);
    v4 = (a2 + 32);
    v14 = 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 40) - *(a2 + 32)) >> 3);
    sub_27173318C(a1 + 24, *(a1 + 32), &v14, v15, 8uLL);
    v5 = *(a2 + 40);
    v6 = 0x2E8BA2E8BA2E8BA3 * ((v5 - *(a2 + 32)) >> 3);
    if (v14 <= v6)
    {
      if (v14 < v6)
      {
        v7 = *v4 + 88 * v14;
        while (v5 != v7)
        {
          v5 -= 88;
          sub_27151111C(v5);
        }

        *(a2 + 40) = v7;
      }
    }

    else
    {
      sub_271516F74((a2 + 32), v14 - v6);
    }

    v8 = v14;
    if (v14)
    {
      v9 = 0;
      do
      {
        v10 = *v4;
        __src = 2;
        sub_27173318C(a1 + 24, *(a1 + 32), &__src, &v17, 4uLL);
        sub_2717312C0(a1);
        sub_27150B564(a1, v10 + v9);
        v11 = *(*(a1 + 56) - 8) + *(a1 + 24);
        *(v11 + 10) = *(a1 + 32) - v11 - 18;
        v12 = *(a1 + 56) - 8;
        *(a1 + 56) = v12;
        v9 += 88;
        --v8;
      }

      while (v8);
    }

    else
    {
      v12 = *(a1 + 56);
    }

    v13 = *(v12 - 8) + *(a1 + 24);
    *(v13 + 10) = *(a1 + 32) - v13 - 18;
    *(a1 + 56) -= 8;
  }

  else
  {
    LOBYTE(v14) = 0;
    sub_27173318C(a1 + 24, *(a1 + 32), &v14, &v14 + 1, 1uLL);
  }
}

void sub_27151A61C(int a1@<W1>, void *a2@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      operator new();
    }

    if (a1 == 2)
    {
      operator new();
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        operator new();
      case 4:
        operator new();
      case 5:
        operator new();
    }
  }

  *a2 = 0;
  a2[1] = 0;
  v2 = *MEMORY[0x277D85DE8];
}

void sub_27151B150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_27151D454(&v65[1].__shared_weak_owners_);
  sub_271134CBC(v66 + 16);
  sub_2711B039C(&a65);
  std::__shared_weak_count::~__shared_weak_count(v65);
  operator delete(v68);
  sub_2711B039C(&a10);
  _Unwind_Resume(a1);
}

void sub_27151B190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, char *a40)
{
  sub_271134CBC(v41 + 16);
  sub_271167834(&a10, a11);
  std::__shared_weak_count::~__shared_weak_count(v40);
  operator delete(v43);
  sub_271167834(&a39, a40);
  _Unwind_Resume(a1);
}

void sub_27151B1C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  sub_271134CBC(v40 + 16);
  sub_2713B2190(&a10);
  std::__shared_weak_count::~__shared_weak_count(v39);
  operator delete(v42);
  sub_2713B2190(&a39);
  _Unwind_Resume(a1);
}

void sub_27151B1F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2711B039C(va);
  _Unwind_Resume(a1);
}

void sub_27151B20C(_Unwind_Exception *a1)
{
  sub_271134CBC(v2 + 16);
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void sub_27151B25C(char **lpsrc@<X2>, int a2@<W1>, void *a3@<X8>)
{
  if (a2 <= 2)
  {
    if (a2 != 1)
    {
      if (a2 == 2)
      {
        sub_27151B6B8(&v13, lpsrc);
      }

      goto LABEL_14;
    }

    v4 = **lpsrc;
    if (__dynamic_cast(lpsrc, &unk_28811D1B0, &unk_28811DB40, 0))
    {
LABEL_27:
      sub_27151E094();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/include/Kit/Visualization/DataIO.h", 1091, "ptr != nullptr", 0xEuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        qword_28087C420(*algn_28087C428, "ptr != nullptr", 14, "", 0);
        goto LABEL_27;
      }
    }

    else
    {
      v5 = qword_28087C408;
      v6 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_33;
      }
    }

    do
    {
      v10 = *v5;
      v9 = *(v5 + 8);
      v5 += 16;
      v10(v9, "ptr != nullptr", 14, "", 0);
    }

    while (v5 != v6);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_26;
  }

  switch(a2)
  {
    case 3:
      sub_27151B9D4(&v13, lpsrc);
    case 4:
      sub_27151BC84(&v13, lpsrc);
    case 5:
      v3 = **lpsrc;
      if (__dynamic_cast(lpsrc, &unk_28811D1B0, &unk_28811DBA0, 0))
      {
LABEL_32:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/include/Kit/Visualization/DataIO.h", 1091, "ptr != nullptr", 0xEuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_31:
          qword_28087C420(*algn_28087C428, "ptr != nullptr", 14, "", 0);
          goto LABEL_32;
        }
      }

      else
      {
        v7 = qword_28087C408;
        v8 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_33;
        }
      }

      do
      {
        v12 = *v7;
        v11 = *(v7 + 8);
        v7 += 16;
        v12(v11, "ptr != nullptr", 14, "", 0);
      }

      while (v7 != v8);
      if (byte_28087C430)
      {
        goto LABEL_31;
      }

LABEL_33:
      abort();
  }

LABEL_14:
  *a3 = 0;
  a3[1] = 0;
}

void sub_27151B6A0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_27151B6B8(int a1, char **lpsrc)
{
  v2 = **lpsrc;
  if (__dynamic_cast(lpsrc, &unk_28811D1B0, &unk_28811DB88, 0))
  {
LABEL_10:
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/include/Kit/Visualization/DataIO.h", 1091, "ptr != nullptr", 0xEuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "ptr != nullptr", 14, "", 0);
      goto LABEL_10;
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
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "ptr != nullptr", 14, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_27151B99C(_Unwind_Exception *a1)
{
  sub_27151D454(&v1[1].__shared_weak_owners_);
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_27151B9BC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_27151B9D4(int a1, char **lpsrc)
{
  v2 = **lpsrc;
  if (__dynamic_cast(lpsrc, &unk_28811D1B0, &unk_28811DBB8, 0))
  {
LABEL_10:
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/include/Kit/Visualization/DataIO.h", 1091, "ptr != nullptr", 0xEuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "ptr != nullptr", 14, "", 0);
      goto LABEL_10;
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
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "ptr != nullptr", 14, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_27151BC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char *a11)
{
  sub_271167834(&a10, a11);
  std::__shared_weak_count::~__shared_weak_count(v11);
  operator delete(v13);
  _Unwind_Resume(a1);
}

void sub_27151BC84(int a1, char **lpsrc)
{
  v2 = **lpsrc;
  if (__dynamic_cast(lpsrc, &unk_28811D1B0, &unk_28811DBD0, 0))
  {
LABEL_10:
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/include/Kit/Visualization/DataIO.h", 1091, "ptr != nullptr", 0xEuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "ptr != nullptr", 14, "", 0);
      goto LABEL_10;
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
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "ptr != nullptr", 14, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_27151BF4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  sub_2711BEA2C(&a10);
  std::__shared_weak_count::~__shared_weak_count(v19);
  operator delete(v21);
  _Unwind_Resume(a1);
}

void sub_27151BF88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713B2190(va);
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void sub_27151BFA8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_27151C278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x2743BF050](v9, 0x10B2C40EED050F3);
  sub_271130878(&a9);
  _Unwind_Resume(a1);
}

void sub_27151C2B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = a16;
  a16 = 0;
  if (v17)
  {
    sub_27184D728(&a16, v17);
  }

  sub_271130878(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_27151C2E4(uint64_t *a1, _DWORD *a2)
{
  if ((atomic_load_explicit(&qword_28087B9B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B9B0))
  {
    sub_27151C914(&off_279E2F8A8, qword_279E2F8C0);
    __cxa_guard_release(&qword_28087B9B0);
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  sub_2714A56E0(a1, &v23);
  v4 = qword_28087B9C0;
  if (!qword_28087B9C0)
  {
    goto LABEL_41;
  }

  if (v25 >= 0)
  {
    v5 = &v23;
  }

  else
  {
    v5 = v23;
  }

  if (v25 >= 0)
  {
    v6 = HIBYTE(v25);
  }

  else
  {
    v6 = v24;
  }

  v7 = &qword_28087B9C0;
  do
  {
    while (1)
    {
      v8 = *(v4 + 55);
      v9 = v8 >= 0 ? (v4 + 32) : *(v4 + 32);
      v10 = v8 >= 0 ? *(v4 + 55) : *(v4 + 40);
      v11 = v6 >= v10 ? v10 : v6;
      v12 = memcmp(v9, v5, v11);
      if (v12)
      {
        break;
      }

      if (v10 >= v6)
      {
        goto LABEL_24;
      }

LABEL_10:
      v4 = *(v4 + 8);
      if (!v4)
      {
        goto LABEL_25;
      }
    }

    if (v12 < 0)
    {
      goto LABEL_10;
    }

LABEL_24:
    v7 = v4;
    v4 = *v4;
  }

  while (v4);
LABEL_25:
  if (v7 == &qword_28087B9C0)
  {
    goto LABEL_41;
  }

  v13 = *(v7 + 55);
  if (v13 >= 0)
  {
    v14 = v7 + 4;
  }

  else
  {
    v14 = v7[4];
  }

  if (v13 >= 0)
  {
    v15 = *(v7 + 55);
  }

  else
  {
    v15 = v7[5];
  }

  if (v15 >= v6)
  {
    v16 = v6;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v5, v14, v16);
  if (v17)
  {
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

LABEL_41:
    __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v19 = std::string::append(&v21, ", expected ", 0xBuLL);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    sub_27151C648();
  }

  if (v6 < v15)
  {
    goto LABEL_41;
  }

LABEL_37:
  *a2 = *(v7 + 14);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(v23);
  }

  return a1;
}

void sub_27151C570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
    if (a14 < 0)
    {
LABEL_5:
      operator delete(a9);
      if (a26 < 0)
      {
LABEL_8:
        operator delete(a21);
        if ((a20 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_12;
      }

LABEL_11:
      if ((a20 & 0x80000000) == 0)
      {
LABEL_9:
        if (!v34)
        {
LABEL_14:
          if (*(v35 - 65) < 0)
          {
            operator delete(*(v35 - 88));
          }

          _Unwind_Resume(a1);
        }

LABEL_13:
        __cxa_free_exception(v33);
        goto LABEL_14;
      }

LABEL_12:
      operator delete(a15);
      if ((v34 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if (a14 < 0)
  {
    goto LABEL_5;
  }

  if (a26 < 0)
  {
    goto LABEL_8;
  }

  goto LABEL_11;
}

void sub_27151C648()
{
  v0[6] = 0;
  v2[0] = v0;
  v2[1] = "{";
  v2[2] = v0;
  v3 = "{";
  v4 = "{";
  *&v1 = v2;
  sub_271136E64(&v1);
  LODWORD(v3) = 0;
  sub_27151CC74();
}

void sub_27151C8AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_271130878(&a22);
  sub_271130878(&a9);
  _Unwind_Resume(a1);
}

void sub_27151C8D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(a13);
    sub_271130878(&a9);
    _Unwind_Resume(a1);
  }

  sub_271130878(&a9);
  _Unwind_Resume(a1);
}

void *sub_27151C914(void *result, void *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  qword_28087B9C8 = 0;
  qword_28087B9C0 = 0;
  qword_28087B9B8 = &qword_28087B9C0;
  v4 = a2[2];
  if (*result != *a2 || result[2] != a2[2])
  {
    sub_27151CC74();
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27151CC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  sub_27151CE44(qword_28087B9C0);
  _Unwind_Resume(a1);
}

void sub_27151CC50(_Unwind_Exception *a1)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  sub_27151CE44(qword_28087B9C0);
  _Unwind_Resume(a1);
}

void sub_27151CE1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v11 = a10;
  a10 = 0;
  if (!v11)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27184D728(&a10, v11);
  _Unwind_Resume(exception_object);
}

void sub_27151CE44(char *a1)
{
  if (a1)
  {
    sub_27151CE44(*a1);
    sub_27151CE44(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
      v2 = a1;
    }

    else
    {
      v2 = a1;
    }

    operator delete(v2);
  }
}

void sub_27151CEE0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106620;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27151CF34(uint64_t result)
{
  v1 = result;
  *(result + 24) = &unk_28810B878;
  *(result + 32) = &unk_28810B8D8;
  v2 = *(result + 216);
  if (v2 != -1)
  {
    result = (off_288131910[v2])(&v3, result + 40);
  }

  *(v1 + 216) = -1;
  return result;
}

void sub_27151CFD0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 200) & 1) != 0 || *(a1 + 160) == 1)
  {
    sub_2713B2524(v15, a1);
    v3 = v16;
    *(a2 + 24) = 0;
    *(a2 + 8) = v3;
    *(a2 + 48) = 0;
    if (v19 == 1)
    {
      *(a2 + 24) = *v17;
      *(a2 + 40) = v18;
      v17[1] = 0;
      v18 = 0;
      v17[0] = 0;
      *(a2 + 48) = 1;
    }

    v4 = v20;
    *(a2 + 80) = 0;
    *(a2 + 56) = v4;
    *(a2 + 72) = v21;
    *(a2 + 104) = 0;
    v5 = v24;
    if (v24 == 1)
    {
      *(a2 + 80) = *v22;
      *(a2 + 96) = v23;
      v22[1] = 0;
      v23 = 0;
      v22[0] = 0;
      *(a2 + 104) = 1;
      *(a2 + 112) = 0;
      v6 = a2 + 112;
      *(a2 + 136) = 0;
      v7 = v27;
      if (v27 != 1)
      {
        goto LABEL_7;
      }
    }

    else
    {
      *(a2 + 112) = 0;
      v6 = a2 + 112;
      *(a2 + 136) = 0;
      v7 = v27;
      if (v27 != 1)
      {
LABEL_7:
        *(a2 + 144) = 0;
        *(a2 + 168) = 0;
        if (v30 == 1)
        {
          goto LABEL_8;
        }

        goto LABEL_12;
      }
    }

    *v6 = *__p;
    *(v6 + 16) = v26;
    __p[1] = 0;
    v26 = 0;
    __p[0] = 0;
    *(a2 + 136) = 1;
    *(a2 + 144) = 0;
    *(a2 + 168) = 0;
    if (v30 == 1)
    {
LABEL_8:
      *(a2 + 144) = v28;
      *(a2 + 160) = v29;
      v29 = 0;
      v28 = 0uLL;
      *(a2 + 168) = 1;
      *(a2 + 176) = 0;
      if (!v7)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

LABEL_12:
    *(a2 + 176) = 0;
    if (!v7)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (*(a1 + 96) == 1)
  {
    sub_27151D4B0(v15, a1);
    *(a2 + 8) = v16;
    *(a2 + 24) = 0;
    *(a2 + 48) = 0;
    if (v19 == 1)
    {
      *(a2 + 24) = *v17;
      *(a2 + 40) = v18;
      v17[1] = 0;
      v18 = 0;
      v17[0] = 0;
      *(a2 + 48) = 1;
    }

    v9 = v20;
    *(a2 + 80) = 0;
    *(a2 + 56) = v9;
    *(a2 + 72) = v21;
    *(a2 + 104) = 0;
    v5 = v24;
    if (v24 == 1)
    {
      *(a2 + 80) = *v22;
      *(a2 + 96) = v23;
      v22[1] = 0;
      v23 = 0;
      v22[0] = 0;
      *(a2 + 104) = 1;
      *(a2 + 112) = 0;
      v10 = a2 + 112;
      *(a2 + 136) = 0;
      v11 = v27;
      if (v27 != 1)
      {
        goto LABEL_27;
      }
    }

    else
    {
      *(a2 + 112) = 0;
      v10 = a2 + 112;
      *(a2 + 136) = 0;
      v11 = v27;
      if (v27 != 1)
      {
LABEL_27:
        *(a2 + 144) = 0;
        *(a2 + 168) = 0;
        if (v30 == 1)
        {
          goto LABEL_28;
        }

LABEL_39:
        *(a2 + 176) = 1;
        if (!v11)
        {
          goto LABEL_15;
        }

        goto LABEL_13;
      }
    }

    *v10 = *__p;
    *(v10 + 16) = v26;
    __p[1] = 0;
    v26 = 0;
    __p[0] = 0;
    *(a2 + 136) = 1;
    *(a2 + 144) = 0;
    *(a2 + 168) = 0;
    if (v30 == 1)
    {
LABEL_28:
      *(a2 + 144) = v28;
      *(a2 + 160) = v29;
      v29 = 0;
      v28 = 0uLL;
      *(a2 + 168) = 1;
      *(a2 + 176) = 1;
      if (!v11)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    goto LABEL_39;
  }

  sub_271399C9C(v15, a1);
  *(a2 + 8) = v16;
  *(a2 + 24) = 0;
  *(a2 + 48) = 0;
  if (v19 == 1)
  {
    *(a2 + 24) = *v17;
    *(a2 + 40) = v18;
    v17[1] = 0;
    v18 = 0;
    v17[0] = 0;
    *(a2 + 48) = 1;
  }

  v12 = v20;
  *(a2 + 80) = 0;
  *(a2 + 56) = v12;
  *(a2 + 72) = v21;
  *(a2 + 104) = 0;
  v5 = v24;
  if (v24 == 1)
  {
    *(a2 + 80) = *v22;
    *(a2 + 96) = v23;
    v22[1] = 0;
    v23 = 0;
    v22[0] = 0;
    *(a2 + 104) = 1;
    *(a2 + 112) = 0;
    v13 = a2 + 112;
    *(a2 + 136) = 0;
    v14 = v27;
    if (v27 != 1)
    {
      goto LABEL_34;
    }
  }

  else
  {
    *(a2 + 112) = 0;
    v13 = a2 + 112;
    *(a2 + 136) = 0;
    v14 = v27;
    if (v27 != 1)
    {
LABEL_34:
      *(a2 + 144) = 0;
      *(a2 + 168) = 0;
      if (v30 == 1)
      {
        goto LABEL_35;
      }

      goto LABEL_43;
    }
  }

  *v13 = *__p;
  *(v13 + 16) = v26;
  __p[1] = 0;
  v26 = 0;
  __p[0] = 0;
  *(a2 + 136) = 1;
  *(a2 + 144) = 0;
  *(a2 + 168) = 0;
  if (v30 == 1)
  {
LABEL_35:
    *(a2 + 144) = v28;
    *(a2 + 160) = v29;
    v29 = 0;
    v28 = 0uLL;
    *(a2 + 168) = 1;
    *(a2 + 176) = 2;
    if (!v14)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

LABEL_43:
  *(a2 + 176) = 2;
  if (!v14)
  {
    goto LABEL_15;
  }

LABEL_13:
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
    v5 = v24;
  }

LABEL_15:
  if ((v5 & 1) != 0 && SHIBYTE(v23) < 0)
  {
    operator delete(v22[0]);
  }

  if (v19 == 1 && SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t sub_27151D454(uint64_t a1)
{
  v2 = *(a1 + 176);
  if (v2 != -1)
  {
    (off_288132C70[v2])(&v4, a1);
  }

  *(a1 + 176) = -1;
  return a1;
}

uint64_t sub_27151D4B0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *(a1 + 24) = 0;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 48) = 0;
  if (*(a2 + 40) == 1)
  {
    if (*(a2 + 39) < 0)
    {
      sub_271127178((a1 + 24), a2[2], a2[3]);
    }

    else
    {
      v6 = *(a2 + 1);
      *(a1 + 40) = a2[4];
      *(a1 + 24) = v6;
    }

    *(a1 + 48) = 1;
  }

  if (*(a2 + 64) == 1)
  {
    v7 = *(a2 + 56);
    *(a1 + 56) = a2[6];
    *(a1 + 64) = v7;
    v8 = 1;
  }

  else
  {
    v8 = 0;
    *(a1 + 56) = 0;
  }

  *(a1 + 80) = 0;
  *(a1 + 72) = v8;
  *(a1 + 104) = 0;
  if (*(a2 + 96) == 1)
  {
    if (*(a2 + 95) < 0)
    {
      sub_271127178((a1 + 80), a2[9], a2[10]);
    }

    else
    {
      v9 = *(a2 + 9);
      *(a1 + 96) = a2[11];
      *(a1 + 80) = v9;
    }

    *(a1 + 104) = 1;
  }

  if (*(a2 + 160) == 1)
  {
    if (*(a2 + 135) < 0)
    {
      sub_271127178(&v12, a2[14], a2[15]);
    }

    else
    {
      v12 = *(a2 + 7);
      v13 = a2[16];
    }

    *(a1 + 112) = v12;
    *(a1 + 128) = v13;
    *(a1 + 136) = 1;
    if ((a2[25] & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(a1 + 112) = 0;
    *(a1 + 136) = 0;
    if ((a2[25] & 1) == 0)
    {
LABEL_21:
      v10 = 0;
      *(a1 + 144) = 0;
      goto LABEL_22;
    }
  }

  sub_27151D6C4(a2 + 22, &v12);
  *(a1 + 144) = v12;
  *(a1 + 160) = v13;
  v10 = 1;
LABEL_22:
  *(a1 + 168) = v10;
  return a1;
}

void sub_27151D64C(_Unwind_Exception *exception_object)
{
  if (v1[104] == 1 && v1[103] < 0)
  {
    operator delete(*v3);
  }

  if (v1[48] == 1 && v1[47] < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

double sub_27151D6C4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a1;
  v8 = 0;
  v7 = 0uLL;
  if (v4 != v5)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 5) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_271135560();
  }

  sub_27151D7B0(v5, v4, &v7);
  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  return result;
}

uint64_t sub_27151D7B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_27139DEA8();
  }

  return a3;
}

void sub_27151D8A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27151D8BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27151D8D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27151D8E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27151D918(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106348;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27151D96C(uint64_t a1)
{
  *(a1 + 24) = &unk_28810B728;
  *(a1 + 32) = &unk_28810B788;
  result = sub_2713B1E08(a1 + 224);
  v3 = *(a1 + 216);
  if (v3 != -1)
  {
    result = (off_288131910[v3])(&v4, a1 + 40);
  }

  *(a1 + 216) = -1;
  return result;
}

void sub_27151DA30(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881061C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27151DA84(uint64_t a1)
{
  *(a1 + 24) = &unk_28810B9C8;
  *(a1 + 32) = &unk_28810BA28;
  sub_271167834(a1 + 224, *(a1 + 232));
  v2 = *(a1 + 216);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v3, a1 + 40);
  }

  *(a1 + 216) = -1;
}

uint64_t sub_27151DB2C(uint64_t a1, const void ***a2, uint64_t a3)
{
  *a1 = &unk_28810B9C8;
  *(a1 + 8) = &unk_28810BA28;
  sub_27151CFD0(a3, a1 + 16);
  v16[0] = 0;
  v16[1] = 0;
  v15 = v16;
  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  if (v7 == v5)
  {
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
    *(a1 + 200) = a1 + 208;
  }

  else
  {
    do
    {
      sub_2711B1344(&v15, v16, v6 + 4);
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
    *(a1 + 208) = 0;
    v11 = v15;
    *(a1 + 200) = a1 + 208;
    *(a1 + 216) = 0;
    if (v11 != v16)
    {
      do
      {
        sub_2711B1344((a1 + 200), (a1 + 208), v11 + 4);
        v13 = v11[1];
        if (v13)
        {
          do
          {
            v14 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v14 = v11[2];
            v10 = *v14 == v11;
            v11 = v14;
          }

          while (!v10);
        }

        v11 = v14;
      }

      while (v14 != v16);
    }
  }

  sub_271167834(&v15, v16[0]);
  return a1;
}

void sub_27151DCAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char *a11)
{
  sub_271167834(v13, *v12);
  sub_271167834(&a10, a11);
  sub_27151D454(v11 + 16);
  _Unwind_Resume(a1);
}

void sub_27151DD00(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881061F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27151DD60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_28810BA70;
  *(a1 + 8) = &unk_28810BAD0;
  sub_27151CFD0(a3, a1 + 16);
  sub_2714B1860(&v12, a2);
  LOBYTE(__p) = 0;
  v16 = 0;
  if (*(a2 + 48) == 1)
  {
    if (*(a2 + 47) < 0)
    {
      sub_271127178(&__p, *(a2 + 24), *(a2 + 32));
    }

    else
    {
      __p = *(a2 + 24);
      v15 = *(a2 + 40);
    }

    v16 = 1;
  }

  sub_2714B1860((a1 + 200), &v12);
  *(a1 + 224) = 0;
  *(a1 + 248) = 0;
  if (v16 == 1)
  {
    if (SHIBYTE(v15) < 0)
    {
      sub_271127178((a1 + 224), __p, *(&__p + 1));
      v5 = v16;
      v6 = SHIBYTE(v15);
      *(a1 + 248) = 1;
      if ((v5 & 1) != 0 && v6 < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      *(a1 + 224) = __p;
      *(a1 + 240) = v15;
      *(a1 + 248) = 1;
    }
  }

  v7 = v12;
  if (v12)
  {
    v8 = v13;
    v9 = v12;
    if (v13 != v12)
    {
      do
      {
        v10 = *(v8 - 9);
        v8 -= 4;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = v12;
    }

    v13 = v7;
    operator delete(v9);
  }

  return a1;
}

void sub_27151DEF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (*(v19 + 248) == 1 && *(v19 + 247) < 0)
  {
    operator delete(*v20);
  }

  sub_2711BEA2C((v19 + 200));
  sub_2713B2190(&a10);
  sub_27151D454(v19 + 16);
  _Unwind_Resume(a1);
}

void sub_27151DFA4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106188;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27151DFF8(uint64_t result)
{
  v1 = result;
  *(result + 24) = &unk_28810B920;
  *(result + 32) = &unk_28810B980;
  v2 = *(result + 216);
  if (v2 != -1)
  {
    result = (off_288131910[v2])(&v3, result + 40);
  }

  *(v1 + 216) = -1;
  return result;
}

void sub_27151E2F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  if (a18 == 1 && a17 < 0)
  {
    operator delete(__p);
    std::__shared_weak_count::~__shared_weak_count(v37);
    operator delete(v39);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::~__shared_weak_count(v37);
  operator delete(v40);
  _Unwind_Resume(a1);
}

void sub_27151E39C(int a1@<W1>, void *a2@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  switch(a1)
  {
    case 1:
      operator new();
    case 2:
      sub_271758DF0();
    case 3:
      sub_27175B3E8();
    case 4:
      sub_27175B98C();
    case 5:
      sub_27173FC50();
    case 6:
      sub_2715CA084();
    case 7:
      operator new();
    case 8:
      operator new();
    case 9:
      sub_27174E2EC();
    case 10:
      operator new();
    case 11:
      sub_27153D0B8();
    case 12:
      sub_271750B14();
    case 13:
      sub_271751114();
    default:
      *a2 = 0;
      a2[1] = 0;
      v2 = *MEMORY[0x277D85DE8];
      return;
  }
}

void sub_27151FDA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_27151D454(&v23[1].__shared_weak_owners_);
  sub_271134CBC(v24 + 16);
  sub_27173FDFC(&a23);
  std::__shared_weak_count::~__shared_weak_count(v23);
  operator delete(v26);
  sub_27173FDFC(&a9);
  _Unwind_Resume(a1);
}

void sub_27151FE80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  sub_271134CBC(v24 + 16);
  sub_27112F828(&a23);
  std::__shared_weak_count::~__shared_weak_count(v23);
  operator delete(v26);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_27151FEB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  sub_271134CBC(v24 + 16);
  sub_27112F828(&a23);
  std::__shared_weak_count::~__shared_weak_count(v23);
  operator delete(v26);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_27151FEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  sub_271134CBC(v24 + 16);
  sub_27112F828(&a23);
  std::__shared_weak_count::~__shared_weak_count(v23);
  operator delete(v26);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_27151FF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  sub_271134CBC(v24 + 16);
  sub_27112F828(&a23);
  std::__shared_weak_count::~__shared_weak_count(v23);
  operator delete(v26);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_27151FF40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  sub_271134CBC(v24 + 16);
  sub_27112F828(&a23);
  std::__shared_weak_count::~__shared_weak_count(v23);
  operator delete(v26);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_2715200D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271520140(char **lpsrc@<X2>, int a2@<W1>, void *a3@<X8>)
{
  switch(a2)
  {
    case 1:
      v11 = **lpsrc;
      if (__dynamic_cast(lpsrc, &unk_28811D1B0, &unk_28811D018, 0))
      {
        goto LABEL_93;
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/include/Kit/Visualization/IData.h", 839, "ptr != nullptr", 0xEuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v12 = qword_28087C408, v13 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_92:
          qword_28087C420(*algn_28087C428, "ptr != nullptr", 14, "", 0);
LABEL_93:
          operator new();
        }
      }

      else
      {
        v12 = qword_28087C408;
        v13 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_104;
        }
      }

      do
      {
        v43 = *v12;
        v42 = *(v12 + 8);
        v12 += 16;
        v43(v42, "ptr != nullptr", 14, "", 0);
      }

      while (v12 != v13);
      if (byte_28087C430)
      {
        goto LABEL_92;
      }

      goto LABEL_104;
    case 2:
      v6 = **lpsrc;
      if (__dynamic_cast(lpsrc, &unk_28811D1B0, &unk_28811DC18, 0))
      {
        goto LABEL_78;
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/include/Kit/Visualization/DataIO.h", 1091, "ptr != nullptr", 0xEuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v22 = qword_28087C408, v23 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_77:
          qword_28087C420(*algn_28087C428, "ptr != nullptr", 14, "", 0);
LABEL_78:
          operator new();
        }
      }

      else
      {
        v22 = qword_28087C408;
        v23 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_104;
        }
      }

      do
      {
        v37 = *v22;
        v36 = *(v22 + 8);
        v22 += 16;
        v37(v36, "ptr != nullptr", 14, "", 0);
      }

      while (v22 != v23);
      if (byte_28087C430)
      {
        goto LABEL_77;
      }

      goto LABEL_104;
    case 3:
      v7 = **lpsrc;
      if (__dynamic_cast(lpsrc, &unk_28811D1B0, &unk_28811DC48, 0))
      {
        goto LABEL_83;
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/include/Kit/Visualization/DataIO.h", 1091, "ptr != nullptr", 0xEuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v24 = qword_28087C408, v25 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_82:
          qword_28087C420(*algn_28087C428, "ptr != nullptr", 14, "", 0);
LABEL_83:
          operator new();
        }
      }

      else
      {
        v24 = qword_28087C408;
        v25 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_104;
        }
      }

      do
      {
        v39 = *v24;
        v38 = *(v24 + 8);
        v24 += 16;
        v39(v38, "ptr != nullptr", 14, "", 0);
      }

      while (v24 != v25);
      if (byte_28087C430)
      {
        goto LABEL_82;
      }

      goto LABEL_104;
    case 4:
      v3 = **lpsrc;
      if (__dynamic_cast(lpsrc, &unk_28811D1B0, &unk_28811DC30, 0))
      {
        goto LABEL_63;
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/include/Kit/Visualization/DataIO.h", 1091, "ptr != nullptr", 0xEuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v16 = qword_28087C408, v17 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_62:
          qword_28087C420(*algn_28087C428, "ptr != nullptr", 14, "", 0);
LABEL_63:
          operator new();
        }
      }

      else
      {
        v16 = qword_28087C408;
        v17 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_104;
        }
      }

      do
      {
        v31 = *v16;
        v30 = *(v16 + 8);
        v16 += 16;
        v31(v30, "ptr != nullptr", 14, "", 0);
      }

      while (v16 != v17);
      if (byte_28087C430)
      {
        goto LABEL_62;
      }

      goto LABEL_104;
    case 5:
      sub_271521B90(&v48, lpsrc);
    case 6:
      v15 = **lpsrc;
      if (__dynamic_cast(lpsrc, &unk_28811D1B0, &unk_28811D5E8, 0))
      {
        goto LABEL_103;
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/include/Kit/Visualization/DataIO.h", 1091, "ptr != nullptr", 0xEuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v28 = qword_28087C408, v29 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_102:
          qword_28087C420(*algn_28087C428, "ptr != nullptr", 14, "", 0);
LABEL_103:
          operator new();
        }
      }

      else
      {
        v28 = qword_28087C408;
        v29 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_104;
        }
      }

      do
      {
        v47 = *v28;
        v46 = *(v28 + 8);
        v28 += 16;
        v47(v46, "ptr != nullptr", 14, "", 0);
      }

      while (v28 != v29);
      if (byte_28087C430)
      {
        goto LABEL_102;
      }

      goto LABEL_104;
    case 7:
      v8 = **lpsrc;
      if (__dynamic_cast(lpsrc, &unk_28811D1B0, &unk_28811DB58, 0))
      {
        goto LABEL_88;
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/include/Kit/Visualization/IData.h", 839, "ptr != nullptr", 0xEuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v9 = qword_28087C408, v10 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_87:
          qword_28087C420(*algn_28087C428, "ptr != nullptr", 14, "", 0);
LABEL_88:
          operator new();
        }
      }

      else
      {
        v9 = qword_28087C408;
        v10 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_104;
        }
      }

      do
      {
        v41 = *v9;
        v40 = *(v9 + 8);
        v9 += 16;
        v41(v40, "ptr != nullptr", 14, "", 0);
      }

      while (v9 != v10);
      if (byte_28087C430)
      {
        goto LABEL_87;
      }

      goto LABEL_104;
    case 8:
      sub_27152182C(&v48, lpsrc);
    case 9:
      v5 = **lpsrc;
      if (__dynamic_cast(lpsrc, &unk_28811D1B0, &unk_28811DC90, 0))
      {
        goto LABEL_73;
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/include/Kit/Visualization/DataIO.h", 1091, "ptr != nullptr", 0xEuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v20 = qword_28087C408, v21 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_72:
          qword_28087C420(*algn_28087C428, "ptr != nullptr", 14, "", 0);
LABEL_73:
          operator new();
        }
      }

      else
      {
        v20 = qword_28087C408;
        v21 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_104;
        }
      }

      do
      {
        v35 = *v20;
        v34 = *(v20 + 8);
        v20 += 16;
        v35(v34, "ptr != nullptr", 14, "", 0);
      }

      while (v20 != v21);
      if (byte_28087C430)
      {
        goto LABEL_72;
      }

      goto LABEL_104;
    case 10:
      sub_271521E98(&v48, lpsrc);
    case 11:
      sub_2715222D4(&v48, lpsrc);
    case 12:
      v4 = **lpsrc;
      if (__dynamic_cast(lpsrc, &unk_28811D1B0, &unk_28811DC78, 0))
      {
        goto LABEL_68;
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/include/Kit/Visualization/DataIO.h", 1091, "ptr != nullptr", 0xEuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v18 = qword_28087C408, v19 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_67:
          qword_28087C420(*algn_28087C428, "ptr != nullptr", 14, "", 0);
LABEL_68:
          operator new();
        }
      }

      else
      {
        v18 = qword_28087C408;
        v19 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_104;
        }
      }

      do
      {
        v33 = *v18;
        v32 = *(v18 + 8);
        v18 += 16;
        v33(v32, "ptr != nullptr", 14, "", 0);
      }

      while (v18 != v19);
      if (byte_28087C430)
      {
        goto LABEL_67;
      }

      goto LABEL_104;
    case 13:
      v14 = **lpsrc;
      if (__dynamic_cast(lpsrc, &unk_28811D1B0, &unk_28811DC60, 0))
      {
        goto LABEL_98;
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/include/Kit/Visualization/DataIO.h", 1091, "ptr != nullptr", 0xEuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1)
        {
          goto LABEL_97;
        }

        v26 = qword_28087C408;
        v27 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_97;
        }
      }

      else
      {
        v26 = qword_28087C408;
        v27 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_104;
        }
      }

      do
      {
        v45 = *v26;
        v44 = *(v26 + 8);
        v26 += 16;
        v45(v44, "ptr != nullptr", 14, "", 0);
      }

      while (v26 != v27);
      if ((byte_28087C430 & 1) == 0)
      {
LABEL_104:
        abort();
      }

LABEL_97:
      qword_28087C420(*algn_28087C428, "ptr != nullptr", 14, "", 0);
LABEL_98:
      operator new();
    default:
      *a3 = 0;
      a3[1] = 0;
      return;
  }
}