void sub_29AAE13AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0D2770(va);
  _Unwind_Resume(a1);
}

void sub_29AAE1404(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (sub_29AABE8C0(a1))
  {
    v4 = sub_29AAE1768(a1);
    v5 = 0;
    v6 = 0;
    sub_29AAE163C(a1, v4, &v5, a2);
    if (v6)
    {
      sub_29A014BEC(v6);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void sub_29AAE146C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29AAE1484(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    v7 = sub_29A08E058(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[48 * v2];
  v16 = v15;
  v17 = &v7[48 * v6];
  sub_29A34CA60(v15, a2);
  v8 = v15 + 48;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_29A0D407C(&v14);
  return v8;
}

void sub_29AAE1590(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0D407C(va);
  _Unwind_Resume(a1);
}

char *sub_29AAE15A4(char *__dst, __int128 **a2, __int128 **a3)
{
  v4 = __dst;
  v5 = *a2;
  if (*(*a2 + 23) < 0)
  {
    __dst = sub_29A008D14(__dst, *v5, *(v5 + 1));
  }

  else
  {
    v6 = *v5;
    *(__dst + 2) = *(v5 + 2);
    *__dst = v6;
  }

  v7 = *a3;
  if (*(*a3 + 23) < 0)
  {
    return sub_29A008D14(v4 + 24, *v7, *(v7 + 1));
  }

  v8 = *v7;
  *(v4 + 5) = *(v7 + 2);
  *(v4 + 24) = v8;
  return __dst;
}

void sub_29AAE1620(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AAE163C(uint64_t a1@<X0>, std::string *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v7 = *a3;
  if (*a3)
  {
    v8 = a3[1];
    v14 = *a3;
    v15 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    sub_29B1DA1A4(a1, &v14);
    v7 = v14;
  }

  sub_29AAE1890(a1, a2, __p);
  sub_29AAE17F4(v7, __p, &v12);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12)
  {
    v9 = v13;
    *a4 = v12;
    a4[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    sub_29AAE17F4(v14, &a2->__r_.__value_.__l.__data_, a4);
  }

  if (v13)
  {
    sub_29A014BEC(v13);
  }

  if (v15)
  {
    sub_29A014BEC(v15);
  }
}

void sub_29AAE1724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a17)
  {
    sub_29A014BEC(a17);
  }

  if (a19)
  {
    sub_29A014BEC(a19);
  }

  _Unwind_Resume(exception_object);
}

__int128 *sub_29AAE1768(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDC58[0]);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v2)
  {
    v3 = (v2 + 5);
  }

  else
  {
    v3 = sub_29B1F31FC();
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_29AAE17D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AAE17F4(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v4 = sub_29A8877BC((a1 + 96), a2);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  v6 = v4[5];
  v7 = v5[6];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6)
  {
LABEL_10:
    *a3 = 0;
    a3[1] = 0;
    if (!v7)
    {
      return;
    }

    goto LABEL_6;
  }

  sub_29B1D7394(v6, a3);
  if (!v7)
  {
    return;
  }

LABEL_6:

  sub_29A014BEC(v7);
}

void sub_29AAE1878(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AAE1890(uint64_t a1@<X0>, std::string *a2@<X1>, uint64_t a3@<X8>)
{
  sub_29A014C58(&v41, (a1 + 8));
LABEL_2:
  shared_weak_owners = v41;
  while (1)
  {
    if (!shared_weak_owners)
    {
      v15 = 1;
      goto LABEL_46;
    }

    v6 = sub_29AAE1BE0(shared_weak_owners);
    v7 = v6;
    v8 = *(v6 + 23);
    v9 = v8;
    v10 = *(v6 + 1);
    if ((v8 & 0x80u) == 0 ? *(v6 + 23) : *(v6 + 1))
    {
      break;
    }

    v12 = v41;
    shared_weak_owners = v41[9].__shared_weak_owners_;
    if (shared_weak_owners)
    {
      shared_weak_owners = std::__shared_weak_count::lock(shared_weak_owners);
      v13 = shared_weak_owners;
      if (shared_weak_owners)
      {
        shared_weak_owners = v12[9].__shared_owners_;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = v42;
    v41 = shared_weak_owners;
    v42 = v13;
    if (v14)
    {
      sub_29A014BEC(v14);
      goto LABEL_2;
    }
  }

  v16 = off_2A14FDF38[0];
  v17 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v17 >= 0)
  {
    v18 = a2;
  }

  else
  {
    v18 = a2->__r_.__value_.__r.__words[0];
  }

  if (v17 >= 0)
  {
    size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v20 = strlen(off_2A14FDF38[0]);
  if (size)
  {
    v21 = v20 == 0;
  }

  else
  {
    v21 = 1;
  }

  if (!v21)
  {
    v30 = &v18[size];
    v31 = v18;
LABEL_53:
    v32 = 0;
    while (*v31 != off_2A14FDF38[0][v32])
    {
      if (v20 == ++v32)
      {
        if (++v31 != v30)
        {
          goto LABEL_53;
        }

        goto LABEL_26;
      }
    }

    if (v31 == v30 || v31 - v18 == -1)
    {
      goto LABEL_26;
    }

    std::string::basic_string(&__p, a2, 0, v31 - v18, &v43);
    v33 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v34 = __p.__r_.__value_.__l.__size_;
    }

    v35 = *(v7 + 23);
    v36 = v35;
    if ((v35 & 0x80u) != 0)
    {
      v35 = *(v7 + 1);
    }

    if (v34 == v35)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if (v36 >= 0)
      {
        v38 = v7;
      }

      else
      {
        v38 = *v7;
      }

      v39 = memcmp(p_p, v38, v34) == 0;
      if ((v33 & 0x80000000) == 0)
      {
        goto LABEL_76;
      }
    }

    else
    {
      v39 = 0;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_76:
        if (!v39)
        {
          v16 = off_2A14FDF38[0];
          v8 = *(v7 + 23);
          v10 = *(v7 + 1);
          v9 = *(v7 + 23);
          goto LABEL_26;
        }

        if ((SHIBYTE(a2->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          v15 = 0;
          *a3 = *&a2->__r_.__value_.__l.__data_;
          *(a3 + 16) = *(&a2->__r_.__value_.__l + 2);
          goto LABEL_46;
        }

        sub_29A008D14(a3, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
        goto LABEL_45;
      }
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_76;
  }

LABEL_26:
  if (v9 < 0)
  {
    v8 = v10;
  }

  v22 = strlen(v16);
  v23 = &__p;
  sub_29A022DE0(&__p, v8 + v22);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v23 = __p.__r_.__value_.__r.__words[0];
  }

  if (v8)
  {
    if (*(v7 + 23) >= 0)
    {
      v24 = v7;
    }

    else
    {
      v24 = *v7;
    }

    memmove(v23, v24, v8);
  }

  if (v22)
  {
    memmove(v23 + v8, v16, v22);
  }

  v23->__r_.__value_.__s.__data_[v8 + v22] = 0;
  v25 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v25 >= 0)
  {
    v26 = a2;
  }

  else
  {
    v26 = a2->__r_.__value_.__r.__words[0];
  }

  if (v25 >= 0)
  {
    v27 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v27 = a2->__r_.__value_.__l.__size_;
  }

  v28 = std::string::append(&__p, v26, v27);
  v29 = *&v28->__r_.__value_.__l.__data_;
  *(a3 + 16) = *(&v28->__r_.__value_.__l + 2);
  *a3 = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_45:
  v15 = 0;
LABEL_46:
  if (v42)
  {
    sub_29A014BEC(v42);
  }

  if (v15)
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      sub_29A008D14(a3, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      *a3 = *&a2->__r_.__value_.__l.__data_;
      *(a3 + 16) = *(&a2->__r_.__value_.__l + 2);
    }
  }
}

void sub_29AAE1BA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_29A014BEC(a16);
  }

  _Unwind_Resume(exception_object);
}

__int128 *sub_29AAE1BE0(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDC60[0]);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v2)
  {
    v3 = (v2 + 5);
  }

  else
  {
    v3 = sub_29B1F31FC();
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_29AAE1C50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AAE1C6C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v3 = *(a1 + 136);
  for (i = *(a1 + 144); v3 != i; v3 += 2)
  {
    v8 = *v3;
    v7 = v3[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29B1D7DA0(v8, &v18);
    if (v18)
    {
      v9 = *(a2 + 23);
      v10 = v9 >= 0 ? *(a2 + 23) : *(a2 + 8);
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = *(v8 + 47);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v8 + 32);
      }

      if (v11 == v10)
      {
        v15 = *(v8 + 24);
        v14 = v8 + 24;
        v13 = v15;
        v16 = (v12 >= 0 ? v14 : v13);
        v17 = v9 >= 0 ? a2 : *a2;
        if (!memcmp(v16, v17, v10))
        {
LABEL_19:
          sub_29A017F80(a3, &v18);
        }
      }
    }

    if (*(&v18 + 1))
    {
      sub_29A014BEC(*(&v18 + 1));
    }

    if (v7)
    {
      sub_29A014BEC(v7);
    }
  }
}

void sub_29AAE1D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  sub_29A0176E4(&a9);
  _Unwind_Resume(a1);
}

char *sub_29AAE1DA8(char **a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * (&v9[-v10] >> 4)) >= a5)
    {
      v18 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 4)) >= a5)
      {
        v21 = 3 * a5;
        sub_29AAE2000(a1, a2, a1[1], a2 + 48 * a5);
        v22 = v7 + 16 * v21;
        v23 = v5;
        do
        {
          sub_29A34C934(v23, v7);
          v7 += 48;
          v23 += 48;
        }

        while (v7 != v22);
      }

      else
      {
        v19 = v18 + a3;
        a1[1] = sub_29AAE20B0(a1, (v18 + a3), a4, a1[1]);
        if (v18 >= 1)
        {
          sub_29AAE2000(a1, v5, v10, v5 + 48 * a5);
          v20 = v5;
          do
          {
            sub_29A34C934(v20, v7);
            v7 += 48;
            v20 += 48;
          }

          while (v7 != v19);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 4);
      if (v12 > 0x555555555555555)
      {
        sub_29A00C9A4();
      }

      v13 = a2 - v11;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 4);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x2AAAAAAAAAAAAAALL)
      {
        v15 = 0x555555555555555;
      }

      else
      {
        v15 = v12;
      }

      v16 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 4);
      v37[4] = a1;
      if (v15)
      {
        v17 = sub_29A08E058(a1, v15);
      }

      else
      {
        v17 = 0;
      }

      v24 = &v17[48 * v16];
      v25 = &v17[48 * v15];
      v26 = &v24[48 * a5];
      v27 = v24;
      do
      {
        v28 = *v7;
        *(v27 + 2) = *(v7 + 16);
        *v27 = v28;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *v7 = 0;
        v29 = *(v7 + 24);
        *(v27 + 5) = *(v7 + 40);
        *(v27 + 24) = v29;
        *(v7 + 32) = 0;
        *(v7 + 40) = 0;
        *(v7 + 24) = 0;
        v27 += 48;
        v7 += 48;
      }

      while (v27 != v26);
      memcpy(v26, v5, a1[1] - v5);
      v30 = *a1;
      v31 = &v26[a1[1] - v5];
      a1[1] = v5;
      v32 = v5 - v30;
      v33 = &v24[-(v5 - v30)];
      memcpy(v33, v30, v32);
      v34 = *a1;
      *a1 = v33;
      a1[1] = v31;
      v35 = a1[2];
      a1[2] = v25;
      v37[2] = v34;
      v37[3] = v35;
      v37[0] = v34;
      v37[1] = v34;
      sub_29A0D407C(v37);
      return v24;
    }
  }

  return v5;
}

uint64_t sub_29AAE2000(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(result + 8);
  v5 = (a2 + v4 - a4);
  v6 = v4;
  while (v5 < a3)
  {
    v7 = *v5;
    *(v6 + 16) = *(v5 + 2);
    *v6 = v7;
    *(v5 + 1) = 0;
    *(v5 + 2) = 0;
    *v5 = 0;
    v8 = *(v5 + 24);
    *(v6 + 40) = *(v5 + 5);
    *(v6 + 24) = v8;
    *(v5 + 4) = 0;
    *(v5 + 5) = 0;
    *(v5 + 3) = 0;
    v5 += 3;
    v6 += 48;
  }

  *(result + 8) = v6;
  if (v4 != a4)
  {
    v9 = v4 - 48;
    v10 = a4 - v4;
    v11 = (a2 + v4 - 48 - a4);
    do
    {
      result = sub_29A34C934(v9, v11);
      v9 -= 48;
      v11 -= 3;
      v10 += 48;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_29AAE20B0(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v10 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (a2 != a3)
  {
    do
    {
      v5 = *a2;
      *(v4 + 16) = *(a2 + 2);
      *v4 = v5;
      *(a2 + 1) = 0;
      *(a2 + 2) = 0;
      *a2 = 0;
      v6 = *(a2 + 24);
      *(v4 + 40) = *(a2 + 5);
      *(v4 + 24) = v6;
      *(a2 + 4) = 0;
      *(a2 + 5) = 0;
      *(a2 + 3) = 0;
      a2 += 3;
      v4 += 48;
    }

    while (a2 != a3);
    v11 = v4;
  }

  v9 = 1;
  sub_29A4674EC(v8);
  return v4;
}

void sub_29AAE2150(uint64_t a1)
{
  v2 = (a1 + 16);
  sub_29A019EE8(a1 + 112, *(a1 + 120));
  v4 = (a1 + 88);
  sub_29A0D2770(&v4);
  sub_29AAE21CC(a1 + 64, *(a1 + 72));
  v4 = (a1 + 40);
  sub_29A0176E4(&v4);
  v4 = v2;
  sub_29A012C90(&v4);
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }
}

void sub_29AAE21CC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29AAE21CC(a1, *a2);
    sub_29AAE21CC(a1, a2[1]);
    sub_29AAE2228((a2 + 4));

    operator delete(a2);
  }
}

void sub_29AAE2228(uint64_t a1)
{
  sub_29A01752C(a1 + 16, *(a1 + 24));
  v2 = *(a1 + 8);
  if (v2)
  {

    sub_29A014BEC(v2);
  }
}

__int128 **sub_29AAE22A4(__int128 **a1, uint64_t a2)
{
  v3 = sub_29A8877BC((*a2 + 160), &qword_2A1747EC8);
  if (v3)
  {
    v4 = (v3 + 5);
  }

  else
  {
    v4 = sub_29B1F31FC();
  }

  v5 = *(v4 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(v4 + 1);
  }

  if (!v5)
  {
    v4 = sub_29B1F31FC();
  }

  *a1 = v4;
  return a1;
}

uint64_t **sub_29AAE230C(uint64_t **a1, unint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v7 = a1 + 1;
  v6 = a1[1];
  if (v6)
  {
    v8 = *a2;
    while (1)
    {
      while (1)
      {
        v9 = v6;
        v10 = v6[4];
        if (v8 >= v10)
        {
          break;
        }

        v6 = *v9;
        v7 = v9;
        if (!*v9)
        {
          goto LABEL_10;
        }
      }

      if (v10 >= v8)
      {
        return v9;
      }

      v6 = v9[1];
      if (!v6)
      {
        v7 = v9 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v9 = a1 + 1;
LABEL_10:
    v11 = operator new(0x48uLL);
    v12 = v11;
    v13 = (*a4)[1];
    v11[4] = **a4;
    v11[5] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    v11[8] = 0;
    v11[7] = 0;
    v11[6] = (v11 + 7);
    sub_29A00B204(a1, v9, v7, v11);
  }

  return v12;
}

uint64_t *sub_29AAE23EC(char *a1, __int128 *a2, __int128 *a3)
{
  sub_29AAE249C(a1, a2, a3, &__p);
  v4 = sub_29AAE2510(a1, &v8, __p + 4);
  v5 = *v4;
  if (*v4)
  {
    v6 = __p;
    __p = 0;
    if (v6)
    {
      if (v10 == 1)
      {
        sub_29A00B454(v6 + 32);
      }

      operator delete(v6);
    }
  }

  else
  {
    sub_29A00B204(a1, v8, v4, __p);
    return __p;
  }

  return v5;
}

void sub_29AAE2484(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A00B3F8(va, 0);
  _Unwind_Resume(a1);
}

char *sub_29AAE249C@<X0>(char *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, char **a4@<X8>)
{
  v8 = operator new(0x50uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  result = sub_29AA9E058(v8 + 32, a2, a3);
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_29AAE2510(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_29A8A1EF0(a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_29A8A1EF0(a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

void sub_29AAE25AC(void *a1)
{
  if (a1)
  {
    sub_29AAE25AC(*a1);
    sub_29AAE25AC(a1[1]);
    sub_29AAE2150((a1 + 4));

    operator delete(a1);
  }
}

uint64_t *sub_29AAE2600(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 56);
  v2 = a1 + 56;
  v3 = v4;
  if (v4)
  {
    v5 = *a2;
    v6 = v2;
    do
    {
      v7 = *(v3 + 32);
      v8 = v7 >= v5;
      v9 = v7 < v5;
      if (v8)
      {
        v6 = v3;
      }

      v3 = *(v3 + 8 * v9);
    }

    while (v3);
    if (v6 != v2 && v5 >= *(v6 + 32))
    {
      return (v6 + 48);
    }
  }

  if (atomic_load_explicit(&qword_2A1748168, memory_order_acquire))
  {
    return &qword_2A1748188;
  }

  sub_29B2BDBD0(&v11);
  return v11;
}

void sub_29AAE2684(uint64_t a1)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v2)
  {
    v2 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29AAE28C0(a1, (v2 + 280));
}

void *sub_29AAE271C(uint64_t **a1, uint64_t *a2, uint64_t a3, void **a4)
{
  v6 = sub_29A153CF4(a1, &v11, a2);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x30uLL);
    v9 = *a4;
    v7[4] = **a4;
    *v9 = 0;
    *(v7 + 10) = 0;
    sub_29A00B204(a1, v11, v8, v7);
  }

  return v7;
}

uint64_t *sub_29AAE27AC(uint64_t **a1, uint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v6 = sub_29A153CF4(a1, &v9, a2);
  result = *v6;
  if (!*v6)
  {
    sub_29AAE2844(a1, a4, &v8);
    sub_29A00B204(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

void *sub_29AAE2844@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X2>, void *a3@<X8>)
{
  result = operator new(0x30uLL);
  *a3 = result;
  a3[1] = a1;
  a3[2] = 0;
  v7 = **a2;
  result[4] = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[4] &= 0xFFFFFFFFFFFFFFF8;
  }

  *(result + 10) = 0;
  *(a3 + 16) = 1;
  return result;
}

void sub_29AAE28C0(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetMetadataImpl<pxrInternal__aapl__pxrReserved__::SdfAbstractDataConstValue>();
}

_DWORD *sub_29AAE297C@<X0>(_DWORD *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{

  return pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(v10, &a10, a1);
}

uint64_t *sub_29AAE2994()
{
  v1 = nullsub_1519;
}

void pxrInternal__aapl__pxrReserved__::UsdMtlxMaterialXConfigAPI::~UsdMtlxMaterialXConfigAPI(pxrInternal__aapl__pxrReserved__::UsdMtlxMaterialXConfigAPI *this)
{
  pxrInternal__aapl__pxrReserved__::UsdAPISchemaBase::~UsdAPISchemaBase(this);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdMtlxMaterialXConfigAPI::Get@<X0>(uint64_t a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a2@<X8>)
{
  v3 = sub_29B2ACEC8(a1);
  if (v4 & 1 | v3)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v7 = "usdMtlx/materialXConfigAPI.cpp";
  v8 = "Get";
  v9 = 34;
  v10 = "static UsdMtlxMaterialXConfigAPI pxrInternal__aapl__pxrReserved__::UsdMtlxMaterialXConfigAPI::Get(const UsdStagePtr &, const SdfPath &)";
  v11 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v7, 1, "Invalid stage");
  LODWORD(v7) = 1;
  v8 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v9);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v9 + 1);
  v10 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a2, &v7);
  *(a2 + 3) = 0;
  *a2 = &unk_2A2070F30;
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9 + 1);
  sub_29A1DE3A4(&v9);
  result = v8;
  if (v8)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v8, v5);
  }

  return result;
}

void sub_29AAE2B9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

BOOL sub_29AAE2BC4(pxrInternal__aapl__pxrReserved__::UsdMtlxMaterialXConfigAPI *a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::UsdMtlxMaterialXConfigAPI::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(&qword_2A17481A0, v4);
  if (SchemaInfo)
  {

    return pxrInternal__aapl__pxrReserved__::UsdPrim::_CanApplySingleApplyAPI(a1, SchemaInfo, a2);
  }

  else
  {
    v11[0] = "usd/prim.h";
    v11[1] = "CanApplyAPI";
    v11[2] = 1010;
    v11[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdPrim::CanApplyAPI(std::string *) const [SchemaType = pxrInternal__aapl__pxrReserved__::UsdMtlxMaterialXConfigAPI]";
    v12 = 0;
    TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v8);
    if (*(TypeName + 23) >= 0)
    {
      v10 = TypeName;
    }

    else
    {
      v10 = *TypeName;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v11, 1, "Class '%s' is not correctly registered with the UsdSchemaRegistry as a schema type. The schema may need to be regenerated.", v10);
    return 0;
  }
}

