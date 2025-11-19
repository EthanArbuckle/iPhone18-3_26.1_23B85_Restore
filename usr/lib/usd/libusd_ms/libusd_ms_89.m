void sub_29A532558(_Unwind_Exception *a1)
{
  *(v2 - 40) = v1;
  sub_29A124AB0((v2 - 40));
  _Unwind_Resume(a1);
}

__n128 sub_29A532578(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20565B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A5325C4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20565B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A5325FC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2056618))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A5327B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A281338(va);
  _Unwind_Resume(a1);
}

void sub_29A532A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *(v6 - 40) = v5;
  sub_29A124AB0((v6 - 40));
  sub_29A281338(va);
  _Unwind_Resume(a1);
}

BOOL sub_29A532A84(uint64_t a1, char **a2)
{
  __dst = 0;
  if (!sub_29A4E7A0C(a1 + 8, &__dst, 8uLL))
  {
    return 0;
  }

  v4 = *(**(a1 + 16) + 32);
  v5 = *(a1 + 8) - *(**(a1 + 16) + 24);
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || __dst > v6)
  {
    v11 = "usd/crateFile.cpp";
    v12 = "_Read";
    v13 = 1314;
    v14 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>::_Read(vector<T> &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>, T = pxrInternal__aapl__pxrReserved__::TfToken]";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v11, 3, "Failed to read vector of size %llu, remaining file size is %lld of %lld", __dst, v6, v4);
    return 0;
  }

  sub_29A394184(&v11, __dst);
  v7 = sub_29A511068(a1, v11, __dst);
  v8 = v7;
  if (&v11 != a2 && v7)
  {
    sub_29A34AC54(a2, v11, v12, (v12 - v11) >> 3);
  }

  v17 = &v11;
  sub_29A124AB0(&v17);
  return v8;
}

void sub_29A532B98(_Unwind_Exception *a1)
{
  *(v2 - 40) = v1;
  sub_29A124AB0((v2 - 40));
  _Unwind_Resume(a1);
}

__n128 sub_29A532BB8(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2056638;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A532C04(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2056638;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A532C3C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2056698))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A532C88(uint64_t a1)
{
  v1 = *(*a1 + 6704);
  if (v1)
  {
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
  }

  sub_29A532D34();
}

void sub_29A532D10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A532E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (a4)
  {
    sub_29A014BEC(a4);
  }

  sub_29A281338(va);
  _Unwind_Resume(a1);
}

void sub_29A5330DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *(v6 - 40) = v5;
  sub_29A124AB0((v6 - 40));
  sub_29A281338(va);
  _Unwind_Resume(a1);
}

BOOL sub_29A533118(void *a1, void **a2)
{
  v13 = 0;
  if (!sub_29A4E5308(a1 + 1, &v13, 8uLL))
  {
    return 0;
  }

  v4 = (*(*a1[1] + 16))(a1[1]);
  v5 = a1[3];
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || v13 > v6)
  {
    sub_29B2ABBA0();
    return 0;
  }

  sub_29A394184(&v11, v13);
  v7 = sub_29A5117B4(a1, v11, v13);
  v8 = v7;
  if (&v11 != a2 && v7)
  {
    sub_29A34AC54(a2, v11, v12, v12 - v11);
  }

  v14 = &v11;
  sub_29A124AB0(&v14);
  return v8;
}

void sub_29A53320C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

__n128 sub_29A53322C(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20566B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A533278(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20566B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A5332B0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2056718))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A5332FC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(*a1 + 6536);
  v5 = *(a2 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
  }

  else
  {
    v6 = *a2;
  }

  sub_29A533368(v3, v2, v4 + 264, v6);
}

void sub_29A533368(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v4[19] = a2;
  v4[20] = a3;
  sub_29A242868(v4, a4);
}

pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile **sub_29A533480(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile **a1, unsigned __int8 **a2)
{
  sub_29A531E14(&__src, a2);
  if ((__src & 0x60) != 0)
  {
    v4 = *(*a1 + 817);
    sub_29A008E78(__p, "A SdfListOp value using a prepended or appended value was detected, which requires crate version 0.2.0.");
    sub_29A531C2C(v4, 0x200, __p);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  result = sub_29A506C88(a1, &__src);
  v6 = __src;
  if ((__src & 2) != 0)
  {
    result = sub_29A533938(a1, a2 + 1);
    v6 = __src;
    if ((__src & 4) == 0)
    {
LABEL_6:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  else if ((__src & 4) == 0)
  {
    goto LABEL_6;
  }

  result = sub_29A533938(a1, a2 + 4);
  v6 = __src;
  if ((__src & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = sub_29A533938(a1, a2 + 7);
  v6 = __src;
  if ((__src & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = sub_29A533938(a1, a2 + 10);
  v6 = __src;
  if ((__src & 8) == 0)
  {
LABEL_9:
    if ((v6 & 0x10) == 0)
    {
      return result;
    }

    return sub_29A533938(a1, a2 + 16);
  }

LABEL_16:
  result = sub_29A533938(a1, a2 + 13);
  if ((__src & 0x10) == 0)
  {
    return result;
  }

  return sub_29A533938(a1, a2 + 16);
}

void sub_29A53359C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A5335B8(void *a1, unsigned __int8 *a2, _BYTE *a3)
{
  v12 = 0;
  v13 = 0;
  sub_29A242E00(&v12, a2, (a2 + 8), (a2 + 32), (a2 + 56), (a2 + 80), (a2 + 104), (a2 + 128));
  v5 = bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v12));
  v6 = a1[1];
  if (v6)
  {
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
    if (v9)
    {
      v10 = *v9;
      if (*v9)
      {
        do
        {
          v11 = v10[1];
          if (v11 == v5)
          {
            pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::operator==();
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
            break;
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
  }

  sub_29A533854(a1, v5, a3, &v12);
}

void sub_29A53383C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A5338DC(va, 0);
  _Unwind_Resume(a1);
}

void sub_29A533854(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0xB0uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  sub_29A242868((v8 + 2), a3);
}

void sub_29A5338DC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A4E1D5C(v2 + 2);
    }

    operator delete(v2);
  }
}

pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile **sub_29A533938(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile **a1, unsigned __int8 **a2)
{
  __src = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  sub_29A4E5264(a1, &__src);
  return sub_29A50E4C8(*a2, a2[1], a1);
}

__n128 sub_29A53399C(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2056738;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A5339E8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2056738;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A533A64(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2056798))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A533B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A22C174(va);
  _Unwind_Resume(a1);
}

void sub_29A533E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *(v6 - 40) = v5;
  sub_29A012C90((v6 - 40));
  sub_29A22C174(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A533E5C(uint64_t *a1, std::string **a2)
{
  v16 = 0;
  if (!sub_29A4EF670((a1 + 1), 0, &v16))
  {
    return 0;
  }

  v5 = a1[2];
  v4 = a1[3];
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || v16 > v6)
  {
    v11 = "usd/crateFile.cpp";
    v12 = "_Read";
    v13 = 1314;
    v14 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>::_Read(vector<T> &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream, T = std::string]";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v11, 3, "Failed to read vector of size %llu, remaining file size is %lld of %lld", v16, v6, v4);
    return 0;
  }

  sub_29A012B58(&v11, v16);
  v7 = sub_29A50E99C(a1, v11, v16);
  v8 = v7;
  if (&v11 == a2)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29A095E3C(a2, v11, v12, 0xAAAAAAAAAAAAAAABLL * ((v12 - v11) >> 3));
  }

  v17 = &v11;
  sub_29A012C90(&v17);
  return v8;
}

void sub_29A533F70(_Unwind_Exception *a1)
{
  *(v2 - 40) = v1;
  sub_29A012C90((v2 - 40));
  _Unwind_Resume(a1);
}

__n128 sub_29A533F90(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20567B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A533FDC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20567B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A534014(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2056818))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A5341C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A22C174(va);
  _Unwind_Resume(a1);
}

void sub_29A534460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *(v6 - 40) = v5;
  sub_29A012C90((v6 - 40));
  sub_29A22C174(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A53449C(uint64_t a1, std::string **a2)
{
  __dst = 0;
  if (!sub_29A4E7A0C(a1 + 8, &__dst, 8uLL))
  {
    return 0;
  }

  v4 = *(**(a1 + 16) + 32);
  v5 = *(a1 + 8) - *(**(a1 + 16) + 24);
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || __dst > v6)
  {
    v11 = "usd/crateFile.cpp";
    v12 = "_Read";
    v13 = 1314;
    v14 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>::_Read(vector<T> &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>, T = std::string]";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v11, 3, "Failed to read vector of size %llu, remaining file size is %lld of %lld", __dst, v6, v4);
    return 0;
  }

  sub_29A012B58(&v11, __dst);
  v7 = sub_29A50F400(a1, v11, __dst);
  v8 = v7;
  if (&v11 == a2)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29A095E3C(a2, v11, v12, 0xAAAAAAAAAAAAAAABLL * ((v12 - v11) >> 3));
  }

  v17 = &v11;
  sub_29A012C90(&v17);
  return v8;
}

void sub_29A5345BC(_Unwind_Exception *a1)
{
  *(v2 - 40) = v1;
  sub_29A012C90((v2 - 40));
  _Unwind_Resume(a1);
}

__n128 sub_29A5345DC(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2056838;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A534628(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2056838;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A534660(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2056898))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A5346AC(uint64_t a1)
{
  v1 = *(*a1 + 6704);
  if (v1)
  {
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
  }

  sub_29A534758();
}

void sub_29A534734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A534854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (a4)
  {
    sub_29A014BEC(a4);
  }

  sub_29A22C174(va);
  _Unwind_Resume(a1);
}

void sub_29A534B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *(v6 - 40) = v5;
  sub_29A012C90((v6 - 40));
  sub_29A22C174(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A534B3C(void *a1, std::string **a2)
{
  v13 = 0;
  if (!sub_29A4E5308(a1 + 1, &v13, 8uLL))
  {
    return 0;
  }

  v4 = (*(*a1[1] + 16))(a1[1]);
  v5 = a1[3];
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || v13 > v6)
  {
    sub_29B2ABC14();
    return 0;
  }

  sub_29A012B58(&v11, v13);
  v7 = sub_29A50FC4C(a1, v11, v13);
  v8 = v7;
  if (&v11 == a2)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29A095E3C(a2, v11, v12, 0xAAAAAAAAAAAAAAABLL * ((v12 - v11) >> 3));
  }

  v14 = &v11;
  sub_29A012C90(&v14);
  return v8;
}

void sub_29A534C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A012C90(va);
  _Unwind_Resume(a1);
}

__n128 sub_29A534C5C(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20568B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A534CA8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20568B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A534CE0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2056918))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A534D2C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(*a1 + 6536);
  v5 = *(a2 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
  }

  else
  {
    v6 = *a2;
  }

  sub_29A534D98(v3, v2, v4 + 264, v6);
}

void sub_29A534D98(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v4[19] = a2;
  v4[20] = a3;
  sub_29A1E1FE0(v4, a4);
}

pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile **sub_29A534EB0(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile **a1, pxrInternal__aapl__pxrReserved__::SdfPath **a2)
{
  sub_29A531E14(&__src, a2);
  if ((__src & 0x60) != 0)
  {
    v4 = *(*a1 + 817);
    sub_29A008E78(__p, "A SdfListOp value using a prepended or appended value was detected, which requires crate version 0.2.0.");
    sub_29A531C2C(v4, 0x200, __p);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  result = sub_29A506C88(a1, &__src);
  v6 = __src;
  if ((__src & 2) != 0)
  {
    result = sub_29A535368(a1, a2 + 1);
    v6 = __src;
    if ((__src & 4) == 0)
    {
LABEL_6:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  else if ((__src & 4) == 0)
  {
    goto LABEL_6;
  }

  result = sub_29A535368(a1, a2 + 4);
  v6 = __src;
  if ((__src & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = sub_29A535368(a1, a2 + 7);
  v6 = __src;
  if ((__src & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = sub_29A535368(a1, a2 + 10);
  v6 = __src;
  if ((__src & 8) == 0)
  {
LABEL_9:
    if ((v6 & 0x10) == 0)
    {
      return result;
    }

    return sub_29A535368(a1, a2 + 16);
  }

LABEL_16:
  result = sub_29A535368(a1, a2 + 13);
  if ((__src & 0x10) == 0)
  {
    return result;
  }

  return sub_29A535368(a1, a2 + 16);
}

void sub_29A534FCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A534FE8(void *a1, unsigned __int8 *a2, _BYTE *a3)
{
  v12 = 0;
  v13 = 0;
  sub_29A1E322C(&v12, a2, (a2 + 8), (a2 + 32), (a2 + 56), (a2 + 80), (a2 + 104), (a2 + 128));
  v5 = bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v12));
  v6 = a1[1];
  if (v6)
  {
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
    if (v9)
    {
      v10 = *v9;
      if (*v9)
      {
        do
        {
          v11 = v10[1];
          if (v11 == v5)
          {
            pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::operator==();
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
            break;
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
  }

  sub_29A535284(a1, v5, a3, &v12);
}

void sub_29A53526C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A53530C(va, 0);
  _Unwind_Resume(a1);
}

void sub_29A535284(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0xB0uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  sub_29A1E1FE0((v8 + 2), a3);
}

void sub_29A53530C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A4E2068(v2 + 2);
    }

    operator delete(v2);
  }
}

pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile **sub_29A535368(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile **a1, pxrInternal__aapl__pxrReserved__::SdfPath **a2)
{
  __src = (a2[1] - *a2) >> 3;
  sub_29A4E5264(a1, &__src);
  return sub_29A5353B8(*a2, a2[1], a1);
}

pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile **sub_29A5353B8(pxrInternal__aapl__pxrReserved__::SdfPath *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile **a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      __src = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_AddPath(*a3, v5);
      sub_29A4FBF2C(a3, &__src);
      v5 = (v5 + 8);
    }

    while (v5 != a2);
  }

  return a3;
}

__n128 sub_29A53542C(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2056938;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A535478(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2056938;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A5354F4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2056998))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A535618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A1E1E38(va);
  _Unwind_Resume(a1);
}

void sub_29A5358B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *(v6 - 40) = v5;
  sub_29A1E234C((v6 - 40));
  sub_29A1E1E38(va);
  _Unwind_Resume(a1);
}

BOOL sub_29A5358EC(uint64_t a1, int **a2)
{
  v16 = 0;
  if (!sub_29A4EF670(a1 + 8, 0, &v16))
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || v16 > v6)
  {
    v11 = "usd/crateFile.cpp";
    v12 = "_Read";
    v13 = 1314;
    v14 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>::_Read(vector<T> &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream, T = pxrInternal__aapl__pxrReserved__::SdfPath]";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v11, 3, "Failed to read vector of size %llu, remaining file size is %lld of %lld", v16, v6, v4);
    return 0;
  }

  sub_29A2254B4(&v11, v16);
  v7 = sub_29A535A0C(a1, v11, v16);
  v8 = v7;
  if (&v11 != a2 && v7)
  {
    sub_29A324D54(a2, v11, v12, (v12 - v11) >> 3);
  }

  v17 = &v11;
  sub_29A1E234C(&v17);
  return v8;
}

void sub_29A5359F4(_Unwind_Exception *a1)
{
  *(v2 - 40) = v1;
  sub_29A1E234C((v2 - 40));
  _Unwind_Resume(a1);
}

BOOL sub_29A535A0C(uint64_t a1, int *a2, unint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  _C[0] = -1;
  result = sub_29A4FC36C(a1 + 8, 0, _C);
  if (result)
  {
    v7 = 0;
    while (1)
    {
      v8 = *(*a1 + 96);
      v9 = _C[0] >= ((*(*a1 + 104) - v8) >> 3) ? pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(result) : (v8 + 8 * _C[0]);
      sub_29A2258F0(a2, v9);
      v10 = a2 + 1;
      sub_29A225948(v10, v9 + 1);
      if (a3 - 1 == v7)
      {
        break;
      }

      _C[0] = -1;
      result = sub_29A4FC36C(a1 + 8, 0, _C);
      a2 = v10 + 1;
      ++v7;
      if (!result)
      {
        return v7 >= a3;
      }
    }

    return 1;
  }

  return result;
}

