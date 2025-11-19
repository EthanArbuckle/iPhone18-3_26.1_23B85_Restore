const void **sub_29B248B54(uint64_t a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v8 = sub_29A12A708(a1, a2);
  v9 = v8;
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v4 = v8;
      if (v8 >= v10)
      {
        v4 = v8 % v10;
      }
    }

    else
    {
      v4 = (v10 - 1) & v8;
    }

    v13 = *(*a1 + 8 * v4);
    if (v13)
    {
      for (i = *v13; i; i = *i)
      {
        v15 = i[1];
        if (v15 == v9)
        {
          if (sub_29A0EC4B8(a1, i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v12 > 1)
          {
            if (v15 >= v10)
            {
              v15 %= v10;
            }
          }

          else
          {
            v15 &= v10 - 1;
          }

          if (v15 != v4)
          {
            break;
          }
        }
      }
    }
  }

  sub_29B248DC0(a1, v9, a4, v27);
  v16 = (*(a1 + 24) + 1);
  v17 = *(a1 + 32);
  if (!v10 || (v17 * v10) < v16)
  {
    v18 = 1;
    if (v10 >= 3)
    {
      v18 = (v10 & (v10 - 1)) != 0;
    }

    v19 = v18 | (2 * v10);
    v20 = vcvtps_u32_f32(v16 / v17);
    if (v19 <= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    sub_29A019AA0(a1, v21);
    v10 = *(a1 + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }

      else
      {
        v4 = v9;
      }
    }

    else
    {
      v4 = (v10 - 1) & v9;
    }
  }

  v22 = *a1;
  v23 = *(*a1 + 8 * v4);
  if (v23)
  {
    i = v27[0];
    *v27[0] = *v23;
    *v23 = i;
  }

  else
  {
    v24 = v27[0];
    *v27[0] = *(a1 + 16);
    *(a1 + 16) = v24;
    *(v22 + 8 * v4) = a1 + 16;
    i = v27[0];
    if (*v27[0])
    {
      v25 = *(*v27[0] + 8);
      if ((v10 & (v10 - 1)) != 0)
      {
        if (v25 >= v10)
        {
          v25 %= v10;
        }
      }

      else
      {
        v25 &= v10 - 1;
      }

      *(*a1 + 8 * v25) = v27[0];
      i = v27[0];
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_29B248DA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29B248E64(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29B248DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 **a3@<X3>, void *a4@<X8>)
{
  result = operator new(0x30uLL);
  v9 = result;
  *a4 = result;
  a4[1] = a1;
  a4[2] = 0;
  *result = 0;
  result[1] = a2;
  v10 = *a3;
  if (*(*a3 + 23) < 0)
  {
    result = sub_29A008D14(result + 16, *v10, *(v10 + 1));
  }

  else
  {
    v11 = *v10;
    result[4] = *(v10 + 2);
    *(result + 1) = v11;
  }

  v9[5] = 0;
  *(a4 + 16) = 1;
  return result;
}

void sub_29B248E64(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29B248EC0(v2 + 16);
    }

    operator delete(v2);
  }
}

void sub_29B248EC0(uint64_t a1)
{
  v4 = *(a1 + 24);
  v2 = (a1 + 24);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_29B248F18(v2, v3);
  }

  if (*(a1 + 23) < 0)
  {
    v5 = *a1;

    operator delete(v5);
  }
}

void sub_29B248F18(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_29A0EB570(a2 + 48);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    operator delete(a2);
  }
}

uint64_t sub_29B248F6C(uint64_t a1, char *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 8 * a3;
    do
    {
      sub_29B248938(a1, a2, a2);
      a2 += 8;
      v5 -= 8;
    }

    while (v5);
  }

  return a1;
}

char *sub_29B248FE4(char *__dst, __int128 *a2, __int128 *a3, pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers *a4, __int128 *a5)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v9;
  }

  if (*(a3 + 23) < 0)
  {
    sub_29A008D14(__dst + 24, *a3, *(a3 + 1));
  }

  else
  {
    v10 = *a3;
    *(__dst + 5) = *(a3 + 2);
    *(__dst + 24) = v10;
  }

  *(__dst + 6) = a4;
  if (*(a5 + 23) < 0)
  {
    sub_29A008D14(__dst + 56, *a5, *(a5 + 1));
    a4 = *(__dst + 6);
  }

  else
  {
    v11 = *a5;
    *(__dst + 9) = *(a5 + 2);
    *(__dst + 56) = v11;
  }

  v12 = sub_29B246C60();
  if (a4 != v12)
  {
    v13 = *(__dst + 6);
    if (v13 != pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::GetVector2Name(v12))
    {
      v14 = *(__dst + 6);
      if (v14 != sub_29B2470A0())
      {
        v15 = *(__dst + 6);
        if (v15 != sub_29B2471EC())
        {
          exception = __cxa_allocate_exception(0x20uLL);
          sub_29A008E78(&v18, "Unit space transform can only be a float or vectors");
          sub_29AAD6B14(exception, &v18);
          *exception = &unk_2A20C8F68;
          __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
        }
      }
    }
  }

  return __dst;
}

void sub_29B249154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      if (*(v15 + 79) < 0)
      {
        operator delete(*(v15 + 56));
      }

      if (*(v15 + 47) < 0)
      {
        operator delete(*(v15 + 24));
      }

      if (*(v15 + 23) < 0)
      {
        operator delete(*v15);
      }

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

BOOL sub_29B2491D8(uint64_t a1)
{
  (*(*a1 + 48))(&v3);
  v1 = v3;
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  return v1 != 0;
}

