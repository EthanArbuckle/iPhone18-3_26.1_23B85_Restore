void sub_29A177088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, void **a17)
{
  a17 = a16;
  sub_29A012C90(&a17);
  sub_29A177EDC(&a17);
  if (*(v17 + 127) < 0)
  {
    operator delete(*(v17 + 104));
  }

  if (*(v17 + 103) < 0)
  {
    operator delete(*v20);
  }

  sub_29A09932C(v19, *(v17 + 64));
  if (*(v17 + 55) < 0)
  {
    operator delete(*(v17 + 32));
  }

  if (*(v17 + 31) < 0)
  {
    operator delete(*v18);
  }

  _Unwind_Resume(a1);
}

void sub_29A177178(std::string *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v6 = *(a2 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (v6)
  {
    if (pxrInternal__aapl__pxrReserved__::TfIsRelativePath(a2))
    {
      pxrInternal__aapl__pxrReserved__::TfGetPathName(a1, &__p);
      pxrInternal__aapl__pxrReserved__::TfStringCatPaths(&__p.__r_.__value_.__l.__data_, a2, v17);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (!a3)
        {
          goto LABEL_32;
        }
      }

      else if (!a3)
      {
        goto LABEL_32;
      }

      v12 = *(a2 + 23);
      if ((v12 & 0x80u) == 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      if ((v12 & 0x80u) != 0)
      {
        v12 = *(a2 + 8);
      }

      if (v13[v12 - 1] == 47)
      {
        if (v18 >= 0)
        {
          v14 = HIBYTE(v18);
        }

        else
        {
          v14 = v17[1];
        }

        sub_29A022DE0(a4, v14 + 1);
        if (*(a4 + 23) < 0)
        {
          a4 = *a4;
        }

        if (v14)
        {
          if (v18 >= 0)
          {
            v15 = v17;
          }

          else
          {
            v15 = v17[0];
          }

          memmove(a4, v15, v14);
        }

        *(a4 + v14) = 47;
        goto LABEL_35;
      }

LABEL_32:
      if (SHIBYTE(v18) < 0)
      {
        sub_29A008D14(a4, v17[0], v17[1]);
      }

      else
      {
        *a4 = *v17;
        a4[2] = v18;
      }

LABEL_35:
      if (SHIBYTE(v18) < 0)
      {
        operator delete(v17[0]);
      }

      return;
    }

    v7 = *(a2 + 23);
  }

  if (v7 < 0)
  {
    v10 = *a2;
    v11 = *(a2 + 8);

    sub_29A008D14(a4, v10, v11);
  }

  else
  {
    *a4 = *a2;
    a4[2] = *(a2 + 16);
  }
}

void sub_29A17731C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A17734C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a2 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  if (v5)
  {
    if (pxrInternal__aapl__pxrReserved__::TfIsRelativePath(a2))
    {

      pxrInternal__aapl__pxrReserved__::TfStringCatPaths(a1, a2, a3);
      return;
    }

    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      *a3 = *a2;
      v7 = *(a2 + 16);
      goto LABEL_12;
    }

    v8 = *a2;
    v9 = *(a2 + 8);
  }

  else
  {
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      *a3 = *a1;
      v7 = *(a1 + 16);
LABEL_12:
      a3[2] = v7;
      return;
    }

    v8 = *a1;
    v9 = *(a1 + 8);
  }

  sub_29A008D14(a3, v8, v9);
}

void sub_29A17742C(void *a1)
{
  if (a1[1] < a1[2])
  {
    sub_29A178C00(a1);
  }

  sub_29A178C60(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Plug_ReadEmbeddedPlugInfo(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35[4] = *MEMORY[0x29EDCA608];
  v8 = mach_absolute_time();
  pxrInternal__aapl__pxrReserved__::GetEmbeddedPlugInfo(v30);
  sub_29A177794(&v33, a4, a2, a3);
  for (i = v31; i; i = *i)
  {
    v10 = v33;
    v24 = &v33;
    if (*(i + 39) < 0)
    {
      sub_29A008D14(&v25, i[2], i[3]);
    }

    else
    {
      v11 = *(i + 1);
      v26 = i[4];
      v25 = v11;
    }

    v27 = i[5];
    if (*(a1 + 23) < 0)
    {
      sub_29A008D14(&__p, *a1, *(a1 + 1));
    }

    else
    {
      __p = *a1;
      v29 = *(a1 + 2);
    }

    v12 = *v10;
    if (*v10)
    {
      v13 = *(v12 + 32);
      v32[0] = 0;
      v32[1] = v13;
      v14 = tbb::internal::allocate_additional_child_of_proxy::allocate(v32, 0x50uLL);
      v15 = v14;
      *(v14 - 11) = 1;
      v16 = v24;
      *v14 = &unk_2A20416B0;
      *(v14 + 8) = v16;
      if (SHIBYTE(v26) < 0)
      {
        sub_29A008D14((v14 + 16), v25, *(&v25 + 1));
      }

      else
      {
        v17 = v25;
        *(v14 + 32) = v26;
        *(v14 + 16) = v17;
      }

      *(v15 + 40) = v27;
      if (SHIBYTE(v29) < 0)
      {
        sub_29A008D14((v15 + 48), __p, *(&__p + 1));
      }

      else
      {
        v18 = __p;
        *(v15 + 64) = v29;
        *(v15 + 48) = v18;
      }

      *(v15 + 72) = v12 + 272;
      (***(v15 - 40))(*(v15 - 40), v15, v15 - 8);
    }

    else
    {
      sub_29A178E24(&v24);
    }

    if (SHIBYTE(v29) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25);
    }

    if (*v33)
    {
      pxrInternal__aapl__pxrReserved__::WorkDispatcher::Wait(*v33);
    }
  }

  v19 = mach_absolute_time();
  if (sub_29A174A74(1))
  {
    v20 = pxrInternal__aapl__pxrReserved__::ArchTicksToSeconds((v19 - v8));
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Read embedded plugins in %f seconds\n", v21, v22, *&v20);
  }

  sub_29A177E5C(v35);
  sub_29A177DDC(&v34);
  return sub_29A0EB4E8(v30);
}

void sub_29A1776EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  sub_29A177E5C(&a33);
  sub_29A177DDC(&a29);
  sub_29A0EB4E8(&a21);
  _Unwind_Resume(a1);
}

void *sub_29A177794(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  v6 = (a1 + 5);
  sub_29A177CAC((a1 + 1), a3);
  sub_29A177D44(v6, a4);
  return a1;
}

uint64_t sub_29A1777F8(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::Plug_ReadPlugInfo(std::string **a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v47[4] = *MEMORY[0x29EDCA608];
  if (sub_29A174A74(3) && sub_29A174A74(3))
  {
    pxrInternal__aapl__pxrReserved__::TfStringJoin("\n    ", a1, &__p);
    v12 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Will check plugin info paths:\n    %s\n", v10, v11, v12);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v13 = mach_absolute_time();
  sub_29A177794(&__p, a5, a3, a4);
  v14 = *a1;
  v15 = a1[1];
  if (*a1 != v15)
  {
    while (1)
    {
      v16 = SHIBYTE(v14->__r_.__value_.__r.__words[2]);
      if (v16 < 0)
      {
        size = v14->__r_.__value_.__l.__size_;
        if (!size)
        {
          goto LABEL_42;
        }

        v17 = v14->__r_.__value_.__r.__words[0];
      }

      else
      {
        if (!*(&v14->__r_.__value_.__s + 23))
        {
          goto LABEL_42;
        }

        v17 = v14;
        size = SHIBYTE(v14->__r_.__value_.__r.__words[2]);
      }

      v19 = v17->__r_.__value_.__s.__data_[size - 1];
      v20 = v19 == 47;
      if (v19 == 47)
      {
        break;
      }

      IsDir = pxrInternal__aapl__pxrReserved__::TfIsDir(v14, 1);
      v21 = __p.__r_.__value_.__r.__words[0];
      LODWORD(v16) = SHIBYTE(v14->__r_.__value_.__r.__words[2]);
      if (IsDir)
      {
        goto LABEL_18;
      }

      p_p = &__p;
      if ((v16 & 0x80000000) != 0)
      {
        sub_29A008D14(&v41, v14->__r_.__value_.__l.__data_, v14->__r_.__value_.__l.__size_);
      }

      else
      {
        v29 = *&v14->__r_.__value_.__l.__data_;
        v42 = v14->__r_.__value_.__r.__words[2];
        v41 = v29;
      }

      v30 = *v21;
      if (*v21)
      {
        v31 = *(v30 + 256);
        v44 = 0;
        v45 = v31;
        v32 = tbb::internal::allocate_additional_child_of_proxy::allocate(&v44, 0x30uLL);
        v33 = v32;
        *(v32 - 11) = 1;
        *v32 = &unk_2A2041968;
        *(v32 + 8) = p_p;
        if (SHIBYTE(v42) < 0)
        {
          sub_29A008D14((v32 + 16), v41, *(&v41 + 1));
        }

        else
        {
          v34 = v41;
          *(v32 + 32) = v42;
          *(v32 + 16) = v34;
        }

        *(v33 + 40) = v30 + 272;
        (***(v33 - 40))(*(v33 - 40), v33, v33 - 8);
      }

      else
      {
        sub_29A17A2A4(p_p, &v41);
      }

LABEL_36:
      if (SHIBYTE(v42) < 0)
      {
        operator delete(v41);
        if (a2)
        {
LABEL_40:
          if (*__p.__r_.__value_.__l.__data_)
          {
            pxrInternal__aapl__pxrReserved__::WorkDispatcher::Wait(*__p.__r_.__value_.__l.__data_);
          }
        }
      }

      else if (a2)
      {
        goto LABEL_40;
      }

LABEL_42:
      if (++v14 == v15)
      {
        goto LABEL_43;
      }
    }

    v21 = __p.__r_.__value_.__r.__words[0];
LABEL_18:
    p_p = &__p;
    if ((v16 & 0x80000000) != 0)
    {
      sub_29A008D14(&v41, v14->__r_.__value_.__l.__data_, v14->__r_.__value_.__l.__size_);
    }

    else
    {
      v23 = *&v14->__r_.__value_.__l.__data_;
      v42 = v14->__r_.__value_.__r.__words[2];
      v41 = v23;
    }

    v43 = v20;
    v24 = *v21;
    if (*v21)
    {
      v25 = *(v24 + 256);
      v44 = 0;
      v45 = v25;
      v26 = tbb::internal::allocate_additional_child_of_proxy::allocate(&v44, 0x38uLL);
      v27 = v26;
      *(v26 - 11) = 1;
      *v26 = &unk_2A2041920;
      *(v26 + 8) = p_p;
      if (SHIBYTE(v42) < 0)
      {
        sub_29A008D14((v26 + 16), v41, *(&v41 + 1));
      }

      else
      {
        v28 = v41;
        *(v26 + 32) = v42;
        *(v26 + 16) = v28;
      }

      *(v27 + 40) = v43;
      *(v27 + 48) = v24 + 272;
      (***(v27 - 40))(*(v27 - 40), v27, v27 - 8);
    }

    else
    {
      sub_29A17C2FC(&p_p);
    }

    goto LABEL_36;
  }

LABEL_43:
  if ((a2 & 1) == 0 && *__p.__r_.__value_.__l.__data_)
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::Wait(*__p.__r_.__value_.__l.__data_);
  }

  v35 = mach_absolute_time();
  if (sub_29A174A74(3))
  {
    v36 = pxrInternal__aapl__pxrReserved__::ArchTicksToSeconds((v35 - v13));
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(" Did check plugin info paths in %f seconds\n", v37, v38, *&v36);
  }

  sub_29A177E5C(v47);
  return sub_29A177DDC(&__p.__r_.__value_.__l.__size_);
}

void sub_29A177C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A177CAC(uint64_t a1, uint64_t a2)
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

uint64_t sub_29A177D44(uint64_t a1, uint64_t a2)
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

uint64_t sub_29A177DDC(uint64_t a1)
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

uint64_t sub_29A177E5C(uint64_t a1)
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

void sub_29A177EDC(void ***a1)
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
        v4 -= 3;
        v6 = v4;
        sub_29A012C90(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

uint64_t sub_29A177F50(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 32 * a3;
    do
    {
      sub_29A177FC8(a1, a2, a2);
      a2 += 4;
      v5 -= 32;
    }

    while (v5);
  }

  return a1;
}

const void **sub_29A177FC8(uint64_t a1, const void **a2, uint64_t a3)
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

  sub_29A12A04C(a1, v8, a3, v26);
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

void sub_29A178204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_29A0EC874(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A178228(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_29A019AA0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_29A177FC8(a1, i + 2, (i + 2));
  }

  return a1;
}

uint64_t **sub_29A1782A0(uint64_t **result, __int128 *a2, __int128 *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v15 = result;
    v16 = v8;
    v17 = v8;
    if (v8)
    {
      v16 = sub_29A028760(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v18[0] = (v8 + 4);
          v18[1] = (v8 + 7);
          sub_29A178430(v18, (v9 + 2));
          v10 = sub_29A0286E4(v5, v18, v17 + 4);
          sub_29A00B204(v5, v18[0], v10, v17);
          v17 = v16;
          if (v16)
          {
            v16 = sub_29A028760(v16);
          }

          v11 = *(v9 + 1);
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = *(v9 + 2);
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v17;
          if (v17)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = sub_29A178488(&v15);
  }

  if (a2 != a3)
  {
    do
    {
      result = sub_29A1784E0(v5, a2 + 2);
      v13 = *(a2 + 1);
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
          v14 = *(a2 + 2);
          v12 = *v14 == a2;
          a2 = v14;
        }

        while (!v12);
      }

      a2 = v14;
    }

    while (v14 != a3);
  }

  return result;
}