__n128 sub_29A535B10(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20569B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A535B5C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20569B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A535B94(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2056A18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A535D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A1E1E38(va);
  _Unwind_Resume(a1);
}

void sub_29A535FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *(v6 - 40) = v5;
  sub_29A1E234C((v6 - 40));
  sub_29A1E1E38(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A53601C(uint64_t a1, int **a2)
{
  __dst = 0;
  if (!sub_29A4E7A0C(a1 + 8, &__dst, 8uLL))
  {
    return 0;
  }

  v4 = *(**(a1 + 16) + 32);
  v5 = *(a1 + 8) - *(**(a1 + 16) + 24);
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || __dst > v6)
  {
    v11 = "usd/crateFile.cpp";
    v12 = "_Read";
    v13 = 1314;
    v14 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>::_Read(vector<T> &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>, T = pxrInternal__aapl__pxrReserved__::SdfPath]";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v11, 3, "Failed to read vector of size %llu, remaining file size is %lld of %lld", __dst, v6, v4);
    return 0;
  }

  sub_29A2254B4(&v11, __dst);
  v7 = sub_29A536148(a1, v11, __dst);
  v8 = v7;
  if (&v11 == a2)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29A324D54(a2, v11, v12, (v12 - v11) >> 3);
  }

  v17 = &v11;
  sub_29A1E234C(&v17);
  return v8;
}

void sub_29A536130(_Unwind_Exception *a1)
{
  *(v2 - 40) = v1;
  sub_29A1E234C((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_29A536148(uint64_t a1, int *a2, unint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  __dst = -1;
  result = sub_29A4E7A0C(a1 + 8, &__dst, 4uLL);
  if (result)
  {
    v7 = 0;
    while (1)
    {
      v8 = *(*a1 + 96);
      v9 = __dst >= ((*(*a1 + 104) - v8) >> 3) ? pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(result) : (v8 + 8 * __dst);
      sub_29A2258F0(a2, v9);
      v10 = a2 + 1;
      sub_29A225948(v10, v9 + 1);
      if (a3 - 1 == v7)
      {
        break;
      }

      __dst = -1;
      result = sub_29A4E7A0C(a1 + 8, &__dst, 4uLL);
      a2 = v10 + 1;
      ++v7;
      if (!result)
      {
        return v7 >= a3;
      }
    }

    return 1;
  }

  return result;
}

__n128 sub_29A53624C(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2056A38;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A536298(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2056A38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A5362D0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2056A98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A53631C(uint64_t a1)
{
  v1 = *(*a1 + 6704);
  if (v1)
  {
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
  }

  sub_29A5363C8();
}

void sub_29A5363A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A5364C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (a4)
  {
    sub_29A014BEC(a4);
  }

  sub_29A1E1E38(va);
  _Unwind_Resume(a1);
}

void sub_29A536770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *(v6 - 40) = v5;
  sub_29A1E234C((v6 - 40));
  sub_29A1E1E38(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A5367AC(void *a1, int **a2)
{
  v13 = 0;
  if (!sub_29A4E5308(a1 + 1, &v13, 8uLL))
  {
    return 0;
  }

  v4 = (*(*a1[1] + 16))(a1[1]);
  v5 = a1[3];
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || v13 > v6)
  {
    sub_29B2ABC88();
    return 0;
  }

  sub_29A2254B4(&v11, v13);
  v7 = sub_29A5368B8(a1, v11, v13);
  v8 = v7;
  if (&v11 == a2)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29A324D54(a2, v11, v12, (v12 - v11) >> 3);
  }

  v14 = &v11;
  sub_29A1E234C(&v14);
  return v8;
}

void sub_29A5368A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A1E234C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A5368B8(void *a1, int *a2, unint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v11 = -1;
  result = sub_29A4E5308(a1 + 1, &v11, 4uLL);
  if (result)
  {
    v7 = 0;
    while (1)
    {
      v8 = *(*a1 + 96);
      v9 = v11 >= ((*(*a1 + 104) - v8) >> 3) ? pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(result) : (v8 + 8 * v11);
      sub_29A2258F0(a2, v9);
      v10 = a2 + 1;
      sub_29A225948(v10, v9 + 1);
      if (a3 - 1 == v7)
      {
        break;
      }

      v11 = -1;
      result = sub_29A4E5308(a1 + 1, &v11, 4uLL);
      a2 = v10 + 1;
      ++v7;
      if (!result)
      {
        return v7 >= a3;
      }
    }

    return 1;
  }

  return result;
}

__n128 sub_29A5369BC(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2056AB8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A536A08(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2056AB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A536A40(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2056B18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A536A8C(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(*a1 + 817);
  v5 = *(a2 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
  }

  else
  {
    v6 = *a2;
  }

  return sub_29A536AF8(v3, v2, (v4 + 264), v6);
}

uint64_t sub_29A536AF8(uint64_t *a1, pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *a2, pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *a3, uint64_t *a4)
{
  v20[0] = a2;
  v20[1] = a3;
  sub_29A2481A4(&v13, a4);
  v21 = &v19;
  sub_29A2463D0(&v21);
  v21 = &v18;
  sub_29A2463D0(&v21);
  v21 = &v17;
  sub_29A2463D0(&v21);
  v21 = &v16;
  sub_29A2463D0(&v21);
  v21 = &v15;
  sub_29A2463D0(&v21);
  v21 = &v14;
  sub_29A2463D0(&v21);
  v7 = *a1;
  if (!*a1)
  {
    v8 = operator new(0x28uLL);
    *v8 = 0u;
    v8[1] = 0u;
    *(v8 + 8) = 1065353216;
    sub_29A4E22B8(a1, v8);
    v7 = *a1;
  }

  v21 = 0;
  v9 = sub_29A536D48(v7, a4, a4, &v21);
  v10 = v9;
  if (v11)
  {
    *(v9 + 168) = *(a3 + 2) & 0xFFFFFFFFFFFFLL | 0x23000000000000;
    sub_29A536C10(v20, a4);
  }

  return *(v10 + 168);
}

uint64_t sub_29A536C10(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile **a1, uint64_t *a2)
{
  sub_29A531E14(&__src, a2);
  if ((__src & 0x60) != 0)
  {
    v4 = *(*a1 + 817);
    sub_29A008E78(__p, "A SdfListOp value using a prepended or appended value was detected, which requires crate version 0.2.0.");
    sub_29A531C2C(v4, 0x200, __p);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  result = sub_29A506C88(a1, &__src);
  v6 = __src;
  if ((__src & 2) != 0)
  {
    result = sub_29A5370C8(a1, a2 + 1);
    v6 = __src;
    if ((__src & 4) == 0)
    {
LABEL_6:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  else if ((__src & 4) == 0)
  {
    goto LABEL_6;
  }

  result = sub_29A5370C8(a1, a2 + 4);
  v6 = __src;
  if ((__src & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = sub_29A5370C8(a1, a2 + 7);
  v6 = __src;
  if ((__src & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = sub_29A5370C8(a1, a2 + 10);
  v6 = __src;
  if ((__src & 8) == 0)
  {
LABEL_9:
    if ((v6 & 0x10) == 0)
    {
      return result;
    }

    return sub_29A5370C8(a1, a2 + 16);
  }

LABEL_16:
  result = sub_29A5370C8(a1, a2 + 13);
  if ((__src & 0x10) == 0)
  {
    return result;
  }

  return sub_29A5370C8(a1, a2 + 16);
}

void sub_29A536D2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A536D48(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v26 = 0;
  v27 = 0;
  sub_29A248734(&v26, a2, (a2 + 8), (a2 + 32), (a2 + 56), (a2 + 80), (a2 + 104), (a2 + 128));
  v8 = bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v26));
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v4 = v8;
      if (v8 >= v9)
      {
        v4 = v8 % v9;
      }
    }

    else
    {
      v4 = v8 & (v9 - 1);
    }

    v11 = *(*a1 + 8 * v4);
    if (v11)
    {
      v12 = *v11;
      if (*v11)
      {
        do
        {
          v13 = v12[1];
          if (v13 == v8)
          {
            pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::operator==();
          }

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

          if (v13 != v4)
          {
            break;
          }

          v12 = *v12;
        }

        while (v12);
      }
    }
  }

  sub_29A536FE4(a1, v8, a3, a4, &v26);
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
        v4 = v8 % v9;
      }

      else
      {
        v4 = v8;
      }
    }

    else
    {
      v4 = (v9 - 1) & v8;
    }
  }

  v20 = *a1;
  v21 = *(*a1 + 8 * v4);
  if (v21)
  {
    v22 = v26;
    *v26 = *v21;
    *v21 = v22;
  }

  else
  {
    v23 = v26;
    *v26 = *(a1 + 16);
    *(a1 + 16) = v23;
    *(v20 + 8 * v4) = a1 + 16;
    v22 = v26;
    if (*v26)
    {
      v24 = *(*v26 + 8);
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

      *(*a1 + 8 * v24) = v26;
      v22 = v26;
    }
  }

  ++*(a1 + 24);
  return v22;
}

void sub_29A536FCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A53706C(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29A536FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0xB0uLL);
  *a5 = v10;
  a5[1] = a1;
  a5[2] = 0;
  *v10 = 0;
  v10[1] = a2;
  result = sub_29A2481A4((v10 + 2), a3);
  v10[21] = *a4;
  *(a5 + 16) = 1;
  return result;
}

void sub_29A53706C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A4E2374(v2 + 2);
    }

    operator delete(v2);
  }
}

uint64_t sub_29A5370C8(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile **a1, uint64_t *a2)
{
  __src = 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3);
  result = sub_29A4E5264(a1, &__src);
  v5 = *a2;
  for (i = a2[1]; v5 != i; v5 += 56)
  {
    result = sub_29A53714C(a1, v5);
  }

  return result;
}

uint64_t sub_29A53714C(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile **a1, uint64_t a2)
{
  LODWORD(__src) = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_AddString(*a1, a2);
  sub_29A4FBF2C(a1, &__src);
  LODWORD(__src) = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_AddPath(*a1, (a2 + 24));
  sub_29A4FBF2C(a1, &__src);
  __src = *(a2 + 32);
  sub_29A4E5264(a1, &__src);
  __src = *(a2 + 40);
  sub_29A4E5264(a1, &__src);
  return sub_29A52FA30(a1, (a2 + 48));
}

__n128 sub_29A5371E8(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2056B38;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A537234(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2056B38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A5372B0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2056B98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A5373D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A246038(va);
  _Unwind_Resume(a1);
}

void sub_29A53766C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *(v6 - 40) = v5;
  sub_29A2463D0((v6 - 40));
  sub_29A246038(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A5376A8(uint64_t *a1, std::string **a2)
{
  v19 = 0;
  if (!sub_29A4EF670((a1 + 1), 0, &v19))
  {
    return 0;
  }

  v5 = a1[2];
  v4 = a1[3];
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || v19 > v6)
  {
    v14 = "usd/crateFile.cpp";
    v15 = "_Read";
    v16 = 1314;
    v17 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>::_Read(vector<T> &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream, T = pxrInternal__aapl__pxrReserved__::SdfReference]";
    v18 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v14, 3, "Failed to read vector of size %llu, remaining file size is %lld of %lld", v19, v6, v4);
    return 0;
  }

  sub_29A53782C(&v14, v19);
  v7 = v19;
  if (!v19)
  {
    goto LABEL_10;
  }

  v8 = 0;
  v9 = v14;
  v10 = 1;
  v11 = v19;
  do
  {
    if (!sub_29A5379E4(a1, v9))
    {
      break;
    }

    v9 = (v9 + 56);
    v8 = v10++ >= v7;
    --v11;
  }

  while (v11);
  if (!v8)
  {
    v12 = 0;
  }

  else
  {
LABEL_10:
    if (&v14 != a2)
    {
      sub_29A325158(a2, v14, v15, 0x6DB6DB6DB6DB6DB7 * ((v15 - v14) >> 3));
    }

    v12 = 1;
  }

  v20 = &v14;
  sub_29A2463D0(&v20);
  return v12;
}

void sub_29A53780C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18)
{
  a18 = &a12;
  sub_29A2463D0(&a18);
  _Unwind_Resume(a1);
}

void *sub_29A53782C(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A044EF0(a1, a2);
    sub_29A537898(a1, a2);
  }

  return a1;
}

void sub_29A537898(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (a2)
  {
    v4 = v3 + 56 * a2;
    v5 = 56 * a2;
    do
    {
      sub_29A537900(a1, v3);
      v3 += 56;
      v5 -= 56;
    }

    while (v5);
    v3 = v4;
  }

  *(a1 + 8) = v3;
}

void sub_29A537900(uint64_t a1, uint64_t a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v5);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v5 + 1);
  pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(v4, 0.0, 1.0);
  v3 = 0;
  pxrInternal__aapl__pxrReserved__::SdfReference::SdfReference(a2, __p, &v5, v4, &v3);
  sub_29A184A10(&v3, 0);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v5 + 1);
  sub_29A1DE3A4(&v5);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A5379AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, int a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_29A184A10(&a10, 0);
  sub_29A1DCEA8(&a13);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A5379E4(uint64_t *a1, uint64_t a2)
{
  memset(&__p._ub, 0, 24);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&__p._write);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&__p._write + 1);
  pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(&__p._read, 0.0, 1.0);
  __p._close = 0;
  LODWORD(__p._p) = -1;
  EmptyToken = sub_29A4FC36C((a1 + 1), 0, &__p);
  if (EmptyToken)
  {
    v5 = *a1;
    v6 = *(*a1 + 144);
    if (LODWORD(__p._p) >= ((*(*a1 + 152) - v6) >> 2))
    {
      pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyString(EmptyToken);
      v12 = &qword_2A1742350;
    }

    else
    {
      v7 = *(v6 + 4 * LODWORD(__p._p));
      v9 = v5 + 120;
      v8 = *(v5 + 120);
      if (v7 >= (*(v9 + 8) - v8) >> 3)
      {
        EmptyToken = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyToken(EmptyToken);
        v10 = &qword_2A1742328;
      }

      else
      {
        v10 = (v8 + 8 * v7);
      }

      v11 = *v10 & 0xFFFFFFFFFFFFFFF8;
      v12 = v11 ? (v11 + 16) : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyToken);
    }

    std::string::operator=(&__p._ub, v12);
    LODWORD(__p._p) = -1;
    v13 = sub_29A4FC36C((a1 + 1), 0, &__p);
    if (v13)
    {
      v14 = *(*a1 + 96);
      v15 = LODWORD(__p._p) >= ((*(*a1 + 104) - v14) >> 3) ? pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v13) : (v14 + 8 * LODWORD(__p._p));
      sub_29A2258F0(&__p._write, v15);
      sub_29A225948(&__p._write + 1, v15 + 1);
      *&__p._ur = 0;
      __p._lb._base = 0;
      if (sub_29A4EF670((a1 + 1), 0, &__p._lb) && sub_29A4EF670((a1 + 1), 0, &__p._ur))
      {
        pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(&__p, *&__p._lb._base, *&__p._ur);
        *&__p._read = *&__p._p;
        if (sub_29A52FDDC(a1, &__p._close))
        {
          pxrInternal__aapl__pxrReserved__::SdfReference::SdfReference(&__p, &__p._ub, &__p._write, &__p._read, &__p._close);
          if (*(a2 + 23) < 0)
          {
            operator delete(*a2);
          }

          *a2 = *&__p._p;
          *(a2 + 16) = *&__p._flags;
          *(&__p._file + 5) = 0;
          LOBYTE(__p._p) = 0;
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }
      }
    }
  }

  sub_29A184A10(&__p._close, 0);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&__p._write + 1);
  sub_29A1DE3A4(&__p._write);
  if (SHIBYTE(__p._extra) < 0)
  {
    operator delete(__p._ub._base);
  }

  return 0;
}

void sub_29A537C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void **);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_29A184A10(va, 0);
  sub_29A1DCEA8(va1);
  if (*(v8 - 49) < 0)
  {
    operator delete(*(v8 - 72));
  }

  _Unwind_Resume(a1);
}