void sub_29B249238(void *a1@<X0>, uint64_t a2@<X1>, const void **a3@<X2>, __int128 *a4@<X3>, void *a5@<X4>, std::string::size_type *a6@<X8>)
{
  (*(*a1 + 48))(&v60);
  if (!v60)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v24 = std::string::append(&v55, "', '");
    v25 = *&v24->__r_.__value_.__l.__data_;
    v56.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
    *&v56.__r_.__value_.__l.__data_ = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    v28 = a3[3];
    v27 = a3 + 3;
    v26 = v28;
    v29 = *(v27 + 23);
    if (v29 >= 0)
    {
      v30 = v27;
    }

    else
    {
      v30 = v26;
    }

    if (v29 >= 0)
    {
      v31 = *(v27 + 23);
    }

    else
    {
      v31 = v27[1];
    }

    v32 = std::string::append(&v56, v30, v31);
    v33 = *&v32->__r_.__value_.__l.__data_;
    v57.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
    *&v57.__r_.__value_.__l.__data_ = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    v34 = std::string::append(&v57, "').");
    v35 = *&v34->__r_.__value_.__l.__data_;
    v59 = v34->__r_.__value_.__r.__words[2];
    lpsrc = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(exception, &lpsrc);
    *exception = &unk_2A20C8F68;
    __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
  }

  sub_29B1DDDC4(a1[3], a3 + 7, &v53);
  v12 = a1[1];
  if (!v12)
  {
    goto LABEL_34;
  }

  v51 = v53;
  v52 = v54;
  if (v54)
  {
    atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B1F2E54(v12, &v51, &lpsrc);
  v13 = lpsrc;
  if (*(&lpsrc + 1))
  {
    sub_29A014BEC(*(&lpsrc + 1));
  }

  if (v52)
  {
    sub_29A014BEC(v52);
  }

  if (!v13)
  {
LABEL_34:
    v22 = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    sub_29AAD6B14(v22, &lpsrc);
    *v22 = &unk_2A20C7DA0;
    __cxa_throw(v22, &unk_2A2070DC8, sub_29B1F2E50);
  }

  v14 = a1[1];
  v49 = v53;
  v50 = v54;
  if (v54)
  {
    atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B1F2E54(v14, &v49, &lpsrc);
  if (lpsrc)
  {
    v15 = __dynamic_cast(lpsrc, &unk_2A20C7D68, &unk_2A20C7D78, 0);
    if (v15)
    {
      v16 = *(&lpsrc + 1);
      if (*(&lpsrc + 1))
      {
        atomic_fetch_add_explicit((*(&lpsrc + 1) + 8), 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

  if (*(&lpsrc + 1))
  {
    sub_29A014BEC(*(&lpsrc + 1));
  }

  if (v50)
  {
    sub_29A014BEC(v50);
  }

  sub_29B23CB10(a2, a4, v60, a5, a6);
  v17 = *a6;
  sub_29A008E78(&lpsrc, "in2");
  v18 = sub_29B23EB84(v17, &lpsrc);
  if (SHIBYTE(v59) < 0)
  {
    operator delete(lpsrc);
  }

  if (!v18)
  {
    v36 = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v37 = std::string::append(&v55, "', '");
    v38 = *&v37->__r_.__value_.__l.__data_;
    v56.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
    *&v56.__r_.__value_.__l.__data_ = v38;
    v37->__r_.__value_.__l.__size_ = 0;
    v37->__r_.__value_.__r.__words[2] = 0;
    v37->__r_.__value_.__r.__words[0] = 0;
    v41 = a3[3];
    v40 = a3 + 3;
    v39 = v41;
    v42 = *(v40 + 23);
    if (v42 >= 0)
    {
      v43 = v40;
    }

    else
    {
      v43 = v39;
    }

    if (v42 >= 0)
    {
      v44 = *(v40 + 23);
    }

    else
    {
      v44 = v40[1];
    }

    v45 = std::string::append(&v56, v43, v44);
    v46 = *&v45->__r_.__value_.__l.__data_;
    v57.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
    *&v57.__r_.__value_.__l.__data_ = v46;
    v45->__r_.__value_.__l.__size_ = 0;
    v45->__r_.__value_.__r.__words[2] = 0;
    v45->__r_.__value_.__r.__words[0] = 0;
    v47 = std::string::append(&v57, "').");
    v48 = *&v47->__r_.__value_.__l.__data_;
    v59 = v47->__r_.__value_.__r.__words[2];
    lpsrc = v48;
    v47->__r_.__value_.__l.__size_ = 0;
    v47->__r_.__value_.__r.__words[2] = 0;
    v47->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(v36, &lpsrc);
    *v36 = &unk_2A20C8F68;
    __cxa_throw(v36, &unk_2A20C8EF8, sub_29B20BED4);
  }

  v19 = sub_29B1F2CC8(v15, a3, a3 + 3);
  v20 = operator new(0x28uLL);
  v20->__shared_owners_ = 0;
  v20->__vftable = &unk_2A20C8128;
  v20->__shared_weak_owners_ = 0;
  v20[1].__vftable = &unk_2A20C8178;
  *&v20[1].__shared_owners_ = v19;
  atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  v21 = v18[17];
  v18[16] = &v20[1];
  v18[17] = v20;
  if (v21)
  {
    sub_29A014BEC(v21);
  }

  sub_29A014BEC(v20);
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  if (v54)
  {
    sub_29A014BEC(v54);
  }

  if (v61)
  {
    sub_29A014BEC(v61);
  }
}

void sub_29B249754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a21 < 0)
  {
    operator delete(a16);
    if ((v44 & 1) == 0)
    {
LABEL_12:
      v47 = *(v41 + 8);
      if (v47)
      {
        sub_29A014BEC(v47);
      }

      if (v42)
      {
        sub_29A014BEC(v42);
      }

      if (a15)
      {
        sub_29A014BEC(a15);
      }

      v48 = *(v45 - 104);
      if (v48)
      {
        sub_29A014BEC(v48);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v44)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v43);
  goto LABEL_12;
}

uint64_t sub_29B249938(uint64_t *a1, uint64_t a2)
{
  sub_29B1D7E50(*a1, &v46);
  v4 = v46;
  if (v46)
  {
    v5 = (v46 + 24);
    v6 = strlen(off_2A14FDF18[0]);
    v7 = *(v46 + 47);
    if (v7 < 0)
    {
      if (v6 != *(v46 + 32))
      {
        goto LABEL_27;
      }

      if (v6 == -1)
      {
        sub_29A0F26CC();
      }

      v5 = *v5;
    }

    else if (v6 != v7)
    {
      goto LABEL_27;
    }

    if (!memcmp(v5, off_2A14FDF18[0], v6))
    {
      v42 = v4;
      v43 = v47;
      if (v47)
      {
        atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_29A008E78(&__p, off_2A14FDEF0[0]);
      v12 = sub_29B1F31FC();
      sub_29B1ECB8C(&v42, &__p, v12, &v44);
      if (v41 < 0)
      {
        operator delete(__p);
      }

      if (v43)
      {
        sub_29A014BEC(v43);
      }

      if (v44 != v45)
      {
        v14 = v44->__vftable;
        shared_owners = v44->__shared_owners_;
        if (shared_owners)
        {
          atomic_fetch_add_explicit(&shared_owners->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v15 = v47;
        v46 = v14;
        v47 = shared_owners;
        if (v15)
        {
          sub_29A014BEC(v15);
        }
      }

      __p = &v44;
      sub_29A0176E4(&__p);
      v4 = v46;
    }

LABEL_27:
    v16 = v47;
    v37.__shared_weak_owners_ = v4;
    v38 = v47;
    if (v47)
    {
      atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v37.__vftable = 0;
    v37.__shared_owners_ = 0;
    v17 = sub_29B249E68(&v37.__shared_weak_owners_, &v37);
    if (v16)
    {
      sub_29A014BEC(v16);
    }

    if (v17)
    {
      goto LABEL_32;
    }

    v18 = v46;
    v19 = sub_29B1F31FC();
    sub_29B1ED628(v18, v19, 0, &__p);
    if (__p)
    {
      sub_29B1C5CA8(__p, a2, &v35);
      v20 = v35;
      if (v35)
      {
        v21 = sub_29B1F31FC();
        if (sub_29AAC05D4(v20, v21))
        {
          sub_29B1D7FB0(v35, &v33);
          sub_29B1EAB28(v33, &v44);
          v22 = v44;
          if (v44 == v45)
          {
            goto LABEL_66;
          }

          v23 = (*(v44->~__shared_weak_count + 8))();
          v24 = strlen(off_2A14FDEF0[0]);
          v25 = *(v23 + 23);
          if (v25 < 0)
          {
            if (v24 != v23[1])
            {
              goto LABEL_66;
            }

            if (v24 == -1)
            {
              sub_29A0F26CC();
            }

            v23 = *v23;
          }

          else if (v24 != v25)
          {
LABEL_66:
            v48 = &v44;
            sub_29A0176E4(&v48);
            if (v34)
            {
              sub_29A014BEC(v34);
            }

            goto LABEL_68;
          }

          if (!memcmp(v23, off_2A14FDEF0[0], v24))
          {
            v26 = v22[1];
            v32[0] = *v22;
            v32[1] = v26;
            if (v26)
            {
              atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v27 = v47;
            v31[0] = v46;
            v31[1] = v47;
            if (v47)
            {
              atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v28 = sub_29B24A93C(v32, a2, v31);
            if (v27)
            {
              sub_29A014BEC(v27);
            }

            if (v26)
            {
              sub_29A014BEC(v26);
            }

            if (v28)
            {
              v48 = &v44;
              sub_29A0176E4(&v48);
              if (v34)
              {
                sub_29A014BEC(v34);
              }

              if (v36)
              {
                sub_29A014BEC(v36);
              }

              if (v40)
              {
                sub_29A014BEC(v40);
              }

LABEL_32:
              LOBYTE(a2) = 1;
              goto LABEL_73;
            }
          }

          goto LABEL_66;
        }
      }
    }

    else
    {
      v35 = 0;
      v36 = 0;
    }

LABEL_68:
    if (v36)
    {
      sub_29A014BEC(v36);
    }

    if (v40)
    {
      sub_29A014BEC(v40);
    }

LABEL_72:
    LOBYTE(a2) = 0;
    goto LABEL_73;
  }

  v8 = *a1;
  v9 = sub_29B1F31FC();
  if (!sub_29B1D18A4(v8, v9))
  {
    goto LABEL_72;
  }

  sub_29B1D8060(*a1, &v44);
  (v44->__vftable[2].~__shared_weak_count)(&__p);
  v10 = __p;
  if (__p)
  {
    v11 = v40;
    v30[0] = __p;
    v30[1] = v40;
    if (v40)
    {
      atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    LOBYTE(a2) = sub_29B249938(v30, a2);
    if (v11)
    {
      sub_29A014BEC(v11);
    }
  }

  if (v40)
  {
    sub_29A014BEC(v40);
  }

  if (v45)
  {
    sub_29A014BEC(v45);
  }

  if (!v10)
  {
    goto LABEL_72;
  }

LABEL_73:
  if (v47)
  {
    sub_29A014BEC(v47);
  }

  return a2 & 1;
}

void sub_29B249D60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, std::__shared_weak_count *a25, int a26, __int16 a27, char a28, char a29)
{
  if (v30)
  {
    sub_29A014BEC(v30);
  }

  if (v29)
  {
    sub_29A014BEC(v29);
  }

  *(v31 - 56) = v31 - 96;
  sub_29A0176E4((v31 - 56));
  if (a17)
  {
    sub_29A014BEC(a17);
  }

  if (a19)
  {
    sub_29A014BEC(a19);
  }

  if (a25)
  {
    sub_29A014BEC(a25);
  }

  v33 = *(v31 - 64);
  if (v33)
  {
    sub_29A014BEC(v33);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29B249E68(uint64_t *a1, std::__shared_weak_count *shared_owners)
{
  v3 = *a1;
  if (!v3)
  {
    goto LABEL_9;
  }

  v5 = (*(*v3 + 64))(v3);
  v6 = strlen(off_2A14FDEF0[0]);
  v7 = *(v5 + 23);
  if (v7 < 0)
  {
    if (v6 != v5[1])
    {
LABEL_9:
      LOBYTE(shared_owners) = 0;
      return shared_owners & 1;
    }

    if (v6 == -1)
    {
      sub_29A0F26CC();
    }

    v5 = *v5;
  }

  else if (v6 != v7)
  {
    goto LABEL_9;
  }

  if (memcmp(v5, off_2A14FDEF0[0], v6))
  {
    goto LABEL_9;
  }

  v9 = *a1;
  v10 = (*a1 + 24);
  v11 = *(*a1 + 47);
  if (v11 < 0)
  {
    if (*(v9 + 32) != 3)
    {
LABEL_20:
      v63 = 0;
      v64 = 0;
      v65 = 0;
      if (shared_owners->__vftable)
      {
        sub_29B24BAF8();
        v15 = qword_2A1787668;
        v16 = qword_2A1787670;
        while (v15 != v16)
        {
          if (*(v15 + 23) < 0)
          {
            sub_29A008D14(&__dst, *v15, *(v15 + 8));
          }

          else
          {
            v17 = *v15;
            shared_weak_owners = *(v15 + 16);
            __dst = v17;
          }

          v72 = *(v15 + 24);
          sub_29B1EA508(*a1, &__dst.__vftable, &v74);
          if (v74)
          {
            v18 = sub_29AE15164(v74);
            v19 = *(v18 + 23);
            v20 = v19;
            if ((v19 & 0x80u) != 0)
            {
              v19 = *(v18 + 1);
            }

            if (v19)
            {
              if (v20 < 0)
              {
                sub_29A008D14(__p, *v18, *(v18 + 1));
              }

              else
              {
                v21 = *v18;
                v61 = *(v18 + 2);
                *__p = v21;
              }

              v62 = v72;
              sub_29B24BCAC(&v63, __p);
              if (SHIBYTE(v61) < 0)
              {
                operator delete(__p[0]);
              }
            }
          }

          if (*(&v74 + 1))
          {
            sub_29A014BEC(*(&v74 + 1));
          }

          if (SHIBYTE(shared_weak_owners) < 0)
          {
            operator delete(__dst.__vftable);
          }

          v15 += 32;
        }

        v22 = v63;
        v23 = v64;
        if (v63 != v64)
        {
          v24 = shared_owners->__vftable;
          shared_owners = shared_owners->__shared_owners_;
          if (shared_owners)
          {
            atomic_fetch_add_explicit(&shared_owners->__shared_owners_, 1uLL, memory_order_relaxed);
            v23 = v64;
          }

          if (v22 == v23)
          {
LABEL_65:
            v29 = 0;
          }

          else
          {
            while (1)
            {
              if (SHIBYTE(v22->__shared_weak_owners_) < 0)
              {
                sub_29A008D14(&__dst, v22->__vftable, v22->__shared_owners_);
              }

              else
              {
                v25 = v22->std::__shared_count;
                shared_weak_owners = v22->__shared_weak_owners_;
                __dst = v25;
              }

              v72 = *&v22[1].__vftable;
              sub_29AAC1E24(v24, &__dst.__vftable, __p);
              if (__p[0])
              {
                (*(*__p[0] + 80))(&v74);
                v26 = v74;
                if (*(&v74 + 1))
                {
                  sub_29A014BEC(*(&v74 + 1));
                }

                if (v26)
                {
                  break;
                }

                sub_29B1C8518(__p[0], &v74);
                if (v74)
                {
                  v27 = *(&v74 + 1);
                  v73 = v74;
                  if (*(&v74 + 1))
                  {
                    atomic_fetch_add_explicit((*(&v74 + 1) + 8), 1uLL, memory_order_relaxed);
                  }

                  v28 = sub_29B24BDCC(&v73, v72) ^ 1;
                  if (v27)
                  {
                    sub_29A014BEC(v27);
                  }
                }

                else
                {
                  v28 = 0;
                }

                if (*(&v74 + 1))
                {
                  sub_29A014BEC(*(&v74 + 1));
                }

                if (v28)
                {
                  break;
                }
              }

              if (__p[1])
              {
                sub_29A014BEC(__p[1]);
              }

              if (SHIBYTE(shared_weak_owners) < 0)
              {
                operator delete(__dst.__vftable);
              }

              v22 = (v22 + 32);
              if (v22 == v23)
              {
                goto LABEL_65;
              }
            }

            if (__p[1])
            {
              sub_29A014BEC(__p[1]);
            }

            if (SHIBYTE(shared_weak_owners) < 0)
            {
              operator delete(__dst.__vftable);
            }

            v29 = 1;
          }

          if (shared_owners)
          {
            sub_29A014BEC(shared_owners);
          }

          if (v29)
          {
            LOBYTE(shared_owners) = 1;
LABEL_165:
            __dst.__vftable = &v63;
            sub_29A10C99C(&__dst);
            return shared_owners & 1;
          }
        }
      }

      sub_29B24BAF8();
      v32 = qword_2A1787668;
      v33 = qword_2A1787670;
      if (qword_2A1787668 == qword_2A1787670)
      {
LABEL_164:
        LOBYTE(shared_owners) = 0;
        goto LABEL_165;
      }

      while (1)
      {
        if (*(v32 + 23) < 0)
        {
          sub_29A008D14(&__dst, *v32, *(v32 + 8));
        }

        else
        {
          v34 = *v32;
          shared_weak_owners = *(v32 + 16);
          __dst = v34;
        }

        v72 = *(v32 + 24);
        sub_29B1EA508(*a1, &__dst.__vftable, &v59);
        if (!v59)
        {
LABEL_151:
          v54 = 1;
          goto LABEL_153;
        }

        v35 = sub_29AE15164(v59);
        v36 = v35;
        v37 = *(v35 + 23);
        if ((v37 & 0x80u) != 0)
        {
          v37 = *(v35 + 1);
        }

        if (!v37)
        {
          goto LABEL_117;
        }

        v39 = *a1;
        v38 = a1[1];
        if (v38)
        {
          atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v40 = *(v39 + 232);
        if (!v40)
        {
          break;
        }

        v41 = std::__shared_weak_count::lock(v40);
        if (!v41)
        {
          break;
        }

        v42 = v41;
        v43 = *(v39 + 224);
        if (!v43)
        {
          goto LABEL_102;
        }

        sub_29B1D7FB0(v43, __p);
        if (__p[0])
        {
          sub_29B1EE8F4(__p[0], &v74);
          if (v74)
          {
            sub_29AAC1E24(v74, v36, &v73);
          }

          else
          {
            sub_29AAC1E24(__p[0], v36, &v73);
          }

          v57 = v73;
          if (*(&v74 + 1))
          {
            sub_29A014BEC(*(&v74 + 1));
          }
        }

        else
        {
          v57 = 0u;
        }

LABEL_103:
        if (__p[1])
        {
          sub_29A014BEC(__p[1]);
        }

        if (v42)
        {
          sub_29A014BEC(v42);
        }

        if (v38)
        {
          sub_29A014BEC(v38);
        }

        if (v57)
        {
          if (*(&v57 + 1))
          {
            atomic_fetch_add_explicit((*(&v57 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v44 = *(&v59 + 1);
          v59 = v57;
          if (v44)
          {
            sub_29A014BEC(v44);
          }

          if (*(&v57 + 1))
          {
LABEL_115:
            sub_29A014BEC(*(&v57 + 1));
          }
        }

        else
        {
          LOBYTE(shared_owners) = 0;
          if (*(&v57 + 1))
          {
            goto LABEL_115;
          }
        }

        if (!v57)
        {
          goto LABEL_152;
        }

LABEL_117:
        (*(*v59 + 80))(&v74);
        v45 = v74;
        if (v74)
        {
          v46 = sub_29B1F31FC();
          sub_29B1ED628(v45, v46, 0, &v73);
          v47 = v73;
          if (v73)
          {
            sub_29A008E78(__p, off_2A14FDC10[0]);
            v48 = sub_29A8877BC(v47 + 20, __p);
            if (v48)
            {
              v47 = (v48 + 5);
            }

            else
            {
              v47 = sub_29B1F31FC();
            }

            v51 = strlen(off_2A14FDC00[0]);
            v52 = *(v47 + 23);
            if (v52 < 0)
            {
              if (v51 != *(v47 + 1))
              {
                goto LABEL_136;
              }

              if (v51 == -1)
              {
                sub_29A0F26CC();
              }

              v47 = *v47;
            }

            else if (v51 != v52)
            {
LABEL_136:
              LOBYTE(v47) = 1;
              goto LABEL_137;
            }

            LOBYTE(v47) = memcmp(v47, off_2A14FDC00[0], v51) != 0;
LABEL_137:
            if (SHIBYTE(v61) < 0)
            {
              operator delete(__p[0]);
            }
          }

          if (*(&v73 + 1))
          {
            sub_29A014BEC(*(&v73 + 1));
          }

          if (v47)
          {
            goto LABEL_142;
          }

          goto LABEL_147;
        }

        sub_29B1C8518(v59, __p);
        if (__p[0])
        {
          v49 = __p[1];
          v58[0] = __p[0];
          v58[1] = __p[1];
          if (__p[1])
          {
            atomic_fetch_add_explicit(__p[1] + 1, 1uLL, memory_order_relaxed);
          }

          v50 = sub_29B24BDCC(v58, v72) ^ 1;
          if (v49)
          {
            sub_29A014BEC(v49);
          }
        }

        else
        {
          v50 = 0;
        }

        if (__p[1])
        {
          sub_29A014BEC(__p[1]);
        }

        if (v50)
        {
LABEL_142:
          v53 = 0;
          LOBYTE(shared_owners) = 1;
          goto LABEL_148;
        }

LABEL_147:
        v53 = 1;
LABEL_148:
        if (*(&v74 + 1))
        {
          sub_29A014BEC(*(&v74 + 1));
        }

        if (v53)
        {
          goto LABEL_151;
        }

LABEL_152:
        v54 = 0;
LABEL_153:
        if (*(&v59 + 1))
        {
          sub_29A014BEC(*(&v59 + 1));
        }

        if (SHIBYTE(shared_weak_owners) < 0)
        {
          operator delete(__dst.__vftable);
        }

        if ((v54 & 1) == 0)
        {
          goto LABEL_165;
        }

        v32 += 32;
        if (v32 == v33)
        {
          goto LABEL_164;
        }
      }

      v42 = 0;
LABEL_102:
      v57 = 0u;
      *__p = 0u;
      goto LABEL_103;
    }

    v10 = *v10;
  }

  else if (v11 != 3)
  {
    goto LABEL_20;
  }

  v12 = *v10;
  v13 = *(v10 + 2);
  if (v12 != 26989 || v13 != 120)
  {
    goto LABEL_20;
  }

  sub_29A008E78(&__dst, "fg");
  sub_29AAC1E24(v9, &__dst.__vftable, __p);
  if (SHIBYTE(shared_weak_owners) < 0)
  {
    operator delete(__dst.__vftable);
  }

  if (!__p[0])
  {
    v63 = 0;
    v64 = 0;
LABEL_167:
    v55 = *a1;
    sub_29A008E78(&__dst, "bg");
    sub_29AAC1E24(v55, &__dst.__vftable, &v74);
    if (SHIBYTE(shared_weak_owners) < 0)
    {
      operator delete(__dst.__vftable);
    }

    if (v74)
    {
      (*(*v74 + 80))(&__dst);
      if (__dst.__vftable)
      {
        v56 = __dst.__shared_owners_;
        v67 = __dst;
        if (__dst.__shared_owners_)
        {
          atomic_fetch_add_explicit((__dst.__shared_owners_ + 8), 1uLL, memory_order_relaxed);
        }

        v66[0] = 0;
        v66[1] = 0;
        LOBYTE(shared_owners) = sub_29B249E68(&v67, v66);
        if (v56)
        {
          sub_29A014BEC(v56);
        }
      }

      else
      {
        LOBYTE(shared_owners) = 0;
      }
    }

    else
    {
      LOBYTE(shared_owners) = 0;
      __dst = 0;
    }

    if (__dst.__shared_owners_)
    {
      sub_29A014BEC(__dst.__shared_owners_);
    }

    if (*(&v74 + 1))
    {
      sub_29A014BEC(*(&v74 + 1));
    }

    goto LABEL_181;
  }

  (*(*__p[0] + 80))(&v63);
  if (!v63)
  {
    goto LABEL_167;
  }

  v30 = v64;
  v69[0] = v63;
  v69[1] = v64;
  if (v64)
  {
    atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v68[0] = 0;
  v68[1] = 0;
  v31 = sub_29B249E68(v69, v68);
  if (v30)
  {
    sub_29A014BEC(v30);
  }

  if ((v31 & 1) == 0)
  {
    goto LABEL_167;
  }

  LOBYTE(shared_owners) = 1;
LABEL_181:
  if (v64)
  {
    sub_29A014BEC(v64);
  }

  if (__p[1])
  {
    sub_29A014BEC(__p[1]);
  }

  return shared_owners & 1;
}

void sub_29B24A708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, std::__shared_weak_count *a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, char a23, std::__shared_weak_count *a24)
{
  if (v24)
  {
    sub_29A014BEC(v24);
  }

  v27 = *(v25 - 152);
  if (v27)
  {
    sub_29A014BEC(v27);
  }

  v28 = *(v25 - 96);
  if (v28)
  {
    sub_29A014BEC(v28);
  }

  if (a24)
  {
    sub_29A014BEC(a24);
  }

  if (a16)
  {
    sub_29A014BEC(a16);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29B24A93C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_29B1DA55C(*a1, &v37);
  if (v42 == v43)
  {
    sub_29B1F1C6C(&v37);
  }

  *(&v44 + 1) = 0;
  v45 = &v37->__vftable;
  v46 = v38;
  if (v38)
  {
    atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v47 = v39;
  v48 = v40;
  if (v40)
  {
    atomic_fetch_add_explicit((v40 + 8), 1uLL, memory_order_relaxed);
  }

  sub_29B1EBF20(v49, &v41);
  memset(v50, 0, sizeof(v50));
  sub_29B1D3464(v50, v42, v43, 0xAAAAAAAAAAAAAAABLL * (v43 - v42));
  v51 = v44;
  sub_29B1EBFEC(&v37);
  while (1)
  {
    v5 = sub_29B1F1C4C();
    v6 = sub_29B1EBF78(&v45, v5);
    if (v6)
    {
      break;
    }

    v8 = v45;
    v7 = v46;
    if (v46)
    {
      atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v8)
    {
      v9 = sub_29B1F31FC();
      if (!sub_29AAD7980(v8, v9))
      {
        goto LABEL_56;
      }

      sub_29B1D7E50(v8, &v35);
      v10 = v36;
      v33.__shared_weak_owners_ = v35;
      v34 = v36;
      if (v36)
      {
        atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = *(a3 + 8);
      v33.__vftable = *a3;
      v33.__shared_owners_ = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = sub_29B249E68(&v33.__shared_weak_owners_, &v33);
      if (v11)
      {
        sub_29A014BEC(v11);
      }

      if (v10)
      {
        sub_29A014BEC(v10);
      }

      if ((v12 & 1) == 0)
      {
        v14 = v35;
        v15 = sub_29B1F31FC();
        sub_29B1ED628(v14, v15, 0, &v31);
        if (!v31)
        {
          goto LABEL_52;
        }

        v16 = (*(v31->__r_.__value_.__r.__words[0] + 64))(v31);
        v17 = sub_29B246738(v16);
        v18 = sub_29B248158();
        if (!sub_29A1B00DC(v17, v18))
        {
          goto LABEL_52;
        }

        sub_29B1C5CA8(v31, a2, &v29);
        v19 = v29;
        if (!v29)
        {
          goto LABEL_50;
        }

        v20 = sub_29B1F31FC();
        if (!sub_29AAC05D4(v19, v20))
        {
          goto LABEL_50;
        }

        sub_29B1D7FB0(v29, &v27);
        sub_29B1EAB28(v27, &v37);
        if (v38 == v37)
        {
          goto LABEL_48;
        }

        shared_owners = v37->__shared_owners_;
        v26[0] = v37->__vftable;
        v26[1] = shared_owners;
        if (shared_owners)
        {
          atomic_fetch_add_explicit(&shared_owners->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v22 = v36;
        v25[0] = v35;
        v25[1] = v36;
        if (v36)
        {
          atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v23 = sub_29B24A93C(v26, a2, v25);
        if (v22)
        {
          sub_29A014BEC(v22);
        }

        if (shared_owners)
        {
          sub_29A014BEC(shared_owners);
        }

        if ((v23 & 1) == 0)
        {
LABEL_48:
          v52 = &v37;
          sub_29A0176E4(&v52);
          if (v28)
          {
            sub_29A014BEC(v28);
          }

LABEL_50:
          if (v30)
          {
            sub_29A014BEC(v30);
          }

LABEL_52:
          if (v32)
          {
            sub_29A014BEC(v32);
          }

          if (v36)
          {
            sub_29A014BEC(v36);
          }

LABEL_56:
          v13 = 0;
          if (!v7)
          {
            goto LABEL_58;
          }

LABEL_57:
          sub_29A014BEC(v7);
          goto LABEL_58;
        }

        v52 = &v37;
        sub_29A0176E4(&v52);
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
      }

      if (v36)
      {
        sub_29A014BEC(v36);
      }

      v13 = 1;
      if (v7)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v13 = 4;
      if (v7)
      {
        goto LABEL_57;
      }
    }

LABEL_58:
    if ((v13 | 4) != 4)
    {
      break;
    }

    sub_29B1F1C6C(&v45);
  }

  sub_29B1EBFEC(&v45);
  return !v6;
}

void sub_29B24ACA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, char a26)
{
  if (v28)
  {
    sub_29A014BEC(v28);
  }

  if (v27)
  {
    sub_29A014BEC(v27);
  }

  *(v29 - 88) = &a26;
  sub_29A0176E4((v29 - 88));
  if (a15)
  {
    sub_29A014BEC(a15);
  }

  if (a17)
  {
    sub_29A014BEC(a17);
  }

  if (a19)
  {
    sub_29A014BEC(a19);
  }

  if (a25)
  {
    sub_29A014BEC(a25);
  }

  if (v26)
  {
    sub_29A014BEC(v26);
  }

  sub_29B1EBFEC(v29 - 184);
  _Unwind_Resume(a1);
}

void sub_29B24ADB4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_29AADADD4(*a1, &v16);
  v3 = v16;
  for (i = v17; v3 != i; v3 += 16)
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v13 = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v13 = 0;
    }

    v12 = v6;
    sub_29A008E78(__p, off_2A14FDEF0[0]);
    v7 = sub_29B1F31FC();
    sub_29B1ECB8C(&v12, __p, v7, &v14);
    v8 = v14;
    v9 = v15;
    v18 = &v14;
    sub_29A0176E4(&v18);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    if (v13)
    {
      sub_29A014BEC(v13);
    }

    if (v8 != v9)
    {
      v14 = v6;
      v15 = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_29A01729C(a2, &v14);
      if (v15)
      {
        sub_29A014BEC(v15);
      }
    }

    if (v5)
    {
      sub_29A014BEC(v5);
    }
  }

  v14 = &v16;
  sub_29A0176E4(&v14);
}

void sub_29B24AF68(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v54[3] = *MEMORY[0x29EDCA608];
  v4 = a1[1];
  v49[0] = *a1;
  v49[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B24ADB4(v49, a2);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  if (*a2 == *(a2 + 8))
  {
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v5 = *a1;
    v6 = sub_29B1F31FC();
    sub_29AAD2C74(v5, v6, &v50);
    v7 = v50;
    v8 = v51;
    if (v50 != v51)
    {
      do
      {
        v10 = *v7;
        v9 = v7[1];
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v11 = sub_29B1F31FC();
        sub_29AAD856C(v10, v11, &v45);
        v13 = *(&v45 + 1);
        for (i = v45; i != v13; i += 2)
        {
          v14 = *i;
          v15 = i[1];
          *&v44 = *i;
          *(&v44 + 1) = v15;
          if (v15)
          {
            atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
          }

          v16 = sub_29B22D06C(v14);
          v17 = sub_29B22D06C(*a1);
          v18 = *(v16 + 23);
          if (v18 >= 0)
          {
            v19 = *(v16 + 23);
          }

          else
          {
            v19 = *(v16 + 1);
          }

          v20 = *(v17 + 23);
          v21 = v20;
          if ((v20 & 0x80u) != 0)
          {
            v20 = *(v17 + 1);
          }

          if (v19 == v20)
          {
            v22 = v18 >= 0 ? v16 : *v16;
            v23 = v21 >= 0 ? v17 : *v17;
            if (!memcmp(v22, v23, v19))
            {
              sub_29A017F80(&v46, &v44);
            }
          }

          if (*(&v44 + 1))
          {
            sub_29A014BEC(*(&v44 + 1));
          }
        }

        *&v44 = &v45;
        sub_29A0176E4(&v44);
        if (v9)
        {
          sub_29A014BEC(v9);
        }

        v7 += 2;
      }

      while (v7 != v8);
    }

    *&v45 = &v50;
    sub_29A0176E4(&v45);
    v24 = *a1;
    v25 = sub_29B1F31FC();
    sub_29AAD856C(v24, v25, &v50);
    v26 = v50;
    v27 = v51;
    if (v50 != v51)
    {
      do
      {
        v28 = *v26;
        v29 = v26[1];
        *&v45 = *v26;
        *(&v45 + 1) = v29;
        if (v29)
        {
          atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
        }

        v30 = sub_29B22D06C(v28);
        v31 = sub_29B22D06C(*a1);
        v32 = *(v30 + 23);
        if (v32 >= 0)
        {
          v33 = *(v30 + 23);
        }

        else
        {
          v33 = *(v30 + 1);
        }

        v34 = *(v31 + 23);
        v35 = v34;
        if ((v34 & 0x80u) != 0)
        {
          v34 = *(v31 + 1);
        }

        if (v33 == v34)
        {
          v36 = v32 >= 0 ? v30 : *v30;
          v37 = v35 >= 0 ? v31 : *v31;
          if (!memcmp(v36, v37, v33))
          {
            sub_29A017F80(&v46, &v45);
          }
        }

        if (*(&v45 + 1))
        {
          sub_29A014BEC(*(&v45 + 1));
        }

        v26 += 2;
      }

      while (v26 != v27);
    }

    *&v45 = &v50;
    sub_29A0176E4(&v45);
    sub_29A008E78(&v50, off_2A14FDED8[0]);
    sub_29A008E78(v52, off_2A14FDEE0[0]);
    sub_29A008E78(v53, off_2A14FDEE8[0]);
    sub_29A008E78(v54, off_2A14FDF08[0]);
    sub_29A9FDE68(&v45, &v50, 4);
    for (j = 0; j != -12; j -= 3)
    {
      if (SHIBYTE(v54[j + 2]) < 0)
      {
        operator delete(v54[j]);
      }
    }

    v39 = v46;
    for (k = v47; v39 != k; v39 += 2)
    {
      v41 = *v39;
      v42 = v39[1];
      if (v42)
      {
        atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v41 + 80))(&v50, v41);
      if (v50)
      {
        v43 = (v50->__vftable[1].__get_deleter)(v50);
        if (!sub_29A00AF58(&v45, v43))
        {
          *&v44 = v41;
          *(&v44 + 1) = v42;
          if (v42)
          {
            atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_29A01729C(a2, &v44);
          if (*(&v44 + 1))
          {
            sub_29A014BEC(*(&v44 + 1));
          }
        }
      }

      if (v51)
      {
        sub_29A014BEC(v51);
      }

      if (v42)
      {
        sub_29A014BEC(v42);
      }
    }

    sub_29A019EE8(&v45, *(&v45 + 1));
    v50 = &v46;
    sub_29A0176E4(&v50);
  }
}

void sub_29B24B3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  v16 = (v14 + 95);
  v17 = -96;
  v18 = v16;
  while (1)
  {
    v19 = *v18;
    v18 -= 24;
    if (v19 < 0)
    {
      operator delete(*(v16 - 23));
    }

    v16 = v18;
    v17 += 24;
    if (!v17)
    {
      a9 = &a14;
      sub_29A0176E4(&a9);
      sub_29A0176E4(&a14);
      _Unwind_Resume(a1);
    }
  }
}

void sub_29B24B500(void *a1, std::string *this)
{
  memset(&__str, 0, sizeof(__str));
  if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    i = 0;
    v6 = MEMORY[0x29EDCA600];
    while (1)
    {
      v7 = std::string::find(this, 36, i);
      v8 = v7 + 1;
      if (v7 == -1 || v8 >= size)
      {
        break;
      }

      std::string::basic_string(&v26, this, i, v7 - i, &v28);
      if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v26;
      }

      else
      {
        v10 = v26.__r_.__value_.__r.__words[0];
      }

      if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v11 = v26.__r_.__value_.__l.__size_;
      }

      std::string::append(&__str, v10, v11);
      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      *(&v26.__r_.__value_.__s + 23) = 1;
      LOWORD(v26.__r_.__value_.__l.__data_) = 36;
      for (i = v8; i < size; ++i)
      {
        v12 = (this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? this : this->__r_.__value_.__r.__words[0];
        v13 = v12->__r_.__value_.__s.__data_[i];
        if (!((v13 & 0x80000000) != 0 ? __maskrune(v13, 0x500uLL) : *(v6 + 4 * v13 + 60) & 0x500))
        {
          break;
        }

        if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = this;
        }

        else
        {
          v15 = this->__r_.__value_.__r.__words[0];
        }

        std::string::push_back(&v26, v15->__r_.__value_.__s.__data_[i]);
      }

      v16 = sub_29A8877BC(a1, &v26.__r_.__value_.__l.__data_);
      v17 = (v16 + 5);
      if (!v16)
      {
        v17 = &v26;
      }

      v18 = v16 + 63;
      if (!v16)
      {
        v18 = &v26.__r_.__value_.__r.__words[2] + 7;
      }

      v19 = *v18;
      p_size = (v16 + 6);
      if (!v16)
      {
        p_size = &v26.__r_.__value_.__l.__size_;
      }

      v21 = *p_size;
      if ((v19 & 0x80u) == 0)
      {
        v22 = v17;
      }

      else
      {
        v22 = v17->__r_.__value_.__r.__words[0];
      }

      if ((v19 & 0x80u) == 0)
      {
        v23 = v19;
      }

      else
      {
        v23 = v21;
      }

      std::string::append(&__str, v22, v23);
      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      if (i >= size)
      {
        goto LABEL_55;
      }
    }

    std::string::basic_string(&v26, this, i, 0xFFFFFFFFFFFFFFFFLL, &v28);
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &v26;
    }

    else
    {
      v24 = v26.__r_.__value_.__r.__words[0];
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v25 = v26.__r_.__value_.__l.__size_;
    }

    std::string::append(&__str, v24, v25);
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }
  }

LABEL_55:
  std::string::operator=(this, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_29B24B738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B24B784(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      if ((*(v2 + 23) & 0x8000000000000000) != 0)
      {
        if (*(v2 + 8))
        {
LABEL_6:
          v5 = std::stoi(v2, 0, 10);
          if ((v5 - 2000) <= 0xFFFFFC18)
          {
            exception = __cxa_allocate_exception(0x20uLL);
            std::operator+<char>();
            sub_29AAD6B14(exception, &v23);
            __cxa_throw(exception, &unk_2A2070D08, sub_29AAD6BD4);
          }

          if ((v5 - 1000) == 10 * ((v5 - 1000) / 0xAu))
          {
            v6 = 9;
          }

          else
          {
            v6 = (v5 - 1000) % 0xAu - 1;
          }

          v7 = v6;
          v8 = ((((26215 * (v5 - 1000 + ~v6)) >> 16) >> 2) + (((26215 * (v5 - 1000 + ~v6)) >> 16) >> 15));
          v10 = *(a2 + 8);
          v9 = *(a2 + 16);
          if (v10 >= v9)
          {
            v12 = (v10 - *a2) >> 3;
            v13 = v12 + 1;
            if ((v12 + 1) >> 61)
            {
              sub_29A00C9A4();
            }

            v14 = v9 - *a2;
            if (v14 >> 2 > v13)
            {
              v13 = v14 >> 2;
            }

            if (v14 >= 0x7FFFFFFFFFFFFFF8)
            {
              v15 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v15 = v13;
            }

            if (v15)
            {
              v16 = sub_29A00C9BC(a2, v15);
            }

            else
            {
              v16 = 0;
            }

            v17 = &v16[8 * v12];
            v18 = &v16[8 * v15];
            *v17 = v7;
            v17[1] = v8;
            v11 = v17 + 2;
            v19 = *(a2 + 8) - *a2;
            v20 = v17 - v19;
            memcpy(v17 - v19, *a2, v19);
            v21 = *a2;
            *a2 = v20;
            *(a2 + 8) = v11;
            *(a2 + 16) = v18;
            if (v21)
            {
              operator delete(v21);
            }
          }

          else
          {
            *v10 = v7;
            v10[1] = v8;
            v11 = v10 + 2;
          }

          *(a2 + 8) = v11;
        }
      }

      else if (*(v2 + 23))
      {
        goto LABEL_6;
      }

      v2 += 24;
    }

    while (v2 != v3);
  }
}

void sub_29B24B988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v17 = *v15;
  if (*v15)
  {
    *(v15 + 8) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(exception_object);
}

float32x2_t sub_29B24B9E0(uint64_t a1, float32x2_t *a2, float32x2_t *a3, float32x2_t result)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  if (*a1 != v4)
  {
    v6 = *v5;
    v7 = (v4 - v5) >> 3;
    if (v7 < 2)
    {
      v10 = *v5;
    }

    else
    {
      v8 = v7 - 1;
      v9 = v5 + 1;
      v10 = v6;
      do
      {
        v11 = *v9++;
        v10 = vbsl_s8(vcgt_f32(v10, v11), v11, v10);
        v6 = vbsl_s8(vcgt_f32(v11, v6), v11, v6);
        --v8;
      }

      while (v8);
    }

    __asm { FMOV            V2.2S, #1.0 }

    *a2 = vdiv_f32(_D2, vsub_f32(vadd_f32(v6, _D2), v10));
    result = vneg_f32(v10);
    *a3 = result;
  }

  return result;
}

void sub_29B24BA50(uint64_t *a1, uint64_t *a2)
{
  v3 = a1[1];
  v4[0] = *a1;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B24AF68(v4, &v5);
  sub_29A03AF64(a2);
  *a2 = v5;
  a2[2] = v6;
  v6 = 0;
  v5 = 0uLL;
  v7 = &v5;
  sub_29A0176E4(&v7);
  if (v3)
  {
    sub_29A014BEC(v3);
  }
}

void sub_29B24BAE0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B24BAF8()
{
  *&v9 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1787680, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787680))
  {
    sub_29A008E78(&v1, "opacity");
    v2 = 1065353216;
    sub_29A008E78(v3, "existence");
    v4 = 1065353216;
    sub_29A008E78(v5, "alpha");
    v6 = 1065353216;
    sub_29A008E78(v7, "transmission");
    v8 = 0;
    qword_2A1787670 = 0;
    unk_2A1787678 = 0;
    qword_2A1787668 = 0;
    sub_29B24BE7C(&qword_2A1787668, &v1, &v9, 4uLL);
    for (i = 0; i != -16; i -= 4)
    {
      if (SHIBYTE(v7[i + 2]) < 0)
      {
        operator delete(v7[i]);
      }
    }

    __cxa_guard_release(&qword_2A1787680);
  }
}

void sub_29B24BC34(_Unwind_Exception *a1)
{
  v3 = (v1 + 119);
  v4 = -128;
  v5 = v3;
  while (1)
  {
    v6 = *v5;
    v5 -= 32;
    if (v6 < 0)
    {
      operator delete(*(v3 - 23));
    }

    v3 = v5;
    v4 += 32;
    if (!v4)
    {
      __cxa_guard_abort(&qword_2A1787680);
      _Unwind_Resume(a1);
    }
  }
}

const void **sub_29B24BCAC(const void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      sub_29A00C9A4();
    }

    v10 = v5 - *result;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v20[4] = result;
    if (v11)
    {
      v12 = sub_29A10CB10(result, v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[32 * v8];
    v14 = &v12[32 * v11];
    v15 = *a2;
    *(v13 + 2) = *(a2 + 2);
    *v13 = v15;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(v13 + 6) = *(a2 + 6);
    v7 = v13 + 32;
    v16 = v3[1] - *v3;
    v17 = &v13[-v16];
    memcpy(&v13[-v16], *v3, v16);
    v18 = *v3;
    *v3 = v17;
    v3[1] = v7;
    v19 = v3[2];
    v3[2] = v14;
    v20[2] = v18;
    v20[3] = v19;
    v20[0] = v18;
    v20[1] = v18;
    result = sub_29A10CC84(v20);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(v4 + 24) = *(a2 + 6);
    v7 = (v4 + 32);
  }

  v3[1] = v7;
  return result;
}

uint64_t sub_29B24BDCC(const void **a1, float a2)
{
  if (sub_29B1F4818(*a1) && vabds_f32(*sub_29B1F487C(*a1), a2) < 0.00001)
  {
    return 1;
  }

  result = sub_29B1F5894(*a1);
  if (result)
  {
    v5 = sub_29B1F58F8(*a1);
    return vabds_f32(*v5, a2) < 0.00001 && vabds_f32(v5[1], a2) < 0.00001 && vabds_f32(v5[2], a2) < 0.00001;
  }

  return result;
}

void *sub_29B24BE7C(void *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A15A71C(result, a4);
    result = sub_29B24BF04(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29B24BEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A10C99C(&a9);
  _Unwind_Resume(a1);
}

void *sub_29B24BF04(uint64_t a1, __int128 *a2, __int128 *a3, void *__dst)
{
  v4 = __dst;
  v12 = __dst;
  v13 = __dst;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_29A008D14(v4, *v6, *(v6 + 1));
        v8 = v13;
      }

      else
      {
        v7 = *v6;
        v4[2] = *(v6 + 2);
        *v4 = v7;
        v8 = v4;
      }

      *(v4 + 6) = *(v6 + 6);
      v6 += 2;
      v4 = v8 + 4;
      v13 = v8 + 4;
    }

    while (v6 != a3);
  }

  v11 = 1;
  sub_29B24BFD0(v10);
  return v4;
}

uint64_t sub_29B24BFD0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A10CC3C(a1);
  }

  return a1;
}

void sub_29B24C008(std::string ***a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v5 = 1;
    do
    {
      v6 = *v3;
      v7 = sub_29B1F31FC();
      sub_29B1ED628(v6, v7, 0, &v9);
      if (v9)
      {
        v8 = (v9 + 48);
        if (!sub_29A8877BC(a2, (v9 + 48)))
        {
          v11 = v8;
          *(sub_29B24C304(a2, v8, &unk_29B76993C, &v11) + 10) = v5++;
        }
      }

      if (v10)
      {
        sub_29A014BEC(v10);
      }

      v3 += 2;
    }

    while (v3 != v4);
  }
}

void sub_29B24C0DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  sub_29A0EB4E8(v10);
  _Unwind_Resume(a1);
}

void sub_29B24C104(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_29A017738(a3);
  v5 = *a2;
  v6 = sub_29B1F31FC();
  sub_29AAC1CE8(v5, v6, &v15);
  v7 = v15;
  for (i = v16; v7 != i; v7 += 2)
  {
    v9 = *v7;
    v10 = v7[1];
    *&v14 = *v7;
    *(&v14 + 1) = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = (*(*v9 + 64))(v9);
    v12 = sub_29B246738(v11);
    v13 = sub_29B248740();
    if (sub_29A1B00DC(v12, v13))
    {
      sub_29A017F80(a3, &v14);
    }

    if (*(&v14 + 1))
    {
      sub_29A014BEC(*(&v14 + 1));
    }
  }

  *&v14 = &v15;
  sub_29A0176E4(&v14);
}

void sub_29B24C1F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, std::__shared_weak_count *a11, char a12)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  a10 = &a12;
  sub_29A0176E4(&a10);
  _Unwind_Resume(a1);
}

void sub_29B24C220(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_29B212780(a4);
  if (*a3 != *(a3 + 8))
  {
    sub_29B24C008(a3, &v10);
    sub_29A465EE4(a1 + 184, &v10);
    sub_29A0EB4E8(&v10);
    for (i = *(a1 + 200); i; i = *i)
    {
      sub_29AAC0094(*a2, i + 2, &v10);
      if (v10)
      {
        sub_29B2121F8(v10, *(i + 10), a4);
      }

      if (v11)
      {
        sub_29A014BEC(v11);
      }
    }
  }

  v9 = (*(a3 + 8) - *a3) >> 4;
  if (*(a4 + 140) < v9)
  {
    *(a4 + 140) = v9;
  }
}

void sub_29B24C2EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_29B24C304(uint64_t a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v8 = sub_29A12A708(a1, a2);
  v9 = v8;
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v4 = v8;
      if (v8 >= v10)
      {
        v4 = v8 % v10;
      }
    }

    else
    {
      v4 = (v10 - 1) & v8;
    }

    v13 = *(*a1 + 8 * v4);
    if (v13)
    {
      for (i = *v13; i; i = *i)
      {
        v15 = i[1];
        if (v15 == v9)
        {
          if (sub_29A0EC4B8(a1, i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v12 > 1)
          {
            if (v15 >= v10)
            {
              v15 %= v10;
            }
          }

          else
          {
            v15 &= v10 - 1;
          }

          if (v15 != v4)
          {
            break;
          }
        }
      }
    }
  }

  sub_29B24C57C(a1, v9, a4, v27);
  v16 = (*(a1 + 24) + 1);
  v17 = *(a1 + 32);
  if (!v10 || (v17 * v10) < v16)
  {
    v18 = 1;
    if (v10 >= 3)
    {
      v18 = (v10 & (v10 - 1)) != 0;
    }

    v19 = v18 | (2 * v10);
    v20 = vcvtps_u32_f32(v16 / v17);
    if (v19 <= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    sub_29A019AA0(a1, v21);
    v10 = *(a1 + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }

      else
      {
        v4 = v9;
      }
    }

    else
    {
      v4 = (v10 - 1) & v9;
    }
  }

  v22 = *a1;
  v23 = *(*a1 + 8 * v4);
  if (v23)
  {
    i = v27[0];
    *v27[0] = *v23;
    *v23 = i;
  }

  else
  {
    v24 = v27[0];
    *v27[0] = *(a1 + 16);
    *(a1 + 16) = v24;
    *(v22 + 8 * v4) = a1 + 16;
    i = v27[0];
    if (*v27[0])
    {
      v25 = *(*v27[0] + 8);
      if ((v10 & (v10 - 1)) != 0)
      {
        if (v25 >= v10)
        {
          v25 %= v10;
        }
      }

      else
      {
        v25 &= v10 - 1;
      }

      *(*a1 + 8 * v25) = v27[0];
      i = v27[0];
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_29B24C558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_29A0EC874(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B24C57C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 **a3@<X3>, void *a4@<X8>)
{
  result = operator new(0x30uLL);
  v9 = result;
  a4[1] = a1;
  *a4 = result;
  a4[2] = 0;
  *result = 0;
  result[1] = a2;
  v10 = *a3;
  if (*(*a3 + 23) < 0)
  {
    result = sub_29A008D14(result + 16, *v10, *(v10 + 1));
  }

  else
  {
    v11 = *v10;
    result[4] = *(v10 + 2);
    *(result + 1) = v11;
  }

  *(v9 + 10) = 0;
  *(a4 + 16) = 1;
  return result;
}

void sub_29B24C610(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A0EC874(v3, v2);
  _Unwind_Resume(a1);
}

void sub_29B24C62C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  v6 = a3[1];
  v7 = *a3;
  v8 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v5 + 24))(v5, a1, &v7);
  if (v8)
  {
    sub_29A014BEC(v8);
  }
}

void sub_29B24C6A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_29B24C6C0(uint64_t a1, const void **a2, __int128 *a3)
{
  v7 = sub_29A12A708(a1, a2);
  v8 = v7;
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    v11 = v10.u32[0];
    if (v10.u32[0] > 1uLL)
    {
      v3 = v7;
      if (v7 >= v9)
      {
        v3 = v7 % v9;
      }
    }

    else
    {
      v3 = (v9 - 1) & v7;
    }

    v12 = *(*a1 + 8 * v3);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = i[1];
        if (v14 == v8)
        {
          if (sub_29A0EC4B8(a1, i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v11 > 1)
          {
            if (v14 >= v9)
            {
              v14 %= v9;
            }
          }

          else
          {
            v14 &= v9 - 1;
          }

          if (v14 != v3)
          {
            break;
          }
        }
      }
    }
  }

  sub_29B24C914(a1, v8, a3, v26);
  v15 = (*(a1 + 24) + 1);
  v16 = *(a1 + 32);
  if (!v9 || (v16 * v9) < v15)
  {
    v17 = 1;
    if (v9 >= 3)
    {
      v17 = (v9 & (v9 - 1)) != 0;
    }

    v18 = v17 | (2 * v9);
    v19 = vcvtps_u32_f32(v15 / v16);
    if (v18 <= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }

    sub_29A019AA0(a1, v20);
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

  v21 = *a1;
  v22 = *(*a1 + 8 * v3);
  if (v22)
  {
    i = v26[0];
    *v26[0] = *v22;
    *v22 = i;
  }

  else
  {
    v23 = v26[0];
    *v26[0] = *(a1 + 16);
    *(a1 + 16) = v23;
    *(v21 + 8 * v3) = a1 + 16;
    i = v26[0];
    if (*v26[0])
    {
      v24 = *(*v26[0] + 8);
      if ((v9 & (v9 - 1)) != 0)
      {
        if (v24 >= v9)
        {
          v24 %= v9;
        }
      }

      else
      {
        v24 &= v9 - 1;
      }

      *(*a1 + 8 * v24) = v26[0];
      i = v26[0];
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_29B24C8FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1E7944(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29B24C914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x38uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  result = sub_29A151A98(v8 + 2, a3);
  *(a4 + 16) = 1;
  return result;
}

const void **sub_29B24C984(uint64_t a1, const void **a2, __int128 *a3)
{
  v7 = sub_29A12A708(a1, a2);
  v8 = v7;
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    v11 = v10.u32[0];
    if (v10.u32[0] > 1uLL)
    {
      v3 = v7;
      if (v7 >= v9)
      {
        v3 = v7 % v9;
      }
    }

    else
    {
      v3 = (v9 - 1) & v7;
    }

    v12 = *(*a1 + 8 * v3);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = i[1];
        if (v14 == v8)
        {
          if (sub_29A0EC4B8(a1, i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v11 > 1)
          {
            if (v14 >= v9)
            {
              v14 %= v9;
            }
          }

          else
          {
            v14 &= v9 - 1;
          }

          if (v14 != v3)
          {
            break;
          }
        }
      }
    }
  }

  sub_29B24CBD8(a1, v8, a3, v26);
  v15 = (*(a1 + 24) + 1);
  v16 = *(a1 + 32);
  if (!v9 || (v16 * v9) < v15)
  {
    v17 = 1;
    if (v9 >= 3)
    {
      v17 = (v9 & (v9 - 1)) != 0;
    }

    v18 = v17 | (2 * v9);
    v19 = vcvtps_u32_f32(v15 / v16);
    if (v18 <= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }

    sub_29A019AA0(a1, v20);
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

  v21 = *a1;
  v22 = *(*a1 + 8 * v3);
  if (v22)
  {
    i = v26[0];
    *v26[0] = *v22;
    *v22 = i;
  }

  else
  {
    v23 = v26[0];
    *v26[0] = *(a1 + 16);
    *(a1 + 16) = v23;
    *(v21 + 8 * v3) = a1 + 16;
    i = v26[0];
    if (*v26[0])
    {
      v24 = *(*v26[0] + 8);
      if ((v9 & (v9 - 1)) != 0)
      {
        if (v24 >= v9)
        {
          v24 %= v9;
        }
      }

      else
      {
        v24 &= v9 - 1;
      }

      *(*a1 + 8 * v24) = v26[0];
      i = v26[0];
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_29B24CBC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1E759C(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29B24CBD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x40uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  result = sub_29AE13E90(v8 + 2, a3);
  *(a4 + 16) = 1;
  return result;
}

void *sub_29B24CC48(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v6 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v5 >> 47) ^ v5);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v3 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
      if (v7 >= v8)
      {
        v3 = v7 % v8;
      }
    }

    else
    {
      v3 = v7 & (v8 - 1);
    }

    v10 = *(*a1 + 8 * v3);
    if (v10)
    {
      result = *v10;
      if (*v10)
      {
        do
        {
          v12 = result[1];
          if (v12 == v7)
          {
            if (result[2] == *a2)
            {
              return result;
            }
          }

          else
          {
            if (v9.u32[0] > 1uLL)
            {
              if (v12 >= v8)
              {
                v12 %= v8;
              }
            }

            else
            {
              v12 &= v8 - 1;
            }

            if (v12 != v3)
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

  sub_29B24CEAC(a1, v7, a3, &v23);
  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (!v8 || (v14 * v8) < v13)
  {
    v15 = 1;
    if (v8 >= 3)
    {
      v15 = (v8 & (v8 - 1)) != 0;
    }

    v16 = v15 | (2 * v8);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    sub_29A019AA0(a1, v18);
    v8 = *(a1 + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v7 >= v8)
      {
        v3 = v7 % v8;
      }

      else
      {
        v3 = v7;
      }
    }

    else
    {
      v3 = (v8 - 1) & v7;
    }
  }

  v19 = *a1;
  v20 = *(*a1 + 8 * v3);
  if (v20)
  {
    result = v23;
    *v23 = *v20;
    *v20 = result;
  }

  else
  {
    v21 = v23;
    *v23 = *(a1 + 16);
    *(a1 + 16) = v21;
    *(v19 + 8 * v3) = a1 + 16;
    result = v23;
    if (*v23)
    {
      v22 = *(*v23 + 8);
      if ((v8 & (v8 - 1)) != 0)
      {
        if (v22 >= v8)
        {
          v22 %= v8;
        }
      }

      else
      {
        v22 &= v8 - 1;
      }

      *(*a1 + 8 * v22) = v23;
      result = v23;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29B24CE88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_29AE14114(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29B24CEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = operator new(0x30uLL);
  *a4 = result;
  a4[1] = a1;
  a4[2] = 0;
  *result = 0;
  *(result + 1) = a2;
  *(result + 2) = *a3;
  if (*(a3 + 31) < 0)
  {
    result = sub_29A008D14(result + 24, *(a3 + 8), *(a3 + 16));
  }

  else
  {
    *(result + 24) = *(a3 + 8);
    *(result + 5) = *(a3 + 24);
  }

  *(a4 + 16) = 1;
  return result;
}

void sub_29B24CF40(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29AE14114(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_29B24CF5C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v6 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v5 >> 47) ^ v5);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v3 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
      if (v7 >= v8)
      {
        v3 = v7 % v8;
      }
    }

    else
    {
      v3 = v7 & (v8 - 1);
    }

    v10 = *(*a1 + 8 * v3);
    if (v10)
    {
      result = *v10;
      if (*v10)
      {
        do
        {
          v12 = result[1];
          if (v12 == v7)
          {
            if (result[2] == *a2)
            {
              return result;
            }
          }

          else
          {
            if (v9.u32[0] > 1uLL)
            {
              if (v12 >= v8)
              {
                v12 %= v8;
              }
            }

            else
            {
              v12 &= v8 - 1;
            }

            if (v12 != v3)
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

  sub_29B24D1C0(a1, v7, a3, &v23);
  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (!v8 || (v14 * v8) < v13)
  {
    v15 = 1;
    if (v8 >= 3)
    {
      v15 = (v8 & (v8 - 1)) != 0;
    }

    v16 = v15 | (2 * v8);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    sub_29A019AA0(a1, v18);
    v8 = *(a1 + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v7 >= v8)
      {
        v3 = v7 % v8;
      }

      else
      {
        v3 = v7;
      }
    }

    else
    {
      v3 = (v8 - 1) & v7;
    }
  }

  v19 = *a1;
  v20 = *(*a1 + 8 * v3);
  if (v20)
  {
    result = v23;
    *v23 = *v20;
    *v20 = result;
  }

  else
  {
    v21 = v23;
    *v23 = *(a1 + 16);
    *(a1 + 16) = v21;
    *(v19 + 8 * v3) = a1 + 16;
    result = v23;
    if (*v23)
    {
      v22 = *(*v23 + 8);
      if ((v8 & (v8 - 1)) != 0)
      {
        if (v22 >= v8)
        {
          v22 %= v8;
        }
      }

      else
      {
        v22 &= v8 - 1;
      }

      *(*a1 + 8 * v22) = v23;
      result = v23;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29B24D19C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_29AE14114(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29B24D1C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = operator new(0x30uLL);
  *a4 = result;
  a4[1] = a1;
  a4[2] = 0;
  *result = 0;
  *(result + 1) = a2;
  *(result + 2) = *a3;
  if (*(a3 + 31) < 0)
  {
    result = sub_29A008D14(result + 24, *(a3 + 8), *(a3 + 16));
  }

  else
  {
    *(result + 24) = *(a3 + 8);
    *(result + 5) = *(a3 + 24);
  }

  *(a4 + 16) = 1;
  return result;
}

void sub_29B24D254(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29AE14114(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_29B24D270(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_2A20CB400;
  *(result + 24) = 0;
  *(result + 32) = a2;
  *(result + 40) = 0;
  *(result + 48) = a3;
  *(result + 56) = 0;
  return result;
}

void *sub_29B24D2A0(void *result)
{
  result[3] = result[4];
  result[5] = result[6];
  return result;
}

uint64_t sub_29B24D2B8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v6 = *(a3 + 88);
  v7 = *(a3 + 96);
  if (v6 != v7)
  {
    while (1)
    {
      v10 = *(*v6 + 24);
      if (v10 != sub_29B24805C())
      {
        break;
      }

      v6 += 8;
      if (v6 == v7)
      {
        return (*(*v5 + 64))(v5, a4);
      }
    }

    std::operator+<char>();
    (*(*v5 + 80))(v5, &__p, a4, 0);
    if (v19 < 0)
    {
      operator delete(__p);
    }

    (*(*v5 + 32))(v5, a4, 1);
    v11 = *(a3 + 88);
    v12 = *(a3 + 96);
    while (v11 != v12)
    {
      v13 = *v11;
      v14 = *(*v11 + 24);
      if (v14 != sub_29B24805C())
      {
        (*(*v5 + 48))(v5, a4);
        v15 = sub_29B1F31FC();
        (*(*v5 + 208))(v5, v13, v15, a2, a4, 0);
        v16 = sub_29B242ED8();
        (*(*v5 + 72))(v5, v16, a4);
        (*(*v5 + 56))(v5, a4, 0);
      }

      ++v11;
    }

    (*(*v5 + 40))(v5, a4, 1, 1);
  }

  return (*(*v5 + 64))(v5, a4);
}

void sub_29B24D514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B24D530(uint64_t a1, uint64_t *a2, const void **a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v79 = *MEMORY[0x29EDCA608];
  v11 = *a2;
  v59 = sub_29B246C60();
  v60 = 4;
  v61 = sub_29B246A68();
  v62 = 4;
  v63 = sub_29B24696C();
  v64 = 4;
  v65 = sub_29B247ADC();
  v66 = 16;
  v67 = sub_29B247C28();
  v68 = 16;
  Vector2Name = pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::GetVector2Name(v67);
  v70 = 8;
  v71 = sub_29B2470A0();
  v72 = 16;
  v73 = sub_29B2471EC();
  v74 = 16;
  v75 = sub_29B247D68();
  v76 = 64;
  v77 = sub_29B247E64();
  v78 = 64;
  sub_29B24DD6C(v58, &v59, 10);
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v12 = a3[11];
  if (a3[12] == v12)
  {
    v18 = 0;
    v17 = 0;
    v13 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    do
    {
      __p[0] = *(v12[v14] + 24);
      v15 = sub_29AC246C0(v58, __p);
      if (v15)
      {
        __p[0] = v15[3];
        v16 = __p[0];
        __p[1] = v14;
        sub_29A03A998(&v59, __p);
        v13 += v16;
      }

      else
      {
        __p[0] = 16;
        __p[1] = v14;
        sub_29A03A998(&v59, __p);
        v13 += 16;
      }

      ++v14;
      v12 = a3[11];
    }

    while (v14 < (a3[12] - v12) >> 3);
    v17 = v59;
    v18 = v60;
  }

  v19 = 126 - 2 * __clz((v18 - v17) >> 4);
  if (v18 == v17)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  sub_29B24E038(v17, v18, v20, 1);
  std::operator+<char>();
  (*(*v11 + 80))(v11, __p, a4, 0);
  if (SHIBYTE(v57) < 0)
  {
    operator delete(__p[0]);
  }

  (*(*v11 + 32))(v11, a4, 1);
  if (a3[12] != a3[11])
  {
    v21 = 0;
    v22 = 8;
    do
    {
      v23 = *(v59 + v22);
      (*(*v11 + 48))(v11, a4);
      v24 = *(a3[11] + v23);
      v25 = sub_29B1F31FC();
      (*(*v11 + 208))(v11, v24, v25, a2, a4, 0);
      v26 = sub_29B242ED8();
      (*(*v11 + 72))(v11, v26, a4);
      (*(*v11 + 56))(v11, a4, 0);
      ++v21;
      v22 += 16;
    }

    while (v21 < (a3[12] - a3[11]) >> 3);
  }

  v27 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - v13;
  if (v27 >= 4)
  {
    v28 = 0;
    v29 = v27 >> 2;
    if (v29 <= 1)
    {
      v30 = 1;
    }

    else
    {
      v30 = v29;
    }

    do
    {
      std::to_string(&v55, v28);
      v31 = std::string::insert(&v55, 0, "float pad");
      v32 = *&v31->__r_.__value_.__l.__data_;
      v57 = v31->__r_.__value_.__r.__words[2];
      *__p = v32;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      (*(*v11 + 80))(v11, __p, a4, 1);
      if (SHIBYTE(v57) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v55.__r_.__value_.__l.__data_);
      }

      ++v28;
    }

    while (v30 != v28);
  }

  (*(*v11 + 40))(v11, a4, 1, 1);
  (*(*v11 + 64))(v11, a4);
  std::operator+<char>();
  v33 = std::string::append(&v54, "_");
  v34 = *&v33->__r_.__value_.__l.__data_;
  v55.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
  *&v55.__r_.__value_.__l.__data_ = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  v35 = *(a4 + 23);
  if (v35 >= 0)
  {
    v36 = a4;
  }

  else
  {
    v36 = *a4;
  }

  if (v35 >= 0)
  {
    v37 = *(a4 + 23);
  }

  else
  {
    v37 = *(a4 + 8);
  }

  v38 = std::string::append(&v55, v36, v37);
  v39 = *&v38->__r_.__value_.__l.__data_;
  v57 = v38->__r_.__value_.__r.__words[2];
  *__p = v39;
  v38->__r_.__value_.__l.__size_ = 0;
  v38->__r_.__value_.__r.__words[2] = 0;
  v38->__r_.__value_.__r.__words[0] = 0;
  (*(*v11 + 80))(v11, __p, a4, 0);
  if (SHIBYTE(v57) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  (*(*v11 + 32))(v11, a4, 1);
  if (*(a3 + 23) >= 0)
  {
    v40 = *(a3 + 23);
  }

  else
  {
    v40 = a3[1];
  }

  v41 = &v54;
  sub_29A022DE0(&v54, v40 + 1);
  if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v41 = v54.__r_.__value_.__r.__words[0];
  }

  if (v40)
  {
    if (*(a3 + 23) >= 0)
    {
      v42 = a3;
    }

    else
    {
      v42 = *a3;
    }

    memmove(v41, v42, v40);
  }

  *(&v41->__r_.__value_.__l.__data_ + v40) = 32;
  v43 = *(a5 + 23);
  if (v43 >= 0)
  {
    v44 = a5;
  }

  else
  {
    v44 = *a5;
  }

  if (v43 >= 0)
  {
    v45 = *(a5 + 23);
  }

  else
  {
    v45 = *(a5 + 8);
  }

  v46 = std::string::append(&v54, v44, v45);
  v47 = *&v46->__r_.__value_.__l.__data_;
  v55.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
  *&v55.__r_.__value_.__l.__data_ = v47;
  v46->__r_.__value_.__l.__size_ = 0;
  v46->__r_.__value_.__r.__words[2] = 0;
  v46->__r_.__value_.__r.__words[0] = 0;
  v48 = *(a6 + 23);
  if (v48 >= 0)
  {
    v49 = a6;
  }

  else
  {
    v49 = *a6;
  }

  if (v48 >= 0)
  {
    v50 = *(a6 + 23);
  }

  else
  {
    v50 = *(a6 + 8);
  }

  v51 = std::string::append(&v55, v49, v50);
  v52 = *&v51->__r_.__value_.__l.__data_;
  v57 = v51->__r_.__value_.__r.__words[2];
  *__p = v52;
  v51->__r_.__value_.__l.__size_ = 0;
  v51->__r_.__value_.__r.__words[2] = 0;
  v51->__r_.__value_.__r.__words[0] = 0;
  (*(*v11 + 80))(v11, __p, a4, 1);
  if (SHIBYTE(v57) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  (*(*v11 + 40))(v11, a4, 1, 1);
  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }

  return sub_29A0EB570(v58);
}

void sub_29B24DC1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a36)
  {
    a37 = a36;
    operator delete(a36);
  }

  sub_29A0EB570(&a30);
  _Unwind_Resume(a1);
}

uint64_t sub_29B24DCFC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_29B24DD2C(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

uint64_t sub_29B24DD6C(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 16 * a3;
    do
    {
      sub_29B24DDE4(a1, a2, a2);
      a2 += 2;
      v5 -= 16;
    }

    while (v5);
  }

  return a1;
}

void *sub_29B24DDE4(uint64_t a1, void *a2, _OWORD *a3)
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

  i = operator new(0x20uLL);
  *i = 0;
  i[1] = v8;
  *(i + 1) = *a3;
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

uint64_t *sub_29B24E038(uint64_t *result, char *a2, uint64_t a3, char a4)
{
  v7 = result;
  while (2)
  {
    v8 = a2 - 8;
    v9 = v7;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v9;
          v10 = (a2 - v9) >> 4;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3:
                v96 = v9[2];
                v97 = *v9;
                v98 = *(a2 - 2);
                if (v96 <= *v9)
                {
                  if (v98 <= v96)
                  {
                    return result;
                  }

                  v9[2] = v98;
                  *(a2 - 2) = v96;
                  v8 = (v9 + 3);
                  v149 = v9[3];
                  v9[3] = *(a2 - 1);
                  *(a2 - 1) = v149;
                  v150 = v9[2];
                  v151 = *v9;
                  if (v150 <= *v9)
                  {
                    return result;
                  }

                  *v9 = v150;
                  v9[2] = v151;
                  v99 = (v9 + 1);
                }

                else
                {
                  if (v98 <= v96)
                  {
                    v99 = (v9 + 3);
                    v163 = v9[3];
                    v164 = v9[1];
                    *v9 = v96;
                    v9[1] = v163;
                    v9[2] = v97;
                    v9[3] = v164;
                    v165 = *(a2 - 2);
                    if (v165 <= v97)
                    {
                      return result;
                    }

                    v9[2] = v165;
                  }

                  else
                  {
                    v99 = (v9 + 1);
                    *v9 = v98;
                  }

                  *(a2 - 2) = v97;
                }

                v166 = *v99;
                *v99 = *v8;
                *v8 = v166;
                return result;
              case 4:
                v100 = v9[2];
                v101 = *v9;
                v102 = v9[4];
                if (v100 <= *v9)
                {
                  if (v102 > v100)
                  {
                    v152 = (v9 + 3);
                    v153 = v9[3];
                    v154 = v9[5];
                    v9[2] = v102;
                    v9[3] = v154;
                    v9[4] = v100;
                    v9[5] = v153;
                    if (v102 > v101)
                    {
                      *v9 = v102;
                      v9[2] = v101;
                      v103 = (v9 + 1);
                      goto LABEL_204;
                    }

LABEL_206:
                    v170 = *(a2 - 2);
                    if (v170 > v100)
                    {
                      v9[4] = v170;
                      *(a2 - 2) = v100;
                      v171 = v9[5];
                      v9[5] = *(a2 - 1);
                      *(a2 - 1) = v171;
                      v172 = v9[4];
                      v173 = v9[2];
                      if (v172 > v173)
                      {
                        v174 = v9[3];
                        v175 = v9[5];
                        v9[2] = v172;
                        v9[3] = v175;
                        v9[4] = v173;
                        v9[5] = v174;
                        v176 = *v9;
                        if (v172 > *v9)
                        {
                          v177 = v9[1];
                          *v9 = v172;
                          v9[1] = v175;
                          v9[2] = v176;
                          v9[3] = v177;
                        }
                      }
                    }

                    return result;
                  }
                }

                else
                {
                  if (v102 > v100)
                  {
                    v103 = (v9 + 1);
                    *v9 = v102;
                    goto LABEL_203;
                  }

                  v103 = (v9 + 3);
                  v167 = v9[3];
                  v168 = v9[1];
                  *v9 = v100;
                  v9[1] = v167;
                  v9[2] = v101;
                  v9[3] = v168;
                  if (v102 > v101)
                  {
                    v9[2] = v102;
LABEL_203:
                    v9[4] = v101;
                    v152 = (v9 + 5);
LABEL_204:
                    v169 = *v103;
                    *v103 = *v152;
                    *v152 = v169;
                    v100 = v9[4];
                    goto LABEL_206;
                  }
                }

                v100 = v102;
                goto LABEL_206;
              case 5:

                return sub_29B24EB64(v9, v9 + 2, v9 + 4, v9 + 6, a2 - 2);
            }
          }

          else
          {
            if (v10 < 2)
            {
              return result;
            }

            if (v10 == 2)
            {
              v93 = *(a2 - 2);
              v94 = *v9;
              if (v93 > *v9)
              {
                *v9 = v93;
                *(a2 - 2) = v94;
                v95 = v9[1];
                v9[1] = *(a2 - 1);
                *(a2 - 1) = v95;
              }

              return result;
            }
          }

          if (v10 <= 23)
          {
            v104 = (v9 + 2);
            v106 = v9 == a2 || v104 == a2;
            if (a4)
            {
              if (!v106)
              {
                v107 = 0;
                v108 = v9;
                do
                {
                  v109 = v104;
                  v110 = v108[2];
                  v111 = *v108;
                  if (v110 > *v108)
                  {
                    v112 = v108[3];
                    v113 = v107;
                    while (1)
                    {
                      v114 = v9 + v113;
                      v115 = *(v9 + v113 + 8);
                      *(v114 + 2) = v111;
                      *(v114 + 3) = v115;
                      if (!v113)
                      {
                        break;
                      }

                      v111 = *(v114 - 2);
                      v113 -= 16;
                      if (v110 <= v111)
                      {
                        v116 = (v9 + v113 + 16);
                        goto LABEL_137;
                      }
                    }

                    v116 = v9;
LABEL_137:
                    *v116 = v110;
                    v116[1] = v112;
                  }

                  v104 = v109 + 16;
                  v107 += 16;
                  v108 = v109;
                }

                while (v109 + 16 != a2);
              }
            }

            else if (!v106)
            {
              v155 = v9 + 3;
              do
              {
                v156 = v104;
                v157 = v7[2];
                v158 = *v7;
                if (v157 > *v7)
                {
                  v159 = v7[3];
                  v160 = v155;
                  do
                  {
                    v161 = v160;
                    v162 = *(v160 - 2);
                    v160 -= 2;
                    *(v161 - 1) = v158;
                    *v161 = v162;
                    v158 = *(v161 - 5);
                  }

                  while (v157 > v158);
                  *(v160 - 1) = v157;
                  *v160 = v159;
                }

                v104 = v156 + 16;
                v155 += 2;
                v7 = v156;
              }

              while (v156 + 16 != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v9 != a2)
            {
              v117 = (v10 - 2) >> 1;
              v118 = v117;
              do
              {
                v119 = v118;
                if (v117 >= v118)
                {
                  v120 = (2 * v118) | 1;
                  v121 = &v9[2 * v120];
                  if (2 * v119 + 2 >= v10)
                  {
                    v122 = *v121;
                  }

                  else
                  {
                    v122 = v121[2];
                    v123 = *v121 > v122;
                    if (*v121 < v122)
                    {
                      v122 = *v121;
                    }

                    if (v123)
                    {
                      v121 += 2;
                      v120 = 2 * v119 + 2;
                    }
                  }

                  v124 = &v9[2 * v119];
                  v125 = *v124;
                  if (v122 <= *v124)
                  {
                    v126 = v124[1];
                    do
                    {
                      v127 = v124;
                      v124 = v121;
                      *v127 = v122;
                      v127[1] = v121[1];
                      if (v117 < v120)
                      {
                        break;
                      }

                      v128 = (2 * v120) | 1;
                      v121 = &v9[2 * v128];
                      v120 = 2 * v120 + 2;
                      if (v120 >= v10)
                      {
                        v122 = *v121;
                        v120 = v128;
                      }

                      else
                      {
                        v122 = *v121;
                        result = (v121 + 2);
                        v129 = v121[2];
                        if (*v121 >= v129)
                        {
                          v122 = v121[2];
                        }

                        if (*v121 <= v129)
                        {
                          v120 = v128;
                        }

                        else
                        {
                          v121 += 2;
                        }
                      }
                    }

                    while (v122 <= v125);
                    *v124 = v125;
                    v124[1] = v126;
                  }
                }

                v118 = v119 - 1;
              }

              while (v119);
              do
              {
                v130 = 0;
                v131 = *v9;
                v132 = v9[1];
                v133 = v9;
                do
                {
                  v134 = &v133[2 * v130];
                  v135 = v134 + 2;
                  v136 = (2 * v130) | 1;
                  v130 = 2 * v130 + 2;
                  if (v130 >= v10)
                  {
                    v137 = *v135;
                    v130 = v136;
                  }

                  else
                  {
                    v139 = v134[4];
                    v138 = v134 + 4;
                    v137 = v139;
                    result = *(v138 - 2);
                    v140 = result > v139;
                    if (result < v139)
                    {
                      v137 = *(v138 - 2);
                    }

                    if (v140)
                    {
                      v135 = v138;
                    }

                    else
                    {
                      v130 = v136;
                    }
                  }

                  *v133 = v137;
                  v133[1] = v135[1];
                  v133 = v135;
                }

                while (v130 <= ((v10 - 2) >> 1));
                if (v135 == (a2 - 16))
                {
                  *v135 = v131;
                  v135[1] = v132;
                }

                else
                {
                  *v135 = *(a2 - 2);
                  v135[1] = *(a2 - 1);
                  *(a2 - 2) = v131;
                  *(a2 - 1) = v132;
                  v141 = (v135 - v9 + 16) >> 4;
                  v123 = v141 < 2;
                  v142 = v141 - 2;
                  if (!v123)
                  {
                    v143 = v142 >> 1;
                    v144 = &v9[2 * v143];
                    v145 = *v144;
                    v146 = *v135;
                    if (*v144 > *v135)
                    {
                      v147 = v135[1];
                      do
                      {
                        v148 = v135;
                        v135 = v144;
                        *v148 = v145;
                        v148[1] = v144[1];
                        if (!v143)
                        {
                          break;
                        }

                        v143 = (v143 - 1) >> 1;
                        v144 = &v9[2 * v143];
                        v145 = *v144;
                      }

                      while (*v144 > v146);
                      *v135 = v146;
                      v135[1] = v147;
                    }
                  }
                }

                a2 -= 16;
                v123 = v10-- <= 2;
              }

              while (!v123);
            }

            return result;
          }

          v11 = &v9[2 * (v10 >> 1)];
          v12 = v11;
          v13 = *(a2 - 2);
          if (v10 >= 0x81)
          {
            v14 = *v11;
            v15 = *v9;
            if (*v11 <= *v9)
            {
              if (v13 <= v14 || (*v11 = v13, *(a2 - 2) = v14, v21 = (v11 + 1), v20 = v11[1], v11[1] = *(a2 - 1), *(a2 - 1) = v20, v22 = *v9, *v11 <= *v9))
              {
LABEL_29:
                v30 = v11 - 2;
                v31 = *(v11 - 2);
                v32 = v9[2];
                v33 = *(a2 - 4);
                if (v31 <= v32)
                {
                  if (v33 <= v31 || (*v30 = v33, *(a2 - 4) = v31, v36 = (v11 - 1), v35 = *(v11 - 1), *(v11 - 1) = *(a2 - 3), *(a2 - 3) = v35, v37 = v9[2], *v30 <= v37))
                  {
LABEL_42:
                    v47 = v11[2];
                    v45 = v11 + 2;
                    v46 = v47;
                    v48 = v9[4];
                    v49 = *(a2 - 6);
                    if (v47 <= v48)
                    {
                      if (v49 > v46)
                      {
                        *v45 = v49;
                        *(a2 - 6) = v46;
                        v52 = (v45 + 1);
                        v51 = v45[1];
                        v45[1] = *(a2 - 5);
                        *(a2 - 5) = v51;
                        v46 = *v45;
                        v53 = v9[4];
                        if (*v45 > v53)
                        {
                          v9[4] = v46;
                          *v45 = v53;
                          v50 = (v9 + 5);
LABEL_51:
                          v57 = *v50;
                          *v50 = *v52;
                          *v52 = v57;
                          v46 = *v45;
                        }
                      }
                    }

                    else
                    {
                      if (v49 > v46)
                      {
                        v50 = (v9 + 5);
                        v9[4] = v49;
LABEL_50:
                        *(a2 - 6) = v48;
                        v52 = a2 - 40;
                        goto LABEL_51;
                      }

                      v50 = (v45 + 1);
                      v54 = v45[1];
                      v55 = v9[5];
                      v9[4] = v46;
                      v9[5] = v54;
                      *v45 = v48;
                      v45[1] = v55;
                      v56 = *(a2 - 6);
                      if (v56 > v48)
                      {
                        *v45 = v56;
                        goto LABEL_50;
                      }

                      v46 = v48;
                    }

                    v58 = *v12;
                    v59 = *v30;
                    if (*v12 <= *v30)
                    {
                      if (v46 <= v58)
                      {
LABEL_62:
                        v67 = *v9;
                        *v9 = v58;
                        v19 = (v9 + 1);
                        *v12 = v67;
                        v25 = (v12 + 1);
                        goto LABEL_63;
                      }

                      v62 = (v12 + 1);
                      v63 = v12[1];
                      *v12 = v46;
                      v12[1] = v45[1];
                      *v45 = v58;
                      v45[1] = v63;
                      if (v46 <= v59)
                      {
                        v58 = v46;
                        goto LABEL_62;
                      }

                      *v30 = v46;
                      v60 = (v30 + 1);
                      *v12 = v59;
                    }

                    else
                    {
                      if (v46 <= v58)
                      {
                        v64 = v12[1];
                        *v12 = v59;
                        v65 = v30[1];
                        *v30 = v58;
                        v30[1] = v64;
                        v12[1] = v65;
                        if (v46 <= v59)
                        {
                          v58 = v59;
                          goto LABEL_62;
                        }

                        *v12 = v46;
                        *v45 = v59;
                        v61 = (v45 + 1);
                        v60 = (v12 + 1);
                      }

                      else
                      {
                        *v30 = v46;
                        v60 = (v30 + 1);
                        *v45 = v59;
                        v61 = (v45 + 1);
                      }

                      v62 = v61;
                    }

                    v66 = *v60;
                    *v60 = *v62;
                    *v62 = v66;
                    v58 = *v12;
                    goto LABEL_62;
                  }

                  v9[2] = *v30;
                  *v30 = v37;
                  v34 = v9 + 3;
                }

                else
                {
                  if (v33 <= v31)
                  {
                    v34 = v11 - 1;
                    v41 = *(v11 - 1);
                    v42 = v9[3];
                    v9[2] = v31;
                    v9[3] = v41;
                    *v30 = v32;
                    *(v11 - 1) = v42;
                    v43 = *(a2 - 4);
                    if (v43 <= v32)
                    {
                      goto LABEL_42;
                    }

                    *v30 = v43;
                  }

                  else
                  {
                    v34 = v9 + 3;
                    v9[2] = v33;
                  }

                  *(a2 - 4) = v32;
                  v36 = a2 - 24;
                }

                v44 = *v34;
                *v34 = *v36;
                *v36 = v44;
                goto LABEL_42;
              }

              *v9 = *v11;
              v16 = (v9 + 1);
              *v11 = v22;
            }

            else
            {
              if (v13 <= v14)
              {
                v16 = (v11 + 1);
                v26 = v11[1];
                v27 = v9[1];
                *v9 = v14;
                v9[1] = v26;
                *v11 = v15;
                v11[1] = v27;
                v28 = *(a2 - 2);
                if (v28 <= v15)
                {
                  goto LABEL_29;
                }

                *v11 = v28;
              }

              else
              {
                v16 = (v9 + 1);
                *v9 = v13;
              }

              *(a2 - 2) = v15;
              v21 = a2 - 8;
            }

            v29 = *v16;
            *v16 = *v21;
            *v21 = v29;
            goto LABEL_29;
          }

          v17 = *v9;
          v18 = *v11;
          if (*v9 <= *v11)
          {
            if (v13 > v17)
            {
              *v9 = v13;
              *(a2 - 2) = v17;
              v23 = v9[1];
              v9[1] = *(a2 - 1);
              *(a2 - 1) = v23;
              v24 = *v12;
              if (*v9 > *v12)
              {
                *v12 = *v9;
                *v9 = v24;
                v19 = (v12 + 1);
                v25 = (v9 + 1);
LABEL_63:
                v68 = *v19;
                *v19 = *v25;
                *v25 = v68;
              }
            }
          }

          else
          {
            if (v13 > v17)
            {
              v19 = (v11 + 1);
              *v12 = v13;
LABEL_37:
              *(a2 - 2) = v18;
              v25 = a2 - 8;
              goto LABEL_63;
            }

            v19 = (v9 + 1);
            v38 = v9[1];
            v39 = v12[1];
            *v12 = v17;
            v12[1] = v38;
            *v9 = v18;
            v9[1] = v39;
            v40 = *(a2 - 2);
            if (v40 > v18)
            {
              *v9 = v40;
              goto LABEL_37;
            }
          }

          --a3;
          v69 = *v9;
          if ((a4 & 1) != 0 || *(v9 - 2) > v69)
          {
            break;
          }

          if (v69 <= *(a2 - 2))
          {
            v84 = v9 + 2;
            do
            {
              v9 = v84;
              if (v84 >= a2)
              {
                break;
              }

              v84 += 2;
            }

            while (v69 <= *v9);
          }

          else
          {
            do
            {
              v83 = v9[2];
              v9 += 2;
            }

            while (v69 <= v83);
          }

          v85 = a2;
          if (v9 < a2)
          {
            v85 = a2;
            do
            {
              v86 = *(v85 - 2);
              v85 -= 2;
            }

            while (v69 > v86);
          }

          v87 = v7[1];
          if (v9 < v85)
          {
            v88 = *v9;
            v89 = *v85;
            do
            {
              *v9 = v89;
              *v85 = v88;
              v90 = v9[1];
              v9[1] = v85[1];
              v85[1] = v90;
              do
              {
                v91 = v9[2];
                v9 += 2;
                v88 = v91;
              }

              while (v69 <= v91);
              do
              {
                v92 = *(v85 - 2);
                v85 -= 2;
                v89 = v92;
              }

              while (v69 > v92);
            }

            while (v9 < v85);
          }

          if (v9 - 2 != v7)
          {
            *v7 = *(v9 - 2);
            v7[1] = *(v9 - 1);
          }

          a4 = 0;
          *(v9 - 2) = v69;
          *(v9 - 1) = v87;
        }

        v70 = 0;
        v71 = v9[1];
        do
        {
          v72 = v9[v70 + 2];
          v70 += 2;
        }

        while (v72 > v69);
        v73 = &v9[v70];
        v74 = a2;
        if (v70 == 2)
        {
          v74 = a2;
          do
          {
            if (v73 >= v74)
            {
              break;
            }

            v76 = *(v74 - 2);
            v74 -= 16;
          }

          while (v76 <= v69);
        }

        else
        {
          do
          {
            v75 = *(v74 - 2);
            v74 -= 16;
          }

          while (v75 <= v69);
        }

        if (v73 >= v74)
        {
          v9 = (v9 + v70 * 8);
        }

        else
        {
          v77 = *v74;
          v9 = (v9 + v70 * 8);
          v78 = v74;
          do
          {
            *v9 = v77;
            *v78 = v72;
            v79 = v9[1];
            v9[1] = v78[1];
            v78[1] = v79;
            do
            {
              v80 = v9[2];
              v9 += 2;
              v72 = v80;
            }

            while (v80 > v69);
            do
            {
              v81 = *(v78 - 2);
              v78 -= 2;
              v77 = v81;
            }

            while (v81 <= v69);
          }

          while (v9 < v78);
        }

        if (v9 - 2 != v7)
        {
          *v7 = *(v9 - 2);
          v7[1] = *(v9 - 1);
        }

        *(v9 - 2) = v69;
        *(v9 - 1) = v71;
        if (v73 >= v74)
        {
          break;
        }

LABEL_87:
        result = sub_29B24E038(v7, v9 - 2, a3, a4 & 1);
        a4 = 0;
      }

      v82 = sub_29B24ED34(v7, v9 - 16);
      result = sub_29B24ED34(v9, a2);
      if (result)
      {
        break;
      }

      if (!v82)
      {
        goto LABEL_87;
      }
    }

    a2 = (v9 - 2);
    if (!v82)
    {
      continue;
    }

    return result;
  }
}

uint64_t *sub_29B24EB64(uint64_t *result, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *a3;
  if (*a2 <= *result)
  {
    if (v7 > v5)
    {
      *a2 = v7;
      *a3 = v5;
      v10 = (a2 + 1);
      v9 = a2[1];
      a2[1] = a3[1];
      a3[1] = v9;
      v11 = *result;
      if (*a2 > *result)
      {
        *result = *a2;
        v8 = result + 1;
        *a2 = v11;
LABEL_10:
        v13 = *v8;
        *v8 = *v10;
        *v10 = v13;
      }
    }
  }

  else
  {
    if (v7 > v5)
    {
      v8 = result + 1;
      *result = v7;
LABEL_9:
      *a3 = v6;
      v10 = (a3 + 1);
      goto LABEL_10;
    }

    *result = v5;
    *a2 = v6;
    v8 = (a2 + 1);
    v12 = result[1];
    result[1] = a2[1];
    a2[1] = v12;
    v6 = *a2;
    if (*a3 > *a2)
    {
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  v14 = *a3;
  if (*a4 > *a3)
  {
    *a3 = *a4;
    *a4 = v14;
    v15 = a3[1];
    a3[1] = a4[1];
    a4[1] = v15;
    v16 = *a2;
    if (*a3 > *a2)
    {
      *a2 = *a3;
      *a3 = v16;
      v17 = a2[1];
      a2[1] = a3[1];
      a3[1] = v17;
      v18 = *result;
      if (*a2 > *result)
      {
        *result = *a2;
        *a2 = v18;
        v19 = result[1];
        result[1] = a2[1];
        a2[1] = v19;
      }
    }
  }

  v20 = *a4;
  if (*a5 > *a4)
  {
    *a4 = *a5;
    *a5 = v20;
    v21 = a4[1];
    a4[1] = a5[1];
    a5[1] = v21;
    v22 = *a3;
    if (*a4 > *a3)
    {
      *a3 = *a4;
      *a4 = v22;
      v23 = a3[1];
      a3[1] = a4[1];
      a4[1] = v23;
      v24 = *a2;
      if (*a3 > *a2)
      {
        *a2 = *a3;
        *a3 = v24;
        v25 = a2[1];
        a2[1] = a3[1];
        a3[1] = v25;
        v26 = *result;
        if (*a2 > *result)
        {
          *result = *a2;
          *a2 = v26;
          v27 = result[1];
          result[1] = a2[1];
          a2[1] = v27;
        }
      }
    }
  }

  return result;
}

BOOL sub_29B24ED34(unint64_t *a1, char *a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = a1[2];
      v7 = *a1;
      v8 = *(a2 - 2);
      if (v6 <= *a1)
      {
        if (v8 <= v6)
        {
          return 1;
        }

        a1[2] = v8;
        *(a2 - 2) = v6;
        v20 = (a1 + 3);
        v19 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v19;
        v21 = a1[2];
        v22 = *a1;
        if (v21 <= *a1)
        {
          return 1;
        }

        *a1 = v21;
        a1[2] = v22;
        v9 = (a1 + 1);
      }

      else
      {
        if (v8 <= v6)
        {
          v9 = (a1 + 3);
          v29 = a1[3];
          v30 = a1[1];
          *a1 = v6;
          a1[1] = v29;
          a1[2] = v7;
          a1[3] = v30;
          v31 = *(a2 - 2);
          if (v31 <= v7)
          {
            return 1;
          }

          a1[2] = v31;
        }

        else
        {
          v9 = (a1 + 1);
          *a1 = v8;
        }

        *(a2 - 2) = v7;
        v20 = a2 - 8;
      }

      v32 = *v9;
      *v9 = *v20;
      *v20 = v32;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      sub_29B24EB64(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
      return 1;
    }

    v15 = a1[2];
    v16 = *a1;
    v17 = a1[4];
    if (v15 <= *a1)
    {
      if (v17 > v15)
      {
        v27 = (a1 + 3);
        v26 = a1[3];
        v28 = a1[5];
        a1[2] = v17;
        a1[3] = v28;
        a1[4] = v15;
        a1[5] = v26;
        if (v17 <= v16)
        {
LABEL_51:
          v17 = v15;
          goto LABEL_52;
        }

        *a1 = v17;
        a1[2] = v16;
        v18 = (a1 + 1);
LABEL_50:
        v48 = *v18;
        *v18 = *v27;
        *v27 = v48;
        goto LABEL_51;
      }
    }

    else
    {
      if (v17 > v15)
      {
        v18 = (a1 + 1);
        *a1 = v17;
LABEL_49:
        a1[4] = v16;
        v27 = (a1 + 5);
        v15 = v16;
        goto LABEL_50;
      }

      v18 = (a1 + 3);
      v46 = a1[3];
      v47 = a1[1];
      *a1 = v15;
      a1[1] = v46;
      a1[2] = v16;
      a1[3] = v47;
      if (v17 > v16)
      {
        a1[2] = v17;
        goto LABEL_49;
      }
    }

LABEL_52:
    v49 = *(a2 - 2);
    if (v49 > v17)
    {
      a1[4] = v49;
      *(a2 - 2) = v17;
      v50 = a1[5];
      a1[5] = *(a2 - 1);
      *(a2 - 1) = v50;
      v51 = a1[4];
      v52 = a1[2];
      if (v51 > v52)
      {
        v53 = a1[3];
        v54 = a1[5];
        a1[2] = v51;
        a1[3] = v54;
        a1[4] = v52;
        a1[5] = v53;
        v55 = *a1;
        if (v51 > *a1)
        {
          v56 = a1[1];
          *a1 = v51;
          a1[1] = v54;
          a1[2] = v55;
          a1[3] = v56;
        }
      }
    }

    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 2);
    v4 = *a1;
    if (v3 > *a1)
    {
      *a1 = v3;
      *(a2 - 2) = v4;
      v5 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_13:
  v10 = (a1 + 4);
  v11 = a1[4];
  v12 = a1[2];
  v13 = *a1;
  if (v12 > *a1)
  {
    if (v11 <= v12)
    {
      v14 = (a1 + 3);
      v33 = a1[3];
      v34 = a1[1];
      *a1 = v12;
      a1[1] = v33;
      a1[2] = v13;
      a1[3] = v34;
      if (v11 <= v13)
      {
        goto LABEL_36;
      }

      a1[2] = v11;
    }

    else
    {
      v14 = (a1 + 1);
      *a1 = v11;
    }

    a1[4] = v13;
    v24 = (a1 + 5);
    goto LABEL_35;
  }

  if (v11 > v12)
  {
    v24 = (a1 + 3);
    v23 = a1[3];
    v25 = a1[5];
    a1[2] = v11;
    a1[3] = v25;
    a1[4] = v12;
    a1[5] = v23;
    if (v11 > v13)
    {
      *a1 = v11;
      a1[2] = v13;
      v14 = (a1 + 1);
LABEL_35:
      v35 = *v14;
      *v14 = *v24;
      *v24 = v35;
    }
  }

LABEL_36:
  v36 = (a1 + 6);
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v37 = 0;
  v38 = 0;
  while (1)
  {
    v39 = *v36;
    v40 = *v10;
    if (*v36 > *v10)
    {
      v41 = *(v36 + 1);
      v42 = v37;
      while (1)
      {
        v43 = (a1 + v42);
        v44 = *(a1 + v42 + 40);
        v43[6] = v40;
        v43[7] = v44;
        if (v42 == -32)
        {
          break;
        }

        v40 = v43[2];
        v42 -= 16;
        if (v39 <= v40)
        {
          v45 = (a1 + v42 + 48);
          goto LABEL_44;
        }
      }

      v45 = a1;
LABEL_44:
      *v45 = v39;
      v45[1] = v41;
      if (++v38 == 8)
      {
        return v36 + 16 == a2;
      }
    }

    v10 = v36;
    v37 += 16;
    v36 += 16;
    if (v36 == a2)
    {
      return 1;
    }
  }
}

void *sub_29B24F0A8()
{
  if ((atomic_load_explicit(&qword_2A17876A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17876A0))
  {
    sub_29A008E78(qword_2A1787688, "genmsl");
    __cxa_guard_release(&qword_2A17876A0);
  }

  return qword_2A1787688;
}

void *sub_29B24F128()
{
  if ((atomic_load_explicit(&qword_2A17876C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17876C0))
  {
    sub_29A008E78(qword_2A17876A8, "2.3");
    __cxa_guard_release(&qword_2A17876C0);
  }

  return qword_2A17876A8;
}

uint64_t sub_29B24F1A8(uint64_t a1)
{
  *&v25 = *MEMORY[0x29EDCA608];
  sub_29B25B784(__p);
  v17 = *&__p[0].__r_.__value_.__l.__data_;
  sub_29B20E6C0(a1, &v17);
  if (*(&v17 + 1))
  {
    sub_29A014BEC(*(&v17 + 1));
  }

  *a1 = &unk_2A20CB458;
  *(a1 + 776) = 0;
  *(a1 + 792) = 0;
  *(a1 + 784) = 0;
  v15[0] = 0;
  v15[1] = 0;
  v16 = 0;
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B25B8B8(v15, __p, v23, 0xCuLL);
  v2 = 12;
  do
  {
    if (SHIBYTE(__p[v2 - 1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(*(&v16 + v2 * 24));
    }

    --v2;
  }

  while (v2 * 24);
  sub_29B231AC4(a1, v15, sub_29B22E9CC);
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B25B8B8(v15, __p, &v25, 0x2DuLL);
  v3 = 45;
  do
  {
    if (SHIBYTE(__p[v3 - 1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(*(&v16 + v3 * 24));
    }

    --v3;
  }

  while (v3 * 24);
  sub_29B231AC4(a1, v15, sub_29B22F344);
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B25B8B8(v15, __p, v24, 0x23uLL);
  v4 = 35;
  do
  {
    if (SHIBYTE(__p[v4 - 1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(*(&v16 + v4 * 24));
    }

    --v4;
  }

  while (v4 * 24);
  sub_29B231AC4(a1, v15, sub_29B21E93C);
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B25B8B8(v15, __p, v22, 8uLL);
  for (i = 0; i != -24; i -= 3)
  {
    if (SHIBYTE(v21[i + 2]) < 0)
    {
      operator delete(v21[i]);
    }
  }

  sub_29B231AC4(a1, v15, sub_29B21C35C);
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B225BC8);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B224CE4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B227A64);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B222424);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B228988);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B228988);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B260FE4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B260FE4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B260FE4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B25B8B8(v15, __p, v21, 7uLL);
  for (j = 0; j != -21; j -= 3)
  {
    if (SHIBYTE(v20[j + 2]) < 0)
    {
      operator delete(v20[j]);
    }
  }

  sub_29B231AC4(a1, v15, sub_29B261EA4);
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B262C38);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B262C38);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B223E7C);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B229828);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B22B560);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B268428);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B26B838);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B2658E4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B266F08);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B266F08);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B266F08);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B263908);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B25B8B8(v15, __p, v20, 6uLL);
  for (k = 0; k != -144; k -= 24)
  {
    if (*(&v19[2] + k + 15) < 0)
    {
      operator delete(*(&v19[1] + k + 8));
    }
  }

  sub_29B231AC4(a1, v15, sub_29B260CC8);
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B22AE68);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B22AE2C);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B22AEA4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B25B8B8(v15, __p, v20, 6uLL);
  for (m = 0; m != -144; m -= 24)
  {
    if (*(&v19[2] + m + 15) < 0)
    {
      operator delete(*(&v19[1] + m + 8));
    }
  }

  sub_29B231AC4(a1, v15, sub_29B2243F0);
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B218784);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B218784);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B219A44);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B219A44);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B216294);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B216294);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B25B8B8(v15, __p, v19, 4uLL);
  for (n = 0; n != -96; n -= 24)
  {
    if (SHIBYTE(__p[n / 0x18 + 3].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[n / 0x18 + 3].__r_.__value_.__l.__data_);
    }
  }

  sub_29B231AC4(a1, v15, sub_29B21A96C);
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B23FB50);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B22BFF8);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29A008E78(__p, "numActiveLightSources");
  sub_29B267838(&v12);
  sub_29B23E23C(0, __p, &v12, 1, &v13);
  sub_29A01729C((a1 + 776), &v13);
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  if (*(&v12 + 1))
  {
    sub_29A014BEC(*(&v12 + 1));
  }

  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29A008E78(__p, "sampleLightSource");
  sub_29B266618(&v11);
  sub_29B23E23C(0, __p, &v11, 1, &v13);
  sub_29A01729C((a1 + 776), &v13);
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  if (*(&v11 + 1))
  {
    sub_29A014BEC(*(&v11 + 1));
  }

  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  __p[0].__r_.__value_.__r.__words[0] = v15;
  sub_29A012C90(__p);
  return a1;
}