void sub_29A17841C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A178488(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A178430(uint64_t a1, const std::string *a2)
{
  std::string::operator=(*a1, a2);
  v4 = *(a1 + 8);
  data = a2[1].__r_.__value_.__l.__data_;
  size = a2[1].__r_.__value_.__l.__size_;
  if (size)
  {
    atomic_fetch_add_explicit((size + 8), 1uLL, memory_order_relaxed);
  }

  v7 = v4[1];
  *v4 = data;
  v4[1] = size;
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  return a1;
}

uint64_t sub_29A178488(uint64_t a1)
{
  sub_29A09932C(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_29A09932C(*a1, v2);
  }

  return a1;
}

const void **sub_29A1784E0(uint64_t **a1, __int128 *a2)
{
  sub_29AA7EF80(a1, a2, &v6);
  v3 = sub_29A0286E4(a1, &v5, v6 + 4);
  sub_29A00B204(a1, v5, v3, v6);
  return v6;
}

void sub_29A178538(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A09B620(va, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_29A178550()
{
  v29 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x70uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "plugInfo.json", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "Includes", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "Plugins", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "Type", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 4, "Name", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 5, "Info", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 6, "Root", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 7, "LibraryPath", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 8, "ResourcePath", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 9, "Entitlements", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 10, "SupersedingEntitlements", 0);
  v1 = v0 + 11;
  v2 = *v0;
  v18 = v2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v18 &= 0xFFFFFFFFFFFFFFF8;
  }

  v3 = v0[1];
  v19 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v19 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = v0[2];
  v20 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v20 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = v0[3];
  v21 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v21 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = v0[4];
  v22 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v22 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = v0[5];
  v23 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v23 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = v0[6];
  v24 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = v0[7];
  v25 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = v0[8];
  v26 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = v0[9];
  v27 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = v0[10];
  v28 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v1 = 0;
  v0[12] = 0;
  v0[13] = 0;
  sub_29A12EF7C(v1, &v18, &v29, 0xBuLL);
  for (i = 80; i != -8; i -= 8)
  {
    v14 = *(&v18 + i);
    if ((v14 & 7) != 0)
    {
      atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v15 = 0;
  atomic_compare_exchange_strong(&qword_2A173F358, &v15, v0);
  if (v15)
  {
    v16 = sub_29A178A80(v0);
    operator delete(v16);
    return atomic_load(&qword_2A173F358);
  }

  return v0;
}

void sub_29A1788E4(_Unwind_Exception *a1)
{
  v4 = 80;
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
      v6 = v1[10];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[9];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[8];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[7];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[6];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[5];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[4];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[3];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[2];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[1];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
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

uint64_t sub_29A178A80(uint64_t a1)
{
  v13 = (a1 + 88);
  sub_29A124AB0(&v13);
  v2 = *(a1 + 80);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 72);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(a1 + 64);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(a1 + 56);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(a1 + 48);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(a1 + 40);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(a1 + 32);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(a1 + 24);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(a1 + 16);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(a1 + 8);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void sub_29A178BC4(pxrInternal__aapl__pxrReserved__::WorkDispatcher **a1, pxrInternal__aapl__pxrReserved__::WorkDispatcher *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::~WorkDispatcher(v3);

    operator delete(v4);
  }
}

void sub_29A178C00(uint64_t a1)
{
  v1 = *(a1 + 8);
  *v1 = 0;
  v1[1] = 0;
  v1[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
}

void sub_29A178C60(void *a1)
{
  v1 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v2 = v1 + 1;
  if (v1 + 1 <= 0xAAAAAAAAAAAAAAALL)
  {
    if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v2)
    {
      v2 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
    {
      v3 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v3 = v2;
    }

    v10 = a1;
    if (v3)
    {
      v4 = sub_29A012C48(a1, v3);
    }

    else
    {
      v4 = 0;
    }

    v5 = &v4[24 * v1];
    v6 = v4;
    v7 = v5;
    v8 = v5;
    v9 = &v4[24 * v3];
    *v5 = 0;
    *(v5 + 1) = 0;
    *(v5 + 2) = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
  }

  sub_29A00C9A4();
}

void sub_29A178D88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A178D9C(va);
  _Unwind_Resume(a1);
}

void **sub_29A178D9C(void **a1)
{
  sub_29A178DD0(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29A178DD0(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    sub_29A012C90(&v5);
  }
}

void sub_29A178E24(uint64_t a1)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 32);
  if (*v3 != 64)
  {
    v7 = *a1;
    pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier((a1 + 40), v2, &v18);
    v8 = std::string::append(&v18, "/resources/plugInfo.json");
    v9 = v8->__r_.__value_.__r.__words[0];
    size = v8->__r_.__value_.__l.__size_;
    v25[0] = v8->__r_.__value_.__r.__words[2];
    *(v25 + 3) = *(&v8->__r_.__value_.__r.__words[2] + 3);
    v11 = SHIBYTE(v8->__r_.__value_.__r.__words[2]);
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    *v23 = 0u;
    v24 = 0u;
    sub_29A008E78(&v18, v3);
    pxrInternal__aapl__pxrReserved__::JsParseString(&v18, v23, v12, &v21);
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    if (pxrInternal__aapl__pxrReserved__::JsValue::IsNull(&v21))
    {
      v18.__r_.__value_.__r.__words[0] = "plug/info.cpp";
      v18.__r_.__value_.__l.__size_ = "_ReadEmbeddedPlugInfo";
      v18.__r_.__value_.__r.__words[2] = 221;
      v19 = "BOOL pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ReadEmbeddedPlugInfo(_ReadContext *, const std::string &, const char *, const std::string &)";
      v20 = 0;
      if (*(a1 + 31) >= 0)
      {
        v13 = v2;
      }

      else
      {
        v13 = *(a1 + 8);
      }

      v14 = &v23[1];
      if (v24 < 0)
      {
        v14 = v23[1];
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 3, "Embedded Plugin info file %s couldn't be read (line %d, col %d): %s", v13, LODWORD(v23[0]), HIDWORD(v23[0]), v14);
    }

    else if (pxrInternal__aapl__pxrReserved__::JsValue::IsObject(&v21))
    {
      JsObject = pxrInternal__aapl__pxrReserved__::JsValue::GetJsObject(&v21);
      sub_29A1519B8(&v18, JsObject);
      if (v11 < 0)
      {
        sub_29A008D14(&__p, v9, size);
      }

      else
      {
        __p.__r_.__value_.__r.__words[0] = v9;
        __p.__r_.__value_.__l.__size_ = size;
        LODWORD(__p.__r_.__value_.__r.__words[2]) = v25[0];
        *(&__p.__r_.__value_.__r.__words[2] + 3) = *(v25 + 3);
        *(&__p.__r_.__value_.__s + 23) = v11;
      }

      sub_29A1792C4(v7, &__p, &v18);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      sub_29A09932C(&v18, v18.__r_.__value_.__l.__size_);
    }

    else
    {
      v18.__r_.__value_.__r.__words[0] = "plug/info.cpp";
      v18.__r_.__value_.__l.__size_ = "_ReadEmbeddedPlugInfo";
      v18.__r_.__value_.__r.__words[2] = 227;
      v19 = "BOOL pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ReadEmbeddedPlugInfo(_ReadContext *, const std::string &, const char *, const std::string &)";
      v20 = 0;
      if (*(a1 + 31) >= 0)
      {
        v16 = v2;
      }

      else
      {
        v16 = *(a1 + 8);
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 3, "Embedded Plugin info file %s did not contain a JSON object", v16);
    }

    if (v22)
    {
      sub_29A014BEC(v22);
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23[1]);
      if ((v11 & 0x80000000) == 0)
      {
        return;
      }
    }

    else if ((v11 & 0x80000000) == 0)
    {
      return;
    }

    operator delete(v9);
    return;
  }

  if (sub_29A174A74(1))
  {
    if (*(a1 + 31) >= 0)
    {
      v6 = v2;
    }

    else
    {
      v6 = *(a1 + 8);
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Embedded Plugin %s body was not found", v4, v5, v6);
  }
}

void sub_29A1790B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, void *a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_29A09932C(&a19, a20);
  if (a28)
  {
    sub_29A014BEC(a28);
  }

  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (v36 < 0)
  {
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A179150(uint64_t a1)
{
  *a1 = &unk_2A20416B0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_29A1791B0(void **__p)
{
  *__p = &unk_2A20416B0;
  if (*(__p + 71) < 0)
  {
    operator delete(__p[6]);
  }

  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

uint64_t sub_29A179220(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  sub_29A178E24(a1 + 8);
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 72));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29A1792B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

void sub_29A1792C4(void **a1, std::string *a2, uint64_t a3)
{
  if (sub_29A174A74(3))
  {
    v7 = a2;
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      v7 = a2->__r_.__value_.__r.__words[0];
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(" Did read plugin info %s\n", v5, v6, v7);
  }

  v8 = atomic_load(&qword_2A173F358);
  if (!v8)
  {
    v8 = sub_29A178550();
  }

  if ((*(v8 + 2) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*(v8 + 2) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v8);
  }

  v10 = sub_29A01BCCC(a3, EmptyString);
  v54 = a3;
  v11 = (a3 + 8);
  if (a3 + 8 != v10)
  {
    v12 = v10;
    v13 = (v10 + 32);
    if (pxrInternal__aapl__pxrReserved__::JsValue::IsArray((v10 + 56)))
    {
      JsArray = pxrInternal__aapl__pxrReserved__::JsValue::GetJsArray((v12 + 56));
      v17 = JsArray[1] - *JsArray;
      if (v17)
      {
        v18 = JsArray;
        v19 = 0;
        v20 = 0;
        v55 = v17 >> 4;
        do
        {
          v21 = *v18;
          v22 = a2->__r_.__value_.__r.__words[0];
          if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v22 = a2;
          }

          v23 = *(v12 + 32);
          if (*(v12 + 55) >= 0)
          {
            v23 = v13;
          }

          pxrInternal__aapl__pxrReserved__::TfStringPrintf("file %s %s[%zd]", v15, v16, v22, v23, v20);
          pxrInternal__aapl__pxrReserved__::Plug_RegistrationMetadata::Plug_RegistrationMetadata(v61, (v21 + v19), a2, v72);
          if (LODWORD(v61[0]))
          {
            v57 = a1;
            sub_29A179DB0(&v58, v61);
          }

          v57 = &v71;
          sub_29A012C90(&v57);
          v57 = &v70;
          sub_29A177EDC(&v57);
          if (v69 < 0)
          {
            operator delete(v68);
          }

          if (v67 < 0)
          {
            operator delete(v66[3]);
          }

          sub_29A09932C(v66, v66[1]);
          if (v65 < 0)
          {
            operator delete(v64);
          }

          if (v63 < 0)
          {
            operator delete(v61[1]);
          }

          if (v73 < 0)
          {
            operator delete(v72[0]);
          }

          ++v20;
          v19 += 16;
        }

        while (v55 != v20);
      }
    }

    else
    {
      v57 = "plug/info.cpp";
      *&v58 = "_ReadPlugInfo_Process";
      *(&v58 + 1) = 280;
      v59 = "BOOL pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ReadPlugInfo_Process(_ReadContext *, std::string, JsObject &)";
      v60 = 0;
      v24 = a2;
      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        v24 = a2->__r_.__value_.__r.__words[0];
      }

      if (*(v12 + 55) < 0)
      {
        v13 = *v13;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v57, 3, "Plugin info file %s key '%s' doesn't hold an array", v24, v13);
    }
  }

  v25 = atomic_load(&qword_2A173F358);
  if (!v25)
  {
    v25 = sub_29A178550();
  }

  if ((*(v25 + 1) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v26 = ((*(v25 + 1) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v26 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v25);
  }

  v27 = sub_29A01BCCC(v54, v26);
  if (v11 != v27)
  {
    v28 = v27;
    v29 = (v27 + 32);
    if (pxrInternal__aapl__pxrReserved__::JsValue::IsArray((v27 + 56)))
    {
      v30 = pxrInternal__aapl__pxrReserved__::JsValue::GetJsArray((v28 + 56));
      v31 = v30[1] - *v30;
      if (v31)
      {
        v32 = v30;
        v33 = 0;
        v34 = 0;
        v35 = v31 >> 4;
        do
        {
          if (pxrInternal__aapl__pxrReserved__::JsValue::IsString((*v32 + v33)))
          {
            String = pxrInternal__aapl__pxrReserved__::JsValue::GetString((*v32 + v33));
            sub_29A177178(a2, String, 1, v61);
            v37 = *a1;
            v57 = a1;
            if (SHIBYTE(v62) < 0)
            {
              sub_29A008D14(&v58, v61[0], v61[1]);
            }

            else
            {
              v58 = *v61;
              v59 = v62;
            }

            v40 = *v37;
            if (v40)
            {
              v41 = *(v40 + 256);
              v72[0] = 0;
              v72[1] = v41;
              v42 = tbb::internal::allocate_additional_child_of_proxy::allocate(v72, 0x30uLL);
              v43 = v42;
              *(v42 - 11) = 1;
              *v42 = &unk_2A2041740;
              *(v42 + 8) = v57;
              if (SHIBYTE(v59) < 0)
              {
                sub_29A008D14((v42 + 16), v58, *(&v58 + 1));
              }

              else
              {
                v44 = v58;
                *(v42 + 32) = v59;
                *(v42 + 16) = v44;
              }

              *(v43 + 40) = v40 + 272;
              (***(v43 - 40))(*(v43 - 40), v43, v43 - 8);
            }

            else
            {
              sub_29A17A2A4(v57, &v58);
            }

            if (SHIBYTE(v59) < 0)
            {
              operator delete(v58);
            }

            if (SHIBYTE(v62) < 0)
            {
              operator delete(v61[0]);
            }
          }

          else
          {
            v57 = "plug/info.cpp";
            *&v58 = "_ReadPlugInfo_Process";
            *(&v58 + 1) = 302;
            v59 = "BOOL pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ReadPlugInfo_Process(_ReadContext *, std::string, JsObject &)";
            v60 = 0;
            v38 = a2;
            if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
            {
              v38 = a2->__r_.__value_.__r.__words[0];
            }

            v39 = v29;
            if (*(v28 + 55) < 0)
            {
              v39 = *v29;
            }

            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v57, 3, "Plugin info file %s key '%s' index %zd doesn't hold a string", v38, v39, v34);
          }

          ++v34;
          v33 += 16;
        }

        while (v35 != v34);
      }
    }

    else
    {
      v57 = "plug/info.cpp";
      *&v58 = "_ReadPlugInfo_Process";
      *(&v58 + 1) = 294;
      v59 = "BOOL pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ReadPlugInfo_Process(_ReadContext *, std::string, JsObject &)";
      v60 = 0;
      v45 = a2;
      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        v45 = a2->__r_.__value_.__r.__words[0];
      }

      if (*(v28 + 55) < 0)
      {
        v29 = *v29;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v57, 3, "Plugin info file %s key '%s' doesn't hold an array", v45, v29);
    }
  }

  v46 = *v54;
  if (*v54 != v11)
  {
    do
    {
      v47 = atomic_load(&qword_2A173F358);
      if (!v47)
      {
        v47 = sub_29A178550();
      }

      v48 = (v46 + 4);
      if (!pxrInternal__aapl__pxrReserved__::TfToken::operator==((v47 + 16), v46 + 4))
      {
        v49 = atomic_load(&qword_2A173F358);
        if (!v49)
        {
          v49 = sub_29A178550();
        }

        if (!pxrInternal__aapl__pxrReserved__::TfToken::operator==((v49 + 8), v46 + 4))
        {
          v57 = "plug/info.cpp";
          *&v58 = "_ReadPlugInfo_Process";
          *(&v58 + 1) = 324;
          v59 = "BOOL pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ReadPlugInfo_Process(_ReadContext *, std::string, JsObject &)";
          v60 = 0;
          v50 = a2;
          if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
          {
            v50 = a2->__r_.__value_.__r.__words[0];
          }

          if (*(v46 + 55) < 0)
          {
            v48 = *v48;
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v57, 3, "Plugin info file %s has unknown key %s", v50, v48);
        }
      }

      v51 = v46[1];
      if (v51)
      {
        do
        {
          v52 = v51;
          v51 = *v51;
        }

        while (v51);
      }

      else
      {
        do
        {
          v52 = v46[2];
          v53 = *v52 == v46;
          v46 = v52;
        }

        while (!v53);
      }

      v46 = v52;
    }

    while (v52 != v11);
  }
}

void sub_29A179A30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  tbb::internal::allocate_additional_child_of_proxy::free((v50 - 128), v49);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A179ACC(uint64_t a1)
{
  v3 = (a1 + 160);
  sub_29A012C90(&v3);
  v3 = (a1 + 136);
  sub_29A177EDC(&v3);
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  sub_29A09932C(a1 + 64, *(a1 + 72));
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_29A179B64(uint64_t a1)
{
  v3 = (a1 + 152);
  sub_29A012C90(&v3);
  v3 = (a1 + 128);
  sub_29A177EDC(&v3);
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  sub_29A09932C(a1 + 56, *(a1 + 64));
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_29A179BFC(uint64_t a1)
{
  *a1 = &unk_2A20416F8;
  v3 = (a1 + 168);
  sub_29A012C90(&v3);
  v3 = (a1 + 144);
  sub_29A177EDC(&v3);
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  sub_29A09932C(a1 + 72, *(a1 + 80));
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_29A179CB0(uint64_t a1)
{
  v1 = sub_29A179BFC(a1);

  operator delete(v1);
}

uint64_t sub_29A179CD8(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v7);
  v2 = *(*(a1 + 8) + 64);
  if (!v2)
  {
    sub_29A0DDCB0();
  }

  (*(*v2 + 48))(v2, a1 + 16);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v4 = v7;
  v5 = atomic_load((v3 + 144));
  if (v4 < v5 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v7, v3))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v7, *(a1 + 192));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v7);
  return 0;
}

void sub_29A179D9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

void sub_29A179DB0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_29A008D14((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  if (*(a2 + 55) < 0)
  {
    sub_29A008D14((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v5;
  }

  sub_29A1519B8((a1 + 56), (a2 + 56));
  if (*(a2 + 103) < 0)
  {
    sub_29A008D14((a1 + 80), *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v6 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v6;
  }

  if (*(a2 + 127) < 0)
  {
    sub_29A008D14((a1 + 104), *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v7 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v7;
  }

  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  sub_29A179F80((a1 + 128), *(a2 + 128), *(a2 + 136), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 136) - *(a2 + 128)) >> 3));
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
}

void sub_29A179EF4(_Unwind_Exception *a1)
{
  if (*(v2 + 103) < 0)
  {
    operator delete(*(v2 + 80));
  }

  sub_29A09932C(v2 + 56, *(v2 + 64));
  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  if (*(v2 + 31) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void *sub_29A179F80(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A012BFC(result, a4);
    result = sub_29A17A008(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29A179FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A177EDC(&a9);
  _Unwind_Resume(a1);
}

void *sub_29A17A008(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  v9 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  v7 = 0;
  if (a2 != a3)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
  }

  v7 = 1;
  sub_29A17A0C8(v6);
  return a4;
}

uint64_t sub_29A17A0C8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A17A100(a1);
  }

  return a1;
}

void sub_29A17A100(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 3;
    v3 = v1;
    sub_29A012C90(&v3);
  }
}

uint64_t sub_29A17A14C(uint64_t a1)
{
  *a1 = &unk_2A2041740;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_29A17A19C(void **__p)
{
  *__p = &unk_2A2041740;
  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

uint64_t sub_29A17A1FC(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  sub_29A17A2A4(*(a1 + 8), a1 + 16);
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 40));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29A17A290(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

void sub_29A17A2A4(uint64_t **a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (!v2)
  {
    return;
  }

  if (pxrInternal__aapl__pxrReserved__::TfIsRelativePath(a2))
  {
    *v56 = "plug/info.cpp";
    *&v56[8] = "_ReadPlugInfoWithWildcards";
    *&v56[16] = 419;
    *&v56[24] = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ReadPlugInfoWithWildcards(_ReadContext *, const std::string &)";
    LOBYTE(v57) = 0;
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v56, 3, "Plugin info file %s is not absolute", v5);
    return;
  }

  v6 = std::string::find(a2, 42, 0);
  v7 = *(a2 + 23);
  if (v6 != -1)
  {
    if ((v7 & 0x80u) == 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a2 + 8);
    }

    if (v7 < 2)
    {
      goto LABEL_59;
    }

    v9 = &v8[v7];
    v10 = v8;
    while (1)
    {
      v11 = memchr(v10, 42, v7 - 1);
      if (!v11)
      {
        goto LABEL_59;
      }

      if (*v11 == 10794)
      {
        break;
      }

      v10 = v11 + 1;
      v7 = v9 - v10;
      if (v9 - v10 < 2)
      {
        goto LABEL_59;
      }
    }

    if (v11 == v9 || (v13 = v11 - v8, v13 == -1))
    {
LABEL_59:
      if (sub_29A174A74(3))
      {
        if (*(a2 + 23) >= 0)
        {
          v25 = a2;
        }

        else
        {
          v25 = *a2;
        }

        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Globbing plugin info path %s\n", v23, v24, v25);
      }

      pxrInternal__aapl__pxrReserved__::TfGlob(a2, 0, v62);
      v26 = v62[0];
      for (i = v62[1]; v26 != i; v26 += 24)
      {
        v28 = *a1;
        *v56 = a1;
        if (v26[23] < 0)
        {
          sub_29A008D14(&v56[8], *v26, *(v26 + 1));
        }

        else
        {
          v29 = *v26;
          *&v56[24] = *(v26 + 2);
          *&v56[8] = v29;
        }

        v30 = *v28;
        if (*v28)
        {
          v31 = *(v30 + 256);
          __str.__r_.__value_.__r.__words[0] = 0;
          __str.__r_.__value_.__l.__size_ = v31;
          v32 = tbb::internal::allocate_additional_child_of_proxy::allocate(&__str, 0x30uLL);
          v33 = v32;
          *(v32 - 11) = 1;
          *v32 = &unk_2A2041788;
          *(v32 + 8) = *v56;
          if ((v56[31] & 0x80000000) != 0)
          {
            sub_29A008D14((v32 + 16), *&v56[8], *&v56[16]);
          }

          else
          {
            v34 = *&v56[8];
            *(v32 + 32) = *&v56[24];
            *(v32 + 16) = v34;
          }

          *(v33 + 40) = v30 + 272;
          (***(v33 - 40))(*(v33 - 40), v33, v33 - 8);
        }

        else
        {
          if ((v56[31] & 0x80000000) != 0)
          {
            sub_29A008D14(&__str, *&v56[8], *&v56[16]);
          }

          else
          {
            __str = *&v56[8];
          }

          sub_29A17ACCC(*v56, &__str);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }
        }

        if ((v56[31] & 0x80000000) != 0)
        {
          operator delete(*&v56[8]);
        }
      }

      *v56 = v62;
      sub_29A012C90(v56);
      return;
    }

    sub_29A008E78(v56, "\");
    sub_29A008E78(v62, "/");
    pxrInternal__aapl__pxrReserved__::TfStringReplace(a2, v56, v62, &__str);
    if (SHIBYTE(v63) < 0)
    {
      operator delete(v62[0]);
    }

    if ((v56[23] & 0x80000000) != 0)
    {
      operator delete(*v56);
    }

    v14 = std::string::rfind(&__str, 47, v13);
    std::string::basic_string(v56, &__str, 0, v14, &v61);
    pxrInternal__aapl__pxrReserved__::TfNormPath(v62, v56, 0);
    if ((v56[23] & 0x80000000) != 0)
    {
      operator delete(*v56);
    }

    std::string::basic_string(&v61, &__str, v14 + 1, 0xFFFFFFFFFFFFFFFFLL, v56);
    memset(v56, 0, 24);
    size = HIBYTE(v61.__r_.__value_.__r.__words[2]);
    if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v61.__r_.__value_.__l.__size_;
    }

    std::string::reserve(v56, 5 * size);
    v18 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
    if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v19 = v61.__r_.__value_.__l.__size_;
    }

    if (v19)
    {
      v20 = 0;
      while (1)
      {
        v21 = (v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v61 : v61.__r_.__value_.__r.__words[0];
        v22 = v21->__r_.__value_.__s.__data_[v20];
        if (v22 > 0x5A)
        {
          break;
        }

        if (v22 == 42)
        {
          if (v20 + 1 == v19 || v21->__r_.__value_.__s.__data_[v20 + 1] != 42)
          {
            std::string::append(v56, "[^/]*", 5uLL);
          }

          else
          {
            std::string::append(v56, ".*", 2uLL);
            ++v20;
          }

          goto LABEL_53;
        }

        if (v22 == 46)
        {
          goto LABEL_51;
        }

LABEL_52:
        std::string::push_back(v56, v22);
LABEL_53:
        if (++v20 == v19)
        {
          v18 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
          goto LABEL_83;
        }
      }

      if (v22 != 93 && v22 != 91)
      {
        goto LABEL_52;
      }

LABEL_51:
      std::string::push_back(v56, 92);
      goto LABEL_52;
    }

LABEL_83:
    if (v18 < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    v61 = *v56;
    if (v63 >= 0)
    {
      v35 = v62;
    }

    else
    {
      v35 = v62[0];
    }

    v36 = SHIBYTE(v61.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v61.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v36 = v61.__r_.__value_.__l.__size_;
      v37 = v61.__r_.__value_.__r.__words[0];
      if (!v61.__r_.__value_.__l.__size_)
      {
        goto LABEL_98;
      }
    }

    else
    {
      if (!*(&v61.__r_.__value_.__s + 23))
      {
        v40 = "";
        v37 = &v61;
        goto LABEL_100;
      }

      v37 = &v61;
    }

    if (v37->__r_.__value_.__s.__data_[v36 - 1] == 47)
    {
      v38 = atomic_load(&qword_2A173F358);
      if (!v38)
      {
        v38 = sub_29A178550();
      }

      v39 = *v38 & 0xFFFFFFFFFFFFFFF8;
      if (v39)
      {
        v40 = (v39 + 16);
        if (*(v39 + 39) < 0)
        {
          v40 = *v40;
        }

LABEL_100:
        pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s/%s%s", v16, v17, v35, v37, v40);
        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v61.__r_.__value_.__l.__data_);
        }

        v61 = *v56;
        v59 = 0;
        v60 = 0;
        v41 = operator new(0x40uLL);
        v42 = v41;
        if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v43 = &v61;
        }

        else
        {
          v43 = v61.__r_.__value_.__r.__words[0];
        }

        sub_29A0CD6B0(v41, v43, 32);
        sub_29A17B4A4(&v59, v42);
        if (sub_29A174A74(3))
        {
          if (*(a2 + 23) >= 0)
          {
            v46 = a2;
          }

          else
          {
            v46 = *a2;
          }

          pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Recursively walking plugin info path %s\n", v44, v45, v46);
        }

        v47 = *a1;
        *v56 = a1;
        if (SHIBYTE(v63) < 0)
        {
          sub_29A008D14(&v56[8], v62[0], v62[1]);
        }

        else
        {
          *&v56[8] = *v62;
          *&v56[24] = v63;
        }

        v57 = v59;
        v58 = v60;
        if (v60)
        {
          atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v48 = *v47;
        if (*v47)
        {
          v49 = *(v48 + 256);
          v67 = 0;
          v68 = v49;
          v50 = tbb::internal::allocate_additional_child_of_proxy::allocate(&v67, 0x40uLL);
          v51 = v50;
          *(v50 - 11) = 1;
          *v50 = &unk_2A2041848;
          *(v50 + 8) = *v56;
          if ((v56[31] & 0x80000000) != 0)
          {
            sub_29A008D14((v50 + 16), *&v56[8], *&v56[16]);
          }

          else
          {
            v52 = *&v56[8];
            *(v50 + 32) = *&v56[24];
            *(v50 + 16) = v52;
          }

          v51[5] = v57;
          v55 = v58;
          v51[6] = v58;
          if (v55)
          {
            atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v51[7] = v48 + 272;
          (***(v51 - 5))(*(v51 - 5), v51, (v51 - 1));
        }

        else
        {
          v53 = *v56;
          v54 = v58;
          v67 = v57;
          v68 = v58;
          if (v58)
          {
            atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_29A17B984(v53, &v56[8], &v67);
          if (v54)
          {
            sub_29A014BEC(v54);
          }
        }

        if (v58)
        {
          sub_29A014BEC(v58);
        }

        if ((v56[31] & 0x80000000) != 0)
        {
          operator delete(*&v56[8]);
        }

        if (v60)
        {
          sub_29A014BEC(v60);
        }

        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v61.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v63) < 0)
        {
          operator delete(v62[0]);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          v12 = __str.__r_.__value_.__r.__words[0];
          goto LABEL_26;
        }

        return;
      }
    }

LABEL_98:
    v40 = "";
    goto LABEL_100;
  }

  if ((v7 & 0x80) != 0)
  {
    sub_29A008D14(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v65 = *(a2 + 16);
  }

  sub_29A17ACCC(a1, __p);
  if (SHIBYTE(v65) < 0)
  {
    v12 = __p[0];
LABEL_26:
    operator delete(v12);
  }
}

void sub_29A17AA84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  tbb::internal::allocate_additional_child_of_proxy::free((v39 - 96), v38);
  sub_29A02E48C(&a13);
  if (a20)
  {
    sub_29A014BEC(a20);
  }

  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (*(v39 - 105) < 0)
  {
    operator delete(*(v39 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_29A17ACCC(uint64_t a1, char *a2)
{
  v2 = a2;
  v57[19] = *MEMORY[0x29EDCA608];
  v4 = a2[23];
  if (v4 < 0)
  {
    v4 = *(a2 + 1);
    if (!v4)
    {
      return;
    }

    v5 = *a2;
  }

  else
  {
    if (!a2[23])
    {
      return;
    }

    v5 = a2;
  }

  if (v5[v4 - 1] == 47)
  {
    v6 = atomic_load(&qword_2A173F358);
    if (!v6)
    {
      v6 = sub_29A178550();
    }

    if ((*v6 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((*v6 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(v2, EmptyString, &v54);
    if (v2[23] < 0)
    {
      operator delete(*v2);
    }

    *v2 = v54;
    *(v2 + 2) = v55[0];
  }

  v8 = *(a1 + 32);
  if (!v8)
  {
    sub_29A0DDCB0();
  }

  v9 = (*(*v8 + 48))(v8, v2);
  v10 = sub_29A174A74(3);
  if (v9)
  {
    if (v10)
    {
      v13 = v2;
      if (v2[23] < 0)
      {
        v13 = *v2;
      }

      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Will read plugin info %s\n", v11, v12, v13);
    }

    v44[0] = 0;
    v44[1] = 0;
    v43 = v44;
    v57[6] = 0;
    v14 = MEMORY[0x29EDC9558] + 64;
    v57[0] = MEMORY[0x29EDC9558] + 64;
    v15 = MEMORY[0x29EDC9518];
    v16 = *(MEMORY[0x29EDC9518] + 16);
    *&v54 = *(MEMORY[0x29EDC9518] + 8);
    *(&v55[-2] + *(v54 - 24)) = v16;
    *(&v54 + 1) = 0;
    v17 = (&v55[-2] + *(v54 - 24));
    std::ios_base::init(v17, v55);
    v18 = MEMORY[0x29EDC9558] + 24;
    v17[1].__vftable = 0;
    v17[1].__fmtflags_ = -1;
    *&v54 = v18;
    v57[0] = v14;
    MEMORY[0x29C2C1D10](v55);
    std::ifstream::open();
    v19 = v56;
    if (v56)
    {
      v40 = v56;
      memset(&v53, 0, sizeof(v53));
      memset(v52, 0, sizeof(v52));
      v20 = MEMORY[0x29EDC93D0];
      std::ios_base::getloc((&v55[-2] + *(v54 - 24)));
      v21 = std::locale::use_facet(v50, v20);
      v22 = (v21->__vftable[2].~facet_0)(v21, 10);
      std::locale::~locale(v50);
      v23 = sub_29A0DE07C(&v54, &v53, v22);
      if ((*(v23 + *(*v23 - 24) + 32) & 5) == 0)
      {
        v24 = std::string::find(&v53, 35, 0);
        size = v53.__r_.__value_.__l.__size_;
        if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v26 = &v53;
        }

        else
        {
          v26 = v53.__r_.__value_.__r.__words[0];
        }

        if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v53.__r_.__value_.__r.__words[2]);
        }

        if (size)
        {
          v27 = 0;
          while (1)
          {
            v28 = v26->__r_.__value_.__s.__data_[v27];
            v29 = v28 > 0x23;
            v30 = (1 << v28) & 0x900000200;
            if (v29 || v30 == 0)
            {
              break;
            }

            if (size == ++v27)
            {
              goto LABEL_35;
            }
          }
        }

        else
        {
LABEL_35:
          v27 = -1;
        }

        if (v24 < v27)
        {
          if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
          {
            *v53.__r_.__value_.__l.__data_ = 0;
            v53.__r_.__value_.__l.__size_ = 0;
          }

          else
          {
            v53.__r_.__value_.__s.__data_[0] = 0;
            *(&v53.__r_.__value_.__s + 23) = 0;
          }
        }

        sub_29A070BA0(v52);
      }

      *&v50[0].__locale_ = 0u;
      v51 = 0u;
      pxrInternal__aapl__pxrReserved__::TfStringJoin("\n", v52, &__p);
      pxrInternal__aapl__pxrReserved__::JsParseString(&__p, v50, v32, &v48);
      v19 = v40;
      v15 = MEMORY[0x29EDC9518];
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (pxrInternal__aapl__pxrReserved__::JsValue::IsNull(&v48))
      {
        __p.__r_.__value_.__r.__words[0] = "plug/info.cpp";
        __p.__r_.__value_.__l.__size_ = "_ReadPlugInfoObject";
        __p.__r_.__value_.__r.__words[2] = 181;
        v46 = "BOOL pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ReadPlugInfoObject(const std::string &, JsObject *)";
        v47 = 0;
        if (v2[23] >= 0)
        {
          v33 = v2;
        }

        else
        {
          v33 = *v2;
        }

        locale = &v50[1];
        if (v51 < 0)
        {
          locale = v50[1].__locale_;
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Plugin info file %s couldn't be read (line %d, col %d): %s", v33, LODWORD(v50[0].__locale_), HIDWORD(v50[0].__locale_), locale);
      }

      else if (pxrInternal__aapl__pxrReserved__::JsValue::IsObject(&v48))
      {
        JsObject = pxrInternal__aapl__pxrReserved__::JsValue::GetJsObject(&v48);
        if (JsObject != &v43)
        {
          sub_29A1782A0(&v43, *JsObject, (JsObject + 8));
        }
      }

      else
      {
        __p.__r_.__value_.__r.__words[0] = "plug/info.cpp";
        __p.__r_.__value_.__l.__size_ = "_ReadPlugInfoObject";
        __p.__r_.__value_.__r.__words[2] = 186;
        v46 = "BOOL pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ReadPlugInfoObject(const std::string &, JsObject *)";
        v47 = 0;
        if (v2[23] >= 0)
        {
          v39 = v2;
        }

        else
        {
          v39 = *v2;
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Plugin info file %s did not contain a JSON object", v39);
      }

      if (v49)
      {
        sub_29A014BEC(v49);
      }

      if (SHIBYTE(v51) < 0)
      {
        operator delete(v50[1].__locale_);
      }

      __p.__r_.__value_.__r.__words[0] = v52;
      sub_29A012C90(&__p);
      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v53.__r_.__value_.__l.__data_);
      }
    }

    else if (sub_29A174A74(3))
    {
      if (v2[23] >= 0)
      {
        v37 = v2;
      }

      else
      {
        v37 = *v2;
      }

      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Failed to open plugin info %s\n", v35, v36, v37);
    }

    *&v54 = *v15;
    *(&v55[-2] + *(v54 - 24)) = v15[3];
    MEMORY[0x29C2C1D20](v55);
    std::istream::~istream();
    MEMORY[0x29C2C4390](v57);
    if (v19)
    {
      if (v2[23] < 0)
      {
        sub_29A008D14(__dst, *v2, *(v2 + 1));
      }

      else
      {
        *__dst = *v2;
        v42 = *(v2 + 2);
      }

      sub_29A1792C4(a1, __dst, &v43);
      if (SHIBYTE(v42) < 0)
      {
        operator delete(__dst[0]);
      }
    }

    sub_29A09932C(&v43, v44[0]);
  }

  else if (v10)
  {
    if (v2[23] < 0)
    {
      v2 = *v2;
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Ignore already read plugin info %s\n", v11, v12, v2);
  }
}

void sub_29A17B3B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, void *a23, uint64_t a24, char *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34, std::locale a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51)
{
  if (a34)
  {
    sub_29A014BEC(a34);
  }

  if (a41 < 0)
  {
    operator delete(__p);
  }

  a25 = &a42;
  sub_29A012C90(&a25);
  if (a50 < 0)
  {
    operator delete(a45);
  }

  sub_29A0DDFB0(&a51);
  sub_29A09932C(&a22, a23);
  _Unwind_Resume(a1);
}

void sub_29A17B4A4(void *a1, uint64_t a2)
{
  sub_29A17B698(&v5, a2);
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

uint64_t sub_29A17B4EC(uint64_t a1)
{
  *a1 = &unk_2A2041788;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_29A17B53C(void **__p)
{
  *__p = &unk_2A2041788;
  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

uint64_t sub_29A17B59C(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v7);
  v2 = *(a1 + 8);
  if (*(a1 + 39) < 0)
  {
    sub_29A008D14(__p, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    *__p = *(a1 + 16);
    v9 = *(a1 + 32);
  }

  sub_29A17ACCC(v2, __p);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v4 = v7;
  v5 = atomic_load((v3 + 144));
  if (v4 < v5 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v7, v3))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v7, *(a1 + 40));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v7);
  return 0;
}

void sub_29A17B66C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&a10);
  _Unwind_Resume(a1);
}

void *sub_29A17B698(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20417D0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A17B6F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_29A17B78C(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A17B71C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A17B74C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2041820))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29A17B78C(int a1, std::locale *this)
{
  if (this)
  {
    locale = this[6].__locale_;
    if (locale)
    {
      sub_29A014BEC(locale);
    }

    std::locale::~locale(this);

    operator delete(v4);
  }
}

uint64_t sub_29A17B7D8(uint64_t a1)
{
  *a1 = &unk_2A2041848;
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_29A17B834(char *__p)
{
  *__p = &unk_2A2041848;
  v2 = *(__p + 6);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  if (__p[39] < 0)
  {
    operator delete(*(__p + 2));
  }

  operator delete(__p);
}

uint64_t sub_29A17B8A0(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v8);
  v2 = *(a1 + 8);
  v3 = *(a1 + 48);
  v9[0] = *(a1 + 40);
  v9[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A17B984(v2, (a1 + 16), v9);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v5 = v8;
  v6 = atomic_load((v4 + 144));
  if (v5 < v6 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v8, v4))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v8, *(a1 + 56));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v8);
  return 0;
}

void sub_29A17B95C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

void sub_29A17B984(uint64_t **a1, char *a2, uint64_t a3)
{
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  pxrInternal__aapl__pxrReserved__::TfReadDir(a2, &v36, &v33, &v33, 0);
  v6 = v33;
  v7 = v34;
  if (v33 == v34)
  {
LABEL_13:
    v12 = v36;
    for (i = v37; v12 != i; v12 += 24)
    {
      pxrInternal__aapl__pxrReserved__::TfStringCatPaths(a2, v12, &__dst);
      v14 = *a1;
      __p[0] = a1;
      if (SHIBYTE(v47) < 0)
      {
        sub_29A008D14(&__p[1], __dst, *(&__dst + 1));
      }

      else
      {
        *&__p[1] = __dst;
        __p[3] = v47;
      }

      v15 = *(a3 + 8);
      __p[4] = *a3;
      __p[5] = v15;
      if (v15)
      {
        atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
      }

      v16 = *v14;
      if (*v14)
      {
        v17 = *(v16 + 256);
        v31[0] = 0;
        v31[1] = v17;
        v18 = tbb::internal::allocate_additional_child_of_proxy::allocate(v31, 0x40uLL);
        v19 = v18;
        *(v18 - 11) = 1;
        *v18 = &unk_2A20418D8;
        *(v18 + 8) = __p[0];
        if (SHIBYTE(__p[3]) < 0)
        {
          sub_29A008D14((v18 + 16), __p[1], __p[2]);
        }

        else
        {
          v20 = *&__p[1];
          *(v18 + 32) = __p[3];
          *(v18 + 16) = v20;
        }

        *(v19 + 40) = __p[4];
        v23 = __p[5];
        *(v19 + 48) = __p[5];
        if (v23)
        {
          atomic_fetch_add_explicit(v23 + 1, 1uLL, memory_order_relaxed);
        }

        *(v19 + 56) = v16 + 272;
        (***(v19 - 40))(*(v19 - 40), v19, v19 - 8);
      }

      else
      {
        v21 = __p[0];
        v22 = __p[5];
        v31[0] = __p[4];
        v31[1] = __p[5];
        if (__p[5])
        {
          atomic_fetch_add_explicit(__p[5] + 1, 1uLL, memory_order_relaxed);
        }

        sub_29A17B984(v21, &__p[1], v31);
        if (v22)
        {
          sub_29A014BEC(v22);
        }
      }

      if (__p[5])
      {
        sub_29A014BEC(__p[5]);
      }

      if (SHIBYTE(__p[3]) < 0)
      {
        operator delete(__p[1]);
      }

      if (SHIBYTE(v47) < 0)
      {
        operator delete(__dst);
      }
    }
  }

  else
  {
    while (1)
    {
      pxrInternal__aapl__pxrReserved__::TfStringCatPaths(a2, v6, v31);
      v8 = *a3;
      v9 = HIBYTE(v32);
      if (SHIBYTE(v32) >= 0)
      {
        v10 = v31;
      }

      else
      {
        v10 = v31[0];
      }

      if (SHIBYTE(v32) < 0)
      {
        v9 = v31[1];
      }

      __p[6] = 0;
      __p[7] = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      memset(__p, 0, 41);
      v11 = sub_29A17BEA8(v10, v9 + v10, __p, v8, 0);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v11)
      {
        break;
      }

      if (SHIBYTE(v32) < 0)
      {
        operator delete(v31[0]);
      }

      v6 += 24;
      if (v6 == v7)
      {
        goto LABEL_13;
      }
    }

    v24 = *a1;
    __p[0] = a1;
    if (SHIBYTE(v32) < 0)
    {
      sub_29A008D14(&__p[1], v31[0], v31[1]);
    }

    else
    {
      *&__p[1] = *v31;
      __p[3] = v32;
    }

    v25 = *v24;
    if (*v24)
    {
      v26 = *(v25 + 256);
      *&__dst = 0;
      *(&__dst + 1) = v26;
      v27 = tbb::internal::allocate_additional_child_of_proxy::allocate(&__dst, 0x30uLL);
      v28 = v27;
      *(v27 - 11) = 1;
      *v27 = &unk_2A2041890;
      *(v27 + 8) = __p[0];
      if (SHIBYTE(__p[3]) < 0)
      {
        sub_29A008D14((v27 + 16), __p[1], __p[2]);
      }

      else
      {
        v29 = *&__p[1];
        *(v27 + 32) = __p[3];
        *(v27 + 16) = v29;
      }

      *(v28 + 40) = v25 + 272;
      (***(v28 - 40))(*(v28 - 40), v28, v28 - 8);
    }

    else
    {
      v30 = __p[0];
      if (SHIBYTE(__p[3]) < 0)
      {
        sub_29A008D14(&__dst, __p[1], __p[2]);
      }

      else
      {
        __dst = *&__p[1];
        v47 = __p[3];
      }

      sub_29A17ACCC(v30, &__dst);
      if (SHIBYTE(v47) < 0)
      {
        operator delete(__dst);
      }
    }

    if (SHIBYTE(__p[3]) < 0)
    {
      operator delete(__p[1]);
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31[0]);
    }
  }

  __p[0] = &v33;
  sub_29A012C90(__p);
  __p[0] = &v36;
  sub_29A012C90(__p);
}