__n128 sub_29A537CB4(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2056BB8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A537D00(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2056BB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A537D38(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2056C18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A537EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A246038(va);
  _Unwind_Resume(a1);
}

void sub_29A538184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *(v6 - 40) = v5;
  sub_29A2463D0((v6 - 40));
  sub_29A246038(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A5381C0(uint64_t a1, std::string **a2)
{
  __dst = 0;
  if (!sub_29A4E7A0C(a1 + 8, &__dst, 8uLL))
  {
    return 0;
  }

  v4 = *(**(a1 + 16) + 32);
  v5 = *(a1 + 8) - *(**(a1 + 16) + 24);
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || __dst > v6)
  {
    v14 = "usd/crateFile.cpp";
    v15 = "_Read";
    v16 = 1314;
    v17 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>::_Read(vector<T> &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>, T = pxrInternal__aapl__pxrReserved__::SdfReference]";
    v18 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v14, 3, "Failed to read vector of size %llu, remaining file size is %lld of %lld", __dst, v6, v4);
    return 0;
  }

  sub_29A53782C(&v14, __dst);
  v7 = __dst;
  if (!__dst)
  {
    goto LABEL_10;
  }

  v8 = 0;
  v9 = v14;
  v10 = 1;
  v11 = __dst;
  do
  {
    if (!sub_29A538350(a1, v9))
    {
      break;
    }

    v9 = (v9 + 56);
    v8 = v10++ >= v7;
    --v11;
  }

  while (v11);
  if (!v8)
  {
    v12 = 0;
  }

  else
  {
LABEL_10:
    if (&v14 != a2)
    {
      sub_29A325158(a2, v14, v15, 0x6DB6DB6DB6DB6DB7 * ((v15 - v14) >> 3));
    }

    v12 = 1;
  }

  v20 = &v14;
  sub_29A2463D0(&v20);
  return v12;
}

void sub_29A538330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18)
{
  a18 = &a12;
  sub_29A2463D0(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_29A538350(uint64_t a1, uint64_t a2)
{
  memset(&v23, 0, sizeof(v23));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v21);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v22);
  pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(&v20, 0.0, 1.0);
  v19 = 0;
  LODWORD(__p[0]) = -1;
  EmptyToken = sub_29A4E7A0C(a1 + 8, __p, 4uLL);
  if (EmptyToken)
  {
    v5 = *a1;
    v6 = *(*a1 + 144);
    if (LODWORD(__p[0]) >= ((*(*a1 + 152) - v6) >> 2))
    {
      pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyString(EmptyToken);
      v12 = &qword_2A1742350;
    }

    else
    {
      v7 = *(v6 + 4 * LODWORD(__p[0]));
      v9 = v5 + 120;
      v8 = *(v5 + 120);
      if (v7 >= (*(v9 + 8) - v8) >> 3)
      {
        EmptyToken = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyToken(EmptyToken);
        v10 = &qword_2A1742328;
      }

      else
      {
        v10 = (v8 + 8 * v7);
      }

      v11 = *v10 & 0xFFFFFFFFFFFFFFF8;
      v12 = v11 ? (v11 + 16) : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyToken);
    }

    std::string::operator=(&v23, v12);
    LODWORD(__p[0]) = -1;
    v13 = sub_29A4E7A0C(a1 + 8, __p, 4uLL);
    if (v13)
    {
      v14 = *(*a1 + 96);
      v15 = LODWORD(__p[0]) >= ((*(*a1 + 104) - v14) >> 3) ? pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v13) : (v14 + 8 * LODWORD(__p[0]));
      sub_29A2258F0(&v21, v15);
      sub_29A225948(&v22, v15 + 1);
      v24 = 0.0;
      __dst = 0.0;
      if (sub_29A4E7A0C(a1 + 8, &__dst, 8uLL))
      {
        if (sub_29A4E7A0C(a1 + 8, &v24, 8uLL))
        {
          pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(__p, __dst, v24);
          v20 = *__p;
          if (sub_29A530B58(a1, &v19))
          {
            pxrInternal__aapl__pxrReserved__::SdfReference::SdfReference(__p, &v23, &v21, &v20, &v19);
            if (*(a2 + 23) < 0)
            {
              operator delete(*a2);
            }

            *a2 = *__p;
            *(a2 + 16) = v18;
            HIBYTE(v18) = 0;
            LOBYTE(__p[0]) = 0;
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
          }
        }
      }
    }
  }

  sub_29A184A10(&v19, 0);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22);
  sub_29A1DE3A4(&v21);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_29A5385D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void **);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_29A184A10(va, 0);
  sub_29A1DCEA8(va1);
  if (*(v8 - 49) < 0)
  {
    operator delete(*(v8 - 72));
  }

  _Unwind_Resume(a1);
}

__n128 sub_29A538620(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2056C38;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A53866C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2056C38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A5386A4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2056C98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A5386F0(uint64_t a1)
{
  v1 = *(*a1 + 6704);
  if (v1)
  {
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
  }

  sub_29A53879C();
}

void sub_29A538778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A538898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (a4)
  {
    sub_29A014BEC(a4);
  }

  sub_29A246038(va);
  _Unwind_Resume(a1);
}

void sub_29A538B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *(v6 - 40) = v5;
  sub_29A2463D0((v6 - 40));
  sub_29A246038(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A538B80(uint64_t *a1, std::string **a2)
{
  v16 = 0;
  if (!sub_29A4E5308(a1 + 1, &v16, 8uLL))
  {
    return 0;
  }

  v4 = (*(*a1[1] + 16))(a1[1]);
  v5 = a1[3];
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || v16 > v6)
  {
    sub_29B2ABCFC();
    return 0;
  }

  sub_29A53782C(&v14, v16);
  v7 = v16;
  if (!v16)
  {
    goto LABEL_10;
  }

  v8 = 0;
  v9 = v14;
  v10 = 1;
  v11 = v16;
  do
  {
    if (!sub_29A538CF0(a1, v9))
    {
      break;
    }

    v9 = (v9 + 56);
    v8 = v10++ >= v7;
    --v11;
  }

  while (v11);
  if (!v8)
  {
    v12 = 0;
  }

  else
  {
LABEL_10:
    if (&v14 != a2)
    {
      sub_29A325158(a2, v14, v15, 0x6DB6DB6DB6DB6DB7 * ((v15 - v14) >> 3));
    }

    v12 = 1;
  }

  v17 = &v14;
  sub_29A2463D0(&v17);
  return v12;
}

void sub_29A538CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a10;
  sub_29A2463D0(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_29A538CF0(uint64_t *a1, uint64_t a2)
{
  memset(&v23, 0, sizeof(v23));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v21);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v22);
  pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(&v20, 0.0, 1.0);
  v19 = 0;
  LODWORD(__p[0]) = -1;
  EmptyToken = sub_29A4E5308(a1 + 1, __p, 4uLL);
  if (EmptyToken)
  {
    v5 = *a1;
    v6 = *(*a1 + 144);
    if (LODWORD(__p[0]) >= ((*(*a1 + 152) - v6) >> 2))
    {
      pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyString(EmptyToken);
      v12 = &qword_2A1742350;
    }

    else
    {
      v7 = *(v6 + 4 * LODWORD(__p[0]));
      v9 = v5 + 120;
      v8 = *(v5 + 120);
      if (v7 >= (*(v9 + 8) - v8) >> 3)
      {
        EmptyToken = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyToken(EmptyToken);
        v10 = &qword_2A1742328;
      }

      else
      {
        v10 = (v8 + 8 * v7);
      }

      v11 = *v10 & 0xFFFFFFFFFFFFFFF8;
      v12 = v11 ? (v11 + 16) : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyToken);
    }

    std::string::operator=(&v23, v12);
    LODWORD(__p[0]) = -1;
    v13 = sub_29A4E5308(a1 + 1, __p, 4uLL);
    if (v13)
    {
      v14 = *(*a1 + 96);
      v15 = LODWORD(__p[0]) >= ((*(*a1 + 104) - v14) >> 3) ? pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v13) : (v14 + 8 * LODWORD(__p[0]));
      sub_29A2258F0(&v21, v15);
      sub_29A225948(&v22, v15 + 1);
      v24 = 0.0;
      v25 = 0.0;
      if (sub_29A4E5308(a1 + 1, &v25, 8uLL))
      {
        if (sub_29A4E5308(a1 + 1, &v24, 8uLL))
        {
          pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(__p, v25, v24);
          v20 = *__p;
          if (sub_29A5311A0(a1, &v19))
          {
            pxrInternal__aapl__pxrReserved__::SdfReference::SdfReference(__p, &v23, &v21, &v20, &v19);
            if (*(a2 + 23) < 0)
            {
              operator delete(*a2);
            }

            *a2 = *__p;
            *(a2 + 16) = v18;
            HIBYTE(v18) = 0;
            LOBYTE(__p[0]) = 0;
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
          }
        }
      }
    }
  }

  sub_29A184A10(&v19, 0);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22);
  sub_29A1DE3A4(&v21);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_29A538F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void **);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_29A184A10(va, 0);
  sub_29A1DCEA8(va1);
  if (*(v8 - 49) < 0)
  {
    operator delete(*(v8 - 72));
  }

  _Unwind_Resume(a1);
}

__n128 sub_29A538FC0(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2056CB8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A53900C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2056CB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A539044(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2056D18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A539090(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(*a1 + 6536);
  v5 = *(a2 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
  }

  else
  {
    v6 = *a2;
  }

  return sub_29A5390FC(v3, v2, v4 + 264, v6);
}

uint64_t sub_29A5390FC(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v27[0] = a2;
  v27[1] = a3;
  sub_29A27D630(v14, a4);
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  v7 = *a1;
  if (!*a1)
  {
    v8 = operator new(0x28uLL);
    *v8 = 0u;
    v8[1] = 0u;
    *(v8 + 8) = 1065353216;
    sub_29A4E25B0(a1, v8);
    v7 = *a1;
  }

  v13 = 0;
  v9 = sub_29A539348(v7, a4, a4, &v13);
  v10 = v9;
  if (v11)
  {
    *(v9 + 168) = *(a3 + 16) & 0xFFFFFFFFFFFFLL | 0x24000000000000;
    sub_29A539210(v27, a4);
  }

  return *(v10 + 168);
}

uint64_t sub_29A539210(uint64_t a1, uint64_t a2)
{
  sub_29A531E14(&__src, a2);
  if ((__src & 0x60) != 0)
  {
    v4 = *(*a1 + 6536);
    sub_29A008E78(__p, "A SdfListOp value using a prepended or appended value was detected, which requires crate version 0.2.0.");
    sub_29A531C2C(v4, 0x200, __p);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  result = sub_29A506C88(a1, &__src);
  v6 = __src;
  if ((__src & 2) != 0)
  {
    result = sub_29A4D2138(a1, a2 + 8);
    v6 = __src;
    if ((__src & 4) == 0)
    {
LABEL_6:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  else if ((__src & 4) == 0)
  {
    goto LABEL_6;
  }

  result = sub_29A4D2138(a1, a2 + 32);
  v6 = __src;
  if ((__src & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = sub_29A4D2138(a1, a2 + 56);
  v6 = __src;
  if ((__src & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = sub_29A4D2138(a1, a2 + 80);
  v6 = __src;
  if ((__src & 8) == 0)
  {
LABEL_9:
    if ((v6 & 0x10) == 0)
    {
      return result;
    }

    return sub_29A4D2138(a1, a2 + 128);
  }

LABEL_16:
  result = sub_29A4D2138(a1, a2 + 104);
  if ((__src & 0x10) == 0)
  {
    return result;
  }

  return sub_29A4D2138(a1, a2 + 128);
}

void sub_29A53932C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A539348(uint64_t a1, unsigned __int8 *a2, uint64_t a3, void *a4)
{
  v26 = 0;
  v27 = 0;
  sub_29A27DBB4(&v26, a2, (a2 + 8), (a2 + 32), (a2 + 56), (a2 + 80), (a2 + 104), (a2 + 128));
  v8 = bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v26));
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v4 = v8;
      if (v8 >= v9)
      {
        v4 = v8 % v9;
      }
    }

    else
    {
      v4 = v8 & (v9 - 1);
    }

    v11 = *(*a1 + 8 * v4);
    if (v11)
    {
      v12 = *v11;
      if (*v11)
      {
        do
        {
          v13 = v12[1];
          if (v13 == v8)
          {
            pxrInternal__aapl__pxrReserved__::SdfListOp<int>::operator==();
          }

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

          if (v13 != v4)
          {
            break;
          }

          v12 = *v12;
        }

        while (v12);
      }
    }
  }

  sub_29A5395E4(a1, v8, a3, a4, &v26);
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
        v4 = v8 % v9;
      }

      else
      {
        v4 = v8;
      }
    }

    else
    {
      v4 = (v9 - 1) & v8;
    }
  }

  v20 = *a1;
  v21 = *(*a1 + 8 * v4);
  if (v21)
  {
    v22 = v26;
    *v26 = *v21;
    *v21 = v22;
  }

  else
  {
    v23 = v26;
    *v26 = *(a1 + 16);
    *(a1 + 16) = v23;
    *(v20 + 8 * v4) = a1 + 16;
    v22 = v26;
    if (*v26)
    {
      v24 = *(*v26 + 8);
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

      *(*a1 + 8 * v24) = v26;
      v22 = v26;
    }
  }

  ++*(a1 + 24);
  return v22;
}

void sub_29A5395CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A53966C(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29A5395E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0xB0uLL);
  *a5 = v10;
  a5[1] = a1;
  a5[2] = 0;
  *v10 = 0;
  v10[1] = a2;
  result = sub_29A27D630((v10 + 2), a3);
  v10[21] = *a4;
  *(a5 + 16) = 1;
  return result;
}

void sub_29A53966C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A4E266C(v2 + 2);
    }

    operator delete(v2);
  }
}