pxrInternal__aapl__pxrReserved__::UsdSchemaBase *pxrInternal__aapl__pxrReserved__::UsdMtlxMaterialXConfigAPI::Apply@<X0>(pxrInternal__aapl__pxrReserved__::UsdMtlxMaterialXConfigAPI *this@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a2@<X8>)
{
  if (sub_29AAE2D9C(this))
  {
    result = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a2, this);
    *(a2 + 3) = 0;
    *a2 = &unk_2A2070F30;
  }

  else
  {
    v7 = 1;
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v9);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10);
    v11 = 0;
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a2, &v7);
    *(a2 + 3) = 0;
    *a2 = &unk_2A2070F30;
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10);
    sub_29A1DE3A4(&v9);
    result = v8;
    if (v8)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v8, v6);
    }
  }

  return result;
}

uint64_t sub_29AAE2D9C(pxrInternal__aapl__pxrReserved__::UsdMtlxMaterialXConfigAPI *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdMtlxMaterialXConfigAPI::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(&qword_2A17481A0, v2);
  if (SchemaInfo)
  {

    return pxrInternal__aapl__pxrReserved__::UsdPrim::_ApplySingleApplyAPI(a1, SchemaInfo);
  }

  else
  {
    v9[0] = "usd/prim.h";
    v9[1] = "ApplyAPI";
    v9[2] = 1133;
    v9[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdPrim::ApplyAPI() const [SchemaType = pxrInternal__aapl__pxrReserved__::UsdMtlxMaterialXConfigAPI]";
    v10 = 0;
    TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v6);
    if (*(TypeName + 23) >= 0)
    {
      v8 = TypeName;
    }

    else
    {
      v8 = *TypeName;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v9, 1, "Class '%s' is not correctly registered with the UsdSchemaRegistry as a schema type. The schema may need to be regenerated.", v8);
    return 0;
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdMtlxMaterialXConfigAPI::_GetStaticTfType(pxrInternal__aapl__pxrReserved__::UsdMtlxMaterialXConfigAPI *this)
{
  if ((atomic_load_explicit(&qword_2A17481A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17481A8))
  {
    __cxa_guard_release(&qword_2A17481A8);
  }

  return &qword_2A17481A0;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdMtlxMaterialXConfigAPI::_IsTypedSchema(pxrInternal__aapl__pxrReserved__::UsdMtlxMaterialXConfigAPI *this)
{
  if ((atomic_load_explicit(&qword_2A17481B8, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A17481B8);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdMtlxMaterialXConfigAPI::_GetStaticTfType(v2);
      byte_2A17481B0 = sub_29A7343F0(&qword_2A17481A0, v3);
      __cxa_guard_release(&qword_2A17481B8);
    }
  }

  return byte_2A17481B0;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdMtlxMaterialXConfigAPI::GetConfigMtlxVersionAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdMtlxMaterialXConfigAPI *this@<X0>, uint64_t a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdMtlxTokens);
  if (!v3)
  {
    v3 = sub_29AAC2D70(&pxrInternal__aapl__pxrReserved__::UsdMtlxTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v6, v3, a2);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  sub_29A1DE3A4(&v8);
  result = v7;
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7, v4);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdMtlxMaterialXConfigAPI::CreateConfigMtlxVersionAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdMtlxMaterialXConfigAPI *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdMtlxTokens);
  if (!v8)
  {
    v8 = sub_29AAC2D70(&pxrInternal__aapl__pxrReserved__::UsdMtlxTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, v8, (v9 + 80), 0, 0, a2, a3, a4);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdMtlxMaterialXConfigAPI::GetSchemaAttributeNames(pxrInternal__aapl__pxrReserved__::UsdMtlxMaterialXConfigAPI *this)
{
  v1 = this;
  v8 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A17481D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17481D8))
  {
    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdMtlxTokens);
    if (!v3)
    {
      v3 = sub_29AAC2D70(&pxrInternal__aapl__pxrReserved__::UsdMtlxTokens);
    }

    v4 = *v3;
    v7 = v4;
    if ((v4 & 7) != 0)
    {
      v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
      {
        v7 = v5;
      }
    }

    qword_2A17481C0 = 0;
    *algn_2A17481C8 = 0;
    qword_2A17481D0 = 0;
    sub_29A12EF7C(&qword_2A17481C0, &v7, &v8, 1uLL);
    if ((v7 & 7) != 0)
    {
      atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A17481C0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17481D8);
  }

  if ((atomic_load_explicit(&qword_2A17481F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17481F8))
  {
    SchemaAttributeNames = pxrInternal__aapl__pxrReserved__::UsdAPISchemaBase::GetSchemaAttributeNames(1);
    sub_29AAE32D8(SchemaAttributeNames);
    __cxa_atexit(sub_29A3C73E0, &qword_2A17481E0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17481F8);
  }

  if (v1)
  {
    return &qword_2A17481E0;
  }

  else
  {
    return &qword_2A17481C0;
  }
}

char *sub_29AAE32D8(uint64_t **a1)
{
  qword_2A17481E8 = 0;
  unk_2A17481F0 = 0;
  qword_2A17481E0 = 0;
  sub_29A1D7F98(&qword_2A17481E0, ((*algn_2A17481C8 - qword_2A17481C0) >> 3) + a1[1] - *a1);
  sub_29A372808(&qword_2A17481E0, qword_2A17481E8, *a1, a1[1], a1[1] - *a1);
  return sub_29A372808(&qword_2A17481E0, qword_2A17481E8, qword_2A17481C0, *algn_2A17481C8, (*algn_2A17481C8 - qword_2A17481C0) >> 3);
}

void sub_29AAE3370(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::UsdMtlxTokensType *pxrInternal__aapl__pxrReserved__::UsdMtlxTokensType::UsdMtlxTokensType(pxrInternal__aapl__pxrReserved__::UsdMtlxTokensType *this)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "config:mtlx:version", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "out", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "MaterialXConfigAPI", 0);
  v3 = (this + 24);
  v4 = *this;
  v13 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 = v5;
    }
  }

  v6 = *(this + 1);
  v14 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v14 = v7;
    }
  }

  v8 = *(this + 2);
  v15 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 = v9;
    }
  }

  *v3 = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  sub_29A12EF7C(v3, &v13, &v16, 3uLL);
  for (i = 16; i != -8; i -= 8)
  {
    v11 = *(&v13 + i);
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AAE34D8(_Unwind_Exception *a1)
{
  v3 = 16;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[2];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[1];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_29AAE3558()
{
  v7 = *MEMORY[0x29EDCA608];
  v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdValidationRegistry>::_instance);
  if (!v0)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdValidationRegistry>::_CreateInstance();
  }

  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::UsdValidatorNameTokens))
  {
    sub_29AAE3D78(&pxrInternal__aapl__pxrReserved__::UsdValidatorNameTokens);
  }

  v4 = &unk_2A2070F88;
  v5 = sub_29AAE36C0;
  v6 = &v4;
  pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::RegisterPluginValidator(v0);
  sub_29AAE4750(&v4);
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::UsdValidatorNameTokens))
  {
    sub_29AAE3D78(&pxrInternal__aapl__pxrReserved__::UsdValidatorNameTokens);
  }

  v4 = &unk_2A2070F88;
  v5 = sub_29AAE3A24;
  v6 = &v4;
  pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::RegisterPluginValidator(v0);
  return sub_29AAE4750(&v4);
}

void sub_29AAE36C0(void *a1@<X8>)
{
  v1 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
}

void sub_29AAE394C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  __p = &a11;
  sub_29AAE4374(&__p);
  __p = &a14;
  sub_29A0176E4(&__p);
  sub_29AAE45F0(&__p);
  _Unwind_Resume(a1);
}

void sub_29AAE3A14(void *a1, int a2)
{
  if (a2)
  {
    sub_299FEDEEC(a1);
  }

  JUMPOUT(0x29AAE3A0CLL);
}

void sub_29AAE3A24(void *a1@<X8>)
{
  v1 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
}

void sub_29AAE3C4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, char a20)
{
  *(v21 - 80) = v20;
  sub_29AAE45F0((v21 - 80));
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::UsdValidatorNameTokens_StaticTokenType *sub_29AAE3D78(atomic_ullong *a1)
{
  result = sub_29AAE3DC0();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::UsdValidatorNameTokens_StaticTokenType::~UsdValidatorNameTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::UsdValidatorNameTokens_StaticTokenType *sub_29AAE3DC0()
{
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::UsdValidatorNameTokens_StaticTokenType::UsdValidatorNameTokens_StaticTokenType(v0);
  return v0;
}

void **sub_29AAE3E04(void **result, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 >= 0x38E38E38E38E38FLL)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v16 = result;
    v4 = sub_29A09C03C(result, a2);
    v5 = &v4[v3];
    v12 = v4;
    v13 = &v4[v3];
    v7 = &v4[72 * v6];
    v14 = &v4[v3];
    v15 = v7;
    v8 = v2[1];
    v9 = &v4[v3 + *v2 - v8];
    sub_29AAE3F24(v2, *v2, v8, v9);
    v10 = *v2;
    *v2 = v9;
    v2[1] = v5;
    v11 = v2[2];
    v2[2] = v7;
    v14 = v10;
    v15 = v11;
    v12 = v10;
    v13 = v10;
    return sub_29AAE4104(&v12);
  }

  return result;
}

void sub_29AAE3ED8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AAE4104(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AAE3EEC(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29B2BDD88(a1);
  return a1;
}

uint64_t sub_29AAE3F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      *(a4 + 8) = *(v7 + 8);
      *(v7 + 8) = 0;
      *(a4 + 16) = *(v7 + 16);
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = 0;
      *(a4 + 24) = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      v8 = *(v7 + 48);
      *(a4 + 64) = *(v7 + 64);
      *(a4 + 48) = v8;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      *(v7 + 48) = 0;
      v7 += 72;
      a4 += 72;
    }

    while (v7 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      sub_29AAE4018(a1, v5);
      v5 += 72;
    }
  }

  return sub_29AAE4078(v10);
}

void sub_29AAE4018(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  v4 = (a2 + 24);
  sub_29AAE4374(&v4);
  v3 = *(a2 + 8);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

uint64_t sub_29AAE4078(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AAE40B0(a1);
  }

  return a1;
}

void sub_29AAE40B0(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 72;
      sub_29AAE4018(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_29AAE4104(void **a1)
{
  sub_29AAE4138(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29AAE4138(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 72;
    sub_29AAE4018(v4, i - 72);
  }
}

void *sub_29AAE4180(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A10E7C8(result, a4);
    result = sub_29AAE4208(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29AAE41E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29AAE4374(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29AAE4208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_29B2BDC48(a1, v4, v6);
      v6 += 40;
      v4 = v12 + 40;
      v12 += 40;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_29AAE42B4(v9);
  return v4;
}

uint64_t sub_29AAE42B4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AAE42EC(a1);
  }

  return a1;
}

uint64_t *sub_29AAE42EC(uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *result;
    do
    {
      v3 -= 40;
      result = sub_29AAE4340(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

void sub_29AAE4374(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 40;
        sub_29AAE4340(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_29AAE43FC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v6 = v5 + 1;
  if (v5 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_29A00C9A4();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v6)
  {
    v6 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v12 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v12 = v6;
  }

  v23 = a1;
  if (v12)
  {
    v13 = sub_29A09C03C(a1, v12);
  }

  else
  {
    v13 = 0;
  }

  v20 = v13;
  v21 = &v13[72 * v5];
  *(&v22 + 1) = &v13[72 * v12];
  pxrInternal__aapl__pxrReserved__::UsdValidationError::UsdValidationError(v21, a2, a3, a4, a5);
  *&v22 = v21 + 72;
  v14 = a1[1];
  v15 = &v21[*a1 - v14];
  sub_29AAE3F24(a1, *a1, v14, v15);
  v16 = *a1;
  *a1 = v15;
  v17 = a1[2];
  v19 = v22;
  *(a1 + 1) = v22;
  *&v22 = v16;
  *(&v22 + 1) = v17;
  v20 = v16;
  v21 = v16;
  sub_29AAE4104(&v20);
  return v19;
}

void sub_29AAE4550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AAE4104(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::UsdValidationErrorNameTokens_StaticTokenType *sub_29AAE4564(atomic_ullong *a1)
{
  result = sub_29AAE45AC();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::UsdValidationErrorNameTokens_StaticTokenType::~UsdValidationErrorNameTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::UsdValidationErrorNameTokens_StaticTokenType *sub_29AAE45AC()
{
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::UsdValidationErrorNameTokens_StaticTokenType::UsdValidationErrorNameTokens_StaticTokenType(v0);
  return v0;
}

void sub_29AAE45F0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 72;
        sub_29AAE4018(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *sub_29AAE4680(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A2070F88;
  result[1] = v3;
  return result;
}

uint64_t sub_29AAE46C8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A2070F88;
  a2[1] = v2;
  return result;
}

uint64_t sub_29AAE4704(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2071008))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29AAE4750(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdValidationContext::_ValidatePrims<pxrInternal__aapl__pxrReserved__::UsdPrimRange>(_DWORD *result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v9 = result;
  v7 = *(result + 6);
  for (i = *(result + 7); v7 != i; ++v7)
  {
    v8 = *v7;
    if (a7 == 1)
    {
      if ((*(v8 + 96) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else if (a7 || (*(v8 + 96) & 1) != 0)
    {
LABEL_7:
      sub_29A58BB1C(a3, &v21);
      v16 = a3[1];
      v17 = a3;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v18);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v18 + 1);
      v19 = 0;
      v20 = 0;
      if (v22 != a3 || v21 != v16 || v23 != v18 || v24 != v19 || v25 != v20 || v26 != HIBYTE(v20))
      {
        sub_29A58BBEC(&v21, &v15);
        pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v15);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18 + 1);
      sub_29A1DE3A4(&v18);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v23 + 1);
      result = sub_29A1DE3A4(&v23);
    }
  }

  v13 = *(v9 + 9);
  if (v13 != *(v9 + 10))
  {
    v10 = *(v9 + 10);
    do
    {
      sub_29A58BB1C(a3, &v21);
      v16 = a3[1];
      v17 = a3;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v18);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v18 + 1);
      v19 = 0;
      v20 = 0;
      if (v22 != a3 || v21 != v16 || v23 != v18 || v24 != v19 || v25 != v20 || v26 != HIBYTE(v20))
      {
        sub_29A58BBEC(&v21, &v15);
        pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v15);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18 + 1);
      sub_29A1DE3A4(&v18);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v23 + 1);
      result = sub_29A1DE3A4(&v23);
      v13 += 32;
    }

    while (v13 != v10);
  }

  return result;
}

void sub_29AAE4E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  sub_29A57F434(&a26);
  sub_29A58BBB4(&a30);
  sub_29A58BBB4(v30 - 136);
  _Unwind_Resume(a1);
}

uint64_t sub_29AAE4EAC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
  sub_29A1DE3A4((a1 + 24));
  v4 = *(a1 + 16);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  return a1;
}

uint64_t sub_29AAE4F08(pxrInternal__aapl__pxrReserved__::TfToken *a1, void *a2)
{
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  v4 = *pxrInternal__aapl__pxrReserved__::TfType::FindByName(EmptyString);
  v13 = v4;
  pxrInternal__aapl__pxrReserved__::TfType::TfType(&v11);
  if (v11 == v4)
  {
    return 0;
  }

  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry>::_instance))
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry>::_CreateInstance();
  }

  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::GetSchemaTypeName(&v13, &v12);
  if (pxrInternal__aapl__pxrReserved__::UsdPrim::IsA(a1, &v12))
  {
    v7 = 1;
  }

  else
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry>::_instance))
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry>::_CreateInstance();
    }

    if (pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::IsAppliedAPISchema(&v13, v6))
    {
      pxrInternal__aapl__pxrReserved__::UsdPrim::GetAppliedSchemas(a1, v9, &v11);
    }

    v7 = 0;
  }

  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return v7;
}

void sub_29AAE5048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if ((a12 & 7) != 0)
  {
    atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29AAE5068(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
  sub_29A1DE3A4((a1 + 24));
  v4 = *(a1 + 16);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  return a1;
}

void *pxrInternal__aapl__pxrReserved__::UsdValidationContext::_ValidatePrims<std::vector<pxrInternal__aapl__pxrReserved__::UsdPrim>>(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v7 = result[6];
  v11 = result[7];
  while (v7 != v11)
  {
    v8 = *v7;
    if (a7 == 1)
    {
      if ((*(v8 + 96) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if (a7 || (*(v8 + 96) & 1) != 0)
    {
LABEL_9:
      if (*a3 != *(a3 + 8))
      {
        pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(*a3);
      }
    }

    ++v7;
  }

  v10 = result[9];
  for (i = result[10]; v10 != i; v10 += 32)
  {
    if (*a3 != *(a3 + 8))
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(*a3);
    }
  }

  return result;
}

void sub_29AAE54E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29AAE5510(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AAE5510(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
  sub_29A1DE3A4((a1 + 24));
  v4 = *(a1 + 16);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  return a1;
}

uint64_t sub_29AAE556C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
  sub_29A1DE3A4((a1 + 24));
  v4 = *(a1 + 16);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdValidationContext::UsdValidationContext(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdValidationRegistry>::_instance);
  if (!v5)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdValidationRegistry>::_CreateInstance();
  }

  pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::GetValidatorMetadataForKeywords(v5, a2, v7);
  pxrInternal__aapl__pxrReserved__::UsdValidationContext::_InitializeFromValidatorMetadata(a1, v7, a3);
  v8 = v7;
  sub_29AAE7E2C(&v8);
  return a1;
}

void sub_29AAE565C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  a9 = (v9 + 72);
  sub_29AAE7EB4(&a9);
  v11 = *(v9 + 48);
  if (v11)
  {
    *(v9 + 56) = v11;
    operator delete(v11);
  }

  v12 = *(v9 + 24);
  if (v12)
  {
    *(v9 + 32) = v12;
    operator delete(v12);
  }

  v13 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdValidationContext::_InitializeFromValidatorMetadata(void *a1, const pxrInternal__aapl__pxrReserved__::TfToken **a2, int a3)
{
  v19 = 0u;
  v20 = 0u;
  v21 = 1065353216;
  sub_29AAE5A94(a2, &v19);
  if (a3)
  {
    *__p = 0u;
    v23 = 0u;
    v24 = 1065353216;
    v6 = *a2;
    v7 = a2[1];
    if (*a2 == v7)
    {
      v10 = 0;
      v11 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
    }

    else
    {
      do
      {
        v8 = *(v6 + 9);
        v9 = *(v6 + 10);
        while (v8 != v9)
        {
          sub_29A169500(__p, v8, v8);
          ++v8;
        }

        v6 = (v6 + 104);
      }

      while (v6 != v7);
      v10 = v23;
      v17 = 0;
      v18 = 0;
      v16 = 0;
      v11 = 0;
      if (v23)
      {
        v12 = v23;
        do
        {
          ++v11;
          v12 = *v12;
        }

        while (v12);
      }
    }

    sub_29A82516C(&v16, v10, 0, v11);
    sub_29A155EF4(__p);
    sub_29AAE5BB8(&v16, &v19);
    __p[0] = &v16;
    sub_29A124AB0(__p);
  }

  __p[1] = 0;
  *&v23 = 0;
  __p[0] = 0;
  v13 = 0;
  if (v20)
  {
    v14 = v20;
    do
    {
      ++v13;
      v14 = *v14;
    }

    while (v14);
  }

  sub_29AAE7F74(__p, v20, 0, v13);
  pxrInternal__aapl__pxrReserved__::UsdValidationContext::_DistributeValidators(a1, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return sub_29A0EB570(&v19);
}

void sub_29AAE5828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  sub_29A124AB0(&__p);
  sub_29A0EB570(&a13);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdValidationContext::UsdValidationContext(uint64_t a1, uint64_t *a2, int a3)
{
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdValidationRegistry>::_instance);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdValidationRegistry>::_CreateInstance();
  }

  memset(v13, 0, sizeof(v13));
  sub_29A1D7F98(v13, (a2[1] - *a2) >> 4);
  v7 = *a2;
  v8 = a2[1];
  while (v7 != v8)
  {
    v9 = sub_29B290C20(v7);
    if (v10 & 1 | v9)
    {
      sub_29A17F138(v7);
    }

    v7 += 16;
  }

  pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::GetValidatorMetadataForPlugins(v6, v13, v12);
  pxrInternal__aapl__pxrReserved__::UsdValidationContext::_InitializeFromValidatorMetadata(a1, v12, a3);
  v14 = v12;
  sub_29AAE7E2C(&v14);
  v12[0] = v13;
  sub_29A124AB0(v12);
  return a1;
}

void sub_29AAE5994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = (v13 + 72);
  sub_29AAE7EB4(&a13);
  v15 = *(v13 + 48);
  if (v15)
  {
    *(v13 + 56) = v15;
    operator delete(v15);
  }

  v16 = *(v13 + 24);
  if (v16)
  {
    *(v13 + 32) = v16;
    operator delete(v16);
  }

  v17 = *v13;
  if (*v13)
  {
    *(v13 + 8) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdValidationContext::UsdValidationContext(uint64_t a1, const pxrInternal__aapl__pxrReserved__::TfToken **a2, int a3)
{
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  pxrInternal__aapl__pxrReserved__::UsdValidationContext::_InitializeFromValidatorMetadata(a1, a2, a3);
  return a1;
}

void sub_29AAE5A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 72);
  sub_29AAE7EB4(&a10);
  v12 = *(v10 + 48);
  if (v12)
  {
    *(v10 + 56) = v12;
    operator delete(v12);
  }

  sub_29B2BE050((v10 + 24), v10);
  _Unwind_Resume(a1);
}