void sub_29A17BDB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char *a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  tbb::internal::allocate_additional_child_of_proxy::free((v29 - 128), v28);
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  a22 = &a16;
  sub_29A012C90(&a22);
  a22 = &a19;
  sub_29A012C90(&a22);
  _Unwind_Resume(a1);
}

uint64_t sub_29A17BEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a5;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  *__p = 0u;
  memset(v12, 0, sizeof(v12));
  v9 = sub_29A0D5434(a4, a1, a2, __p, a5 | 0x1040u);
  sub_29A0D5600(a3, a1, a2, __p, (v5 & 0x800) != 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (!v9)
  {
    return 0;
  }

  if (*(a3 + 88) != 1)
  {
    return 1;
  }

  result = 0;
  *(a3 + 8) = *a3;
  return result;
}

void sub_29A17BF88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A17BFA4(uint64_t a1)
{
  *a1 = &unk_2A2041890;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_29A17BFF4(void **__p)
{
  *__p = &unk_2A2041890;
  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

uint64_t sub_29A17C054(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v7);
  v2 = *(a1 + 8);
  if (*(a1 + 39) < 0)
  {
    sub_29A008D14(__p, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    *__p = *(a1 + 16);
    v9 = *(a1 + 32);
  }

  sub_29A17ACCC(v2, __p);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v4 = v7;
  v5 = atomic_load((v3 + 144));
  if (v4 < v5 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v7, v3))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v7, *(a1 + 40));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v7);
  return 0;
}

void sub_29A17C124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_29A17C150(uint64_t a1)
{
  *a1 = &unk_2A20418D8;
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_29A17C1AC(char *__p)
{
  *__p = &unk_2A20418D8;
  v2 = *(__p + 6);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  if (__p[39] < 0)
  {
    operator delete(*(__p + 2));
  }

  operator delete(__p);
}

uint64_t sub_29A17C218(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v8);
  v2 = *(a1 + 8);
  v3 = *(a1 + 48);
  v9[0] = *(a1 + 40);
  v9[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A17B984(v2, (a1 + 16), v9);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v5 = v8;
  v6 = atomic_load((v4 + 144));
  if (v5 < v6 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v8, v4))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v8, *(a1 + 56));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v8);
  return 0;
}

void sub_29A17C2D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

