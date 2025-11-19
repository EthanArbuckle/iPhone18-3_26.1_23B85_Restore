uint64_t sub_2713B99E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3[16] == 1)
  {
    __src = 1;
    sub_27173318C(a1 + 24, *(a1 + 32), &__src, &v8, 1uLL);
    v8 = 2;
    sub_27173318C(a1 + 24, *(a1 + 32), &v8, v9, 4uLL);
    sub_2717312C0(a1);
    sub_27173318C(a1 + 24, *(a1 + 32), v3, v3 + 8, 8uLL);
    v10 = v3[8];
    sub_27173318C(a1 + 24, *(a1 + 32), &v10, &v11, 1uLL);
    v4 = *(*(a1 + 56) - 8) + *(a1 + 24);
    *(v4 + 10) = *(a1 + 32) - v4 - 18;
    *(a1 + 56) -= 8;
  }

  else
  {
    v6 = 0;
    sub_27173318C(a1 + 24, *(a1 + 32), &v6, &__src, 1uLL);
  }

  return a1;
}

uint64_t sub_2713B9B08(uint64_t a1)
{
  v2 = *(a1 + 104);
  if ((v2 & 0x10) != 0)
  {
    v4 = *(a1 + 96);
    v5 = *(a1 + 56);
    if (v4 < v5)
    {
      *(a1 + 96) = v5;
      v4 = v5;
    }

    v6 = *(a1 + 48);
    v3 = v4 - v6;
    if (v4 - v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if ((v2 & 8) == 0)
    {
      v3 = 0;
      v13 = 0;
      goto LABEL_12;
    }

    v6 = *(a1 + 24);
    v3 = *(a1 + 40) - v6;
    if (v3 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_23:
      sub_271120DA8();
    }
  }

  if (v3 >= 0x17)
  {
    operator new();
  }

  v13 = v3;
  if (v3)
  {
    memmove(__dst, v6, v3);
  }

LABEL_12:
  *(__dst + v3) = 0;
  v7 = v13;
  v8 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v7 = __dst[1];
  }

  v11 = v7;
  sub_27173318C(*a1 + 24, *(*a1 + 32), &v11, __dst, 8uLL);
  if (v8 >= 0)
  {
    v9 = __dst;
  }

  else
  {
    v9 = __dst[0];
  }

  sub_27173318C(*a1 + 24, *(*a1 + 32), v9, v9 + v11, v11);
  if (v13 < 0)
  {
    operator delete(__dst[0]);
    std::ostream::~ostream();
    *(a1 + 8) = MEMORY[0x277D82878] + 16;
    if ((*(a1 + 95) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_21:
    operator delete(*(a1 + 72));
    goto LABEL_19;
  }

  std::ostream::~ostream();
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    goto LABEL_21;
  }

LABEL_19:
  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));
  return a1;
}

int *sub_2713B9D14(int *a1, uint64_t a2)
{
  v4 = a1[2];
  *v8 = 2;
  (*(*a1 + 104))(a1, v8);
  if (v4 < 1)
  {
    *v8 = *a2;
    *&v8[6] = *(a2 + 12);
    v9[0] = 0;
    v10 = -1;
    v7 = *(a2 + 96);
    if (v7 != -1)
    {
      v11 = v9;
      (off_288131970[v7])(&v11, a2 + 32);
      v10 = v7;
    }

    sub_2713BABCC(a1, v8);
    if (v10 != -1)
    {
      (off_2881318A0[v10])(&v11, v9);
    }

    return a1;
  }

  else
  {
    if (v4 == 2)
    {
      *v8 = 2;
      (*(*a1 + 104))(a1, v8);
    }

    (*(*a1 + 16))(a1);
    *v8 = *a2;
    *&v8[6] = *(a2 + 12);
    v9[0] = 0;
    v10 = -1;
    v5 = *(a2 + 96);
    if (v5 != -1)
    {
      v11 = v9;
      (off_288131970[v5])(&v11, a2 + 32);
      v10 = v5;
    }

    sub_2713BABCC(a1, v8);
    if (v10 != -1)
    {
      (off_2881318A0[v10])(&v11, v9);
    }

    (*(*a1 + 24))(a1);
    return a1;
  }
}

void sub_2713B9F84(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v23 = *MEMORY[0x277D85DE8];
  sub_2713B3058(v10, a2);
  sub_2713BA0B4(a1, v10, a3);
  if (v22 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v21;
      v7 = __p;
      if (v21 != __p)
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

      v21 = v5;
      operator delete(v7);
    }
  }

  if (v19 == 1 && v18 < 0)
  {
    operator delete(v17);
  }

  if (v16 == 1 && v15 < 0)
  {
    operator delete(v14);
  }

  if (v13 == 1 && v12 < 0)
  {
    operator delete(v11);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_2713BA09C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713A31E0(va);
  _Unwind_Resume(a1);
}

void sub_2713BA0B4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  sub_2713BA8E0(&__p, a1, a2 + 8);
  if (*(a2 + 48) == 1)
  {
    __p.__r_.__value_.__s.__data_[0] = 1;
    (*(*a1 + 80))(a1, &__p);
    (*(*a1 + 144))(a1, a2 + 24);
    if (a3 < 4)
    {
      return;
    }
  }

  else
  {
    __p.__r_.__value_.__s.__data_[0] = 0;
    (*(*a1 + 80))(a1, &__p);
    if (a3 < 4)
    {
      return;
    }
  }

  if (*(a2 + 72) == 1)
  {
    __p.__r_.__value_.__s.__data_[0] = 1;
    (*(*a1 + 80))(a1, &__p);
    sub_2713BA8E0(&__p, a1, a2 + 56);
    if (a3 != 5)
    {
      goto LABEL_7;
    }

LABEL_14:
    if (*(a2 + 104) == 1)
    {
      __p.__r_.__value_.__s.__data_[0] = 1;
      (*(*a1 + 80))(a1, &__p);
      (*(*a1 + 144))(a1, a2 + 80);
      return;
    }

    goto LABEL_25;
  }

  __p.__r_.__value_.__s.__data_[0] = 0;
  (*(*a1 + 80))(a1, &__p);
  if (a3 == 5)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (a3 < 6)
  {
    return;
  }

  if ((*(a1 + 12) & 4) == 0)
  {
    if (*(a2 + 104) == 1)
    {
      __p.__r_.__value_.__s.__data_[0] = 1;
      (*(*a1 + 80))(a1, &__p);
      (*(*a1 + 144))(a1, a2 + 80);
      v6 = *(a2 + 136);
      if (v6 != 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      (*(*a1 + 80))(a1, &__p);
      v6 = *(a2 + 136);
      if (v6 != 1)
      {
LABEL_11:
        __p.__r_.__value_.__s.__data_[0] = 0;
        (*(*a1 + 80))(a1, &__p);
        v7 = *(a2 + 168);
        if (v7 != 1)
        {
          goto LABEL_25;
        }

LABEL_22:
        __p.__r_.__value_.__s.__data_[0] = v7;
        (*(*a1 + 80))(a1, &__p);
        __p.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 152) - *(a2 + 144)) >> 3);
        (*(*a1 + 120))(a1, &__p);
        v10 = *(a2 + 144);
        for (i = *(a2 + 152); v10 != i; v10 += 24)
        {
          (*(*a1 + 144))(a1, v10);
        }

        return;
      }
    }

    __p.__r_.__value_.__s.__data_[0] = v6;
    (*(*a1 + 80))(a1, &__p);
    (*(*a1 + 144))(a1, a2 + 112);
    v7 = *(a2 + 168);
    if (v7 != 1)
    {
LABEL_25:
      __p.__r_.__value_.__s.__data_[0] = 0;
      (*(*a1 + 80))(a1, &__p);
      return;
    }

    goto LABEL_22;
  }

  if (*(a2 + 104) == 1)
  {
    __p.__r_.__value_.__s.__data_[0] = 1;
    (*(*a1 + 80))(a1, &__p);
    (*(*a1 + 144))(a1, a2 + 80);
    v8 = *(a2 + 136);
    if (v8 != 1)
    {
      goto LABEL_18;
    }

LABEL_27:
    __p.__r_.__value_.__s.__data_[0] = v8;
    (*(*a1 + 80))(a1, &__p);
    (*(*a1 + 144))(a1, a2 + 112);
    __p.__r_.__value_.__s.__data_[0] = 0;
    v20 = 0;
    if (*(a2 + 168) != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  __p.__r_.__value_.__s.__data_[0] = 0;
  (*(*a1 + 80))(a1, &__p);
  (*(*a1 + 288))(a1, &unk_27188F5E7);
  v8 = *(a2 + 136);
  if (v8 == 1)
  {
    goto LABEL_27;
  }

LABEL_18:
  __p.__r_.__value_.__s.__data_[0] = 0;
  (*(*a1 + 80))(a1, &__p);
  (*(*a1 + 288))(a1, &unk_27188F5E7);
  __p.__r_.__value_.__s.__data_[0] = 0;
  v20 = 0;
  if (*(a2 + 168) != 1)
  {
LABEL_19:
    v18.__r_.__value_.__s.__data_[0] = 0;
    (*(*a1 + 80))(a1, &v18);
    (*(*a1 + 288))(a1, &unk_27188F5E7);
    return;
  }

LABEL_28:
  v11 = *(a2 + 144);
  v12 = *(a2 + 152);
  if (v11 == v12)
  {
LABEL_45:
    sub_271130B58(v11, v12, ";", 1uLL, &v18);
  }

  else
  {
    v13 = *(a2 + 144);
    while (1)
    {
      v14 = *(v13 + 23);
      if ((v14 & 0x80u) == 0)
      {
        v15 = v13;
      }

      else
      {
        v15 = *v13;
      }

      if ((v14 & 0x80u) != 0)
      {
        v14 = v13[1];
      }

      if (v14)
      {
        v16 = 0;
        while (1)
        {
          v17 = *(v15 + v16);
          if (v17 == 59 || v17 == 92)
          {
            break;
          }

          if (v14 == ++v16)
          {
            goto LABEL_30;
          }
        }

        if (v14 != v16 && v16 != -1)
        {
          break;
        }
      }

LABEL_30:
      v13 += 3;
      if (v13 == v12)
      {
        goto LABEL_45;
      }
    }

    sub_2713B3DE4(v11, 0, *(a2 + 152), ";", 1uLL, &v18);
  }

  __p = v18;
  v20 = 1;
  v18.__r_.__value_.__s.__data_[0] = 1;
  (*(*a1 + 80))(a1, &v18);
  (*(*a1 + 144))(a1, &__p);
  if ((v20 & 1) != 0 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2713BA8BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if ((a19 & 1) != 0 && a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2713BA8E0(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v5 = a2[2];
  v7 = 2;
  (*(*a2 + 104))(a2, &v7);
  if (v5 < 1)
  {
    (*(*a2 + 72))(a2, a3);
    return sub_2713BAA64(a2, (a3 + 8));
  }

  else
  {
    if (v5 == 2)
    {
      v8 = 2;
      (*(*a2 + 104))(a2, &v8);
    }

    (*(*a2 + 16))(a2);
    (*(*a2 + 72))(a2, a3);
    sub_2713BAA64(a2, (a3 + 8));
    return (*(*a2 + 24))(a2);
  }
}

uint64_t sub_2713BAA64(_BYTE *a1, _BYTE *a2)
{
  if ((a1[12] & 2) != 0)
  {
    v4 = 0;
    sub_2713B35AC();
  }

  v3[0] = *a2;
  return (*(*a1 + 80))(a1, v3);
}

void sub_2713BAB88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713BABA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713BABB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713BABCC(int *a1, unsigned __int16 *a2)
{
  if ((a1[3] & 2) != 0)
  {
    LODWORD(v11) = 0;
    sub_2713B4A74();
  }

  LOWORD(v8) = *a2;
  (*(*a1 + 96))(a1, &v8);
  v4 = a1[2];
  LODWORD(v8) = 2;
  (*(*a1 + 104))(a1, &v8);
  if (v4 < 1)
  {
    sub_2713BB0A8(a1, a2 + 1);
    (*(*a1 + 104))(a1, a2 + 8);
    (*(*a1 + 104))(a1, a2 + 10);
    v5 = *a2;
    if (v5 == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v4 == 2)
    {
      LODWORD(v8) = 2;
      (*(*a1 + 104))(a1, &v8);
    }

    (*(*a1 + 16))(a1);
    sub_2713BB0A8(a1, a2 + 1);
    (*(*a1 + 104))(a1, a2 + 8);
    (*(*a1 + 104))(a1, a2 + 10);
    (*(*a1 + 24))(a1);
    v5 = *a2;
    if (v5 == 1)
    {
LABEL_8:
      sub_2715F5084(a2, &v8);
      sub_2715F78FC(a1, &v8);
      v6 = v10;
      if (!v10)
      {
        return;
      }

      goto LABEL_12;
    }
  }

  v7 = sub_2715F7478(v5);
  sub_2715F5084(a2, v21);
  v8 = a1;
  v9 = MEMORY[0x277D82868] + 16;
  MEMORY[0x2743BED80](&v10);
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  v9 = MEMORY[0x277D82878] + 16;
  v14 = 0u;
  v15 = 0u;
  v16 = 24;
  sub_271129318(&v9);
  v18.__loc_ = 0;
  v17 = MEMORY[0x277D82850] + 24;
  v18.__vftable = (MEMORY[0x277D82850] + 64);
  std::ios_base::init(&v18, &v9);
  v19 = 0;
  v20 = -1;
  sub_2713B4F1C(v21, &v17, v7);
  sub_2713BB210(&v8);
  v6 = v22;
  if (!v22)
  {
    return;
  }

LABEL_12:
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }
}

void sub_2713BAFE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2713BB210(va);
  sub_271229D10(v4 - 120);
  _Unwind_Resume(a1);
}

void sub_2713BAFFC(_Unwind_Exception *exception_object)
{
  if (*(v2 - 97) < 0)
  {
    operator delete(*(v1 + 272));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2713BB0A8(_BYTE *a1, void *a2)
{
  if ((a1[12] & 2) != 0)
  {
    v4 = 0;
    sub_2713B4CD0();
  }

  v3[0] = *a2;
  return (*(*a1 + 120))(a1, v3);
}

void sub_2713BB1CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713BB1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713BB1FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void *sub_2713BB210(void *a1)
{
  v2 = *(a1 + 26);
  if ((v2 & 0x10) != 0)
  {
    v4 = a1[12];
    v5 = a1[7];
    if (v4 < v5)
    {
      a1[12] = v5;
      v4 = v5;
    }

    v6 = a1[6];
    v3 = v4 - v6;
    if (v4 - v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if ((v2 & 8) == 0)
    {
      v3 = 0;
      v15 = 0;
      goto LABEL_12;
    }

    v6 = a1[3];
    v3 = a1[5] - v6;
    if (v3 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_22:
      sub_271120DA8();
    }
  }

  if (v3 >= 0x17)
  {
    operator new();
  }

  v15 = v3;
  if (v3)
  {
    memmove(__dst, v6, v3);
  }

LABEL_12:
  *(__dst + v3) = 0;
  v7 = v15;
  v8 = v15;
  if ((v15 & 0x80u) != 0)
  {
    v7 = __dst[1];
  }

  v13 = v7;
  (*(**a1 + 120))(*a1, &v13);
  v9 = __dst[0];
  if (v8 >= 0)
  {
    v9 = __dst;
  }

  v10 = *a1;
  v12[0] = v9;
  v12[1] = v13;
  (*(*v10 + 272))(v10, v12);
  if (v15 < 0)
  {
    operator delete(__dst[0]);
    std::ostream::~ostream();
    a1[1] = MEMORY[0x277D82878] + 16;
    if ((*(a1 + 95) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_20:
    operator delete(a1[9]);
    goto LABEL_18;
  }

  std::ostream::~ostream();
  a1[1] = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    goto LABEL_20;
  }

LABEL_18:
  a1[1] = MEMORY[0x277D82868] + 16;
  std::locale::~locale(a1 + 2);
  return a1;
}

void sub_2713BB450(uint64_t a1, uint64_t a2)
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
  v6 = 6;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_27182EB6C(a1, &v6);
  if (v6 >= 3)
  {
    sub_2713BB75C(a1, a2);
  }

  sub_2713BB550(v5, a1);
}

void sub_2713BB550(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = 0;
  LOBYTE(v5) = 0;
  v6 = 0;
  sub_2713BD0D0(a2, v2);
}

void sub_2713BB710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a18 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 48) == 1 && *(v18 - 49) < 0)
  {
    operator delete(*(v18 - 72));
  }

  _Unwind_Resume(exception_object);
}

void sub_2713BB75C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 104);
  *(a1 + 88) = "auto_timestamp";
  *(a1 + 96) = 14;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v7[0] = *(a1 + 32);
  v5 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v5;
  sub_27182D194(a1 + 40, v7);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  v7[0] = "version";
  v7[1] = 7;
  v8[0] = 2;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_27182EB6C(a1, v8);
  if (v8[0] >= 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = v8[0];
  }

  sub_2713BBD0C(a1, (a2 + 8), v6);
}