void sub_29AAE5A94(const pxrInternal__aapl__pxrReserved__::TfToken **a1, uint64_t a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdValidationRegistry>::_instance);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdValidationRegistry>::_CreateInstance();
  }

  v4 = *a1;
  v5 = a1[1];
  while (v4 != v5)
  {
    if (*(v4 + 97))
    {
      ValidatorSuiteByName = pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::GetOrLoadValidatorSuiteByName(v3, v4);
      if (ValidatorSuiteByName)
      {
        ValidatorByName = 0;
        v10 = 0;
        v11 = 0;
        sub_29AAE7DB0(&ValidatorByName, *(ValidatorSuiteByName + 104), *(ValidatorSuiteByName + 112), (*(ValidatorSuiteByName + 112) - *(ValidatorSuiteByName + 104)) >> 3);
        v7 = ValidatorByName;
        v8 = v10;
        if (ValidatorByName != v10)
        {
          do
          {
            sub_29AAE77A0(a2, v7, v7);
            ++v7;
          }

          while (v7 != v8);
          v7 = ValidatorByName;
        }

        if (v7)
        {
          v10 = v7;
          operator delete(v7);
        }
      }
    }

    else
    {
      ValidatorByName = pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::GetOrLoadValidatorByName(v3, v4);
      if (ValidatorByName)
      {
        sub_29AAE77A0(a2, &ValidatorByName, &ValidatorByName);
      }
    }

    v4 = (v4 + 104);
  }
}

void sub_29AAE5B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AAE5BB8(uint64_t **a1, uint64_t a2)
{
  sub_29A822A88(v17, *a1, a1[1]);
  v5 = *a1;
  v6 = a1[1];
  if (*a1 != v6)
  {
    do
    {
      v13[0] = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::GetTypeFromName(v5, v4);
      v14 = 0;
      v15 = 0;
      v16 = 0;
      pxrInternal__aapl__pxrReserved__::TfType::GetAllAncestorTypes(v13, &v14);
      v7 = v14;
      v8 = v15;
      if (v14 != v15)
      {
        do
        {
          pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v7);
          pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v19);
          sub_29A824F14(v17, &v19, &v19);
          if ((v19 & 7) != 0)
          {
            atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v7 = (v7 + 8);
        }

        while (v7 != v8);
        v7 = v14;
      }

      if (v7)
      {
        v15 = v7;
        operator delete(v7);
      }

      ++v5;
    }

    while (v5 != v6);
  }

  v15 = 0;
  v16 = 0;
  v14 = 0;
  v9 = 0;
  if (v18)
  {
    v10 = v18;
    do
    {
      ++v9;
      v10 = *v10;
    }

    while (v10);
  }

  sub_29A82516C(&v14, v18, 0, v9);
  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdValidationRegistry>::_instance);
  if (!v11)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdValidationRegistry>::_CreateInstance();
  }

  pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::GetValidatorMetadataForSchemaTypes(v11, &v14, v13);
  sub_29AAE5A94(v13, a2);
  v19 = v13;
  sub_29AAE7E2C(&v19);
  v13[0] = &v14;
  sub_29A124AB0(v13);
  return sub_29A155EF4(v17);
}

void sub_29AAE5D2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **p_p, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15)
{
  p_p = &__p;
  sub_29A124AB0(&p_p);
  sub_29A155EF4(&a15);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdValidationContext::_DistributeValidators(void *a1, pxrInternal__aapl__pxrReserved__::UsdValidationValidator ***a2)
{
  v24 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    v8 = 0;
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *v4;
      if (pxrInternal__aapl__pxrReserved__::UsdValidationValidator::_GetValidateLayerTask(*v4))
      {
        ++v6;
      }

      else if (pxrInternal__aapl__pxrReserved__::UsdValidationValidator::_GetValidateStageTask(v9))
      {
        ++v7;
      }

      else if (pxrInternal__aapl__pxrReserved__::UsdValidationValidator::_GetValidatePrimTask(v9))
      {
        ++v8;
      }

      ++v4;
    }

    while (v4 != v5);
  }

  sub_29A08AF9C(a1, v6);
  sub_29A08AF9C((a1 + 3), v7);
  sub_29A08AF9C((a1 + 6), v8);
  v10 = *a2;
  v11 = a2[1];
  if (*a2 != v11)
  {
    do
    {
      v22 = *v10;
      if (pxrInternal__aapl__pxrReserved__::UsdValidationValidator::_GetValidateLayerTask(v22))
      {
        sub_29A0A71C8(a1, &v22);
      }

      else if (pxrInternal__aapl__pxrReserved__::UsdValidationValidator::_GetValidateStageTask(v22))
      {
        sub_29A0A71C8((a1 + 3), &v22);
      }

      else if (pxrInternal__aapl__pxrReserved__::UsdValidationValidator::_GetValidatePrimTask(v22))
      {
        v12 = *(v22 + 9);
        v13 = *(v22 + 10);
        if (v12 == v13)
        {
          sub_29A0A71C8((a1 + 6), &v22);
        }

        else
        {
          do
          {
            v14 = a1[9];
            v15 = a1[10];
            if (v14 != v15)
            {
              while ((*v14 ^ *v12) >= 8)
              {
                v14 += 4;
                if (v14 == v15)
                {
                  goto LABEL_27;
                }
              }
            }

            if (v14 == v15)
            {
LABEL_27:
              v23 = v22;
              __p[1] = 0;
              v21 = 0;
              __p[0] = 0;
              sub_29AAE7FEC(__p, &v23, &v24, 1uLL);
              v16 = a1[10];
              if (v16 >= a1[11])
              {
                v18 = sub_29AAE8060((a1 + 9), v12, __p);
                v19 = __p[0];
                a1[10] = v18;
                if (v19)
                {
                  __p[1] = v19;
                  operator delete(v19);
                }
              }

              else
              {
                v17 = *v12;
                *v16 = *v12;
                if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                {
                  *v16 &= 0xFFFFFFFFFFFFFFF8;
                }

                *(v16 + 16) = 0;
                *(v16 + 24) = 0;
                *(v16 + 8) = *__p;
                *(v16 + 24) = v21;
                a1[10] = v16 + 32;
              }
            }

            else
            {
              sub_29A0A71C8((v14 + 1), &v22);
            }

            ++v12;
          }

          while (v12 != v13);
        }
      }

      ++v10;
    }

    while (v10 != v11);
  }
}

void sub_29AAE6034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdValidationContext::UsdValidationContext(uint64_t a1, pxrInternal__aapl__pxrReserved__::TfType **a2)
{
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  memset(v15, 0, sizeof(v15));
  sub_29A1D7F98(v15, (a2[1] - *a2) >> 3);
  v4 = *a2;
  v5 = a2[1];
  while (v4 != v5)
  {
    pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v4);
    sub_29AAE768C(v15);
    v4 = (v4 + 8);
  }

  v12 = 0u;
  v13 = 0u;
  v14 = 1065353216;
  sub_29AAE5BB8(v15, &v12);
  v10 = 0;
  v11 = 0;
  __p = 0;
  v6 = 0;
  if (v13)
  {
    v7 = v13;
    do
    {
      ++v6;
      v7 = *v7;
    }

    while (v7);
  }

  sub_29AAE7F74(&__p, v13, 0, v6);
  pxrInternal__aapl__pxrReserved__::UsdValidationContext::_DistributeValidators(a1, &__p);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  sub_29A0EB570(&v12);
  *&v12 = v15;
  sub_29A124AB0(&v12);
  return a1;
}

void sub_29AAE6164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_29A0EB570(&a13);
  a13 = v14 - 56;
  sub_29A124AB0(&a13);
  a13 = v13 + 72;
  sub_29AAE7EB4(&a13);
  v16 = *(v13 + 48);
  if (v16)
  {
    *(v13 + 56) = v16;
    operator delete(v16);
  }

  v17 = *(v13 + 24);
  if (v17)
  {
    *(v13 + 32) = v17;
    operator delete(v17);
  }

  v18 = *v13;
  if (*v13)
  {
    *(v13 + 8) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdValidationContext::UsdValidationContext(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdValidationValidator ***a2)
{
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  pxrInternal__aapl__pxrReserved__::UsdValidationContext::_DistributeValidators(a1, a2);
  return a1;
}

void sub_29AAE6234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 72);
  sub_29AAE7EB4(&a10);
  v12 = *(v10 + 48);
  if (v12)
  {
    *(v10 + 56) = v12;
    operator delete(v12);
  }

  sub_29B2BE050((v10 + 24), v10);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdValidationContext::UsdValidationContext(uint64_t a1, uint64_t **a2)
{
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 1065353216;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    v8 = 0;
    v9 = 0;
    __p = 0;
    v13 = 0;
    v14 = 0;
  }

  else
  {
    do
    {
      v5 = *v3;
      if (*v3)
      {
        __p = 0;
        v13 = 0;
        v14 = 0;
        sub_29AAE7DB0(&__p, *(v5 + 104), *(v5 + 112), (*(v5 + 112) - *(v5 + 104)) >> 3);
        v6 = __p;
        v7 = v13;
        if (__p != v13)
        {
          do
          {
            sub_29AAE77A0(&v15, v6, v6);
            ++v6;
          }

          while (v6 != v7);
          v6 = __p;
        }

        if (v6)
        {
          v13 = v6;
          operator delete(v6);
        }
      }

      ++v3;
    }

    while (v3 != v4);
    v8 = v16;
    __p = 0;
    v13 = 0;
    v14 = 0;
    v9 = 0;
    if (v16)
    {
      v10 = v16;
      do
      {
        ++v9;
        v10 = *v10;
      }

      while (v10);
    }
  }

  sub_29AAE7F74(&__p, v8, 0, v9);
  pxrInternal__aapl__pxrReserved__::UsdValidationContext::_DistributeValidators(a1, &__p);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  sub_29A0EB570(&v15);
  return a1;
}

void sub_29AAE63A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_29A0EB570(&a13);
  a13 = v13 + 72;
  sub_29AAE7EB4(&a13);
  v15 = *(v13 + 48);
  if (v15)
  {
    *(v13 + 56) = v15;
    operator delete(v15);
  }

  v16 = *(v13 + 24);
  if (v16)
  {
    *(v13 + 32) = v16;
    operator delete(v16);
  }

  v17 = *v13;
  if (*v13)
  {
    *(v13 + 8) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdValidationContext::Validate(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = sub_29B293A0C(a2);
  if (v7 & 1 | v6)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v11.__m_.__sig = 850045863;
    memset(v11.__m_.__opaque, 0, sizeof(v11.__m_.__opaque));
    v8[0] = a1;
    v8[1] = a2;
    v8[2] = a3;
    v8[3] = &v11;
    v9 = v8;
    v10[0] = &unk_2A2071038;
    v10[1] = &v9;
    tbb::interface7::internal::isolate_within_arena(v10, 0);
    std::mutex::~mutex(&v11);
  }

  else
  {
    v11.__m_.__sig = "usdValidation/context.cpp";
    *v11.__m_.__opaque = "Validate";
    *&v11.__m_.__opaque[8] = 287;
    *&v11.__m_.__opaque[16] = "UsdValidationErrorVector pxrInternal__aapl__pxrReserved__::UsdValidationContext::Validate(const SdfLayerHandle &) const";
    v11.__m_.__opaque[24] = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v11, 1, "Invalid layer provided to validate.");
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdValidationContext::Validate(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v16 = *MEMORY[0x29EDCA608];
  v10 = sub_29B2ACEC8(a2);
  if (v11 & 1 | v10)
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    v15.__m_.__sig = 850045863;
    memset(v15.__m_.__opaque, 0, sizeof(v15.__m_.__opaque));
    v12[0] = a1;
    v12[1] = a2;
    v12[2] = a5;
    v12[3] = &v15;
    v12[4] = a3;
    v12[5] = a4;
    v13 = v12;
    v14[0] = &unk_2A2071078;
    v14[1] = &v13;
    tbb::interface7::internal::isolate_within_arena(v14, 0);
    std::mutex::~mutex(&v15);
  }

  else
  {
    v15.__m_.__sig = "usdValidation/context.cpp";
    *v15.__m_.__opaque = "Validate";
    *&v15.__m_.__opaque[8] = 307;
    *&v15.__m_.__opaque[16] = "UsdValidationErrorVector pxrInternal__aapl__pxrReserved__::UsdValidationContext::Validate(const UsdStagePtr &, const Usd_PrimFlagsPredicate &, const UsdValidationTimeRange &) const";
    v15.__m_.__opaque[24] = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v15, 1, "Invalid stage provided to validate.");
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
  }
}

{
  v22 = *MEMORY[0x29EDCA608];
  v10 = sub_29B2ACEC8(a2);
  if (v11 & 1 | v10)
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    v21.__m_.__sig = 850045863;
    memset(v21.__m_.__opaque, 0, sizeof(v21.__m_.__opaque));
    v15[0] = a1;
    v15[1] = a2;
    v15[2] = a5;
    v15[3] = &v21;
    v15[4] = a3;
    __p = 0;
    v12 = *a4;
    v13 = *(a4 + 8);
    v14 = (v13 - *a4) >> 3;
    v17 = 0;
    v18 = 0;
    sub_29AAE83F4(&__p, v12, v13, v14);
    v19 = v15;
    v20[0] = &unk_2A20710B8;
    v20[1] = &v19;
    tbb::interface7::internal::isolate_within_arena(v20, 0);
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }

    std::mutex::~mutex(&v21);
  }

  else
  {
    v21.__m_.__sig = "usdValidation/context.cpp";
    *v21.__m_.__opaque = "Validate";
    *&v21.__m_.__opaque[8] = 350;
    *&v21.__m_.__opaque[16] = "UsdValidationErrorVector pxrInternal__aapl__pxrReserved__::UsdValidationContext::Validate(const UsdStagePtr &, const Usd_PrimFlagsPredicate &, const std::vector<UsdTimeCode> &) const";
    v21.__m_.__opaque[24] = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v21, 1, "Invalid stage provided to validate.");
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdValidationContext::Validate(pxrInternal__aapl__pxrReserved__ *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  UsdPrimDefaultPredicate = pxrInternal__aapl__pxrReserved__::GetUsdPrimDefaultPredicate(a1);
  v7 = UsdPrimDefaultPredicate[1].i64[0];
  v8.i64[0] = -8193;
  v8.i64[0] = vandq_s8(*UsdPrimDefaultPredicate, v8).u64[0];
  v8.i64[1] = vorrq_s8(*UsdPrimDefaultPredicate, vdupq_n_s64(0x2000uLL)).i64[1];
  v9 = v8;
  v10 = v7;
  pxrInternal__aapl__pxrReserved__::UsdValidationTimeRange::UsdValidationTimeRange(v11);
  pxrInternal__aapl__pxrReserved__::UsdValidationContext::Validate(a1, a2, &v9, v11, a3);
}

void pxrInternal__aapl__pxrReserved__::UsdValidationContext::Validate(pxrInternal__aapl__pxrReserved__ *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  UsdPrimDefaultPredicate = pxrInternal__aapl__pxrReserved__::GetUsdPrimDefaultPredicate(a1);
  v9 = UsdPrimDefaultPredicate[1].i64[0];
  v10.i64[0] = -8193;
  v10.i64[0] = vandq_s8(*UsdPrimDefaultPredicate, v10).u64[0];
  v10.i64[1] = vorrq_s8(*UsdPrimDefaultPredicate, vdupq_n_s64(0x2000uLL)).i64[1];
  v11 = v10;
  v12 = v9;
  pxrInternal__aapl__pxrReserved__::UsdValidationContext::Validate(a1, a2, &v11, a3, a4);
}

{
  UsdPrimDefaultPredicate = pxrInternal__aapl__pxrReserved__::GetUsdPrimDefaultPredicate(a1);
  v9 = UsdPrimDefaultPredicate[1].i64[0];
  v10.i64[0] = -8193;
  v10.i64[0] = vandq_s8(*UsdPrimDefaultPredicate, v10).u64[0];
  v10.i64[1] = vorrq_s8(*UsdPrimDefaultPredicate, vdupq_n_s64(0x2000uLL)).i64[1];
  v11 = v10;
  v12 = v9;
  pxrInternal__aapl__pxrReserved__::UsdValidationContext::Validate(a1, a2, &v11, a3, a4);
}

void pxrInternal__aapl__pxrReserved__::UsdValidationContext::Validate(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = *MEMORY[0x29EDCA608];
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v8.__m_.__sig = 850045863;
  memset(v8.__m_.__opaque, 0, sizeof(v8.__m_.__opaque));
  v4 = *(a3 + 16);
  v5[0] = *a3;
  v5[1] = v4;
  v6 = *(a3 + 32);
  v7 = 0;
  sub_29AAE6B50(a1, a2, a4, &v8, v5);
  sub_29AAE7C60(v5);
  std::mutex::~mutex(&v8);
}

{
  v10 = *MEMORY[0x29EDCA608];
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v9.__m_.__sig = 850045863;
  memset(v9.__m_.__opaque, 0, sizeof(v9.__m_.__opaque));
  memset(v7, 0, 24);
  sub_29AAE83F4(v7, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 3);
  v8 = 1;
  sub_29AAE6B50(a1, a2, a4, &v9, v7);
  sub_29AAE7C60(v7);
  std::mutex::~mutex(&v9);
}

void sub_29AAE6B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, std::mutex *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_29AAE7C60(&a9);
  std::mutex::~mutex(&a16);
  sub_29AAE45F0(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_29AAE6B50(uint64_t result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[6] = *MEMORY[0x29EDCA608];
  if (*a2 != a2[1])
  {
    v7[0] = result;
    v7[1] = a2;
    v7[2] = a3;
    v7[3] = a4;
    sub_29AAE8668(v8, a5);
    v5 = v7;
    v6[0] = &unk_2A2071150;
    v6[1] = &v5;
    tbb::interface7::internal::isolate_within_arena(v6, 0);
    return sub_29AAE7C60(v8);
  }

  return result;
}

void sub_29AAE6C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29AAE7C60(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdValidationContext::Validate(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = *MEMORY[0x29EDCA608];
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v8.__m_.__sig = 850045863;
  memset(v8.__m_.__opaque, 0, sizeof(v8.__m_.__opaque));
  v4 = *(a3 + 16);
  v5[0] = *a3;
  v5[1] = v4;
  v6 = *(a3 + 32);
  v7 = 0;
  sub_29AAE6CF4(a1, a2, a4, &v8, v5);
  sub_29AAE7C60(v5);
  std::mutex::~mutex(&v8);
}

{
  v10 = *MEMORY[0x29EDCA608];
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v9.__m_.__sig = 850045863;
  memset(v9.__m_.__opaque, 0, sizeof(v9.__m_.__opaque));
  memset(v7, 0, 24);
  sub_29AAE83F4(v7, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 3);
  v8 = 1;
  sub_29AAE6CF4(a1, a2, a4, &v9, v7);
  sub_29AAE7C60(v7);
  std::mutex::~mutex(&v9);
}

void sub_29AAE6CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, std::mutex *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_29AAE7C60(&a9);
  std::mutex::~mutex(&a16);
  sub_29AAE45F0(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_29AAE6CF4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[6] = *MEMORY[0x29EDCA608];
  result = sub_29A5CCD70(a2);
  if ((result & 1) == 0)
  {
    v13[0] = a1;
    v13[1] = a2;
    v13[2] = a3;
    v13[3] = a4;
    sub_29AAE8668(v14, a5);
    v11 = v13;
    v12[0] = &unk_2A20711A0;
    v12[1] = &v11;
    tbb::interface7::internal::isolate_within_arena(v12, 0);
    return sub_29AAE7C60(v14);
  }

  return result;
}

void sub_29AAE6EB8(_Unwind_Exception *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, std::mutex *a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_29AAE7C60(&a10);
  std::mutex::~mutex(&a16);
  sub_29AAE45F0(&a16);
  _Unwind_Resume(a1);
}

void sub_29AAE6FBC(_Unwind_Exception *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, std::mutex *a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_29AAE7C60(&a10);
  std::mutex::~mutex(&a16);
  sub_29AAE45F0(&a16);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::_AddErrors(uint64_t *a1, uint64_t *a2, std::mutex *this)
{
  if (*a1 != a1[1])
  {
    std::mutex::lock(this);
    sub_29AAE8944(a2, a2[1], *a1, a1[1], 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3));

    std::mutex::unlock(this);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdValidationContext::_ValidateLayer(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  result = sub_29B293A0C(a3);
  if (v10 & 1 | result || (result = sub_29B2BE090(v19), (result & 1) != 0))
  {
    v11 = *a1;
    v12 = a1[1];
    if (*a1 != v12)
    {
      do
      {
        v13 = *v11;
        v14 = *a3;
        v15 = a3[1];
        if (v15)
        {
          atomic_fetch_add_explicit(v15 + 2, 1u, memory_order_relaxed);
        }

        v16 = *(a2 + 256);
        v20[0] = 0;
        v20[1] = v16;
        v17 = tbb::internal::allocate_additional_child_of_proxy::allocate(v20, 0x38uLL);
        *(v17 - 11) = 1;
        *v17 = &unk_2A20711E0;
        v17[1] = v13;
        v17[2] = v14;
        v17[3] = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(v15 + 2, 1u, memory_order_relaxed);
        }

        v17[4] = a4;
        v17[5] = a5;
        v17[6] = a2 + 272;
        result = (***(v17 - 5))();
        if (v15)
        {
          if (atomic_fetch_add_explicit(v15 + 2, 0xFFFFFFFF, memory_order_release) == 1)
          {
            result = (*(*v15 + 8))(v15);
          }
        }

        ++v11;
      }

      while (v11 != v12);
    }
  }

  return result;
}

void sub_29AAE7218(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B28FFF4(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdValidationContext::_ValidateStage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_29B2ACEC8(a3);
  if (v4 & 1 | v3 || (result = sub_29B2BE0DC(v6), (result & 1) != 0))
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  return result;
}

void sub_29AAE73F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, atomic_uint *a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    if (atomic_fetch_add_explicit(a21 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a21 + 8))(a21);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_29AAE7478(uint64_t a1, __int128 *a2, int a3)
{
  v6 = *(*a1 + 24);
  v7 = *(*a1 + 32);
  if (v6 == v7)
  {
LABEL_14:
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  while (1)
  {
    v8 = *v6;
    if (a3 == 1)
    {
      if ((*(v8 + 96) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if (a3 || (*(v8 + 96) & 1) != 0)
    {
LABEL_9:
      v10 = *(a1 + 8);
      v9 = *(a1 + 16);
      v11 = *(a1 + 24);
      if (v11)
      {
        atomic_fetch_add_explicit(v11 + 2, 1u, memory_order_relaxed);
      }

      v17 = *(a1 + 32);
      v12 = a2[1];
      v19 = *a2;
      v20 = v12;
      v21 = *(a2 + 32);
      v13 = *(v10 + 256);
      v18[0] = 0;
      v18[1] = v13;
      v14 = tbb::internal::allocate_additional_child_of_proxy::allocate(v18, 0x60uLL);
      *(v14 - 11) = 1;
      *v14 = &unk_2A2071108;
      *(v14 + 8) = v8;
      *(v14 + 16) = v9;
      *(v14 + 24) = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(v11 + 2, 1u, memory_order_relaxed);
      }

      v15 = v19;
      v16 = v20;
      *(v14 + 32) = v17;
      *(v14 + 48) = v15;
      *(v14 + 64) = v16;
      *(v14 + 80) = v21;
      *(v14 + 88) = v10 + 272;
      (***(v14 - 40))();
      sub_29B2BE128(v11 == 0, &v19, v11);
    }

    if (++v6 == v7)
    {
      goto LABEL_14;
    }
  }
}

void sub_29AAE7664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A58BD10(va);
  _Unwind_Resume(a1);
}

unint64_t sub_29AAE768C(void *a1)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v3 >= v2)
  {
    v5 = (v3 - *a1) >> 3;
    if ((v5 + 1) >> 61)
    {
      sub_29A00C9A4();
    }

    v6 = v2 - *a1;
    v7 = v6 >> 2;
    if (v6 >> 2 <= (v5 + 1))
    {
      v7 = v5 + 1;
    }

    if (v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      v8 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v7;
    }

    v15 = a1;
    if (v8)
    {
      v9 = sub_29A00C9BC(a1, v8);
    }

    else
    {
      v9 = 0;
    }

    v11 = v9;
    v12 = &v9[8 * v5];
    v14 = &v9[8 * v8];
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v12);
    v13 = v12 + 8;
    sub_29A15412C(a1, &v11);
    v4 = a1[1];
    sub_29A1541C0(&v11);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(a1[1]);
    v4 = v3 + 8;
    a1[1] = v3 + 8;
  }

  a1[1] = v4;
  return v4 - 8;
}

void *sub_29AAE77A0(uint64_t a1, void *a2, void *a3)
{
  v6 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v7 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v6 >> 47) ^ v6);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v3 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }
    }

    else
    {
      v3 = v8 & (v9 - 1);
    }

    v11 = *(*a1 + 8 * v3);
    if (v11)
    {
      for (i = *v11; i; i = *i)
      {
        v13 = i[1];
        if (v13 == v8)
        {
          if (i[2] == *a2)
          {
            return i;
          }
        }

        else
        {
          if (v10.u32[0] > 1uLL)
          {
            if (v13 >= v9)
            {
              v13 %= v9;
            }
          }

          else
          {
            v13 &= v9 - 1;
          }

          if (v13 != v3)
          {
            break;
          }
        }
      }
    }
  }

  i = operator new(0x18uLL);
  *i = 0;
  i[1] = v8;
  i[2] = *a3;
  v14 = (*(a1 + 24) + 1);
  v15 = *(a1 + 32);
  if (!v9 || (v15 * v9) < v14)
  {
    v16 = 1;
    if (v9 >= 3)
    {
      v16 = (v9 & (v9 - 1)) != 0;
    }

    v17 = v16 | (2 * v9);
    v18 = vcvtps_u32_f32(v14 / v15);
    if (v17 <= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    sub_29A019AA0(a1, v19);
    v9 = *(a1 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }

      else
      {
        v3 = v8;
      }
    }

    else
    {
      v3 = (v9 - 1) & v8;
    }
  }

  v20 = *a1;
  v21 = *(*a1 + 8 * v3);
  if (v21)
  {
    *i = *v21;
LABEL_38:
    *v21 = i;
    goto LABEL_39;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v20 + 8 * v3) = a1 + 16;
  if (*i)
  {
    v22 = *(*i + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v22 >= v9)
      {
        v22 %= v9;
      }
    }

    else
    {
      v22 &= v9 - 1;
    }

    v21 = (*a1 + 8 * v22);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return i;
}