void sub_29A17C2FC(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 32) == 1)
  {
    if (*(a1 + 31) < 0)
    {
      sub_29A008D14(__p, *(a1 + 8), *(a1 + 16));
    }

    else
    {
      *__p = *(a1 + 8);
      v10 = *(a1 + 24);
    }
  }

  else
  {
    if (*(a1 + 31) >= 0)
    {
      v3 = *(a1 + 31);
    }

    else
    {
      v3 = *(a1 + 16);
    }

    v4 = __p;
    sub_29A022DE0(__p, v3 + 1);
    if (v10 < 0)
    {
      v4 = __p[0];
    }

    if (v3)
    {
      v7 = *(a1 + 8);
      v6 = (a1 + 8);
      v5 = v7;
      if (v6[23] >= 0)
      {
        v8 = v6;
      }

      else
      {
        v8 = v5;
      }

      memmove(v4, v8, v3);
    }

    *(v4 + v3) = 47;
  }

  sub_29A17A2A4(v2, __p);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A17C3E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A17C400(uint64_t a1)
{
  *a1 = &unk_2A2041920;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_29A17C450(void **__p)
{
  *__p = &unk_2A2041920;
  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

uint64_t sub_29A17C4B0(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  sub_29A17C2FC(a1 + 8);
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

void sub_29A17C540(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A17C554(uint64_t a1)
{
  *a1 = &unk_2A2041968;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_29A17C5A4(void **__p)
{
  *__p = &unk_2A2041968;
  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

uint64_t sub_29A17C604(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  sub_29A17A2A4(*(a1 + 8), a1 + 16);
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 40));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29A17C698(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::_TestPlugBase<1>::~_TestPlugBase(uint64_t *a1, const void *a2)
{
  sub_29A0F6078(a1 + 2, a2);

  pxrInternal__aapl__pxrReserved__::TfRefBase::~TfRefBase(a1);
}

{
  sub_29A0F6078(a1 + 2, a2);

  pxrInternal__aapl__pxrReserved__::TfRefBase::~TfRefBase(a1);
}

{
  sub_29A0F6078(a1 + 2, a2);
  pxrInternal__aapl__pxrReserved__::TfRefBase::~TfRefBase(a1);

  operator delete(v3);
}

char *pxrInternal__aapl__pxrReserved__::_TestPlugBase<1>::GetTypeName@<X0>(uint64_t a1@<X0>, const std::type_info *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a1;
  v4 = sub_29A17C7C4(&v7, a2);
  result = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v4);
  if (result[23] < 0)
  {
    return sub_29A008D14(a3, *result, *(result + 1));
  }

  v6 = *result;
  *(a3 + 16) = *(result + 2);
  *a3 = v6;
  return result;
}

const void *sub_29A17C7C4(pxrInternal__aapl__pxrReserved__::TfType *a1, const std::type_info *a2)
{
  if (*a1)
  {
    return pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(*(**a1 - 8), a2);
  }

  else
  {
    return pxrInternal__aapl__pxrReserved__::TfType::GetUnknownType(a1);
  }
}

_DWORD *pxrInternal__aapl__pxrReserved__::_TestPlugBase<1>::New@<X0>(void *a1@<X8>)
{
  result = operator new(0x18uLL);
  result[2] = 1;
  *(result + 2) = 0;
  *result = &unk_2A20419B0;
  *a1 = result;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::_TestPlugBase<1>::_TestPlugBase(uint64_t result)
{
  *(result + 8) = 1;
  *(result + 16) = 0;
  *result = &unk_2A20419B0;
  return result;
}

{
  *(result + 8) = 1;
  *(result + 16) = 0;
  *result = &unk_2A20419B0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::_TestPlugBase<1>::Manufacture(uint64_t a1@<X0>, void *a2@<X8>)
{
  TypeByName = pxrInternal__aapl__pxrReserved__::PlugRegistry::FindTypeByName(a1);
  v9 = TypeByName;
  pxrInternal__aapl__pxrReserved__::TfType::TfType(v7);
  if (v7[0] == TypeByName)
  {
    v7[0] = "plug/testPlugBase.cpp";
    v7[1] = "Manufacture";
    v7[2] = 25;
    v7[3] = "static TfRefPtr<_TestPlugBase<N>> pxrInternal__aapl__pxrReserved__::_TestPlugBase<1>::Manufacture(const std::string &) [M = 1]";
    v8 = 0;
    if (*(a1 + 23) >= 0)
    {
      v6 = a1;
    }

    else
    {
      v6 = *a1;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "Failed to find TfType for %s", v6);
  }

  else
  {
    v5 = sub_29A17C950(&v9);
    if (v5)
    {
      (*(*v5 + 16))(v5);
      return;
    }
  }

  *a2 = 0;
}

void *sub_29A17C950(pxrInternal__aapl__pxrReserved__::TfType *a1)
{
  result = pxrInternal__aapl__pxrReserved__::TfType::_GetFactory(a1);
  if (result)
  {
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::_TestPlugBase<2>::~_TestPlugBase(uint64_t *a1, const void *a2)
{
  sub_29A0F6078(a1 + 2, a2);

  pxrInternal__aapl__pxrReserved__::TfRefBase::~TfRefBase(a1);
}

{
  sub_29A0F6078(a1 + 2, a2);

  pxrInternal__aapl__pxrReserved__::TfRefBase::~TfRefBase(a1);
}

{
  sub_29A0F6078(a1 + 2, a2);
  pxrInternal__aapl__pxrReserved__::TfRefBase::~TfRefBase(a1);

  operator delete(v3);
}

char *pxrInternal__aapl__pxrReserved__::_TestPlugBase<2>::GetTypeName@<X0>(uint64_t a1@<X0>, const std::type_info *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a1;
  v4 = sub_29A17C7C4(&v7, a2);
  result = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v4);
  if (result[23] < 0)
  {
    return sub_29A008D14(a3, *result, *(result + 1));
  }

  v6 = *result;
  *(a3 + 16) = *(result + 2);
  *a3 = v6;
  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::_TestPlugBase<2>::New@<X0>(void *a1@<X8>)
{
  result = operator new(0x18uLL);
  result[2] = 1;
  *(result + 2) = 0;
  *result = &unk_2A20419D8;
  *a1 = result;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::_TestPlugBase<2>::_TestPlugBase(uint64_t result)
{
  *(result + 8) = 1;
  *(result + 16) = 0;
  *result = &unk_2A20419D8;
  return result;
}

{
  *(result + 8) = 1;
  *(result + 16) = 0;
  *result = &unk_2A20419D8;
  return result;
}

void pxrInternal__aapl__pxrReserved__::_TestPlugBase<2>::Manufacture(uint64_t a1@<X0>, void *a2@<X8>)
{
  TypeByName = pxrInternal__aapl__pxrReserved__::PlugRegistry::FindTypeByName(a1);
  v9 = TypeByName;
  pxrInternal__aapl__pxrReserved__::TfType::TfType(v7);
  if (v7[0] == TypeByName)
  {
    v7[0] = "plug/testPlugBase.cpp";
    v7[1] = "Manufacture";
    v7[2] = 25;
    v7[3] = "static TfRefPtr<_TestPlugBase<N>> pxrInternal__aapl__pxrReserved__::_TestPlugBase<2>::Manufacture(const std::string &) [M = 2]";
    v8 = 0;
    if (*(a1 + 23) >= 0)
    {
      v6 = a1;
    }

    else
    {
      v6 = *a1;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "Failed to find TfType for %s", v6);
  }

  else
  {
    v5 = sub_29A17CC6C(&v9);
    if (v5)
    {
      (*(*v5 + 16))(v5);
      return;
    }
  }

  *a2 = 0;
}

void *sub_29A17CC6C(pxrInternal__aapl__pxrReserved__::TfType *a1)
{
  result = pxrInternal__aapl__pxrReserved__::TfType::_GetFactory(a1);
  if (result)
  {
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::_TestPlugBase<3>::~_TestPlugBase(uint64_t *a1, const void *a2)
{
  sub_29A0F6078(a1 + 2, a2);

  pxrInternal__aapl__pxrReserved__::TfRefBase::~TfRefBase(a1);
}

{
  sub_29A0F6078(a1 + 2, a2);

  pxrInternal__aapl__pxrReserved__::TfRefBase::~TfRefBase(a1);
}

{
  sub_29A0F6078(a1 + 2, a2);
  pxrInternal__aapl__pxrReserved__::TfRefBase::~TfRefBase(a1);

  operator delete(v3);
}

char *pxrInternal__aapl__pxrReserved__::_TestPlugBase<3>::GetTypeName@<X0>(uint64_t a1@<X0>, const std::type_info *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a1;
  v4 = sub_29A17C7C4(&v7, a2);
  result = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v4);
  if (result[23] < 0)
  {
    return sub_29A008D14(a3, *result, *(result + 1));
  }

  v6 = *result;
  *(a3 + 16) = *(result + 2);
  *a3 = v6;
  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::_TestPlugBase<3>::New@<X0>(void *a1@<X8>)
{
  result = operator new(0x18uLL);
  result[2] = 1;
  *(result + 2) = 0;
  *result = &unk_2A2041A00;
  *a1 = result;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::_TestPlugBase<3>::_TestPlugBase(uint64_t result)
{
  *(result + 8) = 1;
  *(result + 16) = 0;
  *result = &unk_2A2041A00;
  return result;
}

{
  *(result + 8) = 1;
  *(result + 16) = 0;
  *result = &unk_2A2041A00;
  return result;
}

void pxrInternal__aapl__pxrReserved__::_TestPlugBase<3>::Manufacture(uint64_t a1@<X0>, void *a2@<X8>)
{
  TypeByName = pxrInternal__aapl__pxrReserved__::PlugRegistry::FindTypeByName(a1);
  v9 = TypeByName;
  pxrInternal__aapl__pxrReserved__::TfType::TfType(v7);
  if (v7[0] == TypeByName)
  {
    v7[0] = "plug/testPlugBase.cpp";
    v7[1] = "Manufacture";
    v7[2] = 25;
    v7[3] = "static TfRefPtr<_TestPlugBase<N>> pxrInternal__aapl__pxrReserved__::_TestPlugBase<3>::Manufacture(const std::string &) [M = 3]";
    v8 = 0;
    if (*(a1 + 23) >= 0)
    {
      v6 = a1;
    }

    else
    {
      v6 = *a1;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "Failed to find TfType for %s", v6);
  }

  else
  {
    v5 = sub_29A17CF88(&v9);
    if (v5)
    {
      (*(*v5 + 16))(v5);
      return;
    }
  }

  *a2 = 0;
}

void *sub_29A17CF88(pxrInternal__aapl__pxrReserved__::TfType *a1)
{
  result = pxrInternal__aapl__pxrReserved__::TfType::_GetFactory(a1);
  if (result)
  {
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::_TestPlugBase<4>::~_TestPlugBase(uint64_t *a1, const void *a2)
{
  sub_29A0F6078(a1 + 2, a2);

  pxrInternal__aapl__pxrReserved__::TfRefBase::~TfRefBase(a1);
}

{
  sub_29A0F6078(a1 + 2, a2);

  pxrInternal__aapl__pxrReserved__::TfRefBase::~TfRefBase(a1);
}

{
  sub_29A0F6078(a1 + 2, a2);
  pxrInternal__aapl__pxrReserved__::TfRefBase::~TfRefBase(a1);

  operator delete(v3);
}

char *pxrInternal__aapl__pxrReserved__::_TestPlugBase<4>::GetTypeName@<X0>(uint64_t a1@<X0>, const std::type_info *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a1;
  v4 = sub_29A17C7C4(&v7, a2);
  result = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v4);
  if (result[23] < 0)
  {
    return sub_29A008D14(a3, *result, *(result + 1));
  }

  v6 = *result;
  *(a3 + 16) = *(result + 2);
  *a3 = v6;
  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::_TestPlugBase<4>::New@<X0>(void *a1@<X8>)
{
  result = operator new(0x18uLL);
  result[2] = 1;
  *(result + 2) = 0;
  *result = &unk_2A2041A28;
  *a1 = result;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::_TestPlugBase<4>::_TestPlugBase(uint64_t result)
{
  *(result + 8) = 1;
  *(result + 16) = 0;
  *result = &unk_2A2041A28;
  return result;
}

{
  *(result + 8) = 1;
  *(result + 16) = 0;
  *result = &unk_2A2041A28;
  return result;
}

void pxrInternal__aapl__pxrReserved__::_TestPlugBase<4>::Manufacture(uint64_t a1@<X0>, void *a2@<X8>)
{
  TypeByName = pxrInternal__aapl__pxrReserved__::PlugRegistry::FindTypeByName(a1);
  v9 = TypeByName;
  pxrInternal__aapl__pxrReserved__::TfType::TfType(v7);
  if (v7[0] == TypeByName)
  {
    v7[0] = "plug/testPlugBase.cpp";
    v7[1] = "Manufacture";
    v7[2] = 25;
    v7[3] = "static TfRefPtr<_TestPlugBase<N>> pxrInternal__aapl__pxrReserved__::_TestPlugBase<4>::Manufacture(const std::string &) [M = 4]";
    v8 = 0;
    if (*(a1 + 23) >= 0)
    {
      v6 = a1;
    }

    else
    {
      v6 = *a1;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "Failed to find TfType for %s", v6);
  }

  else
  {
    v5 = sub_29A17D2A4(&v9);
    if (v5)
    {
      (*(*v5 + 16))(v5);
      return;
    }
  }

  *a2 = 0;
}

void *sub_29A17D2A4(pxrInternal__aapl__pxrReserved__::TfType *a1)
{
  result = pxrInternal__aapl__pxrReserved__::TfType::_GetFactory(a1);
  if (result)
  {
  }

  return result;
}

uint64_t sub_29A17D340()
{
  sub_29A17D440(v0);
  sub_29A17D4E8(v1);
  sub_29A17D590(v2);
  sub_29A17D638(v3);
  v6 = nullsub_54;
  v4 = pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2041C80, &v7, &v6, 1, 24, 0, 0);
  return sub_29A17D6E0(v4);
}

uint64_t sub_29A17D440(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A2041B30;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::TfType::SetFactory(a1, &v4);
  result = v4;
  v4 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_29A17D4CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B290BEC();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A17D4E8(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A2041B88;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::TfType::SetFactory(a1, &v4);
  result = v4;
  v4 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_29A17D574(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B290BEC();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A17D590(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A2041BE0;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::TfType::SetFactory(a1, &v4);
  result = v4;
  v4 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_29A17D61C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B290BEC();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A17D638(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A2041C38;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::TfType::SetFactory(a1, &v4);
  result = v4;
  v4 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_29A17D6C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B290BEC();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A17D6E0(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A2041CA8;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::TfType::SetFactory(a1, &v4);
  result = v4;
  v4 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_29A17D76C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B290BEC();
  }

  _Unwind_Resume(exception_object);
}

void sub_29A17D78C(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

_DWORD *sub_29A17D7B4@<X0>(void *a1@<X8>)
{
  result = operator new(0x18uLL);
  result[2] = 1;
  *(result + 2) = 0;
  *result = &unk_2A20419B0;
  *a1 = result;
  return result;
}

void sub_29A17D80C(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

_DWORD *sub_29A17D834@<X0>(void *a1@<X8>)
{
  result = operator new(0x18uLL);
  result[2] = 1;
  *(result + 2) = 0;
  *result = &unk_2A20419D8;
  *a1 = result;
  return result;
}

void sub_29A17D88C(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

_DWORD *sub_29A17D8B4@<X0>(void *a1@<X8>)
{
  result = operator new(0x18uLL);
  result[2] = 1;
  *(result + 2) = 0;
  *result = &unk_2A2041A00;
  *a1 = result;
  return result;
}

void sub_29A17D90C(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

_DWORD *sub_29A17D934@<X0>(void *a1@<X8>)
{
  result = operator new(0x18uLL);
  result[2] = 1;
  *(result + 2) = 0;
  *result = &unk_2A2041A28;
  *a1 = result;
  return result;
}

void sub_29A17D990(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter **sub_29A17D9BC@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x18uLL);
  v2[2] = 1;
  *(v2 + 2) = 0;
  *v2 = &unk_2A2041CE8;
  *a1 = v2;
  v4 = 0;
  return sub_29A17DAA0(&v4);
}

void sub_29A17DA24(uint64_t *a1, const void *a2)
{
  sub_29A0F6078(a1 + 2, a2);

  pxrInternal__aapl__pxrReserved__::TfRefBase::~TfRefBase(a1);
}

void sub_29A17DA60(uint64_t *a1, const void *a2)
{
  sub_29A0F6078(a1 + 2, a2);
  pxrInternal__aapl__pxrReserved__::TfRefBase::~TfRefBase(a1);

  operator delete(v3);
}

uint64_t *sub_29A17DAD0()
{
  v1 = nullsub_55;
  v1 = nullsub_56;
}

void pxrInternal__aapl__pxrReserved__::PlugNotice::Base::~Base(pxrInternal__aapl__pxrReserved__::PlugNotice::Base *this)
{
  pxrInternal__aapl__pxrReserved__::TfNotice::~TfNotice(this);

  operator delete(v1);
}

void *pxrInternal__aapl__pxrReserved__::PlugNotice::DidRegisterPlugins::DidRegisterPlugins(void *a1, void **a2)
{
  *a1 = &unk_2A2041D10;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  sub_29A17DD2C(a1 + 1, *a2, a2[1], (a2[1] - *a2) >> 4);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::PlugNotice::DidRegisterPlugins::~DidRegisterPlugins(pxrInternal__aapl__pxrReserved__::PlugNotice::DidRegisterPlugins *this)
{
  *this = &unk_2A2041D10;
  v2 = (this + 8);
  sub_29A17DEA8(&v2);
  pxrInternal__aapl__pxrReserved__::TfNotice::~TfNotice(this);
}

{
  *this = &unk_2A2041D10;
  v2 = (this + 8);
  sub_29A17DEA8(&v2);
  pxrInternal__aapl__pxrReserved__::TfNotice::~TfNotice(this);
}

{
  *this = &unk_2A2041D10;
  v3 = (this + 8);
  sub_29A17DEA8(&v3);
  pxrInternal__aapl__pxrReserved__::TfNotice::~TfNotice(this);
  operator delete(v2);
}

void *sub_29A17DD2C(void *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A0D0518(result, a4);
    result = sub_29A17DDB4(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29A17DD94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A17DEA8(&a9);
  _Unwind_Resume(a1);
}

void *sub_29A17DDB4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1u, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_29A17DE3C(v7);
  return v4;
}

uint64_t sub_29A17DE3C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A17DE74(a1);
  }

  return a1;
}

atomic_uint *sub_29A17DE74(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  result = *v1;
  if (*v1 != *v2)
  {
    return sub_29B28DF58(result, *v2);
  }

  return result;
}

void sub_29A17DEA8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29A110958(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_29A17DEFC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = atomic_load(&qword_2A173F360);
  if (!v4)
  {
    v4 = sub_29A180A6C(&qword_2A173F360);
  }

  sub_29A17DF64(a1, 0, (a1 + 80), v4, a2);
}

void sub_29A17DF64(uint64_t a1@<X0>, int a2@<W1>, __int128 *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = atomic_load(&qword_2A173F378);
  if (!v10)
  {
    v10 = sub_29A181B8C(&qword_2A173F378);
  }

  std::mutex::lock(v10);
  v11 = atomic_load(&qword_2A173F388);
  if (!v11)
  {
    v11 = sub_29A181C78(&qword_2A173F388);
  }

  *&v38 = a1 + 32;
  v12 = sub_29A180B44(v11, (a1 + 32), &unk_29B4D6118, &v38);
  v13 = v12;
  if ((v14 & 1) == 0)
  {
    v21 = *(v12 + 32);
    if (!v21)
    {
      *&v38 = "plug/plugin.cpp";
      *(&v38 + 1) = "_NewPlugin";
      v39 = 89;
      v40 = "static pair<PlugPluginPtr, BOOL> pxrInternal__aapl__pxrReserved__::PlugPlugin::_NewPlugin(const Plug_RegistrationMetadata &, _Type, const std::string &, PluginMap *) [PluginMap = pxrInternal__aapl__pxrReserved__::TfHashMap<std::string, pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::PlugPlugin>, pxrInternal__aapl__pxrReserved__::TfHash>]";
      v41 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v38, "it->second", 0);
      v21 = *(v13 + 32);
    }

    sub_29A181D44(&v38, v21);
    *a5 = v38;
    goto LABEL_18;
  }

  v15 = sub_29A0FC520(a4, (a1 + 8));
  v16 = v15;
  if (v15)
  {
    v17 = sub_29B290C20((v15 + 5));
    if (!(v18 & 1 | v17))
    {
      *&v38 = "plug/plugin.cpp";
      *(&v38 + 1) = "_NewPlugin";
      v39 = 97;
      v40 = "static pair<PlugPluginPtr, BOOL> pxrInternal__aapl__pxrReserved__::PlugPlugin::_NewPlugin(const Plug_RegistrationMetadata &, _Type, const std::string &, PluginMap *) [PluginMap = pxrInternal__aapl__pxrReserved__::TfHashMap<std::string, pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::PlugPlugin>, pxrInternal__aapl__pxrReserved__::TfHash>]";
      v41 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v38, "it->second", 0);
    }

    if (sub_29A174A74(1))
    {
      sub_29A17F138((v16 + 5));
    }

    v19 = atomic_load(&qword_2A173F388);
    if (!v19)
    {
      v19 = sub_29A181C78(&qword_2A173F388);
    }

    sub_29A18157C(v19, v13);
    v20 = v16[6];
    *a5 = v16[5];
    *(a5 + 8) = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(v20 + 2, 1u, memory_order_relaxed);
    }

LABEL_18:
    *(a5 + 16) = 0;
    goto LABEL_19;
  }

  if (sub_29A174A74(1))
  {
    v24 = "<invalid enum value>";
    if (a2 == 2)
    {
      v24 = "resource";
    }

    if (!a2)
    {
      v24 = "shared library";
    }

    if (*(a1 + 31) >= 0)
    {
      v25 = a1 + 8;
    }

    else
    {
      v25 = *(a1 + 8);
    }

    if (*(a3 + 23) >= 0)
    {
      v26 = a3;
    }

    else
    {
      v26 = *a3;
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Registering %s plugin '%s' at '%s'.\n\n", v22, v23, v24, v25, v26);
  }

  v27 = operator new(0x78uLL);
  sub_29A17E494(v27, a3, (a1 + 8), (a1 + 104), (a1 + 56), a2);
  if (sub_29A174A74(1))
  {
    v28 = *(a1 + 55);
    if ((v28 & 0x80u) != 0)
    {
      v28 = *(a1 + 40);
    }

    if (v28 && (pxrInternal__aapl__pxrReserved__::TfIsFile(a3, 1) & 1) == 0 && sub_29A174A74(1))
    {
      if (*(a1 + 31) >= 0)
      {
        v31 = a1 + 8;
      }

      else
      {
        v31 = *(a1 + 8);
      }

      if (*(a3 + 23) >= 0)
      {
        v32 = a3;
      }

      else
      {
        v32 = *a3;
      }

      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Unable to read library plugin '%s' at '%s'.\n\n", v29, v30, v31, v32);
    }
  }

  sub_29A181D44(&v38, v27);
  sub_29A181698((v13 + 32), v27);
  v42 = (a1 + 8);
  v33 = sub_29A1816D4(a4, (a1 + 8), &unk_29B4D6118, &v42);
  v34 = v33[6];
  v35 = *(&v38 + 1);
  v33[5] = v38;
  v33[6] = v35;
  if (v35)
  {
    atomic_fetch_add_explicit(v35 + 2, 1u, memory_order_relaxed);
  }

  if (v34 && atomic_fetch_add_explicit(v34 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v34 + 8))(v34);
  }

  v36 = *(&v38 + 1);
  *a5 = v38;
  *(a5 + 8) = v36;
  if (v36)
  {
    atomic_fetch_add_explicit((v36 + 8), 1u, memory_order_relaxed);
    v37 = *(&v38 + 1);
    *(a5 + 16) = 1;
    if (v37 && atomic_fetch_add_explicit(v37 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v37 + 8))(v37);
    }
  }

  else
  {
    *(a5 + 16) = 1;
  }

LABEL_19:
  std::mutex::unlock(v10);
}

void sub_29A17E42C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = atomic_load(&qword_2A173F368);
  if (!v4)
  {
    v4 = sub_29A180A6C(&qword_2A173F368);
  }

  sub_29A17DF64(a1, 2, (a1 + 32), v4, a2);
}

uint64_t sub_29A17E494(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, const void ***a5, int a6)
{
  *a1 = 0;
  if (*(a3 + 23) < 0)
  {
    sub_29A008D14((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v11 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v11;
  }

  if (*(a2 + 23) < 0)
  {
    sub_29A008D14((a1 + 32), *a2, *(a2 + 1));
  }

  else
  {
    v12 = *a2;
    *(a1 + 48) = *(a2 + 2);
    *(a1 + 32) = v12;
  }

  if (*(a4 + 23) < 0)
  {
    sub_29A008D14((a1 + 56), *a4, *(a4 + 1));
  }

  else
  {
    v13 = *a4;
    *(a1 + 72) = *(a4 + 2);
    *(a1 + 56) = v13;
  }

  sub_29A1519B8((a1 + 80), a5);
  *(a1 + 104) = 0;
  *(a1 + 112) = a6 == 2;
  *(a1 + 116) = a6;
  return a1;
}

void sub_29A17E578(_Unwind_Exception *a1, const void *a2)
{
  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  if (*(v2 + 31) < 0)
  {
    operator delete(*v3);
  }

  sub_29A0F6078(v2, a2);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::PlugPlugin::~PlugPlugin(pxrInternal__aapl__pxrReserved__::PlugPlugin *this)
{
  sub_29A09932C(this + 80, *(this + 11));
  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  sub_29A0F6078(this, v2);
}

void pxrInternal__aapl__pxrReserved__::PlugPlugin::GetDependencies(pxrInternal__aapl__pxrReserved__::PlugPlugin *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A008E78(__p, "PluginDependencies");
  v4 = sub_29A01BCCC(this + 80, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if ((this + 88) == v4 || !pxrInternal__aapl__pxrReserved__::JsValue::IsObject((v4 + 7)))
  {
    a2[2] = 0;
    a2[1] = 0;
    *a2 = (a2 + 1);
  }

  else
  {
    JsObject = pxrInternal__aapl__pxrReserved__::JsValue::GetJsObject(v4 + 7);
    sub_29A1519B8(a2, JsObject);
  }
}

void sub_29A17E6F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29A17E714(uint64_t a1, const char *a2, char *a3)
{
  v4 = (a1 + 8);
  v5 = a1 + 8;
  if (*(a1 + 31) < 0)
  {
    v5 = v4->__r_.__value_.__r.__words[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("Load %s", a2, a3, v5);
  sub_29A181A80(&v31, "PlugPlugin::_Load", __p);
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  pxrInternal__aapl__pxrReserved__::TfGetBaseName(v4, &v30);
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v30;
  }

  else
  {
    v8 = v30.__r_.__value_.__r.__words[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("Loading plugin '%s'", v6, v7, v8);
  v20 = "plug/plugin.cpp";
  v21 = "_Load";
  v22 = 211;
  v23 = "BOOL pxrInternal__aapl__pxrReserved__::PlugPlugin::_Load()";
  v24 = 0;
  pxrInternal__aapl__pxrReserved__::TfScopeDescription::TfScopeDescription(__p, &v25, &v20);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(v25);
  }

  if (sub_29A174A74(0))
  {
    v11 = v4;
    if (*(a1 + 31) < 0)
    {
      v11 = v4->__r_.__value_.__r.__words[0];
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Loading plugin '%s'.\n", v9, v10, v11);
  }

  if (*(a1 + 116) == 2)
  {
    goto LABEL_15;
  }

  v13 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    if (*(a1 + 40))
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v14 = *v13;
      goto LABEL_21;
    }

LABEL_38:
    if (sub_29A174A74(0))
    {
      if (*(a1 + 31) < 0)
      {
        v4 = v4->__r_.__value_.__r.__words[0];
      }

      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("No path to library for '%s'.\n", v18, v19, v4);
    }

LABEL_15:
    v12 = 1;
    goto LABEL_33;
  }

  if (!*(a1 + 55))
  {
    goto LABEL_38;
  }

  v25 = 0;
  v26 = 0;
  v14 = (a1 + 32);
  v27 = 0;
LABEL_21:
  sub_29A008E78(&v20, v14);
  v15 = pxrInternal__aapl__pxrReserved__::TfDlopen(&v20, 2, &v25);
  *(a1 + 104) = v15;
  if (SHIBYTE(v22) < 0)
  {
    operator delete(v20);
    v15 = *(a1 + 104);
  }

  v12 = v15 != 0;
  if (!v15)
  {
    v20 = "plug/plugin.cpp";
    v21 = "_Load";
    v22 = 244;
    v23 = "BOOL pxrInternal__aapl__pxrReserved__::PlugPlugin::_Load()";
    v24 = 0;
    if (*(a1 + 31) < 0)
    {
      v4 = v4->__r_.__value_.__r.__words[0];
    }

    v16 = &v25;
    if (v27 < 0)
    {
      v16 = v25;
    }

    if (*(a1 + 55) < 0)
    {
      v13 = *v13;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v20, 1, "Failed to load plugin '%s': %s in '%s'", v4, v16, v13);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v25);
  }

LABEL_33:
  atomic_store(v12, (a1 + 112));
  pxrInternal__aapl__pxrReserved__::TfScopeDescription::~TfScopeDescription(__p);
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (v31)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v32, v31);
  }

  return v12;
}

void sub_29A17E998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  pxrInternal__aapl__pxrReserved__::TfScopeDescription::~TfScopeDescription(&a26);
  if (*(v26 - 81) < 0)
  {
    operator delete(*(v26 - 104));
  }

  sub_29A0E9CEC(v26 - 80);
  _Unwind_Resume(a1);
}

void sub_29A17EA30(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x29A17EA28);
}

uint64_t sub_29A17EA58(uint64_t a1, void *a2)
{
  v2 = atomic_load((a1 + 112));
  if (v2)
  {
    return 1;
  }

  v6 = (a1 + 8);
  if (sub_29A0EC378(a2, (a1 + 8)))
  {
    *&__dst = "plug/plugin.cpp";
    *(&__dst + 1) = "_LoadWithDependents";
    v48 = 267;
    v49 = "BOOL pxrInternal__aapl__pxrReserved__::PlugPlugin::_LoadWithDependents(_SeenPlugins *)";
    v50 = 0;
    if (*(a1 + 31) < 0)
    {
      v6 = *v6;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 1, "Load failed because of cyclic dependency for '%s'", v6);
    return 0;
  }

  else
  {
    sub_29A0EC530(a2, v6, v6);
    pxrInternal__aapl__pxrReserved__::PlugPlugin::GetDependencies(a1, &v45);
    v43 = v45;
    v44 = &v46;
    while (v43 != v44)
    {
      v9 = sub_29A17EF90(&v43);
      v10 = *v9;
      if (*(*v9 + 55) < 0)
      {
        sub_29A008D14(__p, *(v10 + 32), *(v10 + 40));
      }

      else
      {
        *__p = *(v10 + 32);
        v42 = *(v10 + 48);
      }

      v11 = *pxrInternal__aapl__pxrReserved__::TfType::FindByName(__p);
      pxrInternal__aapl__pxrReserved__::TfType::TfType(&__dst);
      if (__dst == v11)
      {
        *&__dst = "plug/plugin.cpp";
        *(&__dst + 1) = "_LoadWithDependents";
        v48 = 281;
        v49 = "BOOL pxrInternal__aapl__pxrReserved__::PlugPlugin::_LoadWithDependents(_SeenPlugins *)";
        v50 = 0;
        v34 = __p;
        if (v42 < 0)
        {
          v34 = __p[0];
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 1, "Load failed: unknown base class '%s'", v34);
        goto LABEL_43;
      }

      v12 = *sub_29A17EF90(&v43);
      if (!pxrInternal__aapl__pxrReserved__::JsValue::IsArray((v12 + 56)))
      {
LABEL_42:
        *&__dst = "plug/plugin.cpp";
        *(&__dst + 1) = "_LoadWithDependents";
        v48 = 288;
        v49 = "BOOL pxrInternal__aapl__pxrReserved__::PlugPlugin::_LoadWithDependents(_SeenPlugins *)";
        v50 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 1, "Load failed: dependency list has wrong type");
LABEL_43:
        if (SHIBYTE(v42) < 0)
        {
          operator delete(__p[0]);
        }

LABEL_45:
        v3 = 0;
        goto LABEL_46;
      }

      JsArray = pxrInternal__aapl__pxrReserved__::JsValue::GetJsArray((v12 + 56));
      v15 = *JsArray;
      v14 = *(JsArray + 8);
      while (v15 != v14)
      {
        if (!pxrInternal__aapl__pxrReserved__::JsValue::IsString(v15))
        {
          goto LABEL_42;
        }

        v15 = (v15 + 16);
      }

      v16 = sub_29A17EF90(&v43);
      v17 = pxrInternal__aapl__pxrReserved__::JsValue::GetJsArray((*v16 + 56));
      sub_29A012B58(&v39, (v17[1] - *v17) >> 4);
      v20 = *v17;
      v21 = v17[1];
      v22 = v39;
      if (v20 != v21)
      {
        do
        {
          String = pxrInternal__aapl__pxrReserved__::JsValue::GetString(v20);
          if (*(String + 23) < 0)
          {
            sub_29A008D14(&__dst, *String, *(String + 8));
          }

          else
          {
            v24 = *String;
            v48 = *(String + 16);
            __dst = v24;
          }

          if (*(v22 + 23) < 0)
          {
            operator delete(*v22);
          }

          v25 = __dst;
          *(v22 + 16) = v48;
          *v22 = v25;
          v22 += 24;
          v20 = (v20 + 16);
        }

        while (v20 != v21);
        v22 = v39;
      }

      v38[0] = v22;
      v38[1] = v40;
      v27 = v22;
      v26 = v40;
      if (v38[0] != v40)
      {
        v28 = sub_29A17EFC8(v38, v18, v19);
        v37 = *pxrInternal__aapl__pxrReserved__::TfType::FindByName(v28);
        pxrInternal__aapl__pxrReserved__::TfType::TfType(&v51);
        if (v37 == v51)
        {
          *&__dst = "plug/plugin.cpp";
          *(&__dst + 1) = "_LoadWithDependents";
          v48 = 300;
          v49 = "BOOL pxrInternal__aapl__pxrReserved__::PlugPlugin::_LoadWithDependents(_SeenPlugins *)";
          v50 = 0;
          if (*(v28 + 23) >= 0)
          {
            v31 = v28;
          }

          else
          {
            v31 = *v28;
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 1, "Load failed: unknown dependent class '%s'", v31);
        }

        else
        {
          sub_29A17F048(&v37, &v35);
          v29 = sub_29B290C20(&v35);
          if (v30 & 1 | v29)
          {
            sub_29A17F138(&v35);
          }

          *&__dst = "plug/plugin.cpp";
          *(&__dst + 1) = "_LoadWithDependents";
          v48 = 307;
          v49 = "BOOL pxrInternal__aapl__pxrReserved__::PlugPlugin::_LoadWithDependents(_SeenPlugins *)";
          v50 = 0;
          if (*(v28 + 23) >= 0)
          {
            v32 = v28;
          }

          else
          {
            v32 = *v28;
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 1, "Load failed: unknown dependent plugin '%s'", v32);
          sub_29B28CF5C(&v36);
        }
      }

      *&__dst = &v39;
      sub_29A012C90(&__dst);
      if (SHIBYTE(v42) < 0)
      {
        operator delete(__p[0]);
      }

      if (v27 != v26)
      {
        goto LABEL_45;
      }

      sub_29A17F208(&v43);
    }

    v3 = sub_29A17E714(a1, v7, v8);
LABEL_46:
    sub_29A09932C(&v45, v46);
  }

  return v3;
}

void sub_29A17EEBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27, void *a28, uint64_t a29, uint64_t a30)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_29A09932C(&a27, a28);
  _Unwind_Resume(a1);
}

void *sub_29A17EF90(void *result)
{
  if (*result == result[1])
  {
    sub_29B290D4C();
  }

  return result;
}

uint64_t sub_29A17EFC8(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<std::string>>::operator*() [T = const std::vector<std::string>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void sub_29A17F048(void *a1@<X0>, void *a2@<X8>)
{
  sub_29A183114();
  v4 = atomic_load(&qword_2A173F390);
  if (!v4)
  {
    v4 = sub_29A181B8C(&qword_2A173F390);
  }

  std::mutex::lock(v4);
  v5 = atomic_load(&qword_2A173F398);
  if (!v5)
  {
    v5 = sub_29A181EC4(&qword_2A173F398);
  }

  v6 = sub_29A0EB63C(v5, a1);
  if (!atomic_load(&qword_2A173F398))
  {
    sub_29A181EC4(&qword_2A173F398);
  }

  if (v6)
  {
    v8 = v6[4];
    *a2 = v6[3];
    a2[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1u, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  std::mutex::unlock(v4);
}

void sub_29A17F138(uint64_t a1)
{
  if (*(a1 + 8))
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  sub_29B290D98();
}

void *sub_29A17F188(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<std::string>>::operator++() [T = const std::vector<std::string>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 24;
  }

  return a1;
}

void *sub_29A17F208(void *a1)
{
  v2 = *a1;
  if (*a1 == a1[1])
  {
    v7[0] = "tf/iterator.h";
    v7[1] = "operator++";
    v7[2] = 233;
    v7[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::map<std::string, pxrInternal__aapl__pxrReserved__::JsValue>>::operator++() [T = std::map<std::string, pxrInternal__aapl__pxrReserved__::JsValue>, Reverse = false]";
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "iterator exhausted");
  }

  else
  {
    v3 = v2[1];
    if (v3)
    {
      do
      {
        v4 = v3;
        v3 = *v3;
      }

      while (v3);
    }

    else
    {
      do
      {
        v4 = v2[2];
        v5 = *v4 == v2;
        v2 = v4;
      }

      while (!v5);
    }

    *a1 = v4;
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::PlugPlugin::Load(pxrInternal__aapl__pxrReserved__::PlugPlugin *this)
{
  v2 = atomic_load(&qword_2A173F370);
  if (!v2)
  {
    v2 = sub_29A181B00(&qword_2A173F370);
  }

  std::recursive_mutex::lock(v2);
  v4 = atomic_load(this + 112);
  v5 = (v4 & 1) == 0 && !pxrInternal__aapl__pxrReserved__::ArchIsMainThread(v3);
  memset(v11, 0, sizeof(v11));
  v12 = 1065353216;
  v6 = sub_29A17EA58(this, v11);
  sub_29A0EB4E8(v11);
  std::recursive_mutex::unlock(v2);
  if (v5 && sub_29A174A74(2))
  {
    v9 = (this + 8);
    if (*(this + 31) < 0)
    {
      v9 = *v9;
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Loaded plugin '%s' in a secondary thread.\n", v7, v8, v9);
  }

  return v6;
}

double pxrInternal__aapl__pxrReserved__::PlugPlugin::MakeResourcePath@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(a3, *a2, *(a2 + 8));
  }

  else
  {
    v6 = *a2;
    *a3 = *a2;
    *(a3 + 16) = *(a2 + 16);
  }

  if (*(a3 + 23) < 0)
  {
    if (!*(a3 + 8))
    {
      return *&v6;
    }

    v7 = *a3;
  }

  else
  {
    v7 = a3;
    if (!*(a3 + 23))
    {
      return *&v6;
    }
  }

  if (*v7 != 47)
  {
    pxrInternal__aapl__pxrReserved__::TfStringCatPaths((a1 + 56), a2, &v9);
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    *&v6 = v9;
    *a3 = v9;
    *(a3 + 16) = v10;
  }

  return *&v6;
}

void sub_29A17F47C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::PlugPlugin::FindPluginResource(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  pxrInternal__aapl__pxrReserved__::PlugPlugin::MakeResourcePath(a1, a2, a4);
  if (a3 && !pxrInternal__aapl__pxrReserved__::TfPathExists(a4, 0))
  {
    if (*(a4 + 23) < 0)
    {
      **a4 = 0;
      *(a4 + 8) = 0;
    }

    else
    {
      *a4 = 0;
      *(a4 + 23) = 0;
    }
  }
}

void sub_29A17F4F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A17F510(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  sub_29A183114();
  v4 = atomic_load(&qword_2A173F378);
  if (!v4)
  {
    v4 = sub_29A181B8C(&qword_2A173F378);
  }

  std::mutex::lock(v4);
  v5 = atomic_load(&qword_2A173F360);
  if (!v5)
  {
    v5 = sub_29A180A6C(&qword_2A173F360);
  }

  v6 = sub_29A0FC520(v5, a1);
  if (!atomic_load(&qword_2A173F360))
  {
    sub_29A180A6C(&qword_2A173F360);
  }

  if (v6)
  {
    goto LABEL_13;
  }

  v8 = atomic_load(&qword_2A173F380);
  if (!v8)
  {
    v8 = sub_29A180A6C(&qword_2A173F380);
  }

  v6 = sub_29A0FC520(v8, a1);
  if (!atomic_load(&qword_2A173F380))
  {
    sub_29A180A6C(&qword_2A173F380);
  }

  if (v6)
  {
LABEL_13:
    v11 = v6[5];
    v10 = v6[6];
  }

  else
  {
    v12 = atomic_load(&qword_2A173F368);
    if (!v12)
    {
      v12 = sub_29A180A6C(&qword_2A173F368);
    }

    v13 = sub_29A0FC520(v12, a1);
    if (!atomic_load(&qword_2A173F368))
    {
      sub_29A180A6C(&qword_2A173F368);
    }

    if (!v13)
    {
      *a2 = 0;
      a2[1] = 0;
      goto LABEL_16;
    }

    v11 = v13[5];
    v10 = v13[6];
  }

  *a2 = v11;
  a2[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(v10 + 2, 1u, memory_order_relaxed);
  }

LABEL_16:

  std::mutex::unlock(v4);
}

void pxrInternal__aapl__pxrReserved__::PlugRegistry::GetAllPlugins(uint64_t *a1@<X8>)
{
  sub_29A183114();
  v3 = atomic_load(&qword_2A173F378);
  if (!v3)
  {
    v3 = sub_29A181B8C(&qword_2A173F378);
  }

  std::mutex::lock(v3);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = atomic_load(&qword_2A173F388);
  if (!v4)
  {
    v4 = sub_29A181C78(&qword_2A173F388);
  }

  sub_29A17F860(a1, *(v4 + 48));
  v5 = atomic_load(&qword_2A173F388);
  if (!v5)
  {
    v5 = sub_29A181C78(&qword_2A173F388);
  }

  v7 = *(v5 + 32);
  v6 = *(v5 + 40);
  v8 = 0;
  if (v6)
  {
    v9 = (v7 + 4);
    while (1)
    {
      v10 = *v9;
      v9 += 20;
      if (v10 != -1)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v8 = *(v5 + 40);
        break;
      }
    }
  }

  v14 = v7 + 40 * v8;
  v15 = v7 + 40 * v6;
  while (v14 != v15)
  {
    v11 = sub_29A17F968(&v14);
    sub_29A181D44(&v12, *(*v11 + 32));
    sub_29A17F91C(a1, &v12);
    sub_29B28CF5C(&v13);
    sub_29A17F9A0(&v14);
  }

  std::mutex::unlock(v3);
}

void sub_29A17F7EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A17DEA8(va);
  std::mutex::unlock(v3);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A17F860(uint64_t *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (a2 >> 60)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v16 = result;
    v4 = sub_29A017BD4(result, a2);
    v5 = &v4[v3];
    v12 = v4;
    v13 = &v4[v3];
    v7 = &v4[16 * v6];
    v14 = &v4[v3];
    v15 = v7;
    v8 = v2[1];
    v9 = &v4[v3 + *v2 - v8];
    sub_29A181BF4(v2, *v2, v8, v9);
    v10 = *v2;
    *v2 = v9;
    v2[1] = v5;
    v11 = v2[2];
    v2[2] = v7;
    v14 = v10;
    v15 = v11;
    v12 = v10;
    v13 = v10;
    return sub_29A0ED41C(&v12);
  }

  return result;
}

void sub_29A17F908(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0ED41C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A17F91C(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29A181DB8(a1, a2);
  }

  else
  {
    *v3 = *a2;
    result = (v3 + 1);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  a1[1] = result;
  return result;
}

void *sub_29A17F968(void *result)
{
  if (*result == result[1])
  {
    sub_29B290E0C();
  }

  return result;
}

uint64_t *sub_29A17F9A0(uint64_t *a1)
{
  if (*a1 == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator++";
    v5[2] = 233;
    v5[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::pxr_tsl::robin_map<std::string, std::unique_ptr<pxrInternal__aapl__pxrReserved__::PlugPlugin>, pxrInternal__aapl__pxrReserved__::TfHash>>::operator++() [T = pxrInternal__aapl__pxrReserved__::pxr_tsl::robin_map<std::string, std::unique_ptr<pxrInternal__aapl__pxrReserved__::PlugPlugin>, pxrInternal__aapl__pxrReserved__::TfHash>, Reverse = false]";
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 1, "iterator exhausted");
  }

  else
  {
    v2 = *a1 + 40;
    do
    {
      v3 = v2;
      if (*(v2 - 34))
      {
        break;
      }

      v2 += 40;
    }

    while (*(v3 + 4) == -1);
    *a1 = v3;
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::PlugPlugin::GetMetadataForType(pxrInternal__aapl__pxrReserved__::PlugPlugin *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfType *a2@<X1>, uint64_t *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::JsValue::JsValue(&v11);
  sub_29A181F80(this + 80, "Types", &v11);
  if (pxrInternal__aapl__pxrReserved__::JsValue::IsObject(&v11))
  {
    JsObject = pxrInternal__aapl__pxrReserved__::JsValue::GetJsObject(&v11);
    pxrInternal__aapl__pxrReserved__::JsValue::JsValue(&v9);
    TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(a2);
    sub_29A182030(JsObject, TypeName, &v9);
    if (pxrInternal__aapl__pxrReserved__::JsValue::IsObject(&v9))
    {
      v8 = pxrInternal__aapl__pxrReserved__::JsValue::GetJsObject(&v9);
      sub_29A1519B8(a3, v8);
    }

    else
    {
      a3[2] = 0;
      a3[1] = 0;
      *a3 = (a3 + 1);
    }

    if (v10)
    {
      sub_29A014BEC(v10);
    }
  }

  else
  {
    a3[2] = 0;
    a3[1] = 0;
    *a3 = (a3 + 1);
  }

  if (v12)
  {
    sub_29A014BEC(v12);
  }
}

void sub_29A17FB28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::PlugPlugin::DeclaresType(pxrInternal__aapl__pxrReserved__::PlugPlugin *this, const pxrInternal__aapl__pxrReserved__::TfType *a2, int a3)
{
  result = sub_29A17FC28(this + 80, "Types");
  if (result)
  {
    v6 = result;
    result = pxrInternal__aapl__pxrReserved__::JsValue::IsObject(result);
    if (result)
    {
      JsObject = pxrInternal__aapl__pxrReserved__::JsValue::GetJsObject(v6);
      v11 = *JsObject;
      v12 = JsObject + 1;
      if (v11 == JsObject + 1)
      {
        return 0;
      }

      while (1)
      {
        v8 = sub_29A17FCA4(&v11);
        v9 = *pxrInternal__aapl__pxrReserved__::TfType::FindByName(*v8 + 32);
        v10 = v9;
        if (a3)
        {
          if (pxrInternal__aapl__pxrReserved__::TfType::IsA(&v10, *a2))
          {
            return 1;
          }
        }

        else if (*a2 == v9)
        {
          return 1;
        }

        sub_29A17FCDC(&v11);
        if (v11 == v12)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_29A17FC28(uint64_t a1, char *a2)
{
  sub_29A008E78(__p, a2);
  v3 = sub_29A01BCCC(a1, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 8 == v3)
  {
    return 0;
  }

  else
  {
    return v3 + 56;
  }
}

void sub_29A17FC88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A17FCA4(void *result)
{
  if (*result == result[1])
  {
    sub_29B290E58();
  }

  return result;
}

void *sub_29A17FCDC(void *a1)
{
  v2 = *a1;
  if (*a1 == a1[1])
  {
    v7[0] = "tf/iterator.h";
    v7[1] = "operator++";
    v7[2] = 233;
    v7[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::map<std::string, pxrInternal__aapl__pxrReserved__::JsValue>>::operator++() [T = const std::map<std::string, pxrInternal__aapl__pxrReserved__::JsValue>, Reverse = false]";
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "iterator exhausted");
  }

  else
  {
    v3 = v2[1];
    if (v3)
    {
      do
      {
        v4 = v3;
        v3 = *v3;
      }

      while (v3);
    }

    else
    {
      do
      {
        v4 = v2[2];
        v5 = *v4 == v2;
        v2 = v4;
      }

      while (!v5);
    }

    *a1 = v4;
  }

  return a1;
}

uint64_t sub_29A17FD84(uint64_t a1)
{
  v11 = a1;
  v10[0] = 0;
  v10[1] = 0;
  v1 = atomic_load(&qword_2A173F390);
  if (!v1)
  {
    v1 = sub_29A181B8C(&qword_2A173F390);
  }

  std::mutex::lock(v1);
  v2 = atomic_load(&qword_2A173F398);
  if (!v2)
  {
    v2 = sub_29A181EC4(&qword_2A173F398);
  }

  v3 = sub_29A0EB63C(v2, &v11);
  if (!atomic_load(&qword_2A173F398))
  {
    sub_29A181EC4(&qword_2A173F398);
  }

  if (v3)
  {
    sub_29B290EA4(v3, v10);
    std::mutex::unlock(v1);
    sub_29A17F138(v10);
  }

  v8[0] = "plug/plugin.cpp";
  v8[1] = "_DefineType";
  v8[2] = 503;
  v8[3] = "static void pxrInternal__aapl__pxrReserved__::PlugPlugin::_DefineType(TfType)";
  v9 = 0;
  TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v11);
  if (*(TypeName + 23) >= 0)
  {
    v6 = TypeName;
  }

  else
  {
    v6 = *TypeName;
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v8, 1, "unknown plugin type %s", v6);
  std::mutex::unlock(v1);
  return sub_29B28F9E0(v10);
}

void sub_29A17FEB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, atomic_uint *a17)
{
  std::mutex::unlock(v17);
  if (a17)
  {
    if (atomic_fetch_add_explicit(a17 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a17 + 8))(a17);
    }
  }

  _Unwind_Resume(a1);
}

void sub_29A17FF20(uint64_t a1, char *a2, uint64_t a3)
{
  v22 = a2;
  sub_29A008E78(__p, "alias");
  v4 = sub_29A01BCCC(a3, __p);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  if (a3 + 8 != v4 && pxrInternal__aapl__pxrReserved__::JsValue::IsObject((v4 + 56)))
  {
    JsObject = pxrInternal__aapl__pxrReserved__::JsValue::GetJsObject((v4 + 56));
    v20 = *JsObject;
    v21 = JsObject + 1;
    while (v20 != v21)
    {
      v6 = sub_29A17FCA4(&v20);
      if (pxrInternal__aapl__pxrReserved__::JsValue::IsString((*v6 + 56)))
      {
        v7 = sub_29A17FCA4(&v20);
        String = pxrInternal__aapl__pxrReserved__::JsValue::GetString((*v7 + 56));
        v9 = sub_29A17FCA4(&v20);
        v10 = pxrInternal__aapl__pxrReserved__::TfType::Declare((*v9 + 32));
        pxrInternal__aapl__pxrReserved__::TfType::AddAlias(&v22, *v10, String);
      }

      else
      {
        __p[0] = "plug/plugin.cpp";
        __p[1] = "_DeclareAliases";
        v17 = 526;
        v18 = "void pxrInternal__aapl__pxrReserved__::PlugPlugin::_DeclareAliases(TfType, const JsObject &)";
        v19 = 0;
        v11 = sub_29A17FCA4(&v20);
        pxrInternal__aapl__pxrReserved__::JsValue::GetTypeName((*v11 + 56), v14);
        if (v15 >= 0)
        {
          v13 = v14;
        }

        else
        {
          v13 = v14[0];
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(__p, "Expected string for alias name, but found %s", v12, v13);
        if (v15 < 0)
        {
          operator delete(v14[0]);
        }
      }

      sub_29A17FCDC(&v20);
    }
  }
}

void sub_29A1800AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A1800DC(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::JsValue::JsValue(&v9);
  sub_29A181F80(a1 + 80, "Types", &v9);
  if (pxrInternal__aapl__pxrReserved__::JsValue::IsObject(&v9))
  {
    JsObject = pxrInternal__aapl__pxrReserved__::JsValue::GetJsObject(&v9);
    v7 = *JsObject;
    v8 = JsObject + 1;
    while (v7 != v8)
    {
      v3 = sub_29A17FCA4(&v7);
      if (pxrInternal__aapl__pxrReserved__::JsValue::IsObject((*v3 + 56)))
      {
        v4 = *sub_29A17FCA4(&v7);
        v5 = sub_29A17FCA4(&v7);
        v6 = pxrInternal__aapl__pxrReserved__::JsValue::GetJsObject((*v5 + 56));
        sub_29A1801C8(a1, v4 + 32, v6);
      }

      sub_29A17FCDC(&v7);
    }
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }
}

void sub_29A1801A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A1801C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = 0;
  v63 = 0;
  v64 = 0;
  pxrInternal__aapl__pxrReserved__::JsValue::JsValue(&v60);
  v46 = a3;
  sub_29A181F80(a3, "bases", &v60);
  if (pxrInternal__aapl__pxrReserved__::JsValue::IsArray(&v60))
  {
    JsArray = pxrInternal__aapl__pxrReserved__::JsValue::GetJsArray(&v60);
    v8 = *JsArray;
    v7 = *(JsArray + 8);
    while (v8 != v7)
    {
      if (!pxrInternal__aapl__pxrReserved__::JsValue::IsString(v8))
      {
        goto LABEL_6;
      }

      v8 = (v8 + 16);
    }

    v11 = pxrInternal__aapl__pxrReserved__::JsValue::GetJsArray(&v60);
    sub_29A012B58(&v58, (v11[1] - *v11) >> 4);
    v13 = *v11;
    v12 = v11[1];
    v14 = v58;
    if (v13 != v12)
    {
      do
      {
        String = pxrInternal__aapl__pxrReserved__::JsValue::GetString(v13);
        if (*(String + 23) < 0)
        {
          sub_29A008D14(__p, *String, *(String + 8));
        }

        else
        {
          v16 = *String;
          v55 = *(String + 16);
          *__p = v16;
        }

        if (*(v14 + 23) < 0)
        {
          operator delete(*v14);
        }

        v17 = *__p;
        v14[2] = v55;
        *v14 = v17;
        v14 += 3;
        v13 = (v13 + 16);
      }

      while (v13 != v12);
      v14 = v58;
    }

    v18 = v59;
    while (v14 != v18)
    {
      v19 = pxrInternal__aapl__pxrReserved__::TfType::Declare(v14);
      sub_29A0A71C8(&v62, v19);
      v14 += 3;
    }

    __p[0] = &v58;
    sub_29A012C90(__p);
  }

  else
  {
LABEL_6:
    if (!pxrInternal__aapl__pxrReserved__::JsValue::IsNull(&v60))
    {
      __p[0] = "plug/plugin.cpp";
      __p[1] = "_DeclareType";
      v55 = 571;
      v56 = "void pxrInternal__aapl__pxrReserved__::PlugPlugin::_DeclareType(const std::string &, const JsObject &)";
      v57 = 0;
      if (*(a2 + 23) >= 0)
      {
        v9 = a2;
      }

      else
      {
        v9 = *a2;
      }

      v10 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v10 = *v10;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__p, 1, "Invalid bases for type %s specified by plugin %s. Expected list of strings.", v9, v10);
    }
  }

  v53 = *pxrInternal__aapl__pxrReserved__::TfType::Declare(a2);
  pxrInternal__aapl__pxrReserved__::TfType::GetBaseTypes(&v53, &v58);
  if (v58 == v59)
  {
    pxrInternal__aapl__pxrReserved__::TfType::Declare(a2, &v62, sub_29A17FD84);
  }

  else
  {
    v51 = v62;
    v52 = v63;
    while (v51 != v52)
    {
      v50 = *sub_29A180948(&v51, v20, v21);
      TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v50);
      v23 = v58;
      if (v58 != v59)
      {
        v23 = v58;
        while (*v23 != v50)
        {
          if (++v23 == v59)
          {
            goto LABEL_34;
          }
        }
      }

      if (v23 == v59)
      {
LABEL_34:
        memset(&v49, 0, sizeof(v49));
        v47 = v58;
        v48 = v59;
        while (v47 != v48)
        {
          v24 = sub_29A127A24(&v47);
          v25 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(*v24);
          v26 = v25;
          if (*(v25 + 23) >= 0)
          {
            v27 = *(v25 + 23);
          }

          else
          {
            v27 = *(v25 + 8);
          }

          sub_29A022DE0(__p, v27 + 1);
          if (v55 >= 0)
          {
            v28 = __p;
          }

          else
          {
            v28 = __p[0];
          }

          if (v27)
          {
            if (v26[23] >= 0)
            {
              v29 = v26;
            }

            else
            {
              v29 = *v26;
            }

            memmove(v28, v29, v27);
          }

          *(v28 + v27) = 32;
          if (v55 >= 0)
          {
            v30 = __p;
          }

          else
          {
            v30 = __p[0];
          }

          if (v55 >= 0)
          {
            v31 = HIBYTE(v55);
          }

          else
          {
            v31 = __p[1];
          }

          std::string::append(&v49, v30, v31);
          if (SHIBYTE(v55) < 0)
          {
            operator delete(__p[0]);
          }

          sub_29A127A4C(&v47);
        }

        __p[0] = "plug/plugin.cpp";
        __p[1] = "_DeclareType";
        v55 = 612;
        v56 = "void pxrInternal__aapl__pxrReserved__::PlugPlugin::_DeclareType(const std::string &, const JsObject &)";
        v57 = 0;
        v32 = (a1 + 8);
        if (*(a1 + 31) < 0)
        {
          v32 = *(a1 + 8);
        }

        v33 = (a1 + 32);
        if (*(a1 + 55) < 0)
        {
          v33 = *(a1 + 32);
        }

        if (*(a2 + 23) >= 0)
        {
          v34 = a2;
        }

        else
        {
          v34 = *a2;
        }

        if (*(TypeName + 23) >= 0)
        {
          v35 = TypeName;
        }

        else
        {
          v35 = *TypeName;
        }

        v36 = &v49;
        if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v36 = v49.__r_.__value_.__r.__words[0];
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__p, 1, "The metadata for plugin '%s' defined in %s declares type '%s' with base type '%s', but the type has already been declared with a different set of bases that does not include that type.  The existing bases are: (%s).  Please fix the plugin.", v32, v33, v34, v35, v36);
        if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v49.__r_.__value_.__l.__data_);
        }
      }

      sub_29A127A4C(&v51);
    }
  }

  v37 = atomic_load(&qword_2A173F390);
  if (!v37)
  {
    v37 = sub_29A181B8C(&qword_2A173F390);
  }

  std::mutex::lock(v37);
  v38 = atomic_load(&qword_2A173F398);
  if (!v38)
  {
    v38 = sub_29A181EC4(&qword_2A173F398);
  }

  if (sub_29A113AE0(v38, &v53))
  {
    v43 = atomic_load(&qword_2A173F398);
    if (!v43)
    {
      v43 = sub_29A181EC4(&qword_2A173F398);
    }

    __p[0] = &v53;
    v44 = sub_29A18209C(v43, &v53, &unk_29B4D6118, __p);
    v45 = v44[4];
    v49.__r_.__value_.__r.__words[0] = v44[3];
    v49.__r_.__value_.__l.__size_ = v45;
    if (v45)
    {
      atomic_fetch_add_explicit((v45 + 8), 1u, memory_order_relaxed);
    }

    __p[0] = "plug/plugin.cpp";
    __p[1] = "_DeclareType";
    v55 = 632;
    v56 = "void pxrInternal__aapl__pxrReserved__::PlugPlugin::_DeclareType(const std::string &, const JsObject &)";
    v57 = 0;
    sub_29A17F138(&v49);
  }

  sub_29A181D44(__p, a1);
  v39 = atomic_load(&qword_2A173F398);
  if (!v39)
  {
    v39 = sub_29A181EC4(&qword_2A173F398);
  }

  v49.__r_.__value_.__r.__words[0] = &v53;
  v40 = sub_29A18209C(v39, &v53, &unk_29B4D6118, &v49);
  v41 = v40[4];
  *(v40 + 3) = *__p;
  __p[1] = 0;
  if (v41)
  {
    sub_29B290F6C(v41, &__p[1], __p);
  }

  std::mutex::unlock(v37);
  sub_29A17FF20(v42, v53, v46);
  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }

  if (v61)
  {
    sub_29A014BEC(v61);
  }

  if (v62)
  {
    v63 = v62;
    operator delete(v62);
  }
}

void sub_29A180808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  v35 = *(v33 - 128);
  if (v35)
  {
    sub_29A014BEC(v35);
  }

  v36 = *(v33 - 120);
  if (v36)
  {
    *(v33 - 112) = v36;
    operator delete(v36);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A180948(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::TfType>>::operator*() [T = std::vector<pxrInternal__aapl__pxrReserved__::TfType>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::PlugFindPluginResource@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_29B290C20(a1);
  if (v5 & 1 | result)
  {
    sub_29A17F138(a1);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

_OWORD *sub_29A180A6C(atomic_ullong *a1)
{
  result = operator new(0x28uLL);
  v3 = 0;
  *result = 0u;
  result[1] = 0u;
  *(result + 8) = 1065353216;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    v4 = sub_29A180AC4(result);
    operator delete(v4);
    return atomic_load(a1);
  }

  return result;
}

uint64_t sub_29A180AC4(uint64_t a1)
{
  sub_29A180B00(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A180B00(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29B290C80((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_29A180B44(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, __int128 **a4)
{
  v6 = a2;
  v19 = 0;
  v20 = 0;
  v8 = *(a2 + 1);
  if ((a2[23] & 0x80u) == 0)
  {
    v9 = a2[23];
  }

  else
  {
    a2 = *a2;
    v9 = v8;
  }

  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v19, a2, v9);
  v10 = bswap64(0x9E3779B97F4A7C55 * v19);
  v11 = *a1 & v10;
  v12 = a1[4] + 40 * v11;
  if (*(v12 + 4) < 0)
  {
    v13 = 0;
LABEL_10:
    while (sub_29A180D48(a1, v13))
    {
      v14 = a1[4];
      v11 = v10 & *a1;
      if (*(v14 + 40 * v11 + 4) < 0)
      {
        v13 = 0;
      }

      else
      {
        LOWORD(v13) = 0;
        do
        {
          v13 = (v13 + 1);
          v11 = (v11 + 1) & *a1;
        }

        while (v13 <= *(v14 + 40 * v11 + 4));
      }
    }

    v15 = a1[4] + 40 * v11;
    if (*(v15 + 4) == -1)
    {
      v16 = *a4;
      if (*(*a4 + 23) < 0)
      {
        sub_29A008D14((v15 + 8), *v16, *(v16 + 1));
      }

      else
      {
        v17 = *v16;
        *(v15 + 24) = *(v16 + 2);
        *(v15 + 8) = v17;
      }

      *(v15 + 32) = 0;
      *v15 = v10;
      *(v15 + 4) = v13;
    }

    else
    {
      sub_29A180E1C(a1, v11, v13, v10, a3, a4);
    }

    ++a1[6];
  }

  else
  {
    LOWORD(v13) = 0;
    while (!sub_29A0EC4B8(a1, (v12 + 8), v6))
    {
      v11 = *a1 & (v11 + 1);
      v13 = (v13 + 1);
      v12 = a1[4] + 40 * v11;
      if (v13 > *(v12 + 4))
      {
        goto LABEL_10;
      }
    }
  }

  return a1[4] + 40 * v11;
}

uint64_t sub_29A180D48(uint64_t a1, int a2)
{
  if (a2 > 0x2000 || (*(a1 + 72) & 1) != 0 || (v3 = *(a1 + 48), v3 >= *(a1 + 56)))
  {
    v7 = sub_29A10A428(a1);
    sub_29A180EC4(a1, v7);
    *(a1 + 72) = 0;
    return 1;
  }

  if (*(a1 + 73) == 1)
  {
    *(a1 + 73) = 0;
    v4 = *(a1 + 64);
    if (v4 != 0.0)
    {
      v5 = *(a1 + 40);
      v6 = v5 ? v3 / v5 : 0.0;
      if (v6 < v4)
      {
        v9 = *(a1 + 68);
        v10 = vcvtps_u32_f32((v3 + 1) / v9);
        v11 = vcvtps_u32_f32(v3 / v9);
        if (v11 <= v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = v11;
        }

        sub_29A180EC4(a1, v12);
        return 1;
      }
    }
  }

  return 0;
}

void sub_29A180E1C(uint64_t *a1, uint64_t a2, __int16 a3, int a4, uint64_t a5, __int128 **a6)
{
  v10 = *a6;
  if (*(*a6 + 23) < 0)
  {
    sub_29A008D14(__p, *v10, *(v10 + 1));
  }

  else
  {
    v11 = *v10;
    v15 = *(v10 + 2);
    *__p = v11;
  }

  v16 = 0;
  sub_29A181438(a1, a2, a3, a4, __p);
  v12 = v16;
  v16 = 0;
  if (v12)
  {
    pxrInternal__aapl__pxrReserved__::PlugPlugin::~PlugPlugin(v12);
    operator delete(v13);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A180EC4(uint64_t a1, unint64_t a2)
{
  sub_29A1810B8(&v10, a2, *(a1 + 64), *(a1 + 68));
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 != v4)
  {
    v5 = v11[4];
    do
    {
      if (*(v3 + 2) != -1)
      {
        if (v5 > 0x100000000)
        {
          v12 = 0;
          v13 = 0;
          v7 = *(v3 + 31);
          if (v7 >= 0)
          {
            v8 = (v3 + 2);
          }

          else
          {
            v8 = *(v3 + 1);
          }

          if (v7 >= 0)
          {
            v9 = *(v3 + 31);
          }

          else
          {
            v9 = *(v3 + 2);
          }

          pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v12, v8, v9);
          v6 = bswap64(0x9E3779B97F4A7C55 * v12);
        }

        else
        {
          v6 = *v3;
        }

        sub_29A181008(&v10, v10 & v6, 0, v6, (v3 + 2));
      }

      v3 += 10;
    }

    while (v3 != v4);
  }

  v11[5] = *(a1 + 48);
  sub_29A10A4B4(&v10, a1);
  v12 = v11;
  sub_29A1812E8(&v12);
}

void sub_29A180FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 - 72) = &a11;
  sub_29A1812E8((v11 - 72));
  _Unwind_Resume(a1);
}

__n128 sub_29A181008(void *a1, uint64_t a2, __int16 a3, int a4, __n128 *a5)
{
  while (1)
  {
    v5 = a1[4] + 40 * a2;
    v6 = *(v5 + 4);
    if (v6 >= a3)
    {
      goto LABEL_4;
    }

    if (v6 == -1)
    {
      break;
    }

    v7 = a5[1].n128_u64[0];
    v8 = *a5;
    v9 = *(v5 + 24);
    *a5 = *(v5 + 8);
    a5[1].n128_u64[0] = v9;
    *(v5 + 8) = v8;
    *(v5 + 24) = v7;
    v10 = a5[1].n128_u64[1];
    a5[1].n128_u64[1] = *(v5 + 32);
    *(v5 + 32) = v10;
    LOWORD(v10) = *(v5 + 4);
    *(v5 + 4) = a3;
    LODWORD(v9) = *v5;
    *v5 = a4;
    a3 = v10;
    a4 = v9;
LABEL_4:
    ++a3;
    a2 = *a1 & (a2 + 1);
  }

  result = *a5;
  *(v5 + 24) = a5[1].n128_u64[0];
  *(v5 + 8) = result;
  a5->n128_u64[0] = 0;
  a5->n128_u64[1] = 0;
  v12 = a5[1].n128_u64[1];
  a5[1].n128_u64[0] = 0;
  a5[1].n128_u64[1] = 0;
  *(v5 + 32) = v12;
  *v5 = a4;
  *(v5 + 4) = a3;
  return result;
}

uint64_t sub_29A1810B8(uint64_t a1, unint64_t a2, float a3, float a4)
{
  v13 = a2;
  v7 = sub_29A10A6B8(a1, &v13);
  sub_29A18125C(v7 + 1, v13);
  v8 = *(a1 + 8);
  if (v8 == *(a1 + 16))
  {
    v8 = sub_29A181224();
  }

  v9 = v13;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  if (v9 >= 0x666666666666667)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "The map exceeds its maximum bucket count.");
    exception->__vftable = (MEMORY[0x29EDC95D8] + 16);
    __cxa_throw(exception, off_29F294A20, MEMORY[0x29EDC9348]);
  }

  if (v9)
  {
    *(*(a1 + 16) - 34) = 1;
  }

  v10 = fminf(fmaxf(a4, 0.2), 0.95);
  *(a1 + 64) = fminf(fmaxf(a3, 0.0), 0.15);
  *(a1 + 68) = v10;
  *(a1 + 56) = (v10 * v9);
  return a1;
}

void sub_29A1811FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1812E8(va);
  _Unwind_Resume(a1);
}

int *sub_29A181224()
{
  if ((atomic_load_explicit(&qword_2A14F6918, memory_order_acquire) & 1) == 0)
  {
    sub_29B290FF4();
  }

  return &dword_2A14F68F0;
}

void *sub_29A18125C(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A10E7C8(a1, a2);
    v4 = a1[1];
    v5 = v4 + 40 * a2;
    do
    {
      *v4 = 0;
      *(v4 + 4) = -1;
      *(v4 + 6) = 0;
      v4 += 40;
    }

    while (v4 != v5);
    a1[1] = v5;
  }

  return a1;
}

void sub_29A1812E8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29A18133C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_29A18133C(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 40;
    do
    {
      if (*(v4 + 4) != -1)
      {
        sub_29A1813E4(v4);
        *(v4 + 4) = -1;
      }

      v5 = v4 == v3;
      v4 -= 40;
    }

    while (!v5);
  }

  a1[1] = v3;
}

uint64_t sub_29A1813A4(uint64_t a1)
{
  if (*(a1 + 4) != -1)
  {
    sub_29A1813E4(a1);
    *(a1 + 4) = -1;
  }

  return a1;
}

void sub_29A1813E4(uint64_t a1)
{
  sub_29A181698((a1 + 32), 0);
  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

__n128 sub_29A181438(uint64_t *a1, uint64_t a2, __int16 a3, int a4, __n128 *a5)
{
  v5 = a1[4] + 40 * a2;
  v6 = a5[1].n128_u64[0];
  v7 = *a5;
  v8 = *(v5 + 24);
  *a5 = *(v5 + 8);
  a5[1].n128_u64[0] = v8;
  *(v5 + 8) = v7;
  *(v5 + 24) = v6;
  v9 = a5[1].n128_u64[1];
  a5[1].n128_u64[1] = *(v5 + 32);
  *(v5 + 32) = v9;
  v10 = *(v5 + 4);
  *(v5 + 4) = a3;
  v11 = *v5;
  *v5 = a4;
  v12 = *a1;
  v13 = *a1 & (a2 + 1);
  v14 = v10 + 1;
  v15 = a1[4];
  v16 = (v15 + 40 * v13);
  v18 = (v16 + 1);
  for (i = *(v16 + 2); i != 0xFFFF; i = *(v16 + 2))
  {
    if (v14 > i)
    {
      if (v14 > 0x2000)
      {
        *(a1 + 72) = 1;
      }

      v19 = a5[1].n128_u64[0];
      v20 = *a5;
      v21 = *(v16 + 2);
      a5[1].n128_u64[0] = *(v16 + 3);
      *a5 = v21;
      *(v16 + 3) = v19;
      *(v16 + 2) = v20;
      v22 = a5[1].n128_u64[1];
      a5[1].n128_u64[1] = *(v16 + 4);
      *(v16 + 4) = v22;
      v23 = *v18;
      *v18 = v14;
      v24 = *v16;
      *v16 = v11;
      v12 = *a1;
      v15 = a1[4];
      v14 = v23;
      v11 = v24;
    }

    v13 = v12 & (v13 + 1);
    ++v14;
    v16 = (v15 + 40 * v13);
    v18 = (v16 + 1);
  }

  result = *a5;
  *(v16 + 3) = a5[1].n128_u64[0];
  *(v16 + 2) = result;
  a5->n128_u64[0] = 0;
  a5->n128_u64[1] = 0;
  v26 = a5[1].n128_u64[1];
  a5[1].n128_u64[0] = 0;
  a5[1].n128_u64[1] = 0;
  *(v16 + 4) = v26;
  *v16 = v11;
  *(v16 + 2) = v14;
  return result;
}

void sub_29A18157C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) != -1)
  {
    sub_29A1813E4(a2);
    *(a2 + 4) = -1;
  }

  --*(a1 + 48);
  v4 = *(a1 + 32);
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v4) >> 3);
  v6 = (v5 + 1) & *a1;
  v7 = (v4 + 40 * v6);
  v8 = *(v7 + 2);
  if (v8 >= 1)
  {
    do
    {
      v9 = v4 + 40 * v5;
      v10 = *v7;
      v11 = *(v7 + 2);
      *(v9 + 24) = *(v7 + 3);
      *(v9 + 8) = v11;
      *(v7 + 1) = 0;
      *(v7 + 2) = 0;
      v12 = *(v7 + 4);
      *(v7 + 3) = 0;
      *(v7 + 4) = 0;
      *(v9 + 32) = v12;
      *v9 = v10;
      *(v9 + 4) = v8 - 1;
      v4 = *(a1 + 32);
      v13 = v4 + 40 * v6;
      if (*(v13 + 4) != -1)
      {
        sub_29A1813E4(v4 + 40 * v6);
        *(v13 + 4) = -1;
        v4 = *(a1 + 32);
      }

      v5 = v6;
      v6 = *a1 & (v6 + 1);
      v7 = (v4 + 40 * v6);
      v8 = *(v7 + 2);
    }

    while (v8 > 0);
  }

  *(a1 + 73) = 1;
}

void sub_29A181698(pxrInternal__aapl__pxrReserved__::PlugPlugin **a1, pxrInternal__aapl__pxrReserved__::PlugPlugin *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::PlugPlugin::~PlugPlugin(v3);

    operator delete(v4);
  }
}

const void **sub_29A1816D4(uint64_t a1, unsigned __int8 *a2, uint64_t a3, __int128 **a4)
{
  v6 = a2;
  v28 = 0;
  v29 = 0;
  v8 = *(a2 + 1);
  if ((a2[23] & 0x80u) == 0)
  {
    v9 = a2[23];
  }

  else
  {
    a2 = *a2;
    v9 = v8;
  }

  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v28, a2, v9);
  v10 = bswap64(0x9E3779B97F4A7C55 * v28);
  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
    if (v12.u32[0] > 1uLL)
    {
      v4 = v10;
      if (v10 >= v11)
      {
        v4 = v10 % v11;
      }
    }

    else
    {
      v4 = (v11 - 1) & v10;
    }

    v14 = *(*a1 + 8 * v4);
    if (v14)
    {
      for (i = *v14; i; i = *i)
      {
        v16 = i[1];
        if (v16 == v10)
        {
          if (sub_29A0EC4B8(a1, i + 2, v6))
          {
            return i;
          }
        }

        else
        {
          if (v13 > 1)
          {
            if (v16 >= v11)
            {
              v16 %= v11;
            }
          }

          else
          {
            v16 &= v11 - 1;
          }

          if (v16 != v4)
          {
            break;
          }
        }
      }
    }
  }

  sub_29A18197C(a1, v10, a4, &v28);
  v17 = (*(a1 + 24) + 1);
  v18 = *(a1 + 32);
  if (!v11 || (v18 * v11) < v17)
  {
    v19 = 1;
    if (v11 >= 3)
    {
      v19 = (v11 & (v11 - 1)) != 0;
    }

    v20 = v19 | (2 * v11);
    v21 = vcvtps_u32_f32(v17 / v18);
    if (v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    sub_29A019AA0(a1, v22);
    v11 = *(a1 + 8);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v10 >= v11)
      {
        v4 = v10 % v11;
      }

      else
      {
        v4 = v10;
      }
    }

    else
    {
      v4 = (v11 - 1) & v10;
    }
  }

  v23 = *a1;
  v24 = *(*a1 + 8 * v4);
  if (v24)
  {
    i = v28;
    *v28 = *v24;
    *v24 = i;
  }

  else
  {
    v25 = v28;
    *v28 = *(a1 + 16);
    *(a1 + 16) = v25;
    *(v23 + 8 * v4) = a1 + 16;
    i = v28;
    if (*v28)
    {
      v26 = *(*v28 + 1);
      if ((v11 & (v11 - 1)) != 0)
      {
        if (v26 >= v11)
        {
          v26 %= v11;
        }
      }

      else
      {
        v26 &= v11 - 1;
      }

      *(*a1 + 8 * v26) = v28;
      i = v28;
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_29A181964(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A181A20(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29A18197C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 **a3@<X3>, void *a4@<X8>)
{
  result = operator new(0x38uLL);
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
  v9[6] = 0;
  *(a4 + 16) = 1;
  return result;
}

void sub_29A181A20(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29B290C80(v2 + 16);
    }

    operator delete(v2);
  }
}

uint64_t sub_29A181A80(uint64_t a1, char *a2, char *a3)
{
  v4 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v4)
  {
    v6 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin(a2, 0);
    *a1 = v6;
    *(a1 + 8) = 2 * (v6 != 0);
    if (v6)
    {
      v7 = v6;
      if (a3[23] >= 0)
      {
        v8 = a3;
      }

      else
      {
        v8 = *a3;
      }

      pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin(v8, v7);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  return a1;
}

std::recursive_mutex *sub_29A181B00(atomic_ullong *a1)
{
  result = sub_29A181B48();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      std::recursive_mutex::~recursive_mutex(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

void *sub_29A181B48()
{
  v0 = operator new(0x40uLL);
  MEMORY[0x29C2C2050]();
  return v0;
}

char *sub_29A181B8C(atomic_ullong *a1)
{
  result = operator new(0x40uLL);
  v3 = 0;
  *result = 850045863;
  *(result + 8) = 0u;
  *(result + 24) = 0u;
  *(result + 40) = 0u;
  *(result + 7) = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    std::mutex::~mutex(result);
    operator delete(v4);
    return atomic_load(a1);
  }

  return result;
}

uint64_t sub_29A181BF4(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4;
  v9 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  if (a2 == a3)
  {
    v7 = 1;
  }

  else
  {
    v4 = a2;
    do
    {
      *a4++ = *v4;
      *v4 = 0;
      *(v4 + 8) = 0;
      v4 += 16;
    }

    while (v4 != a3);
    v9 = a4;
    v7 = 1;
    if (a2 != a3)
    {
      sub_29B28D194();
    }
  }

  return sub_29A17DE3C(v6);
}

unint64_t sub_29A181C78(atomic_ullong *a1)
{
  v2 = sub_29A181CE0();
  v3 = v2;
  v4 = 0;
  atomic_compare_exchange_strong(a1, &v4, v2);
  if (v4)
  {
    if (v2)
    {
      v6 = v2 + 1;
      sub_29A1812E8(&v6);
      operator delete(v3);
    }

    return atomic_load(a1);
  }

  return v3;
}

void *sub_29A181CE0()
{
  v0 = operator new(0x50uLL);
  sub_29A1810B8(v0, 0, 0.0, 0.5);
  return v0;
}

unint64_t **sub_29A181D44(unint64_t **a1, unint64_t *a2)
{
  *a1 = a2;
  a1[1] = 0;
  if (a2)
  {
    sub_29A0ECFD4(a2, &v5);
    v3 = a1[1];
    a1[1] = v5;
    v5 = 0;
    if (v3)
    {
      sub_29B28D0B0(v3, &v5);
    }
  }

  return a1;
}

void sub_29A181DA0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28D068(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A181DB8(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_29A00C9A4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    v8 = sub_29A017BD4(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v16 = v8;
  v17 = &v8[16 * v2];
  *(&v18 + 1) = &v8[16 * v7];
  v9 = v17;
  *v17 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *&v18 = v9 + 16;
  v10 = a1[1];
  v11 = &v8[16 * v2 + *a1 - v10];
  sub_29A181BF4(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_29A0ED41C(&v16);
  return v15;
}

void sub_29A181EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A0ED41C(va);
  _Unwind_Resume(a1);
}

_OWORD *sub_29A181EC4(atomic_ullong *a1)
{
  result = operator new(0x28uLL);
  v3 = 0;
  *result = 0u;
  result[1] = 0u;
  *(result + 8) = 1065353216;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    v4 = sub_29A181F1C(result);
    operator delete(v4);
    return atomic_load(a1);
  }

  return result;
}

uint64_t sub_29A181F1C(uint64_t a1)
{
  sub_29A181F58(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A181F58(int a1, void **__p)
{
  if (__p)
  {
    sub_29B291070(__p);
  }
}

BOOL sub_29A181F80(uint64_t a1, char *a2, void *a3)
{
  sub_29A008E78(__p, a2);
  v5 = sub_29A01BCCC(a1, __p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = a1 + 8;
  if (v6 != v5)
  {
    v8 = *(v5 + 56);
    v7 = *(v5 + 64);
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v9 = a3[1];
    *a3 = v8;
    a3[1] = v7;
    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  return v6 != v5;
}

void sub_29A182014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29A182030(uint64_t a1, const void **a2, void *a3)
{
  v5 = sub_29A01BCCC(a1, a2);
  v6 = v5;
  v7 = a1 + 8;
  if (v7 != v5)
  {
    v9 = *(v5 + 56);
    v8 = *(v5 + 64);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = a3[1];
    *a3 = v9;
    a3[1] = v8;
    if (v10)
    {
      sub_29A014BEC(v10);
    }
  }

  return v7 != v6;
}

void *sub_29A18209C(uint64_t a1, void *a2, uint64_t a3, uint64_t **a4)
{
  v7 = bswap64(0x9E3779B97F4A7C55 * *a2);
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v4 = v7;
      if (v7 >= v8)
      {
        v4 = v7 % v8;
      }
    }

    else
    {
      v4 = v7 & (v8 - 1);
    }

    v10 = *(*a1 + 8 * v4);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = i[1];
        if (v12 == v7)
        {
          if (i[2] == *a2)
          {
            return i;
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

          if (v12 != v4)
          {
            break;
          }
        }
      }
    }
  }

  i = operator new(0x28uLL);
  *i = 0;
  i[1] = v7;
  v13 = **a4;
  i[3] = 0;
  i[4] = 0;
  i[2] = v13;
  v14 = (*(a1 + 24) + 1);
  v15 = *(a1 + 32);
  if (!v8 || (v15 * v8) < v14)
  {
    v16 = 1;
    if (v8 >= 3)
    {
      v16 = (v8 & (v8 - 1)) != 0;
    }

    v17 = v16 | (2 * v8);
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
    v8 = *(a1 + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v7 >= v8)
      {
        v4 = v7 % v8;
      }

      else
      {
        v4 = v7;
      }
    }

    else
    {
      v4 = (v8 - 1) & v7;
    }
  }

  v20 = *a1;
  v21 = *(*a1 + 8 * v4);
  if (v21)
  {
    *i = *v21;
LABEL_38:
    *v21 = i;
    goto LABEL_39;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v20 + 8 * v4) = a1 + 16;
  if (*i)
  {
    v22 = *(*i + 8);
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

    v21 = (*a1 + 8 * v22);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return i;
}

void sub_29A1822F4(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    sub_29B2910E4(__p);
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::PlugRegistry>::GetInstance()
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::PlugRegistry>::_instance);
  if (!result)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::PlugRegistry>::_CreateInstance();
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::PlugRegistry>::_CreateInstance(unint64_t *a1)
{
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B480D99 & 0x7FFFFFFFFFFFFFFFLL), &v14);
  v2 = std::string::insert(&v14, 0, "Create Singleton ");
  v3 = *&v2->__r_.__value_.__l.__data_;
  v18 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  sub_29A0EC164(&v15, "Tf", "TfSingleton::_CreateInstance", __p);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::Tf_SingletonPyGILDropper(&v14);
  if (atomic_exchange(pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::PlugRegistry>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::PlugRegistry*> &)::isInitializing, 1u))
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
      v8 = operator new(0x70uLL);
      *&v12 = sub_29A1826E0(v8, v9, v10).n128_u64[0];
      v13 = atomic_load(a1);
      if (v13)
      {
        if (v8 != v13)
        {
          __p[0] = "tf/instantiateSingleton.h";
          __p[1] = "_CreateInstance";
          v18 = 86;
          v19 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::PlugRegistry>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::PlugRegistry]";
          v20 = 0;
          v21 = 4;
          pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(__p, "race detected setting singleton instance", v11, v12);
        }
      }

      else if (atomic_exchange(a1, v8))
      {
        __p[0] = "tf/instantiateSingleton.h";
        __p[1] = "_CreateInstance";
        v18 = 90;
        v19 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::PlugRegistry>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::PlugRegistry]";
        v20 = 0;
        v21 = 4;
        pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(__p, "Failed axiom: ' %s '", v11, v12, "instance.exchange(newInst) == nullptr");
      }
    }

    atomic_store(0, pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::PlugRegistry>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::PlugRegistry*> &)::isInitializing);
  }

  v6 = atomic_load(a1);
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&v14);
  if (v15)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v16, v15);
  }

  return v6;
}

void sub_29A182538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&a10);
  sub_29A0E9CEC(&a16);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::PlugRegistry>::SetInstanceConstructed(unint64_t result, uint64_t a2, char *a3)
{
  if (atomic_exchange(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::PlugRegistry>::_instance, result))
  {
    v3[0] = "tf/instantiateSingleton.h";
    v3[1] = "SetInstanceConstructed";
    v3[2] = 54;
    v3[3] = "static void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::PlugRegistry>::SetInstanceConstructed(T &) [T = pxrInternal__aapl__pxrReserved__::PlugRegistry]";
    v4 = 0;
    v5 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v3, "this function may not be called after GetInstance() or another SetInstanceConstructed() has completed", a3);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::PlugRegistry>::DeleteInstance()
{
  for (i = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::PlugRegistry>::_instance); i; i = v1)
  {
    v1 = i;
    atomic_compare_exchange_strong(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::PlugRegistry>::_instance, &v1, 0);
    if (v1 == i)
    {
      std::mutex::~mutex((i + 48));
      sub_29A0EB4E8(i + 8);
      v3 = sub_29A0F6078(i, v2);

      operator delete(v3);
      return;
    }

    sched_yield();
  }
}