void sub_2713BB9DC(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 23);
  v4 = a1[1];
  if ((v3 & 0x80000000) == 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if ((v3 & 0x80000000) == 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if (v5)
  {
    v8 = memchr(v6, 92, v5);
    if (v8 && v8 - v6 != -1)
    {
      v10 = 0;
      v11 = v3 >> 63;
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      __p[0] = 0;
      __p[1] = 0;
      v23 = 0;
      while (1)
      {
        if (v11)
        {
          v14 = *a1;
        }

        else
        {
          v14 = a1;
        }

        v15 = v14[v10];
        if (v15 != 59)
        {
          if (v15 == 92)
          {
            ++v10;
          }

          v18 = v14[v10];
          if (SHIBYTE(v23) < 0)
          {
            v19 = ((v23 & 0x7FFFFFFFFFFFFFFFLL) - 1);
            if (__p[1] == v19)
            {
              if ((v23 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
              {
                sub_271120DA8();
              }

LABEL_37:
              operator new();
            }

            v21 = __p[0];
            v20 = __p[1]++;
          }

          else
          {
            if (HIBYTE(v23) == 22)
            {
              goto LABEL_37;
            }

            v20 = HIBYTE(v23);
            HIBYTE(v23) = (HIBYTE(v23) + 1) & 0x7F;
            v21 = __p;
          }

          v20[v21] = v18;
          v12 = &v20[v21 + 1];
          goto LABEL_17;
        }

        v16 = a2[1];
        if (v16 >= a2[2])
        {
          a2[1] = sub_271127424(a2, __p);
          if (SHIBYTE(v23) < 0)
          {
            goto LABEL_34;
          }
        }

        else if (SHIBYTE(v23) < 0)
        {
          sub_271127178(a2[1], __p[0], __p[1]);
          a2[1] = v16 + 24;
          if (SHIBYTE(v23) < 0)
          {
LABEL_34:
            v12 = __p[0];
            __p[1] = 0;
            goto LABEL_17;
          }
        }

        else
        {
          v17 = *__p;
          *(v16 + 16) = v23;
          *v16 = v17;
          a2[1] = v16 + 24;
          if (SHIBYTE(v23) < 0)
          {
            goto LABEL_34;
          }
        }

        HIBYTE(v23) = 0;
        v12 = __p;
LABEL_17:
        *v12 = 0;
        ++v10;
        v13 = *(a1 + 23);
        v11 = v13 >> 63;
        if ((v13 & 0x80000000) != 0)
        {
          v13 = a1[1];
        }

        if (v10 >= v13)
        {
          sub_271130678(a2, __p);
          if (SHIBYTE(v23) < 0)
          {
            operator delete(__p[0]);
          }

          return;
        }
      }
    }
  }

  sub_2713BC7A8(v6, v5, ";", 1, 1, a2);
}

void sub_2713BBCD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_27137F4D0(v15);
  _Unwind_Resume(a1);
}

void sub_2713BBD0C(uint64_t a1, char **a2, unsigned int a3)
{
  if (a3 >= 2)
  {
    v5 = *(a1 + 104);
    *(a1 + 88) = "ns";
    *(a1 + 96) = 2;
    if ((v5 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v6 = sub_27182D6C4(a1);
    ++*(a1 + 112);
    v12 = 0;
    sub_2715D6A90(v6, &v12);
    *a2 = v12;
    v7 = (a2 + 1);
    v8 = *(a1 + 104);
    *(a1 + 88) = "clock_type";
    *(a1 + 96) = 10;
    if ((v8 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v12 = v7;
    sub_2713BBE68(a1);
  }

  v13 = 0;
  v9 = *(a1 + 104);
  *(a1 + 88) = "ns";
  *(a1 + 96) = 2;
  if ((v9 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v10 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  v14 = 0;
  sub_2715D6A90(v10, &v14);
  v12 = v14;
  v11 = *(a1 + 104);
  *(a1 + 88) = "clock_type";
  *(a1 + 96) = 10;
  if ((v11 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v14 = &v13;
  sub_2713BBE68(a1);
}

void sub_2713BBE68(void *a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v4 = 0;
  v2 = sub_27182D6C4(a1);
  ++a1[14];
  v6 = 0;
  v5 = 0uLL;
  sub_2715D6E6C(v2, &v5);
  v4 = v6;
  *__p = v5;
  operator new();
}

void sub_2713BBF58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  a17 = 0;
  sub_27184D728(&a17, v22);
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_2713BBFEC(void *a1, uint64_t a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  if (*sub_27182D6C4(a1))
  {
    v4 = sub_27182D6C4(a1);
    ++a1[14];
    v10 = 0uLL;
    v9 = 0;
    sub_2715D6E6C(v4, &v9);
    v5 = v9;
    v11[0] = v10;
    *(v11 + 7) = *(&v10 + 7);
    v6 = HIBYTE(v10);
    if (*(a2 + 24) == 1)
    {
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *(a2 + 24) = 0;
    }

    v7 = v11[0];
    *a2 = v5;
    *(a2 + 8) = v7;
    *(a2 + 15) = *(v11 + 7);
    *(a2 + 23) = v6;
    *(a2 + 24) = 1;
  }

  else
  {
    ++a1[14];
    if (*(a2 + 24) == 1)
    {
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *(a2 + 24) = 0;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_2713BC0FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713BC118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  v11[0] = *(a2 + 32);
  v6 = sub_27182D6C4(a2);
  ++*(a2 + 112);
  *(a2 + 32) = v6;
  sub_27182D194(a2 + 40, v11);
  sub_2717313F0(a2 + 64, (a2 + 112));
  *(a2 + 112) = 0;
  v11[0] = "version";
  v11[1] = 7;
  v12 = 2;
  *(a2 + 88) = "version";
  *(a2 + 96) = 7;
  *(a2 + 104) = 1;
  sub_27182EB6C(a2, &v12);
  v7 = v12;
  if (v5 >= 1)
  {
    if (v5 == 2)
    {
      v8 = v12;
      sub_2713BC388(a2, a3, v12);
      v7 = v8;
    }

    if (v7 >= 2)
    {
      v7 = 2;
    }
  }

  sub_2713BC22C(a2, a3, v7);
  v9 = *(a2 + 48);
  *(a2 + 32) = *(v9 - 8);
  v10 = *(a2 + 72);
  *(a2 + 112) = *(v10 - 8);
  *(a2 + 48) = v9 - 8;
  *(a2 + 72) = v10 - 8;
}

void sub_2713BC22C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 < 2)
  {
    v14 = 0;
    v9 = *(a1 + 104);
    *(a1 + 88) = "ns";
    *(a1 + 96) = 2;
    if ((v9 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v10 = sub_27182D6C4(a1);
    ++*(a1 + 112);
    v15 = 0;
    sub_2715D6A90(v10, &v15);
    v13 = v15;
    v11 = *(a1 + 104);
    *(a1 + 88) = "clock_type";
    *(a1 + 96) = 10;
    if ((v11 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v15 = &v14;
    sub_2713BC480(a1, &v15);
    v12 = v14;
    *a2 = v13;
    *(a2 + 8) = v12;
  }

  else
  {
    v5 = *(a1 + 104);
    *(a1 + 88) = "ns";
    *(a1 + 96) = 2;
    if ((v5 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v6 = sub_27182D6C4(a1);
    ++*(a1 + 112);
    v13 = 0;
    sub_2715D6A90(v6, &v13);
    *a2 = v13;
    v7 = (a2 + 8);
    v8 = *(a1 + 104);
    *(a1 + 88) = "clock_type";
    *(a1 + 96) = 10;
    if ((v8 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v13 = v7;
    sub_2713BC480(a1, &v13);
  }
}

void sub_2713BC388(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 >= 2)
  {
    v5 = 2;
    v3 = *(a1 + 104);
    *(a1 + 88) = "min_version";
    *(a1 + 96) = 11;
    if ((v3 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    sub_27182EB6C(a1, &v5);
    if (v5 >= 3)
    {
      v4 = v5;
      if ((atomic_load_explicit(&qword_280878A70, memory_order_acquire) & 1) == 0)
      {
        if (__cxa_guard_acquire(&qword_280878A70))
        {
          sub_2718519B4("cv3d::kit::timeio::TimestampSample]", 0x22uLL, &stru_280878A58);
          __cxa_guard_release(&qword_280878A70);
          sub_271847D5C(&stru_280878A58, v4, 2u);
        }
      }

      sub_271847D5C(&stru_280878A58, v4, 2u);
    }
  }
}

void sub_2713BC480(uint64_t a1, _BYTE **a2)
{
  if ((*(a1 + 12) & 2) != 0)
  {
    __p[0] = 0;
    __p[1] = 0;
    v6 = 0;
    v4 = sub_27182D6C4(a1);
    ++*(a1 + 112);
    v8 = 0;
    v7 = 0uLL;
    sub_2715D6E6C(v4, &v7);
    v6 = v8;
    *__p = v7;
    operator new();
  }

  LOBYTE(v7) = 0;
  sub_27182E90C(a1, &v7);
  **a2 = v7;
}

void sub_2713BC590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  a17 = 0;
  sub_27184D728(&a17, v22);
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_2713BC624(void *a1, uint64_t a2)
{
  if (*sub_27182D6C4(a1))
  {
    v4 = sub_27182D6C4(a1);
    ++a1[14];
    v16 = 0uLL;
    v17 = 0;
    sub_2718319B8(v4, &v16);
    v5 = v16;
    v6 = v17;
    if (*(a2 + 24))
    {
      v7 = *a2;
      if (*a2)
      {
        v15 = v16;
        v8 = *(a2 + 8);
        v9 = *a2;
        if (v8 != v7)
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
          v9 = *a2;
        }

        *(a2 + 8) = v7;
        operator delete(v9);
        v5 = v15;
      }
    }

    *a2 = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = 1;
  }

  else
  {
    ++a1[14];
    if (*(a2 + 24) == 1)
    {
      v11 = *a2;
      if (*a2)
      {
        v12 = *(a2 + 8);
        v13 = *a2;
        if (v12 != v11)
        {
          do
          {
            v14 = *(v12 - 1);
            v12 -= 3;
            if (v14 < 0)
            {
              operator delete(*v12);
            }
          }

          while (v12 != v11);
          v13 = *a2;
        }

        *(a2 + 8) = v11;
        operator delete(v13);
      }

      *(a2 + 24) = 0;
    }
  }
}

void sub_2713BC778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void **);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27137F4D0(va1);
  sub_27137F4D0(va);
  _Unwind_Resume(a1);
}

void sub_2713BC794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27137F4D0(va);
  _Unwind_Resume(a1);
}

void sub_2713BC7A8(char *__src@<X0>, size_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, void *a6@<X8>)
{
  v8 = a6;
  v30 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
    v27 = __src;
    __p[0] = __src;
    v10 = &__src[a2];
    if (a4)
    {
      v12 = 0;
      v13 = __src;
      if (__src != v10)
      {
LABEL_4:
        v13 = __src;
        while (1)
        {
          v14 = a4;
          v15 = a3;
          do
          {
            if (*v15 == *v13)
            {
              goto LABEL_10;
            }

            ++v15;
            --v14;
          }

          while (v14);
          if (++v13 == v10)
          {
            v13 = v10;
            goto LABEL_10;
          }
        }
      }

      while (1)
      {
LABEL_10:
        v27 = v13;
        if (a5 == 1 || v13 != __src)
        {
          if (v12 >= *(v8 + 16))
          {
            v12 = sub_2713BCBE4(v8, __p, &v27);
          }

          else
          {
            v16 = v13 - __src;
            if ((v13 - __src) > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_65;
            }

            if (v16 > 0x16)
            {
              operator new();
            }

            v12[23] = v16;
            if (v13 != __src)
            {
              memmove(v12, __src, v13 - __src);
            }

            v12[v16] = 0;
            v12 += 24;
          }

          v8 = a6;
          __src = v27;
          a6[1] = v12;
        }

        if (__src == v10)
        {
          break;
        }

        __p[0] = ++__src;
        v13 = __src;
        if (__src != v10)
        {
          goto LABEL_4;
        }
      }
    }

    else if (a5 == 1)
    {
      if (v10 == __src)
      {
        v20 = 0;
      }

      else
      {
        v20 = a2;
      }

      v27 = &__src[v20];
      while (1)
      {
        v21 = sub_2713BCBE4(v8, __p, &v27);
        v8 = a6;
        v22 = v27;
        a6[1] = v21;
        if (v22 == v10)
        {
          break;
        }

        while (1)
        {
          v23 = v22 + 1;
          v24 = *(v8 + 16);
          v25 = v10 == v23 ? 0 : v10 - v23;
          v27 = &v23[v25];
          __p[0] = v23;
          if (v21 >= v24)
          {
            break;
          }

          if (v25 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_65;
          }

          if (v25 >= 0x17)
          {
            operator new();
          }

          v21[23] = v25;
          if (v25)
          {
            memmove(v21, v23, v25);
          }

          v21[v25] = 0;
          v21 += 24;
          v8 = a6;
          v22 = v27;
          a6[1] = v21;
          if (v22 == v10)
          {
            goto LABEL_46;
          }
        }
      }
    }

    else
    {
      v17 = 0;
      if (v10 == __src)
      {
        v18 = 0;
      }

      else
      {
        v18 = a2;
      }

      v27 = &__src[v18];
      if (v18)
      {
LABEL_32:
        if (v17 >= *(v8 + 16))
        {
          v17 = sub_2713BCBE4(v8, __p, &v27);
        }

        else
        {
          if (v18 > 0x7FFFFFFFFFFFFFF7)
          {
LABEL_65:
            sub_271120DA8();
          }

          if (v18 >= 0x17)
          {
            operator new();
          }

          v17[23] = v18;
          memmove(v17, __src, v18);
          v17[v18] = 0;
          v17 += 24;
        }

        v8 = a6;
        __src = v27;
        a6[1] = v17;
      }

      while (__src != v10)
      {
        if (v10 == ++__src)
        {
          v18 = 0;
        }

        else
        {
          v18 = v10 - __src;
        }

        v27 = &__src[v18];
        __p[0] = __src;
        if (v18)
        {
          goto LABEL_32;
        }
      }
    }
  }

  else if (a5)
  {
    v29 = 0;
    LOBYTE(__p[0]) = 0;
    sub_2711309E8(a6, __p, 1uLL);
    if (v29 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
  }

LABEL_46:
  v19 = *MEMORY[0x277D85DE8];
}

void sub_2713BCB90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *sub_2713BCBE4(uint64_t a1, const void **a2, const void **a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v3 > 0xAAAAAAAAAAAAAAALL)
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

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v7 = *a2;
  v8 = *a3;
  v9 = *a3 - *a2;
  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (v9 > 0x16)
  {
    operator new();
  }

  *(8 * ((*(a1 + 8) - *a1) >> 3) + 0x17) = v9;
  if (v8 != v7)
  {
    memmove(v6, v7, v9);
  }

  v6[v9] = 0;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v6[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v6 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v6 + 24;
}

void sub_2713BCD90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

void sub_2713BCDA4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (*(a1 + 24))
    {
      v3 = *a1;
      if (*a1)
      {
        v4 = a2;
        v5 = *(a1 + 8);
        v6 = *a1;
        if (v5 != v3)
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

          while (v5 != v3);
          v6 = *a1;
        }

        *(a1 + 8) = v3;
        operator delete(v6);
        *a1 = 0;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        a2 = v4;
      }

      *a1 = *a2;
      *(a1 + 16) = *(a2 + 16);
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
    }
  }

  else if (*(a1 + 24))
  {
    v8 = *a1;
    if (*a1)
    {
      v9 = *(a1 + 8);
      v10 = *a1;
      if (v9 != v8)
      {
        do
        {
          v11 = *(v9 - 1);
          v9 -= 3;
          if (v11 < 0)
          {
            operator delete(*v9);
          }
        }

        while (v9 != v8);
        v10 = *a1;
      }

      *(a1 + 8) = v8;
      operator delete(v10);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = 1;
  }
}

uint64_t sub_2713BCEE8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  if (*(a1 + 48) == *(a2 + 48))
  {
    if (*(a1 + 48))
    {
      if (*(a1 + 47) < 0)
      {
        operator delete(*(a1 + 24));
      }

      v5 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 24) = v5;
      *(a2 + 47) = 0;
      *(a2 + 24) = 0;
    }
  }

  else if (*(a1 + 48))
  {
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    *(a1 + 48) = 0;
  }

  else
  {
    v6 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v6;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 24) = 0;
    *(a1 + 48) = 1;
  }

  v7 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v7;
  if (*(a1 + 104) != *(a2 + 104))
  {
    if (!*(a1 + 104))
    {
      v11 = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 80) = v11;
      *(a2 + 88) = 0;
      *(a2 + 96) = 0;
      *(a2 + 80) = 0;
      *(a1 + 104) = 1;
      v9 = *(a1 + 136);
      if (v9 == *(a2 + 136))
      {
        goto LABEL_22;
      }

LABEL_27:
      if (v9)
      {
        if (*(a1 + 135) < 0)
        {
          operator delete(*(a1 + 112));
        }

        *(a1 + 136) = 0;
      }

      else
      {
        v12 = *(a2 + 112);
        *(a1 + 128) = *(a2 + 128);
        *(a1 + 112) = v12;
        *(a2 + 120) = 0;
        *(a2 + 128) = 0;
        *(a2 + 112) = 0;
        *(a1 + 136) = 1;
      }

      goto LABEL_32;
    }

    if (*(a1 + 103) < 0)
    {
      operator delete(*(a1 + 80));
    }

    *(a1 + 104) = 0;
LABEL_21:
    v9 = *(a1 + 136);
    if (v9 == *(a2 + 136))
    {
      goto LABEL_22;
    }

    goto LABEL_27;
  }

  if (!*(a1 + 104))
  {
    goto LABEL_21;
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v8 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 80) = v8;
  *(a2 + 103) = 0;
  *(a2 + 80) = 0;
  v9 = *(a1 + 136);
  if (v9 != *(a2 + 136))
  {
    goto LABEL_27;
  }

LABEL_22:
  if (v9)
  {
    if (*(a1 + 135) < 0)
    {
      operator delete(*(a1 + 112));
    }

    v10 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 112) = v10;
    *(a2 + 135) = 0;
    *(a2 + 112) = 0;
  }

LABEL_32:
  sub_2713BCDA4(a1 + 144, a2 + 144);
  return a1;
}

void sub_2713BD0D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 104);
  *(a1 + 88) = "auto_timestamp";
  *(a1 + 96) = 14;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v7[0] = *(a1 + 32);
  v5 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v5;
  sub_27182D194(a1 + 40, v7);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  v7[0] = "version";
  v7[1] = 7;
  v8 = 2;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_27182EB6C(a1, &v8);
  if (v8 >= 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = v8;
  }

  sub_2713BBD0C(a1, (a2 + 8), v6);
}

void sub_2713BD210(uint64_t a1, uint64_t a2)
{
  v6[0] = *(a1 + 32);
  v4 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v4;
  sub_27182D194(a1 + 40, v6);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }

  v6[0] = "version";
  v6[1] = 7;
  v7 = 2;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_27182EB6C(a1, &v7);
  if (v7 >= 2)
  {
    v5 = *(a1 + 104);
    *(a1 + 88) = "io_format";
    *(a1 + 96) = 9;
    if ((v5 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v6[0] = a2;
    sub_2713BDD60(a1);
  }

  v6[0] = &unk_28810F9B8;
  sub_2713BE9C4();
}

void sub_2713BDCC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_2713BE258(&a22);
  sub_2713BF3B0(&a9);
  _Unwind_Resume(a1);
}

void sub_2713BDCE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_2713BE258(va);
  _Unwind_Resume(a1);
}

void sub_2713BDD00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_2713A32D8(&a22);
  sub_2713BF3B0(&a9);
  _Unwind_Resume(a1);
}

void sub_2713BDD1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2713AE3D8(v9);
  sub_2713BF3B0(&a9);
  _Unwind_Resume(a1);
}

void sub_2713BDD38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_2712B8A00(va);
  _Unwind_Resume(a1);
}

void sub_2713BDD60(void *a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v4 = 0;
  v2 = sub_27182D6C4(a1);
  ++a1[14];
  v6 = 0;
  v5 = 0uLL;
  sub_2715D6E6C(v2, &v5);
  v4 = v6;
  *__p = v5;
  operator new();
}

void sub_2713BDE50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  a17 = 0;
  sub_27184D728(&a17, v22);
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_2713BDEE4(void *a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v4 = 0;
  v2 = sub_27182D6C4(a1);
  ++a1[14];
  v6 = 0;
  v5 = 0uLL;
  sub_2715D6E6C(v2, &v5);
  v4 = v6;
  *__p = v5;
  operator new();
}

void sub_2713BDFD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  a17 = 0;
  sub_27184D728(&a17, v22);
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_2713BE218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_271235250(&a16);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

uint64_t sub_2713BE258(uint64_t a1)
{
  std::istream::~istream();
  *a1 = MEMORY[0x277D82878] + 16;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_2713BE588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_27112D66C(v17 + 16);
  sub_27112E024(va);
  sub_2712B8A00(v18 - 112);
  _Unwind_Resume(a1);
}

uint64_t sub_2713BE5C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v12[0] = &unk_288108A70;
  v12[1] = a1;
  v13 = v12;
  sub_2715E8364(v12, 0, a2, a3, v8);
  result = v13;
  if (v13 == v12)
  {
    result = (*(*v13 + 32))(v13);
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_7:
    v11[0] = "load";
    v11[1] = 4;
    v10 = a3;
    sub_2715E8C50("Failure during ", v11, " from stream with file format ");
  }

  if (v13)
  {
    result = (*(*v13 + 40))(v13);
  }

  if ((v9 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_5:
  *(a4 + 120) = 1;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2713BE960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_27112D66C(v15 + 16);
  sub_27112D71C(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_27112E024(v16 - 224);
  _Unwind_Resume(a1);
}

void sub_2713BE9C4()
{
  v1 = 0;
  v2 = 0;
  v3 = 0;
  sub_2717CD2D0(v0, &v2, &v3, 1, &v1, 1, 0);
  operator new();
}

void sub_2713BEB7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(v2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2713BEBCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (a18)
  {
    free(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2713BEC54(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_288108A70;
  a2[1] = v2;
  return result;
}

uint64_t sub_2713BEC8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4cv3d3kit5imgio6detail12ProvideImageINS0_3img5ImageILNS4_6FormatE0ENS4_13DynamicBufferEEEEE")
  {
    return a1 + 8;
  }

  if (((v2 & "N4cv3d3kit5imgio6detail12ProvideImageINS0_3img5ImageILNS4_6FormatE0ENS4_13DynamicBufferEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4cv3d3kit5imgio6detail12ProvideImageINS0_3img5ImageILNS4_6FormatE0ENS4_13DynamicBufferEEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3kit5imgio6detail12ProvideImageINS0_3img5ImageILNS4_6FormatE0ENS4_13DynamicBufferEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

double sub_2713BED04@<D0>(uint64_t *a1@<X0>, _DWORD *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (!a3)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/ImageIO/include/Kit/ImageIO/ImageIO.h", 386, "format != img::Format::Dynamic", 0x1EuLL, "loader must specify the format to load as", 0x29uLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1)
      {
        goto LABEL_11;
      }

      v8 = qword_28087C408;
      v9 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v8 = qword_28087C408;
      v9 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_24;
      }
    }

    do
    {
      v11 = *v8;
      v10 = *(v8 + 8);
      v8 += 16;
      v11(v10, "format != img::Format::Dynamic", 30, "loader must specify the format to load as", 41);
    }

    while (v8 != v9);
    if (byte_28087C430)
    {
LABEL_11:
      qword_28087C420(*algn_28087C428, "format != img::Format::Dynamic", 30, "loader must specify the format to load as", 41);
      a3 = 0;
      v7 = *a1;
      if (*(*a1 + 32) != *a2)
      {
        goto LABEL_16;
      }

LABEL_12:
      if (*(v7 + 56) == a3 && *(v7 + 36) == a2[1])
      {
        goto LABEL_23;
      }

      goto LABEL_16;
    }

LABEL_24:
    abort();
  }

  v7 = *a1;
  if (*(*a1 + 32) == *a2)
  {
    goto LABEL_12;
  }

LABEL_16:
  sub_2713BEFBC(v7, a3, a2, &v20);
  v13 = *a1;
  v14 = v21;
  v21 = 0uLL;
  v15 = *(v13 + 16);
  *(v13 + 8) = v14;
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  v16 = *v22;
  v17 = *&v22[16];
  *(v13 + 54) = *&v22[30];
  *(v13 + 40) = v17;
  *(v13 + 24) = v16;
  v18 = *(&v21 + 1);
  if (*(&v21 + 1) && !atomic_fetch_add((*(&v21 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  v7 = *a1;
LABEL_23:
  v20 = &unk_28810E778;
  sub_2712C9B00(v7, &v21);
  *a4 = &unk_28810E778;
  *(a4 + 8) = v21;
  *(a4 + 24) = *v22;
  result = *&v22[14];
  *(a4 + 38) = *&v22[14];
  *(a4 + 120) = 1;
  return result;
}

void sub_2713BEFBC(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    v5 = *(a1 + 8);
    v4 = *(a1 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = v5;
    v11 = v4;
    v12 = &v10;
    v13 = a3;
    v14 = &v15;
    sub_271785964(a2, &v12, a4);
  }

  else
  {
    v7 = *(a1 + 8);
    v6 = *(a1 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = v7;
    v11 = v6;
    v8 = *(a1 + 56);
    v12 = &v10;
    v13 = a3;
    v14 = &v15;
    sub_271785964(v8, &v12, a4);
  }

  v9 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }
  }
}

uint64_t sub_2713BF0D4(uint64_t a1)
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

uint64_t sub_2713BF160(uint64_t a1, void *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x2743BED80](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  v4 = (a1 + 64);
  *(a1 + 80) = 0u;
  *(a1 + 96) = 24;
  sub_271129318(a1);
  *(a1 + 168) = 0;
  *(a1 + 104) = MEMORY[0x277D82848] + 24;
  *(a1 + 112) = 0;
  *(a1 + 120) = MEMORY[0x277D82848] + 64;
  std::ios_base::init((a1 + 120), a1);
  *(a1 + 256) = 0;
  *(a1 + 264) = -1;
  v5 = sub_27182D6C4(a2);
  ++a2[14];
  __n.__r_.__value_.__r.__words[0] = 0;
  sub_2715D693C(v5, &__n);
  v6 = __n.__r_.__value_.__r.__words[0];
  memset(&__n, 0, sizeof(__n));
  if (v6)
  {
    std::string::append(&__n, v6, 0);
    if ((__n.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_n = &__n;
    }

    else
    {
      p_n = __n.__r_.__value_.__r.__words[0];
    }
  }

  else
  {
    p_n = &__n;
  }

  v10[0] = p_n;
  v10[1] = v6;
  v8 = sub_27182D6C4(a2);
  ++a2[14];
  sub_27182D810(v8, v10);
  if (*(a1 + 87) < 0)
  {
    operator delete(*v4);
  }

  *v4 = *&__n.__r_.__value_.__l.__data_;
  *(a1 + 80) = *(&__n.__r_.__value_.__l + 2);
  *(&__n.__r_.__value_.__s + 23) = 0;
  __n.__r_.__value_.__s.__data_[0] = 0;
  sub_271129318(a1);
  if (SHIBYTE(__n.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__n.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_2713BF320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  std::istream::~istream();
  sub_2713B5444(v17);
  _Unwind_Resume(a1);
}

uint64_t sub_2713BF3B0(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2 != -1)
  {
    (off_2881318A0[v2])(&v4, a1 + 32);
  }

  *(a1 + 96) = -1;
  return a1;
}

__n128 sub_2713BF40C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_28810E7B8;
  *(v2 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = *(a2 + 24);
  *(v2 + 38) = *(a2 + 38);
  *(v2 + 24) = result;
  return result;
}

__n128 sub_2713BF44C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_28810F9B8;
  *(v2 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = *(a2 + 24);
  v4 = *(a2 + 40);
  *(v2 + 54) = *(a2 + 54);
  *(v2 + 40) = v4;
  *(v2 + 24) = result;
  return result;
}

__n128 sub_2713BF494(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(*a1 + 64);
  if (v5 == -1)
  {
    goto LABEL_8;
  }

  if (v5)
  {
    (off_2881318A0[v5])(&v10, v4);
LABEL_8:
    *(v4 + 64) = -1;
    *v4 = &unk_28810E7B8;
    *(v4 + 8) = *(a3 + 8);
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    result = *(a3 + 24);
    *(v4 + 38) = *(a3 + 38);
    *(v4 + 24) = result;
    *(v4 + 64) = 0;
    return result;
  }

  v6 = *(a3 + 8);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v7 = *(a2 + 16);
  *(a2 + 8) = v6;
  if (v7)
  {
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = a2;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      a2 = v8;
    }
  }

  result = *(a3 + 24);
  *(a2 + 38) = *(a3 + 38);
  *(a2 + 24) = result;
  return result;
}

__n128 sub_2713BF5B8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(*a1 + 64);
  if (v5 == -1)
  {
    goto LABEL_8;
  }

  if (v5 != 1)
  {
    (off_2881318A0[v5])(&v12, v4);
LABEL_8:
    *(v4 + 64) = -1;
    *v4 = &unk_28810F9B8;
    *(v4 + 8) = *(a3 + 8);
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    result = *(a3 + 24);
    v11 = *(a3 + 40);
    *(v4 + 54) = *(a3 + 54);
    *(v4 + 40) = v11;
    *(v4 + 24) = result;
    *(v4 + 64) = 1;
    return result;
  }

  v6 = *(a3 + 8);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v7 = *(a2 + 16);
  *(a2 + 8) = v6;
  if (v7)
  {
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = a2;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      a2 = v8;
    }
  }

  result = *(a3 + 24);
  v10 = *(a3 + 40);
  *(a2 + 54) = *(a3 + 54);
  *(a2 + 40) = v10;
  *(a2 + 24) = result;
  return result;
}

void sub_2713BF6F4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 <= 2)
  {
    sub_2713BF94C(&v11, a2, a3, a4);
  }

  else
  {
    v12 = 0;
    sub_27183FF6C(*(a2 + 48), &v12);
    v7 = a2 + 16;
    *&v11 = (*(*(a2 + 16) + 32))(a2 + 16);
    *(&v11 + 1) = v12;
    sub_2713BF82C(a2 + 24, &v11);
    if (a4 >= 6)
    {
      v8 = 6;
    }

    else
    {
      v8 = a4;
    }

    sub_2713BFB58(a2, a3, v8);
    v9 = *(a2 + 32);
    v10 = *(v9 - 16) - (*(*v7 + 32))(a2 + 16) + *(v9 - 8);
    if (v10)
    {
      (*(*v7 + 40))(a2 + 16, v10);
    }

    *(a2 + 32) -= 16;
  }
}

void sub_2713BF82C(uint64_t a1, _OWORD *a2)
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
  v8 = v7 >> 4;
  v9 = (v7 >> 4) + 1;
  if (v9 >> 60)
  {
    sub_271135560();
  }

  v10 = v3 - v6;
  if (v10 >> 3 > v9)
  {
    v9 = v10 >> 3;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF0)
  {
    v11 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 60))
    {
      operator new();
    }

    sub_2711270EC();
  }

  *(16 * v8) = *a2;
  v5 = 16 * v8 + 16;
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

void sub_2713BF94C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v30 = *MEMORY[0x277D85DE8];
  *&v26 = 0;
  BYTE8(v26) = 0;
  LOBYTE(v27) = 0;
  v29 = 0;
  sub_2713C0268(a2, v25, a4);
  *&v10[8] = v26;
  LOBYTE(v11[0]) = 0;
  v13 = 0;
  if (v29 == 1)
  {
    if (SHIBYTE(v28) < 0)
    {
      sub_271127178(v11, v27, *(&v27 + 1));
    }

    else
    {
      *v11 = v27;
      v12 = v28;
    }

    v13 = 1;
  }

  v14 = 0;
  v15 = 0;
  LOBYTE(v16) = 0;
  v18 = 0;
  LOBYTE(v19) = 0;
  v21 = 0;
  LOBYTE(__p) = 0;
  v24 = 0;
  sub_2713BCEE8(a3, v10);
  if (v24 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v23;
      v7 = __p;
      if (v23 != __p)
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

      v23 = v5;
      operator delete(v7);
    }
  }

  if (v21 == 1 && v20 < 0)
  {
    operator delete(v19);
  }

  if (v18 == 1 && v17 < 0)
  {
    operator delete(v16);
  }

  if (v13 == 1 && SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }

  if (v29 == 1 && SHIBYTE(v28) < 0)
  {
    operator delete(v27);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_2713BFB0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a18 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 48) == 1 && *(v18 - 49) < 0)
  {
    operator delete(*(v18 - 72));
  }

  _Unwind_Resume(exception_object);
}

void sub_2713BFB58(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v11 = 2;
  sub_27183FB7C(*(a1 + 48), &v11);
  sub_2713BFE58(&v11, a1, a2 + 8, v11);
  LOBYTE(v11) = 0;
  sub_27183F824(*(a1 + 48), &v11);
  if (v11)
  {
    if ((*(a2 + 48) & 1) == 0)
    {
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 48) = 1;
    }

    sub_2718403E0(*(a1 + 48), (a2 + 24));
  }

  else if (*(a2 + 48))
  {
    if (*(a2 + 47) < 0)
    {
      operator delete(*(a2 + 24));
    }

    *(a2 + 48) = 0;
  }

  if (a3 >= 4)
  {
    v10 = 0;
    sub_27183F824(*(a1 + 48), &v10);
    if (v10)
    {
      if ((*(a2 + 72) & 1) == 0)
      {
        *(a2 + 56) = 0;
        *(a2 + 64) = 0;
        *(a2 + 72) = 1;
      }

      v11 = 2;
      sub_27183FB7C(*(a1 + 48), &v11);
      sub_2713BFE58(&v11, a1, a2 + 56, v11);
    }

    else if (*(a2 + 72))
    {
      *(a2 + 72) = 0;
    }

    if (a3 == 5)
    {
      LOBYTE(v11) = 0;
      sub_27183F824(*(a1 + 48), &v11);
      if (v11)
      {
        if ((*(a2 + 104) & 1) == 0)
        {
          *(a2 + 80) = 0;
          *(a2 + 88) = 0;
          *(a2 + 96) = 0;
          *(a2 + 104) = 1;
        }

        sub_2718403E0(*(a1 + 48), (a2 + 80));
      }

      else if (*(a2 + 104))
      {
        if (*(a2 + 103) < 0)
        {
          operator delete(*(a2 + 80));
        }

        *(a2 + 104) = 0;
      }
    }

    else if (a3 >= 6)
    {
      LOBYTE(v11) = 0;
      sub_27183F824(*(a1 + 48), &v11);
      if (v11)
      {
        if ((*(a2 + 104) & 1) == 0)
        {
          *(a2 + 80) = 0;
          *(a2 + 88) = 0;
          *(a2 + 96) = 0;
          *(a2 + 104) = 1;
        }

        sub_2718403E0(*(a1 + 48), (a2 + 80));
      }

      else if (*(a2 + 104))
      {
        if (*(a2 + 103) < 0)
        {
          operator delete(*(a2 + 80));
        }

        *(a2 + 104) = 0;
      }

      LOBYTE(v11) = 0;
      sub_27183F824(*(a1 + 48), &v11);
      if (v11)
      {
        if ((*(a2 + 136) & 1) == 0)
        {
          *(a2 + 112) = 0;
          *(a2 + 120) = 0;
          *(a2 + 128) = 0;
          *(a2 + 136) = 1;
        }

        sub_2718403E0(*(a1 + 48), (a2 + 112));
      }

      else if (*(a2 + 136))
      {
        if (*(a2 + 135) < 0)
        {
          operator delete(*(a2 + 112));
        }

        *(a2 + 136) = 0;
      }

      LOBYTE(v11) = 0;
      sub_27183F824(*(a1 + 48), &v11);
      if (v11)
      {
        if ((*(a2 + 168) & 1) == 0)
        {
          *(a2 + 144) = 0;
          *(a2 + 152) = 0;
          *(a2 + 160) = 0;
          *(a2 + 168) = 1;
        }

        sub_2713BFFC0(a1, (a2 + 144));
      }

      else if (*(a2 + 168))
      {
        v6 = *(a2 + 144);
        if (v6)
        {
          v7 = *(a2 + 152);
          v8 = *(a2 + 144);
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
            v8 = *(a2 + 144);
          }

          *(a2 + 152) = v6;
          operator delete(v8);
        }

        *(a2 + 168) = 0;
      }
    }
  }
}