void sub_29AAE79F8(uint64_t a1)
{
  v2[43] = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 8);
  pxrInternal__aapl__pxrReserved__::WorkDispatcher::WorkDispatcher(v2);
  pxrInternal__aapl__pxrReserved__::UsdValidationContext::_ValidateLayer(**v1, v2, (*v1)[1], (*v1)[2], (*v1)[3]);
  pxrInternal__aapl__pxrReserved__::WorkDispatcher::~WorkDispatcher(v2);
}

void sub_29AAE7A94(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 8);
  pxrInternal__aapl__pxrReserved__::WorkDispatcher::WorkDispatcher(v7);
  v2 = **v1;
  v3 = (*v1)[1];
  v4 = (*v1)[5];
  v5 = *(v4 + 32);
  v6 = *(v4 + 16);
  v8[0] = *v4;
  v8[1] = v6;
  v9 = v5;
  v10 = 0;
  pxrInternal__aapl__pxrReserved__::UsdValidationContext::_ValidateStage(v2, v7, v3);
  sub_29AAE7C60(v8);
  pxrInternal__aapl__pxrReserved__::WorkDispatcher::~WorkDispatcher(v7);
}

void sub_29AAE7B34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AAE7C60(v2 - 80);
  pxrInternal__aapl__pxrReserved__::WorkDispatcher::~WorkDispatcher(va);
  _Unwind_Resume(a1);
}

void sub_29AAE7B60(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 8);
  pxrInternal__aapl__pxrReserved__::WorkDispatcher::WorkDispatcher(v5);
  v2 = *v1;
  v3 = **v1;
  v4 = v2[1];
  memset(v6, 0, 24);
  sub_29AAE83F4(v6, v2[5], v2[6], (v2[6] - v2[5]) >> 3);
  v7 = 1;
  pxrInternal__aapl__pxrReserved__::UsdValidationContext::_ValidateStage(v3, v5, v4);
  sub_29AAE7C60(v6);
  pxrInternal__aapl__pxrReserved__::WorkDispatcher::~WorkDispatcher(v5);
}

void sub_29AAE7C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_29AAE7C60(v9 - 104);
  pxrInternal__aapl__pxrReserved__::WorkDispatcher::~WorkDispatcher(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29AAE7C60(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (v2 != -1)
  {
    result = (off_2A20710E8[v2])(&v3, result);
  }

  *(v1 + 40) = -1;
  return result;
}

void sub_29AAE7CBC(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

uint64_t sub_29AAE7CD0(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  pxrInternal__aapl__pxrReserved__::UsdValidationValidator::Validate(*(a1 + 8), a1 + 16, a1 + 48, v7);
  pxrInternal__aapl__pxrReserved__::_AddErrors(v7, *(a1 + 32), *(a1 + 40));
  v8 = v7;
  sub_29AAE45F0(&v8);
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 88));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29AAE7D88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v3 - 24) = v2;
  sub_29AAE45F0((v3 - 24));
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

void *sub_29AAE7DB0(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A00C968(result, a4);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_29AAE7E10(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AAE7E2C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 104;
        sub_29B2BDEE8(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_29AAE7EB4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29AAE7F08(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_29AAE7F08(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 32)
  {
    v5 = *(i - 24);
    if (v5)
    {
      *(i - 16) = v5;
      operator delete(v5);
    }

    v7 = *(i - 32);
    v6 = v7;
    if ((v7 & 7) != 0)
    {
      atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  *(a1 + 8) = a2;
}

char *sub_29AAE7F74(char *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A00C968(result, a4);
    v7 = *(v6 + 1);
    while (a2 != a3)
    {
      *v7++ = a2[2];
      a2 = *a2;
    }

    *(v6 + 1) = v7;
  }

  return result;
}

void sub_29AAE7FD0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29AAE7FEC(char *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A00C968(result, a4);
    v7 = *(v6 + 1);
    while (a2 != a3)
    {
      v8 = *a2++;
      *v7++ = v8;
    }

    *(v6 + 1) = v7;
  }

  return result;
}

void sub_29AAE8044(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AAE8060(uint64_t a1, uint64_t *a2, __n128 *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_29A00C9A4();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 4 > v4)
  {
    v4 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v20 = a1;
  if (v9)
  {
    v10 = sub_29A10CB10(a1, v9);
  }

  else
  {
    v10 = 0;
  }

  v17 = v10;
  v18 = &v10[4 * v3];
  *(&v19 + 1) = &v10[4 * v9];
  sub_29A410D94(v18, a2, a3);
  *&v19 = v18 + 4;
  v11 = *(a1 + 8);
  v12 = (v18 + *a1 - v11);
  sub_29AAE8174(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_29AAE8344(&v17);
  return v16;
}

void sub_29AAE8160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AAE8344(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AAE8174(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a4;
  v8 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      *a4 = *v4;
      *v4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      a4[3] = 0;
      *(a4 + 1) = *(v4 + 1);
      a4[3] = v4[3];
      v4[1] = 0;
      v4[2] = 0;
      v4[3] = 0;
      v4 += 4;
      a4 += 4;
    }

    while (v4 != a3);
    v9 = a4;
  }

  v7 = 1;
  sub_29AAE8224(a1, a2, a3);
  return sub_29AAE8290(v6);
}

void sub_29AAE8224(uint64_t a1, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v5 = v4[1];
      if (v5)
      {
        v4[2] = v5;
        operator delete(v5);
      }

      if ((*v4 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v4 += 4;
    }

    while (v4 != a3);
  }
}

uint64_t sub_29AAE8290(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AAE82DC(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_29AAE82DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      v7 = *(v6 - 24);
      if (v7)
      {
        *(v6 - 16) = v7;
        operator delete(v7);
      }

      v9 = *(v6 - 32);
      v6 -= 32;
      v8 = v9;
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    while (v6 != a5);
  }
}

uint64_t sub_29AAE8344(uint64_t a1)
{
  sub_29AAE837C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29AAE837C(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    v5 = (i - 32);
    *(a1 + 16) = i - 32;
    v6 = *(i - 24);
    if (v6)
    {
      *(i - 16) = v6;
      operator delete(v6);
    }

    if ((*v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void *sub_29AAE83F4(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A00C968(result, a4);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_29AAE8454(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AAE8474(uint64_t a1)
{
  v2[43] = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 8);
  pxrInternal__aapl__pxrReserved__::WorkDispatcher::WorkDispatcher(v2);
  sub_29AAE8504(*v1);
  pxrInternal__aapl__pxrReserved__::WorkDispatcher::~WorkDispatcher(v2);
}

void sub_29AAE8504(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (!v1)
  {
    v2 = *(a1 + 48);
    v6[0] = *(a1 + 32);
    v6[1] = v2;
    v7 = *(a1 + 64);
    pxrInternal__aapl__pxrReserved__::UsdValidationContext::_ValidatePrims<std::vector<pxrInternal__aapl__pxrReserved__::UsdPrim>>();
  }

  if (v1 != 1)
  {
    sub_29A151D68();
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  sub_29AAE83F4(&v3, *(a1 + 32), *(a1 + 40), (*(a1 + 40) - *(a1 + 32)) >> 3);
  if (v3 != v4)
  {
    pxrInternal__aapl__pxrReserved__::UsdValidationTimeRange::UsdValidationTimeRange(v6);
    pxrInternal__aapl__pxrReserved__::UsdValidationContext::_ValidatePrims<std::vector<pxrInternal__aapl__pxrReserved__::UsdPrim>>();
  }

  if (v3)
  {
    v4 = v3;
    operator delete(v3);
  }
}

void sub_29AAE8648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AAE8668(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 40) = -1;
  sub_29AAE86B0(a1, a2);
  return a1;
}

uint64_t sub_29AAE86B0(uint64_t a1, uint64_t a2)
{
  result = sub_29AAE7C60(a1);
  v5 = *(a2 + 40);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_2A2071180[v5])(&v6, a2);
    *(a1 + 40) = v5;
  }

  return result;
}

__n128 sub_29AAE8714(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  v4 = *(a2 + 16);
  *(v2 + 32) = *(a2 + 32);
  *v2 = result;
  *(v2 + 16) = v4;
  return result;
}

void *sub_29AAE872C(void **a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return sub_29AAE83F4(v2, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
}

void sub_29AAE8750(uint64_t a1)
{
  v2[43] = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 8);
  pxrInternal__aapl__pxrReserved__::WorkDispatcher::WorkDispatcher(v2);
  sub_29AAE87E0(*v1);
  pxrInternal__aapl__pxrReserved__::WorkDispatcher::~WorkDispatcher(v2);
}

void sub_29AAE87E0(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (!v1)
  {
    v2 = *(a1 + 48);
    v6[0] = *(a1 + 32);
    v6[1] = v2;
    v7 = *(a1 + 64);
    pxrInternal__aapl__pxrReserved__::UsdValidationContext::_ValidatePrims<pxrInternal__aapl__pxrReserved__::UsdPrimRange>();
  }

  if (v1 != 1)
  {
    sub_29A151D68();
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  sub_29AAE83F4(&v3, *(a1 + 32), *(a1 + 40), (*(a1 + 40) - *(a1 + 32)) >> 3);
  if (v3 != v4)
  {
    pxrInternal__aapl__pxrReserved__::UsdValidationTimeRange::UsdValidationTimeRange(v6);
    pxrInternal__aapl__pxrReserved__::UsdValidationContext::_ValidatePrims<pxrInternal__aapl__pxrReserved__::UsdPrimRange>();
  }

  if (v3)
  {
    v4 = v3;
    operator delete(v3);
  }
}

void sub_29AAE8924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AAE8944(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0x8E38E38E38E38E39 * ((v9 - v10) >> 3)) >= a5)
    {
      v18 = v10 - a2;
      if ((0x8E38E38E38E38E39 * ((v10 - a2) >> 3)) >= a5)
      {
        v20 = 9 * a5;
        sub_29AAE8B50(a1, a2, a1[1], a2 + 72 * a5);
        v19 = v7 + 8 * v20;
      }

      else
      {
        a1[1] = sub_29AAE8CC0(a1, v18 + a3, a4, a1[1]);
        if (v18 < 1)
        {
          return v5;
        }

        sub_29AAE8B50(a1, v5, v10, v5 + 72 * a5);
        v19 = v18 + v7;
      }

      sub_29AAE9104(v26, v7, v19, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 - 0x71C71C71C71C71C7 * ((v10 - *a1) >> 3);
    if (v12 > 0x38E38E38E38E38ELL)
    {
      sub_29A00C9A4();
    }

    v13 = a2 - v11;
    v14 = 0x8E38E38E38E38E39 * ((v9 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x1C71C71C71C71C7)
    {
      v15 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v15 = v12;
    }

    v16 = 0x8E38E38E38E38E39 * (v13 >> 3);
    v29 = a1;
    if (v15)
    {
      v17 = sub_29A09C03C(a1, v15);
    }

    else
    {
      v17 = 0;
    }

    v21 = &v17[72 * v16];
    v26[0] = v17;
    v26[1] = v21;
    v27 = v21;
    v28 = &v17[72 * v15];
    v22 = 9 * a5;
    v23 = &v21[72 * a5];
    v24 = 8 * v22;
    do
    {
      sub_29AAE8D6C(v29, v21, v7);
      v21 += 72;
      v7 += 72;
      v24 -= 72;
    }

    while (v24);
    v27 = v23;
    v5 = sub_29AAE8C04(a1, v26, v5);
    sub_29AAE4104(v26);
  }

  return v5;
}

uint64_t sub_29AAE8B50(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8 = *v9;
      *(v8 + 8) = *(v9 + 8);
      *(v9 + 8) = 0;
      *(v8 + 16) = *(v9 + 16);
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      *(v8 + 24) = 0;
      *(v8 + 24) = *(v9 + 24);
      *(v8 + 40) = *(v9 + 40);
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
      v10 = *(v9 + 48);
      *(v8 + 64) = *(v9 + 64);
      *(v8 + 48) = v10;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      *(v9 + 48) = 0;
      v9 += 72;
      v8 += 72;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_29AAE8F9C(&v12, a2, v7, v6);
}

uint64_t sub_29AAE8C04(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  sub_29AAE3F24(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  sub_29AAE3F24(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_29AAE8CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_29AAE8D6C(a1, v4, v6);
      v6 += 72;
      v4 = v12 + 72;
      v12 += 72;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_29AAE4078(v9);
  return v4;
}

void *sub_29AAE8D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  v5 = *(a3 + 8);
  *(a2 + 8) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a2 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(a3 + 16);
  *(a2 + 24) = 0;
  *(a2 + 16) = v6;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  result = sub_29AAE8E68((a2 + 24), *(a3 + 24), *(a3 + 32), 0xCCCCCCCCCCCCCCCDLL * ((*(a3 + 32) - *(a3 + 24)) >> 3));
  if (*(a3 + 71) < 0)
  {
    return sub_29A008D14((a2 + 48), *(a3 + 48), *(a3 + 56));
  }

  v8 = *(a3 + 48);
  *(a2 + 64) = *(a3 + 64);
  *(a2 + 48) = v8;
  return result;
}

void sub_29AAE8E30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AAE4374(va);
  v4 = *(v2 + 8);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void *sub_29AAE8E68(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A10E7C8(result, a4);
    result = sub_29AAE8EF0(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29AAE8ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29AAE4374(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29AAE8EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_29B2BDC48(a1, v4, v6);
      v6 += 40;
      v4 = v12 + 40;
      v12 += 40;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_29AAE42B4(v9);
  return v4;
}

uint64_t sub_29AAE8F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = a3 + v7;
      *(a4 + v7 - 72) = *(a3 + v7 - 72);
      if (a3 != a4)
      {
        v10 = *(v8 - 64);
        if ((v10 & 7) != 0)
        {
          atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        *(v8 - 64) = *(v9 - 64);
        *(v9 - 64) = 0;
      }

      *(v8 - 56) = *(v9 - 56);
      sub_29AAE9098((v8 - 48));
      *(v8 - 48) = *(v9 - 48);
      *(v8 - 32) = *(v9 - 32);
      *(v9 - 48) = 0;
      *(v9 - 40) = 0;
      *(v9 - 32) = 0;
      v11 = (v8 - 24);
      if (*(v8 - 1) < 0)
      {
        operator delete(*v11);
      }

      v12 = a3 + v7;
      v13 = *(a3 + v7 - 24);
      *(v8 - 8) = *(a3 + v7 - 8);
      *v11 = v13;
      *(v12 - 1) = 0;
      *(v12 - 24) = 0;
      v7 -= 72;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

void sub_29AAE9098(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 40;
        sub_29AAE4340(a1, v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_29AAE9104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v5 = a3;
  v6 = a2 + 32;
  do
  {
    v7 = v6 - 32;
    *a4 = *(v6 - 32);
    sub_29A166F2C((a4 + 8), (v6 - 24));
    *(a4 + 16) = *(v6 - 16);
    if (a4 != v6 - 32)
    {
      sub_29AAE91BC(a4 + 24, *(v6 - 8), *v6, 0xCCCCCCCCCCCCCCCDLL * ((*v6 - *(v6 - 8)) >> 3));
    }

    std::string::operator=((a4 + 48), (v6 + 16));
    a4 += 72;
    v6 += 72;
  }

  while (v7 + 72 != v5);
  return v5;
}

uint64_t sub_29AAE91BC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_29AAE9098(a1);
    if (a4 > 0x666666666666666)
    {
      sub_29A00C9A4();
    }

    v9 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
    {
      v10 = 0x666666666666666;
    }

    else
    {
      v10 = v9;
    }

    sub_29A10E7C8(a1, v10);
    result = sub_29AAE8EF0(a1, a2, a3, *(a1 + 8));
    goto LABEL_11;
  }

  v12 = *(a1 + 8) - v8;
  if (0xCCCCCCCCCCCCCCCDLL * (v12 >> 3) < a4)
  {
    sub_29AAE932C(&v16, a2, a2 + v12, v8);
    result = sub_29AAE8EF0(a1, a2 + v12, a3, *(a1 + 8));
LABEL_11:
    *(a1 + 8) = result;
    return result;
  }

  result = sub_29AAE932C(&v17, a2, a3, v8);
  v14 = v13;
  v15 = *(a1 + 8);
  if (v15 != v13)
  {
    do
    {
      v15 -= 40;
      result = sub_29AAE4340(a1, v15);
    }

    while (v15 != v14);
  }

  *(a1 + 8) = v14;
  return result;
}

uint64_t sub_29AAE932C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    *a4 = *v5;
    sub_29B28FD1C((a4 + 8), (v5 + 8));
    *(a4 + 16) = *(v5 + 16);
    sub_29B28FD1C((a4 + 24), (v5 + 24));
    sub_29A2258F0((a4 + 32), (v5 + 32));
    sub_29A225948((a4 + 36), (v5 + 36));
    a4 += 40;
    v5 += 40;
  }

  while (v5 != v6);
  return v6;
}

uint64_t sub_29AAE93C4(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  pxrInternal__aapl__pxrReserved__::UsdValidationValidator::Validate(*(a1 + 8), v7);
  pxrInternal__aapl__pxrReserved__::_AddErrors(v7, *(a1 + 32), *(a1 + 40));
  v8 = v7;
  sub_29AAE45F0(&v8);
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 48));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29AAE9478(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v3 - 24) = v2;
  sub_29AAE45F0((v3 - 24));
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AAE94A0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(a1 - 11) = 1;
  v6 = *a2;
  *a1 = &unk_2A2071228;
  *(a1 + 8) = v6;
  *(a1 + 16) = *(a2 + 2);
  v7 = a2[2];
  *(a1 + 24) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 48), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 32), a2 + 6);
  sub_29A1E2240((a1 + 36), a2 + 7);
  v8 = a2[4];
  *(a1 + 40) = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 40) &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(a2 + 5);
  v10 = *(a2 + 7);
  v11 = *(a2 + 9);
  *(a1 + 96) = *(a2 + 88);
  *(a1 + 64) = v10;
  *(a1 + 80) = v11;
  *(a1 + 48) = v9;
  *(a1 + 104) = a3;
  return a1;
}

uint64_t sub_29AAE9580(uint64_t a1)
{
  *a1 = &unk_2A2071228;
  v2 = *(a1 + 40);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  v4 = *(a1 + 24);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  return a1;
}

void sub_29AAE95F8(void *a1)
{
  *a1 = &unk_2A2071228;
  v2 = *(a1 + 5);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 9);
  sub_29A1DE3A4(a1 + 8);
  v4 = *(a1 + 3);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  operator delete(a1);
}

uint64_t sub_29AAE9680(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  pxrInternal__aapl__pxrReserved__::UsdValidationValidator::Validate(*(a1 + 8), a1 + 16, a1 + 64, v7);
  pxrInternal__aapl__pxrReserved__::_AddErrors(v7, *(a1 + 48), *(a1 + 56));
  v8 = v7;
  sub_29AAE45F0(&v8);
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 104));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29AAE9738(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v3 - 24) = v2;
  sub_29AAE45F0((v3 - 24));
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AAE9760(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(a1 - 11) = 1;
  v6 = *a2;
  *a1 = &unk_2A2071270;
  *(a1 + 8) = v6;
  *(a1 + 16) = *(a2 + 2);
  v7 = a2[2];
  *(a1 + 24) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 48), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 32), a2 + 6);
  sub_29A1E2240((a1 + 36), a2 + 7);
  v8 = a2[4];
  *(a1 + 40) = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 40) &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(a2 + 5);
  v10 = *(a2 + 7);
  v11 = *(a2 + 9);
  *(a1 + 96) = *(a2 + 88);
  *(a1 + 64) = v10;
  *(a1 + 80) = v11;
  *(a1 + 48) = v9;
  *(a1 + 104) = a3;
  return a1;
}