unint64_t pxrInternal__aapl__pxrReserved__::PlugRegistry::GetInstance(pxrInternal__aapl__pxrReserved__::PlugRegistry *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::PlugRegistry>::_instance);
  if (!result)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::PlugRegistry>::_CreateInstance();
  }

  return result;
}

__n128 sub_29A1826E0(unint64_t a1, uint64_t a2, char *a3)
{
  *(a1 + 32) = 0;
  result = 0uLL;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 850045863;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  if (atomic_exchange(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::PlugRegistry>::_instance, a1))
  {
    v4[0] = "tf/instantiateSingleton.h";
    v4[1] = "SetInstanceConstructed";
    v4[2] = 54;
    v4[3] = "static void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::PlugRegistry>::SetInstanceConstructed(T &) [T = pxrInternal__aapl__pxrReserved__::PlugRegistry]";
    v5 = 0;
    v6 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v4, "this function may not be called after GetInstance() or another SetInstanceConstructed() has completed", a3);
  }

  return result;
}

void sub_29A182798(_Unwind_Exception *a1)
{
  std::mutex::~mutex(v2);
  sub_29A0EB4E8((v1 + 1));
  sub_29A0F6078(v1, v4);
  _Unwind_Resume(a1);
}

uint64_t sub_29A1827BC(uint64_t a1, unsigned __int8 *a2)
{
  sub_29A0EB5BC(&v7, &unk_2A173F3A0);
  sub_29A0EC530(a1 + 8, a2, a2);
  v5 = v7;
  if (v7)
  {
    __dmb(0xBu);
    *v5 = 0;
  }

  return v4 & 1;
}