__n128 sub_29A5396D0(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2056D38;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A53971C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2056D38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A539798(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2056D98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A5398B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A27D4B0(va);
  _Unwind_Resume(a1);
}

void sub_29A539B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_29A27D4B0(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_29A539B6C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (a1 != a2)
  {
    sub_29A36CF34((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
    sub_29A36CF34((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
    sub_29A36CF34((a1 + 56), *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 2);
    sub_29A36CF34((a1 + 80), *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 2);
    sub_29A36CF34((a1 + 104), *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 2);
    sub_29A36CF34((a1 + 128), *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 2);
  }

  return a1;
}

BOOL sub_29A539C20(uint64_t a1, void **a2)
{
  v16 = 0;
  if (!sub_29A4EF670(a1 + 8, 0, &v16))
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || v16 > v6)
  {
    __p = "usd/crateFile.cpp";
    v12 = "_Read";
    v13 = 1314;
    v14 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>::_Read(vector<T> &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream, T = int]";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to read vector of size %llu, remaining file size is %lld of %lld", v16, v6, v4);
    return 0;
  }

  sub_29A011440(&__p, v16);
  v7 = sub_29A4EF894(a1, __p, v16);
  v8 = v7;
  if (&__p != a2 && v7)
  {
    sub_29A36CF34(a2, __p, v12, (v12 - __p) >> 2);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_29A539D28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_29A539D4C(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2056DB8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A539D98(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2056DB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A539DD0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2056E18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A539F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A27D4B0(va);
  _Unwind_Resume(a1);
}

void sub_29A53A1F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_29A27D4B0(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_29A53A234(uint64_t a1, void **a2)
{
  __dst = 0;
  if (!sub_29A4E7A0C(a1 + 8, &__dst, 8uLL))
  {
    return 0;
  }

  v4 = *(**(a1 + 16) + 32);
  v5 = *(a1 + 8) - *(**(a1 + 16) + 24);
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || __dst > v6)
  {
    __p = "usd/crateFile.cpp";
    v12 = "_Read";
    v13 = 1314;
    v14 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>::_Read(vector<T> &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>, T = int]";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to read vector of size %llu, remaining file size is %lld of %lld", __dst, v6, v4);
    return 0;
  }

  sub_29A011440(&__p, __dst);
  v7 = sub_29A4E7A0C(a1 + 8, __p, 4 * __dst);
  v8 = v7;
  if (&__p == a2)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29A36CF34(a2, __p, v12, (v12 - __p) >> 2);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_29A53A34C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_29A53A370(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2056E38;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A53A3BC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2056E38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A53A3F4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2056E98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A53A440(uint64_t a1)
{
  v1 = *(*a1 + 6704);
  if (v1)
  {
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
  }

  sub_29A53A4EC();
}

void sub_29A53A4C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A53A5E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (a4)
  {
    sub_29A014BEC(a4);
  }

  sub_29A27D4B0(va);
  _Unwind_Resume(a1);
}

void sub_29A53A86C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_29A27D4B0(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_29A53A8AC(uint64_t a1, void **a2)
{
  v13 = 0;
  if (!sub_29A4E5308((a1 + 8), &v13, 8uLL))
  {
    return 0;
  }

  v4 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  v5 = *(a1 + 24);
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || v13 > v6)
  {
    sub_29B2ABD70();
    return 0;
  }

  sub_29A011440(&__p, v13);
  v7 = sub_29A4E5308((a1 + 8), __p, 4 * v13);
  v8 = v7;
  if (&__p == a2)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29A36CF34(a2, __p, v12, (v12 - __p) >> 2);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_29A53A9A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_29A53A9C8(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2056EB8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A53AA14(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2056EB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A53AA4C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2056F18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A53AA98(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(*a1 + 6536);
  v5 = *(a2 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
  }

  else
  {
    v6 = *a2;
  }

  return sub_29A53AB04(v3, v2, v4 + 264, v6);
}

uint64_t sub_29A53AB04(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v27[0] = a2;
  v27[1] = a3;
  sub_29A27E67C(v14, a4);
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  v7 = *a1;
  if (!*a1)
  {
    v8 = operator new(0x28uLL);
    *v8 = 0u;
    v8[1] = 0u;
    *(v8 + 8) = 1065353216;
    sub_29A4E25B0(a1, v8);
    v7 = *a1;
  }

  v13 = 0;
  v9 = sub_29A53AD50(v7, a4, a4, &v13);
  v10 = v9;
  if (v11)
  {
    *(v9 + 168) = *(a3 + 16) & 0xFFFFFFFFFFFFLL | 0x25000000000000;
    sub_29A53AC18(v27, a4);
  }

  return *(v10 + 168);
}

uint64_t sub_29A53AC18(uint64_t a1, uint64_t a2)
{
  sub_29A531E14(&__src, a2);
  if ((__src & 0x60) != 0)
  {
    v4 = *(*a1 + 6536);
    sub_29A008E78(__p, "A SdfListOp value using a prepended or appended value was detected, which requires crate version 0.2.0.");
    sub_29A531C2C(v4, 0x200, __p);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  result = sub_29A506C88(a1, &__src);
  v6 = __src;
  if ((__src & 2) != 0)
  {
    result = sub_29A53B074(a1, a2 + 8);
    v6 = __src;
    if ((__src & 4) == 0)
    {
LABEL_6:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  else if ((__src & 4) == 0)
  {
    goto LABEL_6;
  }

  result = sub_29A53B074(a1, a2 + 32);
  v6 = __src;
  if ((__src & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = sub_29A53B074(a1, a2 + 56);
  v6 = __src;
  if ((__src & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = sub_29A53B074(a1, a2 + 80);
  v6 = __src;
  if ((__src & 8) == 0)
  {
LABEL_9:
    if ((v6 & 0x10) == 0)
    {
      return result;
    }

    return sub_29A53B074(a1, a2 + 128);
  }

LABEL_16:
  result = sub_29A53B074(a1, a2 + 104);
  if ((__src & 0x10) == 0)
  {
    return result;
  }

  return sub_29A53B074(a1, a2 + 128);
}

void sub_29A53AD34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A53AD50(uint64_t a1, unsigned __int8 *a2, uint64_t a3, void *a4)
{
  v26 = 0;
  v27 = 0;
  sub_29A27DBB4(&v26, a2, (a2 + 8), (a2 + 32), (a2 + 56), (a2 + 80), (a2 + 104), (a2 + 128));
  v8 = bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v26));
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v4 = v8;
      if (v8 >= v9)
      {
        v4 = v8 % v9;
      }
    }

    else
    {
      v4 = v8 & (v9 - 1);
    }

    v11 = *(*a1 + 8 * v4);
    if (v11)
    {
      v12 = *v11;
      if (*v11)
      {
        do
        {
          v13 = v12[1];
          if (v13 == v8)
          {
            pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::operator==();
          }

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

          if (v13 != v4)
          {
            break;
          }

          v12 = *v12;
        }

        while (v12);
      }
    }
  }

  sub_29A53AFEC(a1, v8, a3, a4, &v26);
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
        v4 = v8 % v9;
      }

      else
      {
        v4 = v8;
      }
    }

    else
    {
      v4 = (v9 - 1) & v8;
    }
  }

  v20 = *a1;
  v21 = *(*a1 + 8 * v4);
  if (v21)
  {
    v22 = v26;
    *v26 = *v21;
    *v21 = v22;
  }

  else
  {
    v23 = v26;
    *v26 = *(a1 + 16);
    *(a1 + 16) = v23;
    *(v20 + 8 * v4) = a1 + 16;
    v22 = v26;
    if (*v26)
    {
      v24 = *(*v26 + 8);
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

      *(*a1 + 8 * v24) = v26;
      v22 = v26;
    }
  }

  ++*(a1 + 24);
  return v22;
}

void sub_29A53AFD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A53966C(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29A53AFEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0xB0uLL);
  *a5 = v10;
  a5[1] = a1;
  a5[2] = 0;
  *v10 = 0;
  v10[1] = a2;
  result = sub_29A27E67C((v10 + 2), a3);
  v10[21] = *a4;
  *(a5 + 16) = 1;
  return result;
}

uint64_t sub_29A53B074(uint64_t a1, uint64_t a2)
{
  __src = (*(a2 + 8) - *a2) >> 3;
  sub_29A4E5264(a1, &__src);
  return sub_29A502120(a1, *a2, (*(a2 + 8) - *a2) >> 3);
}

__n128 sub_29A53B0D4(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2056F38;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A53B120(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2056F38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A53B19C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2056F98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A53B2BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A27D4B0(va);
  _Unwind_Resume(a1);
}

void sub_29A53B530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_29A27D4B0(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_29A53B570(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (a1 != a2)
  {
    sub_29A00CB24((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
    sub_29A00CB24((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
    sub_29A00CB24((a1 + 56), *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
    sub_29A00CB24((a1 + 80), *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 3);
    sub_29A00CB24((a1 + 104), *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 3);
    sub_29A00CB24((a1 + 128), *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 3);
  }

  return a1;
}

BOOL sub_29A53B624(uint64_t a1, void **a2)
{
  v16 = 0;
  if (!sub_29A4EF670(a1 + 8, 0, &v16))
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || v16 > v6)
  {
    __p = "usd/crateFile.cpp";
    v12 = "_Read";
    v13 = 1314;
    v14 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>::_Read(vector<T> &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream, T = long long]";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to read vector of size %llu, remaining file size is %lld of %lld", v16, v6, v4);
    return 0;
  }

  sub_29A0119F0(&__p, v16);
  v7 = sub_29A502D00(a1, __p, v16);
  v8 = v7;
  if (&__p != a2 && v7)
  {
    sub_29A00CB24(a2, __p, v12, (v12 - __p) >> 3);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_29A53B72C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_29A53B750(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2056FB8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A53B79C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2056FB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A53B7D4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2057018))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A53B984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A27D4B0(va);
  _Unwind_Resume(a1);
}

void sub_29A53BBF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_29A27D4B0(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_29A53BC38(uint64_t a1, void **a2)
{
  __dst = 0;
  if (!sub_29A4E7A0C(a1 + 8, &__dst, 8uLL))
  {
    return 0;
  }

  v4 = *(**(a1 + 16) + 32);
  v5 = *(a1 + 8) - *(**(a1 + 16) + 24);
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || __dst > v6)
  {
    __p = "usd/crateFile.cpp";
    v12 = "_Read";
    v13 = 1314;
    v14 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>::_Read(vector<T> &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>, T = long long]";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to read vector of size %llu, remaining file size is %lld of %lld", __dst, v6, v4);
    return 0;
  }

  sub_29A0119F0(&__p, __dst);
  v7 = sub_29A4E7A0C(a1 + 8, __p, 8 * __dst);
  v8 = v7;
  if (&__p == a2)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29A00CB24(a2, __p, v12, (v12 - __p) >> 3);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_29A53BD50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_29A53BD74(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2057038;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A53BDC0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2057038;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A53BDF8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2057098))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A53BE44(uint64_t a1)
{
  v1 = *(*a1 + 6704);
  if (v1)
  {
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
  }

  sub_29A53BEF0();
}

void sub_29A53BECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A53BFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (a4)
  {
    sub_29A014BEC(a4);
  }

  sub_29A27D4B0(va);
  _Unwind_Resume(a1);
}

void sub_29A53C270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_29A27D4B0(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_29A53C2B0(uint64_t a1, void **a2)
{
  v13 = 0;
  if (!sub_29A4E5308((a1 + 8), &v13, 8uLL))
  {
    return 0;
  }

  v4 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  v5 = *(a1 + 24);
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || v13 > v6)
  {
    sub_29B2ABDE4();
    return 0;
  }

  sub_29A0119F0(&__p, v13);
  v7 = sub_29A4E5308((a1 + 8), __p, 8 * v13);
  v8 = v7;
  if (&__p == a2)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29A00CB24(a2, __p, v12, (v12 - __p) >> 3);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_29A53C3A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_29A53C3CC(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20570B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A53C418(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20570B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A53C450(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2057118))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A53C49C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(*a1 + 6536);
  v5 = *(a2 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
  }

  else
  {
    v6 = *a2;
  }

  sub_29A53C508(v3, v2, v4 + 264, v6);
}

void sub_29A53C508(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v5 = a2;
  v6 = a3;
  sub_29A27F35C(v4, a4);
}

uint64_t sub_29A53C61C(uint64_t a1, uint64_t a2)
{
  sub_29A531E14(&__src, a2);
  if ((__src & 0x60) != 0)
  {
    v4 = *(*a1 + 6536);
    sub_29A008E78(__p, "A SdfListOp value using a prepended or appended value was detected, which requires crate version 0.2.0.");
    sub_29A531C2C(v4, 0x200, __p);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  result = sub_29A506C88(a1, &__src);
  v6 = __src;
  if ((__src & 2) != 0)
  {
    result = sub_29A4D2138(a1, a2 + 8);
    v6 = __src;
    if ((__src & 4) == 0)
    {
LABEL_6:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  else if ((__src & 4) == 0)
  {
    goto LABEL_6;
  }

  result = sub_29A4D2138(a1, a2 + 32);
  v6 = __src;
  if ((__src & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = sub_29A4D2138(a1, a2 + 56);
  v6 = __src;
  if ((__src & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = sub_29A4D2138(a1, a2 + 80);
  v6 = __src;
  if ((__src & 8) == 0)
  {
LABEL_9:
    if ((v6 & 0x10) == 0)
    {
      return result;
    }

    return sub_29A4D2138(a1, a2 + 128);
  }

LABEL_16:
  result = sub_29A4D2138(a1, a2 + 104);
  if ((__src & 0x10) == 0)
  {
    return result;
  }

  return sub_29A4D2138(a1, a2 + 128);
}

void sub_29A53C738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A53C754(void *a1, unsigned __int8 *a2, _BYTE *a3)
{
  v12 = 0;
  v13 = 0;
  sub_29A27DBB4(&v12, a2, (a2 + 8), (a2 + 32), (a2 + 56), (a2 + 80), (a2 + 104), (a2 + 128));
  v5 = bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v12));
  v6 = a1[1];
  if (v6)
  {
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
    if (v9)
    {
      v10 = *v9;
      if (*v9)
      {
        do
        {
          v11 = v10[1];
          if (v11 == v5)
          {
            pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::operator==();
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
            break;
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
  }

  sub_29A53C9F0(a1, v5, a3, &v12);
}

void sub_29A53C9D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A53966C(va, 0);
  _Unwind_Resume(a1);
}

void sub_29A53C9F0(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0xB0uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  sub_29A27F35C((v8 + 2), a3);
}

__n128 sub_29A53CA80(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2057138;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A53CACC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2057138;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A53CB48(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2057198))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A53CC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A27D4B0(va);
  _Unwind_Resume(a1);
}

void sub_29A53CEDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_29A27D4B0(&a14);
  _Unwind_Resume(a1);
}

BOOL sub_29A53CF1C(uint64_t a1, void **a2)
{
  v16 = 0;
  if (!sub_29A4EF670(a1 + 8, 0, &v16))
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || v16 > v6)
  {
    __p = "usd/crateFile.cpp";
    v12 = "_Read";
    v13 = 1314;
    v14 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>::_Read(vector<T> &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream, T = unsigned int]";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to read vector of size %llu, remaining file size is %lld of %lld", v16, v6, v4);
    return 0;
  }

  sub_29A01112C(&__p, v16);
  v7 = sub_29A4EF894(a1, __p, v16);
  v8 = v7;
  if (&__p != a2 && v7)
  {
    sub_29A36CF34(a2, __p, v12, (v12 - __p) >> 2);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_29A53D024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_29A53D048(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20571B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A53D094(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20571B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A53D0CC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2057218))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A53D27C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A27D4B0(va);
  _Unwind_Resume(a1);
}

void sub_29A53D4F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_29A27D4B0(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_29A53D530(uint64_t a1, void **a2)
{
  __dst = 0;
  if (!sub_29A4E7A0C(a1 + 8, &__dst, 8uLL))
  {
    return 0;
  }

  v4 = *(**(a1 + 16) + 32);
  v5 = *(a1 + 8) - *(**(a1 + 16) + 24);
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || __dst > v6)
  {
    __p = "usd/crateFile.cpp";
    v12 = "_Read";
    v13 = 1314;
    v14 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>::_Read(vector<T> &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>, T = unsigned int]";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to read vector of size %llu, remaining file size is %lld of %lld", __dst, v6, v4);
    return 0;
  }

  sub_29A01112C(&__p, __dst);
  v7 = sub_29A4E7A0C(a1 + 8, __p, 4 * __dst);
  v8 = v7;
  if (&__p == a2)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29A36CF34(a2, __p, v12, (v12 - __p) >> 2);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_29A53D648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_29A53D66C(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2057238;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A53D6B8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2057238;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A53D6F0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2057298))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A53D73C(uint64_t a1)
{
  v1 = *(*a1 + 6704);
  if (v1)
  {
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
  }

  sub_29A53D7E8();
}

void sub_29A53D7C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A53D8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (a4)
  {
    sub_29A014BEC(a4);
  }

  sub_29A27D4B0(va);
  _Unwind_Resume(a1);
}

void sub_29A53DB68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_29A27D4B0(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_29A53DBA8(uint64_t a1, void **a2)
{
  v13 = 0;
  if (!sub_29A4E5308((a1 + 8), &v13, 8uLL))
  {
    return 0;
  }

  v4 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  v5 = *(a1 + 24);
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || v13 > v6)
  {
    sub_29B2ABE58();
    return 0;
  }

  sub_29A01112C(&__p, v13);
  v7 = sub_29A4E5308((a1 + 8), __p, 4 * v13);
  v8 = v7;
  if (&__p == a2)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29A36CF34(a2, __p, v12, (v12 - __p) >> 2);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_29A53DCA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_29A53DCC4(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20572B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A53DD10(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20572B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A53DD48(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2057318))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A53DD94(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(*a1 + 6536);
  v5 = *(a2 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
  }

  else
  {
    v6 = *a2;
  }

  return sub_29A53DE00(v3, v2, v4 + 264, v6);
}

uint64_t sub_29A53DE00(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v27[0] = a2;
  v27[1] = a3;
  sub_29A280074(v14, a4);
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  v7 = *a1;
  if (!*a1)
  {
    v8 = operator new(0x28uLL);
    *v8 = 0u;
    v8[1] = 0u;
    *(v8 + 8) = 1065353216;
    sub_29A4E25B0(a1, v8);
    v7 = *a1;
  }

  v13 = 0;
  v9 = sub_29A53E04C(v7, a4, a4, &v13);
  v10 = v9;
  if (v11)
  {
    *(v9 + 168) = *(a3 + 16) & 0xFFFFFFFFFFFFLL | 0x27000000000000;
    sub_29A53DF14(v27, a4);
  }

  return *(v10 + 168);
}

uint64_t sub_29A53DF14(uint64_t a1, uint64_t a2)
{
  sub_29A531E14(&__src, a2);
  if ((__src & 0x60) != 0)
  {
    v4 = *(*a1 + 6536);
    sub_29A008E78(__p, "A SdfListOp value using a prepended or appended value was detected, which requires crate version 0.2.0.");
    sub_29A531C2C(v4, 0x200, __p);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  result = sub_29A506C88(a1, &__src);
  v6 = __src;
  if ((__src & 2) != 0)
  {
    result = sub_29A53B074(a1, a2 + 8);
    v6 = __src;
    if ((__src & 4) == 0)
    {
LABEL_6:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  else if ((__src & 4) == 0)
  {
    goto LABEL_6;
  }

  result = sub_29A53B074(a1, a2 + 32);
  v6 = __src;
  if ((__src & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = sub_29A53B074(a1, a2 + 56);
  v6 = __src;
  if ((__src & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = sub_29A53B074(a1, a2 + 80);
  v6 = __src;
  if ((__src & 8) == 0)
  {
LABEL_9:
    if ((v6 & 0x10) == 0)
    {
      return result;
    }

    return sub_29A53B074(a1, a2 + 128);
  }

LABEL_16:
  result = sub_29A53B074(a1, a2 + 104);
  if ((__src & 0x10) == 0)
  {
    return result;
  }

  return sub_29A53B074(a1, a2 + 128);
}

void sub_29A53E030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A53E04C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, void *a4)
{
  v26 = 0;
  v27 = 0;
  sub_29A27DBB4(&v26, a2, (a2 + 8), (a2 + 32), (a2 + 56), (a2 + 80), (a2 + 104), (a2 + 128));
  v8 = bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v26));
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v4 = v8;
      if (v8 >= v9)
      {
        v4 = v8 % v9;
      }
    }

    else
    {
      v4 = v8 & (v9 - 1);
    }

    v11 = *(*a1 + 8 * v4);
    if (v11)
    {
      v12 = *v11;
      if (*v11)
      {
        do
        {
          v13 = v12[1];
          if (v13 == v8)
          {
            pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::operator==();
          }

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

          if (v13 != v4)
          {
            break;
          }

          v12 = *v12;
        }

        while (v12);
      }
    }
  }

  sub_29A53E2E8(a1, v8, a3, a4, &v26);
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
        v4 = v8 % v9;
      }

      else
      {
        v4 = v8;
      }
    }

    else
    {
      v4 = (v9 - 1) & v8;
    }
  }

  v20 = *a1;
  v21 = *(*a1 + 8 * v4);
  if (v21)
  {
    v22 = v26;
    *v26 = *v21;
    *v21 = v22;
  }

  else
  {
    v23 = v26;
    *v26 = *(a1 + 16);
    *(a1 + 16) = v23;
    *(v20 + 8 * v4) = a1 + 16;
    v22 = v26;
    if (*v26)
    {
      v24 = *(*v26 + 8);
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

      *(*a1 + 8 * v24) = v26;
      v22 = v26;
    }
  }

  ++*(a1 + 24);
  return v22;
}

void sub_29A53E2D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A53966C(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29A53E2E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0xB0uLL);
  *a5 = v10;
  a5[1] = a1;
  a5[2] = 0;
  *v10 = 0;
  v10[1] = a2;
  result = sub_29A280074((v10 + 2), a3);
  v10[21] = *a4;
  *(a5 + 16) = 1;
  return result;
}

__n128 sub_29A53E378(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2057338;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A53E3C4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2057338;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A53E440(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2057398))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A53E560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A27D4B0(va);
  _Unwind_Resume(a1);
}

void sub_29A53E7D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_29A27D4B0(&a14);
  _Unwind_Resume(a1);
}

BOOL sub_29A53E814(uint64_t a1, void **a2)
{
  v16 = 0;
  if (!sub_29A4EF670(a1 + 8, 0, &v16))
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || v16 > v6)
  {
    __p = "usd/crateFile.cpp";
    v12 = "_Read";
    v13 = 1314;
    v14 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>::_Read(vector<T> &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream, T = unsigned long long]";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to read vector of size %llu, remaining file size is %lld of %lld", v16, v6, v4);
    return 0;
  }

  sub_29A011718(&__p, v16);
  v7 = sub_29A502D00(a1, __p, v16);
  v8 = v7;
  if (&__p != a2 && v7)
  {
    sub_29A00CB24(a2, __p, v12, (v12 - __p) >> 3);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_29A53E91C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_29A53E940(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20573B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A53E98C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20573B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A53E9C4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2057418))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A53EB74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A27D4B0(va);
  _Unwind_Resume(a1);
}

void sub_29A53EDE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_29A27D4B0(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_29A53EE28(uint64_t a1, void **a2)
{
  __dst = 0;
  if (!sub_29A4E7A0C(a1 + 8, &__dst, 8uLL))
  {
    return 0;
  }

  v4 = *(**(a1 + 16) + 32);
  v5 = *(a1 + 8) - *(**(a1 + 16) + 24);
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || __dst > v6)
  {
    __p = "usd/crateFile.cpp";
    v12 = "_Read";
    v13 = 1314;
    v14 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>::_Read(vector<T> &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>, T = unsigned long long]";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to read vector of size %llu, remaining file size is %lld of %lld", __dst, v6, v4);
    return 0;
  }

  sub_29A011718(&__p, __dst);
  v7 = sub_29A4E7A0C(a1 + 8, __p, 8 * __dst);
  v8 = v7;
  if (&__p == a2)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29A00CB24(a2, __p, v12, (v12 - __p) >> 3);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_29A53EF40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_29A53EF64(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2057438;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A53EFB0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2057438;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A53EFE8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2057498))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A53F034(uint64_t a1)
{
  v1 = *(*a1 + 6704);
  if (v1)
  {
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
  }

  sub_29A53F0E0();
}

void sub_29A53F0BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A53F1D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (a4)
  {
    sub_29A014BEC(a4);
  }

  sub_29A27D4B0(va);
  _Unwind_Resume(a1);
}

void sub_29A53F460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_29A27D4B0(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_29A53F4A0(uint64_t a1, void **a2)
{
  v13 = 0;
  if (!sub_29A4E5308((a1 + 8), &v13, 8uLL))
  {
    return 0;
  }

  v4 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  v5 = *(a1 + 24);
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || v13 > v6)
  {
    sub_29B2ABECC();
    return 0;
  }

  sub_29A011718(&__p, v13);
  v7 = sub_29A4E5308((a1 + 8), __p, 8 * v13);
  v8 = v7;
  if (&__p == a2)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29A00CB24(a2, __p, v12, (v12 - __p) >> 3);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_29A53F598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_29A53F5BC(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20574B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A53F608(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20574B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A53F640(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2057518))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A53F68C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(*a1 + 6536);
  v5 = *(a2 + 8);
  if ((v5 & 4) != 0)
  {
    (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
  }

  sub_29A53F6F8(v3, v2, v4 + 264);
}

void sub_29A53F6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a2;
  v7 = a3;
  v4 = 0;
  v5 = 0;
  v3 = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
}

void *sub_29A53F7CC(void *a1, uint64_t a2)
{
  v4 = sub_29A23E4FC(v15, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_22;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v6)
    {
      v8 = v4 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (result = *v9) == 0)
  {
LABEL_22:
    sub_29A53FA5C(a1, v5, v15);
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
      goto LABEL_22;
    }

LABEL_21:
    result = *result;
    if (!result)
    {
      goto LABEL_22;
    }
  }

  v13 = result[2];
  v12 = result[3];
  if (v12 - v13 != *(a2 + 8) - *a2)
  {
    goto LABEL_21;
  }

  if (v13 != v12)
  {
    for (i = *a2; *v13 == *i; i += 8)
    {
      v13 += 8;
      if (v13 == v12)
      {
        return result;
      }
    }

    goto LABEL_21;
  }

  return result;
}

void sub_29A53FA38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_29A53FB08(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A53FA5C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x30uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  *v6 = 0;
  v6[1] = a2;
  v6[3] = 0;
  v6[4] = 0;
  v6[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
}

void sub_29A53FAEC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A53FB08(v3, v2);
  _Unwind_Resume(a1);
}

void sub_29A53FB08(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 2;
    sub_29A1E234C(&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

__n128 sub_29A53FB60(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2057538;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A53FBAC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2057538;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_29A53FBDC(uint64_t a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v3 = *a2;
  v4 = *a3;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = v6[834];
  v8 = v6[835];
  v9 = v6[833];
  *&v10 = v6;
  *(&v10 + 1) = v7;
  v11 = 0;
  v12 = v8;
  v13 = v9;
  sub_29A53FC74(v5, &v10, v3, v4);
}

uint64_t sub_29A53FC28(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2057598))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A53FC74(uint64_t a1, __int128 *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  memset(v9, 0, 24);
  v5 = a2[1];
  v6 = *a2;
  v7 = v5;
  v8 = *(a2 + 4);
  if ((a3 & 0x4000000000000000) == 0)
  {
    *&v7 = a3 & 0xFFFFFFFFFFFFLL;
    sub_29A5358EC(&v6, v9);
  }

  sub_29A326428(a4, v9);
  *&v6 = v9;
  sub_29A1E234C(&v6);
}

void sub_29A53FCE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v15 - 24) = &a15;
  sub_29A1E234C((v15 - 24));
  _Unwind_Resume(a1);
}

__n128 sub_29A53FD0C(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20575B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A53FD58(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20575B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A53FD90(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2057618))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A53FDDC(void *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = a1[1];
  v6 = *a1 + 6656;
  v7 = *(*a1 + 6744);
  v8 = *(*v6 + 24);
  *&v9 = *a1;
  *(&v9 + 1) = v8;
  v10 = v6;
  v11 = v7;
  v12 = sub_29A4CCA14();
  sub_29A53FE5C(v5, &v9, v3, v4);
}

void sub_29A53FE5C(uint64_t a1, __int128 *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  memset(v9, 0, 24);
  v5 = a2[1];
  v6 = *a2;
  v7 = v5;
  v8 = *(a2 + 4);
  if ((a3 & 0x4000000000000000) == 0)
  {
    *(&v6 + 1) = *(*v7 + 24) + (a3 & 0xFFFFFFFFFFFFLL);
    sub_29A53601C(&v6, v9);
  }

  sub_29A326428(a4, v9);
  *&v6 = v9;
  sub_29A1E234C(&v6);
}

void sub_29A53FEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v15 - 24) = &a15;
  sub_29A1E234C((v15 - 24));
  _Unwind_Resume(a1);
}

__n128 sub_29A53FF04(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2057638;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A53FF50(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2057638;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A53FF88(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2057698))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A53FFD4(uint64_t *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v4 = *a2;
  v5 = *a3;
  v7 = *a1;
  v6 = a1[1];
  v8 = *(v7 + 6696);
  v9 = *(v7 + 6704);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v11 = v9;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v11 = 0;
  }

  v12 = 0;
  sub_29A540080(v6, &v10, v4, v5);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A54005C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A540080(uint64_t a1, __int128 *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  memset(v9, 0, sizeof(v9));
  v6 = *a2;
  v5 = *(a2 + 2);
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 3);
  if ((a3 & 0x4000000000000000) == 0)
  {
    v8 = a3 & 0xFFFFFFFFFFFFLL;
    sub_29A5367AC(&v6, v9);
    v5 = v7;
  }

  if (v5)
  {
    sub_29A014BEC(v5);
  }

  sub_29A326428(a4, v9);
  v10 = v9;
  sub_29A1E234C(&v10);
}

void sub_29A540118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, char a13)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  *(v13 - 24) = &a13;
  sub_29A1E234C((v13 - 24));
  _Unwind_Resume(a1);
}

__n128 sub_29A540150(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20576B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A54019C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20576B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A5401D4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2057718))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A540220(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(*a1 + 6536);
  v5 = *(a2 + 8);
  if ((v5 & 4) != 0)
  {
    (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
  }

  sub_29A54028C(v3, v2, v4 + 264);
}

void sub_29A54028C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a2;
  v7 = a3;
  v4 = 0;
  v5 = 0;
  v3 = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void *sub_29A540360(void *a1, void *a2)
{
  v4 = sub_29A2424CC(v15, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_22;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v6)
    {
      v8 = v4 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (result = *v9) == 0)
  {
LABEL_22:
    sub_29A5405F4(a1, v5, v15);
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
      goto LABEL_22;
    }

LABEL_21:
    result = *result;
    if (!result)
    {
      goto LABEL_22;
    }
  }

  v13 = result[2];
  v12 = result[3];
  if (v12 - v13 != a2[1] - *a2)
  {
    goto LABEL_21;
  }

  if (v13 != v12)
  {
    for (i = *a2; (*i ^ *v13) <= 7; ++i)
    {
      v13 += 8;
      if (v13 == v12)
      {
        return result;
      }
    }

    goto LABEL_21;
  }

  return result;
}

void sub_29A5405D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_29A5406A0(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A5405F4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x30uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  *v6 = 0;
  v6[1] = a2;
  v6[3] = 0;
  v6[4] = 0;
  v6[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void sub_29A540684(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A5406A0(v3, v2);
  _Unwind_Resume(a1);
}

void sub_29A5406A0(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 2;
    sub_29A124AB0(&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

__n128 sub_29A5406F8(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2057738;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A540744(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2057738;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_29A540774(uint64_t a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v3 = *a2;
  v4 = *a3;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = v6[834];
  v8 = v6[835];
  v9 = v6[833];
  *&v10 = v6;
  *(&v10 + 1) = v7;
  v11 = 0;
  v12 = v8;
  v13 = v9;
  sub_29A54080C(v5, &v10, v3, v4);
}

uint64_t sub_29A5407C0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2057798))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A54080C(uint64_t a1, __int128 *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  memset(v9, 0, 24);
  v5 = a2[1];
  v6 = *a2;
  v7 = v5;
  v8 = *(a2 + 4);
  if ((a3 & 0x4000000000000000) == 0)
  {
    *&v7 = a3 & 0xFFFFFFFFFFFFLL;
    sub_29A532450(&v6, v9);
  }

  sub_29A32E010(a4, v9);
  *&v6 = v9;
  sub_29A124AB0(&v6);
}

void sub_29A540880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v15 - 24) = &a15;
  sub_29A124AB0((v15 - 24));
  _Unwind_Resume(a1);
}

__n128 sub_29A5408A4(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20577B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A5408F0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20577B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A540928(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2057818))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A540974(void *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = a1[1];
  v6 = *a1 + 6656;
  v7 = *(*a1 + 6744);
  v8 = *(*v6 + 24);
  *&v9 = *a1;
  *(&v9 + 1) = v8;
  v10 = v6;
  v11 = v7;
  v12 = sub_29A4CCA14();
  sub_29A5409F4(v5, &v9, v3, v4);
}

void sub_29A5409F4(uint64_t a1, __int128 *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  memset(v9, 0, 24);
  v5 = a2[1];
  v6 = *a2;
  v7 = v5;
  v8 = *(a2 + 4);
  if ((a3 & 0x4000000000000000) == 0)
  {
    *(&v6 + 1) = *(*v7 + 24) + (a3 & 0xFFFFFFFFFFFFLL);
    sub_29A532A84(&v6, v9);
  }

  sub_29A32E010(a4, v9);
  *&v6 = v9;
  sub_29A124AB0(&v6);
}

void sub_29A540A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v15 - 24) = &a15;
  sub_29A124AB0((v15 - 24));
  _Unwind_Resume(a1);
}

__n128 sub_29A540A9C(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2057838;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A540AE8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2057838;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A540B20(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2057898))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A540B6C(uint64_t *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v4 = *a2;
  v5 = *a3;
  v7 = *a1;
  v6 = a1[1];
  v8 = *(v7 + 6696);
  v9 = *(v7 + 6704);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v11 = v9;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v11 = 0;
  }

  v12 = 0;
  sub_29A540C18(v6, &v10, v4, v5);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A540BF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A540C18(uint64_t a1, __int128 *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  memset(v9, 0, sizeof(v9));
  v6 = *a2;
  v5 = *(a2 + 2);
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 3);
  if ((a3 & 0x4000000000000000) == 0)
  {
    v8 = a3 & 0xFFFFFFFFFFFFLL;
    sub_29A533118(&v6, v9);
    v5 = v7;
  }

  if (v5)
  {
    sub_29A014BEC(v5);
  }

  sub_29A32E010(a4, v9);
  v10 = v9;
  sub_29A124AB0(&v10);
}

void sub_29A540CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, char a13)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  *(v13 - 24) = &a13;
  sub_29A124AB0((v13 - 24));
  _Unwind_Resume(a1);
}

__n128 sub_29A540CE8(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20578B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A540D34(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20578B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A540D64(uint64_t a1, unsigned int *a2)
{
  v2 = *(a2 + 1);
  if ((v2 & 4) != 0)
  {
    a2 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
  }

  return *a2 | 0x402A000000000000;
}

uint64_t sub_29A540DA4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2057918))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_29A540DF8(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2057938;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A540E44(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2057938;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

int *sub_29A540E74(uint64_t a1, void *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v3 = *a3;
  v5 = *a2;
  return sub_29A540EF0(v3, &v5);
}

uint64_t sub_29A540EA4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2057998))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

int *sub_29A540EF0(pxrInternal__aapl__pxrReserved__::VtValue *a1, int *a2)
{
  if ((sub_29A321798(a1) & 1) == 0)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      v5 = (*(a1 + 1) & 3) == 3;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 32))(a1);
    }

    *(a1 + 1) = &off_2A2049888 + 3;
    *a1 = 0;
  }

  result = sub_29A540F6C(a1);
  v7 = *result;
  *result = *a2;
  *a2 = v7;
  return result;
}