uint64_t sub_29AAE9840(uint64_t a1)
{
  *a1 = &unk_2A2071270;
  v2 = *(a1 + 40);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  v4 = *(a1 + 24);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  return a1;
}

void sub_29AAE98B8(void *a1)
{
  *a1 = &unk_2A2071270;
  v2 = *(a1 + 5);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 9);
  sub_29A1DE3A4(a1 + 8);
  v4 = *(a1 + 3);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  operator delete(a1);
}

uint64_t sub_29AAE9940(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  pxrInternal__aapl__pxrReserved__::UsdValidationValidator::Validate(*(a1 + 8), a1 + 16, a1 + 64, v7);
  pxrInternal__aapl__pxrReserved__::_AddErrors(v7, *(a1 + 48), *(a1 + 56));
  v8 = v7;
  sub_29AAE45F0(&v8);
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 104));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29AAE99F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v3 - 24) = v2;
  sub_29AAE45F0((v3 - 24));
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AAE9A20(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(a1 - 11) = 1;
  v6 = *a2;
  *a1 = &unk_2A20712B8;
  *(a1 + 8) = v6;
  *(a1 + 16) = *(a2 + 2);
  v7 = a2[2];
  *(a1 + 24) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 48), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 32), a2 + 6);
  sub_29A1E2240((a1 + 36), a2 + 7);
  v8 = a2[4];
  *(a1 + 40) = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 40) &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(a2 + 5);
  v10 = *(a2 + 7);
  v11 = *(a2 + 9);
  *(a1 + 96) = *(a2 + 88);
  *(a1 + 64) = v10;
  *(a1 + 80) = v11;
  *(a1 + 48) = v9;
  *(a1 + 104) = a3;
  return a1;
}

uint64_t sub_29AAE9B00(uint64_t a1)
{
  *a1 = &unk_2A20712B8;
  v2 = *(a1 + 40);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  v4 = *(a1 + 24);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  return a1;
}

void sub_29AAE9B78(void *a1)
{
  *a1 = &unk_2A20712B8;
  v2 = *(a1 + 5);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 9);
  sub_29A1DE3A4(a1 + 8);
  v4 = *(a1 + 3);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  operator delete(a1);
}

uint64_t sub_29AAE9C00(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  pxrInternal__aapl__pxrReserved__::UsdValidationValidator::Validate(*(a1 + 8), a1 + 16, a1 + 64, v7);
  pxrInternal__aapl__pxrReserved__::_AddErrors(v7, *(a1 + 48), *(a1 + 56));
  v8 = v7;
  sub_29AAE45F0(&v8);
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 104));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29AAE9CB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v3 - 24) = v2;
  sub_29AAE45F0((v3 - 24));
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AAE9CE0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(a1 - 11) = 1;
  v6 = *a2;
  *a1 = &unk_2A2071300;
  *(a1 + 8) = v6;
  *(a1 + 16) = *(a2 + 2);
  v7 = a2[2];
  *(a1 + 24) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 48), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 32), a2 + 6);
  sub_29A1E2240((a1 + 36), a2 + 7);
  v8 = a2[4];
  *(a1 + 40) = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 40) &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(a2 + 5);
  v10 = *(a2 + 7);
  v11 = *(a2 + 9);
  *(a1 + 96) = *(a2 + 88);
  *(a1 + 64) = v10;
  *(a1 + 80) = v11;
  *(a1 + 48) = v9;
  *(a1 + 104) = a3;
  return a1;
}

uint64_t sub_29AAE9DC0(uint64_t a1)
{
  *a1 = &unk_2A2071300;
  v2 = *(a1 + 40);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  v4 = *(a1 + 24);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  return a1;
}

void sub_29AAE9E38(void *a1)
{
  *a1 = &unk_2A2071300;
  v2 = *(a1 + 5);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 9);
  sub_29A1DE3A4(a1 + 8);
  v4 = *(a1 + 3);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  operator delete(a1);
}

uint64_t sub_29AAE9EC0(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  pxrInternal__aapl__pxrReserved__::UsdValidationValidator::Validate(*(a1 + 8), a1 + 16, a1 + 64, v7);
  pxrInternal__aapl__pxrReserved__::_AddErrors(v7, *(a1 + 48), *(a1 + 56));
  v8 = v7;
  sub_29AAE45F0(&v8);
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 104));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29AAE9F78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v3 - 24) = v2;
  sub_29AAE45F0((v3 - 24));
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

void sub_29AAE9FF0()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2071338, 0, "UsdValidationErrorType::None", "None");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2071338, 1, "UsdValidationErrorType::Error", "Error");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2071338, 2, "UsdValidationErrorType::Warn", "Warn");

  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2071338, 3, "UsdValidationErrorType::Info", "Info");
}

double pxrInternal__aapl__pxrReserved__::UsdValidationError::UsdValidationError(pxrInternal__aapl__pxrReserved__::UsdValidationError *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  return result;
}

{
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdValidationError::UsdValidationError(uint64_t a1, uint64_t *a2, int *a3, uint64_t *a4, __int128 *a5)
{
  v7 = *a2;
  *(a1 + 8) = *a2;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *a3;
  *(a1 + 24) = 0;
  *(a1 + 16) = v8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_29AAE8E68((a1 + 24), *a4, a4[1], 0xCCCCCCCCCCCCCCCDLL * ((a4[1] - *a4) >> 3));
  if (*(a5 + 23) < 0)
  {
    sub_29A008D14((a1 + 48), *a5, *(a5 + 1));
  }

  else
  {
    v9 = *a5;
    *(a1 + 64) = *(a5 + 2);
    *(a1 + 48) = v9;
  }

  *a1 = 0;
  return a1;
}

void sub_29AAEA18C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AAE4374(va);
  v4 = *(v2 + 8);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdValidationError::GetIdentifier(pxrInternal__aapl__pxrReserved__::UsdValidationError *this@<X0>, atomic_uint **a2@<X8>)
{
  v3 = *this;
  if (*this)
  {
    if (*(this + 1))
    {
      v5 = *v3 & 0xFFFFFFFFFFFFFFF8;
      if (v5)
      {
        EmptyString = (v5 + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(this);
      }

      v9 = atomic_load(&qword_2A1748200);
      if (!v9)
      {
        v9 = sub_29AAEA54C();
      }

      if ((*v9 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v10 = ((*v9 & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v10 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
      }

      Identifier = pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(EmptyString, v10, &v18);
      if ((*(this + 1) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v12 = ((*(this + 1) & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v12 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Identifier);
      }

      v13 = *(v12 + 23);
      if (v13 >= 0)
      {
        v14 = v12;
      }

      else
      {
        v14 = *v12;
      }

      if (v13 >= 0)
      {
        v15 = *(v12 + 23);
      }

      else
      {
        v15 = v12[1];
      }

      v16 = std::string::append(&v18, v14, v15);
      v17 = *&v16->__r_.__value_.__l.__data_;
      v20 = v16->__r_.__value_.__r.__words[2];
      *__p = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      pxrInternal__aapl__pxrReserved__::TfToken::TfToken(a2);
      if (SHIBYTE(v20) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v7 = *v3;
      *a2 = v7;
      if ((v7 & 7) != 0)
      {
        v8 = (v7 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed) & 1) == 0)
        {
          *a2 = v8;
        }
      }
    }
  }

  else
  {
    __p[0] = "usdValidation/error.cpp";
    __p[1] = "GetIdentifier";
    v20 = 70;
    v21 = "TfToken pxrInternal__aapl__pxrReserved__::UsdValidationError::GetIdentifier() const";
    v22 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__p, 1, "Validator not set on ValidationError. Possibly this validation error was not created via a call to UsdValidationValidator::Validate(), which is responsible to set the validator on the error.");
    *a2 = 0;
  }
}

void sub_29AAEA350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdValidationError::GetErrorAsString(pxrInternal__aapl__pxrReserved__::UsdValidationError *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 4);
  if (*this)
  {
    if (v3)
    {
      v4 = __p;
      pxrInternal__aapl__pxrReserved__::TfEnum::GetDisplayName(qword_2A2071338, v3, __p);
      if (v18 < 0)
      {
        v4 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::UsdValidationError::GetIdentifier(this, &v16);
      if ((v16 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = ((v16 & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
      }

      if (*(EmptyString + 23) < 0)
      {
        EmptyString = *EmptyString;
      }

      v13 = (this + 48);
      if (*(this + 71) < 0)
      {
        v13 = *v13;
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: (%s) %s", v6, v7, v4, EmptyString, v13);
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

LABEL_23:
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      return;
    }
  }

  else if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfEnum::GetDisplayName(qword_2A2071338, v3, __p);
    if (v18 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    v12 = (this + 48);
    if (*(this + 71) < 0)
    {
      v12 = *v12;
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v9, v10, v11, v12);
    goto LABEL_23;
  }

  if (*(this + 71) < 0)
  {
    v14 = *(this + 6);
    v15 = *(this + 7);

    sub_29A008D14(a2, v14, v15);
  }

  else
  {
    *a2 = *(this + 3);
    *(a2 + 16) = *(this + 8);
  }
}

void sub_29AAEA504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_29AAEA54C()
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, ".", 0);
  v1 = *v0;
  v5 = v1;
  if ((v1 & 7) != 0)
  {
    v2 = (v1 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed) & 1) == 0)
    {
      v5 = v2;
    }
  }

  v0[1] = 0;
  v0[2] = 0;
  v0[3] = 0;
  sub_29A12EF7C(v0 + 1, &v5, &v6, 1uLL);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = 0;
  atomic_compare_exchange_strong(&qword_2A1748200, &v3, v0);
  if (v3)
  {
    v5 = (v0 + 1);
    sub_29A124AB0(&v5);
    if ((*v0 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v0 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(v0);
    return atomic_load(&qword_2A1748200);
  }

  return v0;
}

void sub_29AAEA66C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  operator delete(v9);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdValidationRegistry>::GetInstance()
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdValidationRegistry>::_instance);
  if (!result)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdValidationRegistry>::_CreateInstance();
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdValidationRegistry>::_CreateInstance(unint64_t *a1)
{
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B4E0B12 & 0x7FFFFFFFFFFFFFFFLL), &v11);
  v2 = std::string::insert(&v11, 0, "Create Singleton ");
  v3 = *&v2->__r_.__value_.__l.__data_;
  v15 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  sub_29A0EC164(&v12, "Tf", "TfSingleton::_CreateInstance", __p);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::Tf_SingletonPyGILDropper(&v11);
  if (atomic_exchange(pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdValidationRegistry>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::UsdValidationRegistry*> &)::isInitializing, 1u))
  {
    while (!atomic_load(a1))
    {
      sched_yield();
    }
  }

  else
  {
    if (!atomic_load(a1))
    {
      v8 = operator new(0x198uLL);
      pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::UsdValidationRegistry(v8);
      v10 = atomic_load(a1);
      if (v10)
      {
        if (v8 != v10)
        {
          __p[0] = "tf/instantiateSingleton.h";
          __p[1] = "_CreateInstance";
          v15 = 86;
          v16 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdValidationRegistry>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::UsdValidationRegistry]";
          v17 = 0;
          v18 = 4;
          pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(__p, "race detected setting singleton instance", v9);
        }
      }

      else if (atomic_exchange(a1, v8))
      {
        __p[0] = "tf/instantiateSingleton.h";
        __p[1] = "_CreateInstance";
        v15 = 90;
        v16 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdValidationRegistry>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::UsdValidationRegistry]";
        v17 = 0;
        v18 = 4;
        pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(__p, "Failed axiom: ' %s '", v9, "instance.exchange(newInst) == nullptr");
      }
    }

    atomic_store(0, pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdValidationRegistry>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::UsdValidationRegistry*> &)::isInitializing);
  }

  v6 = atomic_load(a1);
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&v11);
  if (v12)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v13, v12);
  }

  return v6;
}

void sub_29AAEA8A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&a10);
  sub_29A0E9CEC(&a16);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdValidationRegistry>::SetInstanceConstructed(unint64_t result, uint64_t a2, char *a3)
{
  if (atomic_exchange(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdValidationRegistry>::_instance, result))
  {
    v3[0] = "tf/instantiateSingleton.h";
    v3[1] = "SetInstanceConstructed";
    v3[2] = 54;
    v3[3] = "static void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdValidationRegistry>::SetInstanceConstructed(T &) [T = pxrInternal__aapl__pxrReserved__::UsdValidationRegistry]";
    v4 = 0;
    v5 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v3, "this function may not be called after GetInstance() or another SetInstanceConstructed() has completed", a3);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::UsdValidationRegistry *pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::UsdValidationRegistry(pxrInternal__aapl__pxrReserved__::UsdValidationRegistry *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 5) = 0u;
  *(this + 18) = 1065353216;
  *(this + 6) = 0u;
  *(this + 28) = 1065353216;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 1065353216;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 48) = 1065353216;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 58) = 1065353216;
  std::__shared_mutex_base::__shared_mutex_base((this + 240));
  pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::_PopulateMetadataFromPlugInfo(this);
  if (atomic_exchange(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdValidationRegistry>::_instance, this))
  {
    v6[0] = "tf/instantiateSingleton.h";
    v6[1] = "SetInstanceConstructed";
    v6[2] = 54;
    v6[3] = "static void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdValidationRegistry>::SetInstanceConstructed(T &) [T = pxrInternal__aapl__pxrReserved__::UsdValidationRegistry]";
    v7 = 0;
    v8 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v6, "this function may not be called after GetInstance() or another SetInstanceConstructed() has completed", v3);
  }

  Instance = pxrInternal__aapl__pxrReserved__::TfRegistryManager::GetInstance(v2);
  pxrInternal__aapl__pxrReserved__::TfRegistryManager::_SubscribeTo(Instance, &stru_2A2071348);
  return this;
}

void sub_29AAEAAB4(_Unwind_Exception *a1)
{
  sub_29A4107A4(v6);
  sub_29A4107A4(v5);
  sub_29A4107A4(v4);
  sub_29AAEE470(v3);
  sub_29AAEE3A8(v2);
  sub_29AAEE148(v1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::_PopulateMetadataFromPlugInfo(pxrInternal__aapl__pxrReserved__::UsdValidationRegistry *this)
{
  Instance = pxrInternal__aapl__pxrReserved__::PlugRegistry::GetInstance(this);
  pxrInternal__aapl__pxrReserved__::PlugRegistry::GetAllPlugins(v5, Instance);
  if (v5[0] != v5[1])
  {
    v4[0] = 0;
    v4[1] = 0;
    v3 = v4;
    sub_29A17F138(v5[0]);
  }

  *&v2 = v5;
  sub_29A17DEA8(&v2);
}

void sub_29AAEB328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45)
{
  sub_29A09932C(v45 - 160, *(v45 - 152));
  sub_29A09932C(v45 - 136, *(v45 - 128));
  a31 = v45 - 112;
  sub_29A17DEA8(&a31);
  _Unwind_Resume(a1);
}

void sub_29AAEB488(pxrInternal__aapl__pxrReserved__::TfToken *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  std::operator+<char>();
  v8 = std::string::append(&__dst, " metadata");
  v39 = *v8;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (*a3)
  {
    v9 = SHIBYTE(v39.__r_.__value_.__r.__words[2]);
    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v39.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v39.__r_.__value_.__l.__size_;
    }

    p_dst = &__dst;
    v12 = sub_29A022DE0(&__dst, size + 15);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    if (size)
    {
      if (v9 >= 0)
      {
        v13 = &v39;
      }

      else
      {
        v13 = v39.__r_.__value_.__r.__words[0];
      }

      v12 = memmove(p_dst, v13, size);
    }

    strcpy(p_dst + size, " for validator ");
    if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((*a3 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
    }

    v15 = *(EmptyString + 23);
    if (v15 >= 0)
    {
      v16 = EmptyString;
    }

    else
    {
      v16 = *EmptyString;
    }

    if (v15 >= 0)
    {
      v17 = *(EmptyString + 23);
    }

    else
    {
      v17 = EmptyString[1];
    }

    v18 = std::string::append(&__dst, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v9 = SHIBYTE(v39.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_29A008D14(&__p, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v39;
    }
  }

  v20 = sub_29A32B8E8(a1, a2);
  v21 = v20;
  if (!v20)
  {
    goto LABEL_39;
  }

  if (!pxrInternal__aapl__pxrReserved__::JsValue::IsArray(v20))
  {
LABEL_36:
    __dst.__r_.__value_.__r.__words[0] = "usdValidation/registry.cpp";
    __dst.__r_.__value_.__l.__size_ = "_ParseStringArrayValue";
    __dst.__r_.__value_.__r.__words[2] = 67;
    v36 = "TfTokenVector pxrInternal__aapl__pxrReserved__::_ParseStringArrayValue(const JsObject &, const TfToken &, const TfToken &)";
    v37 = 0;
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "%s", p_p);
LABEL_39:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    goto LABEL_52;
  }

  JsArray = pxrInternal__aapl__pxrReserved__::JsValue::GetJsArray(v21);
  v23 = *JsArray;
  v24 = *(JsArray + 8);
  while (v23 != v24)
  {
    if (!pxrInternal__aapl__pxrReserved__::JsValue::IsString(v23))
    {
      goto LABEL_36;
    }

    v23 = (v23 + 16);
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v26 = pxrInternal__aapl__pxrReserved__::JsValue::GetJsArray(v21);
  sub_29A012B58(&v40, (v26[1] - *v26) >> 4);
  v27 = *v26;
  v28 = v26[1];
  v29 = v40;
  if (v27 != v28)
  {
    do
    {
      String = pxrInternal__aapl__pxrReserved__::JsValue::GetString(v27);
      if (*(String + 23) < 0)
      {
        sub_29A008D14(&__dst, *String, *(String + 8));
      }

      else
      {
        v31 = *String;
        __dst.__r_.__value_.__r.__words[2] = *(String + 16);
        *&__dst.__r_.__value_.__l.__data_ = v31;
      }

      if (*(v29 + 23) < 0)
      {
        operator delete(*v29);
      }

      v32 = *&__dst.__r_.__value_.__l.__data_;
      *(v29 + 16) = *(&__dst.__r_.__value_.__l + 2);
      *v29 = v32;
      v29 += 24;
      v27 = (v27 + 16);
    }

    while (v27 != v28);
    v29 = v40;
  }

  sub_29A1D7F98(a4, 0xAAAAAAAAAAAAAAABLL * ((v41 - v29) >> 3));
  v33 = v40;
  v34 = v41;
  while (v33 != v34)
  {
    sub_29AAE768C(a4);
    v33 += 24;
  }

  __dst.__r_.__value_.__r.__words[0] = &v40;
  sub_29A012C90(&__dst);
LABEL_52:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v9 & 0x80000000) == 0)
    {
      return;
    }

LABEL_56:
    operator delete(v39.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v9 < 0)
  {
    goto LABEL_56;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::_AddValidatorMetadata(void *a1, uint64_t a2)
{
  sub_29AAEDDB0(a1 + 10, a2, a2, a2);
  v5 = v4;
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::_UpdateValidatorNamesMappings(a1 + 20, a2, (a2 + 72));
    pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::_UpdateValidatorNamesMappings(a1 + 15, a2, (a2 + 24));
  }

  return v5 & 1;
}

void sub_29AAEB910(uint64_t a1, void *a2, uint64_t a3)
{
  memset(v10, 0, 96);
  if (pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::GetValidatorMetadata(a1, a2, v10))
  {
    sub_29AAEBBFC(a1, v10, a3, 0);
  }

  else
  {
    v8[0] = "usdValidation/registry.cpp";
    v8[1] = "_RegisterPluginValidator";
    v8[2] = 235;
    v8[3] = "void pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::_RegisterPluginValidator(const TfToken &, const ValidateTaskFn &) [ValidateTaskFn = std::function<std::vector<pxrInternal__aapl__pxrReserved__::UsdValidationError> (const pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> &)>]";
    v9 = 0;
    v6 = *a2 & 0xFFFFFFFFFFFFFFF8;
    if (v6)
    {
      v7 = (v6 + 16);
      if (*(v6 + 39) < 0)
      {
        v7 = *v7;
      }
    }

    else
    {
      v7 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v8, 1, "Validator metadata missing for '%s', validator registered using this API must be defined in the plugInfo.json", v7);
  }

  sub_29B2BE530(v10);
}

void sub_29AAEB9EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29B2BE23C(va);
  _Unwind_Resume(a1);
}

void sub_29AAEBA08(uint64_t a1, void *a2, uint64_t a3)
{
  memset(v10, 0, 96);
  if (pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::GetValidatorMetadata(a1, a2, v10))
  {
    sub_29AAEBE80(a1, v10, a3, 0);
  }

  else
  {
    v8[0] = "usdValidation/registry.cpp";
    v8[1] = "_RegisterPluginValidator";
    v8[2] = 235;
    v8[3] = "void pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::_RegisterPluginValidator(const TfToken &, const ValidateTaskFn &) [ValidateTaskFn = std::function<std::vector<pxrInternal__aapl__pxrReserved__::UsdValidationError> (const pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage> &, pxrInternal__aapl__pxrReserved__::UsdValidationTimeRange)>]";
    v9 = 0;
    v6 = *a2 & 0xFFFFFFFFFFFFFFF8;
    if (v6)
    {
      v7 = (v6 + 16);
      if (*(v6 + 39) < 0)
      {
        v7 = *v7;
      }
    }

    else
    {
      v7 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v8, 1, "Validator metadata missing for '%s', validator registered using this API must be defined in the plugInfo.json", v7);
  }

  sub_29B2BE530(v10);
}

void sub_29AAEBAE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29B2BE23C(va);
  _Unwind_Resume(a1);
}