void sub_2713BFE58(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 <= 1)
  {
    *&v10 = 0;
    BYTE8(v10) = 0;
    sub_27183FE6C(*(a2 + 48), &v10);
    LOBYTE(v9) = 0;
    sub_27183F824(*(a2 + 48), &v9);
    v8 = v9;
    *a3 = v10;
    *(a3 + 8) = v8;
  }

  else
  {
    v9 = 0;
    sub_27183FF6C(*(a2 + 48), &v9);
    *&v10 = (*(*(a2 + 16) + 32))(a2 + 16);
    *(&v10 + 1) = v9;
    sub_2713BF82C(a2 + 24, &v10);
    sub_27183FE6C(*(a2 + 48), a3);
    LOBYTE(v10) = 0;
    sub_27183F824(*(a2 + 48), &v10);
    *(a3 + 8) = v10;
    v6 = *(a2 + 32);
    v7 = *(v6 - 16) - (*(*(a2 + 16) + 32))(a2 + 16) + *(v6 - 8);
    if (v7)
    {
      (*(*(a2 + 16) + 40))(a2 + 16, v7);
    }

    *(a2 + 32) -= 16;
  }
}

void sub_2713BFFC0(uint64_t a1, void ***a2)
{
  v11 = 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2);
  sub_27183FF6C(*(a1 + 48), &v11);
  v4 = a2[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * (v4 - *a2);
  if (v11 > v5)
  {
    sub_2713C00BC(a2, v11 - v5);
    v8 = a2;
    v6 = *a2;
    v7 = v8[1];
    if (v7 == v6)
    {
      return;
    }

    goto LABEL_12;
  }

  if (v11 >= v5)
  {
    v7 = a2[1];
    v6 = *a2;
    if (v4 == v6)
    {
      return;
    }

    goto LABEL_12;
  }

  v7 = &(*a2)[3 * v11];
  while (v4 != v7)
  {
    v9 = *(v4 - 1);
    v4 -= 3;
    if (v9 < 0)
    {
      operator delete(*v4);
    }
  }

  a2[1] = v7;
  v6 = *a2;
  if (v7 != v6)
  {
LABEL_12:
    v10 = *(a1 + 48);
    do
    {
      sub_2718403E0(v10, v6);
      v6 += 3;
    }

    while (v6 != v7);
  }
}

void sub_2713C00BC(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + a2;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_271135560();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
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

    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_2711270EC();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = &v11[v12];
    v14 = &v11[-v6];
    memcpy(v14, v5, v6);
    *a1 = v14;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_2713C0268(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v7 = 2;
  sub_27183FB7C(*(a1 + 48), &v7);
  sub_2713BFE58(&v6, a1, a2 + 8, v7);
  if (a3 >= 2)
  {
    v8 = 0;
    sub_27183F824(*(a1 + 48), &v8);
    if (v8)
    {
      if ((*(a2 + 48) & 1) == 0)
      {
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 40) = 0;
        *(a2 + 48) = 1;
      }

      sub_2718403E0(*(a1 + 48), (a2 + 24));
    }

    else if (*(a2 + 48))
    {
      if (*(a2 + 47) < 0)
      {
        operator delete(*(a2 + 24));
      }

      *(a2 + 48) = 0;
    }
  }
}

void sub_2713C0350(uint64_t a1, unsigned __int16 *a2, unsigned int a3)
{
  if (a3 <= 1)
  {
    *&v11 = &unk_28810F9B8;
    sub_2713BE9C4();
  }

  v10 = 0;
  sub_27183FF6C(*(a1 + 48), &v10);
  *&v11 = (*(*(a1 + 16) + 32))(a1 + 16);
  *(&v11 + 1) = v10;
  sub_2713BF82C(a1 + 24, &v11);
  LOWORD(v11) = 0;
  sub_27183F9D0(*(a1 + 48), &v11);
  *a2 = v11;
  LODWORD(v11) = 2;
  sub_27183FB7C(*(a1 + 48), &v11);
  if (v11 <= 1)
  {
    *(&v11 + 1) = 0;
    v10 = 0;
    sub_27183FF6C(*(a1 + 48), &v10);
    *&v11 = v10;
    v9 = *(a1 + 48);
    sub_27183FB7C(v9, &v11 + 2);
    sub_27183FB7C(v9, (&v11 | 0xC));
    *(a2 + 4) = v11;
    v8 = *a2;
    if (v8 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
    sub_27183FF6C(*(a1 + 48), &v10);
    *&v11 = (*(*(a1 + 16) + 32))(a1 + 16);
    *(&v11 + 1) = v10;
    sub_2713BF82C(a1 + 24, &v11);
    *&v11 = 0;
    sub_27183FF6C(*(a1 + 48), &v11);
    *(a2 + 1) = v11;
    v5 = *(a1 + 48);
    sub_27183FB7C(v5, a2 + 4);
    sub_27183FB7C(v5, a2 + 5);
    v6 = *(a1 + 32);
    v7 = *(v6 - 16) - (*(*(a1 + 16) + 32))(a1 + 16) + *(v6 - 8);
    if (v7)
    {
      (*(*(a1 + 16) + 40))(a1 + 16, v7);
    }

    *(a1 + 32) -= 16;
    v8 = *a2;
    if (v8 != 1)
    {
LABEL_6:
      sub_2715F7478(v8);
      sub_2713C0C68(&v11, a1);
      sub_2713BE068();
    }
  }

  sub_2715F5588(a2);
}

void sub_2713C0BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_2713BE258(&a31);
  sub_2713BF3B0(&a9);
  _Unwind_Resume(a1);
}

void sub_2713C0C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_2713A32D8(&a31);
  sub_2713BF3B0(&a9);
  _Unwind_Resume(a1);
}

void sub_2713C0C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2713AE3D8(v9);
  sub_2713BF3B0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_2713C0C68(uint64_t a1, uint64_t a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x2743BED80](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  v4 = (a1 + 64);
  *(a1 + 80) = 0u;
  *(a1 + 96) = 24;
  sub_271129318(a1);
  *(a1 + 168) = 0;
  *(a1 + 104) = MEMORY[0x277D82848] + 24;
  *(a1 + 112) = 0;
  *(a1 + 120) = MEMORY[0x277D82848] + 64;
  std::ios_base::init((a1 + 120), a1);
  *(a1 + 256) = 0;
  *(a1 + 264) = -1;
  __n = 0;
  sub_27183FF6C(*(a2 + 48), &__n);
  memset(&v9, 0, sizeof(v9));
  if (__n)
  {
    std::string::append(&v9, __n, 0);
    v5 = __n;
    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v9;
    }

    else
    {
      v6 = v9.__r_.__value_.__r.__words[0];
    }
  }

  else
  {
    v5 = 0;
    v6 = &v9;
  }

  v8[0] = v6;
  v8[1] = v5;
  sub_2718413A8(a2, v8);
  if (*(a1 + 87) < 0)
  {
    operator delete(*v4);
  }

  *v4 = *&v9.__r_.__value_.__l.__data_;
  *(a1 + 80) = *(&v9.__r_.__value_.__l + 2);
  *(&v9.__r_.__value_.__s + 23) = 0;
  v9.__r_.__value_.__s.__data_[0] = 0;
  sub_271129318(a1);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_2713C0E0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  std::istream::~istream();
  sub_2713B5444(v16);
  _Unwind_Resume(a1);
}

void sub_2713C0E9C(uint64_t a1, uint64_t a2)
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
  v6 = 6;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_27182DBE0(a1, &v6);
  if (v6 >= 3)
  {
    sub_2713C11A8(a1, a2);
  }

  sub_2713C0F9C(v5, a1);
}

void sub_2713C0F9C(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = 0;
  LOBYTE(v5) = 0;
  v6 = 0;
  sub_2713C1EC4(a2, v2);
}

void sub_2713C115C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a18 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 48) == 1 && *(v18 - 49) < 0)
  {
    operator delete(*(v18 - 72));
  }

  _Unwind_Resume(exception_object);
}

void sub_2713C11A8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 104);
  *(a1 + 88) = "auto_timestamp";
  *(a1 + 96) = 14;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v7[0] = *(a1 + 32);
  v5 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v5;
  sub_27182D194(a1 + 40, v7);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  v7[0] = "version";
  v7[1] = 7;
  v8[0] = 2;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_27182DBE0(a1, v8);
  if (v8[0] >= 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = v8[0];
  }

  sub_2713C1428(a1, (a2 + 8), v6);
}