void sub_29B251008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a15)
  {
    sub_29A014BEC(a15);
  }

  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (a26 < 0)
  {
    operator delete(__p);
  }

  __p = &a16;
  sub_29A012C90(&__p);
  sub_29A0176E4(&__p);
  sub_29AE1D3D0(v26);
  _Unwind_Resume(a1);
}

int *sub_29B2514A4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = a3[1];
  v23 = *a3;
  v24 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 272))(a1, a2, &v23, a4);
  if (v24)
  {
    sub_29A014BEC(v24);
  }

  sub_29B1FB384(&v22, 1, -1);
  (*(*a1 + 368))(&v21, a1, a4);
  v9 = v21;
  if (v21)
  {
    goto LABEL_18;
  }

  sub_29A008E78(__p, off_2A14FE548[0]);
  v25 = 0;
  v26 = 0;
  sub_29AE1D758(&v26, &v25, &v17);
  v18 = v17;
  v17 = 0uLL;
  sub_29AE19BF4(a4, __p, &v18);
  if (*(&v18 + 1))
  {
    sub_29A014BEC(*(&v18 + 1));
  }

  if (*(&v17 + 1))
  {
    sub_29A014BEC(*(&v17 + 1));
  }

  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, off_2A14FE548[0]);
  sub_29AE19D1C(a4, __p, &v17);
  v10 = v17;
  v17 = 0uLL;
  v11 = *(&v21 + 1);
  v21 = v10;
  if (v11)
  {
    sub_29A014BEC(v11);
    if (*(&v17 + 1))
    {
      sub_29A014BEC(*(&v17 + 1));
    }
  }

  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = v21;
  if (v21)
  {
LABEL_18:
    (*(*v9 + 16))(v9);
  }

  v12 = *a5;
  sub_29A008E78(__p, off_2A14FE550[0]);
  v13 = sub_29B22FF64(v12, __p);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  (*(*a1 + 288))(a1, *(*a5 + 32), a4, v13);
  sub_29B232BCC(a1, a1 + 12, v13);
  v14 = *a5;
  sub_29A008E78(__p, off_2A14FE6F8);
  v15 = sub_29B22FF64(v14, __p);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  (*(*a1 + 296))(a1, *(*a5 + 32), a4, v15);
  sub_29B232BCC(a1, a1 + 12, v15);
  (*(*a1 + 360))(a1, v15);
  if (*(&v21 + 1))
  {
    sub_29A014BEC(*(&v21 + 1));
  }

  return sub_29B1FB3A8(&v22);
}