void sub_29A18281C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  if (a9)
  {
    __dmb(0xBu);
    *a9 = 0;
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::PlugRegistry::RegisterPlugins(unint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_29A111510(v5, 1uLL, a2);
  pxrInternal__aapl__pxrReserved__::PlugRegistry::RegisterPlugins(a1, v5, a3);
  v6 = v5;
  sub_29A012C90(&v6);
}

void sub_29A182894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A012C90(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::PlugRegistry::RegisterPlugins(unint64_t *a1@<X0>, char **a2@<X1>, uint64_t *a3@<X8>)
{
  sub_29A182994(a1, a2, 1, a3);
  if (*a3 != a3[1])
  {
    pxrInternal__aapl__pxrReserved__::PlugNotice::DidRegisterPlugins::DidRegisterPlugins(v6, a3);
    sub_29A1839DC(v5, a1);
    sub_29A182C04(v6, v5);
    sub_29B2912B8(v5, v6);
  }
}

void sub_29A182924(_Unwind_Exception *a1, uint64_t a2, atomic_uint *a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    if (atomic_fetch_add_explicit(a3 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a3 + 8))(a3);
    }
  }

  pxrInternal__aapl__pxrReserved__::PlugNotice::DidRegisterPlugins::~DidRegisterPlugins(va);
  sub_29A17DEA8(va);
  _Unwind_Resume(a1);
}