void sub_2713C1428(uint64_t a1, char **a2, unsigned int a3)
{
  if (a3 >= 2)
  {
    v5 = *(a1 + 104);
    *(a1 + 88) = "ns";
    *(a1 + 96) = 2;
    if ((v5 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v6 = sub_27182D2AC(a1);
    ++*(a1 + 112);
    v12 = 0;
    sub_2715D6290(v6, &v12);
    *a2 = v12;
    v7 = (a2 + 1);
    v8 = *(a1 + 104);
    *(a1 + 88) = "clock_type";
    *(a1 + 96) = 10;
    if ((v8 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v12 = v7;
    sub_2713C1584(a1);
  }

  v13 = 0;
  v9 = *(a1 + 104);
  *(a1 + 88) = "ns";
  *(a1 + 96) = 2;
  if ((v9 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v10 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  v14 = 0;
  sub_2715D6290(v10, &v14);
  v12 = v14;
  v11 = *(a1 + 104);
  *(a1 + 88) = "clock_type";
  *(a1 + 96) = 10;
  if ((v11 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v14 = &v13;
  sub_2713C1584(a1);
}

void sub_2713C1584(void *a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v4 = 0;
  v2 = sub_27182D2AC(a1);
  ++a1[14];
  v6 = 0;
  v5 = 0uLL;
  sub_2715D666C(v2, &v5);
  v4 = v6;
  *__p = v5;
  operator new();
}

void sub_2713C1674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  a17 = 0;
  sub_27184D728(&a17, v22);
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_2713C1708(void *a1, uint64_t a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  if (*sub_27182D2AC(a1))
  {
    v4 = sub_27182D2AC(a1);
    ++a1[14];
    v10 = 0uLL;
    v9 = 0;
    sub_2715D666C(v4, &v9);
    v5 = v9;
    v11[0] = v10;
    *(v11 + 7) = *(&v10 + 7);
    v6 = HIBYTE(v10);
    if (*(a2 + 24) == 1)
    {
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *(a2 + 24) = 0;
    }

    v7 = v11[0];
    *a2 = v5;
    *(a2 + 8) = v7;
    *(a2 + 15) = *(v11 + 7);
    *(a2 + 23) = v6;
    *(a2 + 24) = 1;
  }

  else
  {
    ++a1[14];
    if (*(a2 + 24) == 1)
    {
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *(a2 + 24) = 0;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_2713C1818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713C1834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  v11[0] = *(a2 + 32);
  v6 = sub_27182D2AC(a2);
  ++*(a2 + 112);
  *(a2 + 32) = v6;
  sub_27182D194(a2 + 40, v11);
  sub_2717313F0(a2 + 64, (a2 + 112));
  *(a2 + 112) = 0;
  v11[0] = "version";
  v11[1] = 7;
  v12 = 2;
  *(a2 + 88) = "version";
  *(a2 + 96) = 7;
  *(a2 + 104) = 1;
  sub_27182DBE0(a2, &v12);
  v7 = v12;
  if (v5 >= 1)
  {
    if (v5 == 2)
    {
      v8 = v12;
      sub_2713C1AA4(a2, a3, v12);
      v7 = v8;
    }

    if (v7 >= 2)
    {
      v7 = 2;
    }
  }

  sub_2713C1948(a2, a3, v7);
  v9 = *(a2 + 48);
  *(a2 + 32) = *(v9 - 8);
  v10 = *(a2 + 72);
  *(a2 + 112) = *(v10 - 8);
  *(a2 + 48) = v9 - 8;
  *(a2 + 72) = v10 - 8;
}

void sub_2713C1948(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 < 2)
  {
    v14 = 0;
    v9 = *(a1 + 104);
    *(a1 + 88) = "ns";
    *(a1 + 96) = 2;
    if ((v9 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v10 = sub_27182D2AC(a1);
    ++*(a1 + 112);
    v15 = 0;
    sub_2715D6290(v10, &v15);
    v13 = v15;
    v11 = *(a1 + 104);
    *(a1 + 88) = "clock_type";
    *(a1 + 96) = 10;
    if ((v11 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v15 = &v14;
    sub_2713C1B9C(a1, &v15);
    v12 = v14;
    *a2 = v13;
    *(a2 + 8) = v12;
  }

  else
  {
    v5 = *(a1 + 104);
    *(a1 + 88) = "ns";
    *(a1 + 96) = 2;
    if ((v5 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v6 = sub_27182D2AC(a1);
    ++*(a1 + 112);
    v13 = 0;
    sub_2715D6290(v6, &v13);
    *a2 = v13;
    v7 = (a2 + 8);
    v8 = *(a1 + 104);
    *(a1 + 88) = "clock_type";
    *(a1 + 96) = 10;
    if ((v8 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v13 = v7;
    sub_2713C1B9C(a1, &v13);
  }
}

void sub_2713C1AA4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 >= 2)
  {
    v5 = 2;
    v3 = *(a1 + 104);
    *(a1 + 88) = "min_version";
    *(a1 + 96) = 11;
    if ((v3 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    sub_27182DBE0(a1, &v5);
    if (v5 >= 3)
    {
      v4 = v5;
      if ((atomic_load_explicit(&qword_280878A70, memory_order_acquire) & 1) == 0)
      {
        if (__cxa_guard_acquire(&qword_280878A70))
        {
          sub_2718519B4("cv3d::kit::timeio::TimestampSample]", 0x22uLL, &stru_280878A58);
          __cxa_guard_release(&qword_280878A70);
          sub_271847D5C(&stru_280878A58, v4, 2u);
        }
      }

      sub_271847D5C(&stru_280878A58, v4, 2u);
    }
  }
}

void sub_2713C1B9C(uint64_t a1, _BYTE **a2)
{
  if ((*(a1 + 12) & 2) != 0)
  {
    __p[0] = 0;
    __p[1] = 0;
    v6 = 0;
    v4 = sub_27182D2AC(a1);
    ++*(a1 + 112);
    v8 = 0;
    v7 = 0uLL;
    sub_2715D666C(v4, &v7);
    v6 = v8;
    *__p = v7;
    operator new();
  }

  LOBYTE(v7) = 0;
  sub_27182D980(a1, &v7);
  **a2 = v7;
}

void sub_2713C1CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  a17 = 0;
  sub_27184D728(&a17, v22);
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_2713C1D40(void *a1, uint64_t a2)
{
  if (*sub_27182D2AC(a1))
  {
    v4 = sub_27182D2AC(a1);
    ++a1[14];
    v16 = 0uLL;
    v17 = 0;
    sub_271830AB4(v4, &v16);
    v5 = v16;
    v6 = v17;
    if (*(a2 + 24))
    {
      v7 = *a2;
      if (*a2)
      {
        v15 = v16;
        v8 = *(a2 + 8);
        v9 = *a2;
        if (v8 != v7)
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
          v9 = *a2;
        }

        *(a2 + 8) = v7;
        operator delete(v9);
        v5 = v15;
      }
    }

    *a2 = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = 1;
  }

  else
  {
    ++a1[14];
    if (*(a2 + 24) == 1)
    {
      v11 = *a2;
      if (*a2)
      {
        v12 = *(a2 + 8);
        v13 = *a2;
        if (v12 != v11)
        {
          do
          {
            v14 = *(v12 - 1);
            v12 -= 3;
            if (v14 < 0)
            {
              operator delete(*v12);
            }
          }

          while (v12 != v11);
          v13 = *a2;
        }

        *(a2 + 8) = v11;
        operator delete(v13);
      }

      *(a2 + 24) = 0;
    }
  }
}

void sub_2713C1E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void **);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27137F4D0(va1);
  sub_27137F4D0(va);
  _Unwind_Resume(a1);
}

void sub_2713C1EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27137F4D0(va);
  _Unwind_Resume(a1);
}

void sub_2713C1EC4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 104);
  *(a1 + 88) = "auto_timestamp";
  *(a1 + 96) = 14;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v7[0] = *(a1 + 32);
  v5 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v5;
  sub_27182D194(a1 + 40, v7);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  v7[0] = "version";
  v7[1] = 7;
  v8 = 2;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_27182DBE0(a1, &v8);
  if (v8 >= 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = v8;
  }

  sub_2713C1428(a1, (a2 + 8), v6);
}

void sub_2713C2004(uint64_t a1, uint64_t a2)
{
  v6[0] = *(a1 + 32);
  v4 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v4;
  sub_27182D194(a1 + 40, v6);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }

  v6[0] = "version";
  v6[1] = 7;
  v7 = 2;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_27182DBE0(a1, &v7);
  if (v7 >= 2)
  {
    v5 = *(a1 + 104);
    *(a1 + 88) = "io_format";
    *(a1 + 96) = 9;
    if ((v5 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v6[0] = a2;
    sub_2713C2B54(a1);
  }

  v6[0] = &unk_28810F9B8;
  sub_2713BE9C4();
}

void sub_2713C2ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_2713BE258(&a22);
  sub_2713BF3B0(&a9);
  _Unwind_Resume(a1);
}

void sub_2713C2AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_2713BE258(va);
  _Unwind_Resume(a1);
}

void sub_2713C2AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_2713A32D8(&a22);
  sub_2713BF3B0(&a9);
  _Unwind_Resume(a1);
}

void sub_2713C2B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2713AE3D8(v9);
  sub_2713BF3B0(&a9);
  _Unwind_Resume(a1);
}

void sub_2713C2B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_2712B8A00(va);
  _Unwind_Resume(a1);
}

void sub_2713C2B54(void *a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v4 = 0;
  v2 = sub_27182D2AC(a1);
  ++a1[14];
  v6 = 0;
  v5 = 0uLL;
  sub_2715D666C(v2, &v5);
  v4 = v6;
  *__p = v5;
  operator new();
}

void sub_2713C2C44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  a17 = 0;
  sub_27184D728(&a17, v22);
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_2713C2CD8(void *a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v4 = 0;
  v2 = sub_27182D2AC(a1);
  ++a1[14];
  v6 = 0;
  v5 = 0uLL;
  sub_2715D666C(v2, &v5);
  v4 = v6;
  *__p = v5;
  operator new();
}

void sub_2713C2DC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  a17 = 0;
  sub_27184D728(&a17, v22);
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

uint64_t sub_2713C2E5C(uint64_t a1, void *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x2743BED80](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  v4 = (a1 + 64);
  *(a1 + 80) = 0u;
  *(a1 + 96) = 24;
  sub_271129318(a1);
  *(a1 + 168) = 0;
  *(a1 + 104) = MEMORY[0x277D82848] + 24;
  *(a1 + 112) = 0;
  *(a1 + 120) = MEMORY[0x277D82848] + 64;
  std::ios_base::init((a1 + 120), a1);
  *(a1 + 256) = 0;
  *(a1 + 264) = -1;
  v5 = sub_27182D2AC(a2);
  ++a2[14];
  __n.__r_.__value_.__r.__words[0] = 0;
  sub_2715D613C(v5, &__n);
  v6 = __n.__r_.__value_.__r.__words[0];
  memset(&__n, 0, sizeof(__n));
  if (v6)
  {
    std::string::append(&__n, v6, 0);
    if ((__n.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_n = &__n;
    }

    else
    {
      p_n = __n.__r_.__value_.__r.__words[0];
    }
  }

  else
  {
    p_n = &__n;
  }

  v10[0] = p_n;
  v10[1] = v6;
  v8 = sub_27182D2AC(a2);
  ++a2[14];
  sub_27182D3F8(v8, v10);
  if (*(a1 + 87) < 0)
  {
    operator delete(*v4);
  }

  *v4 = *&__n.__r_.__value_.__l.__data_;
  *(a1 + 80) = *(&__n.__r_.__value_.__l + 2);
  *(&__n.__r_.__value_.__s + 23) = 0;
  __n.__r_.__value_.__s.__data_[0] = 0;
  sub_271129318(a1);
  if (SHIBYTE(__n.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__n.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_2713C301C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  std::istream::~istream();
  sub_2713B5444(v17);
  _Unwind_Resume(a1);
}

void sub_2713C30AC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v30 = *MEMORY[0x277D85DE8];
  *&v26 = 0;
  BYTE8(v26) = 0;
  LOBYTE(v27) = 0;
  v29 = 0;
  sub_2713C3CFC(a2, v25, a4);
  *&v10[8] = v26;
  LOBYTE(v11[0]) = 0;
  v13 = 0;
  if (v29 == 1)
  {
    if (SHIBYTE(v28) < 0)
    {
      sub_271127178(v11, v27, *(&v27 + 1));
    }

    else
    {
      *v11 = v27;
      v12 = v28;
    }

    v13 = 1;
  }

  v14 = 0;
  v15 = 0;
  LOBYTE(v16) = 0;
  v18 = 0;
  LOBYTE(v19) = 0;
  v21 = 0;
  LOBYTE(__p) = 0;
  v24 = 0;
  sub_2713BCEE8(a3, v10);
  if (v24 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v23;
      v7 = __p;
      if (v23 != __p)
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

      v23 = v5;
      operator delete(v7);
    }
  }

  if (v21 == 1 && v20 < 0)
  {
    operator delete(v19);
  }

  if (v18 == 1 && v17 < 0)
  {
    operator delete(v16);
  }

  if (v13 == 1 && SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }

  if (v29 == 1 && SHIBYTE(v28) < 0)
  {
    operator delete(v27);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_2713C326C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a18 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 48) == 1 && *(v18 - 49) < 0)
  {
    operator delete(*(v18 - 72));
  }

  _Unwind_Resume(exception_object);
}

void sub_2713C32B8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  LODWORD(__p[0]) = 2;
  sub_27183A9AC(a1, __p);
  if (LODWORD(__p[0]) > 1)
  {
    sub_27183B36C(a1, (a2 + 8));
    LOBYTE(__p[0]) = 0;
    sub_271839D90(a1, __p);
    *(a2 + 16) = __p[0];
    while (1)
    {
      if ((*(a1 + 131) & 1) != 0 || (*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_17;
      }

      sub_27183D78C(a1, __p);
      if (SHIBYTE(v29) < 0)
      {
        if (__p[1] == 1 && *(a1 + 72) == *__p[0])
        {
          goto LABEL_13;
        }

LABEL_3:
        v6 = 1;
        if (SHIBYTE(v29) < 0)
        {
          goto LABEL_14;
        }

LABEL_4:
        if ((v6 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (SHIBYTE(v29) != 1 || *(a1 + 72) != LOBYTE(__p[0]))
        {
          goto LABEL_3;
        }

LABEL_13:
        v6 = 0;
        if ((SHIBYTE(v29) & 0x80000000) == 0)
        {
          goto LABEL_4;
        }

LABEL_14:
        operator delete(__p[0]);
        if ((v6 & 1) == 0)
        {
          goto LABEL_17;
        }
      }
    }
  }

  __p[0] = 0;
  LOBYTE(__p[1]) = 0;
  sub_27183B36C(a1, __p);
  LOBYTE(v25[0]) = 0;
  sub_271839D90(a1, v25);
  v7 = v25[0];
  *(a2 + 8) = __p[0];
  *(a2 + 16) = v7;
LABEL_17:
  LOBYTE(v25[0]) = 0;
  sub_271839D90(a1, v25);
  if (LOBYTE(v25[0]))
  {
    if ((*(a2 + 48) & 1) == 0)
    {
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 48) = 1;
    }

    ++*(a1 + 80);
    if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
    {
      *(a1 + 132) = 1;
    }

    else
    {
      sub_27183D78C(a1, __p);
      if (*(a2 + 47) < 0)
      {
        operator delete(*(a2 + 24));
      }

      *(a2 + 24) = *__p;
      *(a2 + 40) = v29;
      ++*(a1 + 104);
    }
  }

  else if (*(a2 + 48))
  {
    if (*(a2 + 47) < 0)
    {
      operator delete(*(a2 + 24));
    }

    *(a2 + 48) = 0;
  }

  if (a3 >= 4)
  {
    sub_2713C3A0C(a1, a2 + 56);
    if (a3 == 5)
    {
      LOBYTE(v25[0]) = 0;
      sub_271839D90(a1, v25);
      if (LOBYTE(v25[0]))
      {
        if ((*(a2 + 104) & 1) == 0)
        {
          *(a2 + 80) = 0;
          *(a2 + 88) = 0;
          *(a2 + 96) = 0;
          *(a2 + 104) = 1;
        }

        ++*(a1 + 80);
        if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
        {
          *(a1 + 132) = 1;
        }

        else
        {
          sub_27183D78C(a1, __p);
          if (*(a2 + 103) < 0)
          {
            operator delete(*(a2 + 80));
          }

          *(a2 + 80) = *__p;
          *(a2 + 96) = v29;
          ++*(a1 + 104);
        }
      }

      else if (*(a2 + 104))
      {
        if (*(a2 + 103) < 0)
        {
          operator delete(*(a2 + 80));
        }

        *(a2 + 104) = 0;
      }

      return;
    }

    if (a3 < 6)
    {
      return;
    }

    LOBYTE(v25[0]) = 0;
    sub_271839D90(a1, v25);
    if (LOBYTE(v25[0]))
    {
      if ((*(a2 + 104) & 1) == 0)
      {
        *(a2 + 80) = 0;
        *(a2 + 88) = 0;
        *(a2 + 96) = 0;
        *(a2 + 104) = 1;
      }

      ++*(a1 + 80);
      if (*(a1 + 128) != 1 || (v8 = *(a1 + 131), v8 != 1))
      {
        sub_27183D78C(a1, __p);
        if (*(a2 + 103) < 0)
        {
          operator delete(*(a2 + 80));
        }

        *(a2 + 80) = *__p;
        *(a2 + 96) = v29;
LABEL_63:
        ++*(a1 + 104);
LABEL_64:
        LOBYTE(v25[0]) = 0;
        sub_271839D90(a1, v25);
        if (LOBYTE(v25[0]))
        {
          if ((*(a2 + 136) & 1) == 0)
          {
            *(a2 + 112) = 0;
            *(a2 + 120) = 0;
            *(a2 + 128) = 0;
            *(a2 + 136) = 1;
          }

          ++*(a1 + 80);
          if (*(a1 + 128) != 1 || (v9 = *(a1 + 131), v9 != 1))
          {
            sub_27183D78C(a1, __p);
            if (*(a2 + 135) < 0)
            {
              operator delete(*(a2 + 112));
            }

            *(a2 + 112) = *__p;
            *(a2 + 128) = v29;
            goto LABEL_84;
          }
        }

        else
        {
          if (*(a2 + 136))
          {
            if (*(a2 + 135) < 0)
            {
              operator delete(*(a2 + 112));
            }

            *(a2 + 136) = 0;
          }

          ++*(a1 + 80);
          if (*(a1 + 128) != 1 || (v9 = *(a1 + 131), v9 != 1))
          {
            sub_27183D78C(a1, __p);
            if (SHIBYTE(v29) < 0)
            {
              operator delete(__p[0]);
            }

LABEL_84:
            ++*(a1 + 104);
            LOBYTE(v23[0]) = 0;
            sub_271839D90(a1, v23);
            if (LOBYTE(v23[0]))
            {
LABEL_85:
              __p[0] = 0;
              __p[1] = 0;
              v29 = 0;
              v30 = 1;
              ++*(a1 + 80);
              if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
              {
                *(a1 + 132) = 1;
              }

              else
              {
                sub_27183D78C(a1, v25);
                v10 = *(a1 + 104);
                *__p = *v25;
                v29 = v26;
                *(a1 + 104) = v10 + 1;
              }

              sub_2713BB9DC(__p, v23);
              *v25 = *v23;
              v26 = v24;
              v23[1] = 0;
              v24 = 0;
              v23[0] = 0;
              v27 = 1;
              sub_2713BCDA4(a2 + 144, v25);
              if (v27 == 1)
              {
                v11 = v25[0];
                if (v25[0])
                {
                  v12 = v25[1];
                  v13 = v25[0];
                  if (v25[1] != v25[0])
                  {
                    do
                    {
                      v14 = *(v12 - 1);
                      v12 -= 3;
                      if (v14 < 0)
                      {
                        operator delete(*v12);
                      }
                    }

                    while (v12 != v11);
                    v13 = v25[0];
                  }

                  v25[1] = v11;
                  operator delete(v13);
                }
              }

              v19 = v23[0];
              if (v23[0])
              {
                v20 = v23[1];
                v21 = v23[0];
                if (v23[1] != v23[0])
                {
                  do
                  {
                    v22 = *(v20 - 1);
                    v20 -= 3;
                    if (v22 < 0)
                    {
                      operator delete(*v20);
                    }
                  }

                  while (v20 != v19);
                  v21 = v23[0];
                }

                v23[1] = v19;
                operator delete(v21);
              }

              if ((v30 & 1) != 0 && SHIBYTE(v29) < 0)
              {
                operator delete(__p[0]);
              }

              return;
            }

            goto LABEL_79;
          }
        }

        *(a1 + 132) = v9;
        LOBYTE(v23[0]) = 0;
        sub_271839D90(a1, v23);
        if (LOBYTE(v23[0]))
        {
          goto LABEL_85;
        }

LABEL_79:
        ++*(a1 + 80);
        if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
        {
          *(a1 + 132) = 1;
        }

        else
        {
          sub_27183D78C(a1, v25);
          if (SHIBYTE(v26) < 0)
          {
            operator delete(v25[0]);
          }

          ++*(a1 + 104);
        }

        if (*(a2 + 168) == 1)
        {
          v15 = *(a2 + 144);
          if (v15)
          {
            v16 = *(a2 + 152);
            v17 = *(a2 + 144);
            if (v16 != v15)
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
              v17 = *(a2 + 144);
            }

            *(a2 + 152) = v15;
            operator delete(v17);
          }

          *(a2 + 168) = 0;
        }

        return;
      }
    }

    else
    {
      if (*(a2 + 104))
      {
        if (*(a2 + 103) < 0)
        {
          operator delete(*(a2 + 80));
        }

        *(a2 + 104) = 0;
      }

      ++*(a1 + 80);
      if (*(a1 + 128) != 1 || (v8 = *(a1 + 131), v8 != 1))
      {
        sub_27183D78C(a1, __p);
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_63;
      }
    }

    *(a1 + 132) = v8;
    goto LABEL_64;
  }
}

void sub_2713C39E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if ((a23 & 1) != 0 && a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713C3A0C(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  sub_271839D90(a1, &v6);
  if (v6)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 1;
    }

    LODWORD(__p) = 2;
    sub_27183A9AC(a1, &__p);
    if (__p > 1)
    {
      sub_27183B36C(a1, a2);
      LOBYTE(__p) = 0;
      sub_271839D90(a1, &__p);
      *(a2 + 8) = __p;
      while (1)
      {
        if ((*(a1 + 131) & 1) != 0 || (*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) != 0)
        {
          return;
        }

        sub_27183D78C(a1, &__p);
        if (v10 < 0)
        {
          if (v9 == 1 && *(a1 + 72) == *__p)
          {
LABEL_15:
            v4 = 0;
            if (v10 < 0)
            {
              goto LABEL_18;
            }

            goto LABEL_6;
          }
        }

        else if (v10 == 1 && *(a1 + 72) == __p)
        {
          goto LABEL_15;
        }

        v4 = 1;
        if (v10 < 0)
        {
LABEL_18:
          operator delete(__p);
        }

LABEL_6:
        if ((v4 & 1) == 0)
        {
          return;
        }
      }
    }

    __p = 0;
    LOBYTE(v9) = 0;
    sub_27183B36C(a1, &__p);
    v7 = 0;
    sub_271839D90(a1, &v7);
    v5 = v7;
    *a2 = __p;
    *(a2 + 8) = v5;
  }

  else if (*(a2 + 16))
  {
    *(a2 + 16) = 0;
  }
}

void sub_2713C3B9C(uint64_t a1, void *a2)
{
  v11 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  sub_27183B6AC(a1, &v11);
  v4 = a2[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
  if (v11 <= v5)
  {
    if (v11 >= v5)
    {
      v7 = a2[1];
      i = *a2;
      if (v4 != i)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v7 = *a2 + 24 * v11;
      while (v4 != v7)
      {
        v9 = *(v4 - 1);
        v4 -= 3;
        if (v9 < 0)
        {
          operator delete(*v4);
        }
      }

      a2[1] = v7;
      for (i = *a2; i != v7; ++*(a1 + 104))
      {
LABEL_16:
        while (1)
        {
          ++*(a1 + 80);
          if (*(a1 + 128) != 1 || *(a1 + 131) != 1)
          {
            break;
          }

          *(a1 + 132) = 1;
          i += 24;
          if (i == v7)
          {
            return;
          }
        }

        sub_27183D78C(a1, &v12);
        if (*(i + 23) < 0)
        {
          operator delete(*i);
        }

        v10 = v12;
        *(i + 16) = v13;
        *i = v10;
        i += 24;
      }
    }
  }

  else
  {
    sub_2713C00BC(a2, v11 - v5);
    v8 = a2;
    i = *a2;
    v7 = v8[1];
    if (v7 != i)
    {
      goto LABEL_16;
    }
  }
}

void sub_2713C3CFC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  LODWORD(__p[0]) = 2;
  sub_27183A9AC(a1, __p);
  if (LODWORD(__p[0]) > 1)
  {
    sub_27183B36C(a1, (a2 + 8));
    LOBYTE(__p[0]) = 0;
    sub_271839D90(a1, __p);
    *(a2 + 16) = __p[0];
    while (1)
    {
      if ((*(a1 + 131) & 1) != 0 || (*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_17;
      }

      sub_27183D78C(a1, __p);
      if (SHIBYTE(v10) < 0)
      {
        if (__p[1] == 1 && *(a1 + 72) == *__p[0])
        {
LABEL_12:
          v6 = 0;
          if (SHIBYTE(v10) < 0)
          {
            goto LABEL_15;
          }

          goto LABEL_3;
        }
      }

      else if (SHIBYTE(v10) == 1 && *(a1 + 72) == LOBYTE(__p[0]))
      {
        goto LABEL_12;
      }

      v6 = 1;
      if (SHIBYTE(v10) < 0)
      {
LABEL_15:
        operator delete(__p[0]);
      }

LABEL_3:
      if ((v6 & 1) == 0)
      {
        goto LABEL_17;
      }
    }
  }

  __p[0] = 0;
  LOBYTE(__p[1]) = 0;
  sub_27183B36C(a1, __p);
  v8 = 0;
  sub_271839D90(a1, &v8);
  v7 = v8;
  *(a2 + 8) = __p[0];
  *(a2 + 16) = v7;
LABEL_17:
  if (a3 >= 2)
  {
    v8 = 0;
    sub_271839D90(a1, &v8);
    if (v8)
    {
      if ((*(a2 + 48) & 1) == 0)
      {
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 40) = 0;
        *(a2 + 48) = 1;
      }

      ++*(a1 + 80);
      if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
      {
        *(a1 + 132) = 1;
      }

      else
      {
        sub_27183D78C(a1, __p);
        if (*(a2 + 47) < 0)
        {
          operator delete(*(a2 + 24));
        }

        *(a2 + 24) = *__p;
        *(a2 + 40) = v10;
        ++*(a1 + 104);
      }
    }

    else if (*(a2 + 48))
    {
      if (*(a2 + 47) < 0)
      {
        operator delete(*(a2 + 24));
      }

      *(a2 + 48) = 0;
    }
  }
}

void sub_2713C4378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_2713BE258(&a22);
  sub_2713BF3B0(&a9);
  _Unwind_Resume(a1);
}

void sub_2713C439C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_2713A32D8(&a22);
  sub_2713BF3B0(&a9);
  _Unwind_Resume(a1);
}

void sub_2713C43B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2713AE3D8(v9);
  sub_2713BF3B0(&a9);
  _Unwind_Resume(a1);
}

void sub_2713C43D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_2712B8A00(va);
  _Unwind_Resume(a1);
}

void sub_2713C43FC(uint64_t a1, unsigned __int16 *a2)
{
  LOWORD(__p[0]) = 0;
  sub_27183A32C(a1, __p);
  *a2 = __p[0];
  LODWORD(__p[0]) = 2;
  sub_27183A9AC(a1, __p);
  if (LODWORD(__p[0]) <= 1)
  {
    __p[1] = 0;
    v8 = 0;
    sub_27183B6AC(a1, &v8);
    __p[0] = v8;
    sub_27183A9AC(a1, &__p[1]);
    sub_27183A9AC(a1, (__p | 0xC));
    *(a2 + 4) = *__p;
LABEL_17:
    v5 = *a2;
    if (v5 == 1)
    {
      sub_2715F5588(a2);
    }

    sub_2715F7478(v5);
    sub_2713C479C(__p, a1);
    sub_2713BE068();
  }

  __p[0] = 0;
  sub_27183B6AC(a1, __p);
  *(a2 + 1) = __p[0];
  sub_27183A9AC(a1, a2 + 4);
  sub_27183A9AC(a1, a2 + 5);
  while (1)
  {
    if ((*(a1 + 131) & 1) != 0 || (*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) != 0)
    {
      goto LABEL_17;
    }

    sub_27183D78C(a1, __p);
    if (v7 < 0)
    {
      if (__p[1] == 1 && *(a1 + 72) == *__p[0])
      {
LABEL_12:
        v4 = 0;
        if (v7 < 0)
        {
          goto LABEL_15;
        }

        goto LABEL_3;
      }
    }

    else if (v7 == 1 && *(a1 + 72) == LOBYTE(__p[0]))
    {
      goto LABEL_12;
    }

    v4 = 1;
    if (v7 < 0)
    {
LABEL_15:
      operator delete(__p[0]);
    }

LABEL_3:
    if ((v4 & 1) == 0)
    {
      goto LABEL_17;
    }
  }
}

uint64_t sub_2713C479C(uint64_t a1, uint64_t a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x2743BED80](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  v4 = (a1 + 64);
  *(a1 + 80) = 0u;
  *(a1 + 96) = 24;
  sub_271129318(a1);
  *(a1 + 168) = 0;
  *(a1 + 104) = MEMORY[0x277D82848] + 24;
  *(a1 + 112) = 0;
  *(a1 + 120) = MEMORY[0x277D82848] + 64;
  std::ios_base::init((a1 + 120), a1);
  *(a1 + 256) = 0;
  *(a1 + 264) = -1;
  __n = 0;
  sub_27183B6AC(a2, &__n);
  memset(&v9, 0, sizeof(v9));
  if (__n)
  {
    std::string::append(&v9, __n, 0);
    v5 = __n;
    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v9;
    }

    else
    {
      v6 = v9.__r_.__value_.__r.__words[0];
    }
  }

  else
  {
    v5 = 0;
    v6 = &v9;
  }

  v8[0] = v6;
  v8[1] = v5;
  sub_27183D9CC(a2, v8);
  if (*(a1 + 87) < 0)
  {
    operator delete(*v4);
  }

  *v4 = *&v9.__r_.__value_.__l.__data_;
  *(a1 + 80) = *(&v9.__r_.__value_.__l + 2);
  *(&v9.__r_.__value_.__s + 23) = 0;
  v9.__r_.__value_.__s.__data_[0] = 0;
  sub_271129318(a1);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_2713C4940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  std::istream::~istream();
  sub_2713B5444(v16);
  _Unwind_Resume(a1);
}

void sub_2713C49D0(uint64_t a1, void *a2, uint64_t a3)
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
  if (v7 <= 2)
  {
    sub_2713C4AE0(&v14, a2, a3, v7);
  }

  else
  {
    sub_27173170C(a2);
    if (v7 >= 6)
    {
      v10 = 6;
    }

    else
    {
      v10 = v7;
    }

    sub_2713C4D24(a2, a3, v10);
    v11 = a2[12];
    v12 = a2[9];
    a2[6] = *(v11 - 8) + *(v12 - 8) + 8;
    a2[9] = v12 - 8;
    a2[12] = v11 - 8;
  }
}

void sub_2713C4AE0(uint64_t a1, void *a2, uint64_t a3, unsigned int a4)
{
  v32 = *MEMORY[0x277D85DE8];
  *&v28 = 0;
  BYTE8(v28) = 0;
  LOBYTE(v29) = 0;
  v31 = 0;
  sub_2713C4FCC(&v12, a2, &v28);
  if (a4 >= 2)
  {
    v12 = "name";
    *&v13 = 4;
    *(&v13 + 1) = &v29;
    sub_2713C4ED8(a2, &v12);
  }

  v13 = v28;
  LOBYTE(v14[0]) = 0;
  v16 = 0;
  if (v31 == 1)
  {
    if (SHIBYTE(v30) < 0)
    {
      sub_271127178(v14, v29, *(&v29 + 1));
    }

    else
    {
      *v14 = v29;
      v15 = v30;
    }

    v16 = 1;
  }

  v17 = 0;
  v18 = 0;
  LOBYTE(v19) = 0;
  v21 = 0;
  LOBYTE(v22) = 0;
  v24 = 0;
  LOBYTE(__p) = 0;
  v27 = 0;
  sub_2713BCEE8(a3, &v12);
  if (v27 == 1)
  {
    v7 = __p;
    if (__p)
    {
      v8 = v26;
      v9 = __p;
      if (v26 != __p)
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
        v9 = __p;
      }

      v26 = v7;
      operator delete(v9);
    }
  }

  if (v24 == 1 && v23 < 0)
  {
    operator delete(v22);
  }

  if (v21 == 1 && v20 < 0)
  {
    operator delete(v19);
  }

  if (v16 == 1 && SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }

  if (v31 == 1 && SHIBYTE(v30) < 0)
  {
    operator delete(v29);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_2713C4CD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a18 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 64) == 1 && *(v18 - 65) < 0)
  {
    operator delete(*(v18 - 88));
  }

  _Unwind_Resume(exception_object);
}

void sub_2713C4D24(void *a1, uint64_t a2, unsigned int a3)
{
  sub_2713C4FCC(&v9, a1, a2 + 8);
  v9 = "name";
  v10 = 4;
  v11 = a2 + 24;
  sub_2713C4ED8(a1, &v9);
  if (a3 >= 4)
  {
    v6 = a1[6];
    if (a1[7] <= v6)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_271128104(exception, "Not enough data to read");
      __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
    }

    v7 = *(a1[3] + v6);
    a1[6] = v6 + 1;
    if (v7)
    {
      if ((*(a2 + 72) & 1) == 0)
      {
        *(a2 + 56) = 0;
        *(a2 + 64) = 0;
        *(a2 + 72) = 1;
      }

      sub_2713C4FCC(&v9, a1, a2 + 56);
    }

    else if (*(a2 + 72))
    {
      *(a2 + 72) = 0;
    }

    if (a3 == 5)
    {
      v9 = "space";
      v10 = 5;
      v11 = a2 + 80;
      sub_2713C4ED8(a1, &v9);
    }

    else if (a3 >= 6)
    {
      v9 = "space";
      v10 = 5;
      v11 = a2 + 80;
      sub_2713C4ED8(a1, &v9);
      v9 = "instance_id";
      v10 = 11;
      v11 = a2 + 112;
      sub_2713C4ED8(a1, &v9);
      sub_2713C52A0(&v9, a1, a2 + 144);
    }
  }
}