void sub_29B2517D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, std::__shared_weak_count *a21, int a22)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    sub_29A014BEC(a21);
  }

  sub_29B1FB3A8(&a22);
  v24 = *(v22 + 8);
  if (v24)
  {
    sub_29A014BEC(v24);
  }

  _Unwind_Resume(a1);
}

void sub_29B251878(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 423) < 0)
  {
    sub_29A008D14(&__str, *(a2 + 400), *(a2 + 408));
  }

  else
  {
    __str = *(a2 + 400);
  }

  sub_29A008E78(&v125, "out");
  v114 = a2;
  sub_29A008E78(&v126 + 1, "inout");
  v3 = 0;
  v4 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  size = __str.__r_.__value_.__l.__size_;
  v5 = __str.__r_.__value_.__r.__words[0];
  do
  {
    v119 = v3;
    v7 = &v125 + v3;
    if ((v4 & 0x80u) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = v5;
    }

    if ((v4 & 0x80u) == 0)
    {
      v9 = v4;
    }

    else
    {
      v9 = size;
    }

    v10 = v7[23];
    v11 = *(v7 + 1);
    v117 = v7;
    if ((v10 & 0x80u) == 0)
    {
      v12 = v7;
    }

    else
    {
      v12 = *v7;
    }

    if ((v10 & 0x80u) == 0)
    {
      v13 = v7[23];
    }

    else
    {
      v13 = *(v7 + 1);
    }

    if (v13)
    {
      if (v9 >= v13)
      {
        v115 = size;
        v116 = v5;
        v14 = p_str + v9;
        v15 = *v12;
        v16 = p_str;
        do
        {
          v17 = v9 - v13;
          if (v17 == -1)
          {
            break;
          }

          v18 = memchr(v16, v15, v17 + 1);
          if (!v18)
          {
            break;
          }

          v19 = v18;
          if (!memcmp(v18, v12, v13))
          {
            size = v115;
            v5 = v116;
            if (v19 != v14)
            {
              v20 = v19 - p_str;
              if (v19 - p_str != -1)
              {
                goto LABEL_28;
              }
            }

            goto LABEL_25;
          }

          v16 = (v19 + 1);
          v9 = v14 - (v19 + 1);
        }

        while (v9 >= v13);
LABEL_24:
        size = v115;
        v5 = v116;
      }
    }

    else
    {
      v20 = 0;
      do
      {
LABEL_28:
        if ((v4 & 0x80u) == 0)
        {
          v21 = &__str;
        }

        else
        {
          v21 = v5;
        }

        v22 = v21 + v20;
        v23 = *(v22 - 1);
        if ((v10 & 0x80u) == 0)
        {
          v24 = v10;
        }

        else
        {
          v24 = v11;
        }

        v25 = v22[v24];
        v26 = MEMORY[0x29EDCA600];
        if ((v23 & 0xFFFFFFFB) == 0x28 || ((v23 & 0x80000000) != 0 ? (v27 = __maskrune(v23, 0x4000uLL)) : (v27 = *(MEMORY[0x29EDCA600] + 4 * v23 + 60) & 0x4000), v27))
        {
          if ((v25 & 0x80000000) != 0)
          {
            v28 = __maskrune(v25, 0x4000uLL);
          }

          else
          {
            v28 = *(v26 + 4 * v25 + 60) & 0x4000;
          }

          if (v28)
          {
            v29 = v25 == 10;
          }

          else
          {
            v29 = 1;
          }

          v30 = !v29;
        }

        else
        {
          v30 = 0;
        }

        v10 = v117[23];
        v31 = v10;
        if (v117[23] < 0)
        {
          v31 = *(v117 + 1);
        }

        v32 = v31 + v20;
        if (v30)
        {
          while (1)
          {
            v33 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
            v34 = v33->__r_.__value_.__s.__data_[v32];
            if (!((v34 & 0x80000000) != 0 ? __maskrune(v34, 0x4000uLL) : *(v26 + 4 * v34 + 60) & 0x4000))
            {
              break;
            }

            ++v32;
          }

          for (i = v32; ; ++i)
          {
            v37 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
            v38 = v37->__r_.__value_.__s.__data_[i];
            if ((v38 & 0x80000000) != 0 ? __maskrune(v38, 0x4000uLL) : *(v26 + 4 * v38 + 60) & 0x4000)
            {
              break;
            }
          }

          std::string::basic_string(&v124, &__str, v32, i - v32, __p);
          std::operator+<char>();
          v40 = std::string::append(&v121, "&");
          v41 = *&v40->__r_.__value_.__l.__data_;
          v123 = v40->__r_.__value_.__r.__words[2];
          *__p = v41;
          v40->__r_.__value_.__l.__size_ = 0;
          v40->__r_.__value_.__r.__words[2] = 0;
          v40->__r_.__value_.__r.__words[0] = 0;
          if (v123 >= 0)
          {
            v42 = __p;
          }

          else
          {
            v42 = __p[0];
          }

          if (v123 >= 0)
          {
            v43 = HIBYTE(v123);
          }

          else
          {
            v43 = __p[1];
          }

          std::string::replace(&__str, v20, i - v20, v42, v43);
          if (SHIBYTE(v123) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v121.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v124.__r_.__value_.__l.__data_);
          }

          v10 = v117[23];
        }

        else
        {
          i = v31 + v20;
        }

        v4 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        size = __str.__r_.__value_.__l.__size_;
        v5 = __str.__r_.__value_.__r.__words[0];
        v44 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
        v45 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__str.__r_.__value_.__r.__words[2]) : __str.__r_.__value_.__l.__size_;
        v11 = *(v117 + 1);
        v46 = (v10 & 0x80u) == 0 ? v117 : *v117;
        v47 = (v10 & 0x80u) == 0 ? v10 : *(v117 + 1);
        v48 = v45 - i;
        if (v45 < i)
        {
          break;
        }

        if (v47)
        {
          if (v48 < v47)
          {
            break;
          }

          v115 = __str.__r_.__value_.__l.__size_;
          v116 = __str.__r_.__value_.__r.__words[0];
          v49 = v44 + v45;
          v50 = v44 + i;
          v51 = *v46;
          while (1)
          {
            v52 = v48 - v47;
            if (v52 == -1)
            {
              goto LABEL_24;
            }

            v53 = memchr(v50, v51, v52 + 1);
            if (!v53)
            {
              goto LABEL_24;
            }

            v54 = v53;
            if (!memcmp(v53, v46, v47))
            {
              size = v115;
              v5 = v116;
              if (v54 == v49)
              {
                goto LABEL_25;
              }

              i = v54 - v44;
              break;
            }

            v50 = v54 + 1;
            v48 = v49 - (v54 + 1);
            if (v48 < v47)
            {
              goto LABEL_24;
            }
          }
        }

        v20 = i;
      }

      while (i != -1);
    }