uint64_t sub_29A540F6C(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    sub_29B2ABF40();
  }

  return a1;
}

__n128 sub_29A540FAC(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20579B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A540FF8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20579B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

int *sub_29A541028(uint64_t a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v3 = *a2;
  v4 = *a3;
  sub_29A4CCA14();
  v6 = v3;
  return sub_29A540EF0(v4, &v6);
}

uint64_t sub_29A541068(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2057A18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_29A5410BC(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2057A38;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A541108(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2057A38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A541140(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2057A98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A54118C(uint64_t *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v4 = *a2;
  v5 = *a3;
  v7 = *a1;
  v6 = a1[1];
  v8 = *(v7 + 6696);
  v9 = *(v7 + 6704);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v10 = v7;
    v11 = v8;
    v12 = v9;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v10 = v7;
    v11 = v8;
    v12 = 0;
  }

  v13 = 0;
  sub_29A541238(v6, &v10, v4, v5);
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A541214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  _Unwind_Resume(exception_object);
}

int *sub_29A541238(uint64_t a1, uint64_t a2, int a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  v6 = *(a2 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v6);
  }

  v8 = a3;
  return sub_29A540EF0(a4, &v8);
}

__n128 sub_29A541294(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2057AB8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A5412E0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2057AB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A541310(uint64_t a1, unsigned int *a2)
{
  v2 = *(a2 + 1);
  if ((v2 & 4) != 0)
  {
    a2 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
  }

  return *a2 | 0x402B000000000000;
}

uint64_t sub_29A541350(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2057B18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_29A5413A4(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2057B38;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A5413F0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2057B38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

int *sub_29A541420(uint64_t a1, void *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v3 = *a3;
  v5 = *a2;
  return sub_29A54149C(v3, &v5);
}

uint64_t sub_29A541450(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2057B98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

int *sub_29A54149C(pxrInternal__aapl__pxrReserved__::VtValue *a1, int *a2)
{
  if ((sub_29A3B7E90(a1) & 1) == 0)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      v5 = (*(a1 + 1) & 3) == 3;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 32))(a1);
    }

    *(a1 + 1) = &off_2A2048CA8 + 3;
    *a1 = 0;
  }

  result = sub_29A541518(a1);
  v7 = *result;
  *result = *a2;
  *a2 = v7;
  return result;
}

uint64_t sub_29A541518(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    sub_29B2ABFAC();
  }

  return a1;
}

__n128 sub_29A541558(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2057BB8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A5415A4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2057BB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

int *sub_29A5415D4(uint64_t a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v3 = *a2;
  v4 = *a3;
  sub_29A4CCA14();
  v6 = v3;
  return sub_29A54149C(v4, &v6);
}

uint64_t sub_29A541614(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2057C18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_29A541668(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2057C38;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A5416B4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2057C38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A5416EC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2057C98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A541738(uint64_t *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v4 = *a2;
  v5 = *a3;
  v7 = *a1;
  v6 = a1[1];
  v8 = *(v7 + 6696);
  v9 = *(v7 + 6704);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v10 = v7;
    v11 = v8;
    v12 = v9;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v10 = v7;
    v11 = v8;
    v12 = 0;
  }

  v13 = 0;
  sub_29A5417E4(v6, &v10, v4, v5);
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A5417C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  _Unwind_Resume(exception_object);
}

int *sub_29A5417E4(uint64_t a1, uint64_t a2, int a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  v6 = *(a2 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v6);
  }

  v8 = a3;
  return sub_29A54149C(a4, &v8);
}

__n128 sub_29A541840(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2057CB8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A54188C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2057CB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A5418BC(uint64_t a1, unsigned int *a2)
{
  v2 = *(a2 + 1);
  if ((v2 & 4) != 0)
  {
    a2 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
  }

  return *a2 | 0x402C000000000000;
}

uint64_t sub_29A5418FC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2057D18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_29A541950(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2057D38;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A54199C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2057D38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

int *sub_29A5419CC(uint64_t a1, int *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v3 = *a2;
  v4 = *a3;
  if (*a2 == 2)
  {
    v3 = 1;
  }

  v6 = v3;
  return sub_29A541A50(v4, &v6);
}

uint64_t sub_29A541A04(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2057D98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

int *sub_29A541A50(pxrInternal__aapl__pxrReserved__::VtValue *a1, int *a2)
{
  if ((sub_29A27CE24(a1) & 1) == 0)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      v5 = (*(a1 + 1) & 3) == 3;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 32))(a1);
    }

    *(a1 + 1) = &off_2A20494F0 + 3;
    *a1 = 0;
  }

  result = sub_29A541ACC(a1);
  v7 = *result;
  *result = *a2;
  *a2 = v7;
  return result;
}

uint64_t sub_29A541ACC(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    sub_29B2AC018();
  }

  return a1;
}

__n128 sub_29A541B0C(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2057DB8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A541B58(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2057DB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

int *sub_29A541B88(uint64_t a1, int *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v3 = *a2;
  v4 = *a3;
  sub_29A4CCA14();
  if (v3 == 2)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3;
  }

  v7 = v5;
  return sub_29A541A50(v4, &v7);
}

uint64_t sub_29A541BD0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2057E18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_29A541C24(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2057E38;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A541C70(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2057E38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A541CA8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2057E98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A541CF4(uint64_t *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v4 = *a2;
  v5 = *a3;
  v7 = *a1;
  v6 = a1[1];
  v8 = *(v7 + 6696);
  v9 = *(v7 + 6704);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v10 = v7;
    v11 = v8;
    v12 = v9;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v10 = v7;
    v11 = v8;
    v12 = 0;
  }

  v13 = 0;
  sub_29A541DA0(v6, &v10, v4, v5);
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A541D7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  _Unwind_Resume(exception_object);
}

int *sub_29A541DA0(uint64_t a1, uint64_t a2, int a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (a3 == 2)
    {
      v6 = 1;
    }

    else
    {
      v6 = a3;
    }

    sub_29A014BEC(v5);
  }

  else if (a3 == 2)
  {
    v6 = 1;
  }

  else
  {
    v6 = a3;
  }

  v8 = v6;
  return sub_29A541A50(a4, &v8);
}

__n128 sub_29A541E0C(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2057EB8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A541E58(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2057EB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A541E9C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2057F18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A541EE8(uint64_t *a1, pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *a2, pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *a3, uint64_t a4)
{
  v7 = *(a4 + 8);
  if ((v7 & 4) != 0)
  {
    v8 = (*((v7 & 0xFFFFFFFFFFFFFFF8) + 168))(a4);
  }

  else
  {
    v8 = *a4;
  }

  v17[0] = a2;
  v17[1] = a3;
  sub_29A019350(v16, v8);
  sub_29A01752C(v16, v16[1]);
  v9 = *a1;
  if (!*a1)
  {
    v10 = operator new(0x28uLL);
    *v10 = 0u;
    v10[1] = 0u;
    *(v10 + 8) = 1065353216;
    sub_29A4E3128(a1, v10);
    v9 = *a1;
  }

  v15 = 0;
  v11 = sub_29A541FCC(v9, v8, v8, &v15);
  v12 = v11;
  if (v13)
  {
    v11[5] = *(a3 + 2) & 0xFFFFFFFFFFFFLL | 0x2D000000000000;
    sub_29A54243C(v17, v8);
  }

  return v12[5];
}

void *sub_29A541FCC(uint64_t a1, void *a2, const void ***a3, void *a4)
{
  v27 = 0;
  v28 = 0;
  sub_29A24D71C(&v27, *a2, a2 + 1);
  v9 = bswap64(0x9E3779B97F4A7C55 * v27);
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v4 = v9;
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }
    }

    else
    {
      v4 = (v10 - 1) & v9;
    }

    v13 = *(*a1 + 8 * v4);
    if (v13)
    {
      v14 = *v13;
      if (*v13)
      {
        do
        {
          v15 = v14[1];
          if (v15 == v9)
          {
            if (sub_29A5422FC(a1, (v14 + 2), a2))
            {
              return v14;
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

          v14 = *v14;
        }

        while (v14);
      }
    }
  }

  sub_29A542260(a1, v9, a3, a4, &v27);
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
    v14 = v27;
    *v27 = *v23;
    *v23 = v14;
  }

  else
  {
    v24 = v27;
    *v27 = *(a1 + 16);
    *(a1 + 16) = v24;
    *(v22 + 8 * v4) = a1 + 16;
    v14 = v27;
    if (*v27)
    {
      v25 = *(*v27 + 8);
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

      *(*a1 + 8 * v25) = v27;
      v14 = v27;
    }
  }

  ++*(a1 + 24);
  return v14;
}

void sub_29A54223C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11)
{
  if (a10)
  {
    sub_29A5423DC(&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A542260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void ***a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0x30uLL);
  *a5 = v10;
  a5[1] = a1;
  a5[2] = 0;
  *v10 = 0;
  v10[1] = a2;
  result = sub_29A019350(v10 + 2, a3);
  v10[5] = *a4;
  *(a5 + 16) = 1;
  return result;
}

void sub_29A5422E0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A5423DC(v3, v2);
  _Unwind_Resume(a1);
}

BOOL sub_29A5422FC(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a2 + 16) != a3[2])
  {
    return 0;
  }

  v15 = v3;
  v16 = v4;
  v5 = (a2 + 8);
  v6 = *a2;
  if (*a2 == a2 + 8)
  {
    return 1;
  }

  v7 = *a3;
  do
  {
    result = sub_29A1B0B38(&v14, (v6 + 4), (v7 + 4));
    if (!result)
    {
      break;
    }

    v9 = v6[1];
    v10 = v6;
    if (v9)
    {
      do
      {
        v6 = v9;
        v9 = *v9;
      }

      while (v9);
    }

    else
    {
      do
      {
        v6 = v10[2];
        v11 = *v6 == v10;
        v10 = v6;
      }

      while (!v11);
    }

    v12 = v7[1];
    if (v12)
    {
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      do
      {
        v13 = v7[2];
        v11 = *v13 == v7;
        v7 = v13;
      }

      while (!v11);
    }

    v7 = v13;
  }

  while (v6 != v5);
  return result;
}