void *sub_2713C4ED8(void *result, uint64_t a2)
{
  v2 = result[6];
  if (result[7] <= v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v3 = *(a2 + 16);
  v4 = *(result[3] + v2);
  result[6] = v2 + 1;
  if (v4)
  {
    if ((*(v3 + 24) & 1) == 0)
    {
      *v3 = 0;
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
      *(v3 + 24) = 1;
    }

    v5 = result;
    sub_2717318E8(result, v3);
    return v5;
  }

  else if (*(v3 + 24))
  {
    if (*(v3 + 23) < 0)
    {
      v6 = result;
      v7 = v3;
      operator delete(*v3);
      result = v6;
      *(v7 + 24) = 0;
    }

    else
    {
      *(v3 + 24) = 0;
    }
  }

  return result;
}

void *sub_2713C4FCC(uint64_t a1, void *a2, uint64_t a3)
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

  v9 = *(a2[3] + v3);
  a2[6] = v3 + 4;
  if (v9 <= 1)
  {
    v15 = 0;
    v16 = 0;
    result = sub_2713C51C0(a2, &v15);
    v13 = v16;
    *a3 = v15;
    *(a3 + 8) = v13;
  }

  else
  {
    sub_27173170C(a2);
    result = sub_2713C50E0(a2, a3);
    v11 = a2[12];
    v12 = a2[9];
    a2[6] = *(v11 - 8) + *(v12 - 8) + 8;
    a2[9] = v12 - 8;
    a2[12] = v11 - 8;
  }

  return result;
}

void *sub_2713C50E0(void *result, uint64_t a2)
{
  v2 = result[6];
  v3 = result[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 7 || (*a2 = *(result[3] + v2), v6 = result[6], v7 = result[7], result[6] = v6 + 8, v7 <= v6 + 8))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v8 = *(result[3] + v6 + 8);
  result[6] = v6 + 9;
  *(a2 + 8) = v8;
  return result;
}

void *sub_2713C51C0(void *result, uint64_t a2)
{
  v2 = result[6];
  v3 = result[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 7 || (*a2 = *(result[3] + v2), v6 = result[6], v7 = result[7], result[6] = v6 + 8, v7 <= v6 + 8))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v8 = *(result[3] + v6 + 8);
  result[6] = v6 + 9;
  *(a2 + 8) = v8;
  return result;
}

void sub_2713C52A0(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[6];
  if (a2[7] <= v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v5 = *(a2[3] + v3);
  a2[6] = v3 + 1;
  if (v5)
  {
    if ((*(a3 + 24) & 1) == 0)
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 1;
    }

    sub_2713C53C4(a2, a3);
  }

  else if (*(a3 + 24))
  {
    v6 = *a3;
    if (*a3)
    {
      v7 = *(a3 + 8);
      v8 = *a3;
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
        v8 = *a3;
      }

      *(a3 + 8) = v6;
      operator delete(v8);
    }

    *(a3 + 24) = 0;
  }
}

void sub_2713C53C4(void *a1, uint64_t *a2)
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

  v8 = *a2;
  v9 = a2[1];
  v10 = v9 - *a2;
  v11 = *(a1[3] + v3);
  a1[6] = v3 + 8;
  v12 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
  if (v11 > v12)
  {
    sub_2713C00BC(a2, v11 - v12);
    v15 = a2;
    i = *a2;
    v14 = v15[1];
    if (v14 == i)
    {
      return;
    }

    goto LABEL_15;
  }

  if (v11 >= v12)
  {
    v14 = v9;
    i = *a2;
    if (v9 == *a2)
    {
      return;
    }

    goto LABEL_15;
  }

  v14 = (v8 + 24 * v11);
  while (v9 != v14)
  {
    v16 = *(v9 - 1);
    v9 -= 3;
    if (v16 < 0)
    {
      operator delete(*v9);
    }
  }

  a2[1] = v14;
  for (i = *a2; i != v14; i += 24)
  {
LABEL_15:
    sub_2717318E8(a1, i);
  }
}

void sub_2713C5500(void *a1, unsigned __int16 *a2)
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
    goto LABEL_23;
  }

  v8 = *(a1[3] + v2);
  a1[6] = v2 + 4;
  if (v8 <= 1)
  {
    *&v27 = &unk_28810F9B8;
    sub_2713BE9C4();
  }

  sub_27173170C(a1);
  v9 = a1[6];
  v10 = a1[7];
  v11 = v10 - v9;
  if (v10 < v9)
  {
    v11 = 0;
  }

  if (v11 <= 1)
  {
    goto LABEL_23;
  }

  v12 = a1[3];
  v13 = *(v12 + v9);
  a1[6] = v9 + 2;
  *a2 = v13;
  v4 = v10 >= v9 + 2;
  v14 = v10 - (v9 + 2);
  if (!v4)
  {
    v14 = 0;
  }

  if (v14 <= 3)
  {
    goto LABEL_23;
  }

  v15 = *(v12 + v9 + 2);
  a1[6] = v9 + 6;
  if (v15 <= 1)
  {
    v27 = 1uLL;
    sub_2713C5EA8(a1, &v27);
    *(a2 + 4) = v27;
    v25 = *a2;
    if (v25 != 1)
    {
LABEL_19:
      sub_2715F7478(v25);
      sub_2713C5F8C(&v27, a1);
      sub_2713BE068();
    }

LABEL_22:
    sub_2715F5588(a2);
  }

  sub_27173170C(a1);
  v17 = a1[6];
  v16 = a1[7];
  v18 = v16 - v17;
  if (v16 < v17)
  {
    v18 = 0;
  }

  if (v18 <= 7)
  {
LABEL_23:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
  }

  else
  {
    v19 = a1[3];
    v20 = *(v19 + v17);
    v21 = v17 + 8;
    a1[6] = v21;
    *(a2 + 1) = v20;
    v4 = v16 >= v21;
    v22 = v16 - v21;
    if (!v4)
    {
      v22 = 0;
    }

    if (v22 > 7)
    {
      *(a2 + 2) = *(v19 + v21);
      a1[6] += 8;
      v23 = a1[12];
      v24 = a1[9];
      a1[6] = *(v23 - 8) + *(v24 - 8) + 8;
      a1[9] = v24 - 8;
      a1[12] = v23 - 8;
      v25 = *a2;
      if (v25 != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read span");
  }

  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_2713C5DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_2713BE258(&a31);
  sub_2713BF3B0(&a9);
  _Unwind_Resume(a1);
}

void sub_2713C5DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_free_exception(v9);
  sub_2713BF3B0(&a9);
  _Unwind_Resume(a1);
}

void sub_2713C5E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_2713A32D8(&a31);
  sub_2713BF3B0(&a9);
  _Unwind_Resume(a1);
}

void sub_2713C5E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2713AE3D8(v9);
  sub_2713BF3B0(&a9);
  _Unwind_Resume(a1);
}

void *sub_2713C5EA8(void *result, void *a2)
{
  v3 = result[6];
  v2 = result[7];
  v4 = v2 - v3;
  if (v2 < v3)
  {
    v4 = 0;
  }

  if (v4 <= 7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    goto LABEL_10;
  }

  v5 = result[3];
  v6 = *(v5 + v3);
  v7 = v3 + 8;
  result[6] = v7;
  *a2 = v6;
  v8 = v2 >= v7;
  v9 = v2 - v7;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read span");
LABEL_10:
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  a2[1] = *(v5 + v7);
  result[6] += 8;
  return result;
}

uint64_t sub_2713C5F8C(uint64_t a1, void *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x2743BED80](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  v4 = (a1 + 64);
  *(a1 + 80) = 0u;
  *(a1 + 96) = 24;
  sub_271129318(a1);
  *(a1 + 168) = 0;
  *(a1 + 104) = MEMORY[0x277D82848] + 24;
  *(a1 + 112) = 0;
  *(a1 + 120) = MEMORY[0x277D82848] + 64;
  std::ios_base::init((a1 + 120), a1);
  *(a1 + 256) = 0;
  *(a1 + 264) = -1;
  v5 = a2[6];
  v6 = a2[7];
  v7 = v6 - v5;
  if (v6 < v5)
  {
    v7 = 0;
  }

  if (v7 <= 7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Not enough data to read");
    exception->__vftable = (MEMORY[0x277D828E8] + 16);
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v8 = *(a2[3] + v5);
  v9 = v5 + 8;
  a2[6] = v9;
  memset(&v16, 0, sizeof(v16));
  if (v8)
  {
    std::string::append(&v16, v8, 0);
    v9 = a2[6];
    v6 = a2[7];
  }

  v10 = v6 >= v9;
  v11 = v6 - v9;
  if (!v10)
  {
    v11 = 0;
  }

  if (v11 < v8)
  {
    v15 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v15, "Not enough data to read binary blob");
    v15->__vftable = (MEMORY[0x277D828E8] + 16);
    __cxa_throw(v15, off_279E2F400, MEMORY[0x277D825F8]);
  }

  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v16;
  }

  else
  {
    v12 = v16.__r_.__value_.__r.__words[0];
  }

  memcpy(v12, (a2[3] + v9), v8);
  a2[6] += v8;
  if (*(a1 + 87) < 0)
  {
    operator delete(*v4);
  }

  *v4 = *&v16.__r_.__value_.__l.__data_;
  *(a1 + 80) = *(&v16.__r_.__value_.__l + 2);
  *(&v16.__r_.__value_.__s + 23) = 0;
  v16.__r_.__value_.__s.__data_[0] = 0;
  sub_271129318(a1);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_2713C6204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::istream::~istream();
  sub_2713B5444(v15);
  _Unwind_Resume(a1);
}

void sub_2713C62C8(int *a1, void **a2, uint64_t a3, unsigned int a4)
{
  v4 = a4;
  v7 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 3)
    {
LABEL_17:
      sub_2713C66D4(&v13, a2, a3, v4);
      return;
    }

    v12 = 3;
    (*(*a2 + 13))(a2, &v12);
    if (v12 >= 7)
    {
      v11 = v12;
      if ((atomic_load_explicit(&qword_280878A90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878A90))
      {
        sub_2713C64B4();
      }

      sub_271847D5C(&stru_280878A78, v11, 6u);
    }

    v7 = *a1;
  }

  if (v4 < 3 || v7 <= 0)
  {
    if (v4 >= 6)
    {
      v10 = 6;
    }

    else
    {
      v10 = v4;
    }

    if (v4 > 2)
    {
      sub_2713C68E0(a2, a3, v10);
      return;
    }

    v4 = v10;
    goto LABEL_17;
  }

  (*(*a2 + 2))(a2);
  if (v4 >= 6)
  {
    v9 = 6;
  }

  else
  {
    v9 = v4;
  }

  sub_2713C68E0(a2, a3, v9);
  (*(*a2 + 3))(a2);
}

void sub_2713C6588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713C65B8(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_271851C68("6U]", 2, &v10);
  sub_2711309E8(__p, &v10, 1uLL);
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

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_2713C669C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27137F4D0(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2713C66D4(uint64_t a1, void *a2, uint64_t a3, unsigned int a4)
{
  v30 = *MEMORY[0x277D85DE8];
  *&v26 = 0;
  BYTE8(v26) = 0;
  LOBYTE(v27) = 0;
  v29 = 0;
  sub_2713C7880(a2, v25, a4);
  *&v10[8] = v26;
  LOBYTE(v11[0]) = 0;
  v13 = 0;
  if (v29 == 1)
  {
    if (SHIBYTE(v28) < 0)
    {
      sub_271127178(v11, v27, *(&v27 + 1));
    }

    else
    {
      *v11 = v27;
      v12 = v28;
    }

    v13 = 1;
  }

  v14 = 0;
  v15 = 0;
  LOBYTE(v16) = 0;
  v18 = 0;
  LOBYTE(v19) = 0;
  v21 = 0;
  LOBYTE(__p) = 0;
  v24 = 0;
  sub_2713BCEE8(a3, v10);
  if (v24 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v23;
      v7 = __p;
      if (v23 != __p)
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

      v23 = v5;
      operator delete(v7);
    }
  }

  if (v21 == 1 && v20 < 0)
  {
    operator delete(v19);
  }

  if (v18 == 1 && v17 < 0)
  {
    operator delete(v16);
  }

  if (v13 == 1 && SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }

  if (v29 == 1 && SHIBYTE(v28) < 0)
  {
    operator delete(v27);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_2713C6894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a18 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 48) == 1 && *(v18 - 49) < 0)
  {
    operator delete(*(v18 - 72));
  }

  _Unwind_Resume(exception_object);
}

void sub_2713C68E0(void **a1, uint64_t a2, unsigned int a3)
{
  v6 = *a1;
  v24[0] = a1[1];
  LODWORD(__p) = 2;
  v6[13](a1, &__p);
  if (SLODWORD(v24[0]) < 1)
  {
    if (__p < 2)
    {
      __p = 0;
      LOBYTE(v30) = 0;
      (*(*a1 + 9))(a1, &__p);
      v26[0] = &v30;
      sub_2713C7418(a1, v26);
      v7 = v30;
      *(a2 + 8) = __p;
      *(a2 + 16) = v7;
    }

    else
    {
      (*(*a1 + 9))(a1, a2 + 8);
      __p = (a2 + 16);
      sub_2713C7418(a1, &__p);
    }
  }

  else
  {
    sub_2713C718C(v24, a1, a2 + 8, __p);
  }

  LOBYTE(__p) = 0;
  (*(*a1 + 10))(a1, &__p);
  if (__p)
  {
    if ((*(a2 + 48) & 1) == 0)
    {
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 48) = 1;
    }

    (*(*a1 + 18))(a1, a2 + 24);
  }

  else if (*(a2 + 48))
  {
    if (*(a2 + 47) < 0)
    {
      operator delete(*(a2 + 24));
    }

    *(a2 + 48) = 0;
  }

  if (a3 >= 4)
  {
    sub_2713C7590(a1, a2 + 56);
    if (a3 == 5)
    {
      LOBYTE(__p) = 0;
      (*(*a1 + 10))(a1, &__p);
      if (__p)
      {
        if ((*(a2 + 104) & 1) == 0)
        {
          *(a2 + 80) = 0;
          *(a2 + 88) = 0;
          *(a2 + 96) = 0;
          *(a2 + 104) = 1;
        }

        (*(*a1 + 18))(a1, a2 + 80);
      }

      else if (*(a2 + 104))
      {
        if (*(a2 + 103) < 0)
        {
          operator delete(*(a2 + 80));
        }

        *(a2 + 104) = 0;
      }
    }

    else if (a3 >= 6)
    {
      if ((*(a1 + 12) & 4) != 0)
      {
        LOBYTE(__p) = 0;
        (*(*a1 + 10))(a1, &__p);
        if (__p)
        {
          if ((*(a2 + 104) & 1) == 0)
          {
            *(a2 + 80) = 0;
            *(a2 + 88) = 0;
            *(a2 + 96) = 0;
            *(a2 + 104) = 1;
          }

          (*(*a1 + 18))(a1, a2 + 80);
        }

        else
        {
          if (*(a2 + 104))
          {
            if (*(a2 + 103) < 0)
            {
              operator delete(*(a2 + 80));
            }

            *(a2 + 104) = 0;
          }

          (*(*a1 + 35))(a1, v26);
        }

        LOBYTE(__p) = 0;
        (*(*a1 + 10))(a1, &__p);
        if (__p)
        {
          if ((*(a2 + 136) & 1) == 0)
          {
            *(a2 + 112) = 0;
            *(a2 + 120) = 0;
            *(a2 + 128) = 0;
            *(a2 + 136) = 1;
          }

          (*(*a1 + 18))(a1, a2 + 112);
        }

        else
        {
          if (*(a2 + 136))
          {
            if (*(a2 + 135) < 0)
            {
              operator delete(*(a2 + 112));
            }

            *(a2 + 136) = 0;
          }

          (*(*a1 + 35))(a1, v26);
        }

        LOBYTE(__p) = 0;
        v32 = 0;
        LOBYTE(v26[0]) = 0;
        (*(*a1 + 10))(a1, v26);
        if (LOBYTE(v26[0]))
        {
          if ((v32 & 1) == 0)
          {
            __p = 0;
            v30 = 0;
            v31 = 0;
            v32 = 1;
          }

          (*(*a1 + 18))(a1, &__p);
        }

        else
        {
          if (v32)
          {
            if (SHIBYTE(v31) < 0)
            {
              operator delete(__p);
            }

            v32 = 0;
          }

          (*(*a1 + 35))(a1, v24);
        }

        if (v32 == 1)
        {
          sub_2713BB9DC(&__p, v24);
          *v26 = *v24;
          v27 = v25;
          v24[1] = 0;
          v25 = 0;
          v24[0] = 0;
          v28 = 1;
          sub_2713BCDA4(a2 + 144, v26);
          if (v28 == 1)
          {
            v12 = v26[0];
            if (v26[0])
            {
              v13 = v26[1];
              v14 = v26[0];
              if (v26[1] != v26[0])
              {
                do
                {
                  v15 = *(v13 - 1);
                  v13 -= 3;
                  if (v15 < 0)
                  {
                    operator delete(*v13);
                  }
                }

                while (v13 != v12);
                v14 = v26[0];
              }

              v26[1] = v12;
              operator delete(v14);
            }
          }

          v20 = v24[0];
          if (v24[0])
          {
            v21 = v24[1];
            v22 = v24[0];
            if (v24[1] != v24[0])
            {
              do
              {
                v23 = *(v21 - 1);
                v21 -= 3;
                if (v23 < 0)
                {
                  operator delete(*v21);
                }
              }

              while (v21 != v20);
              v22 = v24[0];
            }

            v24[1] = v20;
            operator delete(v22);
          }
        }

        else if (*(a2 + 168) == 1)
        {
          v16 = *(a2 + 144);
          if (v16)
          {
            v17 = *(a2 + 152);
            v18 = *(a2 + 144);
            if (v17 != v16)
            {
              do
              {
                v19 = *(v17 - 1);
                v17 -= 3;
                if (v19 < 0)
                {
                  operator delete(*v17);
                }
              }

              while (v17 != v16);
              v18 = *(a2 + 144);
            }

            *(a2 + 152) = v16;
            operator delete(v18);
          }

          *(a2 + 168) = 0;
        }

        if (v32 == 1 && SHIBYTE(v31) < 0)
        {
          operator delete(__p);
        }
      }

      else
      {
        LOBYTE(__p) = 0;
        (*(*a1 + 10))(a1, &__p);
        if (__p)
        {
          if ((*(a2 + 104) & 1) == 0)
          {
            *(a2 + 80) = 0;
            *(a2 + 88) = 0;
            *(a2 + 96) = 0;
            *(a2 + 104) = 1;
          }

          (*(*a1 + 18))(a1, a2 + 80);
        }

        else if (*(a2 + 104))
        {
          if (*(a2 + 103) < 0)
          {
            operator delete(*(a2 + 80));
          }

          *(a2 + 104) = 0;
        }

        LOBYTE(__p) = 0;
        (*(*a1 + 10))(a1, &__p);
        if (__p)
        {
          if ((*(a2 + 136) & 1) == 0)
          {
            *(a2 + 112) = 0;
            *(a2 + 120) = 0;
            *(a2 + 128) = 0;
            *(a2 + 136) = 1;
          }

          (*(*a1 + 18))(a1, a2 + 112);
        }

        else if (*(a2 + 136))
        {
          if (*(a2 + 135) < 0)
          {
            operator delete(*(a2 + 112));
          }

          *(a2 + 136) = 0;
        }

        LOBYTE(__p) = 0;
        (*(*a1 + 10))(a1, &__p);
        if (__p)
        {
          if ((*(a2 + 168) & 1) == 0)
          {
            *(a2 + 144) = 0;
            *(a2 + 152) = 0;
            *(a2 + 160) = 0;
            *(a2 + 168) = 1;
          }

          sub_2713C774C(a1, (a2 + 144));
        }

        else if (*(a2 + 168))
        {
          v8 = *(a2 + 144);
          if (v8)
          {
            v9 = *(a2 + 152);
            v10 = *(a2 + 144);
            if (v9 != v8)
            {
              do
              {
                v11 = *(v9 - 1);
                v9 -= 3;
                if (v11 < 0)
                {
                  operator delete(*v9);
                }
              }

              while (v9 != v8);
              v10 = *(a2 + 144);
            }

            *(a2 + 152) = v8;
            operator delete(v10);
          }

          *(a2 + 168) = 0;
        }
      }
    }
  }
}

void sub_2713C7160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a23 == 1 && a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2713C718C(int *a1, _BYTE *a2, uint64_t a3, unsigned int a4)
{
  v6 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 2)
    {
      goto LABEL_10;
    }

    v8 = a4;
    LODWORD(v12) = 2;
    (*(*a2 + 104))(a2, &v12);
    if (v12 >= 3)
    {
      v11 = v12;
      if ((atomic_load_explicit(&qword_280878A70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878A70))
      {
        sub_2718519B4("cv3d::kit::timeio::TimestampSample]", 0x22uLL, &stru_280878A58);
        __cxa_guard_release(&qword_280878A70);
        sub_271847D5C(&stru_280878A58, v11, 2u);
      }

      sub_271847D5C(&stru_280878A58, v11, 2u);
    }

    v6 = *a1;
    a4 = v8;
  }

  if (a4 >= 2 && v6 > 0)
  {
    (*(*a2 + 16))(a2);
    (*(*a2 + 72))(a2, a3);
    v12 = (a3 + 8);
    sub_2713C7418(a2, &v12);
    return (*(*a2 + 24))(a2);
  }

  if (a4 >= 2)
  {
    (*(*a2 + 72))(a2, a3);
    v12 = (a3 + 8);
    return sub_2713C7418(a2, &v12);
  }

LABEL_10:
  v12 = 0;
  v13 = 0;
  (*(*a2 + 72))(a2, &v12);
  v14 = &v13;
  result = sub_2713C7418(a2, &v14);
  v10 = v13;
  *a3 = v12;
  *(a3 + 8) = v10;
  return result;
}

uint64_t sub_2713C7418(_BYTE *a1, _BYTE **a2)
{
  if ((a1[12] & 2) != 0)
  {
    memset(__p, 0, sizeof(__p));
    (*(*a1 + 144))(a1, __p);
    operator new();
  }

  LOBYTE(__p[0]) = 0;
  result = (*(*a1 + 80))(a1, __p);
  **a2 = __p[0];
  return result;
}

void sub_2713C753C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  a17 = 0;
  sub_27184D728(&a17, v17);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2713C7590(void *a1, uint64_t a2)
{
  v8 = 0;
  result = (*(*a1 + 80))(a1, &v8);
  if (v8)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 1;
    }

    v5 = *a1;
    v9 = a1[1];
    v6 = v9;
    LODWORD(v10) = 2;
    (*(v5 + 104))(a1, &v10);
    if (v6 < 1)
    {
      if (v10 < 2)
      {
        v10 = 0;
        v11 = 0;
        (*(*a1 + 72))(a1, &v10);
        v12 = &v11;
        result = sub_2713C7418(a1, &v12);
        v7 = v11;
        *a2 = v10;
        *(a2 + 8) = v7;
      }

      else
      {
        (*(*a1 + 72))(a1, a2);
        v10 = (a2 + 8);
        return sub_2713C7418(a1, &v10);
      }
    }

    else
    {
      return sub_2713C718C(&v9, a1, a2, v10);
    }
  }

  else if (*(a2 + 16))
  {
    *(a2 + 16) = 0;
  }

  return result;
}

void sub_2713C774C(uint64_t a1, void ***a2)
{
  v10 = 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2);
  (*(*a1 + 120))(a1, &v10);
  v4 = a2[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * (v4 - *a2);
  if (v10 > v5)
  {
    sub_2713C00BC(a2, v10 - v5);
    v8 = a2;
    v6 = *a2;
    v7 = v8[1];
    if (v7 == v6)
    {
      return;
    }

    goto LABEL_12;
  }

  if (v10 >= v5)
  {
    v7 = a2[1];
    v6 = *a2;
    if (v4 == v6)
    {
      return;
    }

    goto LABEL_12;
  }

  v7 = &(*a2)[3 * v10];
  while (v4 != v7)
  {
    v9 = *(v4 - 1);
    v4 -= 3;
    if (v9 < 0)
    {
      operator delete(*v4);
    }
  }

  a2[1] = v7;
  v6 = *a2;
  if (v7 != v6)
  {
    do
    {
LABEL_12:
      (*(*a1 + 144))(a1, v6);
      v6 += 3;
    }

    while (v6 != v7);
  }
}