void sub_29A182994(uint64_t a1@<X0>, char **a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v29[3] = *MEMORY[0x29EDCA608];
  v20 = a3;
  v24 = "plug/registry.cpp";
  v25 = "_RegisterPlugins";
  v26 = 154;
  v27 = "PlugPluginPtrVector pxrInternal__aapl__pxrReserved__::PlugRegistry::_RegisterPlugins(const std::vector<std::string> &, BOOL)";
  LOBYTE(v28) = 0;
  pxrInternal__aapl__pxrReserved__::TfScopeDescription::TfScopeDescription(v19, "Registering plugins", &v24);
  sub_29A0ECEEC(&v17, "Plug", "PlugRegistry::RegisterPlugins");
  memset(v29, 0, 24);
  v27 = 0;
  v26 = 0;
  v28 = v29;
  v25 = sub_29A183AA0;
  pxrInternal__aapl__pxrReserved__::Plug_TaskArena::Plug_TaskArena(&v16);
  std::mutex::lock((a1 + 48));
  v11 = a2;
  v12 = &v20;
  v13 = a1;
  v14 = &v24;
  v15 = &v16;
  v21 = &unk_2A2041F40;
  v22 = &v11;
  tbb::interface7::internal::isolate_within_arena(&v21, 0);
  std::mutex::unlock((a1 + 48));
  pxrInternal__aapl__pxrReserved__::Plug_TaskArena::~Plug_TaskArena(&v16);
  v7 = v27;
  __dmb(0xBu);
  if (v7)
  {
    v8 = v27;
    __dmb(0xBu);
    v9 = tbb::internal::concurrent_vector_base_v3::internal_capacity(&v25);
    if (v9 >= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    v12 = 0;
    v13 = 0;
    v11 = &v24;
    v21 = &v24;
    v22 = v10;
    v23 = 0;
    sub_29A183B40(a4, &v11, &v21, v10);
    if (*a4 != a4[1])
    {
      sub_29A17F138(*a4);
    }
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  sub_29A183AB0(&v24);
  if (v17)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v18, v17);
  }

  pxrInternal__aapl__pxrReserved__::TfScopeDescription::~TfScopeDescription(v19);
}

void sub_29A182B88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A182C04(pxrInternal__aapl__pxrReserved__::TfNotice *a1, uint64_t a2)
{
  v4 = sub_29B291214(a2);
  if (v5 & 1 | v4)
  {
    sub_29A183A50(a2);
  }

  v6 = MEMORY[0x29EDC9500];

  return pxrInternal__aapl__pxrReserved__::TfNotice::_Send(a1, 0, 0, v6);
}

unint64_t *sub_29A182C94@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v23[3] = *MEMORY[0x29EDCA608];
  memset(v23, 0, 24);
  v21 = 0;
  v20[1] = 0;
  v22 = v23;
  v20[0] = sub_29A183AA0;
  pxrInternal__aapl__pxrReserved__::Plug_TaskArena::Plug_TaskArena(&v15);
  std::mutex::lock((a1 + 48));
  v11 = a2;
  v12 = a1;
  v13 = &v19;
  v14 = &v15;
  v16 = &unk_2A2041D98;
  v17 = &v11;
  tbb::interface7::internal::isolate_within_arena(&v16, 0);
  std::mutex::unlock((a1 + 48));
  pxrInternal__aapl__pxrReserved__::Plug_TaskArena::~Plug_TaskArena(&v15);
  v6 = v21;
  __dmb(0xBu);
  if (v6)
  {
    v7 = v21;
    __dmb(0xBu);
    v8 = tbb::internal::concurrent_vector_base_v3::internal_capacity(v20);
    if (v8 >= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v12 = 0;
    v13 = 0;
    v11 = &v19;
    v16 = &v19;
    v17 = v9;
    v18 = 0;
    sub_29A183B40(a3, &v11, &v16, v9);
    if (*a3 != a3[1])
    {
      sub_29A17F138(*a3);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return sub_29A183AB0(&v19);
}

void sub_29A182E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, pxrInternal__aapl__pxrReserved__::WorkDispatcher *);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  std::mutex::unlock((v6 + 48));
  pxrInternal__aapl__pxrReserved__::Plug_TaskArena::~Plug_TaskArena(va);
  sub_29A183AB0(va1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::PlugRegistry::GetPluginForType(uint64_t a1@<X1>, void *a2@<X8>)
{
  v6 = a1;
  pxrInternal__aapl__pxrReserved__::TfType::TfType(v4);
  if (v4[0] == a1)
  {
    v4[0] = "plug/registry.cpp";
    v4[1] = "GetPluginForType";
    v4[2] = 203;
    v4[3] = "PlugPluginPtr pxrInternal__aapl__pxrReserved__::PlugRegistry::GetPluginForType(TfType) const";
    v5 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "Unknown base type");
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    sub_29A17F048(&v6, a2);
  }
}

void pxrInternal__aapl__pxrReserved__::PlugRegistry::GetDataFromPluginMetaData(uint64_t a1@<X1>, pxrInternal__aapl__pxrReserved__::JsValue *a2@<X8>)
{
  v9 = a1;
  pxrInternal__aapl__pxrReserved__::JsValue::JsValue(a2);
  TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v9);
  if (*(TypeName + 23) < 0)
  {
    sub_29A008D14(&__dst, *TypeName, *(TypeName + 8));
  }

  else
  {
    v3 = *TypeName;
    v8 = *(TypeName + 16);
    __dst = v3;
  }

  pxrInternal__aapl__pxrReserved__::PlugRegistry::GetPluginForType(v9, v6);
  v4 = sub_29B290C20(v6);
  if (v5 & 1 | v4)
  {
    sub_29A17F138(v6);
  }

  sub_29B291314(v6, &__dst);
}