void sub_29AAEBB00(uint64_t a1, void *a2, uint64_t a3)
{
  memset(v10, 0, 96);
  if (pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::GetValidatorMetadata(a1, a2, v10))
  {
    sub_29AAEC104(a1, v10, a3, 0);
  }

  else
  {
    v8[0] = "usdValidation/registry.cpp";
    v8[1] = "_RegisterPluginValidator";
    v8[2] = 235;
    v8[3] = "void pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::_RegisterPluginValidator(const TfToken &, const ValidateTaskFn &) [ValidateTaskFn = std::function<std::vector<pxrInternal__aapl__pxrReserved__::UsdValidationError> (const pxrInternal__aapl__pxrReserved__::UsdPrim &, pxrInternal__aapl__pxrReserved__::UsdValidationTimeRange)>]";
    v9 = 0;
    v6 = *a2 & 0xFFFFFFFFFFFFFFF8;
    if (v6)
    {
      v7 = (v6 + 16);
      if (*(v6 + 39) < 0)
      {
        v7 = *v7;
      }
    }

    else
    {
      v7 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v8, 1, "Validator metadata missing for '%s', validator registered using this API must be defined in the plugInfo.json", v7);
  }

  sub_29B2BE530(v10);
}

void sub_29AAEBBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29B2BE23C(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::RegisterValidator(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_29AAEBBFC(a1, a2, a3, 1);
}

{
  sub_29AAEBE80(a1, a2, a3, 1);
}

{
  sub_29AAEC104(a1, a2, a3, 1);
}

void sub_29AAEBBFC(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  if (pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::_CheckMetadata(a2, 0, 0))
  {
    v23 = a1 + 240;
    v24 = 1;
    std::__shared_mutex_base::lock((a1 + 240));
    if (sub_29A160470(a1, a2))
    {
      v18 = "usdValidation/registry.cpp";
      v19 = "_RegisterValidator";
      v20 = 290;
      v21 = "void pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::_RegisterValidator(const UsdValidationValidatorMetadata &, const ValidateTaskFn &, BOOL) [ValidateTaskFn = std::function<std::vector<pxrInternal__aapl__pxrReserved__::UsdValidationError> (const pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> &)>]";
      v22 = 0;
      v8 = *a2 & 0xFFFFFFFFFFFFFFF8;
      if (v8)
      {
        v9 = (v8 + 16);
        if (*(v8 + 39) < 0)
        {
          v9 = *v9;
        }
      }

      else
      {
        v9 = "";
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "Validator '%s' already registered with the UsdValidationRegistry", v9);
    }

    else if (a4 && (pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::_AddValidatorMetadata(a1, a2) & 1) == 0)
    {
      v18 = "usdValidation/registry.cpp";
      v19 = "_RegisterValidator";
      v20 = 304;
      v21 = "void pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::_RegisterValidator(const UsdValidationValidatorMetadata &, const ValidateTaskFn &, BOOL) [ValidateTaskFn = std::function<std::vector<pxrInternal__aapl__pxrReserved__::UsdValidationError> (const pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> &)>]";
      v22 = 0;
      v14 = *a2 & 0xFFFFFFFFFFFFFFF8;
      if (v14)
      {
        v15 = (v14 + 16);
        if (*(v14 + 39) < 0)
        {
          v15 = *v15;
        }
      }

      else
      {
        v15 = "";
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "Metadata already added for a UsdValidationValidatorSuite with the same name '%s'.", v15);
    }

    else
    {
      v10 = operator new(0x90uLL);
      pxrInternal__aapl__pxrReserved__::UsdValidationValidator::UsdValidationValidator(v10, a2, a3);
      v17 = v10;
      sub_29AAEE9E8(a1, a2, a2, &v17);
      if ((v11 & 1) == 0)
      {
        v18 = "usdValidation/registry.cpp";
        v19 = "_RegisterValidator";
        v20 = 315;
        v21 = "void pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::_RegisterValidator(const UsdValidationValidatorMetadata &, const ValidateTaskFn &, BOOL) [ValidateTaskFn = std::function<std::vector<pxrInternal__aapl__pxrReserved__::UsdValidationError> (const pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> &)>]";
        v22 = 0;
        v12 = *a2 & 0xFFFFFFFFFFFFFFF8;
        if (v12)
        {
          v13 = (v12 + 16);
          if (*(v12 + 39) < 0)
          {
            v13 = *v13;
          }
        }

        else
        {
          v13 = "";
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "Validator with name '%s' already exists, failed to register it again.", v13);
      }

      v16 = v17;
      v17 = 0;
      if (v16)
      {
        sub_29AAEE210(&v17, v16);
      }
    }

    std::__shared_mutex_base::unlock((a1 + 240));
  }
}

void sub_29AAEBE20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_29A822C08(va);
  _Unwind_Resume(a1);
}

void sub_29AAEBE80(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  if (pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::_CheckMetadata(a2, 0, 0))
  {
    v23 = a1 + 240;
    v24 = 1;
    std::__shared_mutex_base::lock((a1 + 240));
    if (sub_29A160470(a1, a2))
    {
      v18 = "usdValidation/registry.cpp";
      v19 = "_RegisterValidator";
      v20 = 290;
      v21 = "void pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::_RegisterValidator(const UsdValidationValidatorMetadata &, const ValidateTaskFn &, BOOL) [ValidateTaskFn = std::function<std::vector<pxrInternal__aapl__pxrReserved__::UsdValidationError> (const pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage> &, pxrInternal__aapl__pxrReserved__::UsdValidationTimeRange)>]";
      v22 = 0;
      v8 = *a2 & 0xFFFFFFFFFFFFFFF8;
      if (v8)
      {
        v9 = (v8 + 16);
        if (*(v8 + 39) < 0)
        {
          v9 = *v9;
        }
      }

      else
      {
        v9 = "";
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "Validator '%s' already registered with the UsdValidationRegistry", v9);
    }

    else if (a4 && (pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::_AddValidatorMetadata(a1, a2) & 1) == 0)
    {
      v18 = "usdValidation/registry.cpp";
      v19 = "_RegisterValidator";
      v20 = 304;
      v21 = "void pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::_RegisterValidator(const UsdValidationValidatorMetadata &, const ValidateTaskFn &, BOOL) [ValidateTaskFn = std::function<std::vector<pxrInternal__aapl__pxrReserved__::UsdValidationError> (const pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage> &, pxrInternal__aapl__pxrReserved__::UsdValidationTimeRange)>]";
      v22 = 0;
      v14 = *a2 & 0xFFFFFFFFFFFFFFF8;
      if (v14)
      {
        v15 = (v14 + 16);
        if (*(v14 + 39) < 0)
        {
          v15 = *v15;
        }
      }

      else
      {
        v15 = "";
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "Metadata already added for a UsdValidationValidatorSuite with the same name '%s'.", v15);
    }

    else
    {
      v10 = operator new(0x90uLL);
      pxrInternal__aapl__pxrReserved__::UsdValidationValidator::UsdValidationValidator(v10, a2, a3);
      v17 = v10;
      sub_29AAEE9E8(a1, a2, a2, &v17);
      if ((v11 & 1) == 0)
      {
        v18 = "usdValidation/registry.cpp";
        v19 = "_RegisterValidator";
        v20 = 315;
        v21 = "void pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::_RegisterValidator(const UsdValidationValidatorMetadata &, const ValidateTaskFn &, BOOL) [ValidateTaskFn = std::function<std::vector<pxrInternal__aapl__pxrReserved__::UsdValidationError> (const pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage> &, pxrInternal__aapl__pxrReserved__::UsdValidationTimeRange)>]";
        v22 = 0;
        v12 = *a2 & 0xFFFFFFFFFFFFFFF8;
        if (v12)
        {
          v13 = (v12 + 16);
          if (*(v12 + 39) < 0)
          {
            v13 = *v13;
          }
        }

        else
        {
          v13 = "";
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "Validator with name '%s' already exists, failed to register it again.", v13);
      }

      v16 = v17;
      v17 = 0;
      if (v16)
      {
        sub_29AAEE210(&v17, v16);
      }
    }

    std::__shared_mutex_base::unlock((a1 + 240));
  }
}

void sub_29AAEC0A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_29A822C08(va);
  _Unwind_Resume(a1);
}

void sub_29AAEC104(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  if (pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::_CheckMetadata(a2, 1, 0))
  {
    v23 = a1 + 240;
    v24 = 1;
    std::__shared_mutex_base::lock((a1 + 240));
    if (sub_29A160470(a1, a2))
    {
      v18 = "usdValidation/registry.cpp";
      v19 = "_RegisterValidator";
      v20 = 290;
      v21 = "void pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::_RegisterValidator(const UsdValidationValidatorMetadata &, const ValidateTaskFn &, BOOL) [ValidateTaskFn = std::function<std::vector<pxrInternal__aapl__pxrReserved__::UsdValidationError> (const pxrInternal__aapl__pxrReserved__::UsdPrim &, pxrInternal__aapl__pxrReserved__::UsdValidationTimeRange)>]";
      v22 = 0;
      v8 = *a2 & 0xFFFFFFFFFFFFFFF8;
      if (v8)
      {
        v9 = (v8 + 16);
        if (*(v8 + 39) < 0)
        {
          v9 = *v9;
        }
      }

      else
      {
        v9 = "";
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "Validator '%s' already registered with the UsdValidationRegistry", v9);
    }

    else if (a4 && (pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::_AddValidatorMetadata(a1, a2) & 1) == 0)
    {
      v18 = "usdValidation/registry.cpp";
      v19 = "_RegisterValidator";
      v20 = 304;
      v21 = "void pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::_RegisterValidator(const UsdValidationValidatorMetadata &, const ValidateTaskFn &, BOOL) [ValidateTaskFn = std::function<std::vector<pxrInternal__aapl__pxrReserved__::UsdValidationError> (const pxrInternal__aapl__pxrReserved__::UsdPrim &, pxrInternal__aapl__pxrReserved__::UsdValidationTimeRange)>]";
      v22 = 0;
      v14 = *a2 & 0xFFFFFFFFFFFFFFF8;
      if (v14)
      {
        v15 = (v14 + 16);
        if (*(v14 + 39) < 0)
        {
          v15 = *v15;
        }
      }

      else
      {
        v15 = "";
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "Metadata already added for a UsdValidationValidatorSuite with the same name '%s'.", v15);
    }

    else
    {
      v10 = operator new(0x90uLL);
      pxrInternal__aapl__pxrReserved__::UsdValidationValidator::UsdValidationValidator(v10, a2, a3);
      v17 = v10;
      sub_29AAEE9E8(a1, a2, a2, &v17);
      if ((v11 & 1) == 0)
      {
        v18 = "usdValidation/registry.cpp";
        v19 = "_RegisterValidator";
        v20 = 315;
        v21 = "void pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::_RegisterValidator(const UsdValidationValidatorMetadata &, const ValidateTaskFn &, BOOL) [ValidateTaskFn = std::function<std::vector<pxrInternal__aapl__pxrReserved__::UsdValidationError> (const pxrInternal__aapl__pxrReserved__::UsdPrim &, pxrInternal__aapl__pxrReserved__::UsdValidationTimeRange)>]";
        v22 = 0;
        v12 = *a2 & 0xFFFFFFFFFFFFFFF8;
        if (v12)
        {
          v13 = (v12 + 16);
          if (*(v12 + 39) < 0)
          {
            v13 = *v13;
          }
        }

        else
        {
          v13 = "";
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "Validator with name '%s' already exists, failed to register it again.", v13);
      }

      v16 = v17;
      v17 = 0;
      if (v16)
      {
        sub_29AAEE210(&v17, v16);
      }
    }

    std::__shared_mutex_base::unlock((a1 + 240));
  }
}

void sub_29AAEC328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_29A822C08(va);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::HasValidator(uint64_t a1, void *a2)
{
  v4 = (a1 + 240);
  std::__shared_mutex_base::lock_shared((a1 + 240));
  v5 = sub_29A16039C(a1, a2);
  std::__shared_mutex_base::unlock_shared(v4);
  return v5 != 0;
}

void pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::GetOrLoadAllValidators(pxrInternal__aapl__pxrReserved__::UsdValidationRegistry *this@<X0>, void *a2@<X8>)
{
  memset(v6, 0, sizeof(v6));
  v4 = (this + 240);
  v7 = (this + 240);
  v8 = 1;
  std::__shared_mutex_base::lock_shared((this + 240));
  sub_29A1D7F98(v6, *(this + 13));
  v5 = *(this + 12);
  if (!v5)
  {
    goto LABEL_7;
  }

  do
  {
    if ((*(v5 + 121) & 1) == 0)
    {
      sub_29A1D8028(v6, v5 + 2);
    }

    v5 = *v5;
  }

  while (v5);
  if (v8)
  {
    v4 = v7;
LABEL_7:
    std::__shared_mutex_base::unlock_shared(v4);
  }

  pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::GetOrLoadValidatorsByName(this, v6, a2);
  v7 = v6;
  sub_29A124AB0(&v7);
}

void sub_29AAEC4BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::GetOrLoadValidatorsByName(pxrInternal__aapl__pxrReserved__::UsdValidationRegistry *a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_29A08AF9C(a3, (a2[1] - *a2) >> 3);
  v6 = *a2;
  v7 = a2[1];
  while (v6 != v7)
  {
    ValidatorByName = pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::GetOrLoadValidatorByName(a1, v6);
    if (ValidatorByName)
    {
      sub_29A0A71C8(a3, &ValidatorByName);
    }

    v6 = (v6 + 8);
  }
}