void sub_2713C7880(void *a1, uint64_t a2, unsigned int a3)
{
  v6 = *a1;
  v8 = a1[1];
  LODWORD(v9) = 2;
  (*(v6 + 104))(a1, &v9);
  if (v8 < 1)
  {
    if (v9 < 2)
    {
      v9 = 0;
      v10 = 0;
      (*(*a1 + 72))(a1, &v9);
      v11 = &v10;
      sub_2713C7418(a1, &v11);
      v7 = v10;
      *(a2 + 8) = v9;
      *(a2 + 16) = v7;
      if (a3 < 2)
      {
        return;
      }
    }

    else
    {
      (*(*a1 + 72))(a1, a2 + 8);
      v9 = (a2 + 16);
      sub_2713C7418(a1, &v9);
      if (a3 < 2)
      {
        return;
      }
    }
  }

  else
  {
    sub_2713C718C(&v8, a1, a2 + 8, v9);
    if (a3 < 2)
    {
      return;
    }
  }

  LOBYTE(v9) = 0;
  (*(*a1 + 80))(a1, &v9);
  if (v9)
  {
    if ((*(a2 + 48) & 1) == 0)
    {
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 48) = 1;
    }

    (*(*a1 + 144))(a1, a2 + 24);
  }

  else if (*(a2 + 48))
  {
    if (*(a2 + 47) < 0)
    {
      operator delete(*(a2 + 24));
    }

    *(a2 + 48) = 0;
  }
}

void sub_2713C7A9C(int *a1, uint64_t a2, unsigned __int16 *a3, unsigned int a4)
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
      if ((atomic_load_explicit(&qword_280878830, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878830))
      {
        sub_2713C7C68();
      }

      sub_271847D5C(&stru_280878818, v9, 2u);
    }

    v6 = *a1;
    a4 = v8;
  }

  if (a4 >= 2 && v6 > 0)
  {
    (*(*a2 + 16))(a2);
    sub_2713C829C(a2, a3);
  }

  if (a4 > 1)
  {
    sub_2713C829C(a2, a3);
  }

LABEL_10:
  sub_2713C7D6C();
}

void sub_2713C7D3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713C8218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_2713BE258(&a22);
  sub_2713BF3B0(&a9);
  _Unwind_Resume(a1);
}

void sub_2713C823C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_2713A32D8(&a22);
  sub_2713BF3B0(&a9);
  _Unwind_Resume(a1);
}

void sub_2713C8258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2713AE3D8(v9);
  sub_2713BF3B0(&a9);
  _Unwind_Resume(a1);
}

void sub_2713C8274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_2712B8A00(va);
  _Unwind_Resume(a1);
}

void sub_2713C829C(uint64_t a1, unsigned __int16 *a2)
{
  v7[0] = a2;
  sub_2713C86EC(a1, v7);
  v4 = *(a1 + 8);
  LODWORD(v7[0]) = 2;
  (*(*a1 + 104))(a1, v7);
  if (v4 >= 1)
  {
    if (v4 == 2)
    {
      if (LODWORD(v7[0]) >= 2)
      {
        LODWORD(v7[0]) = 2;
        (*(*a1 + 104))(a1, v7);
        if (LODWORD(v7[0]) >= 3)
        {
          v5 = v7[0];
          if ((atomic_load_explicit(&qword_280878810, memory_order_acquire) & 1) == 0)
          {
            if (__cxa_guard_acquire(&qword_280878810))
            {
              sub_2713C89A4();
            }
          }

          sub_271847D5C(&stru_2808787F8, v5, 2u);
        }

LABEL_8:
        (*(*a1 + 16))(a1);
        v7[0] = a2 + 4;
        sub_2713C8AA8(a1, v7);
        (*(*a1 + 104))(a1, a2 + 8);
        (*(*a1 + 104))(a1, a2 + 10);
        (*(*a1 + 24))(a1);
        v6 = *a2;
        if (v6 != 1)
        {
          goto LABEL_9;
        }

        goto LABEL_11;
      }
    }

    else if (LODWORD(v7[0]) > 1)
    {
      goto LABEL_8;
    }
  }

  sub_2713C8864(a1, a2 + 8, v7[0]);
  v6 = *a2;
  if (v6 != 1)
  {
LABEL_9:
    sub_2715F7478(v6);
    sub_2713C8C20(v7, a1);
    sub_2713BE068();
  }

LABEL_11:
  sub_2715F5588(a2);
}

void sub_2713C86D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713BE258(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2713C86EC(_BYTE *a1, _WORD **a2)
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

void sub_2713C8810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  a17 = 0;
  sub_27184D728(&a17, v17);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double sub_2713C8864(_BYTE *a1, char *a2, unsigned int a3)
{
  if (a3 < 2)
  {
    v7 = 1uLL;
    v8 = &v7;
    sub_2713C8AA8(a1, &v8);
    (*(*a1 + 104))(a1, &v7 + 8);
    (*(*a1 + 104))(a1, &v7 | 0xC);
    result = *&v7;
    *a2 = v7;
  }

  else
  {
    *&v7 = a2;
    sub_2713C8AA8(a1, &v7);
    (*(*a1 + 104))(a1, a2 + 8);
    v5 = *(*a1 + 104);

    v5(a1, a2 + 12);
  }

  return result;
}

void sub_2713C8A78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2713C8AA8(_BYTE *a1, void ***a2)
{
  if ((a1[12] & 2) != 0)
  {
    memset(__p, 0, sizeof(__p));
    (*(*a1 + 144))(a1, __p);
    operator new();
  }

  __p[0] = 0;
  result = (*(*a1 + 120))(a1, __p);
  **a2 = __p[0];
  return result;
}

void sub_2713C8BCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  a17 = 0;
  sub_27184D728(&a17, v17);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2713C8C20(uint64_t a1, uint64_t a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x2743BED80](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  v4 = (a1 + 64);
  *(a1 + 80) = 0u;
  *(a1 + 96) = 24;
  sub_271129318(a1);
  *(a1 + 168) = 0;
  *(a1 + 104) = MEMORY[0x277D82848] + 24;
  *(a1 + 112) = 0;
  *(a1 + 120) = MEMORY[0x277D82848] + 64;
  std::ios_base::init((a1 + 120), a1);
  *(a1 + 256) = 0;
  *(a1 + 264) = -1;
  __n = 0;
  (*(*a2 + 120))(a2, &__n);
  memset(&v9, 0, sizeof(v9));
  if (__n)
  {
    std::string::append(&v9, __n, 0);
    v5 = __n;
    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v9;
    }

    else
    {
      v6 = v9.__r_.__value_.__r.__words[0];
    }
  }

  else
  {
    v5 = 0;
    v6 = &v9;
  }

  v8[0] = v6;
  v8[1] = v5;
  (*(*a2 + 272))(a2, v8);
  if (*(a1 + 87) < 0)
  {
    operator delete(*v4);
  }

  *v4 = *&v9.__r_.__value_.__l.__data_;
  *(a1 + 80) = *(&v9.__r_.__value_.__l + 2);
  *(&v9.__r_.__value_.__s + 23) = 0;
  v9.__r_.__value_.__s.__data_[0] = 0;
  sub_271129318(a1);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_2713C8E0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  std::istream::~istream();
  sub_2713B5444(v16);
  _Unwind_Resume(a1);
}

void sub_2713C8F64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  (*(*v2 + 8))(v2);
  sub_27122B39C(va);
  _Unwind_Resume(a1);
}

void sub_2713C8FB8(uint64_t a1, void **a2)
{
  v4 = *a2;
  v7 = a2[1];
  v8 = 6;
  v4[13](a2, &v8);
  if (v7 < 1)
  {
    if (v8 < 3)
    {
      sub_2713C66D4(&v8, a2, a1 + 16, v8);
    }

    else
    {
      sub_2713C68E0(a2, a1 + 16, v8);
    }
  }

  else
  {
    sub_2713C62C8(&v7, a2, a1 + 16, v8);
  }

  v5 = *a2;
  v7 = a2[1];
  v6 = v7;
  v8 = 2;
  v5[13](a2, &v8);
  if (v6 >= 1)
  {
    sub_2713C7A9C(&v7, a2, (a1 + 192), v8);
  }

  if (v8 >= 2)
  {
    sub_2713C829C(a2, (a1 + 192));
  }

  sub_2713C7D6C();
}

void sub_2713C9104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_27182791C(a2 + 48, (a2 + 40));
  v5 = sub_2718289B0(a2);
  *(a2 + 40) = v5;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v5 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v6 = *"sion" == 1852795251) : (v6 = 0), v6))
  {
    *(a2 + 96) = 4;
    *(a2 + 100) = 1;
    *(a2 + 88) = 0;
  }

  else
  {
    LOBYTE(v10) = 6;
    v11 = 4;
    v7 = sub_2718289B0(a2);
    v8 = *v7;
    *v7 = 6;
    LOBYTE(v10) = v8;
    v9 = v7[1];
    v7[1] = v11;
    v11 = v9;
    sub_2715CC40C(&v11, v8);
  }

  sub_2713C9DA4(&v10, a3);
  sub_2713C9278(a2, &v10);
}

void sub_2713C9278(uint64_t a1, uint64_t **a2)
{
  if (**(a1 + 40) <= 1u)
  {
    v4 = *(a1 + 88);
    *(a1 + 72) = "vertices";
    *(a1 + 80) = 8;
    if ((v4 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_27182791C(a1 + 48, (a1 + 40));
  *(a1 + 40) = sub_2718289B0(a1);
  v5 = *(a1 + 88);
  if (v5 == 1)
  {
    v5 = 0;
    *(a1 + 88) = 0;
  }

  v6 = *a2;
  v7 = a2[1];
  if (*a2 == v7)
  {
    v12 = *(a1 + 56);
    v11 = *(v12 - 8);
    *(a1 + 40) = v11;
    *(a1 + 56) = v12 - 8;
    if (v5)
    {
LABEL_9:
      *(a1 + 88) = 0;
    }
  }

  else
  {
    do
    {
      v8 = *v6;
      LODWORD(v15) = *(v6 + 2);
      v14 = v8;
      v13[0] = &v14;
      v13[1] = 3;
      sub_27182C644(a1, v13);
      v6 = (v6 + 12);
    }

    while (v6 != v7);
    v9 = *(a1 + 56);
    v10 = *(a1 + 88);
    v11 = *(v9 - 8);
    *(a1 + 40) = v11;
    *(a1 + 56) = v9 - 8;
    if (v10)
    {
      goto LABEL_9;
    }
  }

  if (*v11 <= 1u)
  {
    *(a1 + 72) = "colors_type";
    *(a1 + 80) = 11;
    *(a1 + 88) = 1;
  }

  sub_2713CACE8();
}

uint64_t sub_2713C9DA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2713C9F18(a1, a2);
  *(v4 + 8) = *(a2 + 32);
  sub_2713C9F18(v4 + 5, a2 + 40);
  *(a1 + 72) = *(a2 + 72);
  sub_2713C9F18((a1 + 80), a2 + 80);
  *(a1 + 112) = *(a2 + 112);
  sub_2713CA044((a1 + 120), a2 + 120);
  *(a1 + 152) = *(a2 + 152);
  sub_2713CA044((a1 + 160), a2 + 160);
  sub_2713CA14C((a1 + 192), a2 + 192);
  sub_2713CA278((a1 + 224), a2 + 224);
  sub_2713CA38C((a1 + 256), a2 + 256);
  sub_2713CA14C((a1 + 288), a2 + 288);
  v5 = *(a2 + 336);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = v5;
  sub_2713CAB34((a1 + 352), a2 + 352);
  return a1;
}

void sub_2713C9E64(_Unwind_Exception *a1)
{
  sub_2713AE8DC(v1 + 36);
  sub_2713AE96C(v1 + 32);
  sub_2713AE9F0(v1 + 28);
  sub_2713AE8DC(v1 + 24);
  sub_2713AEA74(v1 + 20);
  sub_2713AEA74(v1 + 15);
  sub_2713AEAF4(v1 + 10);
  sub_2713AEAF4(v1 + 5);
  sub_2713AEAF4(v1);
  _Unwind_Resume(a1);
}

void sub_2713C9EE8(_Unwind_Exception *a1)
{
  sub_2713AEAF4(v1 + 5);
  sub_2713AEAF4(v1);
  _Unwind_Resume(a1);
}

int **sub_2713C9F18(int **a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = *(a2 + 28);
  if (v2 == -1)
  {
    sub_2711308D4();
  }

  v12 = &v15;
  v5 = (off_2881319E8[v2])(&v12, a2 + 24);
  a1[3] = v5;
  v7 = *a2;
  v6 = *(a2 + 8);
  v12 = a1;
  v13 = 0;
  v8 = v6 - v7;
  if (v6 != v7)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v8 >> 2) >= 0x1555555555555556)
    {
      sub_271135560();
    }

    v14 = -1431655765 * (v8 >> 2);
    if (HIDWORD(v5) == 0xFFFFFFFF)
    {
      sub_2711308D4();
    }

    v15 = &v14;
    v9 = (off_2881319F8[HIDWORD(v5)])(&v15, a1 + 3);
    *a1 = v9;
    a1[1] = v9;
    a1[2] = &v9[12 * v10];
    memmove(v9, v7, v8);
    a1[1] = &v9[v8];
  }

  return a1;
}

int **sub_2713CA044(int **a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = *(a2 + 28);
  if (v2 == -1)
  {
    sub_2711308D4();
  }

  v12 = &v15;
  v5 = (off_288131A08[v2])(&v12, a2 + 24);
  a1[3] = v5;
  v7 = *a2;
  v6 = *(a2 + 8);
  v12 = a1;
  v13 = 0;
  v8 = v6 - v7;
  if (v6 != v7)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      sub_271135560();
    }

    v14 = v6 - v7;
    if (HIDWORD(v5) == 0xFFFFFFFF)
    {
      sub_2711308D4();
    }

    v15 = &v14;
    v9 = (off_288131A18[HIDWORD(v5)])(&v15, a1 + 3);
    *a1 = v9;
    a1[1] = v9;
    a1[2] = &v9[v10];
    memmove(v9, v7, v8);
    a1[1] = &v9[v8];
  }

  return a1;
}

int **sub_2713CA14C(int **a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = *(a2 + 28);
  if (v2 == -1)
  {
    sub_2711308D4();
  }

  v12 = &v15;
  v5 = (off_288131A28[v2])(&v12, a2 + 24);
  a1[3] = v5;
  v7 = *a2;
  v6 = *(a2 + 8);
  v12 = a1;
  v13 = 0;
  v8 = v6 - v7;
  if (v6 != v7)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v8 >> 2) >= 0x1555555555555556)
    {
      sub_271135560();
    }

    v14 = -1431655765 * (v8 >> 2);
    if (HIDWORD(v5) == 0xFFFFFFFF)
    {
      sub_2711308D4();
    }

    v15 = &v14;
    v9 = (off_288131A38[HIDWORD(v5)])(&v15, a1 + 3);
    *a1 = v9;
    a1[1] = v9;
    a1[2] = &v9[12 * v10];
    memmove(v9, v7, v8);
    a1[1] = &v9[v8];
  }

  return a1;
}

int **sub_2713CA278(int **a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = *(a2 + 28);
  if (v2 == -1)
  {
    sub_2711308D4();
  }

  v12 = &v15;
  v5 = (off_288131A48[v2])(&v12, a2 + 24);
  a1[3] = v5;
  v7 = *a2;
  v6 = *(a2 + 8);
  v12 = a1;
  v13 = 0;
  v8 = v6 - v7;
  if (v6 != v7)
  {
    if ((v8 >> 3) >> 61)
    {
      sub_271135560();
    }

    v14 = v8 >> 3;
    if (HIDWORD(v5) == 0xFFFFFFFF)
    {
      sub_2711308D4();
    }

    v15 = &v14;
    v9 = (off_288131A58[HIDWORD(v5)])(&v15, a1 + 3);
    *a1 = v9;
    a1[1] = v9;
    a1[2] = &v9[8 * v10];
    memmove(v9, v7, v8);
    a1[1] = &v9[v8];
  }

  return a1;
}

int **sub_2713CA38C(int **a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = *(a2 + 28);
  if (v2 == -1)
  {
    sub_2711308D4();
  }

  v12 = &v15;
  v5 = (off_288131A68[v2])(&v12, a2 + 24);
  a1[3] = v5;
  v7 = *a2;
  v6 = *(a2 + 8);
  v12 = a1;
  v13 = 0;
  v8 = v6 - v7;
  if (v6 != v7)
  {
    if ((v8 >> 3) >> 61)
    {
      sub_271135560();
    }

    v14 = v8 >> 3;
    if (HIDWORD(v5) == 0xFFFFFFFF)
    {
      sub_2711308D4();
    }

    v15 = &v14;
    v9 = (off_288131A78[HIDWORD(v5)])(&v15, a1 + 3);
    *a1 = v9;
    a1[1] = v9;
    a1[2] = &v9[8 * v10];
    memmove(v9, v7, v8);
    a1[1] = &v9[v8];
  }

  return a1;
}

vm_address_t sub_2713CA4F4(unsigned int **a1)
{
  v1 = (((12 * **a1 + 4095) & 0x1FFFFFF000) * 0x1555555555555556uLL) >> 64;
  address = 0;
  if (vm_allocate(*MEMORY[0x277D85F48], &address, 12 * v1, 1))
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v4, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  return address;
}

uint64_t **sub_2713CA598(uint64_t **result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v1[1] = v2;
      v3 = -1431655765 * ((v1[2] - v2) >> 2);
      v6 = v2;
      v7 = v3;
      v4 = *(v1 + 7);
      if (v4 == -1)
      {
        sub_2711308D4();
      }

      v5 = result;
      v8 = &v6;
      (off_288131900[v4])(&v8, v1 + 3);
      return v5;
    }
  }

  return result;
}

uint64_t **sub_2713CA644(uint64_t **result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v1[1] = v2;
      v3 = *(v1 + 4) - v2;
      v6 = v2;
      v7 = v3;
      v4 = *(v1 + 7);
      if (v4 == -1)
      {
        sub_2711308D4();
      }

      v5 = result;
      v8 = &v6;
      (off_2881318F0[v4])(&v8, v1 + 3);
      return v5;
    }
  }

  return result;
}

vm_address_t sub_2713CA724(unsigned int **a1)
{
  v1 = (((12 * **a1 + 4095) & 0x1FFFFFF000) * 0x1555555555555556uLL) >> 64;
  address = 0;
  if (vm_allocate(*MEMORY[0x277D85F48], &address, 12 * v1, 1))
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v4, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  return address;
}

uint64_t **sub_2713CA7C8(uint64_t **result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v1[1] = v2;
      v3 = -1431655765 * ((v1[2] - v2) >> 2);
      v6 = v2;
      v7 = v3;
      v4 = *(v1 + 7);
      if (v4 == -1)
      {
        sub_2711308D4();
      }

      v5 = result;
      v8 = &v6;
      (off_2881318C0[v4])(&v8, v1 + 3);
      return v5;
    }
  }

  return result;
}

vm_address_t sub_2713CA8B4(unsigned int **a1)
{
  v1 = (**a1 + 511) & 0x1FFFFFE00;
  address = 0;
  if (vm_allocate(*MEMORY[0x277D85F48], &address, 8 * v1, 1))
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v4, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  return address;
}

uint64_t **sub_2713CA93C(uint64_t **result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v1[1] = v2;
      v3 = (v1[2] - v2) >> 3;
      v6 = v2;
      v7 = v3;
      v4 = *(v1 + 7);
      if (v4 == -1)
      {
        sub_2711308D4();
      }

      v5 = result;
      v8 = &v6;
      (off_2881318E0[v4])(&v8, v1 + 3);
      return v5;
    }
  }

  return result;
}

vm_address_t sub_2713CAA1C(unsigned int **a1)
{
  v1 = (**a1 + 511) & 0x1FFFFFE00;
  address = 0;
  if (vm_allocate(*MEMORY[0x277D85F48], &address, 8 * v1, 1))
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v4, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  return address;
}

uint64_t **sub_2713CAAA4(uint64_t **result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v1[1] = v2;
      v3 = (v1[2] - v2) >> 3;
      v6 = v2;
      v7 = v3;
      v4 = *(v1 + 7);
      if (v4 == -1)
      {
        sub_2711308D4();
      }

      v5 = result;
      v8 = &v6;
      (off_2881318D0[v4])(&v8, v1 + 3);
      return v5;
    }
  }

  return result;
}

int **sub_2713CAB34(int **a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = *(a2 + 28);
  if (v2 == -1)
  {
    sub_2711308D4();
  }

  v12 = &v15;
  v5 = (off_288131A88[v2])(&v12, a2 + 24);
  a1[3] = v5;
  v7 = *a2;
  v6 = *(a2 + 8);
  v12 = a1;
  v13 = 0;
  v8 = v6 - v7;
  if (v6 != v7)
  {
    if ((v8 >> 2) >> 62)
    {
      sub_271135560();
    }

    v14 = v8 >> 2;
    if (HIDWORD(v5) == 0xFFFFFFFF)
    {
      sub_2711308D4();
    }

    v15 = &v14;
    v9 = (off_288131A98[HIDWORD(v5)])(&v15, a1 + 3);
    *a1 = v9;
    a1[1] = v9;
    a1[2] = &v9[4 * v10];
    memmove(v9, v7, v8);
    a1[1] = &v9[v8];
  }

  return a1;
}

uint64_t **sub_2713CAC58(uint64_t **result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v1[1] = v2;
      v3 = (v1[2] - v2) >> 2;
      v6 = v2;
      v7 = v3;
      v4 = *(v1 + 7);
      if (v4 == -1)
      {
        sub_2711308D4();
      }

      v5 = result;
      v8 = &v6;
      (off_2881318B0[v4])(&v8, v1 + 3);
      return v5;
    }
  }

  return result;
}

void sub_2713CADB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713CADD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713CADE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713CB004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713CB048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 24);
  if (*(v5 + 40) == 1)
  {
    v14[0] = (v5 + 16);
    sub_2718460EC(v14, 4u);
  }

  else
  {
    sub_27184636C(v14, (v5 + 8));
  }

  sub_271840ADC(*(a2 + 24));
  sub_2713C9DA4(v14, a3);
  sub_2713CB17C(a2, v14, 4u);
  sub_2713AE52C(v14);
  v6 = *(a2 + 24);
  v7 = *(v6[11] - 8);
  sub_2718404E0(v6 + 6, v6[2] - v7 - 9);
  v8 = v6[6];
  if (v8)
  {
    memmove((v6[3] + v7), v6[7], v8);
  }

  v6[6] = 0;
  v9 = v6[10];
  v10 = v6[11] - 8;
  v6[11] = v10;
  if (v9 == v10)
  {
    v11 = *v6;
    v13 = v6[2];
    v12 = v6[3];
    std::ostream::write();
    if (*(v6 + 40) == 1)
    {
      free(v6[3]);
      *(v6 + 40) = 0;
    }
  }
}