void sub_29A182FB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  sub_29A09932C(&a10, a11);
  v22 = a14;
  if (a14 && atomic_fetch_add_explicit((a14 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v22 + 8))(v22);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  v23 = *(v20 + 8);
  if (v23)
  {
    sub_29A014BEC(v23);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::PlugRegistry::GetStringFromPluginMetaData(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::PlugRegistry::GetDataFromPluginMetaData(a1, &v5);
  if (pxrInternal__aapl__pxrReserved__::JsValue::IsString(&v5))
  {
    String = pxrInternal__aapl__pxrReserved__::JsValue::GetString(&v5);
    if (*(String + 23) < 0)
    {
      sub_29A008D14(a2, *String, *(String + 8));
    }

    else
    {
      v4 = *String;
      *(a2 + 16) = *(String + 16);
      *a2 = v4;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29A1830CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A183114()
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v2[0] = &v3;
  if (atomic_load_explicit(&qword_2A173F3A8, memory_order_acquire) != -1)
  {
    v1[0] = v2;
    v6 = v1;
    std::__call_once(&qword_2A173F3A8, &v6, sub_29A183D90);
  }

  if (v3 != v4)
  {
    pxrInternal__aapl__pxrReserved__::PlugNotice::DidRegisterPlugins::DidRegisterPlugins(v2, &v3);
    v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::PlugRegistry>::_instance);
    if (!v0)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::PlugRegistry>::_CreateInstance();
    }

    sub_29A1839DC(v1, v0);
    sub_29A182C04(v2, v1);
    sub_29B2912B8(v1, v2);
  }

  v6 = &v3;
  sub_29A17DEA8(&v6);
}

void sub_29A1831FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  a11 = &a15;
  sub_29A17DEA8(&a11);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::PlugRegistry::FindDerivedTypeByName(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  sub_29A183114();
  return *pxrInternal__aapl__pxrReserved__::TfType::FindDerivedByName(&v4, a2);
}

uint64_t pxrInternal__aapl__pxrReserved__::PlugRegistry::GetDirectlyDerivedTypes@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = a1;
  sub_29A183114();
  return pxrInternal__aapl__pxrReserved__::TfType::GetDirectlyDerivedTypes(&v4, a2);
}

uint64_t pxrInternal__aapl__pxrReserved__::PlugRegistry::GetAllDerivedTypes(uint64_t a1, uint64_t **a2)
{
  v4 = a1;
  sub_29A183114();
  return pxrInternal__aapl__pxrReserved__::TfType::GetAllDerivedTypes(&v4, a2);
}

void pxrInternal__aapl__pxrReserved__::Plug_SetPaths(uint64_t a1, uint64_t a2, char a3)
{
  sub_29A1833D0();
  if (a1 != &xmmword_2A173F3B8)
  {
    sub_29A095E3C(&xmmword_2A173F3B8, *a1, *(a1 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3));
  }

  if (a2 != &qword_2A173F3D0)
  {
    sub_29A095E3C(&qword_2A173F3D0, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  }

  byte_2A173F3E8 = a3;
}

void sub_29A1833D0()
{
  if ((atomic_load_explicit(&qword_2A173F3B0, memory_order_acquire) & 1) == 0)
  {
    sub_29B291378();
  }
}

uint64_t sub_29A183428(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 8);
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2041DD8;
  v4[1] = sub_29A1827BC;
  v4[2] = 0;
  v4[3] = v3;
  v11 = v4;
  v5 = *(v1 + 16);
  v6 = operator new(0x28uLL);
  *v6 = &unk_2A2041E98;
  v6[1] = sub_29A183558;
  v6[2] = 0;
  v6[3] = v3;
  v6[4] = v5;
  v9 = v6;
  pxrInternal__aapl__pxrReserved__::Plug_ReadEmbeddedPlugInfo(v2, v10, v8, *(v1 + 24));
  sub_29A177E5C(v8);
  return sub_29A177DDC(v10);
}

void sub_29A183530(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_29A177E5C(va);
  sub_29A177DDC(va1);
  _Unwind_Resume(a1);
}

void sub_29A183558(int a1, pxrInternal__aapl__pxrReserved__::Plug_RegistrationMetadata *this, uint64_t a3)
{
  if (pxrInternal__aapl__pxrReserved__::Plug_RegistrationMetadata::PassesEntitlementCheck(this))
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    if (*this == 1)
    {
      sub_29A17DEFC(this, &v7);
      v6 = v8;
      v10 = v7;
      v11 = v8;
      v12 = v9;
      if ((v9 & 1) == 0)
      {
LABEL_8:
        sub_29B29146C(v6);
        return;
      }

LABEL_7:
      sub_29B29112C(a3, &v10, v5, &v7);
      v6 = v11;
      goto LABEL_8;
    }

    if (*this == 3)
    {
      sub_29A17E42C(this, &v7);
      v6 = v8;
      v10 = v7;
      v11 = v8;
      v12 = v9;
      if (v9 != 1)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    sub_29B291400(this);
  }
}

void sub_29A18361C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a13)
  {
    sub_29B28FFF4(a13);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_29A18363C(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_2A2041DD8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  *(v2 + 3) = *(a1 + 24);
  return result;
}

__n128 sub_29A183690(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2041DD8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A1836C8(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

uint64_t sub_29A1836F0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2041E70))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_29A183744(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  *v2 = &unk_2A2041E98;
  *(v2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  *(v2 + 24) = result;
  return result;
}

__n128 sub_29A183798(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2041E98;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A1837D0(void *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[1];
  v4 = (a1[3] + (v2 >> 1));
  if (v2)
  {
    v3 = *(*v4 + v3);
  }

  return v3(v4, a2, a1[4]);
}

uint64_t sub_29A183800(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2041F18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A183850(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 8);
  v2 = *(v1 + 16);
  v3 = *v1;
  v4 = **(v1 + 8);
  v5 = operator new(0x20uLL);
  *v5 = &unk_2A2041DD8;
  v5[1] = sub_29A1827BC;
  v5[2] = 0;
  v5[3] = v2;
  v12 = v5;
  v6 = *(v1 + 24);
  v7 = operator new(0x28uLL);
  *v7 = &unk_2A2041E98;
  v7[1] = sub_29A183558;
  v7[2] = 0;
  v7[3] = v2;
  v7[4] = v6;
  v10 = v7;
  pxrInternal__aapl__pxrReserved__::Plug_ReadPlugInfo(v3, v4, v11, v9, *(v1 + 32));
  sub_29A177E5C(v9);
  return sub_29A177DDC(v11);
}

void sub_29A18396C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_29A177E5C(va);
  sub_29A177DDC(va1);
  _Unwind_Resume(a1);
}

void **sub_29A183994(void **a1)
{
  v3 = a1 + 3;
  sub_29A012C90(&v3);
  v3 = a1;
  sub_29A012C90(&v3);
  return a1;
}

unint64_t **sub_29A1839DC(unint64_t **a1, unint64_t *a2)
{
  *a1 = a2;
  a1[1] = 0;
  if (a2)
  {
    sub_29A0ECFD4(a2, &v5);
    v3 = a1[1];
    a1[1] = v5;
    v5 = 0;
    if (v3)
    {
      sub_29B28D0B0(v3, &v5);
    }
  }

  return a1;
}

void sub_29A183A38(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28FFF4(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A183A50(uint64_t a1)
{
  if (*(a1 + 8))
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  sub_29B2914BC();
}

unint64_t *sub_29A183AB0(unint64_t *a1)
{
  v2 = a1[4];
  v3 = tbb::internal::concurrent_vector_base_v3::internal_clear((a1 + 1), tbb::concurrent_vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::PlugPlugin>,tbb::cache_aligned_allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::PlugPlugin>>>::destroy_array);
  sub_29A0EC010(a1, v2, v3, a1[2]);
  tbb::internal::concurrent_vector_base_v3::~concurrent_vector_base_v3((a1 + 1), v4);
  return a1;
}

uint64_t tbb::concurrent_vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::PlugPlugin>,tbb::cache_aligned_allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::PlugPlugin>>>::destroy_array(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return sub_29B291508(a2, result - 8);
  }

  return result;
}

void *sub_29A183B40(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = result;
  v12 = 0;
  if (a4)
  {
    v6 = result;
    sub_29A0D0518(result, a4);
    v9 = *a2;
    v10 = *(a2 + 16);
    v7 = *a3;
    v8 = *(a3 + 16);
    return sub_29A183BD8(v6, &v9, &v7);
  }

  return result;
}

void sub_29A183BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A17DEA8(va);
  _Unwind_Resume(a1);
}

void *sub_29A183BD8(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 2);
  v6 = *a3;
  v7 = *(a3 + 2);
  v11 = *a2;
  v12 = v5;
  v9 = v6;
  v10 = v7;
  result = sub_29A183C40(a1, &v11, &v9, v4);
  *(a1 + 8) = result;
  return result;
}

void *sub_29A183C40(uint64_t a1, uint64_t *a2, void *a3, void *a4)
{
  v4 = a4;
  v19 = a4;
  v20 = a4;
  v17[0] = a1;
  v17[1] = &v19;
  v17[2] = &v20;
  v18 = 0;
  if (a2[1] != a3[1] || *a2 != *a3)
  {
    do
    {
      v8 = sub_29A183D30(a2);
      v9 = v8[1];
      *v4 = *v8;
      v4[1] = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1u, memory_order_relaxed);
      }

      v10 = a2[1];
      v11 = a2[2];
      v12 = v10 + 1;
      a2[1] = v10 + 1;
      if (v11)
      {
        v13 = v11 + 16;
        if (((v10 - 1) & v12) != 0)
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        a2[2] = v14;
      }

      v4 = v20 + 2;
      v20 += 2;
    }

    while (v12 != a3[1] || *a2 != *a3);
  }

  v18 = 1;
  sub_29A17DE3C(v17);
  return v4;
}

uint64_t sub_29A183D30(uint64_t *a1)
{
  result = a1[2];
  if (!result)
  {
    v4 = *a1;
    v3 = a1[1];
    v5 = sub_29A0EC0EC(v3);
    v6 = *(v4 + 32);
    __dmb(0xBu);
    result = *(v6 + 8 * v5) + 16 * (v3 - ((1 << v5) & 0xFFFFFFFFFFFFFFELL));
    a1[2] = result;
  }

  return result;
}

void sub_29A183D90(uint64_t ****a1)
{
  v1 = **a1;
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::PlugRegistry>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::PlugRegistry>::_CreateInstance();
  }

  sub_29A1833D0();
  sub_29A182C94(v2, xmmword_2A173F3B8, &__p);
  sub_29A183F38(*v1, (*v1)[1], __p, v11, (v11 - __p) >> 4);
  p_p = &__p;
  sub_29A17DEA8(&p_p);
  sub_29A008E78(&__p, "PXR_DISABLE_STANDARD_PLUG_SEARCH_PATH");
  v3 = pxrInternal__aapl__pxrReserved__::TfGetenvBool(&__p, 0);
  v4 = v3;
  if (v12 < 0)
  {
    operator delete(__p);
    if (v4)
    {
      return;
    }
  }

  else if (v3)
  {
    return;
  }

  sub_29A1833D0();
  v5 = qword_2A173F3D0;
  for (i = unk_2A173F3D8; v5 != i; v5 += 24)
  {
    if (sub_29A174A74(3))
    {
      v9 = v5;
      if (*(v5 + 23) < 0)
      {
        v9 = *v5;
      }

      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("%s", v7, v8, v9);
    }
  }

  sub_29A1833D0();
  sub_29A1833D0();
  sub_29A182994(v2, &xmmword_2A173F3B8, byte_2A173F3E8, &__p);
  sub_29A183F38(*v1, (*v1)[1], __p, v11, (v11 - __p) >> 4);
  p_p = &__p;
  sub_29A17DEA8(&p_p);
}

uint64_t sub_29A183F38(uint64_t *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v18 = v10 - a2;
      v19 = (v10 - a2) >> 4;
      if (v19 >= a5)
      {
        sub_29A18413C(a1, a2, a1[1], (a2 + 16 * a5));
        v24 = 0;
        v25 = &v7[2 * a5];
        v26 = v7;
        do
        {
          v27 = *v26;
          v26 += 2;
          *(v24 + v5) = v27;
          sub_29B28FD1C((v24 + v5 + 8), v7 + 1);
          v24 += 16;
          v7 = v26;
        }

        while (v26 != v25);
      }

      else
      {
        v20 = (a3 + v18);
        a1[1] = sub_29A17DDB4(a1, (a3 + v18), a4, a1[1]);
        if (v19 >= 1)
        {
          sub_29A18413C(a1, v5, v10, (v5 + 16 * a5));
          if (v10 != v5)
          {
            v21 = 0;
            v22 = v7;
            do
            {
              v23 = *v22;
              v22 += 2;
              *(v21 + v5) = v23;
              sub_29B28FD1C((v21 + v5 + 8), v7 + 1);
              v21 += 16;
              v7 = v22;
            }

            while (v22 != v20);
          }
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 + ((v10 - *a1) >> 4);
      if (v12 >> 60)
      {
        sub_29A00C9A4();
      }

      v13 = a2 - v11;
      v14 = v9 - v11;
      if (v14 >> 3 > v12)
      {
        v12 = v14 >> 3;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF0)
      {
        v15 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v12;
      }

      v16 = v13 >> 4;
      v32[4] = a1;
      if (v15)
      {
        v17 = sub_29A017BD4(a1, v15);
      }

      else
      {
        v17 = 0;
      }

      v28 = &v17[16 * v16];
      v32[0] = v17;
      v32[1] = v28;
      v32[3] = &v17[16 * v15];
      v29 = &v28[16 * a5];
      do
      {
        v30 = v7[1];
        *v28 = *v7;
        *(v28 + 1) = v30;
        if (v30)
        {
          atomic_fetch_add_explicit((v30 + 8), 1u, memory_order_relaxed);
        }

        v28 += 16;
        v7 += 2;
      }

      while (v28 != v29);
      v32[2] = v29;
      v5 = sub_29A1841C0(a1, v32, v5);
      sub_29A0ED41C(v32);
    }
  }

  return v5;
}

uint64_t sub_29A18413C(uint64_t result, uint64_t a2, unint64_t a3, char *a4)
{
  v4 = *(result + 8);
  v5 = (a2 + v4 - a4);
  v6 = v4;
  while (v5 < a3)
  {
    *v6 = *v5;
    v6 += 16;
    *v5 = 0;
    *(v5 + 1) = 0;
    v5 += 16;
  }

  *(result + 8) = v6;
  if (v4 != a4)
  {
    v7 = (v4 - 16);
    v8 = a4 - v4;
    v9 = a2 + v4 - 16 - a4;
    do
    {
      result = sub_29B29119C(v7, v9);
      v7 -= 16;
      v9 -= 16;
      v8 += 16;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_29A1841C0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  sub_29A181BF4(a1, a3, a1[1], *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += a1[1] - a3;
  a1[1] = a3;
  v9 = (v8 + v7 - a3);
  sub_29A181BF4(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = a1[1];
  a1[1] = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = a1[2];
  a1[2] = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

void pxrInternal__aapl__pxrReserved__::Plug_StaticInterfaceBase::_LoadAndInstantiate(pxrInternal__aapl__pxrReserved__::Plug_StaticInterfaceBase *this, std::type_info *a2)
{
  v22 = *MEMORY[0x29EDCA608];
  v4 = atomic_load(&qword_2A173F3F0);
  if (!v4)
  {
    v4 = sub_29A181B8C(&qword_2A173F3F0);
  }

  std::mutex::lock(v4);
  v5 = atomic_load(this);
  if ((v5 & 1) == 0)
  {
    __p = &unk_2A2041F98;
    v17 = this;
    p_p = &__p;
    sub_29A117068(v21, &__p);
    sub_29A0FC854(&__p);
    pxrInternal__aapl__pxrReserved__::TfType::GetCanonicalTypeName(a2, &__p);
    v6 = pxrInternal__aapl__pxrReserved__::TfType::FindByName(&__p);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p);
    }

    v7 = pxrInternal__aapl__pxrReserved__::TfType::TfType(&__p);
    if (*v6 == __p)
    {
      __p = "plug/staticInterface.cpp";
      v17 = "_LoadAndInstantiate";
      v18 = 47;
      p_p = "void pxrInternal__aapl__pxrReserved__::Plug_StaticInterfaceBase::_LoadAndInstantiate(const std::type_info &) const";
      v20 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "Failed to load plugin interface: Can't find type %s", (a2->__type_name & 0x7FFFFFFFFFFFFFFFLL));
    }

    else
    {
      Root = pxrInternal__aapl__pxrReserved__::TfType::GetRoot(v7);
      if (*v6 == *Root)
      {
        __p = "plug/staticInterface.cpp";
        v17 = "_LoadAndInstantiate";
        v18 = 53;
        p_p = "void pxrInternal__aapl__pxrReserved__::Plug_StaticInterfaceBase::_LoadAndInstantiate(const std::type_info &) const";
        v20 = 0;
        TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v6);
        if (*(TypeName + 23) >= 0)
        {
          v12 = TypeName;
        }

        else
        {
          v12 = *TypeName;
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "Failed to load plugin interface: Can't manufacture type %s", v12);
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::PlugRegistry::GetInstance(Root);
        pxrInternal__aapl__pxrReserved__::PlugRegistry::GetPluginForType(*v6, v15);
        v9 = sub_29B290C20(v15);
        if (v10 & 1 | v9)
        {
          sub_29A17F138(v15);
        }

        __p = "plug/staticInterface.cpp";
        v17 = "_LoadAndInstantiate";
        v18 = 62;
        p_p = "void pxrInternal__aapl__pxrReserved__::Plug_StaticInterfaceBase::_LoadAndInstantiate(const std::type_info &) const";
        v20 = 0;
        v13 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v6);
        if (*(v13 + 23) >= 0)
        {
          v14 = v13;
        }

        else
        {
          v14 = *v13;
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to load plugin interface: Can't find plugin that defines type %s", v14);
        sub_29B290170(v15);
      }
    }

    sub_29A1847D4(v21);
  }

  std::mutex::unlock(v4);
}

void sub_29A1845D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_uint *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a12)
  {
    if (atomic_fetch_add_explicit(a12 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a12 + 8))(a12);
    }
  }

  sub_29A1847D4(&a21);
  std::mutex::unlock(v21);
  _Unwind_Resume(a1);
}

void *sub_29A18468C(pxrInternal__aapl__pxrReserved__::TfType *a1)
{
  result = pxrInternal__aapl__pxrReserved__::TfType::_GetFactory(a1);
  if (result)
  {
  }

  return result;
}

void *sub_29A184704(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A2041F98;
  result[1] = v3;
  return result;
}

uint64_t sub_29A18474C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A2041F98;
  a2[1] = v2;
  return result;
}

uint64_t sub_29A184788(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2041FF8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A1847D4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_29A0DDCB0();
  }

  (*(*v2 + 48))(v2);

  return sub_29A0FC854(a1);
}

void sub_29A184840()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::VT_LOG_STACK_ON_ARRAY_DETACH_COPY))
  {
    sub_29B291578();
  }
}

void pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *this, const char *a2, char *a3)
{
  if ((atomic_load_explicit(&qword_2A173F400, memory_order_acquire) & 1) == 0)
  {
    v5 = a2;
    v3 = __cxa_guard_acquire(&qword_2A173F400);
    a2 = v5;
    if (v3)
    {
      v4 = atomic_load(pxrInternal__aapl__pxrReserved__::VT_LOG_STACK_ON_ARRAY_DETACH_COPY);
      if (!v4)
      {
        pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
      }

      byte_2A173F3F8 = *v4;
      __cxa_guard_release(&qword_2A173F400);
      a2 = v5;
    }
  }

  if (byte_2A173F3F8 == 1)
  {
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Detach/copy VtArray (%s)", a2, a3, a2);
    pxrInternal__aapl__pxrReserved__::TfLogStackTrace(v6, 0);
    sub_29B28E2DC(v6);
  }
}

pxrInternal__aapl__pxrReserved__::VtDictionary *pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary(pxrInternal__aapl__pxrReserved__::VtDictionary *this, const void ****a2)
{
  *this = 0;
  v3 = *a2;
  if (*a2)
  {
    v4 = operator new(0x18uLL);
    sub_29A186CAC(v4, v3);
    sub_29A184A10(this, v4);
  }

  return this;
}

void sub_29A1849E8(_Unwind_Exception *a1)
{
  operator delete(v2);
  sub_29A184A10(v1, 0);
  _Unwind_Resume(a1);
}

void sub_29A184A10(void ***a1, void **a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    sub_29A186C00(v2, v2[1]);

    operator delete(v2);
  }
}

void *pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary(void *a1, const void **a2, uint64_t a3)
{
  v6 = operator new(0x18uLL);
  sub_29A187048(v6, a2, &a2[5 * a3]);
  *a1 = v6;
  return a1;
}

const void ****pxrInternal__aapl__pxrReserved__::VtDictionary::operator=(const void ****a1, const void ****a2)
{
  if (a1 != a2)
  {
    v3 = *a2;
    if (*a2)
    {
      v4 = operator new(0x18uLL);
      sub_29A186CAC(v4, v3);
    }

    else
    {
      v4 = 0;
    }

    sub_29A184A10(a1, v4);
  }

  return a1;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](pxrInternal__aapl__pxrReserved__::VtDictionary *a1, __int128 *a2)
{
  sub_29A0ECEEC(&v7, "Vt", "VtDictionary::operator[]");
  pxrInternal__aapl__pxrReserved__::VtDictionary::_CreateDictIfNeeded(a1);
  v4 = *a1;
  v9 = a2;
  v5 = sub_29A1870CC(v4, a2, &unk_29B4D6118, &v9);
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v8, v7);
  }

  return v5 + 7;
}

void pxrInternal__aapl__pxrReserved__::VtDictionary::_CreateDictIfNeeded(pxrInternal__aapl__pxrReserved__::VtDictionary *this)
{
  if (!*this)
  {
    sub_29A0ECEEC(&v3, "Vt", "VtDictionary::_CreateDictIfNeeded");
    v2 = operator new(0x18uLL);
    v2[2] = 0;
    v2[1] = 0;
    *v2 = v2 + 1;
    sub_29A184A10(this, v2);
    if (v3)
    {
      pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v4, v3);
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtDictionary::count(uint64_t *a1, const void **a2)
{
  result = *a1;
  if (result)
  {
    return sub_29A00AF58(result, a2);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtDictionary::count(pxrInternal__aapl__pxrReserved__::VtDictionary *this, const char *a2)
{
  v3 = a2;
  result = *this;
  if (result)
  {
    return sub_29A1871F8(result, &v3);
  }

  return result;
}

uint64_t **pxrInternal__aapl__pxrReserved__::VtDictionary::erase(uint64_t ***a1, const void **a2)
{
  result = *a1;
  if (result)
  {
    return sub_29A18731C(result, a2);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtDictionary::erase(uint64_t *a1, uint64_t a2, char *a3)
{
  v7[0] = a2;
  v7[1] = a3;
  v3 = *a1;
  v4 = sub_29A184D50(v7, *a1, a3);
  v5 = sub_29A03AFE8(v3, v4);
  sub_29A186C5C((v4 + 4));
  operator delete(v4);
  return v5;
}

uint64_t sub_29A184D50(void *a1, uint64_t a2, char *a3)
{
  v5 = a1[1];
  if (v5)
  {
    v6 = v5 == a2;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v8[6] = v3;
    v8[7] = v4;
    sub_29B2915AC(v8, a2, a3);
  }

  if (v5)
  {
    return *a1;
  }

  else
  {
    return a2 + 8;
  }
}