LABEL_25:
    v3 = v119 + 24;
  }

  while (v119 != 24);
  for (j = 0; j != -48; j -= 24)
  {
    if (*(&v128 + j) < 0)
    {
      operator delete(*(&v126 + j + 8));
    }
  }

  v125 = 0u;
  v126 = 0u;
  v127 = 1065353216;
  sub_29A008E78(&v124, "sampler2D");
  __p[0] = &v124;
  v56 = sub_29B1D6E60(&v125, &v124.__r_.__value_.__l.__data_, &unk_29B769A0C, __p);
  MEMORY[0x29C2C1A60](v56 + 40, "MetalTexture");
  if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v124.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v124, "dFdy");
  __p[0] = &v124;
  v57 = sub_29B1D6E60(&v125, &v124.__r_.__value_.__l.__data_, &unk_29B769A0C, __p);
  MEMORY[0x29C2C1A60](v57 + 40, "dfdy");
  if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v124.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v124, "dFdx");
  __p[0] = &v124;
  v58 = sub_29B1D6E60(&v125, &v124.__r_.__value_.__l.__data_, &unk_29B769A0C, __p);
  MEMORY[0x29C2C1A60](v58 + 40, "dfdx");
  if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v124.__r_.__value_.__l.__data_);
  }

  v59 = v126;
  if (v126)
  {
    v60 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    v62 = __str.__r_.__value_.__l.__size_;
    v61 = __str.__r_.__value_.__r.__words[0];
    while (1)
    {
      v63 = (v60 & 0x80u) == 0 ? &__str : v61;
      v64 = (v60 & 0x80u) == 0 ? v60 : v62;
      v65 = *(v59 + 39);
      v66 = (v65 & 0x80u) == 0 ? (v59 + 2) : v59[2];
      v67 = (v65 & 0x80u) == 0 ? *(v59 + 39) : v59[3];
      if (!v67)
      {
        break;
      }

      if (v64 >= v67)
      {
        v118 = v62;
        v120 = v61;
        v68 = v63 + v64;
        v69 = *v66;
        v70 = v63;
        while (1)
        {
          v71 = v64 - v67;
          if (v71 == -1)
          {
            goto LABEL_232;
          }

          v72 = memchr(v70, v69, v71 + 1);
          if (!v72)
          {
            goto LABEL_232;
          }

          v73 = v72;
          if (!memcmp(v72, v66, v67))
          {
            break;
          }

          v70 = (v73 + 1);
          v64 = v68 - (v73 + 1);
          if (v64 < v67)
          {
            goto LABEL_232;
          }
        }

        if (v73 == v68)
        {
          goto LABEL_232;
        }

        v74 = v73 - v63;
        v62 = v118;
        v61 = v120;
        if (v73 - v63 != -1)
        {
          goto LABEL_143;
        }
      }

LABEL_233:
      v59 = *v59;
      if (!v59)
      {
        goto LABEL_234;
      }
    }

    v74 = 0;
LABEL_143:
    v75 = (v59 + 5);
    while (1)
    {
      if ((v60 & 0x80u) == 0)
      {
        v76 = &__str;
      }

      else
      {
        v76 = v61;
      }

      v77 = v76 + v74;
      v78 = *(v77 - 1);
      if ((v78 & 0x80000000) != 0)
      {
        v80 = __maskrune(*(v77 - 1), 0x4000uLL);
        v79 = MEMORY[0x29EDCA600];
        v65 = *(v59 + 39);
      }

      else
      {
        v79 = MEMORY[0x29EDCA600];
        v80 = *(MEMORY[0x29EDCA600] + 4 * v78 + 60) & 0x4000;
      }

      v82 = (v78 & 0xFFFFFFFB) == 0x28 || v80 != 0;
      if ((v65 & 0x80) != 0)
      {
        v65 = v59[3];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v83 = &__str;
      }

      else
      {
        v83 = __str.__r_.__value_.__r.__words[0];
      }

      v84 = v83 + v65;
      v85 = v84[v74];
      if ((v85 & 0x80000000) != 0)
      {
        v86 = __maskrune(v84[v74], 0x4000uLL);
      }

      else
      {
        v86 = *(v79 + 4 * v85 + 60) & 0x4000;
      }

      v89 = ((v85 & 0xFFFFFFFE) == 0x28 || v85 == 44 || v86 != 0) && v82;
      v90 = *(v59 + 39);
      v65 = *(v59 + 39);
      if (v89)
      {
        if (v90 < 0)
        {
          v65 = v59[3];
        }

        v91 = *(v59 + 63);
        if (v91 >= 0)
        {
          v92 = v75;
        }

        else
        {
          v92 = v59[5];
        }

        if (v91 >= 0)
        {
          v93 = *(v59 + 63);
        }

        else
        {
          v93 = v59[6];
        }

        std::string::replace(&__str, v74, v65, v92, v93);
        v94 = *(v59 + 63);
        if (v94 < 0)
        {
          v94 = v59[6];
        }

        v74 += v94;
        v60 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        v62 = __str.__r_.__value_.__l.__size_;
        v61 = __str.__r_.__value_.__r.__words[0];
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v95 = &__str;
        }

        else
        {
          v95 = __str.__r_.__value_.__r.__words[0];
        }

        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v96 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v96 = __str.__r_.__value_.__l.__size_;
        }

        v65 = *(v59 + 39);
        if ((v65 & 0x80u) == 0)
        {
          v97 = (v59 + 2);
        }

        else
        {
          v97 = v59[2];
        }

        if ((v65 & 0x80u) == 0)
        {
          v98 = *(v59 + 39);
        }

        else
        {
          v98 = v59[3];
        }

        v99 = v96 - v74;
        if (v96 < v74)
        {
          goto LABEL_233;
        }

        if (v98)
        {
          if (v99 < v98)
          {
            goto LABEL_233;
          }

          v118 = __str.__r_.__value_.__l.__size_;
          v120 = __str.__r_.__value_.__r.__words[0];
          v100 = v95 + v96;
          v101 = v95 + v74;
          v102 = *v97;
          do
          {
            v103 = v99 - v98;
            if (v103 == -1)
            {
              break;
            }

            v104 = memchr(v101, v102, v103 + 1);
            if (!v104)
            {
              break;
            }

            v105 = v104;
            if (!memcmp(v104, v97, v98))
            {
              goto LABEL_225;
            }

            v101 = v105 + 1;
            v99 = v100 - (v105 + 1);
          }

          while (v99 >= v98);
          goto LABEL_232;
        }
      }

      else
      {
        v106 = *(v59 + 39);
        if (v90 < 0)
        {
          v106 = v59[3];
        }

        v74 += v106;
        v60 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        v62 = __str.__r_.__value_.__l.__size_;
        v61 = __str.__r_.__value_.__r.__words[0];
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v95 = &__str;
        }

        else
        {
          v95 = __str.__r_.__value_.__r.__words[0];
        }

        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v107 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v107 = __str.__r_.__value_.__l.__size_;
        }

        if (v90 >= 0)
        {
          v108 = (v59 + 2);
        }

        else
        {
          v108 = v59[2];
        }

        v109 = v107 - v74;
        if (v107 < v74)
        {
          goto LABEL_233;
        }

        if (v106)
        {
          if (v109 < v106)
          {
            goto LABEL_233;
          }

          v118 = __str.__r_.__value_.__l.__size_;
          v120 = __str.__r_.__value_.__r.__words[0];
          v100 = v95 + v107;
          v110 = v95 + v74;
          v111 = *v108;
          do
          {
            v112 = v109 - v106;
            if (v112 == -1)
            {
              break;
            }

            v113 = memchr(v110, v111, v112 + 1);
            if (!v113)
            {
              break;
            }

            v105 = v113;
            if (!memcmp(v113, v108, v106))
            {
LABEL_225:
              if (v105 == v100)
              {
                break;
              }

              v74 = v105 - v95;
              v62 = v118;
              v61 = v120;
              v75 = (v59 + 5);
              goto LABEL_227;
            }

            v110 = v105 + 1;
            v109 = v100 - (v105 + 1);
          }

          while (v109 >= v106);
LABEL_232:
          v62 = v118;
          v61 = v120;
          goto LABEL_233;
        }
      }