void sub_29AAEC580(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::GetOrLoadValidatorByName(pxrInternal__aapl__pxrReserved__::UsdValidationRegistry *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v4 = (this + 240);
  *&v13[0] = this + 240;
  BYTE8(v13[0]) = 1;
  std::__shared_mutex_base::lock_shared((this + 240));
  v5 = sub_29A16039C(this, a2);
  if (v5)
  {
    v6 = v5[3];
  }

  else
  {
    v6 = 0;
  }

  std::__shared_mutex_base::unlock_shared(v4);
  if (!v6)
  {
    memset(v15, 0, 32);
    *__p = 0u;
    memset(v13, 0, sizeof(v13));
    if (pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::GetValidatorMetadata(this, a2, v13))
    {
      v7 = sub_29B290C20(v13 + 8);
      if (!(v8 & 1 | v7))
      {
        v11[0] = "usdValidation/registry.cpp";
        v11[1] = "GetOrLoadValidatorByName";
        v11[2] = 379;
        v11[3] = "const UsdValidationValidator *pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::GetOrLoadValidatorByName(const TfToken &)";
        v12 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v11, "metadata.pluginPtr", 0);
      }

      sub_29A17F138(v13 + 8);
    }

    v6 = 0;
    v11[0] = v15 + 1;
    sub_29A124AB0(v11);
    if (SBYTE7(v15[0]) < 0)
    {
      operator delete(__p[0]);
    }

    v11[0] = &v13[1] + 1;
    sub_29A124AB0(v11);
    v9 = *&v13[1];
    if (*&v13[1] && atomic_fetch_add_explicit((*&v13[1] + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v9 + 8))(v9);
    }

    if ((v13[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((*&v13[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return v6;
}

void sub_29AAEC770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29B2BE23C(va);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::GetValidatorMetadata(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = (a1 + 240);
  std::__shared_mutex_base::lock_shared((a1 + 240));
  v7 = sub_29A16039C((a1 + 80), a2);
  v8 = v7;
  if (v7)
  {
    v9 = v7 + 3;
    sub_29A166F2C(a3, v7 + 3);
    *(a3 + 8) = v8[4];
    sub_29B28FD1C((a3 + 16), v8 + 5);
    if (v9 == a3)
    {
      std::string::operator=((a3 + 48), v8 + 3);
    }

    else
    {
      sub_29A34AC54((a3 + 24), v8[6], v8[7], (v8[7] - v8[6]) >> 3);
      std::string::operator=((a3 + 48), v8 + 3);
      sub_29A34AC54((a3 + 72), v8[12], v8[13], (v8[13] - v8[12]) >> 3);
    }

    *(a3 + 96) = *(v8 + 60);
  }

  std::__shared_mutex_base::unlock_shared(v6);
  return v8 != 0;
}

void pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::RegisterPluginValidatorSuite(uint64_t a1, void *a2, pxrInternal__aapl__pxrReserved__::UsdValidationValidator ***a3)
{
  memset(v10, 0, 96);
  if (pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::GetValidatorMetadata(a1, a2, v10))
  {
    pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::_RegisterValidatorSuite(a1, v10, a3, 0);
  }

  else
  {
    v8[0] = "usdValidation/registry.cpp";
    v8[1] = "RegisterPluginValidatorSuite";
    v8[2] = 424;
    v8[3] = "void pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::RegisterPluginValidatorSuite(const TfToken &, const std::vector<const UsdValidationValidator *> &)";
    v9 = 0;
    v6 = *a2 & 0xFFFFFFFFFFFFFFF8;
    if (v6)
    {
      v7 = (v6 + 16);
      if (*(v6 + 39) < 0)
      {
        v7 = *v7;
      }
    }

    else
    {
      v7 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v8, 1, "Validator Suite metadata missing for '%s', validator registered using this API must be defined in the plugInfo.json", v7);
  }

  sub_29B2BE530(v10);
}

void sub_29AAEC994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29B2BE23C(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::_RegisterValidatorSuite(uint64_t a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::UsdValidationValidator ***a3, int a4)
{
  if (pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::_CheckMetadata(a2, 0, 1))
  {
    if (a2[9] != a2[10])
    {
      v8 = *a3;
      v9 = a3[1];
      while (v8 != v9)
      {
        v10 = *v8;
        if (!*v8)
        {
          v26 = "usdValidation/registry.cpp";
          v27 = "_RegisterValidatorSuite";
          v28 = 463;
          v29 = "void pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::_RegisterValidatorSuite(const UsdValidationValidatorMetadata &, const std::vector<const UsdValidationValidator *> &, BOOL)";
          v30 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v26, 1, "Validator Suite '%s' not registered, one of the contained validator is invalid.");
          return;
        }

        if (!pxrInternal__aapl__pxrReserved__::UsdValidationValidator::_GetValidatePrimTask(*v8))
        {
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v26, 1, "ValidatorSuite '%s' cannot be registered, as it provides schemaTypes, but at least one of its contained validator '%s' does not provide a UsdValidatePrimTaskFn");
          return;
        }

        v11 = *(v10 + 9);
        v12 = *(v10 + 10);
        if (v11 != v12)
        {
          v13 = a2[10];
          while (1)
          {
            v14 = a2[9];
            if (v14 != v13)
            {
              v14 = a2[9];
              while ((*v14 ^ *v11) >= 8)
              {
                if (++v14 == v13)
                {
                  goto LABEL_21;
                }
              }
            }

            if (v14 == v13)
            {
              break;
            }

            if (++v11 == v12)
            {
              goto LABEL_16;
            }
          }

LABEL_21:
          v26 = "usdValidation/registry.cpp";
          v27 = "_RegisterValidatorSuite";
          v28 = 488;
          v29 = "void pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::_RegisterValidatorSuite(const UsdValidationValidatorMetadata &, const std::vector<const UsdValidationValidator *> &, BOOL)";
          v30 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v26, 1, "schemaType '%s' provided by a contained validator '%s' is not in schemaTypes for '%s' validator suite");
          return;
        }

LABEL_16:
        ++v8;
      }
    }

    v24[1] = a1 + 240;
    v25 = 1;
    std::__shared_mutex_base::lock((a1 + 240));
    if (sub_29A160470((a1 + 40), a2))
    {
      v26 = "usdValidation/registry.cpp";
      v27 = "_RegisterValidatorSuite";
      v28 = 501;
      v29 = "void pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::_RegisterValidatorSuite(const UsdValidationValidatorMetadata &, const std::vector<const UsdValidationValidator *> &, BOOL)";
      v30 = 0;
      v15 = *a2 & 0xFFFFFFFFFFFFFFF8;
      if (v15)
      {
        v16 = (v15 + 16);
        if (*(v15 + 39) < 0)
        {
          v16 = *v16;
        }
      }

      else
      {
        v16 = "";
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v26, 1, "ValidatorSuite '%s' already registered with the UsdValidationRegistry", v16);
    }

    else if (a4 && (pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::_AddValidatorMetadata(a1, a2) & 1) == 0)
    {
      v26 = "usdValidation/registry.cpp";
      v27 = "_RegisterValidatorSuite";
      v28 = 515;
      v29 = "void pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::_RegisterValidatorSuite(const UsdValidationValidatorMetadata &, const std::vector<const UsdValidationValidator *> &, BOOL)";
      v30 = 0;
      v21 = *a2 & 0xFFFFFFFFFFFFFFF8;
      if (v21)
      {
        v22 = (v21 + 16);
        if (*(v21 + 39) < 0)
        {
          v22 = *v22;
        }
      }

      else
      {
        v22 = "";
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v26, 1, "Metadata already added for a UsdValidationValidator with the same name '%s'.", v22);
    }

    else
    {
      v17 = operator new(0x80uLL);
      pxrInternal__aapl__pxrReserved__::UsdValidationValidatorSuite::UsdValidationValidatorSuite(v17, a2, a3);
      v24[0] = v17;
      sub_29AAEECAC(a1 + 40, a2, a2, v24);
      if ((v18 & 1) == 0)
      {
        v26 = "usdValidation/registry.cpp";
        v27 = "_RegisterValidatorSuite";
        v28 = 528;
        v29 = "void pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::_RegisterValidatorSuite(const UsdValidationValidatorMetadata &, const std::vector<const UsdValidationValidator *> &, BOOL)";
        v30 = 0;
        v19 = *a2 & 0xFFFFFFFFFFFFFFF8;
        if (v19)
        {
          v20 = (v19 + 16);
          if (*(v19 + 39) < 0)
          {
            v20 = *v20;
          }
        }

        else
        {
          v20 = "";
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v26, 1, "Suite with name '%s' already exists, failed to register it again.", v20);
      }

      v23 = v24[0];
      v24[0] = 0;
      if (v23)
      {
        sub_29AAEEC84(v24, v23);
      }
    }

    std::__shared_mutex_base::unlock((a1 + 240));
  }
}

void sub_29AAECE0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A822C08(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::_CheckMetadata(uint64_t a1, char a2, int a3)
{
  if (a2)
  {
    if (*(a1 + 97) == a3)
    {
      return 1;
    }

    goto LABEL_9;
  }

  if (*(a1 + 72) == *(a1 + 80))
  {
    if (*(a1 + 97) != a3)
    {
LABEL_9:
      v4 = "usdValidation/registry.cpp";
      v5 = "_CheckMetadata";
      v6 = 777;
      v7 = "static BOOL pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::_CheckMetadata(const UsdValidationValidatorMetadata &, BOOL, BOOL)";
      v8 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v4, 1, "Invalid metadata for '%s' validator. Incompatible isSuite metadata set. Expected '%d', but '%d' provided.");
      return 0;
    }

    if (*(a1 + 96) != 1)
    {
      return 1;
    }

    v4 = "usdValidation/registry.cpp";
    v5 = "_CheckMetadata";
    v6 = 788;
    v7 = "static BOOL pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::_CheckMetadata(const UsdValidationValidatorMetadata &, BOOL, BOOL)";
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v4, 1, "Invalid metadata for ('%s') validator. Cannot provide isTimeDependent metadata when registering a UsdValidateLayerTaskFn or UsdValidateStageTaskFn validator.");
  }

  else
  {
    v4 = "usdValidation/registry.cpp";
    v5 = "_CheckMetadata";
    v6 = 766;
    v7 = "static BOOL pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::_CheckMetadata(const UsdValidationValidatorMetadata &, BOOL, BOOL)";
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v4, 1, "Invalid metadata for ('%s') validator. Can not provide schemaTypes metadata when registering a UsdValidateLayerTaskFn or UsdValidateStageTaskFn validator.");
  }

  return 0;
}

BOOL pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::HasValidatorSuite(uint64_t a1, void *a2)
{
  v4 = (a1 + 240);
  std::__shared_mutex_base::lock_shared((a1 + 240));
  v5 = sub_29A16039C((a1 + 40), a2);
  std::__shared_mutex_base::unlock_shared(v4);
  return v5 != 0;
}

void pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::GetOrLoadAllValidatorSuites(pxrInternal__aapl__pxrReserved__::UsdValidationRegistry *this@<X0>, void *a2@<X8>)
{
  v8 = 0;
  v9 = 0;
  v4 = (this + 240);
  v10 = 0;
  ValidatorSuiteByName = (this + 240);
  v12 = 1;
  std::__shared_mutex_base::lock_shared((this + 240));
  sub_29A1D7F98(&v8, *(this + 13));
  v5 = *(this + 12);
  if (!v5)
  {
    goto LABEL_7;
  }

  do
  {
    if (*(v5 + 121) == 1)
    {
      sub_29A1D8028(&v8, v5 + 2);
    }

    v5 = *v5;
  }

  while (v5);
  if (v12)
  {
    v4 = ValidatorSuiteByName;
LABEL_7:
    std::__shared_mutex_base::unlock_shared(v4);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_29A08AF9C(a2, (v9 - v8) >> 3);
  v6 = v8;
  v7 = v9;
  while (v6 != v7)
  {
    ValidatorSuiteByName = pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::GetOrLoadValidatorSuiteByName(this, v6);
    if (ValidatorSuiteByName)
    {
      sub_29A0A71C8(a2, &ValidatorSuiteByName);
    }

    v6 = (v6 + 8);
  }

  ValidatorSuiteByName = &v8;
  sub_29A124AB0(&ValidatorSuiteByName);
}

void sub_29AAED174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  v15 = *v13;
  if (*v13)
  {
    *(v13 + 8) = v15;
    operator delete(v15);
  }

  a13 = &a10;
  sub_29A124AB0(&a13);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::GetOrLoadValidatorSuiteByName(pxrInternal__aapl__pxrReserved__::UsdValidationRegistry *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v4 = (this + 240);
  *&v13[0] = this + 240;
  BYTE8(v13[0]) = 1;
  std::__shared_mutex_base::lock_shared((this + 240));
  v5 = sub_29A16039C(this + 5, a2);
  if (v5)
  {
    v6 = v5[3];
  }

  else
  {
    v6 = 0;
  }

  std::__shared_mutex_base::unlock_shared(v4);
  if (!v6)
  {
    memset(v15, 0, 32);
    *__p = 0u;
    memset(v13, 0, sizeof(v13));
    if (pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::GetValidatorMetadata(this, a2, v13))
    {
      v7 = sub_29B290C20(v13 + 8);
      if (!(v8 & 1 | v7))
      {
        v11[0] = "usdValidation/registry.cpp";
        v11[1] = "GetOrLoadValidatorSuiteByName";
        v11[2] = 602;
        v11[3] = "const UsdValidationValidatorSuite *pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::GetOrLoadValidatorSuiteByName(const TfToken &)";
        v12 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v11, "metadata.pluginPtr", 0);
      }

      sub_29A17F138(v13 + 8);
    }

    v6 = 0;
    v11[0] = v15 + 1;
    sub_29A124AB0(v11);
    if (SBYTE7(v15[0]) < 0)
    {
      operator delete(__p[0]);
    }

    v11[0] = &v13[1] + 1;
    sub_29A124AB0(v11);
    v9 = *&v13[1];
    if (*&v13[1] && atomic_fetch_add_explicit((*&v13[1] + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v9 + 8))(v9);
    }

    if ((v13[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((*&v13[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return v6;
}

void sub_29AAED390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29B2BE23C(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::GetOrLoadValidatorSuitesByName(pxrInternal__aapl__pxrReserved__::UsdValidationRegistry *a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_29A08AF9C(a3, (a2[1] - *a2) >> 3);
  v6 = *a2;
  v7 = a2[1];
  while (v6 != v7)
  {
    ValidatorSuiteByName = pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::GetOrLoadValidatorSuiteByName(a1, v6);
    if (ValidatorSuiteByName)
    {
      sub_29A0A71C8(a3, &ValidatorSuiteByName);
    }

    v6 = (v6 + 8);
  }
}

void sub_29AAED458(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::GetAllValidatorMetadata(pxrInternal__aapl__pxrReserved__::UsdValidationRegistry *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = (this + 240);
  std::__shared_mutex_base::lock_shared((this + 240));
  sub_29AAED52C(a2, *(this + 13));
  v5 = *(this + 12);
  if (v5)
  {
    sub_29AAED614(a2, (v5 + 24));
  }

  std::__shared_mutex_base::unlock_shared(v4);
}

void sub_29AAED500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_29A822BCC(&a9);
  sub_29AAE7E2C(&a9);
  _Unwind_Resume(a1);
}

atomic_uint *sub_29AAED52C(atomic_uint *result, unint64_t a2)
{
  if (0x4EC4EC4EC4EC4EC5 * ((*(result + 2) - *result) >> 3) < a2)
  {
    if (a2 >= 0x276276276276277)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = *(result + 1) - *result;
    v16 = result;
    v4 = sub_29A09B7D4(result, a2);
    v5 = &v4[v3];
    v12 = v4;
    v13 = &v4[v3];
    v7 = &v4[104 * v6];
    v14 = &v4[v3];
    v15 = v7;
    v8 = v2[1];
    v9 = &v4[v3 + *v2 - v8];
    sub_29AAEEF48(v2, *v2, v8, v9);
    v10 = *v2;
    *v2 = v9;
    v2[1] = v5;
    v11 = v2[2];
    v2[2] = v7;
    v14 = v10;
    v15 = v11;
    v12 = v10;
    v13 = v10;
    return sub_29AAEF104(&v12);
  }

  return result;
}

void sub_29AAED600(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AAEF104(va);
  _Unwind_Resume(a1);
}

void sub_29AAED614(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 8) < *(a1 + 16))
  {
    sub_29B2BE2F0(*(a1 + 8), a2);
  }

  sub_29AAEF180(a1, a2);
}

void pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::GetValidatorMetadataForPlugin(pxrInternal__aapl__pxrReserved__::UsdValidationRegistry *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  v10 = *MEMORY[0x29EDCA608];
  v5 = *a2;
  v9 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v9 = v6;
    }
  }

  memset(v7, 0, sizeof(v7));
  sub_29A12EF7C(v7, &v9, &v10, 1uLL);
  pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::_GetValidatorMetadataForToken(this, this + 25, v7, a3);
  v8 = v7;
  sub_29A124AB0(&v8);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AAED748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13)
{
  sub_29A124AB0(&a12);
  if ((a13 & 7) != 0)
  {
    atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::GetValidatorMetadataForKeyword(pxrInternal__aapl__pxrReserved__::UsdValidationRegistry *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  v10 = *MEMORY[0x29EDCA608];
  v5 = *a2;
  v9 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v9 = v6;
    }
  }

  memset(v7, 0, sizeof(v7));
  sub_29A12EF7C(v7, &v9, &v10, 1uLL);
  pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::GetValidatorMetadataForKeywords(this, v7, a3);
  v8 = v7;
  sub_29A124AB0(&v8);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AAED868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13)
{
  sub_29A124AB0(&a12);
  if ((a13 & 7) != 0)
  {
    atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::GetValidatorMetadataForKeywords(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = (a1 + 240);
  std::__shared_mutex_base::lock_shared((a1 + 240));
  pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::_GetValidatorMetadataForToken(a1, (a1 + 120), a2, a3);
  std::__shared_mutex_base::unlock_shared(v6);
}

void pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::GetValidatorMetadataForSchemaType(pxrInternal__aapl__pxrReserved__::UsdValidationRegistry *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  v10 = *MEMORY[0x29EDCA608];
  v5 = *a2;
  v9 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v9 = v6;
    }
  }

  memset(v7, 0, sizeof(v7));
  sub_29A12EF7C(v7, &v9, &v10, 1uLL);
  pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::GetValidatorMetadataForSchemaTypes(this, v7, a3);
  v8 = v7;
  sub_29A124AB0(&v8);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AAEDA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13)
{
  sub_29A124AB0(&a12);
  if ((a13 & 7) != 0)
  {
    atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::GetValidatorMetadataForSchemaTypes(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = (a1 + 240);
  std::__shared_mutex_base::lock_shared((a1 + 240));
  pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::_GetValidatorMetadataForToken(a1, (a1 + 160), a2, a3);
  std::__shared_mutex_base::unlock_shared(v6);
}

void pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::_GetValidatorMetadataForToken(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v4 = *a3;
  v5 = *(a3 + 8);
  if (*a3 != v5)
  {
    v9 = (a1 + 240);
    do
    {
      v10 = sub_29A16039C(a2, v4);
      if (v10)
      {
        v15 = v9;
        v16 = 1;
        std::__shared_mutex_base::lock_shared(v9);
        v11 = v10[3];
        if (v11 != v10[4])
        {
          v12 = sub_29A16039C((a1 + 80), v11);
          if (!v12)
          {
            v13[0] = "usdValidation/registry.cpp";
            v13[1] = "_GetValidatorMetadataForToken";
            v13[2] = 725;
            v13[3] = "UsdValidationValidatorMetadataVector pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::_GetValidatorMetadataForToken(const _TokenToValidatorNamesMap &, const TfTokenVector &) const";
            v14 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v13, "nameToMetadataItr != _validatorNameToMetadata.end()", 0);
          }

          sub_29AAED614(a4, v12 + 3);
        }

        std::__shared_mutex_base::unlock_shared(v9);
      }

      ++v4;
    }

    while (v4 != v5);
  }
}

void sub_29AAEDBD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void **);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_29A822BCC(va1);
  sub_29AAE7E2C(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::_UpdateValidatorNamesMappings(void *a1, uint64_t *a2, uint64_t **a3)
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = *a3;
  v4 = a3[1];
  if (*a3 != v4)
  {
    do
    {
      if (sub_29A160470(a1, v3))
      {
        v9.n128_u64[0] = v3;
        v7 = sub_29A5DF7DC(a1, v3, &unk_29B4D6118, &v9);
        sub_29A1D8028((v7 + 3), a2);
      }

      else
      {
        v8 = *a2;
        v12 = v8;
        if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v12 &= 0xFFFFFFFFFFFFFFF8;
        }

        v9 = 0uLL;
        v10 = 0;
        sub_29A12EF7C(&v9, &v12, &v13, 1uLL);
        sub_29A410B2C(a1, v3, v3, &v9);
        v11 = &v9;
        sub_29A124AB0(&v11);
        if ((v12 & 7) != 0)
        {
          atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      ++v3;
    }

    while (v3 != v4);
  }
}

void sub_29AAEDD6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13)
{
  a12 = &a9;
  sub_29A124AB0(&a12);
  if ((a13 & 7) != 0)
  {
    atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void *sub_29AAEDDB0(void *a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v5;
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
  if (!v9 || (result = *v9) == 0)
  {
LABEL_18:
    sub_29AAEDFF0(a1, v5, a3, a4, v12);
  }

  while (1)
  {
    v11 = result[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if ((result[2] ^ *a2) >= 8)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_29AAEDFD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AAEE0E8(va, 0);
  _Unwind_Resume(a1);
}

void sub_29AAEDFF0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0x80uLL);
  *a5 = v10;
  a5[1] = a1;
  a5[2] = 0;
  *v10 = 0;
  v10[1] = a2;
  sub_29AAEE070(v10 + 2, a3, a4);
}

void sub_29AAEE070(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  *a1 = *a2;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29B2BE2F0(a1 + 1, a3);
}

void sub_29AAEE0E8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29B2BE468(v2 + 16);
    }

    operator delete(v2);
  }
}

uint64_t sub_29AAEE148(uint64_t a1)
{
  sub_29AAEE184(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AAEE184(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29AAEE1C8(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29AAEE1C8(void *a1)
{
  v4 = a1[1];
  v2 = a1 + 1;
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_29AAEE210(v2, v3);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AAEE210(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_29B2BE5B8(a2);
  }
}

uint64_t sub_29AAEE238(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 != -1)
  {
    result = (off_2A2071358[v2])(&v3, result);
  }

  *(v1 + 32) = -1;
  return result;
}

uint64_t sub_29AAEE2A8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_29AAEE328(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_29AAEE3A8(uint64_t a1)
{
  sub_29AAEE3E4(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AAEE3E4(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29AAEE428(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29AAEE428(void *a1)
{
  v4 = a1[1];
  v2 = a1 + 1;
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_29AAEEC84(v2, v3);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

uint64_t sub_29AAEE470(uint64_t a1)
{
  sub_29AAEE4AC(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AAEE4AC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29B2BE650(a2);
  }
}

unint64_t sub_29AAEE4D4()
{
  v28 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x50uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "Validators", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "keywords", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "doc", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "schemaTypes", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 4, "isTimeDependent", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 5, "isSuite", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 6, ":", 0);
  v1 = v0 + 7;
  v2 = *v0;
  v21 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v3;
    }
  }

  v4 = v0[1];
  v22 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v22 = v5;
    }
  }

  v6 = v0[2];
  v23 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v7;
    }
  }

  v8 = v0[3];
  v24 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v24 = v9;
    }
  }

  v10 = v0[4];
  v25 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v25 = v11;
    }
  }

  v12 = v0[5];
  v26 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v26 = v13;
    }
  }

  v14 = v0[6];
  v27 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v27 = v15;
    }
  }

  *v1 = 0;
  v0[8] = 0;
  v0[9] = 0;
  sub_29A12EF7C(v1, &v21, &v28, 7uLL);
  for (i = 48; i != -8; i -= 8)
  {
    v17 = *(&v21 + i);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v18 = 0;
  atomic_compare_exchange_strong(&qword_2A1748208, &v18, v0);
  if (v18)
  {
    v19 = sub_29A1E6CA0(v0);
    operator delete(v19);
    return atomic_load(&qword_2A1748208);
  }

  return v0;
}

void sub_29AAEE730(_Unwind_Exception *a1)
{
  v4 = 48;
  while (1)
  {
    v5 = *(v2 + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
    if (v4 == -8)
    {
      v6 = v1[6];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[5];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[4];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[3];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[2];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[1];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v1);
      _Unwind_Resume(a1);
    }
  }
}

void sub_29AAEE8B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    sub_29A410DE4(&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AAEE8D8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *a2 = v4;
  a2[1] = a1;
  a2[2] = 0;
  *v4 = 0;
  v4[1] = 0;
  sub_29AAEE988((v4 + 2));
}

void sub_29AAEE96C(_Unwind_Exception *a1)
{
  *v2 = 0;
  sub_29A410DE4(v3, v1);
  _Unwind_Resume(a1);
}

void sub_29AAEE988(uint64_t a1)
{
  v1 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(a1);
  v1[1] = 0;
  v1[2] = 0;
  v1[3] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void *sub_29AAEE9E8(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v4 = v6;
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }
    }

    else
    {
      v4 = v6 & (v7 - 1);
    }

    v9 = *(*a1 + 8 * v4);
    if (v9)
    {
      result = *v9;
      if (*v9)
      {
        do
        {
          v11 = result[1];
          if (v11 == v6)
          {
            if ((result[2] ^ *a2) < 8)
            {
              return result;
            }
          }

          else
          {
            if (v8.u32[0] > 1uLL)
            {
              if (v11 >= v7)
              {
                v11 %= v7;
              }
            }

            else
            {
              v11 &= v7 - 1;
            }

            if (v11 != v4)
            {
              break;
            }
          }

          result = *result;
        }

        while (result);
      }
    }
  }

  sub_29A5DF748(a1, v6, a3, a4, &v22);
  v12 = (*(a1 + 24) + 1);
  v13 = *(a1 + 32);
  if (!v7 || (v13 * v7) < v12)
  {
    v14 = 1;
    if (v7 >= 3)
    {
      v14 = (v7 & (v7 - 1)) != 0;
    }

    v15 = v14 | (2 * v7);
    v16 = vcvtps_u32_f32(v12 / v13);
    if (v15 <= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    sub_29A019AA0(a1, v17);
    v7 = *(a1 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }

      else
      {
        v4 = v6;
      }
    }

    else
    {
      v4 = (v7 - 1) & v6;
    }
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v4);
  if (v19)
  {
    result = v22;
    *v22 = *v19;
    *v19 = result;
  }

  else
  {
    v20 = v22;
    *v22 = *(a1 + 16);
    *(a1 + 16) = v20;
    *(v18 + 8 * v4) = a1 + 16;
    result = v22;
    if (*v22)
    {
      v21 = *(*v22 + 8);
      if ((v7 & (v7 - 1)) != 0)
      {
        if (v21 >= v7)
        {
          v21 %= v7;
        }
      }

      else
      {
        v21 &= v7 - 1;
      }

      *(*a1 + 8 * v21) = v22;
      result = v22;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29AAEEC10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AAEEC28(va, 0);
  _Unwind_Resume(a1);
}

void sub_29AAEEC28(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29AAEE1C8(v2 + 2);
    }

    operator delete(v2);
  }
}