void sub_2713CB17C(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2);
  v7 = *(a1 + 24);
  if (*(v7 + 40) == 1)
  {
    i = (v7 + 16);
    sub_271846AEC(&i, v6);
    v8 = *a2;
    v9 = a2[1];
    if (v9 == *a2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_271846E00((v7 + 8));
    v8 = *a2;
    v9 = a2[1];
    if (v9 == *a2)
    {
      goto LABEL_9;
    }
  }

  v10 = v8 + 2;
  do
  {
    while (1)
    {
      v12 = *(a1 + 24);
      if (*(v12 + 40) != 1)
      {
        break;
      }

      i = (v12 + 16);
      sub_271846EFC(&v187, &i, v10 - 2);
      sub_271846EFC(&v187, &i, v10 - 1);
      sub_271846EFC(&v187, &i, v10);
      v11 = v10 + 1;
      v10 += 3;
      if (v11 == v9)
      {
        goto LABEL_9;
      }
    }

    v13 = *(v10 - 2);
    LOBYTE(i) = -54;
    *(&i + 1) = bswap32(v13);
    v14 = *(v12 + 8);
    std::ostream::write();
    v15 = *(v10 - 1);
    LOBYTE(i) = -54;
    *(&i + 1) = bswap32(v15);
    v16 = *(v12 + 8);
    std::ostream::write();
    v17 = *v10;
    LOBYTE(i) = -54;
    *(&i + 1) = bswap32(v17);
    v18 = *(v12 + 8);
    std::ostream::write();
    v19 = v10 + 1;
    v10 += 3;
  }

  while (v19 != v9);
LABEL_9:
  v20 = *(a2 + 8);
  v21 = *(a1 + 24);
  if (*(v21 + 40) == 1)
  {
    i = (v21 + 16);
    sub_2718460EC(&i, v20);
  }

  else
  {
    sub_27184636C(&i, (v21 + 8));
  }

  v22 = 0xAAAAAAAAAAAAAAABLL * ((a2[6] - a2[5]) >> 2);
  v23 = *(a1 + 24);
  if (*(v23 + 40) == 1)
  {
    i = (v23 + 16);
    sub_271846AEC(&i, v22);
    v24 = a2[5];
    v25 = a2[6];
    if (v25 == v24)
    {
      goto LABEL_20;
    }
  }

  else
  {
    sub_271846E00((v23 + 8));
    v24 = a2[5];
    v25 = a2[6];
    if (v25 == v24)
    {
      goto LABEL_20;
    }
  }

  v26 = v24 + 2;
  do
  {
    while (1)
    {
      v28 = *(a1 + 24);
      if (*(v28 + 40) != 1)
      {
        break;
      }

      i = (v28 + 16);
      sub_271846EFC(&v187, &i, v26 - 2);
      sub_271846EFC(&v187, &i, v26 - 1);
      sub_271846EFC(&v187, &i, v26);
      v27 = v26 + 1;
      v26 += 3;
      if (v27 == v25)
      {
        goto LABEL_20;
      }
    }

    v29 = *(v26 - 2);
    LOBYTE(i) = -54;
    *(&i + 1) = bswap32(v29);
    v30 = *(v28 + 8);
    std::ostream::write();
    v31 = *(v26 - 1);
    LOBYTE(i) = -54;
    *(&i + 1) = bswap32(v31);
    v32 = *(v28 + 8);
    std::ostream::write();
    v33 = *v26;
    LOBYTE(i) = -54;
    *(&i + 1) = bswap32(v33);
    v34 = *(v28 + 8);
    std::ostream::write();
    v35 = v26 + 1;
    v26 += 3;
  }

  while (v35 != v25);
LABEL_20:
  v36 = *(a2 + 18);
  v37 = *(a1 + 24);
  if (*(v37 + 40) == 1)
  {
    i = (v37 + 16);
    sub_2718460EC(&i, v36);
  }

  else
  {
    sub_27184636C(&i, (v37 + 8));
  }

  v38 = 0xAAAAAAAAAAAAAAABLL * ((a2[11] - a2[10]) >> 2);
  v39 = *(a1 + 24);
  if (*(v39 + 40) == 1)
  {
    i = (v39 + 16);
    sub_271846AEC(&i, v38);
    v40 = a2[10];
    v41 = a2[11];
    if (v41 == v40)
    {
      goto LABEL_31;
    }
  }

  else
  {
    sub_271846E00((v39 + 8));
    v40 = a2[10];
    v41 = a2[11];
    if (v41 == v40)
    {
      goto LABEL_31;
    }
  }

  v42 = v40 + 2;
  do
  {
    while (1)
    {
      v44 = *(a1 + 24);
      if (*(v44 + 40) != 1)
      {
        break;
      }

      i = (v44 + 16);
      sub_271846EFC(&v187, &i, v42 - 2);
      sub_271846EFC(&v187, &i, v42 - 1);
      sub_271846EFC(&v187, &i, v42);
      v43 = v42 + 1;
      v42 += 3;
      if (v43 == v41)
      {
        goto LABEL_31;
      }
    }

    v45 = *(v42 - 2);
    LOBYTE(i) = -54;
    *(&i + 1) = bswap32(v45);
    v46 = *(v44 + 8);
    std::ostream::write();
    v47 = *(v42 - 1);
    LOBYTE(i) = -54;
    *(&i + 1) = bswap32(v47);
    v48 = *(v44 + 8);
    std::ostream::write();
    v49 = *v42;
    LOBYTE(i) = -54;
    *(&i + 1) = bswap32(v49);
    v50 = *(v44 + 8);
    std::ostream::write();
    v51 = v42 + 1;
    v42 += 3;
  }

  while (v51 != v41);
LABEL_31:
  v52 = *(a2 + 28);
  v53 = *(a1 + 24);
  if (*(v53 + 40) == 1)
  {
    i = (v53 + 16);
    sub_2718460EC(&i, v52);
    v54 = a2[16] - a2[15];
    v55 = *(a1 + 24);
    if (*(v55 + 40) != 1)
    {
      goto LABEL_33;
    }
  }

  else
  {
    sub_27184636C(&i, (v53 + 8));
    v54 = a2[16] - a2[15];
    v55 = *(a1 + 24);
    if (*(v55 + 40) != 1)
    {
LABEL_33:
      sub_271846E00((v55 + 8));
      v56 = a2[15];
      v57 = a2[16];
      v58 = *(a1 + 24);
      if (*(v58 + 40) != 1)
      {
        goto LABEL_34;
      }

LABEL_42:
      for (i = (v58 + 16); v56 != v57; ++v56)
      {
        sub_2718454CC(&i, v56);
      }

      goto LABEL_44;
    }
  }

  i = (v55 + 16);
  sub_271846AEC(&i, v54);
  v56 = a2[15];
  v57 = a2[16];
  v58 = *(a1 + 24);
  if (*(v58 + 40) == 1)
  {
    goto LABEL_42;
  }

LABEL_34:
  while (v56 != v57)
  {
    while (1)
    {
      v60 = *v56;
      if ((v60 & 0x80000000) == 0)
      {
        break;
      }

      LOBYTE(i) = -52;
      BYTE1(i) = v60;
      v59 = *(v58 + 8);
      std::ostream::write();
      if (++v56 == v57)
      {
        goto LABEL_44;
      }
    }

    LOBYTE(i) = *v56;
    v61 = *(v58 + 8);
    std::ostream::write();
    ++v56;
  }

LABEL_44:
  v62 = *(a2 + 38);
  v63 = *(a1 + 24);
  if (*(v63 + 40) == 1)
  {
    i = (v63 + 16);
    sub_2718460EC(&i, v62);
    v64 = a2[21] - a2[20];
    v65 = *(a1 + 24);
    if (*(v65 + 40) != 1)
    {
      goto LABEL_46;
    }
  }

  else
  {
    sub_27184636C(&i, (v63 + 8));
    v64 = a2[21] - a2[20];
    v65 = *(a1 + 24);
    if (*(v65 + 40) != 1)
    {
LABEL_46:
      sub_271846E00((v65 + 8));
      v66 = a2[20];
      v67 = a2[21];
      v68 = *(a1 + 24);
      if (*(v68 + 40) != 1)
      {
        goto LABEL_47;
      }

LABEL_55:
      for (i = (v68 + 16); v66 != v67; ++v66)
      {
        sub_2718454CC(&i, v66);
      }

      goto LABEL_57;
    }
  }

  i = (v65 + 16);
  sub_271846AEC(&i, v64);
  v66 = a2[20];
  v67 = a2[21];
  v68 = *(a1 + 24);
  if (*(v68 + 40) == 1)
  {
    goto LABEL_55;
  }

LABEL_47:
  while (v66 != v67)
  {
    while (1)
    {
      v70 = *v66;
      if ((v70 & 0x80000000) == 0)
      {
        break;
      }

      LOBYTE(i) = -52;
      BYTE1(i) = v70;
      v69 = *(v68 + 8);
      std::ostream::write();
      if (++v66 == v67)
      {
        goto LABEL_57;
      }
    }

    LOBYTE(i) = *v66;
    v71 = *(v68 + 8);
    std::ostream::write();
    ++v66;
  }

LABEL_57:
  v72 = 0xAAAAAAAAAAAAAAABLL * ((a2[25] - a2[24]) >> 2);
  v73 = *(a1 + 24);
  if (*(v73 + 40) != 1)
  {
    sub_271846E00((v73 + 8));
    v74 = a2[24];
    v75 = a2[25];
    if (v75 == v74)
    {
      goto LABEL_90;
    }

    while (1)
    {
      while (1)
      {
LABEL_63:
        while (1)
        {
          v76 = *(a1 + 24);
          if (*(v76 + 40) != 1)
          {
            break;
          }

          i = (v76 + 16);
          sub_2718460EC(&i, *v74);
          sub_2718460EC(&i, v74[1]);
          sub_2718460EC(&i, v74[2]);
          v74 += 3;
          if (v74 == v75)
          {
            goto LABEL_90;
          }
        }

        v77 = *v74;
        if (*v74 > 0xFF)
        {
          break;
        }

        if (v77 > 0x7F)
        {
          LOBYTE(i) = -52;
          BYTE1(i) = v77;
          v83 = *(v76 + 8);
          std::ostream::write();
          v79 = v74[1];
          if (v79 >= 0x100)
          {
            goto LABEL_78;
          }
        }

        else
        {
          LOBYTE(i) = *v74;
          v78 = *(v76 + 8);
          std::ostream::write();
          v79 = v74[1];
          if (v79 >= 0x100)
          {
            goto LABEL_78;
          }
        }

LABEL_72:
        if (v79 >= 0x80)
        {
          LOBYTE(i) = -52;
          BYTE1(i) = v79;
          v86 = *(v76 + 8);
          std::ostream::write();
          v85 = v74[2];
          if (v85 >= 0x100)
          {
            goto LABEL_86;
          }
        }

        else
        {
          LOBYTE(i) = v79;
          v84 = *(v76 + 8);
          std::ostream::write();
          v85 = v74[2];
          if (v85 >= 0x100)
          {
            goto LABEL_86;
          }
        }

LABEL_80:
        if (v85 >= 0x80)
        {
          LOBYTE(i) = -52;
          BYTE1(i) = v85;
          v91 = *(v76 + 8);
          std::ostream::write();
          v74 += 3;
          if (v74 == v75)
          {
            goto LABEL_90;
          }
        }

        else
        {
          LOBYTE(i) = v85;
          v90 = *(v76 + 8);
          std::ostream::write();
          v74 += 3;
          if (v74 == v75)
          {
            goto LABEL_90;
          }
        }
      }

      v80 = HIWORD(v77);
      v81 = bswap32(v77);
      if (v80)
      {
        LOBYTE(i) = -50;
        *(&i + 1) = v81;
        v87 = *(v76 + 8);
        std::ostream::write();
        v79 = v74[1];
        if (v79 >= 0x100)
        {
          goto LABEL_78;
        }

        goto LABEL_72;
      }

      LOBYTE(i) = -51;
      *(&i + 1) = HIWORD(v81);
      v82 = *(v76 + 8);
      std::ostream::write();
      v79 = v74[1];
      if (v79 < 0x100)
      {
        goto LABEL_72;
      }

LABEL_78:
      v88 = bswap32(v79);
      if (v79 >= 0x10000)
      {
        LOBYTE(i) = -50;
        *(&i + 1) = v88;
        v92 = *(v76 + 8);
        std::ostream::write();
        v85 = v74[2];
        if (v85 < 0x100)
        {
          goto LABEL_80;
        }
      }

      else
      {
        LOBYTE(i) = -51;
        *(&i + 1) = HIWORD(v88);
        v89 = *(v76 + 8);
        std::ostream::write();
        v85 = v74[2];
        if (v85 < 0x100)
        {
          goto LABEL_80;
        }
      }

LABEL_86:
      v93 = bswap32(v85);
      if (v85 >= 0x10000)
      {
        LOBYTE(i) = -50;
        *(&i + 1) = v93;
        v95 = *(v76 + 8);
        std::ostream::write();
        v74 += 3;
        if (v74 == v75)
        {
          goto LABEL_90;
        }
      }

      else
      {
        LOBYTE(i) = -51;
        *(&i + 1) = HIWORD(v93);
        v94 = *(v76 + 8);
        std::ostream::write();
        v74 += 3;
        if (v74 == v75)
        {
          goto LABEL_90;
        }
      }
    }
  }

  i = (v73 + 16);
  sub_271846AEC(&i, v72);
  v74 = a2[24];
  v75 = a2[25];
  if (v75 != v74)
  {
    goto LABEL_63;
  }

LABEL_90:
  v96 = (a2[29] - a2[28]) >> 3;
  v97 = *(a1 + 24);
  if (*(v97 + 40) != 1)
  {
    sub_271846E00((v97 + 8));
    v98 = a2[28];
    v99 = a2[29];
    if (v99 == v98)
    {
      goto LABEL_115;
    }

    while (1)
    {
      while (1)
      {
LABEL_96:
        while (1)
        {
          v100 = *(a1 + 24);
          if (*(v100 + 40) != 1)
          {
            break;
          }

          i = (v100 + 16);
          sub_2718460EC(&i, *v98);
          sub_2718460EC(&i, v98[1]);
          v98 += 2;
          if (v98 == v99)
          {
            goto LABEL_115;
          }
        }

        v101 = *v98;
        if (*v98 <= 0xFF)
        {
          break;
        }

        v104 = HIWORD(v101);
        v105 = bswap32(v101);
        if (!v104)
        {
          LOBYTE(i) = -51;
          *(&i + 1) = HIWORD(v105);
          v106 = *(v100 + 8);
          std::ostream::write();
          v103 = v98[1];
          if (v103 >= 0x100)
          {
            goto LABEL_111;
          }

          goto LABEL_105;
        }

        LOBYTE(i) = -50;
        *(&i + 1) = v105;
        v110 = *(v100 + 8);
        std::ostream::write();
        v103 = v98[1];
        if (v103 < 0x100)
        {
          goto LABEL_105;
        }

LABEL_111:
        v111 = bswap32(v103);
        if (v103 >= 0x10000)
        {
          LOBYTE(i) = -50;
          *(&i + 1) = v111;
          v113 = *(v100 + 8);
          std::ostream::write();
          v98 += 2;
          if (v98 == v99)
          {
            goto LABEL_115;
          }
        }

        else
        {
          LOBYTE(i) = -51;
          *(&i + 1) = HIWORD(v111);
          v112 = *(v100 + 8);
          std::ostream::write();
          v98 += 2;
          if (v98 == v99)
          {
            goto LABEL_115;
          }
        }
      }

      if (v101 > 0x7F)
      {
        LOBYTE(i) = -52;
        BYTE1(i) = v101;
        v107 = *(v100 + 8);
        std::ostream::write();
        v103 = v98[1];
        if (v103 < 0x100)
        {
          goto LABEL_105;
        }

        goto LABEL_111;
      }

      LOBYTE(i) = *v98;
      v102 = *(v100 + 8);
      std::ostream::write();
      v103 = v98[1];
      if (v103 >= 0x100)
      {
        goto LABEL_111;
      }

LABEL_105:
      if (v103 >= 0x80)
      {
        LOBYTE(i) = -52;
        BYTE1(i) = v103;
        v109 = *(v100 + 8);
        std::ostream::write();
        v98 += 2;
        if (v98 == v99)
        {
          goto LABEL_115;
        }
      }

      else
      {
        LOBYTE(i) = v103;
        v108 = *(v100 + 8);
        std::ostream::write();
        v98 += 2;
        if (v98 == v99)
        {
          goto LABEL_115;
        }
      }
    }
  }

  i = (v97 + 16);
  sub_271846AEC(&i, v96);
  v98 = a2[28];
  v99 = a2[29];
  if (v99 != v98)
  {
    goto LABEL_96;
  }

LABEL_115:
  v114 = (a2[33] - a2[32]) >> 3;
  v115 = *(a1 + 24);
  if (*(v115 + 40) == 1)
  {
    i = (v115 + 16);
    sub_271846AEC(&i, v114);
    v116 = a2[32];
    v117 = a2[33];
    if (v117 == v116)
    {
      goto LABEL_123;
    }
  }

  else
  {
    sub_271846E00((v115 + 8));
    v116 = a2[32];
    v117 = a2[33];
    if (v117 == v116)
    {
      goto LABEL_123;
    }
  }

  v118 = v116 + 1;
  do
  {
    while (1)
    {
      v120 = *(a1 + 24);
      if (*(v120 + 40) != 1)
      {
        break;
      }

      i = (v120 + 16);
      sub_271846EFC(&v187, &i, v118 - 1);
      sub_271846EFC(&v187, &i, v118);
      v119 = v118 + 1;
      v118 += 2;
      if (v119 == v117)
      {
        goto LABEL_123;
      }
    }

    v121 = *(v118 - 1);
    LOBYTE(i) = -54;
    *(&i + 1) = bswap32(v121);
    v122 = *(v120 + 8);
    std::ostream::write();
    v123 = *v118;
    LOBYTE(i) = -54;
    *(&i + 1) = bswap32(v123);
    v124 = *(v120 + 8);
    std::ostream::write();
    v125 = v118 + 1;
    v118 += 2;
  }

  while (v125 != v117);
LABEL_123:
  v126 = 0xAAAAAAAAAAAAAAABLL * ((a2[37] - a2[36]) >> 2);
  v127 = *(a1 + 24);
  if (*(v127 + 40) != 1)
  {
    sub_271846E00((v127 + 8));
    v128 = a2[36];
    v129 = a2[37];
    if (v129 == v128)
    {
      goto LABEL_156;
    }

    while (1)
    {
      while (1)
      {
LABEL_129:
        while (1)
        {
          v130 = *(a1 + 24);
          if (*(v130 + 40) != 1)
          {
            break;
          }

          i = (v130 + 16);
          sub_2718460EC(&i, *v128);
          sub_2718460EC(&i, v128[1]);
          sub_2718460EC(&i, v128[2]);
          v128 += 3;
          if (v128 == v129)
          {
            goto LABEL_156;
          }
        }

        v131 = *v128;
        if (*v128 > 0xFF)
        {
          break;
        }

        if (v131 > 0x7F)
        {
          LOBYTE(i) = -52;
          BYTE1(i) = v131;
          v137 = *(v130 + 8);
          std::ostream::write();
          v133 = v128[1];
          if (v133 >= 0x100)
          {
            goto LABEL_144;
          }
        }

        else
        {
          LOBYTE(i) = *v128;
          v132 = *(v130 + 8);
          std::ostream::write();
          v133 = v128[1];
          if (v133 >= 0x100)
          {
            goto LABEL_144;
          }
        }

LABEL_138:
        if (v133 >= 0x80)
        {
          LOBYTE(i) = -52;
          BYTE1(i) = v133;
          v140 = *(v130 + 8);
          std::ostream::write();
          v139 = v128[2];
          if (v139 >= 0x100)
          {
            goto LABEL_152;
          }
        }

        else
        {
          LOBYTE(i) = v133;
          v138 = *(v130 + 8);
          std::ostream::write();
          v139 = v128[2];
          if (v139 >= 0x100)
          {
            goto LABEL_152;
          }
        }

LABEL_146:
        if (v139 >= 0x80)
        {
          LOBYTE(i) = -52;
          BYTE1(i) = v139;
          v145 = *(v130 + 8);
          std::ostream::write();
          v128 += 3;
          if (v128 == v129)
          {
            goto LABEL_156;
          }
        }

        else
        {
          LOBYTE(i) = v139;
          v144 = *(v130 + 8);
          std::ostream::write();
          v128 += 3;
          if (v128 == v129)
          {
            goto LABEL_156;
          }
        }
      }

      v134 = HIWORD(v131);
      v135 = bswap32(v131);
      if (v134)
      {
        LOBYTE(i) = -50;
        *(&i + 1) = v135;
        v141 = *(v130 + 8);
        std::ostream::write();
        v133 = v128[1];
        if (v133 >= 0x100)
        {
          goto LABEL_144;
        }

        goto LABEL_138;
      }

      LOBYTE(i) = -51;
      *(&i + 1) = HIWORD(v135);
      v136 = *(v130 + 8);
      std::ostream::write();
      v133 = v128[1];
      if (v133 < 0x100)
      {
        goto LABEL_138;
      }

LABEL_144:
      v142 = bswap32(v133);
      if (v133 >= 0x10000)
      {
        LOBYTE(i) = -50;
        *(&i + 1) = v142;
        v146 = *(v130 + 8);
        std::ostream::write();
        v139 = v128[2];
        if (v139 < 0x100)
        {
          goto LABEL_146;
        }
      }

      else
      {
        LOBYTE(i) = -51;
        *(&i + 1) = HIWORD(v142);
        v143 = *(v130 + 8);
        std::ostream::write();
        v139 = v128[2];
        if (v139 < 0x100)
        {
          goto LABEL_146;
        }
      }

LABEL_152:
      v147 = bswap32(v139);
      if (v139 >= 0x10000)
      {
        LOBYTE(i) = -50;
        *(&i + 1) = v147;
        v149 = *(v130 + 8);
        std::ostream::write();
        v128 += 3;
        if (v128 == v129)
        {
          goto LABEL_156;
        }
      }

      else
      {
        LOBYTE(i) = -51;
        *(&i + 1) = HIWORD(v147);
        v148 = *(v130 + 8);
        std::ostream::write();
        v128 += 3;
        if (v128 == v129)
        {
          goto LABEL_156;
        }
      }
    }
  }

  i = (v127 + 16);
  sub_271846AEC(&i, v126);
  v128 = a2[36];
  v129 = a2[37];
  if (v129 != v128)
  {
    goto LABEL_129;
  }

LABEL_156:
  if (a3 < 2)
  {
    return;
  }

  if (*(a2 + 344) != 1)
  {
    v187 = 0;
    v166 = *(a1 + 24);
    if (*(v166 + 40) == 1)
    {
      i = (v166 + 16);
      sub_2718454CC(&i, &v187);
    }

    else
    {
      LOBYTE(i) = 0;
      v176 = *(v166 + 8);
      std::ostream::write();
    }

    goto LABEL_175;
  }

  v187 = 1;
  v150 = *(a1 + 24);
  if (*(v150 + 40) == 1)
  {
    i = (v150 + 16);
    sub_2718454CC(&i, &v187);
    v151 = *(a1 + 24);
    if (*(v151 + 40) != 1)
    {
      goto LABEL_160;
    }
  }

  else
  {
    LOBYTE(i) = 1;
    v167 = *(v150 + 8);
    std::ostream::write();
    v151 = *(a1 + 24);
    if (*(v151 + 40) != 1)
    {
LABEL_160:
      sub_27184636C(&i, (v151 + 8));
      sub_271840ADC(*(a1 + 24));
      v152 = *(a1 + 24);
      if (*(v152 + 40) != 1)
      {
        goto LABEL_161;
      }

LABEL_167:
      i = (v152 + 16);
      sub_271846EFC(&v187, &i, a2 + 80);
      sub_271846EFC(&v187, &i, a2 + 81);
      sub_271846EFC(&v187, &i, a2 + 82);
      v159 = *(a1 + 24);
      if (*(v159 + 40) != 1)
      {
        goto LABEL_162;
      }

LABEL_168:
      i = (v159 + 16);
      sub_271846EFC(&v187, &i, a2 + 83);
      sub_271846EFC(&v187, &i, a2 + 84);
      sub_271846EFC(&v187, &i, a2 + 85);
      goto LABEL_169;
    }
  }

  i = (v151 + 16);
  sub_2718460EC(&i, 2u);
  sub_271840ADC(*(a1 + 24));
  v152 = *(a1 + 24);
  if (*(v152 + 40) == 1)
  {
    goto LABEL_167;
  }

LABEL_161:
  v153 = *(a2 + 80);
  LOBYTE(i) = -54;
  *(&i + 1) = bswap32(v153);
  v154 = *(v152 + 8);
  std::ostream::write();
  v155 = *(a2 + 81);
  LOBYTE(i) = -54;
  *(&i + 1) = bswap32(v155);
  v156 = *(v152 + 8);
  std::ostream::write();
  v157 = *(a2 + 82);
  LOBYTE(i) = -54;
  *(&i + 1) = bswap32(v157);
  v158 = *(v152 + 8);
  std::ostream::write();
  v159 = *(a1 + 24);
  if (*(v159 + 40) == 1)
  {
    goto LABEL_168;
  }

LABEL_162:
  v160 = *(a2 + 83);
  LOBYTE(i) = -54;
  *(&i + 1) = bswap32(v160);
  v161 = *(v159 + 8);
  std::ostream::write();
  v162 = *(a2 + 84);
  LOBYTE(i) = -54;
  *(&i + 1) = bswap32(v162);
  v163 = *(v159 + 8);
  std::ostream::write();
  v164 = *(a2 + 85);
  LOBYTE(i) = -54;
  *(&i + 1) = bswap32(v164);
  v165 = *(v159 + 8);
  std::ostream::write();
LABEL_169:
  v168 = *(a1 + 24);
  v169 = *(v168[11] - 8);
  sub_2718404E0(v168 + 6, v168[2] - v169 - 9);
  v170 = v168[6];
  if (v170)
  {
    memmove((v168[3] + v169), v168[7], v170);
  }

  v168[6] = 0;
  v171 = v168[10];
  v172 = v168[11] - 8;
  v168[11] = v172;
  if (v171 == v172)
  {
    v173 = *v168;
    v175 = v168[2];
    v174 = v168[3];
    std::ostream::write();
    if (*(v168 + 40) == 1)
    {
      free(v168[3]);
      *(v168 + 40) = 0;
    }
  }

LABEL_175:
  if (a3 < 4)
  {
    return;
  }

  v177 = *(a2 + 87);
  v178 = *(a1 + 24);
  if (*(v178 + 40) == 1)
  {
    i = (v178 + 16);
    sub_2718460EC(&i, v177);
  }

  else
  {
    sub_27184636C(&i, (v178 + 8));
  }

  v179 = (a2[45] - a2[44]) >> 2;
  v180 = *(a1 + 24);
  if (*(v180 + 40) == 1)
  {
    i = (v180 + 16);
    sub_271846AEC(&i, v179);
    v182 = a2[44];
    v181 = a2[45];
    v183 = *(a1 + 24);
    if (*(v183 + 40) != 1)
    {
      goto LABEL_181;
    }
  }

  else
  {
    sub_271846E00((v180 + 8));
    v182 = a2[44];
    v181 = a2[45];
    v183 = *(a1 + 24);
    if (*(v183 + 40) != 1)
    {
LABEL_181:
      while (v182 != v181)
      {
        v184 = *v182++;
        LOBYTE(i) = -54;
        *(&i + 1) = bswap32(v184);
        v185 = *(v183 + 8);
        std::ostream::write();
      }

      return;
    }
  }

  for (i = (v183 + 16); v182 != v181; ++v182)
  {
    sub_271846EFC(&v187, &i, v182);
  }
}