LABEL_227:
      if (v74 == -1)
      {
        goto LABEL_233;
      }
    }
  }

LABEL_234:
  std::string::operator=((v114 + 400), &__str);
  sub_29A89AD9C(&v125);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_29B252108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  sub_29A89AD9C(&__p);
  if (*(v37 - 89) < 0)
  {
    operator delete(*(v37 - 112));
  }

  _Unwind_Resume(a1);
}

void sub_29B252208(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, char a6)
{
  if (a5)
  {
    sub_29A008E78(&v324, off_2A14FE4E0[0]);
    v10 = sub_29B240AA4(a3, &v324);
    v11 = ((v10[12] - v10[11]) >> 3) & ~(((v10[12] - v10[11]) >> 3) >> 31);
    if (SHIBYTE(v325) < 0)
    {
      operator delete(v324);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_29A008E78(v334, "");
  v12 = strlen(off_2A14FE6F8);
  v13 = v12;
  v14 = *(a3 + 23);
  if (v14 < 0)
  {
    if (v12 != *(a3 + 8))
    {
      goto LABEL_12;
    }

    if (v12 == -1)
    {
      sub_29A0F26CC();
    }

    v15 = *a3;
  }

  else
  {
    v15 = a3;
    if (v13 != v14)
    {
      goto LABEL_12;
    }
  }

  if (!memcmp(v15, off_2A14FE6F8, v13))
  {
    if (a4 == 2)
    {
      sub_29A008E78(&v324, "vec4 gl_FragCoord");
      (*(*a1 + 80))(a1, &v324, a3, 1);
      if (SHIBYTE(v325) < 0)
      {
        operator delete(v324);
      }
    }

    else if (a4 == 4)
    {
      sub_29A008E78(&v324, "gl_FragCoord(");
      (*(*a1 + 72))(a1, &v324, a3);
      if (SHIBYTE(v325) < 0)
      {
        operator delete(v324);
      }

      sub_29A008E78(v332, off_2A14FE4E8[0]);
      v295 = sub_29B240AA4(a3, v332);
      v296 = v295;
      if (*(v295 + 47) >= 0)
      {
        v297 = *(v295 + 47);
      }

      else
      {
        v297 = v295[4];
      }

      v298 = &v324;
      sub_29A022DE0(&v324, v297 + 5);
      if (v325 < 0)
      {
        v298 = v324;
      }

      if (v297)
      {
        if (*(v296 + 47) >= 0)
        {
          v299 = v296 + 3;
        }

        else
        {
          v299 = v296[3];
        }

        memmove(v298, v299, v297);
      }

      strcpy(v298 + v297, ".pos)");
      (*(*a1 + 80))(a1, &v324, a3, 0);
      if (SHIBYTE(v325) < 0)
      {
        operator delete(v324);
      }

      if (v333 < 0)
      {
        operator delete(v332[0]);
      }

      MEMORY[0x29C2C1A60](v334, ",");
    }
  }

LABEL_12:
  if (a5)
  {
    sub_29A008E78(v332, off_2A14FE4E0[0]);
  }

  else
  {
    sub_29A008E78(v332, off_2A14FE4E8[0]);
  }

  v16 = sub_29B240AA4(a3, v332);
  sub_29B227040(&v324, v16);
  v307 = a5;
  v308 = v11;
  if (a5)
  {
    if ((v333 & 0x80000000) == 0)
    {
      if (!a4)
      {
        goto LABEL_110;
      }

      goto LABEL_26;
    }

    operator delete(v332[0]);
    if (a4)
    {
LABEL_26:
      v17 = v330;
      v18 = v331;
      if (v330 == v331)
      {
        goto LABEL_135;
      }

      v19 = a4 == 3 || a4 == 2;
      v20 = "\n";
      if (a4 == 3)
      {
        v20 = ", ";
      }

      __s = v20;
      while (1)
      {
        (*(*a1 + 72))(a1, v334, a3);
        if (a4 == 1)
        {
          break;
        }

        if (v19)
        {
          v30 = sub_29B2438AC(a1[1], *(*v17 + 24));
          v31 = v30;
          if (*(v30 + 23) >= 0)
          {
            v32 = *(v30 + 23);
          }

          else
          {
            v32 = *(v30 + 8);
          }

          sub_29A022DE0(&__dst, v32 + 1);
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst.__r_.__value_.__r.__words[0];
          }

          if (v32)
          {
            if (v31[23] >= 0)
            {
              v34 = v31;
            }

            else
            {
              v34 = *v31;
            }

            memmove(p_dst, v34, v32);
          }

          *(&p_dst->__r_.__value_.__l.__data_ + v32) = 32;
          v35 = *(*v17 + 55);
          if (v35 >= 0)
          {
            v36 = (*v17 + 32);
          }

          else
          {
            v36 = *(*v17 + 32);
          }

          if (v35 >= 0)
          {
            v37 = *(*v17 + 55);
          }

          else
          {
            v37 = *(*v17 + 40);
          }

          v38 = std::string::append(&__dst, v36, v37);
          v39 = *&v38->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v39;
          v38->__r_.__value_.__l.__size_ = 0;
          v38->__r_.__value_.__r.__words[2] = 0;
          v38->__r_.__value_.__r.__words[0] = 0;
          (*(*a1 + 80))(a1, &__p, a3, a4 != 3);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          v40 = __s;
          goto LABEL_103;
        }

        if (a4 == 4)
        {
          v41 = *v17;
          if (*(*v17 + 55) >= 0)
          {
            v42 = *(*v17 + 55);
          }

          else
          {
            v42 = *(*v17 + 40);
          }

          sub_29A022DE0(&v321, v42 + 1);
          if ((v321.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v43 = &v321;
          }

          else
          {
            v43 = v321.__r_.__value_.__r.__words[0];
          }

          if (v42)
          {
            if (*(v41 + 55) >= 0)
            {
              v44 = (v41 + 32);
            }

            else
            {
              v44 = *(v41 + 32);
            }

            memmove(v43, v44, v42);
          }

          *(&v43->__r_.__value_.__l.__data_ + v42) = 40;
          v45 = *(*v17 + 55);
          if (v45 >= 0)
          {
            v46 = (*v17 + 32);
          }

          else
          {
            v46 = *(*v17 + 32);
          }

          if (v45 >= 0)
          {
            v47 = *(*v17 + 55);
          }

          else
          {
            v47 = *(*v17 + 40);
          }

          v48 = std::string::append(&v321, v46, v47);
          v49 = *&v48->__r_.__value_.__l.__data_;
          __dst.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
          *&__dst.__r_.__value_.__l.__data_ = v49;
          v48->__r_.__value_.__l.__size_ = 0;
          v48->__r_.__value_.__r.__words[2] = 0;
          v48->__r_.__value_.__r.__words[0] = 0;
          v50 = std::string::append(&__dst, ")");
          v51 = *&v50->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v50->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v51;
          v50->__r_.__value_.__l.__size_ = 0;
          v50->__r_.__value_.__r.__words[2] = 0;
          v50->__r_.__value_.__r.__words[0] = 0;
          (*(*a1 + 80))(a1, &__p, a3, 0);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          if ((SHIBYTE(v321.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_102:
            v40 = ", ";
LABEL_103:
            MEMORY[0x29C2C1A60](v334, v40);
            goto LABEL_104;
          }

          v29 = v321.__r_.__value_.__r.__words[0];
LABEL_55:
          operator delete(v29);
          goto LABEL_102;
        }

LABEL_104:
        v17 += 8;
        if (v17 == v18)
        {
          goto LABEL_135;
        }
      }

      if ((v328 & 0x80u) == 0)
      {
        v21 = v328;
      }

      else
      {
        v21 = v327;
      }

      sub_29A022DE0(&__dst, v21 + 1);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &__dst;
      }

      else
      {
        v22 = __dst.__r_.__value_.__r.__words[0];
      }

      if (v21)
      {
        if ((v328 & 0x80u) == 0)
        {
          v23 = &v326;
        }

        else
        {
          v23 = v326;
        }

        memmove(v22, v23, v21);
      }

      *(&v22->__r_.__value_.__l.__data_ + v21) = 46;
      v24 = *(*v17 + 55);
      if (v24 >= 0)
      {
        v25 = (*v17 + 32);
      }

      else
      {
        v25 = *(*v17 + 32);
      }

      if (v24 >= 0)
      {
        v26 = *(*v17 + 55);
      }

      else
      {
        v26 = *(*v17 + 40);
      }

      v27 = std::string::append(&__dst, v25, v26);
      v28 = *&v27->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v28;
      v27->__r_.__value_.__l.__size_ = 0;
      v27->__r_.__value_.__r.__words[2] = 0;
      v27->__r_.__value_.__r.__words[0] = 0;
      (*(*a1 + 72))(a1, &__p, a3);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_102;
      }

      v29 = __dst.__r_.__value_.__r.__words[0];
      goto LABEL_55;
    }

LABEL_110:
    if (v325 >= 0)
    {
      v52 = HIBYTE(v325);
    }

    else
    {
      v52 = *(&v324 + 1);
    }

    v53 = &v321;
    sub_29A022DE0(&v321, v52 + 1);
    if ((v321.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v53 = v321.__r_.__value_.__r.__words[0];
    }

    if (v52)
    {
      if (v325 >= 0)
      {
        v54 = &v324;
      }

      else
      {
        v54 = v324;
      }

      memmove(v53, v54, v52);
    }

    *(&v53->__r_.__value_.__l.__data_ + v52) = 32;
    if ((v328 & 0x80u) == 0)
    {
      v55 = &v326;
    }

    else
    {
      v55 = v326;
    }

    if ((v328 & 0x80u) == 0)
    {
      v56 = v328;
    }

    else
    {
      v56 = v327;
    }

    v57 = std::string::append(&v321, v55, v56);
    v58 = *&v57->__r_.__value_.__l.__data_;
    __dst.__r_.__value_.__r.__words[2] = v57->__r_.__value_.__r.__words[2];
    *&__dst.__r_.__value_.__l.__data_ = v58;
    v57->__r_.__value_.__l.__size_ = 0;
    v57->__r_.__value_.__r.__words[2] = 0;
    v57->__r_.__value_.__r.__words[0] = 0;
    v59 = std::string::append(&__dst, " [[ stage_in ]]");
    v60 = *&v59->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v59->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v60;
    v59->__r_.__value_.__l.__size_ = 0;
    v59->__r_.__value_.__r.__words[2] = 0;
    v59->__r_.__value_.__r.__words[0] = 0;
    (*(*a1 + 72))(a1, &__p, a3);
LABEL_127:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v321.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v321.__r_.__value_.__l.__data_);
    }

    goto LABEL_133;
  }

  if (v333 < 0)
  {
    operator delete(v332[0]);
    if (!a4)
    {
      goto LABEL_110;
    }
  }

  else if (!a4)
  {
    goto LABEL_110;
  }

  (*(*a1 + 72))(a1, v334, a3);
  switch(a4)
  {
    case 1u:
      (*(*a1 + 72))(a1, &v326, a3);
LABEL_133:
      v61 = ", ";
LABEL_134:
      MEMORY[0x29C2C1A60](v334, v61);
      break;
    case 2u:
    case 3u:
      if (v325 >= 0)
      {
        v300 = HIBYTE(v325);
      }

      else
      {
        v300 = *(&v324 + 1);
      }

      v301 = &__dst;
      sub_29A022DE0(&__dst, v300 + 1);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v301 = __dst.__r_.__value_.__r.__words[0];
      }

      if (v300)
      {
        if (v325 >= 0)
        {
          v302 = &v324;
        }

        else
        {
          v302 = v324;
        }

        memmove(v301, v302, v300);
      }

      *(&v301->__r_.__value_.__l.__data_ + v300) = 32;
      if ((v328 & 0x80u) == 0)
      {
        v303 = &v326;
      }

      else
      {
        v303 = v326;
      }

      if ((v328 & 0x80u) == 0)
      {
        v304 = v328;
      }

      else
      {
        v304 = v327;
      }

      v305 = std::string::append(&__dst, v303, v304);
      v306 = *&v305->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v305->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v306;
      v305->__r_.__value_.__l.__size_ = 0;
      v305->__r_.__value_.__r.__words[2] = 0;
      v305->__r_.__value_.__r.__words[0] = 0;
      (*(*a1 + 80))(a1, &__p, a3, a4 != 3);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      if (a4 == 3)
      {
        v61 = ", ";
      }

      else
      {
        v61 = "\n";
      }

      goto LABEL_134;
    case 4u:
      if ((v328 & 0x80u) == 0)
      {
        v286 = v328;
      }

      else
      {
        v286 = v327;
      }

      v287 = &v321;
      sub_29A022DE0(&v321, v286 + 1);
      if ((v321.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v287 = v321.__r_.__value_.__r.__words[0];
      }

      if (v286)
      {
        if ((v328 & 0x80u) == 0)
        {
          v288 = &v326;
        }

        else
        {
          v288 = v326;
        }

        memmove(v287, v288, v286);
      }

      *(&v287->__r_.__value_.__l.__data_ + v286) = 40;
      if ((v328 & 0x80u) == 0)
      {
        v289 = &v326;
      }

      else
      {
        v289 = v326;
      }

      if ((v328 & 0x80u) == 0)
      {
        v290 = v328;
      }

      else
      {
        v290 = v327;
      }

      v291 = std::string::append(&v321, v289, v290);
      v292 = *&v291->__r_.__value_.__l.__data_;
      __dst.__r_.__value_.__r.__words[2] = v291->__r_.__value_.__r.__words[2];
      *&__dst.__r_.__value_.__l.__data_ = v292;
      v291->__r_.__value_.__l.__size_ = 0;
      v291->__r_.__value_.__r.__words[2] = 0;
      v291->__r_.__value_.__r.__words[0] = 0;
      v293 = std::string::append(&__dst, ")");
      v294 = *&v293->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v293->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v294;
      v293->__r_.__value_.__l.__size_ = 0;
      v293->__r_.__value_.__r.__words[2] = 0;
      v293->__r_.__value_.__r.__words[0] = 0;
      (*(*a1 + 80))(a1, &__p, a3, 0);
      goto LABEL_127;
  }

LABEL_135:
  if (v330)
  {
    v331 = v330;
    operator delete(v330);
  }

  sub_29AD97000(&v329);
  if (v328 < 0)
  {
    operator delete(v326);
  }

  if (SHIBYTE(v325) < 0)
  {
    operator delete(v324);
  }

  v62 = *(a3 + 296);
  if (v62)
  {
    __val = 0;
    v63 = a4 == 2;
    if (a4 == 3)
    {
      v63 = 1;
    }

    v314 = v63;
    v64 = ";";
    if (a4 == 3)
    {
      v64 = "";
    }

    __sa = v64;
    while (1)
    {
      v65 = v62[5];
      v66 = strlen(off_2A14FE500[0]);
      v67 = v66;
      v68 = *(v65 + 23);
      if (v68 < 0)
      {
        if (v66 != *(v65 + 8))
        {
          break;
        }

        if (v66 == -1)
        {
          sub_29A0F26CC();
        }

        v69 = *v65;
      }

      else
      {
        v69 = v62[5];
        if (v67 != v68)
        {
          break;
        }
      }

      v70 = memcmp(v69, off_2A14FE500[0], v67);
      if ((a6 & 1) == 0 && !v70)
      {
        goto LABEL_534;
      }

      if (v70)
      {
        break;
      }

      (*(*a1 + 72))(a1, v334, a3);
      if (!a4)
      {
        v197 = (*(*a1[1] + 80))(a1[1]);
        v198 = v197;
        if (*(v197 + 23) >= 0)
        {
          v199 = *(v197 + 23);
        }

        else
        {
          v199 = *(v197 + 8);
        }

        sub_29A022DE0(&v316, v199 + 1);
        if ((v316.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v200 = &v316;
        }

        else
        {
          v200 = v316.__r_.__value_.__r.__words[0];
        }

        if (v199)
        {
          if (v198[23] >= 0)
          {
            v201 = v198;
          }

          else
          {
            v201 = *v198;
          }

          memmove(v200, v201, v199);
        }

        *(&v200->__r_.__value_.__l.__data_ + v199) = 32;
        v202 = *(v65 + 23);
        if (v202 >= 0)
        {
          v203 = v65;
        }

        else
        {
          v203 = *v65;
        }

        if (v202 >= 0)
        {
          v204 = *(v65 + 23);
        }

        else
        {
          v204 = *(v65 + 8);
        }

        v205 = std::string::append(&v316, v203, v204);
        v206 = *&v205->__r_.__value_.__l.__data_;
        v317.__r_.__value_.__r.__words[2] = v205->__r_.__value_.__r.__words[2];
        *&v317.__r_.__value_.__l.__data_ = v206;
        v205->__r_.__value_.__l.__size_ = 0;
        v205->__r_.__value_.__r.__words[2] = 0;
        v205->__r_.__value_.__r.__words[0] = 0;
        v207 = std::string::append(&v317, "_");
        v208 = *&v207->__r_.__value_.__l.__data_;
        v318.__r_.__value_.__r.__words[2] = v207->__r_.__value_.__r.__words[2];
        *&v318.__r_.__value_.__l.__data_ = v208;
        v207->__r_.__value_.__l.__size_ = 0;
        v207->__r_.__value_.__r.__words[2] = 0;
        v207->__r_.__value_.__r.__words[0] = 0;
        v209 = *(a3 + 23);
        if (v209 >= 0)
        {
          v210 = a3;
        }

        else
        {
          v210 = *a3;
        }

        if (v209 >= 0)
        {
          v211 = *(a3 + 23);
        }

        else
        {
          v211 = *(a3 + 8);
        }

        v212 = std::string::append(&v318, v210, v211);
        v213 = *&v212->__r_.__value_.__l.__data_;
        v319.__r_.__value_.__r.__words[2] = v212->__r_.__value_.__r.__words[2];
        *&v319.__r_.__value_.__l.__data_ = v213;
        v212->__r_.__value_.__l.__size_ = 0;
        v212->__r_.__value_.__r.__words[2] = 0;
        v212->__r_.__value_.__r.__words[0] = 0;
        v214 = std::string::append(&v319, "& ");
        v215 = *&v214->__r_.__value_.__l.__data_;
        v320.__r_.__value_.__r.__words[2] = v214->__r_.__value_.__r.__words[2];
        *&v320.__r_.__value_.__l.__data_ = v215;
        v214->__r_.__value_.__l.__size_ = 0;
        v214->__r_.__value_.__r.__words[2] = 0;
        v214->__r_.__value_.__r.__words[0] = 0;
        v218 = *(v65 + 24);
        v217 = v65 + 24;
        v216 = v218;
        v219 = *(v217 + 23);
        if (v219 >= 0)
        {
          v220 = v217;
        }

        else
        {
          v220 = v216;
        }

        if (v219 >= 0)
        {
          v221 = *(v217 + 23);
        }

        else
        {
          v221 = *(v217 + 8);
        }

        v222 = std::string::append(&v320, v220, v221);
        v223 = *&v222->__r_.__value_.__l.__data_;
        v321.__r_.__value_.__r.__words[2] = v222->__r_.__value_.__r.__words[2];
        *&v321.__r_.__value_.__l.__data_ = v223;
        v222->__r_.__value_.__l.__size_ = 0;
        v222->__r_.__value_.__r.__words[2] = 0;
        v222->__r_.__value_.__r.__words[0] = 0;
        v224 = std::string::append(&v321, "[[ buffer(");
        v225 = *&v224->__r_.__value_.__l.__data_;
        __dst.__r_.__value_.__r.__words[2] = v224->__r_.__value_.__r.__words[2];
        *&__dst.__r_.__value_.__l.__data_ = v225;
        v224->__r_.__value_.__l.__size_ = 0;
        v224->__r_.__value_.__r.__words[2] = 0;
        v224->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v315, v308);
        if ((v315.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v226 = &v315;
        }

        else
        {
          v226 = v315.__r_.__value_.__r.__words[0];
        }

        if ((v315.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v315.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v315.__r_.__value_.__l.__size_;
        }

        v228 = std::string::append(&__dst, v226, size);
        v229 = *&v228->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v228->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v229;
        v228->__r_.__value_.__l.__size_ = 0;
        v228->__r_.__value_.__r.__words[2] = 0;
        v228->__r_.__value_.__r.__words[0] = 0;
        v230 = std::string::append(&__p, ") ]]");
        v231 = *&v230->__r_.__value_.__l.__data_;
        v325 = v230->__r_.__value_.__r.__words[2];
        v324 = v231;
        v230->__r_.__value_.__l.__size_ = 0;
        v230->__r_.__value_.__r.__words[2] = 0;
        v230->__r_.__value_.__r.__words[0] = 0;
        (*(*a1 + 72))(a1, &v324, a3);
        if (SHIBYTE(v325) < 0)
        {
          operator delete(v324);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v315.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v315.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v321.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v321.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v320.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v320.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v319.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v319.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v318.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v318.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v317.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v317.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v316.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v316.__r_.__value_.__l.__data_);
        }

        ++v308;
        goto LABEL_533;
      }

      if (a4 == 1)
      {
        if (*(v65 + 47) >= 0)
        {
          v189 = *(v65 + 47);
        }

        else
        {
          v189 = *(v65 + 32);
        }

        sub_29A022DE0(&__p, v189 + 1);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if (v189)
        {
          if (*(v65 + 47) >= 0)
          {
            v191 = (v65 + 24);
          }

          else
          {
            v191 = *(v65 + 24);
          }

          memmove(p_p, v191, v189);
        }

        *(&p_p->__r_.__value_.__l.__data_ + v189) = 46;
        v192 = *(v65 + 47);
        if (v192 >= 0)
        {
          v193 = (v65 + 24);
        }

        else
        {
          v193 = *(v65 + 24);
        }

        if (v192 >= 0)
        {
          v194 = *(v65 + 47);
        }

        else
        {
          v194 = *(v65 + 32);
        }

        v195 = std::string::append(&__p, v193, v194);
        v196 = *&v195->__r_.__value_.__l.__data_;
        v325 = v195->__r_.__value_.__r.__words[2];
        v324 = v196;
        v195->__r_.__value_.__l.__size_ = 0;
        v195->__r_.__value_.__r.__words[2] = 0;
        v195->__r_.__value_.__r.__words[0] = 0;
        (*(*a1 + 80))(a1, &v324, a3, 0);
        if (SHIBYTE(v325) < 0)
        {
          operator delete(v324);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_533;
      }

      if (v314)
      {
        sub_29A008E78(&__dst, off_2A14FE4D8[0]);
        v232 = std::string::insert(&__dst, 0, "[");
        v233 = *&v232->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v232->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v233;
        v232->__r_.__value_.__l.__size_ = 0;
        v232->__r_.__value_.__r.__words[2] = 0;
        v232->__r_.__value_.__r.__words[0] = 0;
        v234 = std::string::append(&__p, "]");
        v235 = *&v234->__r_.__value_.__l.__data_;
        v325 = v234->__r_.__value_.__r.__words[2];
        v324 = v235;
        v234->__r_.__value_.__l.__size_ = 0;
        v234->__r_.__value_.__r.__words[2] = 0;
        v234->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (a4 == 3)
        {
          v249 = (*(*a1[1] + 80))(a1[1]);
          v250 = v249;
          if (*(v249 + 23) >= 0)
          {
            v251 = *(v249 + 23);
          }

          else
          {
            v251 = *(v249 + 8);
          }

          sub_29A022DE0(&v319, v251 + 1);
          if ((v319.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v252 = &v319;
          }

          else
          {
            v252 = v319.__r_.__value_.__r.__words[0];
          }

          if (v251)
          {
            if (v250[23] >= 0)
            {
              v253 = v250;
            }

            else
            {
              v253 = *v250;
            }

            memmove(v252, v253, v251);
          }

          *(&v252->__r_.__value_.__l.__data_ + v251) = 32;
        }

        else
        {
          memset(&v319, 0, sizeof(v319));
        }

        v254 = *(v65 + 23);
        if (v254 >= 0)
        {
          v255 = v65;
        }

        else
        {
          v255 = *v65;
        }

        if (v254 >= 0)
        {
          v256 = *(v65 + 23);
        }

        else
        {
          v256 = *(v65 + 8);
        }

        v257 = std::string::append(&v319, v255, v256);
        v258 = *&v257->__r_.__value_.__l.__data_;
        v320.__r_.__value_.__r.__words[2] = v257->__r_.__value_.__r.__words[2];
        *&v320.__r_.__value_.__l.__data_ = v258;
        v257->__r_.__value_.__l.__size_ = 0;
        v257->__r_.__value_.__r.__words[2] = 0;
        v257->__r_.__value_.__r.__words[0] = 0;
        v259 = std::string::append(&v320, " ");
        v260 = *&v259->__r_.__value_.__l.__data_;
        v321.__r_.__value_.__r.__words[2] = v259->__r_.__value_.__r.__words[2];
        *&v321.__r_.__value_.__l.__data_ = v260;
        v259->__r_.__value_.__l.__size_ = 0;
        v259->__r_.__value_.__r.__words[2] = 0;
        v259->__r_.__value_.__r.__words[0] = 0;
        v263 = *(v65 + 24);
        v262 = v65 + 24;
        v261 = v263;
        v264 = *(v262 + 23);
        if (v264 >= 0)
        {
          v265 = v262;
        }

        else
        {
          v265 = v261;
        }

        if (v264 >= 0)
        {
          v266 = *(v262 + 23);
        }

        else
        {
          v266 = *(v262 + 8);
        }

        v267 = std::string::append(&v321, v265, v266);
        v268 = *&v267->__r_.__value_.__l.__data_;
        __dst.__r_.__value_.__r.__words[2] = v267->__r_.__value_.__r.__words[2];
        *&__dst.__r_.__value_.__l.__data_ = v268;
        v267->__r_.__value_.__l.__size_ = 0;
        v267->__r_.__value_.__r.__words[2] = 0;
        v267->__r_.__value_.__r.__words[0] = 0;
        if (v325 >= 0)
        {
          v269 = &v324;
        }

        else
        {
          v269 = v324;
        }

        if (v325 >= 0)
        {
          v270 = HIBYTE(v325);
        }

        else
        {
          v270 = *(&v324 + 1);
        }

        v271 = std::string::append(&__dst, v269, v270);
        v272 = *&v271->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v271->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v272;
        v271->__r_.__value_.__l.__size_ = 0;
        v271->__r_.__value_.__r.__words[2] = 0;
        v271->__r_.__value_.__r.__words[0] = 0;
        (*(*a1 + 80))(a1, &__p, a3, a4 != 3);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v321.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v321.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v320.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v320.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v319.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v319.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v325) < 0)
        {
          operator delete(v324);
        }

        goto LABEL_530;
      }

      if (a4 == 4)
      {
        v236 = *(a2 + 140);
        (*(*a1 + 80))(a1, v65 + 24, a3, 0);
        (*(*a1 + 32))(a1, a3, 1);
        v237 = 0;
        if (v236 <= 1)
        {
          v238 = 1;
        }

        else
        {
          v238 = v236;
        }

        do
        {
          if (v237)
          {
            v239 = ", ";
          }

          else
          {
            v239 = "";
          }

          sub_29A008E78(&v324, v239);
          (*(*a1 + 72))(a1, &v324, a3);
          if (SHIBYTE(v325) < 0)
          {
            operator delete(v324);
          }

          if (*(v65 + 47) >= 0)
          {
            v240 = *(v65 + 47);
          }

          else
          {
            v240 = *(v65 + 32);
          }

          sub_29A022DE0(&__dst, v240 + 1);
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v241 = &__dst;
          }

          else
          {
            v241 = __dst.__r_.__value_.__r.__words[0];
          }

          if (v240)
          {
            if (*(v65 + 47) >= 0)
            {
              v242 = (v65 + 24);
            }

            else
            {
              v242 = *(v65 + 24);
            }

            memmove(v241, v242, v240);
          }

          *(&v241->__r_.__value_.__l.__data_ + v240) = 91;
          std::to_string(&v321, v237);
          if ((v321.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v243 = &v321;
          }

          else
          {
            v243 = v321.__r_.__value_.__r.__words[0];
          }

          if ((v321.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v244 = HIBYTE(v321.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v244 = v321.__r_.__value_.__l.__size_;
          }

          v245 = std::string::append(&__dst, v243, v244);
          v246 = *&v245->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v245->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v246;
          v245->__r_.__value_.__l.__size_ = 0;
          v245->__r_.__value_.__r.__words[2] = 0;
          v245->__r_.__value_.__r.__words[0] = 0;
          v247 = std::string::append(&__p, "]");
          v248 = *&v247->__r_.__value_.__l.__data_;
          v325 = v247->__r_.__value_.__r.__words[2];
          v324 = v248;
          v247->__r_.__value_.__l.__size_ = 0;
          v247->__r_.__value_.__r.__words[2] = 0;
          v247->__r_.__value_.__r.__words[0] = 0;
          (*(*a1 + 80))(a1, &v324, a3, 0);
          if (SHIBYTE(v325) < 0)
          {
            operator delete(v324);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v321.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v321.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          ++v237;
        }

        while (v238 != v237);
        (*(*a1 + 40))(a1, a3, 0, 1);
        goto LABEL_530;
      }

LABEL_531:
      if (a4 > 4 || ((1 << a4) & 0x13) == 0)
      {
        MEMORY[0x29C2C1A60](v334, "\n");
        goto LABEL_534;
      }

LABEL_533:
      MEMORY[0x29C2C1A60](v334, ", ");
LABEL_534:
      v62 = *v62;
      if (!v62)
      {
        goto LABEL_537;
      }
    }

    v71 = *(v65 + 88);
    v72 = *(v65 + 96);
    if (a4)
    {
      if (v71 != v72)
      {
        v73 = 0;
        while (1)
        {
          v74 = *(v71[v73] + 24);
          if (v74 != sub_29B24805C())
          {
            break;
          }

          if (a4 == 1)
          {
            (*(*a1 + 72))(a1, v334, a3);
            sub_29A008E78(&v324, "MetalTexture");
            (*(*a1 + 72))(a1, &v324, a3);
            if (SHIBYTE(v325) < 0)
            {
              operator delete(v324);
            }

            (*(*a1 + 32))(a1, a3, 1);
            v87 = *(*(v65 + 88) + 8 * v73);
            if (*(v87 + 127) < 0)
            {
              sub_29A008D14(&__p, *(v87 + 104), *(v87 + 112));
            }

            else
            {
              __p = *(v87 + 104);
            }

            v136 = std::string::append(&__p, "_tex");
            v137 = *&v136->__r_.__value_.__l.__data_;
            v325 = v136->__r_.__value_.__r.__words[2];
            v324 = v137;
            v136->__r_.__value_.__l.__size_ = 0;
            v136->__r_.__value_.__r.__words[2] = 0;
            v136->__r_.__value_.__r.__words[0] = 0;
            (*(*a1 + 72))(a1, &v324, a3);
            if (SHIBYTE(v325) < 0)
            {
              operator delete(v324);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            (*(*a1 + 72))(a1, v334, a3);
            v138 = *(*(v65 + 88) + 8 * v73);
            if (*(v138 + 127) < 0)
            {
              sub_29A008D14(&__p, *(v138 + 104), *(v138 + 112));
            }

            else
            {
              __p = *(v138 + 104);
            }

            v139 = std::string::append(&__p, "_sampler");
            v140 = *&v139->__r_.__value_.__l.__data_;
            v325 = v139->__r_.__value_.__r.__words[2];
            v324 = v140;
            v139->__r_.__value_.__l.__size_ = 0;
            v139->__r_.__value_.__r.__words[2] = 0;
            v139->__r_.__value_.__r.__words[0] = 0;
            (*(*a1 + 72))(a1, &v324, a3);
            if (SHIBYTE(v325) < 0)
            {
              operator delete(v324);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            (*(*a1 + 40))(a1, a3, 0, 1);
            goto LABEL_277;
          }

          if (v314)
          {
            (*(*a1 + 72))(a1, v334, a3);
            v103 = *(*(v65 + 88) + 8 * v73);
            v104 = sub_29B1F31FC();
            (*(*a1 + 208))(a1, v103, v104, a2, a3, 0);
            sub_29A008E78(&v324, __sa);
            (*(*a1 + 72))(a1, &v324, a3);
            if (SHIBYTE(v325) < 0)
            {
              operator delete(v324);
            }

LABEL_235:
            if (a4 == 3)
            {
              goto LABEL_277;
            }

            goto LABEL_236;
          }

          if (a4 == 4)
          {
            (*(*a1 + 72))(a1, v334, a3);
            v121 = *(*(v65 + 88) + 8 * v73);
            if (*(v121 + 127) >= 0)
            {
              v122 = *(v121 + 127);
            }

            else
            {
              v122 = *(v121 + 112);
            }

            sub_29A022DE0(&__dst, v122 + 1);
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v123 = &__dst;
            }

            else
            {
              v123 = __dst.__r_.__value_.__r.__words[0];
            }

            if (v122)
            {
              if (*(v121 + 127) >= 0)
              {
                v124 = (v121 + 104);
              }

              else
              {
                v124 = *(v121 + 104);
              }

              memmove(v123, v124, v122);
            }

            *(&v123->__r_.__value_.__l.__data_ + v122) = 40;
            v125 = *(*(v65 + 88) + 8 * v73);
            v128 = *(v125 + 104);
            v126 = v125 + 104;
            v127 = v128;
            v129 = *(v126 + 23);
            if (v129 >= 0)
            {
              v130 = v126;
            }

            else
            {
              v130 = v127;
            }

            if (v129 >= 0)
            {
              v131 = *(v126 + 23);
            }

            else
            {
              v131 = *(v126 + 8);
            }

            v132 = std::string::append(&__dst, v130, v131);
            v133 = *&v132->__r_.__value_.__l.__data_;
            __p.__r_.__value_.__r.__words[2] = v132->__r_.__value_.__r.__words[2];
            *&__p.__r_.__value_.__l.__data_ = v133;
            v132->__r_.__value_.__l.__size_ = 0;
            v132->__r_.__value_.__r.__words[2] = 0;
            v132->__r_.__value_.__r.__words[0] = 0;
            v134 = std::string::append(&__p, ")");
            v135 = *&v134->__r_.__value_.__l.__data_;
            v325 = v134->__r_.__value_.__r.__words[2];
            v324 = v135;
            v134->__r_.__value_.__l.__size_ = 0;
            v134->__r_.__value_.__r.__words[2] = 0;
            v134->__r_.__value_.__r.__words[0] = 0;
            (*(*a1 + 80))(a1, &v324, a3, 0);
            if (SHIBYTE(v325) < 0)
            {
              operator delete(v324);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            goto LABEL_277;
          }

LABEL_236:
          if (a4 != 1)
          {
            v120 = ", ";
            if (a4 != 4)
            {
              v120 = "\n";
              if (a4 != 2)
              {
                goto LABEL_279;
              }
            }

            goto LABEL_278;
          }

LABEL_277:
          v120 = ", ";
LABEL_278:
          MEMORY[0x29C2C1A60](v334, v120);
LABEL_279:
          ++v73;
          v71 = *(v65 + 88);
          if (v73 >= (*(v65 + 96) - v71) >> 3)
          {
            goto LABEL_530;
          }
        }

        (*(*a1 + 48))(a1, a3);
        (*(*a1 + 72))(a1, v334, a3);
        if (a4 == 1)
        {
          if (*(v65 + 47) >= 0)
          {
            v75 = *(v65 + 47);
          }

          else
          {
            v75 = *(v65 + 32);
          }

          sub_29A022DE0(&__p, v75 + 1);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v76 = &__p;
          }

          else
          {
            v76 = __p.__r_.__value_.__r.__words[0];
          }

          if (v75)
          {
            if (*(v65 + 47) >= 0)
            {
              v77 = (v65 + 24);
            }

            else
            {
              v77 = *(v65 + 24);
            }

            memmove(v76, v77, v75);
          }

          *(&v76->__r_.__value_.__l.__data_ + v75) = 46;
          v78 = *(*(v65 + 88) + 8 * v73);
          v81 = *(v78 + 104);
          v79 = v78 + 104;
          v80 = v81;
          v82 = *(v79 + 23);
          if (v82 >= 0)
          {
            v83 = v79;
          }

          else
          {
            v83 = v80;
          }

          if (v82 >= 0)
          {
            v84 = *(v79 + 23);
          }

          else
          {
            v84 = *(v79 + 8);
          }

          v85 = std::string::append(&__p, v83, v84);
          v86 = *&v85->__r_.__value_.__l.__data_;
          v325 = v85->__r_.__value_.__r.__words[2];
          v324 = v86;
          v85->__r_.__value_.__l.__size_ = 0;
          v85->__r_.__value_.__r.__words[2] = 0;
          v85->__r_.__value_.__r.__words[0] = 0;
          (*(*a1 + 72))(a1, &v324, a3);
          goto LABEL_203;
        }

        if (v314)
        {
          v88 = sub_29B2438AC(a1[1], *(*(*(v65 + 88) + 8 * v73) + 24));
          v89 = v88;
          if (*(v88 + 23) >= 0)
          {
            v90 = *(v88 + 23);
          }

          else
          {
            v90 = *(v88 + 8);
          }

          sub_29A022DE0(&__p, v90 + 1);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v91 = &__p;
          }

          else
          {
            v91 = __p.__r_.__value_.__r.__words[0];
          }

          if (v90)
          {
            if (v89[23] >= 0)
            {
              v92 = v89;
            }

            else
            {
              v92 = *v89;
            }

            memmove(v91, v92, v90);
          }

          *(&v91->__r_.__value_.__l.__data_ + v90) = 32;
          v93 = *(*(v65 + 88) + 8 * v73);
          v96 = *(v93 + 104);
          v94 = v93 + 104;
          v95 = v96;
          v97 = *(v94 + 23);
          if (v97 >= 0)
          {
            v98 = v94;
          }

          else
          {
            v98 = v95;
          }

          if (v97 >= 0)
          {
            v99 = *(v94 + 23);
          }

          else
          {
            v99 = *(v94 + 8);
          }

          v100 = std::string::append(&__p, v98, v99);
          v101 = *&v100->__r_.__value_.__l.__data_;
          v325 = v100->__r_.__value_.__r.__words[2];
          v324 = v101;
          v100->__r_.__value_.__l.__size_ = 0;
          v100->__r_.__value_.__r.__words[2] = 0;
          v100->__r_.__value_.__r.__words[0] = 0;
          (*(*a1 + 80))(a1, &v324, a3, a4 != 3);
LABEL_203:
          if (SHIBYTE(v325) < 0)
          {
            operator delete(v324);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            v102 = __p.__r_.__value_.__r.__words[0];
            goto LABEL_207;
          }
        }

        else if (a4 == 4)
        {
          v105 = *(*(v65 + 88) + 8 * v73);
          if (*(v105 + 127) >= 0)
          {
            v106 = *(v105 + 127);
          }

          else
          {
            v106 = *(v105 + 112);
          }

          sub_29A022DE0(&__dst, v106 + 1);
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v107 = &__dst;
          }

          else
          {
            v107 = __dst.__r_.__value_.__r.__words[0];
          }

          if (v106)
          {
            if (*(v105 + 127) >= 0)
            {
              v108 = (v105 + 104);
            }

            else
            {
              v108 = *(v105 + 104);
            }

            memmove(v107, v108, v106);
          }

          *(&v107->__r_.__value_.__l.__data_ + v106) = 40;
          v109 = *(*(v65 + 88) + 8 * v73);
          v112 = *(v109 + 104);
          v110 = v109 + 104;
          v111 = v112;
          v113 = *(v110 + 23);
          if (v113 >= 0)
          {
            v114 = v110;
          }

          else
          {
            v114 = v111;
          }

          if (v113 >= 0)
          {
            v115 = *(v110 + 23);
          }

          else
          {
            v115 = *(v110 + 8);
          }

          v116 = std::string::append(&__dst, v114, v115);
          v117 = *&v116->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v116->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v117;
          v116->__r_.__value_.__l.__size_ = 0;
          v116->__r_.__value_.__r.__words[2] = 0;
          v116->__r_.__value_.__r.__words[0] = 0;
          v118 = std::string::append(&__p, ")");
          v119 = *&v118->__r_.__value_.__l.__data_;
          v325 = v118->__r_.__value_.__r.__words[2];
          v324 = v119;
          v118->__r_.__value_.__l.__size_ = 0;
          v118->__r_.__value_.__r.__words[2] = 0;
          v118->__r_.__value_.__r.__words[0] = 0;
          (*(*a1 + 80))(a1, &v324, a3, 0);
          if (SHIBYTE(v325) < 0)
          {
            operator delete(v324);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            v102 = __dst.__r_.__value_.__r.__words[0];
LABEL_207:
            operator delete(v102);
          }
        }

        (*(*a1 + 56))(a1, a3, 0);
        goto LABEL_235;
      }
    }

    else
    {
      if (v71 == v72)
      {
        goto LABEL_533;
      }

      v141 = 0;
      do
      {
        while (1)
        {
          v142 = *v71;
          v143 = *(*v71 + 24);
          v144 = sub_29B24805C();
          if (sub_29A1B00DC(v143, v144))
          {
            break;
          }

          ++v71;
          v141 = 1;
          if (v71 == v72)
          {
            goto LABEL_319;
          }
        }

        (*(*a1 + 72))(a1, v334, a3);
        if (*(v142 + 127) < 0)
        {
          sub_29A008D14(&__dst, *(v142 + 104), *(v142 + 112));
        }

        else
        {
          __dst = *(v142 + 104);
        }

        v145 = std::string::append(&__dst, "_tex");
        v146 = *&v145->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v145->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v146;
        v145->__r_.__value_.__l.__size_ = 0;
        v145->__r_.__value_.__r.__words[2] = 0;
        v145->__r_.__value_.__r.__words[0] = 0;
        v147 = std::string::insert(&__p, 0, "texture2d<float> ");
        v148 = *&v147->__r_.__value_.__l.__data_;
        v325 = v147->__r_.__value_.__r.__words[2];
        v324 = v148;
        v147->__r_.__value_.__l.__size_ = 0;
        v147->__r_.__value_.__r.__words[2] = 0;
        v147->__r_.__value_.__r.__words[0] = 0;
        (*(*a1 + 72))(a1, &v324, a3);
        if (SHIBYTE(v325) < 0)
        {
          operator delete(v324);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        std::to_string(&__dst, __val);
        v149 = std::string::insert(&__dst, 0, " [[texture(");
        v150 = *&v149->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v149->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v150;
        v149->__r_.__value_.__l.__size_ = 0;
        v149->__r_.__value_.__r.__words[2] = 0;
        v149->__r_.__value_.__r.__words[0] = 0;
        v151 = std::string::append(&__p, ")]], ");
        v152 = *&v151->__r_.__value_.__l.__data_;
        v325 = v151->__r_.__value_.__r.__words[2];
        v324 = v152;
        v151->__r_.__value_.__l.__size_ = 0;
        v151->__r_.__value_.__r.__words[2] = 0;
        v151->__r_.__value_.__r.__words[0] = 0;
        (*(*a1 + 72))(a1, &v324, a3);
        if (SHIBYTE(v325) < 0)
        {
          operator delete(v324);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (*(v142 + 127) < 0)
        {
          sub_29A008D14(&__dst, *(v142 + 104), *(v142 + 112));
        }

        else
        {
          __dst = *(v142 + 104);
        }

        v153 = std::string::append(&__dst, "_sampler");
        v154 = *&v153->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v153->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v154;
        v153->__r_.__value_.__l.__size_ = 0;
        v153->__r_.__value_.__r.__words[2] = 0;
        v153->__r_.__value_.__r.__words[0] = 0;
        v155 = std::string::insert(&__p, 0, "sampler ");
        v156 = *&v155->__r_.__value_.__l.__data_;
        v325 = v155->__r_.__value_.__r.__words[2];
        v324 = v156;
        v155->__r_.__value_.__l.__size_ = 0;
        v155->__r_.__value_.__r.__words[2] = 0;
        v155->__r_.__value_.__r.__words[0] = 0;
        (*(*a1 + 72))(a1, &v324, a3);
        if (SHIBYTE(v325) < 0)
        {
          operator delete(v324);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        std::to_string(&__dst, __val);
        v157 = std::string::insert(&__dst, 0, " [[sampler(");
        v158 = *&v157->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v157->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v158;
        v157->__r_.__value_.__l.__size_ = 0;
        v157->__r_.__value_.__r.__words[2] = 0;
        v157->__r_.__value_.__r.__words[0] = 0;
        v159 = std::string::append(&__p, ")]]");
        v160 = *&v159->__r_.__value_.__l.__data_;
        v325 = v159->__r_.__value_.__r.__words[2];
        v324 = v160;
        v159->__r_.__value_.__l.__size_ = 0;
        v159->__r_.__value_.__r.__words[2] = 0;
        v159->__r_.__value_.__r.__words[0] = 0;
        (*(*a1 + 72))(a1, &v324, a3);
        if (SHIBYTE(v325) < 0)
        {
          operator delete(v324);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        (*(*a1 + 56))(a1, a3, 0);
        ++__val;
        ++v71;
      }

      while (v71 != v72);
      if ((v141 & 1) == 0)
      {
        goto LABEL_530;
      }

LABEL_319:
      (*(*a1 + 72))(a1, v334, a3);
      v161 = (*(*a1[1] + 80))(a1[1]);
      v162 = v161;
      if (*(v161 + 23) >= 0)
      {
        v163 = *(v161 + 23);
      }

      else
      {
        v163 = *(v161 + 8);
      }

      sub_29A022DE0(&v318, v163 + 1);
      if ((v318.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v164 = &v318;
      }

      else
      {
        v164 = v318.__r_.__value_.__r.__words[0];
      }

      if (v163)
      {
        if (v162[23] >= 0)
        {
          v165 = v162;
        }

        else
        {
          v165 = *v162;
        }

        memmove(v164, v165, v163);
      }

      *(&v164->__r_.__value_.__l.__data_ + v163) = 32;
      v166 = *(v65 + 23);
      if (v166 >= 0)
      {
        v167 = v65;
      }

      else
      {
        v167 = *v65;
      }

      if (v166 >= 0)
      {
        v168 = *(v65 + 23);
      }

      else
      {
        v168 = *(v65 + 8);
      }

      v169 = std::string::append(&v318, v167, v168);
      v170 = *&v169->__r_.__value_.__l.__data_;
      v319.__r_.__value_.__r.__words[2] = v169->__r_.__value_.__r.__words[2];
      *&v319.__r_.__value_.__l.__data_ = v170;
      v169->__r_.__value_.__l.__size_ = 0;
      v169->__r_.__value_.__r.__words[2] = 0;
      v169->__r_.__value_.__r.__words[0] = 0;
      v171 = std::string::append(&v319, "& ");
      v172 = *&v171->__r_.__value_.__l.__data_;
      v320.__r_.__value_.__r.__words[2] = v171->__r_.__value_.__r.__words[2];
      *&v320.__r_.__value_.__l.__data_ = v172;
      v171->__r_.__value_.__l.__size_ = 0;
      v171->__r_.__value_.__r.__words[2] = 0;
      v171->__r_.__value_.__r.__words[0] = 0;
      v175 = *(v65 + 24);
      v174 = v65 + 24;
      v173 = v175;
      v176 = *(v174 + 23);
      if (v176 >= 0)
      {
        v177 = v174;
      }

      else
      {
        v177 = v173;
      }

      if (v176 >= 0)
      {
        v178 = *(v174 + 23);
      }

      else
      {
        v178 = *(v174 + 8);
      }

      v179 = std::string::append(&v320, v177, v178);
      v180 = *&v179->__r_.__value_.__l.__data_;
      v321.__r_.__value_.__r.__words[2] = v179->__r_.__value_.__r.__words[2];
      *&v321.__r_.__value_.__l.__data_ = v180;
      v179->__r_.__value_.__l.__size_ = 0;
      v179->__r_.__value_.__r.__words[2] = 0;
      v179->__r_.__value_.__r.__words[0] = 0;
      v181 = std::string::append(&v321, "[[ buffer(");
      v182 = *&v181->__r_.__value_.__l.__data_;
      __dst.__r_.__value_.__r.__words[2] = v181->__r_.__value_.__r.__words[2];
      *&__dst.__r_.__value_.__l.__data_ = v182;
      v181->__r_.__value_.__l.__size_ = 0;
      v181->__r_.__value_.__r.__words[2] = 0;
      v181->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v317, v308);
      if ((v317.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v183 = &v317;
      }

      else
      {
        v183 = v317.__r_.__value_.__r.__words[0];
      }

      if ((v317.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v184 = HIBYTE(v317.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v184 = v317.__r_.__value_.__l.__size_;
      }

      v185 = std::string::append(&__dst, v183, v184);
      v186 = *&v185->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v185->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v186;
      v185->__r_.__value_.__l.__size_ = 0;
      v185->__r_.__value_.__r.__words[2] = 0;
      v185->__r_.__value_.__r.__words[0] = 0;
      v187 = std::string::append(&__p, ") ]]");
      v188 = *&v187->__r_.__value_.__l.__data_;
      v325 = v187->__r_.__value_.__r.__words[2];
      v324 = v188;
      v187->__r_.__value_.__l.__size_ = 0;
      v187->__r_.__value_.__r.__words[2] = 0;
      v187->__r_.__value_.__r.__words[0] = 0;
      (*(*a1 + 72))(a1, &v324, a3);
      if (SHIBYTE(v325) < 0)
      {
        operator delete(v324);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v317.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v317.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v321.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v321.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v320.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v320.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v319.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v319.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v318.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v318.__r_.__value_.__l.__data_);
      }

      ++v308;
    }

LABEL_530:
    if (a4 == 3)
    {
      goto LABEL_533;
    }

    goto LABEL_531;
  }

LABEL_537:
  if ((v307 & 1) == 0)
  {
    sub_29A008E78(&v324, off_2A14FE508[0]);
    v273 = sub_29B240C7C(a3, &v324);
    if (SHIBYTE(v325) < 0)
    {
      operator delete(v324);
    }

    v274 = v273[11];
    for (i = v273[12]; v274 != i; v274 += 8)
    {
      if (a4 == 2)
      {
        v276 = sub_29B2438AC(a1[1], *(*v274 + 24));
        v277 = v276;
        if (*(v276 + 23) >= 0)
        {
          v278 = *(v276 + 23);
        }

        else
        {
          v278 = *(v276 + 8);
        }

        sub_29A022DE0(&__p, v278 + 1);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v279 = &__p;
        }

        else
        {
          v279 = __p.__r_.__value_.__r.__words[0];
        }

        if (v278)
        {
          if (v277[23] >= 0)
          {
            v280 = v277;
          }

          else
          {
            v280 = *v277;
          }

          memmove(v279, v280, v278);
        }

        *(&v279->__r_.__value_.__l.__data_ + v278) = 32;
        v281 = *(*v274 + 127);
        if (v281 >= 0)
        {
          v282 = (*v274 + 104);
        }

        else
        {
          v282 = *(*v274 + 104);
        }

        if (v281 >= 0)
        {
          v283 = *(*v274 + 127);
        }

        else
        {
          v283 = *(*v274 + 112);
        }

        v284 = std::string::append(&__p, v282, v283);
        v285 = *&v284->__r_.__value_.__l.__data_;
        v325 = v284->__r_.__value_.__r.__words[2];
        v324 = v285;
        v284->__r_.__value_.__l.__size_ = 0;
        v284->__r_.__value_.__r.__words[2] = 0;
        v284->__r_.__value_.__r.__words[0] = 0;
        (*(*a1 + 80))(a1, &v324, a3, 1);
        if (SHIBYTE(v325) < 0)
        {
          operator delete(v324);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  if (v335 < 0)
  {
    operator delete(v334[0]);
  }
}