void sub_29AAEEC84(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_29B2BE68C(a2);
  }
}

void *sub_29AAEECAC(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v4 = v6;
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }
    }

    else
    {
      v4 = v6 & (v7 - 1);
    }

    v9 = *(*a1 + 8 * v4);
    if (v9)
    {
      result = *v9;
      if (*v9)
      {
        do
        {
          v11 = result[1];
          if (v11 == v6)
          {
            if ((result[2] ^ *a2) < 8)
            {
              return result;
            }
          }

          else
          {
            if (v8.u32[0] > 1uLL)
            {
              if (v11 >= v7)
              {
                v11 %= v7;
              }
            }

            else
            {
              v11 &= v7 - 1;
            }

            if (v11 != v4)
            {
              break;
            }
          }

          result = *result;
        }

        while (result);
      }
    }
  }

  sub_29A5DF748(a1, v6, a3, a4, &v22);
  v12 = (*(a1 + 24) + 1);
  v13 = *(a1 + 32);
  if (!v7 || (v13 * v7) < v12)
  {
    v14 = 1;
    if (v7 >= 3)
    {
      v14 = (v7 & (v7 - 1)) != 0;
    }

    v15 = v14 | (2 * v7);
    v16 = vcvtps_u32_f32(v12 / v13);
    if (v15 <= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    sub_29A019AA0(a1, v17);
    v7 = *(a1 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }

      else
      {
        v4 = v6;
      }
    }

    else
    {
      v4 = (v7 - 1) & v6;
    }
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v4);
  if (v19)
  {
    result = v22;
    *v22 = *v19;
    *v19 = result;
  }

  else
  {
    v20 = v22;
    *v22 = *(a1 + 16);
    *(a1 + 16) = v20;
    *(v18 + 8 * v4) = a1 + 16;
    result = v22;
    if (*v22)
    {
      v21 = *(*v22 + 8);
      if ((v7 & (v7 - 1)) != 0)
      {
        if (v21 >= v7)
        {
          v21 %= v7;
        }
      }

      else
      {
        v21 &= v7 - 1;
      }

      *(*a1 + 8 * v21) = v22;
      result = v22;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29AAEEED4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AAEEEEC(va, 0);
  _Unwind_Resume(a1);
}

void sub_29AAEEEEC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29AAEE428(v2 + 2);
    }

    operator delete(v2);
  }
}

uint64_t sub_29AAEEF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      sub_29AAEEFFC(a1, a4, v7);
      v7 += 104;
      a4 = v12 + 104;
      v12 += 104;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_29B2BDEE8(a1, v5);
      v5 += 104;
    }
  }

  return sub_29AAEF078(v9);
}

__n128 sub_29AAEEFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  *a3 = 0;
  *(a2 + 8) = *(a3 + 8);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = *(a3 + 24);
  *(a2 + 40) = *(a3 + 40);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  v3 = *(a3 + 48);
  *(a2 + 64) = *(a3 + 64);
  *(a2 + 48) = v3;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 48) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  result = *(a3 + 72);
  *(a2 + 72) = result;
  *(a2 + 88) = *(a3 + 88);
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a2 + 96) = *(a3 + 96);
  return result;
}

uint64_t sub_29AAEF078(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AAEF0B0(a1);
  }

  return a1;
}

uint64_t *sub_29AAEF0B0(uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *result;
    do
    {
      v3 -= 104;
      result = sub_29B2BDEE8(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

atomic_uint *sub_29AAEF104(atomic_uint *a1)
{
  sub_29AAEF138(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

atomic_uint *sub_29AAEF138(atomic_uint *result)
{
  v2 = *(result + 1);
  v1 = *(result + 2);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 4);
      *(v3 + 2) = v1 - 104;
      result = sub_29B2BDEE8(v4, v1 - 104);
      v1 = *(v3 + 2);
    }

    while (v1 != v2);
  }

  return result;
}

void sub_29AAEF180(void *a1, uint64_t *a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) <= 0x276276276276276)
  {
    if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3) > v3)
    {
      v3 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
    }

    if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
    {
      v5 = 0x276276276276276;
    }

    else
    {
      v5 = v3;
    }

    v11 = a1;
    if (v5)
    {
      v6 = sub_29A09B7D4(a1, v5);
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = &v6[104 * v2];
    v9 = v8;
    v10 = &v6[104 * v5];
    sub_29B2BE2F0(v8, a2);
  }

  sub_29A00C9A4();
}

void sub_29AAEF2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AAEF104(va);
  _Unwind_Resume(a1);
}

void sub_29AAEF2C8(void **a1@<X8>, uint64_t a2, void **a3)
{
  a3 = a1;

  sub_29A124AB0(&a3);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdValidationTimeRange::UsdValidationTimeRange(uint64_t this)
{
  *this = 0xFFF0000000000000;
  *(this + 8) = 0;
  *(this + 16) = 0x7FF0000000000000;
  *(this + 24) = 0;
  *(this + 32) = 1;
  return this;
}

{
  *this = 0xFFF0000000000000;
  *(this + 8) = 0;
  *(this + 16) = 0x7FF0000000000000;
  *(this + 24) = 0;
  *(this + 32) = 1;
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdValidationTimeRange::UsdValidationTimeRange(uint64_t this, const pxrInternal__aapl__pxrReserved__::UsdTimeCode *a2)
{
  v2 = *a2;
  v3 = (*a2 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  *this = *a2;
  *(this + 8) = v3;
  *(this + 16) = v2;
  *(this + 24) = v3;
  *(this + 32) = 0;
  return this;
}

{
  v2 = *a2;
  v3 = (*a2 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  *this = *a2;
  *(this + 8) = v3;
  *(this + 16) = v2;
  *(this + 24) = v3;
  *(this + 32) = 0;
  return this;
}

__n128 pxrInternal__aapl__pxrReserved__::UsdValidationTimeRange::UsdValidationTimeRange(uint64_t a1, uint64_t a2, char a3)
{
  result = *a2;
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = a3;
  return result;
}

{
  result = *a2;
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = a3;
  return result;
}

__n128 pxrInternal__aapl__pxrReserved__::UsdValidationTimeRange::GetInterval@<Q0>(pxrInternal__aapl__pxrReserved__::UsdValidationTimeRange *this@<X0>, _OWORD *a2@<X8>)
{
  result = *this;
  v3 = *(this + 1);
  *a2 = *this;
  a2[1] = v3;
  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdValidationValidator::UsdValidationValidator(uint64_t *a1, uint64_t *a2)
{
  sub_29B2BE2F0(a1, a2);
}

{
  sub_29B2BE2F0(a1, a2);
}

{
  sub_29B2BE2F0(a1, a2);
}

{
  sub_29B2BE2F0(a1, a2);
}

{
  sub_29B2BE2F0(a1, a2);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdValidationValidator::_GetValidateLayerTask(pxrInternal__aapl__pxrReserved__::UsdValidationValidator *this)
{
  if (*(this + 34))
  {
    return 0;
  }

  else
  {
    return this + 104;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdValidationValidator::_GetValidateStageTask(pxrInternal__aapl__pxrReserved__::UsdValidationValidator *this)
{
  if (*(this + 34) == 1)
  {
    return this + 104;
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdValidationValidator::_GetValidatePrimTask(pxrInternal__aapl__pxrReserved__::UsdValidationValidator *this)
{
  if (*(this + 34) == 2)
  {
    return this + 104;
  }

  else
  {
    return 0;
  }
}

void *pxrInternal__aapl__pxrReserved__::UsdValidationValidator::Validate@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*(result + 34))
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    v3 = result;
    v4 = result[16];
    if (!v4)
    {
      sub_29A0DDCB0();
    }

    result = (*(*v4 + 48))(v4);
    v5 = *a2;
    v6 = a2[1];
    while (v5 != v6)
    {
      result = pxrInternal__aapl__pxrReserved__::UsdValidationError::_SetValidator(v5, v3);
      v5 += 9;
    }
  }

  return result;
}

void sub_29AAEF610(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AAE45F0(va);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::UsdValidationValidator::Validate@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(result + 34) == 1)
  {
    v5 = result;
    v6 = *(a3 + 16);
    v10[0] = *a3;
    v10[1] = v6;
    v11 = *(a3 + 32);
    v7 = result[16];
    if (!v7)
    {
      sub_29A0DDCB0();
    }

    result = (*(*v7 + 48))(v7, a2, v10);
    v8 = *a4;
    v9 = *(a4 + 8);
    while (v8 != v9)
    {
      result = pxrInternal__aapl__pxrReserved__::UsdValidationError::_SetValidator(v8, v5);
      v8 += 9;
    }
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

{
  if (*(result + 34) == 2)
  {
    v5 = result;
    v6 = *(a3 + 16);
    v10[0] = *a3;
    v10[1] = v6;
    v11 = *(a3 + 32);
    v7 = result[16];
    if (!v7)
    {
      sub_29A0DDCB0();
    }

    result = (*(*v7 + 48))(v7, a2, v10);
    v8 = *a4;
    v9 = *(a4 + 8);
    while (v8 != v9)
    {
      result = pxrInternal__aapl__pxrReserved__::UsdValidationError::_SetValidator(v8, v5);
      v8 += 9;
    }
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

uint64_t sub_29AAEF814(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_29AAEF8AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_29AAEF944(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::UsdValidatorNameTokens_StaticTokenType::~UsdValidatorNameTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdValidatorNameTokens_StaticTokenType *this)
{
  v3 = (this + 16);
  sub_29A124AB0(&v3);
  v2 = *(this + 1);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::UsdValidatorNameTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdValidatorNameTokens_StaticTokenType::UsdValidatorNameTokens_StaticTokenType(atomic_uint **this)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "usdValidation:CompositionErrorTest", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "usdValidation:StageMetadataChecker", 0);
  v3 = this + 2;
  v4 = *this;
  v11 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v5;
    }
  }

  v6 = this[1];
  v12 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v7;
    }
  }

  *v3 = 0;
  this[3] = 0;
  this[4] = 0;
  sub_29A12EF7C(v3, &v11, &v13, 2uLL);
  for (i = 8; i != -8; i -= 8)
  {
    v9 = *(&v11 + i);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AAEFB58(_Unwind_Exception *a1)
{
  v3 = 8;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[1];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::UsdValidatorKeywordTokens_StaticTokenType::~UsdValidatorKeywordTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdValidatorKeywordTokens_StaticTokenType *this)
{
  v2 = (this + 8);
  sub_29A124AB0(&v2);
  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

{
  v2 = (this + 8);
  sub_29A124AB0(&v2);
  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::UsdValidatorKeywordTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdValidatorKeywordTokens_StaticTokenType::UsdValidatorKeywordTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdValidatorKeywordTokens_StaticTokenType *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "UsdCoreValidators", 0);
  v5 = *v2;
  v3 = v2 + 1;
  v4 = v5;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  sub_29A12EF7C(v3, &v8, &v9, 1uLL);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::UsdValidationErrorNameTokens_StaticTokenType::~UsdValidationErrorNameTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdValidationErrorNameTokens_StaticTokenType *this)
{
  v3 = (this + 16);
  sub_29A124AB0(&v3);
  v2 = *(this + 1);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::UsdValidationErrorNameTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdValidationErrorNameTokens_StaticTokenType::UsdValidationErrorNameTokens_StaticTokenType(atomic_uint **this)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "CompositionError", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "MissingDefaultPrim", 0);
  v3 = this + 2;
  v4 = *this;
  v11 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v5;
    }
  }

  v6 = this[1];
  v12 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v7;
    }
  }

  *v3 = 0;
  this[3] = 0;
  this[4] = 0;
  sub_29A12EF7C(v3, &v11, &v13, 2uLL);
  for (i = 8; i != -8; i -= 8)
  {
    v9 = *(&v11 + i);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AAEFED8(_Unwind_Exception *a1)
{
  v3 = 8;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[1];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_29AAEFF3C()
{
  v8 = *MEMORY[0x29EDCA608];
  v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdValidationRegistry>::_instance);
  if (!v0)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdValidationRegistry>::_CreateInstance();
  }

  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomValidatorNameTokens))
  {
    sub_29AAF11BC(&pxrInternal__aapl__pxrReserved__::UsdGeomValidatorNameTokens);
  }

  v5 = &unk_2A2070F88;
  v6 = sub_29AAF0118;
  v7 = &v5;
  pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::RegisterPluginValidator(v0);
  sub_29AAE4750(&v5);
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomValidatorNameTokens);
  if (!v2)
  {
    v2 = sub_29AAF11BC(&pxrInternal__aapl__pxrReserved__::UsdGeomValidatorNameTokens);
  }

  v5 = &unk_2A2071380;
  v6 = sub_29AAF0698;
  v7 = &v5;
  pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::RegisterPluginValidator(v0, v2 + 8, &v5);
  sub_29AAEE328(&v5);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomValidatorNameTokens);
  if (!v3)
  {
    v3 = sub_29AAF11BC(&pxrInternal__aapl__pxrReserved__::UsdGeomValidatorNameTokens);
  }

  v5 = &unk_2A2071380;
  v6 = sub_29AAF0CC0;
  v7 = &v5;
  pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::RegisterPluginValidator(v0, v3 + 16, &v5);
  return sub_29AAEE328(&v5);
}

void sub_29AAF0118(void *a1@<X8>)
{
  v1 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
}

void sub_29AAF053C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, atomic_uint *a11, __int16 *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, int a26, int a27, __int16 a28, char a29, char a30)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a11 && atomic_fetch_add_explicit(a11 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*a11 + 8))(a11);
  }

  __p = &a28;
  sub_29AAE4374(&__p);
  sub_29AAE3EEC(v31 - 96);
  v33 = a19;
  if (a19 && atomic_fetch_add_explicit((a19 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v33 + 8))(v33);
  }

  sub_29A1DCEA8(&a26);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  *(v31 - 96) = v30;
  sub_29AAE45F0((v31 - 96));
  _Unwind_Resume(a1);
}

void sub_29AAF0AD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, char a36, void *a37)
{
  *(v38 - 136) = &a20;
  sub_29AAE4374((v38 - 136));
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if ((a29 & 7) != 0)
  {
    atomic_fetch_add_explicit((a29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *(v38 - 136) = &a30;
  sub_29A7AC488((v38 - 136));
  *(v38 - 136) = v37;
  sub_29AAE45F0((v38 - 136));
  *(v38 - 136) = &a33;
  sub_29A124AB0((v38 - 136));
  sub_29A1602D4(&a36, a37);
  pxrInternal__aapl__pxrReserved__::UsdGeomImageable::~UsdGeomImageable((v38 - 160));
  _Unwind_Resume(a1);
}

void sub_29AAF1048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, char a32)
{
  *(v32 - 112) = &a24;
  sub_29AAE4374((v32 - 112));
  pxrInternal__aapl__pxrReserved__::UsdGeomImageable::~UsdGeomImageable(&a29);
  sub_29A57F434(&a32);
  pxrInternal__aapl__pxrReserved__::UsdGeomSubset::~UsdGeomSubset((v32 - 136));
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::UsdGeomValidatorNameTokens_StaticTokenType *sub_29AAF11BC(atomic_ullong *a1)
{
  result = sub_29AAF1204();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::UsdGeomValidatorNameTokens_StaticTokenType::~UsdGeomValidatorNameTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::UsdGeomValidatorNameTokens_StaticTokenType *sub_29AAF1204()
{
  v0 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::UsdGeomValidatorNameTokens_StaticTokenType::UsdGeomValidatorNameTokens_StaticTokenType(v0);
  return v0;
}

uint64_t sub_29AAF1248(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v4 = (a1 + 24);
  sub_29AAE4374(&v4);
  v2 = *(a1 + 8);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

pxrInternal__aapl__pxrReserved__::UsdGeomValidationErrorNameTokens_StaticTokenType *sub_29AAF12AC(atomic_ullong *a1)
{
  result = sub_29AAF12F4();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::UsdGeomValidationErrorNameTokens_StaticTokenType::~UsdGeomValidationErrorNameTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::UsdGeomValidationErrorNameTokens_StaticTokenType *sub_29AAF12F4()
{
  v0 = operator new(0x38uLL);
  pxrInternal__aapl__pxrReserved__::UsdGeomValidationErrorNameTokens_StaticTokenType::UsdGeomValidationErrorNameTokens_StaticTokenType(v0);
  return v0;
}

BOOL sub_29AAF1338(pxrInternal__aapl__pxrReserved__::UsdGeomImageable *a1, int a2)
{
  StaticTfType = pxrInternal__aapl__pxrReserved__::UsdGeomImageable::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v5);
  if (SchemaInfo)
  {
    v8 = *(SchemaInfo + 6);

    return pxrInternal__aapl__pxrReserved__::UsdPrim::IsInFamily(a1, (SchemaInfo + 2), v8, a2);
  }

  else
  {
    v13[0] = "usd/prim.h";
    v13[1] = "IsInFamily";
    v13[2] = 633;
    v13[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdPrim::IsInFamily(UsdSchemaRegistry::VersionPolicy) const [SchemaType = pxrInternal__aapl__pxrReserved__::UsdGeomImageable]";
    v14 = 0;
    TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v10);
    if (*(TypeName + 23) >= 0)
    {
      v12 = TypeName;
    }

    else
    {
      v12 = *TypeName;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v13, 1, "Class '%s' is not correctly registered with the UsdSchemaRegistry as a schema type. The schema may need to be regenerated.", v12);
    return 0;
  }
}

uint64_t sub_29AAF1404(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v6 = v5 + 1;
  if (v5 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_29A00C9A4();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v6)
  {
    v6 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v12 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v12 = v6;
  }

  v23 = a1;
  if (v12)
  {
    v13 = sub_29A09C03C(a1, v12);
  }

  else
  {
    v13 = 0;
  }

  v20 = v13;
  v21 = &v13[72 * v5];
  *(&v22 + 1) = &v13[72 * v12];
  pxrInternal__aapl__pxrReserved__::UsdValidationError::UsdValidationError(v21, a2, a3, a4, a5);
  *&v22 = v21 + 72;
  v14 = a1[1];
  v15 = &v21[*a1 - v14];
  sub_29AAE3F24(a1, *a1, v14, v15);
  v16 = *a1;
  *a1 = v15;
  v17 = a1[2];
  v19 = v22;
  *(a1 + 1) = v22;
  *&v22 = v16;
  *(&v22 + 1) = v17;
  v20 = v16;
  v21 = v16;
  sub_29AAE4104(&v20);
  return v19;
}

void sub_29AAF1558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AAE4104(va);
  _Unwind_Resume(a1);
}

void *sub_29AAF1574(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A2071380;
  result[1] = v3;
  return result;
}

uint64_t sub_29AAF15BC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A2071380;
  a2[1] = v2;
  return result;
}

uint64_t sub_29AAF15F8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2071400))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_29AAF1644(pxrInternal__aapl__pxrReserved__::UsdGeomSubset *a1, int a2)
{
  StaticTfType = pxrInternal__aapl__pxrReserved__::UsdGeomSubset::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v5);
  if (SchemaInfo)
  {
    v8 = *(SchemaInfo + 6);

    return pxrInternal__aapl__pxrReserved__::UsdPrim::IsInFamily(a1, (SchemaInfo + 2), v8, a2);
  }

  else
  {
    v13[0] = "usd/prim.h";
    v13[1] = "IsInFamily";
    v13[2] = 633;
    v13[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdPrim::IsInFamily(UsdSchemaRegistry::VersionPolicy) const [SchemaType = pxrInternal__aapl__pxrReserved__::UsdGeomSubset]";
    v14 = 0;
    TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v10);
    if (*(TypeName + 23) >= 0)
    {
      v12 = TypeName;
    }

    else
    {
      v12 = *TypeName;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v13, 1, "Class '%s' is not correctly registered with the UsdSchemaRegistry as a schema type. The schema may need to be regenerated.", v12);
    return 0;
  }
}

void *sub_29AAF1710(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A10C514(result, a4);
    result = sub_29AAE8CC0(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29AAF1778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29AAE45F0(&a9);
  _Unwind_Resume(a1);
}

_DWORD *sub_29AAF1798(uint64_t a1)
{
  v2 = (a1 + 32);

  return sub_29A1DE3A4(v2);
}

void pxrInternal__aapl__pxrReserved__::UsdGeomValidatorNameTokens_StaticTokenType::~UsdGeomValidatorNameTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdGeomValidatorNameTokens_StaticTokenType *this)
{
  v4 = (this + 24);
  sub_29A124AB0(&v4);
  v2 = *(this + 2);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 1);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::UsdGeomValidatorNameTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdGeomValidatorNameTokens_StaticTokenType::UsdGeomValidatorNameTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdGeomValidatorNameTokens_StaticTokenType *this)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "usdGeomValidators:StageMetadataChecker", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "usdGeomValidators:SubsetFamilies", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "usdGeomValidators:SubsetParentIsImageable", 0);
  v3 = (this + 24);
  v4 = *this;
  v13 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 = v5;
    }
  }

  v6 = *(this + 1);
  v14 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v14 = v7;
    }
  }

  v8 = *(this + 2);
  v15 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 = v9;
    }
  }

  *v3 = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  sub_29A12EF7C(v3, &v13, &v16, 3uLL);
  for (i = 16; i != -8; i -= 8)
  {
    v11 = *(&v13 + i);
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AAF1980(_Unwind_Exception *a1)
{
  v3 = 16;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[2];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[1];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}