void sub_2713CC488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2715DF0F0(a2 + 48, (a2 + 40));
  v5 = sub_27182815C(a2);
  *(a2 + 40) = v5;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v5 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v6 = *"sion" == 1852795251) : (v6 = 0), v6))
  {
    *(a2 + 96) = 4;
    *(a2 + 100) = 1;
    *(a2 + 88) = 0;
  }

  else
  {
    LOBYTE(v10) = 6;
    v11[0] = 4;
    v7 = sub_27182815C(a2);
    v8 = *v7;
    *v7 = 6;
    LOBYTE(v10) = v8;
    v9 = v7[1];
    v7[1] = v11[0];
    v11[0] = v9;
    sub_2715CA870(v11, v8);
  }

  sub_2713C9DA4(&v10, a3);
  sub_2713CC5FC(a2, &v10);
}

void sub_2713CC5FC(uint64_t a1, uint64_t **a2)
{
  if (**(a1 + 40) <= 1u)
  {
    v4 = *(a1 + 88);
    *(a1 + 72) = "vertices";
    *(a1 + 80) = 8;
    if ((v4 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_2715DF0F0(a1 + 48, (a1 + 40));
  *(a1 + 40) = sub_27182815C(a1);
  v5 = *(a1 + 88);
  if (v5 == 1)
  {
    v5 = 0;
    *(a1 + 88) = 0;
  }

  v6 = *a2;
  v7 = a2[1];
  if (*a2 == v7)
  {
    v12 = *(a1 + 56);
    v11 = *(v12 - 8);
    *(a1 + 40) = v11;
    *(a1 + 56) = v12 - 8;
    if (v5)
    {
LABEL_9:
      *(a1 + 88) = 0;
    }
  }

  else
  {
    do
    {
      v8 = *v6;
      LODWORD(v15) = *(v6 + 2);
      v14 = v8;
      v13[0] = &v14;
      v13[1] = 3;
      sub_27182A338(a1, v13);
      v6 = (v6 + 12);
    }

    while (v6 != v7);
    v9 = *(a1 + 56);
    v10 = *(a1 + 88);
    v11 = *(v9 - 8);
    *(a1 + 40) = v11;
    *(a1 + 56) = v9 - 8;
    if (v10)
    {
      goto LABEL_9;
    }
  }

  if (*v11 <= 1u)
  {
    *(a1 + 72) = "colors_type";
    *(a1 + 80) = 11;
    *(a1 + 88) = 1;
  }

  sub_2713CD128();
}

void sub_2713CD1F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713CD214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713CD228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713CD23C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 2);
  if (*(a1 + 40))
  {
    v7 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_271120E64(v7, &__p, 1);
  }

  MEMORY[0x2743BE850](*(a1 + 24), v6);
  v8 = *(a1 + 40) + 1;
  *(a1 + 40) = v8;
  v9 = *a2;
  v10 = *(a2 + 8);
  if (v10 != *a2)
  {
    while (1)
    {
      if (v8)
      {
        v11 = *(a1 + 24);
        LOBYTE(__p) = *(a1 + 32);
        sub_271120E64(v11, &__p, 1);
      }

      v155 = 9;
      v12 = *(a1 + 24);
      sub_271838D28("{:.{}}", v9, &v155, &__p);
      v13 = (v154 & 0x80u) == 0 ? &__p : __p;
      v14 = (v154 & 0x80u) == 0 ? v154 : v153;
      sub_271120E64(v12, v13, v14);
      if ((v154 & 0x80000000) == 0)
      {
        break;
      }

      operator delete(__p);
      v27 = *(a1 + 40);
      *(a1 + 40) = v27 + 1;
      if (v27 != -1)
      {
        goto LABEL_16;
      }

LABEL_17:
      v155 = 9;
      v17 = *(a1 + 24);
      v18 = v9 + 1;
      sub_271838D28("{:.{}}", v18, &v155, &__p);
      if ((v154 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v154 & 0x80u) == 0)
      {
        v20 = v154;
      }

      else
      {
        v20 = v153;
      }

      sub_271120E64(v17, p_p, v20);
      if (v154 < 0)
      {
        operator delete(__p);
        v28 = *(a1 + 40);
        *(a1 + 40) = v28 + 1;
        if (v28 == -1)
        {
          goto LABEL_26;
        }

LABEL_25:
        v22 = *(a1 + 24);
        LOBYTE(__p) = *(a1 + 32);
        sub_271120E64(v22, &__p, 1);
        goto LABEL_26;
      }

      v21 = *(a1 + 40);
      *(a1 + 40) = v21 + 1;
      if (v21 != -1)
      {
        goto LABEL_25;
      }

LABEL_26:
      v155 = 9;
      v23 = *(a1 + 24);
      v24 = v18 + 1;
      sub_271838D28("{:.{}}", v24, &v155, &__p);
      if ((v154 & 0x80u) == 0)
      {
        v25 = &__p;
      }

      else
      {
        v25 = __p;
      }

      if ((v154 & 0x80u) == 0)
      {
        v26 = v154;
      }

      else
      {
        v26 = v153;
      }

      sub_271120E64(v23, v25, v26);
      if (v154 < 0)
      {
        operator delete(__p);
      }

      v8 = *(a1 + 40) + 1;
      *(a1 + 40) = v8;
      v9 = v24 + 1;
      if (v9 == v10)
      {
        goto LABEL_38;
      }
    }

    v15 = *(a1 + 40);
    *(a1 + 40) = v15 + 1;
    if (v15 == -1)
    {
      goto LABEL_17;
    }

LABEL_16:
    v16 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_271120E64(v16, &__p, 1);
    goto LABEL_17;
  }

LABEL_38:
  v29 = *(a2 + 32);
  if (v8)
  {
    v30 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_271120E64(v30, &__p, 1);
  }

  MEMORY[0x2743BE7F0](*(a1 + 24), v29);
  v31 = *(a1 + 40);
  *(a1 + 40) = v31 + 1;
  v32 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 2);
  if (v31 != -1)
  {
    v33 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_271120E64(v33, &__p, 1);
  }

  MEMORY[0x2743BE850](*(a1 + 24), v32);
  v34 = *(a1 + 40) + 1;
  *(a1 + 40) = v34;
  v35 = *(a2 + 40);
  v36 = *(a2 + 48);
  if (v36 != v35)
  {
    while (1)
    {
      if (v34)
      {
        v37 = *(a1 + 24);
        LOBYTE(__p) = *(a1 + 32);
        sub_271120E64(v37, &__p, 1);
      }

      v155 = 9;
      v38 = *(a1 + 24);
      sub_271838D28("{:.{}}", v35, &v155, &__p);
      v39 = (v154 & 0x80u) == 0 ? &__p : __p;
      v40 = (v154 & 0x80u) == 0 ? v154 : v153;
      sub_271120E64(v38, v39, v40);
      if ((v154 & 0x80000000) == 0)
      {
        break;
      }

      operator delete(__p);
      v53 = *(a1 + 40);
      *(a1 + 40) = v53 + 1;
      if (v53 != -1)
      {
        goto LABEL_55;
      }

LABEL_56:
      v155 = 9;
      v43 = *(a1 + 24);
      v44 = v35 + 1;
      sub_271838D28("{:.{}}", v44, &v155, &__p);
      if ((v154 & 0x80u) == 0)
      {
        v45 = &__p;
      }

      else
      {
        v45 = __p;
      }

      if ((v154 & 0x80u) == 0)
      {
        v46 = v154;
      }

      else
      {
        v46 = v153;
      }

      sub_271120E64(v43, v45, v46);
      if (v154 < 0)
      {
        operator delete(__p);
        v54 = *(a1 + 40);
        *(a1 + 40) = v54 + 1;
        if (v54 == -1)
        {
          goto LABEL_65;
        }

LABEL_64:
        v48 = *(a1 + 24);
        LOBYTE(__p) = *(a1 + 32);
        sub_271120E64(v48, &__p, 1);
        goto LABEL_65;
      }

      v47 = *(a1 + 40);
      *(a1 + 40) = v47 + 1;
      if (v47 != -1)
      {
        goto LABEL_64;
      }

LABEL_65:
      v155 = 9;
      v49 = *(a1 + 24);
      v50 = v44 + 1;
      sub_271838D28("{:.{}}", v50, &v155, &__p);
      if ((v154 & 0x80u) == 0)
      {
        v51 = &__p;
      }

      else
      {
        v51 = __p;
      }

      if ((v154 & 0x80u) == 0)
      {
        v52 = v154;
      }

      else
      {
        v52 = v153;
      }

      sub_271120E64(v49, v51, v52);
      if (v154 < 0)
      {
        operator delete(__p);
      }

      v34 = *(a1 + 40) + 1;
      *(a1 + 40) = v34;
      v35 = v50 + 1;
      if (v35 == v36)
      {
        goto LABEL_77;
      }
    }

    v41 = *(a1 + 40);
    *(a1 + 40) = v41 + 1;
    if (v41 == -1)
    {
      goto LABEL_56;
    }

LABEL_55:
    v42 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_271120E64(v42, &__p, 1);
    goto LABEL_56;
  }

LABEL_77:
  v55 = *(a2 + 72);
  if (v34)
  {
    v56 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_271120E64(v56, &__p, 1);
  }

  MEMORY[0x2743BE7F0](*(a1 + 24), v55);
  v57 = *(a1 + 40);
  *(a1 + 40) = v57 + 1;
  v58 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 88) - *(a2 + 80)) >> 2);
  if (v57 != -1)
  {
    v59 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_271120E64(v59, &__p, 1);
  }

  MEMORY[0x2743BE850](*(a1 + 24), v58);
  v60 = *(a1 + 40) + 1;
  *(a1 + 40) = v60;
  v61 = *(a2 + 80);
  v62 = *(a2 + 88);
  if (v62 != v61)
  {
    while (1)
    {
      if (v60)
      {
        v63 = *(a1 + 24);
        LOBYTE(__p) = *(a1 + 32);
        sub_271120E64(v63, &__p, 1);
      }

      v155 = 9;
      v64 = *(a1 + 24);
      sub_271838D28("{:.{}}", v61, &v155, &__p);
      v65 = (v154 & 0x80u) == 0 ? &__p : __p;
      v66 = (v154 & 0x80u) == 0 ? v154 : v153;
      sub_271120E64(v64, v65, v66);
      if ((v154 & 0x80000000) == 0)
      {
        break;
      }

      operator delete(__p);
      v79 = *(a1 + 40);
      *(a1 + 40) = v79 + 1;
      if (v79 != -1)
      {
        goto LABEL_94;
      }

LABEL_95:
      v155 = 9;
      v69 = *(a1 + 24);
      v70 = v61 + 1;
      sub_271838D28("{:.{}}", v70, &v155, &__p);
      if ((v154 & 0x80u) == 0)
      {
        v71 = &__p;
      }

      else
      {
        v71 = __p;
      }

      if ((v154 & 0x80u) == 0)
      {
        v72 = v154;
      }

      else
      {
        v72 = v153;
      }

      sub_271120E64(v69, v71, v72);
      if (v154 < 0)
      {
        operator delete(__p);
        v80 = *(a1 + 40);
        *(a1 + 40) = v80 + 1;
        if (v80 == -1)
        {
          goto LABEL_104;
        }

LABEL_103:
        v74 = *(a1 + 24);
        LOBYTE(__p) = *(a1 + 32);
        sub_271120E64(v74, &__p, 1);
        goto LABEL_104;
      }

      v73 = *(a1 + 40);
      *(a1 + 40) = v73 + 1;
      if (v73 != -1)
      {
        goto LABEL_103;
      }

LABEL_104:
      v155 = 9;
      v75 = *(a1 + 24);
      v76 = v70 + 1;
      sub_271838D28("{:.{}}", v76, &v155, &__p);
      if ((v154 & 0x80u) == 0)
      {
        v77 = &__p;
      }

      else
      {
        v77 = __p;
      }

      if ((v154 & 0x80u) == 0)
      {
        v78 = v154;
      }

      else
      {
        v78 = v153;
      }

      sub_271120E64(v75, v77, v78);
      if (v154 < 0)
      {
        operator delete(__p);
      }

      v60 = *(a1 + 40) + 1;
      *(a1 + 40) = v60;
      v61 = v76 + 1;
      if (v61 == v62)
      {
        goto LABEL_116;
      }
    }

    v67 = *(a1 + 40);
    *(a1 + 40) = v67 + 1;
    if (v67 == -1)
    {
      goto LABEL_95;
    }

LABEL_94:
    v68 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_271120E64(v68, &__p, 1);
    goto LABEL_95;
  }

LABEL_116:
  v81 = *(a2 + 112);
  if (v60)
  {
    v82 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_271120E64(v82, &__p, 1);
  }

  MEMORY[0x2743BE7F0](*(a1 + 24), v81);
  v83 = *(a1 + 40);
  *(a1 + 40) = v83 + 1;
  v84 = *(a2 + 128) - *(a2 + 120);
  if (v83 != -1)
  {
    v85 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_271120E64(v85, &__p, 1);
  }

  MEMORY[0x2743BE850](*(a1 + 24), v84);
  v86 = *(a1 + 40) + 1;
  *(a1 + 40) = v86;
  v87 = *(a2 + 120);
  v88 = *(a2 + 128);
  if (v88 != v87)
  {
    do
    {
      sub_2718388F8(a1, v87++);
    }

    while (v87 != v88);
    v86 = *(a1 + 40);
  }

  v89 = *(a2 + 152);
  if (v86)
  {
    v90 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_271120E64(v90, &__p, 1);
  }

  MEMORY[0x2743BE7F0](*(a1 + 24), v89);
  v91 = *(a1 + 40);
  *(a1 + 40) = v91 + 1;
  v92 = *(a2 + 168) - *(a2 + 160);
  if (v91 != -1)
  {
    v93 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_271120E64(v93, &__p, 1);
  }

  MEMORY[0x2743BE850](*(a1 + 24), v92);
  v94 = *(a1 + 40) + 1;
  *(a1 + 40) = v94;
  v95 = *(a2 + 160);
  v96 = *(a2 + 168);
  if (v96 != v95)
  {
    do
    {
      sub_2718388F8(a1, v95++);
    }

    while (v95 != v96);
    v94 = *(a1 + 40);
  }

  v97 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 200) - *(a2 + 192)) >> 2);
  if (v94)
  {
    v98 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_271120E64(v98, &__p, 1);
  }

  MEMORY[0x2743BE850](*(a1 + 24), v97);
  v99 = *(a1 + 40) + 1;
  *(a1 + 40) = v99;
  v100 = *(a2 + 192);
  for (i = *(a2 + 200); v100 != i; v100 += 3)
  {
    if (v99)
    {
      v112 = *(a1 + 24);
      LOBYTE(__p) = *(a1 + 32);
      sub_271120E64(v112, &__p, 1);
    }

    MEMORY[0x2743BE7F0](*(a1 + 24), *v100);
    v113 = *(a1 + 40);
    *(a1 + 40) = v113 + 1;
    if (v113 != -1)
    {
      v114 = *(a1 + 24);
      LOBYTE(__p) = *(a1 + 32);
      sub_271120E64(v114, &__p, 1);
    }

    MEMORY[0x2743BE7F0](*(a1 + 24), v100[1]);
    v115 = *(a1 + 40);
    *(a1 + 40) = v115 + 1;
    if (v115 != -1)
    {
      v116 = *(a1 + 24);
      LOBYTE(__p) = *(a1 + 32);
      sub_271120E64(v116, &__p, 1);
    }

    MEMORY[0x2743BE7F0](*(a1 + 24), v100[2]);
    v99 = *(a1 + 40) + 1;
    *(a1 + 40) = v99;
  }

  v102 = (*(a2 + 232) - *(a2 + 224)) >> 3;
  if (v99)
  {
    v103 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_271120E64(v103, &__p, 1);
  }

  MEMORY[0x2743BE850](*(a1 + 24), v102);
  v104 = *(a1 + 40) + 1;
  *(a1 + 40) = v104;
  v105 = *(a2 + 224);
  for (j = *(a2 + 232); v105 != j; v105 += 2)
  {
    if (v104)
    {
      v117 = *(a1 + 24);
      LOBYTE(__p) = *(a1 + 32);
      sub_271120E64(v117, &__p, 1);
    }

    MEMORY[0x2743BE7F0](*(a1 + 24), *v105);
    v118 = *(a1 + 40);
    *(a1 + 40) = v118 + 1;
    if (v118 != -1)
    {
      v119 = *(a1 + 24);
      LOBYTE(__p) = *(a1 + 32);
      sub_271120E64(v119, &__p, 1);
    }

    MEMORY[0x2743BE7F0](*(a1 + 24), v105[1]);
    v104 = *(a1 + 40) + 1;
    *(a1 + 40) = v104;
  }

  v107 = (*(a2 + 264) - *(a2 + 256)) >> 3;
  if (v104)
  {
    v108 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_271120E64(v108, &__p, 1);
  }

  MEMORY[0x2743BE850](*(a1 + 24), v107);
  v109 = *(a1 + 40) + 1;
  *(a1 + 40) = v109;
  v110 = *(a2 + 256);
  v111 = *(a2 + 264);
  if (v111 != v110)
  {
    while (1)
    {
      if (v109)
      {
        v120 = *(a1 + 24);
        LOBYTE(__p) = *(a1 + 32);
        sub_271120E64(v120, &__p, 1);
      }

      v155 = 9;
      v121 = *(a1 + 24);
      sub_271838D28("{:.{}}", v110, &v155, &__p);
      v122 = (v154 & 0x80u) == 0 ? &__p : __p;
      v123 = (v154 & 0x80u) == 0 ? v154 : v153;
      sub_271120E64(v121, v122, v123);
      if (v154 < 0)
      {
        break;
      }

      v124 = *(a1 + 40);
      *(a1 + 40) = v124 + 1;
      if (v124 != -1)
      {
        goto LABEL_163;
      }

LABEL_164:
      v155 = 9;
      v126 = *(a1 + 24);
      v127 = v110 + 1;
      sub_271838D28("{:.{}}", v127, &v155, &__p);
      if ((v154 & 0x80u) == 0)
      {
        v128 = &__p;
      }

      else
      {
        v128 = __p;
      }

      if ((v154 & 0x80u) == 0)
      {
        v129 = v154;
      }

      else
      {
        v129 = v153;
      }

      sub_271120E64(v126, v128, v129);
      if (v154 < 0)
      {
        operator delete(__p);
      }

      v109 = *(a1 + 40) + 1;
      *(a1 + 40) = v109;
      v110 = v127 + 1;
      if (v110 == v111)
      {
        goto LABEL_174;
      }
    }

    operator delete(__p);
    v130 = *(a1 + 40);
    *(a1 + 40) = v130 + 1;
    if (v130 == -1)
    {
      goto LABEL_164;
    }

LABEL_163:
    v125 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_271120E64(v125, &__p, 1);
    goto LABEL_164;
  }

LABEL_174:
  v131 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 296) - *(a2 + 288)) >> 2);
  if (v109)
  {
    v132 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_271120E64(v132, &__p, 1);
  }

  MEMORY[0x2743BE850](*(a1 + 24), v131);
  v133 = *(a1 + 40) + 1;
  *(a1 + 40) = v133;
  v134 = *(a2 + 288);
  for (k = *(a2 + 296); v134 != k; v134 += 3)
  {
    if (v133)
    {
      v140 = *(a1 + 24);
      LOBYTE(__p) = *(a1 + 32);
      sub_271120E64(v140, &__p, 1);
    }

    MEMORY[0x2743BE7F0](*(a1 + 24), *v134);
    v141 = *(a1 + 40);
    *(a1 + 40) = v141 + 1;
    if (v141 != -1)
    {
      v142 = *(a1 + 24);
      LOBYTE(__p) = *(a1 + 32);
      sub_271120E64(v142, &__p, 1);
    }

    MEMORY[0x2743BE7F0](*(a1 + 24), v134[1]);
    v143 = *(a1 + 40);
    *(a1 + 40) = v143 + 1;
    if (v143 != -1)
    {
      v144 = *(a1 + 24);
      LOBYTE(__p) = *(a1 + 32);
      sub_271120E64(v144, &__p, 1);
    }

    MEMORY[0x2743BE7F0](*(a1 + 24), v134[2]);
    v133 = *(a1 + 40) + 1;
    *(a1 + 40) = v133;
  }

  if (a3 >= 2)
  {
    if (*(a2 + 344) == 1)
    {
      LOBYTE(__p) = 1;
      sub_2718388F8(a1, &__p);
      if (*(a1 + 40))
      {
        v136 = *(a1 + 24);
        LOBYTE(__p) = *(a1 + 32);
        sub_271120E64(v136, &__p, 1);
      }

      MEMORY[0x2743BE7F0](*(a1 + 24), 2);
      ++*(a1 + 40);
      sub_271838C54(a1, (a2 + 320));
      sub_271838C54(a1, (a2 + 324));
      sub_271838C54(a1, (a2 + 328));
      sub_271838C54(a1, (a2 + 332));
      sub_271838C54(a1, (a2 + 336));
      sub_271838C54(a1, (a2 + 340));
      v137 = *(a1 + 34);
      if (*(a1 + 40))
      {
        v138 = *(a1 + 24);
        LOBYTE(__p) = *(a1 + 32);
        sub_271120E64(v138, &__p, 1);
      }

      v139 = *(a1 + 24);
      LOBYTE(__p) = v137;
      sub_271120E64(v139, &__p, 1);
      ++*(a1 + 40);
      if (a3 < 4)
      {
        return;
      }
    }

    else
    {
      LOBYTE(__p) = 0;
      sub_2718388F8(a1, &__p);
      if (a3 < 4)
      {
        return;
      }
    }

    v145 = *(a2 + 348);
    if (*(a1 + 40))
    {
      v146 = *(a1 + 24);
      LOBYTE(__p) = *(a1 + 32);
      sub_271120E64(v146, &__p, 1);
    }

    MEMORY[0x2743BE7F0](*(a1 + 24), v145);
    v147 = *(a1 + 40);
    *(a1 + 40) = v147 + 1;
    v148 = (*(a2 + 360) - *(a2 + 352)) >> 2;
    if (v147 != -1)
    {
      v149 = *(a1 + 24);
      LOBYTE(__p) = *(a1 + 32);
      sub_271120E64(v149, &__p, 1);
    }

    MEMORY[0x2743BE850](*(a1 + 24), v148);
    ++*(a1 + 40);
    v151 = *(a2 + 352);
    for (m = *(a2 + 360); v151 != m; ++v151)
    {
      sub_271838C54(a1, v151);
    }
  }
}