void sub_29A5423DC(uint64_t a1, void **a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_29A01752C((a2 + 2), a2[3]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t sub_29A54243C(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile **a1, void *a2)
{
  __src = a2[2];
  result = sub_29A4E5264(a1, &__src);
  v7 = *a2;
  v5 = (a2 + 1);
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      LODWORD(__src) = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_AddString(*a1, v6 + 32);
      sub_29A4FBF2C(a1, &__src);
      LODWORD(__src) = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_AddString(*a1, v6 + 56);
      result = sub_29A4FBF2C(a1, &__src);
      v8 = *(v6 + 1);
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
          v9 = *(v6 + 2);
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v6 = v9;
    }

    while (v9 != v5);
  }

  return result;
}

__n128 sub_29A542504(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2057F38;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A542550(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2057F38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_29A542580(uint64_t a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v3 = *a2;
  v4 = *a3;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = v6[834];
  v8 = v6[835];
  v9 = v6[833];
  *&v10 = v6;
  *(&v10 + 1) = v7;
  v11 = 0;
  v12 = v8;
  v13 = v9;
  sub_29A542618(v5, &v10, v3, v4);
}

uint64_t sub_29A5425CC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2057F98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A542618(uint64_t a1, __int128 *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  v10[0] = 0;
  v10[1] = 0;
  v5 = a2[1];
  v6 = *a2;
  v7 = v5;
  v8 = *(a2 + 4);
  v9 = v10;
  if ((a3 & 0x4000000000000000) == 0)
  {
    *&v7 = a3 & 0xFFFFFFFFFFFFLL;
    sub_29A542728(&v6, &v9);
  }

  sub_29A5426A4(a4, &v9);
  sub_29A01752C(&v9, v10[0]);
}

uint64_t *sub_29A5426A4(pxrInternal__aapl__pxrReserved__::VtValue *a1, uint64_t a2)
{
  if ((sub_29A24D414(a1) & 1) == 0)
  {
    v7[0] = 0;
    v7[1] = 0;
    v6 = v7;
    sub_29A5429B4(a1, &v6);
    sub_29A01752C(&v6, v7[0]);
  }

  v4 = sub_29A542A84(a1);
  return sub_29A13F534(v4, a2);
}

BOOL sub_29A542728(uint64_t *a1, uint64_t a2)
{
  __str._cookie = 0;
  if (!sub_29A4EF670((a1 + 1), 0, &__str._cookie))
  {
    return 0;
  }

  v4 = a2 + 8;
  while (1)
  {
    v5 = __str._cookie--;
    v6 = v5 == 0;
    if (!v5)
    {
      break;
    }

    memset(&__str._bf, 0, 24);
    LODWORD(__str._p) = -1;
    EmptyToken = sub_29A4FC36C((a1 + 1), 0, &__str);
    if (!EmptyToken)
    {
      sub_29A01752C(a2, *(a2 + 8));
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = v4;
      if (*(&__str._lbfsize + 7) < 0)
      {
        operator delete(__str._bf._base);
      }

      return 0;
    }

    v8 = *a1;
    v9 = *(*a1 + 144);
    if (LODWORD(__str._p) >= ((*(*a1 + 152) - v9) >> 2))
    {
      pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyString(EmptyToken);
      EmptyString = &qword_2A1742350;
    }

    else
    {
      v10 = *(v9 + 4 * LODWORD(__str._p));
      v12 = v8 + 120;
      v11 = *(v8 + 120);
      if (v10 >= (*(v12 + 8) - v11) >> 3)
      {
        EmptyToken = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyToken(EmptyToken);
        v13 = &qword_2A1742328;
      }

      else
      {
        v13 = (v11 + 8 * v10);
      }

      v14 = *v13 & 0xFFFFFFFFFFFFFFF8;
      if (v14)
      {
        EmptyString = (v14 + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyToken);
      }
    }

    std::string::operator=(&__str._bf, EmptyString);
    memset(&__str, 0, 24);
    LODWORD(__str._read) = -1;
    v16 = sub_29A4FC36C((a1 + 1), 0, &__str._read);
    v17 = v16;
    if (v16)
    {
      v18 = *a1;
      v19 = *(*a1 + 144);
      if (LODWORD(__str._read) >= ((*(*a1 + 152) - v19) >> 2))
      {
        pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyString(v16);
        v25 = &qword_2A1742350;
      }

      else
      {
        v20 = *(v19 + 4 * LODWORD(__str._read));
        v22 = v18 + 120;
        v21 = *(v18 + 120);
        if (v20 >= (*(v22 + 8) - v21) >> 3)
        {
          v16 = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyToken(v16);
          v23 = &qword_2A1742328;
        }

        else
        {
          v23 = (v21 + 8 * v20);
        }

        v24 = *v23 & 0xFFFFFFFFFFFFFFF8;
        if (v24)
        {
          v25 = (v24 + 16);
        }

        else
        {
          v25 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v16);
        }
      }

      std::string::operator=(&__str, v25);
      __str._read = &__str._bf;
      v26 = sub_29A00B038(a2, &__str._bf._base, &unk_29B4D6118, &__str._read);
      std::string::operator=((v26 + 7), &__str);
    }

    else
    {
      sub_29A01752C(a2, *(a2 + 8));
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = v4;
    }

    if (*(&__str._file + 5) < 0)
    {
      operator delete(__str._p);
    }

    if (*(&__str._lbfsize + 7) < 0)
    {
      operator delete(__str._bf._base);
      if ((v17 & 1) == 0)
      {
        return v6;
      }
    }

    else if ((v17 & 1) == 0)
    {
      return v6;
    }
  }

  return v6;
}

void sub_29A542980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A5429B4(void *a1, const void ***a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A2049438;
  sub_29A24D9BC(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A542A48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void ***sub_29A542A84(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    sub_29B2AC084();
  }

  return sub_29A24D8EC(a1);
}

__n128 sub_29A542AC8(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2057FB8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A542B14(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2057FB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A542B4C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2058018))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A542B98(void *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = a1[1];
  v6 = *a1 + 6656;
  v7 = *(*a1 + 6744);
  v8 = *(*v6 + 24);
  *&v9 = *a1;
  *(&v9 + 1) = v8;
  v10 = v6;
  v11 = v7;
  v12 = sub_29A4CCA14();
  sub_29A542C18(v5, &v9, v3, v4);
}

void sub_29A542C18(uint64_t a1, __int128 *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  v10[0] = 0;
  v10[1] = 0;
  v5 = a2[1];
  v6 = *a2;
  v7 = v5;
  v8 = *(a2 + 4);
  v9 = v10;
  if ((a3 & 0x4000000000000000) == 0)
  {
    *(&v6 + 1) = *(*v7 + 24) + (a3 & 0xFFFFFFFFFFFFLL);
    sub_29A542CB4(&v6, &v9);
  }

  sub_29A5426A4(a4, &v9);
  sub_29A01752C(&v9, v10[0]);
}

BOOL sub_29A542CB4(uint64_t *a1, uint64_t a2)
{
  __dst = 0;
  if (!sub_29A4E7A0C((a1 + 1), &__dst, 8uLL))
  {
    return 0;
  }

  v4 = a2 + 8;
  while (1)
  {
    v5 = __dst--;
    v6 = v5 == 0;
    if (!v5)
    {
      break;
    }

    memset(&v29, 0, sizeof(v29));
    LODWORD(__str.__r_.__value_.__l.__data_) = -1;
    EmptyToken = sub_29A4E7A0C((a1 + 1), &__str, 4uLL);
    if (!EmptyToken)
    {
      sub_29A01752C(a2, *(a2 + 8));
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = v4;
      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      return 0;
    }

    v8 = *a1;
    v9 = *(*a1 + 144);
    if (LODWORD(__str.__r_.__value_.__l.__data_) >= ((*(*a1 + 152) - v9) >> 2))
    {
      pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyString(EmptyToken);
      EmptyString = &qword_2A1742350;
    }

    else
    {
      v10 = *(v9 + 4 * LODWORD(__str.__r_.__value_.__l.__data_));
      v12 = v8 + 120;
      v11 = *(v8 + 120);
      if (v10 >= (*(v12 + 8) - v11) >> 3)
      {
        EmptyToken = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyToken(EmptyToken);
        v13 = &qword_2A1742328;
      }

      else
      {
        v13 = (v11 + 8 * v10);
      }

      v14 = *v13 & 0xFFFFFFFFFFFFFFF8;
      if (v14)
      {
        EmptyString = (v14 + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyToken);
      }
    }

    std::string::operator=(&v29, EmptyString);
    memset(&__str, 0, sizeof(__str));
    LODWORD(v31) = -1;
    v16 = sub_29A4E7A0C((a1 + 1), &v31, 4uLL);
    v17 = v16;
    if (v16)
    {
      v18 = *a1;
      v19 = *(*a1 + 144);
      if (v31 >= ((*(*a1 + 152) - v19) >> 2))
      {
        pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyString(v16);
        v25 = &qword_2A1742350;
      }

      else
      {
        v20 = *(v19 + 4 * v31);
        v22 = v18 + 120;
        v21 = *(v18 + 120);
        if (v20 >= (*(v22 + 8) - v21) >> 3)
        {
          v16 = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyToken(v16);
          v23 = &qword_2A1742328;
        }

        else
        {
          v23 = (v21 + 8 * v20);
        }

        v24 = *v23 & 0xFFFFFFFFFFFFFFF8;
        if (v24)
        {
          v25 = (v24 + 16);
        }

        else
        {
          v25 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v16);
        }
      }

      std::string::operator=(&__str, v25);
      v31 = &v29;
      v26 = sub_29A00B038(a2, &v29.__r_.__value_.__l.__data_, &unk_29B4D6118, &v31);
      std::string::operator=((v26 + 7), &__str);
    }

    else
    {
      sub_29A01752C(a2, *(a2 + 8));
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = v4;
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
      if ((v17 & 1) == 0)
      {
        return v6;
      }
    }

    else if ((v17 & 1) == 0)
    {
      return v6;
    }
  }

  return v6;
}

void sub_29A542F0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_29A542F48(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2058038;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A542F94(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2058038;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A542FCC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2058098))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A543018(uint64_t *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v4 = *a2;
  v5 = *a3;
  v7 = *a1;
  v6 = a1[1];
  v8 = *(v7 + 6696);
  v9 = *(v7 + 6704);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v11 = v9;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v11 = 0;
  }

  v12 = 0;
  sub_29A5430C4(v6, &v10, v4, v5);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A5430A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A5430C4(uint64_t a1, __int128 *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  v10[0] = 0;
  v10[1] = 0;
  v9 = v10;
  v6 = *a2;
  v5 = *(a2 + 2);
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 3);
  if ((a3 & 0x4000000000000000) == 0)
  {
    v8 = a3 & 0xFFFFFFFFFFFFLL;
    sub_29A54318C(&v6, &v9);
    v5 = v7;
  }

  if (v5)
  {
    sub_29A014BEC(v5);
  }

  sub_29A5426A4(a4, &v9);
  sub_29A01752C(&v9, v10[0]);
}

void sub_29A543160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, char a14, void *a15)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  sub_29A01752C(&a14, a15);
  _Unwind_Resume(a1);
}

BOOL sub_29A54318C(void *a1, uint64_t a2)
{
  v30 = 0;
  if (!sub_29A4E5308(a1 + 1, &v30, 8uLL))
  {
    return 0;
  }

  v4 = a2 + 8;
  while (1)
  {
    v5 = v30--;
    v6 = v5 == 0;
    if (!v5)
    {
      break;
    }

    memset(&v29, 0, sizeof(v29));
    LODWORD(__str.__r_.__value_.__l.__data_) = -1;
    EmptyToken = sub_29A4E5308(a1 + 1, &__str, 4uLL);
    if (!EmptyToken)
    {
      sub_29A01752C(a2, *(a2 + 8));
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = v4;
      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      return 0;
    }

    v8 = *a1;
    v9 = *(*a1 + 144);
    if (LODWORD(__str.__r_.__value_.__l.__data_) >= ((*(*a1 + 152) - v9) >> 2))
    {
      pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyString(EmptyToken);
      EmptyString = &qword_2A1742350;
    }

    else
    {
      v10 = *(v9 + 4 * LODWORD(__str.__r_.__value_.__l.__data_));
      v12 = v8 + 120;
      v11 = *(v8 + 120);
      if (v10 >= (*(v12 + 8) - v11) >> 3)
      {
        EmptyToken = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyToken(EmptyToken);
        v13 = &qword_2A1742328;
      }

      else
      {
        v13 = (v11 + 8 * v10);
      }

      v14 = *v13 & 0xFFFFFFFFFFFFFFF8;
      if (v14)
      {
        EmptyString = (v14 + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyToken);
      }
    }

    std::string::operator=(&v29, EmptyString);
    memset(&__str, 0, sizeof(__str));
    LODWORD(v31) = -1;
    v16 = sub_29A4E5308(a1 + 1, &v31, 4uLL);
    v17 = v16;
    if (v16)
    {
      v18 = *a1;
      v19 = *(*a1 + 144);
      if (v31 >= ((*(*a1 + 152) - v19) >> 2))
      {
        pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyString(v16);
        v25 = &qword_2A1742350;
      }

      else
      {
        v20 = *(v19 + 4 * v31);
        v22 = v18 + 120;
        v21 = *(v18 + 120);
        if (v20 >= (*(v22 + 8) - v21) >> 3)
        {
          v16 = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyToken(v16);
          v23 = &qword_2A1742328;
        }

        else
        {
          v23 = (v21 + 8 * v20);
        }

        v24 = *v23 & 0xFFFFFFFFFFFFFFF8;
        if (v24)
        {
          v25 = (v24 + 16);
        }

        else
        {
          v25 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v16);
        }
      }

      std::string::operator=(&__str, v25);
      v31 = &v29;
      v26 = sub_29A00B038(a2, &v29.__r_.__value_.__l.__data_, &unk_29B4D6118, &v31);
      std::string::operator=((v26 + 7), &__str);
    }

    else
    {
      sub_29A01752C(a2, *(a2 + 8));
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = v4;
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
      if ((v17 & 1) == 0)
      {
        return v6;
      }
    }

    else if ((v17 & 1) == 0)
    {
      return v6;
    }
  }

  return v6;
}

void sub_29A5433E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_29A543420(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20580B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A54346C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20580B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A5434A4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2058118))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A5434F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(*a1 + 6536);
  v5 = a2[1];
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
  }

  else
  {
    v6 = *a2;
  }

  return sub_29A54355C(v3, v2, v4 + 264, v6);
}

uint64_t sub_29A54355C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[0] = a2;
  v16[1] = a3;
  v7 = *(a4 + 8);
  v14 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 6, 1u, memory_order_relaxed);
  }

  memset(v15, 0, 24);
  sub_29A1D128C(v15, *(a4 + 16), *(a4 + 24), (*(a4 + 24) - *(a4 + 16)) >> 4);
  v15[3] = *(a4 + 40);
  v17 = v15;
  sub_29A1D0D38(&v17);
  sub_29A22B614(&v14);
  v8 = *a1;
  if (!*a1)
  {
    v9 = operator new(0x28uLL);
    *v9 = 0u;
    v9[1] = 0u;
    *(v9 + 8) = 1065353216;
    sub_29A4E3358(a1, v9);
    v8 = *a1;
  }

  v17 = 0;
  v10 = sub_29A54375C(v8, a4, a4, &v17);
  v11 = v10;
  if (v12)
  {
    v10[8] = *(a3 + 16) & 0xFFFFFFFFFFFFLL | 0x2E000000000000;
    sub_29A543678(v16, a4);
  }

  return v11[8];
}

void sub_29A543678(void *a1, uint64_t a2)
{
  __p = a1;
  v6 = __src;
  v7 = a2;
  sub_29A543B7C(a1, &__p);
  sub_29A4E5264(a1, __src);
  sub_29A5441A8(&__p, (*(a2 + 24) - *(a2 + 16)) >> 4);
  v4[0] = a1;
  v4[1] = &__p;
  v4[2] = a2;
  sub_29A543C84(a1, v4);
  v4[0] = (v6 - __p) >> 3;
  sub_29A4E5264(a1, v4);
  sub_29A502120(a1, __p, (v6 - __p) >> 3);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }
}

void sub_29A543738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A54375C(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v27 = 0;
  v28 = 0;
  sub_29A4C8870(&v27, a2, a2 + 1, (a2 + 2), a2 + 5);
  v9 = bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v27));
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v4 = v9;
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }
    }

    else
    {
      v4 = v9 & (v10 - 1);
    }

    v13 = *(*a1 + 8 * v4);
    if (v13)
    {
      v14 = *v13;
      if (*v13)
      {
        do
        {
          v15 = v14[1];
          if (v15 == v9)
          {
            if (sub_29A4C89FC((v14 + 2), a2))
            {
              return v14;
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

          v14 = *v14;
        }

        while (v14);
      }
    }
  }

  sub_29A5439F8(a1, v9, a3, a4, &v27);
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
    v14 = v27;
    *v27 = *v23;
    *v23 = v14;
  }

  else
  {
    v24 = v27;
    *v27 = *(a1 + 16);
    *(a1 + 16) = v24;
    *(v22 + 8 * v4) = a1 + 16;
    v14 = v27;
    if (*v27)
    {
      v25 = *(*v27 + 8);
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

      *(*a1 + 8 * v25) = v27;
      v14 = v27;
    }
  }

  ++*(a1 + 24);
  return v14;
}

void sub_29A5439D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11)
{
  if (__p)
  {
    sub_29A543B24(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A5439F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0x48uLL);
  *a5 = v10;
  a5[1] = a1;
  a5[2] = 0;
  *v10 = 0;
  v10[1] = a2;
  result = sub_29A543A90(v10 + 2, a3, a4);
  *(a5 + 16) = 1;
  return result;
}

void sub_29A543A74(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A543B24(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_29A543A90(void *a1, uint64_t a2, void *a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 24), 1u, memory_order_relaxed);
  }

  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  sub_29A1D128C(a1 + 2, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 4);
  a1[5] = *(a2 + 40);
  a1[6] = *a3;
  return a1;
}

void sub_29A543B24(uint64_t a1, char *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = (__p + 32);
    sub_29A1D0D38(&v3);
    sub_29A22B614(__p + 3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

uint64_t sub_29A543B7C(uint64_t a1, uint64_t **a2)
{
  v4 = *(*(a1 + 8) + 16);
  __src = 0;
  sub_29A4E5264(a1, &__src);
  *a2[1] = sub_29A543D98(*(**a2 + 6440), **a2, *(**a2 + 6536) + 264, a2[2][1]);
  v5 = *(a1 + 8);
  v6 = v5 + 2;
  v7 = v5[2];
  v8 = v5[4];
  if (v8 > v4 || v5[6] + v8 < v4)
  {
    sub_29A4DE434(*(a1 + 8));
    v5[2] = v4;
    v6 = v5 + 4;
  }

  *v6 = v4;
  __src = v7 - v4;
  result = sub_29A4E5264(a1, &__src);
  v10 = *(a1 + 8);
  v12 = v10 + 4;
  v11 = v10[4];
  if (v11 <= v7 && v10[6] + v11 >= v7)
  {
    v12 = v10 + 2;
  }

  else
  {
    result = sub_29A4DE434(v10);
    v10[2] = v7;
  }

  *v12 = v7;
  return result;
}

uint64_t sub_29A543C84(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 8) + 16);
  __src = 0;
  sub_29A4E5264(a1, &__src);
  v5 = *(a2 + 16);
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  if (v6 != v7)
  {
    v8 = *a2;
    v9 = **(a2 + 8);
    do
    {
      *v9++ = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_PackValue(*v8, v6);
      v6 = (v6 + 16);
    }

    while (v6 != v7);
  }

  v10 = *(a1 + 8);
  v11 = v10 + 2;
  v12 = v10[2];
  v13 = v10[4];
  if (v13 > v4 || v10[6] + v13 < v4)
  {
    sub_29A4DE434(*(a1 + 8));
    v10[2] = v4;
    v11 = v10 + 4;
  }

  *v11 = v4;
  __src = v12 - v4;
  result = sub_29A4E5264(a1, &__src);
  v15 = *(a1 + 8);
  v17 = v15 + 4;
  v16 = v15[4];
  if (v16 <= v12 && v15[6] + v16 >= v12)
  {
    v17 = v15 + 2;
  }

  else
  {
    result = sub_29A4DE434(v15);
    v15[2] = v12;
  }

  *v17 = v12;
  return result;
}

uint64_t sub_29A543D98(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[0] = a2;
  v17[1] = a3;
  v15 = 0;
  v16 = 0;
  __p = 0;
  sub_29A00C8EC(&__p, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  v7 = *a1;
  if (!*a1)
  {
    v8 = operator new(0x28uLL);
    *v8 = 0u;
    v8[1] = 0u;
    *(v8 + 8) = 1065353216;
    sub_29A4E3828(a1, v8);
    v7 = *a1;
  }

  v13 = 0;
  v9 = sub_29A543E6C(v7, a4, a4, &v13);
  v10 = v9;
  if (v11)
  {
    v9[5] = *(a3 + 16) & 0xFFFFFFFFFFFFLL | 0x30000000000000;
    sub_29A53B074(v17, a4);
  }

  return v10[5];
}

void *sub_29A543E6C(uint64_t a1, double **a2, uint64_t a3, void *a4)
{
  v9 = sub_29A4C898C(v29, a2);
  v10 = v9;
  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    if (v12.u32[0] > 1uLL)
    {
      v4 = v9;
      if (v9 >= v11)
      {
        v4 = v9 % v11;
      }
    }

    else
    {
      v4 = (v11 - 1) & v9;
    }

    v13 = *(*a1 + 8 * v4);
    if (v13)
    {
      result = *v13;
      if (*v13)
      {
        do
        {
          v15 = result[1];
          if (v15 == v10)
          {
            v17 = result[2];
            v16 = result[3];
            if (v16 - v17 == a2[1] - *a2)
            {
              if (v17 == v16)
              {
                return result;
              }

              for (i = *a2; *v17 == *i; ++i)
              {
                if (++v17 == v16)
                {
                  return result;
                }
              }
            }
          }

          else
          {
            if (v12.u32[0] > 1uLL)
            {
              if (v15 >= v11)
              {
                v15 %= v11;
              }
            }

            else
            {
              v15 &= v11 - 1;
            }

            if (v15 != v4)
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

  sub_29A5440FC(a1, v10, a3, a4, v29);
  v19 = (*(a1 + 24) + 1);
  v20 = *(a1 + 32);
  if (!v11 || (v20 * v11) < v19)
  {
    v21 = 1;
    if (v11 >= 3)
    {
      v21 = (v11 & (v11 - 1)) != 0;
    }

    v22 = v21 | (2 * v11);
    v23 = vcvtps_u32_f32(v19 / v20);
    if (v22 <= v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v22;
    }

    sub_29A019AA0(a1, v24);
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

  v25 = *a1;
  v26 = *(*a1 + 8 * v4);
  if (v26)
  {
    result = v29[0];
    *v29[0] = *v26;
    *v26 = result;
  }

  else
  {
    v27 = v29[0];
    *v29[0] = *(a1 + 16);
    *(a1 + 16) = v27;
    *(v25 + 8 * v4) = a1 + 16;
    result = v29[0];
    if (*v29[0])
    {
      v28 = *(*v29[0] + 8);
      if ((v11 & (v11 - 1)) != 0)
      {
        if (v28 >= v11)
        {
          v28 %= v11;
        }
      }

      else
      {
        v28 &= v11 - 1;
      }

      *(*a1 + 8 * v28) = v29[0];
      result = v29[0];
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29A5440D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    sub_29A4DDB04(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A5440FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0x30uLL);
  *a5 = v10;
  a5[1] = a1;
  a5[2] = 0;
  *v10 = 0;
  v10[1] = a2;
  v10[3] = 0;
  v10[4] = 0;
  v10[2] = 0;
  result = sub_29A00C8EC(v10 + 2, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 3);
  v10[5] = *a4;
  *(a5 + 16) = 1;
  return result;
}

void sub_29A54418C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A4DDB04(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_29A5441A8(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A00C968(a1, a2);
    v4 = a1[1];
    bzero(v4, 8 * a2);
    a1[1] = &v4[8 * a2];
  }

  return a1;
}

void sub_29A544204(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_29A544228(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2058138;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A544274(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2058138;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_29A5442A4(uint64_t a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v3 = *a2;
  v4 = *a3;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = v6[834];
  v8 = v6[835];
  v9 = v6[833];
  *&v10 = v6;
  *(&v10 + 1) = v7;
  v11 = 0;
  v12 = v8;
  v13 = v9;
  sub_29A54433C(v5, &v10, v3, v4);
}

uint64_t sub_29A5442F0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2058198))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A54433C(uint64_t a1, __int128 *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  v12 = 0;
  v7 = operator new(0x20uLL);
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  *v7 = 0;
  *(v7 + 6) = 0;
  v13 = v7;
  atomic_fetch_add_explicit(v7 + 6, 1u, memory_order_relaxed);
  memset(v14, 0, sizeof(v14));
  v8 = a2[1];
  v9 = *a2;
  v10 = v8;
  v11 = *(a2 + 4);
  if ((a3 & 0x4000000000000000) == 0)
  {
    *&v10 = a3 & 0xFFFFFFFFFFFFLL;
    sub_29A544408(&v9, &v12);
  }

  sub_29A4C8498(a4, &v12);
  *&v9 = v14;
  sub_29A1D0D38(&v9);
  sub_29A22B614(&v13);
}

void sub_29A5443F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A4C8344(va);
  _Unwind_Resume(a1);
}

BOOL sub_29A544408(uint64_t *a1, uint64_t a2)
{
  v4 = operator new(0x20uLL);
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *v4 = 0;
  v22 = v4;
  *(v4 + 6) = 0;
  atomic_fetch_add_explicit(v4 + 6, 1u, memory_order_relaxed);
  v24 = 0u;
  v23 = 0u;
  v5 = a1[2];
  v21 = v5 & 0xFFFFFFFFFFFFLL | 0x2E000000000000;
  v18 = 0;
  if (sub_29A4EF670((a1 + 1), 0, &v18))
  {
    a1[2] = v18 + v5;
  }

  if (sub_29A4EF670((a1 + 1), 0, &v20))
  {
    v6 = (*a1 + 208);
    v19 = 0;
    v18 = v6;
    tbb::spin_rw_mutex_v3::internal_acquire_reader(v6);
    v7 = sub_29A11802C((*a1 + 168), &v20);
    if (v7)
    {
      sub_29A544928(&v22, v7 + 3);
    }

    else
    {
      if ((v19 & 1) == 0)
      {
        v19 = 1;
        tbb::spin_rw_mutex_v3::internal_upgrade(v18);
      }

      v9 = sub_29A544980(*a1 + 168, &v20, &v20);
      if (v10)
      {
        v11 = operator new(0x20uLL);
        *v11 = 0;
        *(v11 + 1) = 0;
        *(v11 + 6) = 0;
        *(v11 + 2) = 0;
        _48[0] = v11;
        atomic_fetch_add_explicit(v11 + 6, 1u, memory_order_relaxed);
        sub_29A5446E0(*a1, v20, v11);
        _48[0] = v9[3];
        v9[3] = v11;
        sub_29A22B614(_48);
      }

      sub_29A544928(&v22, v9 + 3);
    }

    v12 = v18;
    v18 = 0;
    if (v19 == 1)
    {
LABEL_13:
      v13 = *v12;
      v14 = *v12 & 0xFFFFFFFFFFFFFFFCLL;
      while (1)
      {
        v15 = v13;
        atomic_compare_exchange_strong(v12, &v15, v14);
        if (v15 == v13)
        {
          break;
        }

        if (atomic_fetch_add_explicit(v12, 0, memory_order_relaxed) != v13)
        {
          sched_yield();
          goto LABEL_13;
        }
      }
    }

    else
    {
      atomic_fetch_add(v12, 0xFFFFFFFFFFFFFFFCLL);
    }

    v16 = a1[2];
    _48[0] = 0;
    if (sub_29A4EF670((a1 + 1), 0, _48))
    {
      a1[2] = _48[0] + v16;
    }

    _48[0] = 0;
    v8 = sub_29A4EF670((a1 + 1), 0, _48);
    if (v8)
    {
      *(&v24 + 1) = a1[2];
      a1[2] = *(&v24 + 1) + 8 * _48[0];
      *a2 = v21;
      sub_29A544928((a2 + 8), &v22);
      if (&v21 != a2)
      {
        sub_29A544F94(a2 + 16, v23, *(&v23 + 1), (*(&v23 + 1) - v23) >> 4);
      }

      *(a2 + 40) = *(&v24 + 1);
    }

    sub_29A0F845C(&v18);
  }

  else
  {
    v8 = 0;
  }

  v18 = &v23;
  sub_29A1D0D38(&v18);
  sub_29A22B614(&v22);
  return v8;
}

void sub_29A544694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  sub_29A22B614((v12 - 56));
  sub_29A0F845C(&a9);
  sub_29A4C8344(&a12);
  _Unwind_Resume(a1);
}

void sub_29A5446E0(uint64_t a1, uint64_t a2, void **a3)
{
  if (*(a1 + 6752) == 1)
  {
    v6 = *(a1 + 6744);
    v17 = a1;
    v19 = a1 + 6656;
    v20 = v6;
    LODWORD(v21) = sub_29A4CCA14();
    if ((a2 & 0x4000000000000000) == 0)
    {
      v18 = *(*(a1 + 6656) + 24) + (a2 & 0xFFFFFFFFFFFFLL);
      sub_29A544C28(&v17, a3);
    }
  }

  else
  {
    v7 = *(a1 + 6664);
    if (v7)
    {
      v8 = *(a1 + 6672);
      v9 = *(a1 + 6680);
      v17 = a1;
      v18 = v8;
      v20 = v9;
      v21 = v7;
      if ((a2 & 0x4000000000000000) == 0)
      {
        v19 = a2 & 0xFFFFFFFFFFFFLL;
        sub_29A544D5C(&v17, a3);
      }
    }

    else
    {
      v10 = *(a1 + 6696);
      v11 = *(a1 + 6704);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        v13 = a1;
        v14 = v10;
        v15 = v11;
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v13 = a1;
        v14 = v10;
        v15 = 0;
      }

      v16 = 0;
      v12 = v11;
      if ((a2 & 0x4000000000000000) == 0)
      {
        v16 = a2 & 0xFFFFFFFFFFFFLL;
        sub_29A544E80(&v13, a3);
        v12 = v15;
      }

      if (v12)
      {
        sub_29A014BEC(v12);
      }

      if (v11)
      {
        sub_29A014BEC(v11);
      }
    }
  }
}

void sub_29A5448FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  _Unwind_Resume(a1);
}

atomic_uint **sub_29A544928(atomic_uint **a1, atomic_uint **a2)
{
  v3 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v3 + 6, 1u, memory_order_relaxed);
  }

  sub_29A22B614(a1);
  *a1 = v3;
  v5 = 0;
  sub_29A22B614(&v5);
  return a1;
}

void *sub_29A544980(uint64_t a1, void *a2, void *a3)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * *a2);
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v3 = v6;
      if (v6 >= v7)
      {
        v3 = v6 % v7;
      }
    }

    else
    {
      v3 = (v7 - 1) & v6;
    }

    v9 = *(*a1 + 8 * v3);
    if (v9)
    {
      for (i = *v9; i; i = *i)
      {
        v11 = i[1];
        if (v11 == v6)
        {
          if (i[2] == *a2)
          {
            return i;
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

          if (v11 != v3)
          {
            break;
          }
        }
      }
    }
  }

  i = operator new(0x20uLL);
  *i = 0;
  i[1] = v6;
  i[2] = *a3;
  i[3] = 0;
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
        v3 = v6 % v7;
      }

      else
      {
        v3 = v6;
      }
    }

    else
    {
      v3 = (v7 - 1) & v6;
    }
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v3);
  if (v19)
  {
    *i = *v19;
LABEL_38:
    *v19 = i;
    goto LABEL_39;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v18 + 8 * v3) = a1 + 16;
  if (*i)
  {
    v20 = *(*i + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v20 >= v7)
      {
        v20 %= v7;
      }
    }

    else
    {
      v20 &= v7 - 1;
    }

    v19 = (*a1 + 8 * v20);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return i;
}

void sub_29A544BB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A544BCC(va, 0);
  _Unwind_Resume(a1);
}

void sub_29A544BCC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A22B614(v2 + 3);
    }

    operator delete(v2);
  }
}

uint64_t sub_29A544C28(uint64_t a1, void **a2)
{
  __dst = 0;
  if (!sub_29A4F76C0(a1 + 8, &__dst, 8uLL))
  {
    return 0;
  }

  v4 = *(**(a1 + 16) + 32);
  v5 = *(a1 + 8) - *(**(a1 + 16) + 24);
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || __dst > v6)
  {
    __p = "usd/crateFile.cpp";
    v12 = "_Read";
    v13 = 1314;
    v14 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<const pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>::_Read(vector<T> &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<const pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>, T = double]";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to read vector of size %llu, remaining file size is %lld of %lld", __dst, v6, v4);
    return 0;
  }

  sub_29A0124A0(&__p, __dst);
  v7 = sub_29A4F76C0(a1 + 8, __p, 8 * __dst);
  v8 = v7;
  if (&__p == a2)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29A00CB24(a2, __p, v12, (v12 - __p) >> 3);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_29A544D40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29A544D5C(uint64_t a1, void **a2)
{
  v16 = 0;
  if (!sub_29A4EF670(a1 + 8, 0, &v16))
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || v16 > v6)
  {
    __p = "usd/crateFile.cpp";
    v12 = "_Read";
    v13 = 1314;
    v14 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>::_Read(vector<T> &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream, T = double]";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to read vector of size %llu, remaining file size is %lld of %lld", v16, v6, v4);
    return 0;
  }

  sub_29A0124A0(&__p, v16);
  v7 = sub_29A502D00(a1, __p, v16);
  v8 = v7;
  if (&__p != a2 && v7)
  {
    sub_29A00CB24(a2, __p, v12, (v12 - __p) >> 3);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_29A544E64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A544E80(uint64_t a1, void **a2)
{
  v13 = 0;
  if (!sub_29A4E5308((a1 + 8), &v13, 8uLL))
  {
    return 0;
  }

  v4 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  v5 = *(a1 + 24);
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || v13 > v6)
  {
    sub_29B2AC0F0();
    return 0;
  }

  sub_29A0124A0(&__p, v13);
  v7 = sub_29A4E5308((a1 + 8), __p, 8 * v13);
  v8 = v7;
  if (&__p == a2)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29A00CB24(a2, __p, v12, (v12 - __p) >> 3);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_29A544F78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A544F94(uint64_t result, void *a2, void *a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  v8 = *result;
  if (a4 > (*(result + 16) - *result) >> 4)
  {
    sub_29A3739B8(result);
    if (a4 >> 60)
    {
      sub_29A00C9A4();
    }

    v9 = *(v7 + 16) - *v7;
    v10 = v9 >> 3;
    if (v9 >> 3 <= a4)
    {
      v10 = a4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    sub_29A0D0518(v7, v11);
    result = sub_29A1D1314(v7, v6, a3, *(v7 + 8));
LABEL_15:
    *(v7 + 8) = result;
    return result;
  }

  v12 = *(result + 8);
  v13 = v12 - v8;
  if (a4 > (v12 - v8) >> 4)
  {
    if (v12 != v8)
    {
      v14 = v12 - v8;
      v15 = a2;
      do
      {
        sub_29A1854E8(v8, v15);
        v15 += 2;
        v8 += 16;
        v14 -= 16;
      }

      while (v14);
      v12 = *(v7 + 8);
    }

    result = sub_29A1D1314(v7, (v6 + v13), a3, v12);
    goto LABEL_15;
  }

  if (a2 != a3)
  {
    do
    {
      result = sub_29A1854E8(v8, v6);
      v6 += 2;
      v8 += 16;
    }

    while (v6 != a3);
    v12 = *(v7 + 8);
  }

  while (v12 != v8)
  {
    v12 -= 16;
    result = sub_29A186B14(v12);
  }

  *(v7 + 8) = v8;
  return result;
}

__n128 sub_29A545104(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20581B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}